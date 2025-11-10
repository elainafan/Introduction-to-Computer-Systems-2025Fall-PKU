# 从零开始的Cache Lab

> [!CAUTION]
> 
> **本笔记仅供参考，请勿抄袭。**

## 声明
本笔记的写作初衷在于，笔者在做Cache Lab的时候受到Arthals学长很大启发，同时25Fall的计算机系统导论课程改制增加了10分的Lab测试（虽然往年的期中期末中也会有一两道Lab相关选择题，但分值不大）。故将心路历程写成此笔记，以便复习，并供后续选课同学参考。

## Cache Lab简要介绍
Cache Lab是《计算机系统导论》课程的第5个Lab，对应教材第六章《存储器层次结构》。该Lab旨在加强同学们对缓存机制的理解，以及利用分块机制优化缓存的能力。

在``Cache Lab``中，共有两个``Part``，即``part A``和``part B``，分别为``27pts``和``26pts``，此外还有``7pts``的代码风格分，由助教手动评定，最终分数将由``60pts``线性缩放为``100pts``。

在``Part A``中，需要使用C语言``从零开始编写``一个小型缓存模拟器（约``200-300``行），用于模拟硬件缓存存储器的行为。在``Part B``中，需要分别优化 $32 \times 32$ ， $64 \times 64$ ， $60 \times 68$ 的矩阵转置函数，以最大限度减少缓存不命中次数。

值得一提的是，此Lab相比``Arch Lab``，受到PKU助教团队的~~魔改~~加强极少，仅将原版本极水的 $61 \times 67$ 版本优化改为 $60 \times 68$ 版本优化，

## 参考资料

[Arthals-更适合北大宝宝体质的Cache Lab踩坑记](https://arthals.ink/blog/cache-lab)

[CSAPP|Lab5-Cache Lab深入解析](https://zhuanlan.zhihu.com/p/484657229)

[CMU的实验讲解](https://www.cs.cmu.edu/afs/cs/academic/class/15213-f15/www/recitations/rec07.pdf)

[CMU关于分块优化的讲解](http://csapp.cs.cmu.edu/2e/waside/waside-blocking.pdf)