# 从零开始的Bomb Lab

> [!CAUTION]
> 
> **本笔记仅供参考，请勿抄袭。**

## 声明
本笔记的写作初衷在于，笔者在做Bomb Lab的时候受到Arthals学长很大启发，同时25Fall的计算机系统导论课程改制增加了10分的Lab测试（虽然往年的期中期末中也会有一两道Lab相关选择题，但分值不大）。故将心路历程写成此笔记，以便复习，并供后续选课同学参考。

## Bomb Lab简要介绍
Bomb Lab是《计算机系统导论》课程的第2个Lab，对应教材第三章《程序的机器级表示》。该Lab旨在加强同学们阅读汇编代码的能力，以及训练同学们使用GDB调试工具。

在Bomb Lab中，需要拆除6个对应的二进制炸弹(即phase 1 $\sim$ phase 6)，每个炸弹都有一个密码，通过输出正确的密码来拆除炸弹。如果输入了错误的指令，炸弹就会爆炸，并向AutoLab网站发出信号，每次爆炸扣除本Lab的0.5分，扣除分数向下取整，上限为20分。也就是说，~~若只爆炸一次，仍然能得到满分的成绩~~。这个Lab的难度大致为中，笔者的耗时大概为8小时左右。

值得一提的是，在25秋的Bomb Lab中，存在Secret Phase，完成这个Phase可以得到5分的加分(分数上限仍为100分)。笔者要在此声明，此Phase每位同学分到的类型可能不同(而身边统计学证明)，网络辅助资料较少，以及它的难度远超前面的phase，且爆炸仍然扣分，因此只推荐学有余力或者想补救分数的同学尝试。

顺便一提，笔者尚未完成secret phase，打算期中后做出并写下其中一种题形的思路。

整个Lab的思路是，分析源码和二进制炸弹反汇编得出的汇编代码，并使用gdb工具进行调试以防止炸弹爆炸，从而得出正确答案。

## 在动手之前
### GDB常用指令
看着CSAPP上3.10.2小节上一整页的GDB调试命令，可能会感到一头雾水，笔者在这里列出本Lab中常用的GDB命令：

|  指令  | 描述 |  使用方法  |            
|  ---   | --- |  -------   |
|   r    | 开始执行程序，直到下一个断点或程序结束    |    r        |
|   c    | 从当前位置继续执行程序，直到下一个断点或程序结束 |    c      |
|   b    | 在指定位置设置断点，运行时停止在该位置执行前                            |   b *(phase_1+0x1d)  / b phase_1 |
|   ni   | 执行下一条指令，但不进入函数内部 |   ni   |
|   si   | 执行下一条指令，如果是函数调用则进入函数 |  si  |
|   x    | 打印内存中的值  |  见下文  | 
|   p    | 打印变量的值    |  见下文  |
| layout asm | 显示汇编代码视图 | layout asm |
| layout regs | 显示当前寄存器状态和它们的值 | layout regs |
|   q    | 退出GDB调试器 |  q   |

有关``p``和``x``两条指令，几个常用示例如下：

```
p $rax  # 打印寄存器 rax 的值
p $rsp  # 打印栈指针的值
p/x $rsp  # 打印栈指针的值，以十六进制显示
p/d $rsp  # 打印栈指针的值，以十进制显示

x/2x $rsp  # 以十六进制格式查看栈指针 %rsp 指向的内存位置 M[%rsp] 开始的两个单位。
x/2d $rsp # 以十进制格式查看栈指针 %rsp 指向的内存位置 M[%rsp] 开始的两个单位。
x/2c $rsp # 以字符格式查看栈指针 %rsp 指向的内存位置 M[%rsp] 开始的两个单位。
x/s $rsp # 把栈指针指向的内存位置 M[%rsp] 当作 C 风格字符串来查看。

x/b $rsp # 检查栈指针指向的内存位置 M[%rsp] 开始的 1 字节。
x/h $rsp # 检查栈指针指向的内存位置 M[%rsp] 开始的 2 字节（半字）。
x/w $rsp # 检查栈指针指向的内存位置 M[%rsp] 开始的 4 字节（字）。
x/g $rsp # 检查栈指针指向的内存位置 M[%rsp] 开始的 8 字节（双字）。

info registers  # 打印所有寄存器的值
info breakpoints  # 打印所有断点的信息

delete breakpoints 1  # 删除第一个断点，可以简写为 d 1
```

这些命令在``/``后面的后缀(如``2x``、``2d``、``s``、``g``、``20c``)指定了查看内存的方式和数量，其规则如下：
- 第一个数字指定要查看的单位数量。
- 第二个字母指定单位类型和显示格式，其中：
  - ``c``/``d``/``x``分别代表字符/十进制/十六进制格式显示内存内容。
  - ``s``代表以字符串格式显示内存内容。
  - ``b``/``h``/``w``/``g``分别代表以1/2/4/8字节为单位显示内存内容。
  - 当使用``x/b``、``x/h``、``x/w``、``x/g``时，单位会保留对应改变，知道你再次使用这些命令。

在这个Lab和接下来的Attack Lab中，打开终端，操作通常是
```
gdb bomb
b phase_x // 这条如果配置了.gdbinit文件就无须再输入
layout asm
layout regs
```

### 一些美化
由于该Lab以及第三个Lab(即``Attack Lab``)都需要阅读大量汇编代码，因此可以下载VsCode上的``x86 and x86_64 Assembly``拓展进行代码高亮，以获得更好的阅读体验。

### 安全化炸弹
强烈推荐想在Lab上做满分的同学阅读以下段落，而想挑战自己的同学就不推荐了。

事实上，安全化炸弹似乎有很多种方法，笔者在网络资料搜索以及浏览Arthals学长的博文时接触到至少三种，大致如下：
- 通过断网，或者使用``-q``命令，使炸弹在本地运行，而无法向远程服务器传输爆炸信号。
- 找到相关代码，再利用``hexedit``工具修改二进制码，替换条件跳转指令使用``nop``无义指令替换危险指令。
- 找到相关代码，再利用``gdb``工具为危险函数或者危险指令设置断点，并对于断点处进行编程，跳过危险指令或者修改寄存器的值来控制条件跳转，使得炸弹不会爆炸。

关于第一种方法，笔者要在此做几点说明：
- 如果使用断网方法，~~如果是使用CLAB的云服务器的同学，那就别想了~~。使用WSL或者虚拟机/双系统的同学，可能可以实现，
- 根据笔者查询的结果，似乎是能在CMU的原生Lab上实现，但是不保证PKU的魔改Lab不会在重新联网后向AutoLab网站发送爆炸信号。

相对地，第二种方法比第三种难度的操作难度大得多(其实是笔者太菜不会)，所以，何乐而不为呢？

于是，笔者在此仅介绍第三种方法。

第三种方法的原理是，在``gdb``中可以配置``.gdbinit``文件来设置``gdb``进入时的一些默认配置，这些指令每次运行时无需手动输入。

下面开始配置``.gdbinit``文件，前提是已经解压了从AutoLab上的压缩包到

在终端中运行以下代码：
```
cd ~\bomb xx // 注意换成你的bomb所在地址
touch .gdbinit //创建当前目录下的.gdbinit文件
mkdir -p ~/.config/gdb //创建 ./config/gdb 文件夹
echo "set auto-load safe-path" > ~/.config/gdb/gdbinit //允许gdb预加载根目录下所有的文件
```

为了安全化炸弹，知己知彼，得先了解炸弹的爆炸逻辑。
以``phase_1``为例，如下是笔者炸弹中的汇编代码：

```
0000000000001784 <phase_1>:
    1784:	f3 0f 1e fa          	endbr64
    1788:	48 83 ec 08          	sub    $0x8,%rsp
    178c:	48 8d 35 25 2a 00 00 	lea    0x2a25(%rip),%rsi        # 41b8 <_IO_stdin_used+0x1b8>
    1793:	e8 6d 05 00 00       	call   1d05 <strings_not_equal>
    1798:	85 c0                	test   %eax,%eax
    179a:	75 05                	jne    17a1 <phase_1+0x1d>
    179c:	48 83 c4 08          	add    $0x8,%rsp
    17a0:	c3                   	ret
    17a1:	e8 74 08 00 00       	call   201a <explode_bomb>
    17a6:	eb f4                	jmp    179c <phase_1+0x18>
```
可以大致发现，它在调用了``strings_not_equal``函数后，测试返回值``%eax``，若其为真则不进行条件跳转，若为假则跳转到``17a1``处调用``explode_bomb``函数。

再查询``explode_bomb``函数的源码：
```
000000000000201a <explode_bomb>:
    201a:	f3 0f 1e fa          	endbr64
    201e:	50                   	push   %rax
    201f:	58                   	pop    %rax
    2020:	48 83 ec 18          	sub    $0x18,%rsp
    2024:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    202b:	00 00 
    202d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2032:	31 c0                	xor    %eax,%eax
    2034:	48 8d 3d b9 25 00 00 	lea    0x25b9(%rip),%rdi        # 45f4 <transition_table+0x314>
    203b:	e8 30 f2 ff ff       	call   1270 <puts@plt>
    2040:	48 8d 3d b6 25 00 00 	lea    0x25b6(%rip),%rdi        # 45fd <transition_table+0x31d>
    2047:	e8 24 f2 ff ff       	call   1270 <puts@plt>
    204c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2053:	00 
    2054:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    2059:	bf 00 00 00 00       	mov    $0x0,%edi
    205e:	e8 55 fe ff ff       	call   1eb8 <send_msg>
    2063:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    2068:	74 20                	je     208a <explode_bomb+0x70>
    206a:	48 8d 35 3f 23 00 00 	lea    0x233f(%rip),%rsi        # 43b0 <transition_table+0xd0>
    2071:	bf 01 00 00 00       	mov    $0x1,%edi
    2076:	b8 00 00 00 00       	mov    $0x0,%eax
    207b:	e8 e0 f2 ff ff       	call   1360 <__printf_chk@plt>
    2080:	bf 08 00 00 00       	mov    $0x8,%edi
    2085:	e8 06 f3 ff ff       	call   1390 <exit@plt>
    208a:	48 8d 3d 67 23 00 00 	lea    0x2367(%rip),%rdi        # 43f8 <transition_table+0x118>
    2091:	e8 da f1 ff ff       	call   1270 <puts@plt>
    2096:	bf 08 00 00 00       	mov    $0x8,%edi
    209b:	e8 f0 f2 ff ff       	call   1390 <exit@plt>
```
可以观察到，一直值得注意的点是，它会调用``send_msg``函数，而这个函数因为源码较长就不在下面放出了。顾名思义，它是向远程评分系统传输信号的函数。

于是，只需在``explode_bomb``函数中设置断点，直接跳转使它不触发``send_msg``函数，并且能成功调用``puts``函数，这样能在不向远程传输爆炸信号的情况下打印出爆炸信息。

然后，打开``.gdbinit``文件，输入以下内容：
```
# ./gdbinit
# 设置默认文件输入，这样我们不必每次手动输入答案
set args psol.txt

# 可以为 explode_bomb 函数设置断点，这样我们就可以在爆炸之前打断程序的执行
# 但是由于其会打印输出信息，所以后面有更具有针对性的设置，跳过信息发送函数
# 所以这里就不再设置断点了
# b explode_bomb

# 为各个 phase 函数设置断点，用以观察其执行过程
# 如果你做完了某个 phase，可以将其注释掉，这样就不会再进入该 phase 了
b phase_1
b phase_2
b phase_3
b phase_4
b phase_5
b phase_6

# 以下代码务必保留!!!

# 为 explode_bomb 中触发 send_msg 函数的地方设置断点
b *(explode_bomb + 0x??)
# 为此断点编程
command
# 直接跳到 exit 退出函数处，跳过发送信息流程
j *(explode_bomb + 0x??)
end

# 炸弹已经安全化，可以放心地拆弹了，开始运行程序
r
```

由于每位同学的炸弹都不一样，因此知晓如何设置上面代码中的``xx``偏移量，对于每位同学来说都是十分重要的。

下面以笔者的炸弹代码为例：
```
000000000000201a <explode_bomb>:
    201a:	f3 0f 1e fa          	endbr64
    201e:	50                   	push   %rax
    201f:	58                   	pop    %rax
    2020:	48 83 ec 18          	sub    $0x18,%rsp
    2024:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    202b:	00 00 
    202d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2032:	31 c0                	xor    %eax,%eax
    2034:	48 8d 3d b9 25 00 00 	lea    0x25b9(%rip),%rdi        # 45f4 <transition_table+0x314>
    203b:	e8 30 f2 ff ff       	call   1270 <puts@plt>
    2040:	48 8d 3d b6 25 00 00 	lea    0x25b6(%rip),%rdi        # 45fd <transition_table+0x31d>
    2047:	e8 24 f2 ff ff       	call   1270 <puts@plt>
    204c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2053:	00 
    2054:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    2059:	bf 00 00 00 00       	mov    $0x0,%edi
    205e:	e8 55 fe ff ff       	call   1eb8 <send_msg>
    2063:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    2068:	74 20                	je     208a <explode_bomb+0x70>
    206a:	48 8d 35 3f 23 00 00 	lea    0x233f(%rip),%rsi        # 43b0 <transition_table+0xd0>
    2071:	bf 01 00 00 00       	mov    $0x1,%edi
    2076:	b8 00 00 00 00       	mov    $0x0,%eax
    207b:	e8 e0 f2 ff ff       	call   1360 <__printf_chk@plt>
    2080:	bf 08 00 00 00       	mov    $0x8,%edi
    2085:	e8 06 f3 ff ff       	call   1390 <exit@plt>
    208a:	48 8d 3d 67 23 00 00 	lea    0x2367(%rip),%rdi        # 43f8 <transition_table+0x118>
    2091:	e8 da f1 ff ff       	call   1270 <puts@plt>
    2096:	bf 08 00 00 00       	mov    $0x8,%edi
    209b:	e8 f0 f2 ff ff       	call   1390 <exit@plt>
```

``explode_bomb``函数的起始点是``0x201a``，而``call <send_msg>``指令的位置是``0x205e``，因此它的偏移量是``0x44``，在这里设置断点。

然后，执行跳转操作，使函数强制跳转到``0x209b``处，即``call <exit>``指令，强制退出。它相对于``explode_bomb``的偏移量为``0x81``。

于是，得到了笔者炸弹代码的安全化处理代码，即
```
b *(explode_bomb+0x44)
command
j *(explode_bomb+0x81)
end
r
```

之后，就可以在本地安全运行代码了。

值得一提的是，如果需要在DDL后再运行炸弹文件，比如笔者想在其中后完成Secret Phase，此时需要再``.gdbinit``中加上以上代码以跳过校验函数，否则会报错。
```
# 为校验函数设置断点
b phase_defused
# 为此断点编程
command
# 直接跳到返回语句处，跳过校验流程
jump *(phase_defused + 0x2A)
end
```

### 相关课本知识
首先，此Lab对于汇编代码的阅读要求较高(甚至高于Attack Lab)，如果对课本较不熟悉，以下为大概需要了解的点：
- ``%rdi,%rsi,%rdx,%rcx``分别为函数前四个参数,``%rax``为返回值。
- ``%rsp,%rbp``相关，了解栈帧。
- ``mov,lea``以及相关常用计算指令的用法。
- ``cmpq,testq``以及条件跳转、条件传送以及switch语句，循环的用法。

## 开始动手！
首先，阅读``bomb.c``文件，以获取炸弹的基本信息。

这里琴酒先生(原生Lab为邪恶博士，感谢Arthals学长给柯南粉们的修改)认为一个Phase的炸弹很容易被拆除，于是发来了有六个Phase的炸弹。

在其中，有类似以下代码：
```
/* Hmm...  Six phases must be more secure than one phase! */
    input = read_line();             /* Get input                   */
    phase_1(input);                  /* Run the phase               */
    phase_defused(fp);                 /* Drat!  They figured it out!
```

这说明每次我们输入的字符串``input``会被作为传进的参数，拆弹的关键就在于找到正确的字符串。

于是，得到了拆弹的基本思路。

然后，运行``objdump -d bomb > bomb.s``指令，对二进制炸弹进行反汇编得到汇编代码``bomb.s``。

在介绍每个Phase的思路之前，笔者需要提醒你的是，bomb.s只是反汇编出的静态代码，它的指令地址可能会根据每次二进制炸弹bomb的运行变化，因此不要使用绝对地址。同时，正因为它不是运行主体，在它上面写注释是完全可行的。(笔者的惨痛教训：每次都截图下来在平板上手划，使得耗时大大增加)。

### Phase 1
先阅读``phase_1``的源码：

```
0000000000001784 <phase_1>:
    1784:	f3 0f 1e fa          	endbr64 # 此Lab中无关，用于防止ROP攻击(下个Lab的重点)
    1788:	48 83 ec 08          	sub    $0x8,%rsp # %rsp分配8字节栈空间
    178c:	48 8d 35 25 2a 00 00 	lea    0x2a25(%rip),%rsi        # 41b8 <_IO_stdin_used+0x1b8> # 将内存中的某个字符串赋值给%rsi，第二个参数
    1793:	e8 6d 05 00 00       	call   1d05 <strings_not_equal> # 调用函数，判断是否为相等的字符串
    1798:	85 c0                	test   %eax,%eax # 检验返回值
    179a:	75 05                	jne    17a1 <phase_1+0x1d> # 若为假，跳转至爆炸
    179c:	48 83 c4 08          	add    $0x8,%rsp # 释放内存
    17a0:	c3                   	ret # 返回
    17a1:	e8 74 08 00 00       	call   201a <explode_bomb> # 爆炸
    17a6:	eb f4                	jmp    179c <phase_1+0x18>
```

了解了基本逻辑后，得到基本思路：在``call <string_not_equal>``之前设置断点，得到``%rsi``的具体值，即为答案。

首先，打开``psol.txt``文件，随便输入一行:
```
I love elaina.
```

然后运行以下指令：
```
gdb bomb
b *(phase_1+15)
layout asm
layout regs
c
x/s $rsi
```

得到了以下输出：

![alt text](./Picture%20Assets/1.png)

得到答案为``A secret makes a woman a woman``。

~~感谢Arthals学长的修改，原句为酒厂成员贝尔摩德的著名语句~~

把这句话写到``psol.txt``的第一行，再次打开终端，运行以下指令：

```
gdb bomb
layout asm
layout regs
c
```

得到以下输出，表示已经完成了phase 1：

![alt text](./Picture%20Assets/2.png)

### Phase 2
注释掉``b phase_1``，便于调试。

阅读``Phase_2``的源码：

```
00000000000017a8 <phase_2>:
    17a8:	f3 0f 1e fa          	endbr64 # 防ROP攻击
    17ac:	53                   	push   %rbx # %rbx进栈
    17ad:	48 83 ec 20          	sub    $0x20,%rsp # 分配32个字节空间
    17b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax # 取出金丝雀值
    17b8:	00 00 
    17ba:	48 89 44 24 18       	mov    %rax,0x18(%rsp) # %rsp+24存放金丝雀值
    17bf:	31 c0                	xor    %eax,%eax # %eax置零
    17c1:	48 89 e6             	mov    %rsp,%rsi # %rsi=%rsp，当做输入地址传参
    17c4:	e8 d7 08 00 00       	call   20a0 <read_six_numbers> # 调用``read_six_numbers``，输入六个数 
    17c9:	83 3c 24 01          	cmpl   $0x1,(%rsp) # 若(%rsp)!=1,跳转至爆炸
    17cd:	75 07                	jne    17d6 <phase_2+0x2e>
    17cf:	bb 01 00 00 00       	mov    $0x1,%ebx # %ebx=1
    17d4:	eb 0a                	jmp    17e0 <phase_2+0x38> # 跳转至(1)
    17d6:	e8 3f 08 00 00       	call   201a <explode_bomb> # 爆炸
    17db:	eb f2                	jmp    17cf <phase_2+0x27> 
    17dd:	83 c3 01             	add    $0x1,%ebx # %ebx加1
    17e0:	83 fb 05             	cmp    $0x5,%ebx (1) # 若%ebx大于5，跳转到0x17fe处
    17e3:	7f 19                	jg     17fe <phase_2+0x56>
    17e5:	48 63 d3             	movslq %ebx,%rdx # %rdx=%ebx
    17e8:	8d 43 ff             	lea    -0x1(%rbx),%eax 
    17eb:	48 98                	cltq # %eax自身拓展
    17ed:	8b 04 84             	mov    (%rsp,%rax,4),%eax # 取出第i个整数
    17f0:	01 c0                	add    %eax,%eax # %eax=2*%eax
    17f2:	39 04 94             	cmp    %eax,(%rsp,%rdx,4) 若%eax!=第(i+1)个整数，跳转到爆炸
    17f5:	74 e6                	je     17dd <phase_2+0x35>
    17f7:	e8 1e 08 00 00       	call   201a <explode_bomb>
    17fc:	eb df                	jmp    17dd <phase_2+0x35> # 循环回跳
    17fe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax # 被跳转出 
    1803:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax # 判断是否金丝雀值被破坏
    180a:	00 00 
    180c:	75 06                	jne    1814 <phase_2+0x6c>
    180e:	48 83 c4 20          	add    $0x20,%rsp # 恢复空间
    1812:	5b                   	pop    %rbx # %rbx原值退出
    1813:	c3                   	ret # 返回
    1814:	e8 87 fa ff ff       	call   12a0 <__stack_chk_fail@plt>
```

于是，基本弄懂了这个函数的逻辑，用C代码写来就是：
```
int a[6];
if(a[0]!=1) bomb!
for(int i=1;i<=5;i++){
    if(a[i]!=2*a[i-1]) bomb!
}
```

其实``%rsp+24``存放金丝雀值已经很清楚了，输入六个``int``类型变量，然后从栈顶开始往高地址存储，刚好是24个字节。
以防万一，阅读``read_six_numbers``函数，看看这六个数字的存储顺序。
```
00000000000020a0 <read_six_numbers>:
    20a0:	f3 0f 1e fa          	endbr64 # 防ROP攻击
    20a4:	48 83 ec 08          	sub    $0x8,%rsp # 栈顶分配8字节空间
    20a8:	48 89 f2             	mov    %rsi,%rdx # %rdx=%rsi(输入地址)
    20ab:	48 8d 4e 04          	lea    0x4(%rsi),%rcx # %rcx=%rsi+4
    20af:	48 8d 46 14          	lea    0x14(%rsi),%rax # %rax=%rsi+20
    20b3:	50                   	push   %rax # %rax进栈
    20b4:	48 8d 46 10          	lea    0x10(%rsi),%rax # %rax=%rsi+16
    20b8:	50                   	push   %rax # %rax进栈
    20b9:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9 # %r9=%rsi+12
    20bd:	4c 8d 46 08          	lea    0x8(%rsi),%r8 # %r8=%rsi+8
    20c1:	48 8d 35 4c 25 00 00 	lea    0x254c(%rip),%rsi        # 4614 <transition_table+0x334> # %rsi=当前指令指针地址
    20c8:	b8 00 00 00 00       	mov    $0x0,%eax # %rax=0
    20cd:	e8 6e f2 ff ff       	call   1340 <__isoc99_sscanf@plt> # 调用sscanf函数
    20d2:	48 83 c4 10          	add    $0x10,%rsp # 栈空间恢复
    20d6:	83 f8 05             	cmp    $0x5,%eax # 若%eax<=5,即输入数字数目小于等于5，跳转到爆炸
    20d9:	7e 05                	jle    20e0 <read_six_numbers+0x40> 
    20db:	48 83 c4 08          	add    $0x8,%rsp # 恢复栈空间
    20df:	c3                   	ret # 返回
    20e0:	e8 35 ff ff ff       	call   201a <explode_bomb>
```

再看一下``sccanf``函数的签名：
```
int sscanf(const char *str, const char *format, ...);
```
- ``str``：要读取的字符串
- ``format``：指定输入格式控制
- ``...``：可变数量的额外参数

观察到前六个参数对应的寄存器名字都在``read_six_numbers``中出现了，同时它们在栈中是向上存储的。

结合前面提出的思路，得到答案：
``1 2 4 8 16 32``

把它写到``psol.txt``的第二行，打开以下终端，运行以下指令：

```
gdb bomb
layout asm
layout regs
c
```

得到以下输出，表示已经完成了``phase_2``：

![alt text](./Picture%20Assets/3.png)

### Phase 3
注释掉``b phase_2``，便于调试。

先阅读``Phase_3``的源码：
```
0000000000001819 <phase_3>:
    1819:	f3 0f 1e fa          	endbr64 # 防ROP攻击
    181d:	48 83 ec 18          	sub    $0x18,%rsp # %rsp分配24字节空间
    1821:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax # %rax=金丝雀值
    1828:	00 00 
    182a:	48 89 44 24 08       	mov    %rax,0x8(%rsp) # 金丝雀值存放到%rsp+8处
    182f:	31 c0                	xor    %eax,%eax # %eax置零
    1831:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx # %rcx=%rsp+4
    1836:	48 89 e2             	mov    %rsp,%rdx # %rdx=%rsp
    1839:	48 8d 35 e0 2d 00 00 	lea    0x2de0(%rip),%rsi        # 4620 <transition_table+0x340> # 将内存中的某个值赋给%rsi，第二个参数
    1840:	e8 fb fa ff ff       	call   1340 <__isoc99_sscanf@plt> # 输入
    1845:	83 f8 01             	cmp    $0x1,%eax # 若%eax<=1,跳转爆炸
    1848:	7e 1e                	jle    1868 <phase_3+0x4f>
    184a:	83 3c 24 07          	cmpl   $0x7,(%rsp) # 若(%rsp)大于7，跳转爆炸
    184e:	0f 87 8d 00 00 00    	ja     18e1 <phase_3+0xc8>
    1854:	8b 04 24             	mov    (%rsp),%eax # %eax=(%rsp)
    1857:	48 8d 15 42 2a 00 00 	lea    0x2a42(%rip),%rdx        # 42a0 <_IO_stdin_used+0x2a0> # 相对PC进行引用，存入%rdx
    185e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax %rax=%rdx偏移%rax*4位
    1862:	48 01 d0             	add    %rdx,%rax # %rax+=%rdx
    1865:	3e ff e0             	notrack jmp *%rax # 跳转
    1868:	e8 ad 07 00 00       	call   201a <explode_bomb>
    186d:	eb db                	jmp    184a <phase_3+0x31>
    186f:	8b 44 24 04          	mov    0x4(%rsp),%eax # $eax=(%rsp+4)
    1873:	05 63 01 00 00       	add    $0x163,%eax # %eax+=355
    1878:	3d 46 01 00 00       	cmp    $0x146,%eax # 若%eax!=326
    187d:	75 71                	jne    18f0 <phase_3+0xd7> # 爆炸
    187f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax 
    1884:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax # 检验金丝雀值是否变动
    188b:	00 00 
    188d:	75 68                	jne    18f7 <phase_3+0xde>
    188f:	48 83 c4 18          	add    $0x18,%rsp # %rsp释放内存
    1893:	c3                   	ret    # 返回
    1894:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    1898:	05 53 01 00 00       	add    $0x153,%eax # %eax+=339
    189d:	eb d9                	jmp    1878 <phase_3+0x5f> # 跳转
    189f:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18a3:	05 d1 02 00 00       	add    $0x2d1,%eax # %eax+=721
    18a8:	eb ce                	jmp    1878 <phase_3+0x5f> # 跳转
    18aa:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18ae:	05 6a 01 00 00       	add    $0x16a,%eax # %eax+=362
    18b3:	eb c3                	jmp    1878 <phase_3+0x5f> # 跳转
    18b5:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18b9:	05 0e 02 00 00       	add    $0x20e,%eax # %eax+=526
    18be:	eb b8                	jmp    1878 <phase_3+0x5f> # 跳转
    18c0:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18c4:	05 e9 01 00 00       	add    $0x1e9,%eax # %eax+=489
    18c9:	eb ad                	jmp    1878 <phase_3+0x5f> # 跳转
    18cb:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18cf:	05 a3 00 00 00       	add    $0xa3,%eax # %eax+=163
    18d4:	eb a2                	jmp    1878 <phase_3+0x5f> # 跳转
    18d6:	8b 44 24 04          	mov    0x4(%rsp),%eax # %eax=(%rsp+4)
    18da:	05 d7 00 00 00       	add    $0xd7,%eax # %eax+=215
    18df:	eb 97                	jmp    1878 <phase_3+0x5f> # 跳转
    18e1:	e8 34 07 00 00       	call   201a <explode_bomb> # 
    18e6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    18eb:	e8 a0 fa ff ff       	call   1390 <exit@plt>
    18f0:	e8 25 07 00 00       	call   201a <explode_bomb>
    18f5:	eb 88                	jmp    187f <phase_3+0x66>
    18f7:	e8 a4 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>
```

乍一看很吓人，但是注意到这两句：

```
185e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
1865:	3e ff e0             	notrack jmp *%rax
```

间接跳转吗，有点意思，在哪见过它？

好像只在``switch``语句的章节见过，而且这两行的形式确实很像跳转表！

可以观察到，在这个函数中仍然存在``sscanf``函数。

运行以下指令，看看它输入了什么：
```
gdb bomb
layout asm
layout regs 
b *(phase_3+39)
c
x/s $rsi
```

![alt text](./Picture%20Assets/4.png)

程序显示，正好是两个整数，并且与``%rsp+8``存金丝雀值相符合！

回想``phase_2``中讲过的``sscanf``函数逻辑，则第一个参数存放在``%rsp``，第二个参数存放在``%rsp+4``处。

同时，观察汇编代码，发现把第一个参数与7比较，若大于7则跳转``default``分支，即爆炸。

因此，我们不妨假设第一个参数为6，然后观察代码跳转到何处。

在``psol.txt``的第三行写下以下参数：
``6 142``

然后，在跳转前打下断点，运行以下指令：

```
gdb bomb
b *(phase_3+76)
layout asm
layout regs
ni
```

发现它跳转到了``phase_3+178``，即代码中的``18cf``处：

![alt text](./Picture%20Assets/5.png)

再回到代码，看出它大概的C语言逻辑：
```
int result = x + 163;
if(x != 326) bomb!
```

于是求得 ``x = 163``。

刚发现笔者第一次做的时候用的第一参数不是``6``，于是有另一组答案``4,-200``。

将新找出的答案写到``psol.txt``的第三行，运行以下指令：

```
gdb bomb
layout asm
layout regs
c
```

得到以下输出，表明已经完成了``phase_3``：

![alt text](./Picture%20Assets/6.png)

### Phase 4
