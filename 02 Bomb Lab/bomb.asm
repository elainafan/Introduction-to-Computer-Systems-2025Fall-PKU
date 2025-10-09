
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop
    1200:	f3 0f 1e fa          	endbr64
    1204:	68 1d 00 00 00       	push   $0x1d
    1209:	f2 e9 11 fe ff ff    	bnd jmp 1020 <_init+0x20>
    120f:	90                   	nop

Disassembly of section .plt.got:

0000000000001210 <__cxa_finalize@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001220 <getenv@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6ee8 <getenv@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <free@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6ef0 <free@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6ef8 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f00 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <__read_chk@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f08 <__read_chk@GLIBC_2.4>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <puts@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f10 <puts@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <write@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f18 <write@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <strlen@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f20 <strlen@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <alarm@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <close@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f40 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f48 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f50 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f58 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <memcpy@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f60 <memcpy@GLIBC_2.14>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <malloc@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f68 <malloc@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <fflush@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f70 <fflush@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__isoc99_sscanf@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f78 <__isoc99_sscanf@GLIBC_2.7>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fgets_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6f80 <__fgets_chk@GLIBC_2.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__printf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <fopen@plt>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <gethostname@plt>:
    1380:	f3 0f 1e fa          	endbr64
    1384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <exit@plt>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <connect@plt>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__fprintf_chk@plt>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <sleep@plt>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <__ctype_b_loc@plt>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013e0 <__sprintf_chk@plt>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <socket@plt>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001400 <_start>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	31 ed                	xor    %ebp,%ebp
    1406:	49 89 d1             	mov    %rdx,%r9
    1409:	5e                   	pop    %rsi
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1411:	50                   	push   %rax
    1412:	54                   	push   %rsp
    1413:	45 31 c0             	xor    %r8d,%r8d
    1416:	31 c9                	xor    %ecx,%ecx
    1418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14e9 <main>
    141f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    1425:	f4                   	hlt
    1426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <deregister_tm_clones>:
    1430:	48 8d 3d 29 70 00 00 	lea    0x7029(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1437:	48 8d 05 22 70 00 00 	lea    0x7022(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    143e:	48 39 f8             	cmp    %rdi,%rax
    1441:	74 15                	je     1458 <deregister_tm_clones+0x28>
    1443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    144a:	48 85 c0             	test   %rax,%rax
    144d:	74 09                	je     1458 <deregister_tm_clones+0x28>
    144f:	ff e0                	jmp    *%rax
    1451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1458:	c3                   	ret
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <register_tm_clones>:
    1460:	48 8d 3d f9 6f 00 00 	lea    0x6ff9(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1467:	48 8d 35 f2 6f 00 00 	lea    0x6ff2(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    146e:	48 29 fe             	sub    %rdi,%rsi
    1471:	48 89 f0             	mov    %rsi,%rax
    1474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1478:	48 c1 f8 03          	sar    $0x3,%rax
    147c:	48 01 c6             	add    %rax,%rsi
    147f:	48 d1 fe             	sar    $1,%rsi
    1482:	74 14                	je     1498 <register_tm_clones+0x38>
    1484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    148b:	48 85 c0             	test   %rax,%rax
    148e:	74 08                	je     1498 <register_tm_clones+0x38>
    1490:	ff e0                	jmp    *%rax
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1498:	c3                   	ret
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0:	f3 0f 1e fa          	endbr64
    14a4:	80 3d dd 6f 00 00 00 	cmpb   $0x0,0x6fdd(%rip)        # 8488 <completed.0>
    14ab:	75 2b                	jne    14d8 <__do_global_dtors_aux+0x38>
    14ad:	55                   	push   %rbp
    14ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    14b5:	00 
    14b6:	48 89 e5             	mov    %rsp,%rbp
    14b9:	74 0c                	je     14c7 <__do_global_dtors_aux+0x27>
    14bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 7008 <__dso_handle>
    14c2:	e8 49 fd ff ff       	call   1210 <__cxa_finalize@plt>
    14c7:	e8 64 ff ff ff       	call   1430 <deregister_tm_clones>
    14cc:	c6 05 b5 6f 00 00 01 	movb   $0x1,0x6fb5(%rip)        # 8488 <completed.0>
    14d3:	5d                   	pop    %rbp
    14d4:	c3                   	ret
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	c3                   	ret
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <frame_dummy>:
    14e0:	f3 0f 1e fa          	endbr64
    14e4:	e9 77 ff ff ff       	jmp    1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9:	f3 0f 1e fa          	endbr64
    14ed:	53                   	push   %rbx
    14ee:	83 ff 01             	cmp    $0x1,%edi
    14f1:	0f 84 15 01 00 00    	je     160c <main+0x123>
    14f7:	48 89 f3             	mov    %rsi,%rbx
    14fa:	83 ff 02             	cmp    $0x2,%edi
    14fd:	0f 85 3e 01 00 00    	jne    1641 <main+0x158>
    1503:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1507:	48 8d 35 b0 31 00 00 	lea    0x31b0(%rip),%rsi        # 46be <transition_table+0x3de>
    150e:	e8 5d fe ff ff       	call   1370 <fopen@plt>
    1513:	48 89 05 76 6f 00 00 	mov    %rax,0x6f76(%rip)        # 8490 <infile>
    151a:	48 85 c0             	test   %rax,%rax
    151d:	0f 84 fc 00 00 00    	je     161f <main+0x136>
    1523:	e8 2c 08 00 00       	call   1d54 <initialize_bomb>
    1528:	48 89 c3             	mov    %rax,%rbx
    152b:	48 8d 3d 5e 2b 00 00 	lea    0x2b5e(%rip),%rdi        # 4090 <_IO_stdin_used+0x90>
    1532:	e8 39 fd ff ff       	call   1270 <puts@plt>
    1537:	48 8d 3d 8a 2b 00 00 	lea    0x2b8a(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    153e:	e8 2d fd ff ff       	call   1270 <puts@plt>
    1543:	e8 9d 0b 00 00       	call   20e5 <read_line>
    1548:	48 89 c7             	mov    %rax,%rdi
    154b:	e8 34 02 00 00       	call   1784 <phase_1>
    1550:	48 89 df             	mov    %rbx,%rdi
    1553:	e8 cb 0c 00 00       	call   2223 <phase_defused>
    1558:	48 8d 3d a9 2b 00 00 	lea    0x2ba9(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    155f:	e8 0c fd ff ff       	call   1270 <puts@plt>
    1564:	e8 7c 0b 00 00       	call   20e5 <read_line>
    1569:	48 89 c7             	mov    %rax,%rdi
    156c:	e8 37 02 00 00       	call   17a8 <phase_2>
    1571:	48 89 df             	mov    %rbx,%rdi
    1574:	e8 aa 0c 00 00       	call   2223 <phase_defused>
    1579:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    1580:	e8 eb fc ff ff       	call   1270 <puts@plt>
    1585:	e8 5b 0b 00 00       	call   20e5 <read_line>
    158a:	48 89 c7             	mov    %rax,%rdi
    158d:	e8 87 02 00 00       	call   1819 <phase_3>
    1592:	48 89 df             	mov    %rbx,%rdi
    1595:	e8 89 0c 00 00       	call   2223 <phase_defused>
    159a:	48 8d 3d b7 2a 00 00 	lea    0x2ab7(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15a1:	e8 ca fc ff ff       	call   1270 <puts@plt>
    15a6:	e8 3a 0b 00 00       	call   20e5 <read_line>
    15ab:	48 89 c7             	mov    %rax,%rdi
    15ae:	e8 8a 03 00 00       	call   193d <phase_4>
    15b3:	48 89 df             	mov    %rbx,%rdi
    15b6:	e8 68 0c 00 00       	call   2223 <phase_defused>
    15bb:	48 8d 3d 76 2b 00 00 	lea    0x2b76(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    15c2:	e8 a9 fc ff ff       	call   1270 <puts@plt>
    15c7:	e8 19 0b 00 00       	call   20e5 <read_line>
    15cc:	48 89 c7             	mov    %rax,%rdi
    15cf:	e8 e8 03 00 00       	call   19bc <phase_5>
    15d4:	48 89 df             	mov    %rbx,%rdi
    15d7:	e8 47 0c 00 00       	call   2223 <phase_defused>
    15dc:	48 8d 3d 8e 2a 00 00 	lea    0x2a8e(%rip),%rdi        # 4071 <_IO_stdin_used+0x71>
    15e3:	e8 88 fc ff ff       	call   1270 <puts@plt>
    15e8:	e8 f8 0a 00 00       	call   20e5 <read_line>
    15ed:	48 89 c7             	mov    %rax,%rdi
    15f0:	e8 1a 04 00 00       	call   1a0f <phase_6>
    15f5:	48 89 df             	mov    %rbx,%rdi
    15f8:	e8 26 0c 00 00       	call   2223 <phase_defused>
    15fd:	48 89 df             	mov    %rbx,%rdi
    1600:	e8 2b fc ff ff       	call   1230 <free@plt>
    1605:	b8 00 00 00 00       	mov    $0x0,%eax
    160a:	5b                   	pop    %rbx
    160b:	c3                   	ret
    160c:	48 8b 05 5d 6e 00 00 	mov    0x6e5d(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    1613:	48 89 05 76 6e 00 00 	mov    %rax,0x6e76(%rip)        # 8490 <infile>
    161a:	e9 04 ff ff ff       	jmp    1523 <main+0x3a>
    161f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1623:	48 8b 13             	mov    (%rbx),%rdx
    1626:	48 8d 35 d7 29 00 00 	lea    0x29d7(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    162d:	bf 01 00 00 00       	mov    $0x1,%edi
    1632:	e8 29 fd ff ff       	call   1360 <__printf_chk@plt>
    1637:	bf 08 00 00 00       	mov    $0x8,%edi
    163c:	e8 4f fd ff ff       	call   1390 <exit@plt>
    1641:	48 8b 16             	mov    (%rsi),%rdx
    1644:	48 8d 35 d6 29 00 00 	lea    0x29d6(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    164b:	bf 01 00 00 00       	mov    $0x1,%edi
    1650:	b8 00 00 00 00       	mov    $0x0,%eax
    1655:	e8 06 fd ff ff       	call   1360 <__printf_chk@plt>
    165a:	bf 08 00 00 00       	mov    $0x8,%edi
    165f:	e8 2c fd ff ff       	call   1390 <exit@plt>

0000000000001664 <abracadabra>:
    1664:	f3 0f 1e fa          	endbr64
    1668:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    166f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1676:	00 00 
    1678:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    167f:	00 
    1680:	31 c0                	xor    %eax,%eax
    1682:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1687:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    168c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1691:	48 8d 35 c3 2a 00 00 	lea    0x2ac3(%rip),%rsi        # 415b <_IO_stdin_used+0x15b>
    1698:	48 8d 3d e9 6f 00 00 	lea    0x6fe9(%rip),%rdi        # 8688 <input_strings+0x168>
    169f:	e8 9c fc ff ff       	call   1340 <__isoc99_sscanf@plt>
    16a4:	83 f8 03             	cmp    $0x3,%eax
    16a7:	74 20                	je     16c9 <abracadabra+0x65>
    16a9:	b8 00 00 00 00       	mov    $0x0,%eax
    16ae:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    16b5:	00 
    16b6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16bd:	00 00 
    16bf:	75 2b                	jne    16ec <abracadabra+0x88>
    16c1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16c8:	c3                   	ret
    16c9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16ce:	48 8d 35 93 2a 00 00 	lea    0x2a93(%rip),%rsi        # 4168 <_IO_stdin_used+0x168>
    16d5:	e8 2b 06 00 00       	call   1d05 <strings_not_equal>
    16da:	85 c0                	test   %eax,%eax
    16dc:	74 07                	je     16e5 <abracadabra+0x81>
    16de:	b8 00 00 00 00       	mov    $0x0,%eax
    16e3:	eb c9                	jmp    16ae <abracadabra+0x4a>
    16e5:	b8 01 00 00 00       	mov    $0x1,%eax
    16ea:	eb c2                	jmp    16ae <abracadabra+0x4a>
    16ec:	e8 af fb ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000016f1 <alohomora>:
    16f1:	f3 0f 1e fa          	endbr64
    16f5:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    16fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1703:	00 00 
    1705:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    170a:	31 c0                	xor    %eax,%eax
    170c:	48 8d 05 85 6e 00 00 	lea    0x6e85(%rip),%rax        # 8598 <input_strings+0x78>
    1713:	eb 04                	jmp    1719 <alohomora+0x28>
    1715:	48 83 c0 01          	add    $0x1,%rax
    1719:	80 38 00             	cmpb   $0x0,(%rax)
    171c:	75 f7                	jne    1715 <alohomora+0x24>
    171e:	48 83 e8 01          	sub    $0x1,%rax
    1722:	48 89 e2             	mov    %rsp,%rdx
    1725:	eb 0a                	jmp    1731 <alohomora+0x40>
    1727:	88 0a                	mov    %cl,(%rdx)
    1729:	48 83 c2 01          	add    $0x1,%rdx
    172d:	48 83 e8 01          	sub    $0x1,%rax
    1731:	0f b6 08             	movzbl (%rax),%ecx
    1734:	80 f9 20             	cmp    $0x20,%cl
    1737:	74 0c                	je     1745 <alohomora+0x54>
    1739:	48 8d 35 58 6e 00 00 	lea    0x6e58(%rip),%rsi        # 8598 <input_strings+0x78>
    1740:	48 39 f0             	cmp    %rsi,%rax
    1743:	75 e2                	jne    1727 <alohomora+0x36>
    1745:	c6 02 00             	movb   $0x0,(%rdx)
    1748:	48 89 e7             	mov    %rsp,%rdi
    174b:	48 8d 35 3e 2a 00 00 	lea    0x2a3e(%rip),%rsi        # 4190 <_IO_stdin_used+0x190>
    1752:	e8 ae 05 00 00       	call   1d05 <strings_not_equal>
    1757:	85 c0                	test   %eax,%eax
    1759:	74 1d                	je     1778 <alohomora+0x87>
    175b:	b8 00 00 00 00       	mov    $0x0,%eax
    1760:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1765:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    176c:	00 00 
    176e:	75 0f                	jne    177f <alohomora+0x8e>
    1770:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    1777:	c3                   	ret
    1778:	b8 01 00 00 00       	mov    $0x1,%eax
    177d:	eb e1                	jmp    1760 <alohomora+0x6f>
    177f:	e8 1c fb ff ff       	call   12a0 <__stack_chk_fail@plt>

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

00000000000017a8 <phase_2>:
    17a8:	f3 0f 1e fa          	endbr64
    17ac:	53                   	push   %rbx
    17ad:	48 83 ec 20          	sub    $0x20,%rsp
    17b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17b8:	00 00 
    17ba:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17bf:	31 c0                	xor    %eax,%eax
    17c1:	48 89 e6             	mov    %rsp,%rsi
    17c4:	e8 d7 08 00 00       	call   20a0 <read_six_numbers>
    17c9:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    17cd:	75 07                	jne    17d6 <phase_2+0x2e>
    17cf:	bb 01 00 00 00       	mov    $0x1,%ebx
    17d4:	eb 0a                	jmp    17e0 <phase_2+0x38>
    17d6:	e8 3f 08 00 00       	call   201a <explode_bomb>
    17db:	eb f2                	jmp    17cf <phase_2+0x27>
    17dd:	83 c3 01             	add    $0x1,%ebx
    17e0:	83 fb 05             	cmp    $0x5,%ebx
    17e3:	7f 19                	jg     17fe <phase_2+0x56>
    17e5:	48 63 d3             	movslq %ebx,%rdx
    17e8:	8d 43 ff             	lea    -0x1(%rbx),%eax
    17eb:	48 98                	cltq
    17ed:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    17f0:	01 c0                	add    %eax,%eax
    17f2:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    17f5:	74 e6                	je     17dd <phase_2+0x35>
    17f7:	e8 1e 08 00 00       	call   201a <explode_bomb>
    17fc:	eb df                	jmp    17dd <phase_2+0x35>
    17fe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1803:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    180a:	00 00 
    180c:	75 06                	jne    1814 <phase_2+0x6c>
    180e:	48 83 c4 20          	add    $0x20,%rsp
    1812:	5b                   	pop    %rbx
    1813:	c3                   	ret
    1814:	e8 87 fa ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001819 <phase_3>:
    1819:	f3 0f 1e fa          	endbr64
    181d:	48 83 ec 18          	sub    $0x18,%rsp
    1821:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1828:	00 00 
    182a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    182f:	31 c0                	xor    %eax,%eax
    1831:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1836:	48 89 e2             	mov    %rsp,%rdx
    1839:	48 8d 35 e0 2d 00 00 	lea    0x2de0(%rip),%rsi        # 4620 <transition_table+0x340>
    1840:	e8 fb fa ff ff       	call   1340 <__isoc99_sscanf@plt>
    1845:	83 f8 01             	cmp    $0x1,%eax
    1848:	7e 1e                	jle    1868 <phase_3+0x4f>
    184a:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    184e:	0f 87 8d 00 00 00    	ja     18e1 <phase_3+0xc8>
    1854:	8b 04 24             	mov    (%rsp),%eax
    1857:	48 8d 15 42 2a 00 00 	lea    0x2a42(%rip),%rdx        # 42a0 <_IO_stdin_used+0x2a0>
    185e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1862:	48 01 d0             	add    %rdx,%rax
    1865:	3e ff e0             	notrack jmp *%rax
    1868:	e8 ad 07 00 00       	call   201a <explode_bomb>
    186d:	eb db                	jmp    184a <phase_3+0x31>
    186f:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1873:	05 63 01 00 00       	add    $0x163,%eax
    1878:	3d 46 01 00 00       	cmp    $0x146,%eax
    187d:	75 71                	jne    18f0 <phase_3+0xd7>
    187f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1884:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    188b:	00 00 
    188d:	75 68                	jne    18f7 <phase_3+0xde>
    188f:	48 83 c4 18          	add    $0x18,%rsp
    1893:	c3                   	ret
    1894:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1898:	05 53 01 00 00       	add    $0x153,%eax
    189d:	eb d9                	jmp    1878 <phase_3+0x5f>
    189f:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18a3:	05 d1 02 00 00       	add    $0x2d1,%eax
    18a8:	eb ce                	jmp    1878 <phase_3+0x5f>
    18aa:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18ae:	05 6a 01 00 00       	add    $0x16a,%eax
    18b3:	eb c3                	jmp    1878 <phase_3+0x5f>
    18b5:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18b9:	05 0e 02 00 00       	add    $0x20e,%eax
    18be:	eb b8                	jmp    1878 <phase_3+0x5f>
    18c0:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18c4:	05 e9 01 00 00       	add    $0x1e9,%eax
    18c9:	eb ad                	jmp    1878 <phase_3+0x5f>
    18cb:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18cf:	05 a3 00 00 00       	add    $0xa3,%eax
    18d4:	eb a2                	jmp    1878 <phase_3+0x5f>
    18d6:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18da:	05 d7 00 00 00       	add    $0xd7,%eax
    18df:	eb 97                	jmp    1878 <phase_3+0x5f>
    18e1:	e8 34 07 00 00       	call   201a <explode_bomb>
    18e6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    18eb:	e8 a0 fa ff ff       	call   1390 <exit@plt>
    18f0:	e8 25 07 00 00       	call   201a <explode_bomb>
    18f5:	eb 88                	jmp    187f <phase_3+0x66>
    18f7:	e8 a4 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000018fc <func4>:
    18fc:	f3 0f 1e fa          	endbr64
    1900:	48 83 ec 08          	sub    $0x8,%rsp
    1904:	89 d1                	mov    %edx,%ecx
    1906:	29 f1                	sub    %esi,%ecx
    1908:	89 c8                	mov    %ecx,%eax
    190a:	c1 e8 1f             	shr    $0x1f,%eax
    190d:	01 c8                	add    %ecx,%eax
    190f:	d1 f8                	sar    $1,%eax
    1911:	01 f0                	add    %esi,%eax
    1913:	39 f8                	cmp    %edi,%eax
    1915:	7f 0c                	jg     1923 <func4+0x27>
    1917:	7c 16                	jl     192f <func4+0x33>
    1919:	b8 00 00 00 00       	mov    $0x0,%eax
    191e:	48 83 c4 08          	add    $0x8,%rsp
    1922:	c3                   	ret
    1923:	8d 50 ff             	lea    -0x1(%rax),%edx
    1926:	e8 d1 ff ff ff       	call   18fc <func4>
    192b:	01 c0                	add    %eax,%eax
    192d:	eb ef                	jmp    191e <func4+0x22>
    192f:	8d 70 01             	lea    0x1(%rax),%esi
    1932:	e8 c5 ff ff ff       	call   18fc <func4>
    1937:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    193b:	eb e1                	jmp    191e <func4+0x22>

000000000000193d <phase_4>:
    193d:	f3 0f 1e fa          	endbr64
    1941:	48 83 ec 18          	sub    $0x18,%rsp
    1945:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    194c:	00 00 
    194e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1953:	31 c0                	xor    %eax,%eax
    1955:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    195a:	48 89 e2             	mov    %rsp,%rdx
    195d:	48 8d 35 bc 2c 00 00 	lea    0x2cbc(%rip),%rsi        # 4620 <transition_table+0x340>
    1964:	e8 d7 f9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    1969:	83 f8 02             	cmp    $0x2,%eax
    196c:	75 0c                	jne    197a <phase_4+0x3d>
    196e:	8b 04 24             	mov    (%rsp),%eax
    1971:	85 c0                	test   %eax,%eax
    1973:	78 05                	js     197a <phase_4+0x3d>
    1975:	83 f8 0e             	cmp    $0xe,%eax
    1978:	7e 05                	jle    197f <phase_4+0x42>
    197a:	e8 9b 06 00 00       	call   201a <explode_bomb>
    197f:	ba 0e 00 00 00       	mov    $0xe,%edx
    1984:	be 00 00 00 00       	mov    $0x0,%esi
    1989:	8b 3c 24             	mov    (%rsp),%edi
    198c:	e8 6b ff ff ff       	call   18fc <func4>
    1991:	83 f8 06             	cmp    $0x6,%eax
    1994:	75 07                	jne    199d <phase_4+0x60>
    1996:	83 7c 24 04 06       	cmpl   $0x6,0x4(%rsp)
    199b:	74 05                	je     19a2 <phase_4+0x65>
    199d:	e8 78 06 00 00       	call   201a <explode_bomb>
    19a2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    19a7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19ae:	00 00 
    19b0:	75 05                	jne    19b7 <phase_4+0x7a>
    19b2:	48 83 c4 18          	add    $0x18,%rsp
    19b6:	c3                   	ret
    19b7:	e8 e4 f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000019bc <phase_5>:
    19bc:	f3 0f 1e fa          	endbr64
    19c0:	53                   	push   %rbx
    19c1:	48 89 fb             	mov    %rdi,%rbx
    19c4:	e8 24 03 00 00       	call   1ced <string_length>
    19c9:	83 f8 04             	cmp    $0x4,%eax
    19cc:	75 0c                	jne    19da <phase_5+0x1e>
    19ce:	b9 01 00 00 00       	mov    $0x1,%ecx
    19d3:	b8 00 00 00 00       	mov    $0x0,%eax
    19d8:	eb 1f                	jmp    19f9 <phase_5+0x3d>
    19da:	e8 3b 06 00 00       	call   201a <explode_bomb>
    19df:	eb ed                	jmp    19ce <phase_5+0x12>
    19e1:	48 63 d0             	movslq %eax,%rdx
    19e4:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    19e8:	83 e2 07             	and    $0x7,%edx
    19eb:	48 8d 35 ce 28 00 00 	lea    0x28ce(%rip),%rsi        # 42c0 <array.0>
    19f2:	0f af 0c 96          	imul   (%rsi,%rdx,4),%ecx
    19f6:	83 c0 01             	add    $0x1,%eax
    19f9:	83 f8 03             	cmp    $0x3,%eax
    19fc:	7e e3                	jle    19e1 <phase_5+0x25>
    19fe:	81 f9 20 01 00 00    	cmp    $0x120,%ecx
    1a04:	75 02                	jne    1a08 <phase_5+0x4c>
    1a06:	5b                   	pop    %rbx
    1a07:	c3                   	ret
    1a08:	e8 0d 06 00 00       	call   201a <explode_bomb>
    1a0d:	eb f7                	jmp    1a06 <phase_5+0x4a>

0000000000001a0f <phase_6>:
    1a0f:	f3 0f 1e fa          	endbr64
    1a13:	41 54                	push   %r12
    1a15:	55                   	push   %rbp
    1a16:	53                   	push   %rbx
    1a17:	48 83 ec 60          	sub    $0x60,%rsp
    1a1b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a22:	00 00 
    1a24:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a29:	31 c0                	xor    %eax,%eax
    1a2b:	48 89 e6             	mov    %rsp,%rsi
    1a2e:	e8 6d 06 00 00       	call   20a0 <read_six_numbers>
    1a33:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a38:	eb 27                	jmp    1a61 <phase_6+0x52>
    1a3a:	e8 db 05 00 00       	call   201a <explode_bomb>
    1a3f:	eb 33                	jmp    1a74 <phase_6+0x65>
    1a41:	83 c3 01             	add    $0x1,%ebx
    1a44:	83 fb 05             	cmp    $0x5,%ebx
    1a47:	7f 15                	jg     1a5e <phase_6+0x4f>
    1a49:	48 63 c5             	movslq %ebp,%rax
    1a4c:	48 63 d3             	movslq %ebx,%rdx
    1a4f:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1a52:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1a55:	75 ea                	jne    1a41 <phase_6+0x32>
    1a57:	e8 be 05 00 00       	call   201a <explode_bomb>
    1a5c:	eb e3                	jmp    1a41 <phase_6+0x32>
    1a5e:	44 89 e5             	mov    %r12d,%ebp
    1a61:	83 fd 05             	cmp    $0x5,%ebp
    1a64:	7f 17                	jg     1a7d <phase_6+0x6e>
    1a66:	48 63 c5             	movslq %ebp,%rax
    1a69:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1a6c:	83 e8 01             	sub    $0x1,%eax
    1a6f:	83 f8 05             	cmp    $0x5,%eax
    1a72:	77 c6                	ja     1a3a <phase_6+0x2b>
    1a74:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1a78:	44 89 e3             	mov    %r12d,%ebx
    1a7b:	eb c7                	jmp    1a44 <phase_6+0x35>
    1a7d:	be 00 00 00 00       	mov    $0x0,%esi
    1a82:	eb 17                	jmp    1a9b <phase_6+0x8c>
    1a84:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1a88:	83 c0 01             	add    $0x1,%eax
    1a8b:	48 63 ce             	movslq %esi,%rcx
    1a8e:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1a91:	7f f1                	jg     1a84 <phase_6+0x75>
    1a93:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1a98:	83 c6 01             	add    $0x1,%esi
    1a9b:	83 fe 05             	cmp    $0x5,%esi
    1a9e:	7f 0e                	jg     1aae <phase_6+0x9f>
    1aa0:	b8 01 00 00 00       	mov    $0x1,%eax
    1aa5:	48 8d 15 a4 65 00 00 	lea    0x65a4(%rip),%rdx        # 8050 <node1>
    1aac:	eb dd                	jmp    1a8b <phase_6+0x7c>
    1aae:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1ab3:	48 89 d9             	mov    %rbx,%rcx
    1ab6:	b8 01 00 00 00       	mov    $0x1,%eax
    1abb:	eb 12                	jmp    1acf <phase_6+0xc0>
    1abd:	48 63 d0             	movslq %eax,%rdx
    1ac0:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1ac5:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1ac9:	83 c0 01             	add    $0x1,%eax
    1acc:	48 89 d1             	mov    %rdx,%rcx
    1acf:	83 f8 05             	cmp    $0x5,%eax
    1ad2:	7e e9                	jle    1abd <phase_6+0xae>
    1ad4:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1adb:	00 
    1adc:	bd 00 00 00 00       	mov    $0x0,%ebp
    1ae1:	eb 07                	jmp    1aea <phase_6+0xdb>
    1ae3:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1ae7:	83 c5 01             	add    $0x1,%ebp
    1aea:	83 fd 04             	cmp    $0x4,%ebp
    1aed:	7f 11                	jg     1b00 <phase_6+0xf1>
    1aef:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1af3:	8b 00                	mov    (%rax),%eax
    1af5:	39 03                	cmp    %eax,(%rbx)
    1af7:	7e ea                	jle    1ae3 <phase_6+0xd4>
    1af9:	e8 1c 05 00 00       	call   201a <explode_bomb>
    1afe:	eb e3                	jmp    1ae3 <phase_6+0xd4>
    1b00:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b05:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b0c:	00 00 
    1b0e:	75 09                	jne    1b19 <phase_6+0x10a>
    1b10:	48 83 c4 60          	add    $0x60,%rsp
    1b14:	5b                   	pop    %rbx
    1b15:	5d                   	pop    %rbp
    1b16:	41 5c                	pop    %r12
    1b18:	c3                   	ret
    1b19:	e8 82 f7 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001b1e <emulate_fsm>:
    1b1e:	f3 0f 1e fa          	endbr64
    1b22:	55                   	push   %rbp
    1b23:	53                   	push   %rbx
    1b24:	48 83 ec 08          	sub    $0x8,%rsp
    1b28:	89 fd                	mov    %edi,%ebp
    1b2a:	48 89 f3             	mov    %rsi,%rbx
    1b2d:	eb 28                	jmp    1b57 <emulate_fsm+0x39>
    1b2f:	0f be 03             	movsbl (%rbx),%eax
    1b32:	83 e8 30             	sub    $0x30,%eax
    1b35:	48 63 ed             	movslq %ebp,%rbp
    1b38:	48 98                	cltq
    1b3a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1b41:	00 
    1b42:	48 29 c2             	sub    %rax,%rdx
    1b45:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    1b49:	48 8d 15 90 27 00 00 	lea    0x2790(%rip),%rdx        # 42e0 <transition_table>
    1b50:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1b53:	48 83 c3 01          	add    $0x1,%rbx
    1b57:	0f b6 03             	movzbl (%rbx),%eax
    1b5a:	84 c0                	test   %al,%al
    1b5c:	74 0e                	je     1b6c <emulate_fsm+0x4e>
    1b5e:	83 e8 30             	sub    $0x30,%eax
    1b61:	3c 01                	cmp    $0x1,%al
    1b63:	76 ca                	jbe    1b2f <emulate_fsm+0x11>
    1b65:	e8 b0 04 00 00       	call   201a <explode_bomb>
    1b6a:	eb c3                	jmp    1b2f <emulate_fsm+0x11>
    1b6c:	89 e8                	mov    %ebp,%eax
    1b6e:	48 83 c4 08          	add    $0x8,%rsp
    1b72:	5b                   	pop    %rbx
    1b73:	5d                   	pop    %rbp
    1b74:	c3                   	ret

0000000000001b75 <check_synchronizing_sequence>:
    1b75:	f3 0f 1e fa          	endbr64
    1b79:	41 54                	push   %r12
    1b7b:	55                   	push   %rbp
    1b7c:	53                   	push   %rbx
    1b7d:	48 89 fd             	mov    %rdi,%rbp
    1b80:	48 89 fe             	mov    %rdi,%rsi
    1b83:	bf 00 00 00 00       	mov    $0x0,%edi
    1b88:	e8 91 ff ff ff       	call   1b1e <emulate_fsm>
    1b8d:	41 89 c4             	mov    %eax,%r12d
    1b90:	bb 01 00 00 00       	mov    $0x1,%ebx
    1b95:	83 fb 06             	cmp    $0x6,%ebx
    1b98:	7f 14                	jg     1bae <check_synchronizing_sequence+0x39>
    1b9a:	48 89 ee             	mov    %rbp,%rsi
    1b9d:	89 df                	mov    %ebx,%edi
    1b9f:	e8 7a ff ff ff       	call   1b1e <emulate_fsm>
    1ba4:	44 39 e0             	cmp    %r12d,%eax
    1ba7:	75 0f                	jne    1bb8 <check_synchronizing_sequence+0x43>
    1ba9:	83 c3 01             	add    $0x1,%ebx
    1bac:	eb e7                	jmp    1b95 <check_synchronizing_sequence+0x20>
    1bae:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb3:	5b                   	pop    %rbx
    1bb4:	5d                   	pop    %rbp
    1bb5:	41 5c                	pop    %r12
    1bb7:	c3                   	ret
    1bb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bbd:	eb f4                	jmp    1bb3 <check_synchronizing_sequence+0x3e>

0000000000001bbf <secret_phase>:
    1bbf:	f3 0f 1e fa          	endbr64
    1bc3:	55                   	push   %rbp
    1bc4:	53                   	push   %rbx
    1bc5:	48 83 ec 18          	sub    $0x18,%rsp
    1bc9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bd0:	00 00 
    1bd2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1bd7:	31 c0                	xor    %eax,%eax
    1bd9:	e8 07 05 00 00       	call   20e5 <read_line>
    1bde:	48 89 c5             	mov    %rax,%rbp
    1be1:	bb 00 00 00 00       	mov    $0x0,%ebx
    1be6:	eb 03                	jmp    1beb <secret_phase+0x2c>
    1be8:	83 c3 01             	add    $0x1,%ebx
    1beb:	48 63 c3             	movslq %ebx,%rax
    1bee:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1bf3:	74 0c                	je     1c01 <secret_phase+0x42>
    1bf5:	83 fb 10             	cmp    $0x10,%ebx
    1bf8:	7e ee                	jle    1be8 <secret_phase+0x29>
    1bfa:	e8 1b 04 00 00       	call   201a <explode_bomb>
    1bff:	eb e7                	jmp    1be8 <secret_phase+0x29>
    1c01:	48 89 ef             	mov    %rbp,%rdi
    1c04:	e8 6c ff ff ff       	call   1b75 <check_synchronizing_sequence>
    1c09:	85 c0                	test   %eax,%eax
    1c0b:	75 45                	jne    1c52 <secret_phase+0x93>
    1c0d:	48 8d 3d c4 25 00 00 	lea    0x25c4(%rip),%rdi        # 41d8 <_IO_stdin_used+0x1d8>
    1c14:	e8 57 f6 ff ff       	call   1270 <puts@plt>
    1c19:	48 8d 3d e8 25 00 00 	lea    0x25e8(%rip),%rdi        # 4208 <_IO_stdin_used+0x208>
    1c20:	e8 4b f6 ff ff       	call   1270 <puts@plt>
    1c25:	48 8d 3d 34 26 00 00 	lea    0x2634(%rip),%rdi        # 4260 <_IO_stdin_used+0x260>
    1c2c:	e8 3f f6 ff ff       	call   1270 <puts@plt>
    1c31:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c36:	e8 e8 05 00 00       	call   2223 <phase_defused>
    1c3b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c40:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c47:	00 00 
    1c49:	75 0e                	jne    1c59 <secret_phase+0x9a>
    1c4b:	48 83 c4 18          	add    $0x18,%rsp
    1c4f:	5b                   	pop    %rbx
    1c50:	5d                   	pop    %rbp
    1c51:	c3                   	ret
    1c52:	e8 c3 03 00 00       	call   201a <explode_bomb>
    1c57:	eb b4                	jmp    1c0d <secret_phase+0x4e>
    1c59:	e8 42 f6 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001c5e <sig_handler>:
    1c5e:	f3 0f 1e fa          	endbr64
    1c62:	50                   	push   %rax
    1c63:	58                   	pop    %rax
    1c64:	48 83 ec 08          	sub    $0x8,%rsp
    1c68:	48 8d 3d a9 26 00 00 	lea    0x26a9(%rip),%rdi        # 4318 <transition_table+0x38>
    1c6f:	e8 fc f5 ff ff       	call   1270 <puts@plt>
    1c74:	bf 03 00 00 00       	mov    $0x3,%edi
    1c79:	e8 42 f7 ff ff       	call   13c0 <sleep@plt>
    1c7e:	48 8d 35 14 29 00 00 	lea    0x2914(%rip),%rsi        # 4599 <transition_table+0x2b9>
    1c85:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1c8f:	e8 cc f6 ff ff       	call   1360 <__printf_chk@plt>
    1c94:	48 8b 3d c5 67 00 00 	mov    0x67c5(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1c9b:	e8 90 f6 ff ff       	call   1330 <fflush@plt>
    1ca0:	bf 01 00 00 00       	mov    $0x1,%edi
    1ca5:	e8 16 f7 ff ff       	call   13c0 <sleep@plt>
    1caa:	48 8d 3d f0 28 00 00 	lea    0x28f0(%rip),%rdi        # 45a1 <transition_table+0x2c1>
    1cb1:	e8 ba f5 ff ff       	call   1270 <puts@plt>
    1cb6:	bf 10 00 00 00       	mov    $0x10,%edi
    1cbb:	e8 d0 f6 ff ff       	call   1390 <exit@plt>

0000000000001cc0 <invalid_phase>:
    1cc0:	f3 0f 1e fa          	endbr64
    1cc4:	50                   	push   %rax
    1cc5:	58                   	pop    %rax
    1cc6:	48 83 ec 08          	sub    $0x8,%rsp
    1cca:	48 89 fa             	mov    %rdi,%rdx
    1ccd:	48 8d 35 d5 28 00 00 	lea    0x28d5(%rip),%rsi        # 45a9 <transition_table+0x2c9>
    1cd4:	bf 01 00 00 00       	mov    $0x1,%edi
    1cd9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cde:	e8 7d f6 ff ff       	call   1360 <__printf_chk@plt>
    1ce3:	bf 08 00 00 00       	mov    $0x8,%edi
    1ce8:	e8 a3 f6 ff ff       	call   1390 <exit@plt>

0000000000001ced <string_length>:
    1ced:	f3 0f 1e fa          	endbr64
    1cf1:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf6:	eb 07                	jmp    1cff <string_length+0x12>
    1cf8:	48 83 c7 01          	add    $0x1,%rdi
    1cfc:	83 c0 01             	add    $0x1,%eax
    1cff:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d02:	75 f4                	jne    1cf8 <string_length+0xb>
    1d04:	c3                   	ret

0000000000001d05 <strings_not_equal>:
    1d05:	f3 0f 1e fa          	endbr64
    1d09:	41 54                	push   %r12
    1d0b:	55                   	push   %rbp
    1d0c:	53                   	push   %rbx
    1d0d:	48 89 fb             	mov    %rdi,%rbx
    1d10:	48 89 f5             	mov    %rsi,%rbp
    1d13:	e8 d5 ff ff ff       	call   1ced <string_length>
    1d18:	41 89 c4             	mov    %eax,%r12d
    1d1b:	48 89 ef             	mov    %rbp,%rdi
    1d1e:	e8 ca ff ff ff       	call   1ced <string_length>
    1d23:	41 39 c4             	cmp    %eax,%r12d
    1d26:	74 12                	je     1d3a <strings_not_equal+0x35>
    1d28:	b8 01 00 00 00       	mov    $0x1,%eax
    1d2d:	5b                   	pop    %rbx
    1d2e:	5d                   	pop    %rbp
    1d2f:	41 5c                	pop    %r12
    1d31:	c3                   	ret
    1d32:	48 83 c3 01          	add    $0x1,%rbx
    1d36:	48 83 c5 01          	add    $0x1,%rbp
    1d3a:	0f b6 03             	movzbl (%rbx),%eax
    1d3d:	84 c0                	test   %al,%al
    1d3f:	74 0c                	je     1d4d <strings_not_equal+0x48>
    1d41:	38 45 00             	cmp    %al,0x0(%rbp)
    1d44:	74 ec                	je     1d32 <strings_not_equal+0x2d>
    1d46:	b8 01 00 00 00       	mov    $0x1,%eax
    1d4b:	eb e0                	jmp    1d2d <strings_not_equal+0x28>
    1d4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d52:	eb d9                	jmp    1d2d <strings_not_equal+0x28>

0000000000001d54 <initialize_bomb>:
    1d54:	f3 0f 1e fa          	endbr64
    1d58:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d5f:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d64:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d6b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d70:	48 83 ec 58          	sub    $0x58,%rsp
    1d74:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d7b:	00 00 
    1d7d:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1d84:	00 
    1d85:	31 c0                	xor    %eax,%eax
    1d87:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 1c5e <sig_handler>
    1d8e:	bf 02 00 00 00       	mov    $0x2,%edi
    1d93:	e8 48 f5 ff ff       	call   12e0 <signal@plt>
    1d98:	48 89 e7             	mov    %rsp,%rdi
    1d9b:	be 40 00 00 00       	mov    $0x40,%esi
    1da0:	e8 db f5 ff ff       	call   1380 <gethostname@plt>
    1da5:	85 c0                	test   %eax,%eax
    1da7:	75 39                	jne    1de2 <initialize_bomb+0x8e>
    1da9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1dae:	e8 5b 10 00 00       	call   2e0e <init_driver>
    1db3:	85 c0                	test   %eax,%eax
    1db5:	78 41                	js     1df8 <initialize_bomb+0xa4>
    1db7:	bf 04 00 00 00       	mov    $0x4,%edi
    1dbc:	e8 5f f5 ff ff       	call   1320 <malloc@plt>
    1dc1:	c7 00 11 fa 25 20    	movl   $0x2025fa11,(%rax)
    1dc7:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    1dce:	00 
    1dcf:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1dd6:	00 00 
    1dd8:	75 43                	jne    1e1d <initialize_bomb+0xc9>
    1dda:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1de1:	c3                   	ret
    1de2:	48 8d 3d 67 25 00 00 	lea    0x2567(%rip),%rdi        # 4350 <transition_table+0x70>
    1de9:	e8 82 f4 ff ff       	call   1270 <puts@plt>
    1dee:	bf 08 00 00 00       	mov    $0x8,%edi
    1df3:	e8 98 f5 ff ff       	call   1390 <exit@plt>
    1df8:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1dfd:	48 8d 35 b6 27 00 00 	lea    0x27b6(%rip),%rsi        # 45ba <transition_table+0x2da>
    1e04:	bf 01 00 00 00       	mov    $0x1,%edi
    1e09:	b8 00 00 00 00       	mov    $0x0,%eax
    1e0e:	e8 4d f5 ff ff       	call   1360 <__printf_chk@plt>
    1e13:	bf 08 00 00 00       	mov    $0x8,%edi
    1e18:	e8 73 f5 ff ff       	call   1390 <exit@plt>
    1e1d:	e8 7e f4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001e22 <initialize_bomb_solve>:
    1e22:	f3 0f 1e fa          	endbr64
    1e26:	c3                   	ret

0000000000001e27 <blank_line>:
    1e27:	f3 0f 1e fa          	endbr64
    1e2b:	55                   	push   %rbp
    1e2c:	53                   	push   %rbx
    1e2d:	48 83 ec 08          	sub    $0x8,%rsp
    1e31:	48 89 fd             	mov    %rdi,%rbp
    1e34:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1e38:	84 db                	test   %bl,%bl
    1e3a:	74 1e                	je     1e5a <blank_line+0x33>
    1e3c:	e8 8f f5 ff ff       	call   13d0 <__ctype_b_loc@plt>
    1e41:	48 8b 00             	mov    (%rax),%rax
    1e44:	48 83 c5 01          	add    $0x1,%rbp
    1e48:	48 0f be db          	movsbq %bl,%rbx
    1e4c:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1e51:	75 e1                	jne    1e34 <blank_line+0xd>
    1e53:	b8 00 00 00 00       	mov    $0x0,%eax
    1e58:	eb 05                	jmp    1e5f <blank_line+0x38>
    1e5a:	b8 01 00 00 00       	mov    $0x1,%eax
    1e5f:	48 83 c4 08          	add    $0x8,%rsp
    1e63:	5b                   	pop    %rbx
    1e64:	5d                   	pop    %rbp
    1e65:	c3                   	ret

0000000000001e66 <skip>:
    1e66:	f3 0f 1e fa          	endbr64
    1e6a:	53                   	push   %rbx
    1e6b:	48 63 15 a6 66 00 00 	movslq 0x66a6(%rip),%rdx        # 8518 <num_input_strings>
    1e72:	48 89 d0             	mov    %rdx,%rax
    1e75:	48 c1 e0 04          	shl    $0x4,%rax
    1e79:	48 29 d0             	sub    %rdx,%rax
    1e7c:	48 8d 15 9d 66 00 00 	lea    0x669d(%rip),%rdx        # 8520 <input_strings>
    1e83:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1e87:	48 8b 0d 02 66 00 00 	mov    0x6602(%rip),%rcx        # 8490 <infile>
    1e8e:	ba 78 00 00 00       	mov    $0x78,%edx
    1e93:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1e9a:	e8 b1 f4 ff ff       	call   1350 <__fgets_chk@plt>
    1e9f:	48 89 c3             	mov    %rax,%rbx
    1ea2:	48 85 c0             	test   %rax,%rax
    1ea5:	74 0c                	je     1eb3 <skip+0x4d>
    1ea7:	48 89 c7             	mov    %rax,%rdi
    1eaa:	e8 78 ff ff ff       	call   1e27 <blank_line>
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	75 b8                	jne    1e6b <skip+0x5>
    1eb3:	48 89 d8             	mov    %rbx,%rax
    1eb6:	5b                   	pop    %rbx
    1eb7:	c3                   	ret

0000000000001eb8 <send_msg>:
    1eb8:	f3 0f 1e fa          	endbr64
    1ebc:	41 55                	push   %r13
    1ebe:	41 54                	push   %r12
    1ec0:	55                   	push   %rbp
    1ec1:	53                   	push   %rbx
    1ec2:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1ec9:	ff 
    1eca:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1ed1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1ed6:	4c 39 dc             	cmp    %r11,%rsp
    1ed9:	75 ef                	jne    1eca <send_msg+0x12>
    1edb:	48 83 ec 18          	sub    $0x18,%rsp
    1edf:	89 fd                	mov    %edi,%ebp
    1ee1:	48 89 f3             	mov    %rsi,%rbx
    1ee4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1eeb:	00 00 
    1eed:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1ef4:	00 
    1ef5:	31 c0                	xor    %eax,%eax
    1ef7:	44 8b 25 1a 66 00 00 	mov    0x661a(%rip),%r12d        # 8518 <num_input_strings>
    1efe:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    1f03:	48 98                	cltq
    1f05:	48 89 c2             	mov    %rax,%rdx
    1f08:	48 c1 e2 04          	shl    $0x4,%rdx
    1f0c:	48 29 c2             	sub    %rax,%rdx
    1f0f:	48 8d 05 0a 66 00 00 	lea    0x660a(%rip),%rax        # 8520 <input_strings>
    1f16:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    1f1a:	4c 89 ef             	mov    %r13,%rdi
    1f1d:	e8 6e f3 ff ff       	call   1290 <strlen@plt>
    1f22:	48 83 c0 64          	add    $0x64,%rax
    1f26:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1f2c:	0f 87 a0 00 00 00    	ja     1fd2 <send_msg+0x11a>
    1f32:	85 ed                	test   %ebp,%ebp
    1f34:	0f 84 b8 00 00 00    	je     1ff2 <send_msg+0x13a>
    1f3a:	48 8d 05 93 26 00 00 	lea    0x2693(%rip),%rax        # 45d4 <transition_table+0x2f4>
    1f41:	48 89 e5             	mov    %rsp,%rbp
    1f44:	48 83 ec 08          	sub    $0x8,%rsp
    1f48:	41 55                	push   %r13
    1f4a:	41 54                	push   %r12
    1f4c:	50                   	push   %rax
    1f4d:	4c 8d 0d ec 58 00 00 	lea    0x58ec(%rip),%r9        # 7840 <authkey>
    1f54:	44 8b 05 e5 60 00 00 	mov    0x60e5(%rip),%r8d        # 8040 <bomb_id>
    1f5b:	48 8d 0d 83 26 00 00 	lea    0x2683(%rip),%rcx        # 45e5 <transition_table+0x305>
    1f62:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f67:	be 01 00 00 00       	mov    $0x1,%esi
    1f6c:	48 89 ef             	mov    %rbp,%rdi
    1f6f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f74:	e8 67 f4 ff ff       	call   13e0 <__sprintf_chk@plt>
    1f79:	48 89 ec             	mov    %rbp,%rsp
    1f7c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1f83:	00 
    1f84:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1f8a:	48 89 e9             	mov    %rbp,%rcx
    1f8d:	48 8d 15 ac 50 00 00 	lea    0x50ac(%rip),%rdx        # 7040 <lab>
    1f94:	48 8d 35 a5 54 00 00 	lea    0x54a5(%rip),%rsi        # 7440 <course>
    1f9b:	48 8d 3d 9e 5c 00 00 	lea    0x5c9e(%rip),%rdi        # 7c40 <userid>
    1fa2:	e8 96 10 00 00       	call   303d <driver_post>
    1fa7:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1fad:	85 c0                	test   %eax,%eax
    1faf:	78 4d                	js     1ffe <send_msg+0x146>
    1fb1:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1fb8:	00 
    1fb9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1fc0:	00 00 
    1fc2:	75 51                	jne    2015 <send_msg+0x15d>
    1fc4:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1fcb:	5b                   	pop    %rbx
    1fcc:	5d                   	pop    %rbp
    1fcd:	41 5c                	pop    %r12
    1fcf:	41 5d                	pop    %r13
    1fd1:	c3                   	ret
    1fd2:	48 8d 35 af 23 00 00 	lea    0x23af(%rip),%rsi        # 4388 <transition_table+0xa8>
    1fd9:	bf 01 00 00 00       	mov    $0x1,%edi
    1fde:	b8 00 00 00 00       	mov    $0x0,%eax
    1fe3:	e8 78 f3 ff ff       	call   1360 <__printf_chk@plt>
    1fe8:	bf 08 00 00 00       	mov    $0x8,%edi
    1fed:	e8 9e f3 ff ff       	call   1390 <exit@plt>
    1ff2:	48 8d 05 e3 25 00 00 	lea    0x25e3(%rip),%rax        # 45dc <transition_table+0x2fc>
    1ff9:	e9 43 ff ff ff       	jmp    1f41 <send_msg+0x89>
    1ffe:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2005:	00 
    2006:	e8 65 f2 ff ff       	call   1270 <puts@plt>
    200b:	bf 00 00 00 00       	mov    $0x0,%edi
    2010:	e8 7b f3 ff ff       	call   1390 <exit@plt>
    2015:	e8 86 f2 ff ff       	call   12a0 <__stack_chk_fail@plt>

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

00000000000020a0 <read_six_numbers>:
    20a0:	f3 0f 1e fa          	endbr64
    20a4:	48 83 ec 08          	sub    $0x8,%rsp
    20a8:	48 89 f2             	mov    %rsi,%rdx
    20ab:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    20af:	48 8d 46 14          	lea    0x14(%rsi),%rax
    20b3:	50                   	push   %rax
    20b4:	48 8d 46 10          	lea    0x10(%rsi),%rax
    20b8:	50                   	push   %rax
    20b9:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    20bd:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    20c1:	48 8d 35 4c 25 00 00 	lea    0x254c(%rip),%rsi        # 4614 <transition_table+0x334>
    20c8:	b8 00 00 00 00       	mov    $0x0,%eax
    20cd:	e8 6e f2 ff ff       	call   1340 <__isoc99_sscanf@plt>
    20d2:	48 83 c4 10          	add    $0x10,%rsp
    20d6:	83 f8 05             	cmp    $0x5,%eax
    20d9:	7e 05                	jle    20e0 <read_six_numbers+0x40>
    20db:	48 83 c4 08          	add    $0x8,%rsp
    20df:	c3                   	ret
    20e0:	e8 35 ff ff ff       	call   201a <explode_bomb>

00000000000020e5 <read_line>:
    20e5:	f3 0f 1e fa          	endbr64
    20e9:	55                   	push   %rbp
    20ea:	53                   	push   %rbx
    20eb:	48 83 ec 08          	sub    $0x8,%rsp
    20ef:	b8 00 00 00 00       	mov    $0x0,%eax
    20f4:	e8 6d fd ff ff       	call   1e66 <skip>
    20f9:	48 85 c0             	test   %rax,%rax
    20fc:	74 63                	je     2161 <read_line+0x7c>
    20fe:	8b 1d 14 64 00 00    	mov    0x6414(%rip),%ebx        # 8518 <num_input_strings>
    2104:	48 63 d3             	movslq %ebx,%rdx
    2107:	48 89 d0             	mov    %rdx,%rax
    210a:	48 c1 e0 04          	shl    $0x4,%rax
    210e:	48 29 d0             	sub    %rdx,%rax
    2111:	48 8d 15 08 64 00 00 	lea    0x6408(%rip),%rdx        # 8520 <input_strings>
    2118:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    211c:	48 89 ef             	mov    %rbp,%rdi
    211f:	e8 6c f1 ff ff       	call   1290 <strlen@plt>
    2124:	83 f8 76             	cmp    $0x76,%eax
    2127:	0f 8f ac 00 00 00    	jg     21d9 <read_line+0xf4>
    212d:	83 e8 01             	sub    $0x1,%eax
    2130:	48 98                	cltq
    2132:	48 63 cb             	movslq %ebx,%rcx
    2135:	48 89 ca             	mov    %rcx,%rdx
    2138:	48 c1 e2 04          	shl    $0x4,%rdx
    213c:	48 29 ca             	sub    %rcx,%rdx
    213f:	48 8d 0d da 63 00 00 	lea    0x63da(%rip),%rcx        # 8520 <input_strings>
    2146:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    214a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    214e:	83 c3 01             	add    $0x1,%ebx
    2151:	89 1d c1 63 00 00    	mov    %ebx,0x63c1(%rip)        # 8518 <num_input_strings>
    2157:	48 89 e8             	mov    %rbp,%rax
    215a:	48 83 c4 08          	add    $0x8,%rsp
    215e:	5b                   	pop    %rbx
    215f:	5d                   	pop    %rbp
    2160:	c3                   	ret
    2161:	48 8b 05 08 63 00 00 	mov    0x6308(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2168:	48 39 05 21 63 00 00 	cmp    %rax,0x6321(%rip)        # 8490 <infile>
    216f:	74 1b                	je     218c <read_line+0xa7>
    2171:	48 8d 3d cc 24 00 00 	lea    0x24cc(%rip),%rdi        # 4644 <transition_table+0x364>
    2178:	e8 a3 f0 ff ff       	call   1220 <getenv@plt>
    217d:	48 85 c0             	test   %rax,%rax
    2180:	74 20                	je     21a2 <read_line+0xbd>
    2182:	bf 00 00 00 00       	mov    $0x0,%edi
    2187:	e8 04 f2 ff ff       	call   1390 <exit@plt>
    218c:	48 8d 3d 93 24 00 00 	lea    0x2493(%rip),%rdi        # 4626 <transition_table+0x346>
    2193:	e8 d8 f0 ff ff       	call   1270 <puts@plt>
    2198:	bf 08 00 00 00       	mov    $0x8,%edi
    219d:	e8 ee f1 ff ff       	call   1390 <exit@plt>
    21a2:	48 8b 05 c7 62 00 00 	mov    0x62c7(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21a9:	48 89 05 e0 62 00 00 	mov    %rax,0x62e0(%rip)        # 8490 <infile>
    21b0:	b8 00 00 00 00       	mov    $0x0,%eax
    21b5:	e8 ac fc ff ff       	call   1e66 <skip>
    21ba:	48 85 c0             	test   %rax,%rax
    21bd:	0f 85 3b ff ff ff    	jne    20fe <read_line+0x19>
    21c3:	48 8d 3d 5c 24 00 00 	lea    0x245c(%rip),%rdi        # 4626 <transition_table+0x346>
    21ca:	e8 a1 f0 ff ff       	call   1270 <puts@plt>
    21cf:	bf 00 00 00 00       	mov    $0x0,%edi
    21d4:	e8 b7 f1 ff ff       	call   1390 <exit@plt>
    21d9:	48 8d 3d 6f 24 00 00 	lea    0x246f(%rip),%rdi        # 464f <transition_table+0x36f>
    21e0:	e8 8b f0 ff ff       	call   1270 <puts@plt>
    21e5:	8b 05 2d 63 00 00    	mov    0x632d(%rip),%eax        # 8518 <num_input_strings>
    21eb:	8d 50 01             	lea    0x1(%rax),%edx
    21ee:	89 15 24 63 00 00    	mov    %edx,0x6324(%rip)        # 8518 <num_input_strings>
    21f4:	48 98                	cltq
    21f6:	48 6b c0 78          	imul   $0x78,%rax,%rax
    21fa:	48 8d 15 1f 63 00 00 	lea    0x631f(%rip),%rdx        # 8520 <input_strings>
    2201:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2208:	75 6e 63 
    220b:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2212:	2a 2a 00 
    2215:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2219:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    221e:	e8 f7 fd ff ff       	call   201a <explode_bomb>

0000000000002223 <phase_defused>:
    2223:	f3 0f 1e fa          	endbr64
    2227:	53                   	push   %rbx
    2228:	48 89 fb             	mov    %rdi,%rbx
    222b:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2231:	48 89 fe             	mov    %rdi,%rsi
    2234:	bf 01 00 00 00       	mov    $0x1,%edi
    2239:	e8 7a fc ff ff       	call   1eb8 <send_msg>
    223e:	83 3b 01             	cmpl   $0x1,(%rbx)
    2241:	75 0b                	jne    224e <phase_defused+0x2b>
    2243:	83 3d ce 62 00 00 06 	cmpl   $0x6,0x62ce(%rip)        # 8518 <num_input_strings>
    224a:	74 22                	je     226e <phase_defused+0x4b>
    224c:	5b                   	pop    %rbx
    224d:	c3                   	ret
    224e:	48 8d 35 5b 21 00 00 	lea    0x215b(%rip),%rsi        # 43b0 <transition_table+0xd0>
    2255:	bf 01 00 00 00       	mov    $0x1,%edi
    225a:	b8 00 00 00 00       	mov    $0x0,%eax
    225f:	e8 fc f0 ff ff       	call   1360 <__printf_chk@plt>
    2264:	bf 08 00 00 00       	mov    $0x8,%edi
    2269:	e8 22 f1 ff ff       	call   1390 <exit@plt>
    226e:	e8 f1 f3 ff ff       	call   1664 <abracadabra>
    2273:	85 c0                	test   %eax,%eax
    2275:	75 1a                	jne    2291 <phase_defused+0x6e>
    2277:	48 8d 3d 92 22 00 00 	lea    0x2292(%rip),%rdi        # 4510 <transition_table+0x230>
    227e:	e8 ed ef ff ff       	call   1270 <puts@plt>
    2283:	48 8d 3d ce 22 00 00 	lea    0x22ce(%rip),%rdi        # 4558 <transition_table+0x278>
    228a:	e8 e1 ef ff ff       	call   1270 <puts@plt>
    228f:	eb bb                	jmp    224c <phase_defused+0x29>
    2291:	e8 5b f4 ff ff       	call   16f1 <alohomora>
    2296:	85 c0                	test   %eax,%eax
    2298:	74 30                	je     22ca <phase_defused+0xa7>
    229a:	48 8d 3d 7f 21 00 00 	lea    0x217f(%rip),%rdi        # 4420 <transition_table+0x140>
    22a1:	e8 ca ef ff ff       	call   1270 <puts@plt>
    22a6:	48 8d 3d 9b 21 00 00 	lea    0x219b(%rip),%rdi        # 4448 <transition_table+0x168>
    22ad:	e8 be ef ff ff       	call   1270 <puts@plt>
    22b2:	48 8d 3d c7 21 00 00 	lea    0x21c7(%rip),%rdi        # 4480 <transition_table+0x1a0>
    22b9:	e8 b2 ef ff ff       	call   1270 <puts@plt>
    22be:	b8 00 00 00 00       	mov    $0x0,%eax
    22c3:	e8 f7 f8 ff ff       	call   1bbf <secret_phase>
    22c8:	eb ad                	jmp    2277 <phase_defused+0x54>
    22ca:	48 8d 3d ff 21 00 00 	lea    0x21ff(%rip),%rdi        # 44d0 <transition_table+0x1f0>
    22d1:	e8 9a ef ff ff       	call   1270 <puts@plt>
    22d6:	48 8d 3d a3 21 00 00 	lea    0x21a3(%rip),%rdi        # 4480 <transition_table+0x1a0>
    22dd:	e8 8e ef ff ff       	call   1270 <puts@plt>
    22e2:	eb 93                	jmp    2277 <phase_defused+0x54>

00000000000022e4 <rio_readinitb>:
    22e4:	89 37                	mov    %esi,(%rdi)
    22e6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    22ed:	48 8d 47 10          	lea    0x10(%rdi),%rax
    22f1:	48 89 47 08          	mov    %rax,0x8(%rdi)
    22f5:	c3                   	ret

00000000000022f6 <sigalrm_handler>:
    22f6:	f3 0f 1e fa          	endbr64
    22fa:	50                   	push   %rax
    22fb:	58                   	pop    %rax
    22fc:	48 83 ec 08          	sub    $0x8,%rsp
    2300:	b9 00 00 00 00       	mov    $0x0,%ecx
    2305:	48 8d 15 b4 23 00 00 	lea    0x23b4(%rip),%rdx        # 46c0 <transition_table+0x3e0>
    230c:	be 01 00 00 00       	mov    $0x1,%esi
    2311:	48 8b 3d 68 61 00 00 	mov    0x6168(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    2318:	b8 00 00 00 00       	mov    $0x0,%eax
    231d:	e8 8e f0 ff ff       	call   13b0 <__fprintf_chk@plt>
    2322:	bf 01 00 00 00       	mov    $0x1,%edi
    2327:	e8 64 f0 ff ff       	call   1390 <exit@plt>

000000000000232c <rio_writen>:
    232c:	41 55                	push   %r13
    232e:	41 54                	push   %r12
    2330:	55                   	push   %rbp
    2331:	53                   	push   %rbx
    2332:	48 83 ec 08          	sub    $0x8,%rsp
    2336:	41 89 fc             	mov    %edi,%r12d
    2339:	48 89 f5             	mov    %rsi,%rbp
    233c:	49 89 d5             	mov    %rdx,%r13
    233f:	48 89 d3             	mov    %rdx,%rbx
    2342:	eb 06                	jmp    234a <rio_writen+0x1e>
    2344:	48 29 c3             	sub    %rax,%rbx
    2347:	48 01 c5             	add    %rax,%rbp
    234a:	48 85 db             	test   %rbx,%rbx
    234d:	74 24                	je     2373 <rio_writen+0x47>
    234f:	48 89 da             	mov    %rbx,%rdx
    2352:	48 89 ee             	mov    %rbp,%rsi
    2355:	44 89 e7             	mov    %r12d,%edi
    2358:	e8 23 ef ff ff       	call   1280 <write@plt>
    235d:	48 85 c0             	test   %rax,%rax
    2360:	7f e2                	jg     2344 <rio_writen+0x18>
    2362:	e8 d9 ee ff ff       	call   1240 <__errno_location@plt>
    2367:	83 38 04             	cmpl   $0x4,(%rax)
    236a:	75 15                	jne    2381 <rio_writen+0x55>
    236c:	b8 00 00 00 00       	mov    $0x0,%eax
    2371:	eb d1                	jmp    2344 <rio_writen+0x18>
    2373:	4c 89 e8             	mov    %r13,%rax
    2376:	48 83 c4 08          	add    $0x8,%rsp
    237a:	5b                   	pop    %rbx
    237b:	5d                   	pop    %rbp
    237c:	41 5c                	pop    %r12
    237e:	41 5d                	pop    %r13
    2380:	c3                   	ret
    2381:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2388:	eb ec                	jmp    2376 <rio_writen+0x4a>

000000000000238a <rio_read>:
    238a:	41 55                	push   %r13
    238c:	41 54                	push   %r12
    238e:	55                   	push   %rbp
    238f:	53                   	push   %rbx
    2390:	48 83 ec 08          	sub    $0x8,%rsp
    2394:	48 89 fb             	mov    %rdi,%rbx
    2397:	49 89 f5             	mov    %rsi,%r13
    239a:	49 89 d4             	mov    %rdx,%r12
    239d:	eb 0a                	jmp    23a9 <rio_read+0x1f>
    239f:	e8 9c ee ff ff       	call   1240 <__errno_location@plt>
    23a4:	83 38 04             	cmpl   $0x4,(%rax)
    23a7:	75 61                	jne    240a <rio_read+0x80>
    23a9:	8b 6b 04             	mov    0x4(%rbx),%ebp
    23ac:	85 ed                	test   %ebp,%ebp
    23ae:	7f 29                	jg     23d9 <rio_read+0x4f>
    23b0:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    23b4:	8b 3b                	mov    (%rbx),%edi
    23b6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23bd:	ba 00 20 00 00       	mov    $0x2000,%edx
    23c2:	48 89 ee             	mov    %rbp,%rsi
    23c5:	e8 96 ee ff ff       	call   1260 <__read_chk@plt>
    23ca:	89 43 04             	mov    %eax,0x4(%rbx)
    23cd:	85 c0                	test   %eax,%eax
    23cf:	78 ce                	js     239f <rio_read+0x15>
    23d1:	74 40                	je     2413 <rio_read+0x89>
    23d3:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    23d7:	eb d0                	jmp    23a9 <rio_read+0x1f>
    23d9:	89 e8                	mov    %ebp,%eax
    23db:	4c 39 e0             	cmp    %r12,%rax
    23de:	72 03                	jb     23e3 <rio_read+0x59>
    23e0:	44 89 e5             	mov    %r12d,%ebp
    23e3:	4c 63 e5             	movslq %ebp,%r12
    23e6:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    23ea:	4c 89 e2             	mov    %r12,%rdx
    23ed:	4c 89 ef             	mov    %r13,%rdi
    23f0:	e8 1b ef ff ff       	call   1310 <memcpy@plt>
    23f5:	4c 01 63 08          	add    %r12,0x8(%rbx)
    23f9:	29 6b 04             	sub    %ebp,0x4(%rbx)
    23fc:	4c 89 e0             	mov    %r12,%rax
    23ff:	48 83 c4 08          	add    $0x8,%rsp
    2403:	5b                   	pop    %rbx
    2404:	5d                   	pop    %rbp
    2405:	41 5c                	pop    %r12
    2407:	41 5d                	pop    %r13
    2409:	c3                   	ret
    240a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2411:	eb ec                	jmp    23ff <rio_read+0x75>
    2413:	b8 00 00 00 00       	mov    $0x0,%eax
    2418:	eb e5                	jmp    23ff <rio_read+0x75>

000000000000241a <rio_readlineb>:
    241a:	41 55                	push   %r13
    241c:	41 54                	push   %r12
    241e:	55                   	push   %rbp
    241f:	53                   	push   %rbx
    2420:	48 83 ec 18          	sub    $0x18,%rsp
    2424:	49 89 fd             	mov    %rdi,%r13
    2427:	48 89 f5             	mov    %rsi,%rbp
    242a:	49 89 d4             	mov    %rdx,%r12
    242d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2434:	00 00 
    2436:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    243b:	31 c0                	xor    %eax,%eax
    243d:	bb 01 00 00 00       	mov    $0x1,%ebx
    2442:	eb 18                	jmp    245c <rio_readlineb+0x42>
    2444:	85 c0                	test   %eax,%eax
    2446:	75 65                	jne    24ad <rio_readlineb+0x93>
    2448:	48 83 fb 01          	cmp    $0x1,%rbx
    244c:	75 3d                	jne    248b <rio_readlineb+0x71>
    244e:	b8 00 00 00 00       	mov    $0x0,%eax
    2453:	eb 3d                	jmp    2492 <rio_readlineb+0x78>
    2455:	48 83 c3 01          	add    $0x1,%rbx
    2459:	48 89 d5             	mov    %rdx,%rbp
    245c:	4c 39 e3             	cmp    %r12,%rbx
    245f:	73 2a                	jae    248b <rio_readlineb+0x71>
    2461:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    2466:	ba 01 00 00 00       	mov    $0x1,%edx
    246b:	4c 89 ef             	mov    %r13,%rdi
    246e:	e8 17 ff ff ff       	call   238a <rio_read>
    2473:	83 f8 01             	cmp    $0x1,%eax
    2476:	75 cc                	jne    2444 <rio_readlineb+0x2a>
    2478:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    247c:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    2481:	88 45 00             	mov    %al,0x0(%rbp)
    2484:	3c 0a                	cmp    $0xa,%al
    2486:	75 cd                	jne    2455 <rio_readlineb+0x3b>
    2488:	48 89 d5             	mov    %rdx,%rbp
    248b:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    248f:	48 89 d8             	mov    %rbx,%rax
    2492:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    2497:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    249e:	00 00 
    24a0:	75 14                	jne    24b6 <rio_readlineb+0x9c>
    24a2:	48 83 c4 18          	add    $0x18,%rsp
    24a6:	5b                   	pop    %rbx
    24a7:	5d                   	pop    %rbp
    24a8:	41 5c                	pop    %r12
    24aa:	41 5d                	pop    %r13
    24ac:	c3                   	ret
    24ad:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    24b4:	eb dc                	jmp    2492 <rio_readlineb+0x78>
    24b6:	e8 e5 ed ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000024bb <urlencode>:
    24bb:	41 54                	push   %r12
    24bd:	55                   	push   %rbp
    24be:	53                   	push   %rbx
    24bf:	48 83 ec 10          	sub    $0x10,%rsp
    24c3:	48 89 fb             	mov    %rdi,%rbx
    24c6:	48 89 f5             	mov    %rsi,%rbp
    24c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24d0:	00 00 
    24d2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24d7:	31 c0                	xor    %eax,%eax
    24d9:	e8 b2 ed ff ff       	call   1290 <strlen@plt>
    24de:	eb 0f                	jmp    24ef <urlencode+0x34>
    24e0:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    24e4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24e8:	48 83 c3 01          	add    $0x1,%rbx
    24ec:	44 89 e0             	mov    %r12d,%eax
    24ef:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    24f3:	85 c0                	test   %eax,%eax
    24f5:	0f 84 a8 00 00 00    	je     25a3 <urlencode+0xe8>
    24fb:	44 0f b6 03          	movzbl (%rbx),%r8d
    24ff:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2503:	0f 94 c0             	sete   %al
    2506:	41 80 f8 2d          	cmp    $0x2d,%r8b
    250a:	0f 94 c2             	sete   %dl
    250d:	08 d0                	or     %dl,%al
    250f:	75 cf                	jne    24e0 <urlencode+0x25>
    2511:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2515:	74 c9                	je     24e0 <urlencode+0x25>
    2517:	41 80 f8 5f          	cmp    $0x5f,%r8b
    251b:	74 c3                	je     24e0 <urlencode+0x25>
    251d:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2521:	3c 09                	cmp    $0x9,%al
    2523:	76 bb                	jbe    24e0 <urlencode+0x25>
    2525:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    2529:	3c 19                	cmp    $0x19,%al
    252b:	76 b3                	jbe    24e0 <urlencode+0x25>
    252d:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2531:	3c 19                	cmp    $0x19,%al
    2533:	76 ab                	jbe    24e0 <urlencode+0x25>
    2535:	41 80 f8 20          	cmp    $0x20,%r8b
    2539:	74 56                	je     2591 <urlencode+0xd6>
    253b:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    253f:	3c 5f                	cmp    $0x5f,%al
    2541:	0f 96 c0             	setbe  %al
    2544:	41 80 f8 09          	cmp    $0x9,%r8b
    2548:	0f 94 c2             	sete   %dl
    254b:	08 d0                	or     %dl,%al
    254d:	74 4f                	je     259e <urlencode+0xe3>
    254f:	48 89 e7             	mov    %rsp,%rdi
    2552:	45 0f b6 c0          	movzbl %r8b,%r8d
    2556:	48 8d 0d 18 22 00 00 	lea    0x2218(%rip),%rcx        # 4775 <transition_table+0x495>
    255d:	ba 08 00 00 00       	mov    $0x8,%edx
    2562:	be 01 00 00 00       	mov    $0x1,%esi
    2567:	b8 00 00 00 00       	mov    $0x0,%eax
    256c:	e8 6f ee ff ff       	call   13e0 <__sprintf_chk@plt>
    2571:	0f b6 04 24          	movzbl (%rsp),%eax
    2575:	88 45 00             	mov    %al,0x0(%rbp)
    2578:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    257d:	88 45 01             	mov    %al,0x1(%rbp)
    2580:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2585:	88 45 02             	mov    %al,0x2(%rbp)
    2588:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    258c:	e9 57 ff ff ff       	jmp    24e8 <urlencode+0x2d>
    2591:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2595:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2599:	e9 4a ff ff ff       	jmp    24e8 <urlencode+0x2d>
    259e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25a3:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    25a8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25af:	00 00 
    25b1:	75 09                	jne    25bc <urlencode+0x101>
    25b3:	48 83 c4 10          	add    $0x10,%rsp
    25b7:	5b                   	pop    %rbx
    25b8:	5d                   	pop    %rbp
    25b9:	41 5c                	pop    %r12
    25bb:	c3                   	ret
    25bc:	e8 df ec ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000025c1 <submitr>:
    25c1:	f3 0f 1e fa          	endbr64
    25c5:	41 57                	push   %r15
    25c7:	41 56                	push   %r14
    25c9:	41 55                	push   %r13
    25cb:	41 54                	push   %r12
    25cd:	55                   	push   %rbp
    25ce:	53                   	push   %rbx
    25cf:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    25d6:	ff 
    25d7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    25de:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    25e3:	4c 39 dc             	cmp    %r11,%rsp
    25e6:	75 ef                	jne    25d7 <submitr+0x16>
    25e8:	48 83 ec 68          	sub    $0x68,%rsp
    25ec:	49 89 fc             	mov    %rdi,%r12
    25ef:	89 74 24 18          	mov    %esi,0x18(%rsp)
    25f3:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    25f8:	49 89 cd             	mov    %rcx,%r13
    25fb:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2600:	4d 89 ce             	mov    %r9,%r14
    2603:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    260a:	00 
    260b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2612:	00 00 
    2614:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    261b:	00 
    261c:	31 c0                	xor    %eax,%eax
    261e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2625:	00 
    2626:	ba 00 00 00 00       	mov    $0x0,%edx
    262b:	be 01 00 00 00       	mov    $0x1,%esi
    2630:	bf 02 00 00 00       	mov    $0x2,%edi
    2635:	e8 b6 ed ff ff       	call   13f0 <socket@plt>
    263a:	85 c0                	test   %eax,%eax
    263c:	0f 88 ab 02 00 00    	js     28ed <submitr+0x32c>
    2642:	89 c3                	mov    %eax,%ebx
    2644:	4c 89 e7             	mov    %r12,%rdi
    2647:	e8 a4 ec ff ff       	call   12f0 <gethostbyname@plt>
    264c:	48 85 c0             	test   %rax,%rax
    264f:	0f 84 e4 02 00 00    	je     2939 <submitr+0x378>
    2655:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    265a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2661:	00 00 
    2663:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    266a:	00 00 
    266c:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2673:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2677:	48 8b 40 18          	mov    0x18(%rax),%rax
    267b:	48 8b 30             	mov    (%rax),%rsi
    267e:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2683:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2688:	e8 73 ec ff ff       	call   1300 <__memmove_chk@plt>
    268d:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    2692:	66 c1 c0 08          	rol    $0x8,%ax
    2696:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    269b:	ba 10 00 00 00       	mov    $0x10,%edx
    26a0:	4c 89 fe             	mov    %r15,%rsi
    26a3:	89 df                	mov    %ebx,%edi
    26a5:	e8 f6 ec ff ff       	call   13a0 <connect@plt>
    26aa:	85 c0                	test   %eax,%eax
    26ac:	0f 88 fd 02 00 00    	js     29af <submitr+0x3ee>
    26b2:	4c 89 f7             	mov    %r14,%rdi
    26b5:	e8 d6 eb ff ff       	call   1290 <strlen@plt>
    26ba:	49 89 c7             	mov    %rax,%r15
    26bd:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    26c2:	e8 c9 eb ff ff       	call   1290 <strlen@plt>
    26c7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26cc:	4c 89 ef             	mov    %r13,%rdi
    26cf:	e8 bc eb ff ff       	call   1290 <strlen@plt>
    26d4:	48 03 44 24 18       	add    0x18(%rsp),%rax
    26d9:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26de:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    26e3:	e8 a8 eb ff ff       	call   1290 <strlen@plt>
    26e8:	48 03 44 24 18       	add    0x18(%rsp),%rax
    26ed:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    26f1:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    26f8:	00 
    26f9:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    26ff:	0f 87 12 03 00 00    	ja     2a17 <submitr+0x456>
    2705:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    270c:	00 
    270d:	b9 00 04 00 00       	mov    $0x400,%ecx
    2712:	b8 00 00 00 00       	mov    $0x0,%eax
    2717:	48 89 f7             	mov    %rsi,%rdi
    271a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    271d:	4c 89 f7             	mov    %r14,%rdi
    2720:	e8 96 fd ff ff       	call   24bb <urlencode>
    2725:	85 c0                	test   %eax,%eax
    2727:	0f 88 5d 03 00 00    	js     2a8a <submitr+0x4c9>
    272d:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2734:	00 
    2735:	b9 00 04 00 00       	mov    $0x400,%ecx
    273a:	b8 00 00 00 00       	mov    $0x0,%eax
    273f:	48 89 f7             	mov    %rsi,%rdi
    2742:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2745:	4c 89 ef             	mov    %r13,%rdi
    2748:	e8 6e fd ff ff       	call   24bb <urlencode>
    274d:	85 c0                	test   %eax,%eax
    274f:	0f 88 c0 03 00 00    	js     2b15 <submitr+0x554>
    2755:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    275c:	00 
    275d:	48 83 ec 08          	sub    $0x8,%rsp
    2761:	41 54                	push   %r12
    2763:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    276a:	00 
    276b:	50                   	push   %rax
    276c:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    2773:	00 
    2774:	50                   	push   %rax
    2775:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    277a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    277f:	48 8d 0d 62 1f 00 00 	lea    0x1f62(%rip),%rcx        # 46e8 <transition_table+0x408>
    2786:	ba 00 20 00 00       	mov    $0x2000,%edx
    278b:	be 01 00 00 00       	mov    $0x1,%esi
    2790:	4c 89 ff             	mov    %r15,%rdi
    2793:	b8 00 00 00 00       	mov    $0x0,%eax
    2798:	e8 43 ec ff ff       	call   13e0 <__sprintf_chk@plt>
    279d:	48 83 c4 20          	add    $0x20,%rsp
    27a1:	4c 89 ff             	mov    %r15,%rdi
    27a4:	e8 e7 ea ff ff       	call   1290 <strlen@plt>
    27a9:	48 89 c2             	mov    %rax,%rdx
    27ac:	4c 89 fe             	mov    %r15,%rsi
    27af:	89 df                	mov    %ebx,%edi
    27b1:	e8 76 fb ff ff       	call   232c <rio_writen>
    27b6:	48 85 c0             	test   %rax,%rax
    27b9:	0f 88 e1 03 00 00    	js     2ba0 <submitr+0x5df>
    27bf:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    27c4:	89 de                	mov    %ebx,%esi
    27c6:	4c 89 e7             	mov    %r12,%rdi
    27c9:	e8 16 fb ff ff       	call   22e4 <rio_readinitb>
    27ce:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    27d5:	00 
    27d6:	ba 00 20 00 00       	mov    $0x2000,%edx
    27db:	4c 89 e7             	mov    %r12,%rdi
    27de:	e8 37 fc ff ff       	call   241a <rio_readlineb>
    27e3:	48 85 c0             	test   %rax,%rax
    27e6:	0f 8e 20 04 00 00    	jle    2c0c <submitr+0x64b>
    27ec:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    27f1:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    27f8:	00 
    27f9:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2800:	00 
    2801:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    2808:	00 
    2809:	48 8d 35 6c 1f 00 00 	lea    0x1f6c(%rip),%rsi        # 477c <transition_table+0x49c>
    2810:	b8 00 00 00 00       	mov    $0x0,%eax
    2815:	e8 26 eb ff ff       	call   1340 <__isoc99_sscanf@plt>
    281a:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2821:	00 
    2822:	48 8d 35 6a 1f 00 00 	lea    0x1f6a(%rip),%rsi        # 4793 <transition_table+0x4b3>
    2829:	e8 a2 ea ff ff       	call   12d0 <strcmp@plt>
    282e:	85 c0                	test   %eax,%eax
    2830:	0f 84 56 04 00 00    	je     2c8c <submitr+0x6cb>
    2836:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    283d:	00 
    283e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2843:	ba 00 20 00 00       	mov    $0x2000,%edx
    2848:	e8 cd fb ff ff       	call   241a <rio_readlineb>
    284d:	48 85 c0             	test   %rax,%rax
    2850:	7f c8                	jg     281a <submitr+0x259>
    2852:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2859:	3a 20 43 
    285c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2863:	20 75 6e 
    2866:	48 89 45 00          	mov    %rax,0x0(%rbp)
    286a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    286e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2875:	74 6f 20 
    2878:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    287f:	68 65 61 
    2882:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2886:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    288a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2891:	66 72 6f 
    2894:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    289b:	6f 6c 61 
    289e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28a2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    28a6:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    28ad:	76 65 72 
    28b0:	48 89 45 30          	mov    %rax,0x30(%rbp)
    28b4:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    28b8:	89 df                	mov    %ebx,%edi
    28ba:	e8 01 ea ff ff       	call   12c0 <close@plt>
    28bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28c4:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    28cb:	00 
    28cc:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28d3:	00 00 
    28d5:	0f 85 ff 04 00 00    	jne    2dda <submitr+0x819>
    28db:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    28e2:	5b                   	pop    %rbx
    28e3:	5d                   	pop    %rbp
    28e4:	41 5c                	pop    %r12
    28e6:	41 5d                	pop    %r13
    28e8:	41 5e                	pop    %r14
    28ea:	41 5f                	pop    %r15
    28ec:	c3                   	ret
    28ed:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28f4:	3a 20 43 
    28f7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28fe:	20 75 6e 
    2901:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2905:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2909:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2910:	74 6f 20 
    2913:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    291a:	65 20 73 
    291d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2921:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2925:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    292c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2932:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2937:	eb 8b                	jmp    28c4 <submitr+0x303>
    2939:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2940:	3a 20 44 
    2943:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    294a:	20 75 6e 
    294d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2951:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2955:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    295c:	74 6f 20 
    295f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2966:	76 65 20 
    2969:	48 89 45 10          	mov    %rax,0x10(%rbp)
    296d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2971:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2978:	61 62 20 
    297b:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2982:	72 20 61 
    2985:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2989:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    298d:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2994:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    299a:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    299e:	89 df                	mov    %ebx,%edi
    29a0:	e8 1b e9 ff ff       	call   12c0 <close@plt>
    29a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29aa:	e9 15 ff ff ff       	jmp    28c4 <submitr+0x303>
    29af:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    29b6:	3a 20 55 
    29b9:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    29c0:	20 74 6f 
    29c3:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29c7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29cb:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    29d2:	65 63 74 
    29d5:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    29dc:	68 65 20 
    29df:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29e3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29e7:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    29ee:	61 62 20 
    29f1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29f5:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    29fc:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2a02:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a06:	89 df                	mov    %ebx,%edi
    2a08:	e8 b3 e8 ff ff       	call   12c0 <close@plt>
    2a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a12:	e9 ad fe ff ff       	jmp    28c4 <submitr+0x303>
    2a17:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a1e:	3a 20 52 
    2a21:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a28:	20 73 74 
    2a2b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a2f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a33:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2a3a:	74 6f 6f 
    2a3d:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2a44:	65 2e 20 
    2a47:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a4b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a4f:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a56:	61 73 65 
    2a59:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2a60:	49 54 52 
    2a63:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a67:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a6b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2a72:	55 46 00 
    2a75:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a79:	89 df                	mov    %ebx,%edi
    2a7b:	e8 40 e8 ff ff       	call   12c0 <close@plt>
    2a80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a85:	e9 3a fe ff ff       	jmp    28c4 <submitr+0x303>
    2a8a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a91:	3a 20 52 
    2a94:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a9b:	20 73 74 
    2a9e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2aa2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2aa6:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2aad:	63 6f 6e 
    2ab0:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2ab7:	20 61 6e 
    2aba:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2abe:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ac2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2ac9:	67 61 6c 
    2acc:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2ad3:	6e 70 72 
    2ad6:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ada:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ade:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2ae5:	6c 65 20 
    2ae8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2aef:	63 74 65 
    2af2:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2af6:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2afa:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b00:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b04:	89 df                	mov    %ebx,%edi
    2b06:	e8 b5 e7 ff ff       	call   12c0 <close@plt>
    2b0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b10:	e9 af fd ff ff       	jmp    28c4 <submitr+0x303>
    2b15:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b1c:	3a 20 55 
    2b1f:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    2b26:	20 73 74 
    2b29:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b2d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b31:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b38:	63 6f 6e 
    2b3b:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b42:	20 61 6e 
    2b45:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b49:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b4d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b54:	67 61 6c 
    2b57:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b5e:	6e 70 72 
    2b61:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b65:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b69:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b70:	6c 65 20 
    2b73:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b7a:	63 74 65 
    2b7d:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b81:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b85:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b8b:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b8f:	89 df                	mov    %ebx,%edi
    2b91:	e8 2a e7 ff ff       	call   12c0 <close@plt>
    2b96:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b9b:	e9 24 fd ff ff       	jmp    28c4 <submitr+0x303>
    2ba0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2ba7:	3a 20 43 
    2baa:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bb1:	20 75 6e 
    2bb4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bb8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bbc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bc3:	74 6f 20 
    2bc6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2bcd:	20 74 6f 
    2bd0:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bd4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bd8:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2bdf:	41 75 74 
    2be2:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2be9:	73 65 72 
    2bec:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2bf0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2bf4:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2bfb:	89 df                	mov    %ebx,%edi
    2bfd:	e8 be e6 ff ff       	call   12c0 <close@plt>
    2c02:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c07:	e9 b8 fc ff ff       	jmp    28c4 <submitr+0x303>
    2c0c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c13:	3a 20 43 
    2c16:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c1d:	20 75 6e 
    2c20:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c24:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c28:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c2f:	74 6f 20 
    2c32:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c39:	66 69 72 
    2c3c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c40:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c44:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c4b:	61 64 65 
    2c4e:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2c55:	6d 20 41 
    2c58:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c5c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c60:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2c67:	62 20 73 
    2c6a:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c6e:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2c75:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2c7b:	89 df                	mov    %ebx,%edi
    2c7d:	e8 3e e6 ff ff       	call   12c0 <close@plt>
    2c82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c87:	e9 38 fc ff ff       	jmp    28c4 <submitr+0x303>
    2c8c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2c93:	00 
    2c94:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2c99:	ba 00 20 00 00       	mov    $0x2000,%edx
    2c9e:	e8 77 f7 ff ff       	call   241a <rio_readlineb>
    2ca3:	48 85 c0             	test   %rax,%rax
    2ca6:	7e 78                	jle    2d20 <submitr+0x75f>
    2ca8:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2cad:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cb4:	0f 85 e7 00 00 00    	jne    2da1 <submitr+0x7e0>
    2cba:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cc1:	00 
    2cc2:	48 89 ef             	mov    %rbp,%rdi
    2cc5:	e8 86 e5 ff ff       	call   1250 <strcpy@plt>
    2cca:	89 df                	mov    %ebx,%edi
    2ccc:	e8 ef e5 ff ff       	call   12c0 <close@plt>
    2cd1:	48 8d 35 b5 1a 00 00 	lea    0x1ab5(%rip),%rsi        # 478d <transition_table+0x4ad>
    2cd8:	48 89 ef             	mov    %rbp,%rdi
    2cdb:	e8 f0 e5 ff ff       	call   12d0 <strcmp@plt>
    2ce0:	85 c0                	test   %eax,%eax
    2ce2:	0f 84 dc fb ff ff    	je     28c4 <submitr+0x303>
    2ce8:	48 8d 35 a2 1a 00 00 	lea    0x1aa2(%rip),%rsi        # 4791 <transition_table+0x4b1>
    2cef:	48 89 ef             	mov    %rbp,%rdi
    2cf2:	e8 d9 e5 ff ff       	call   12d0 <strcmp@plt>
    2cf7:	85 c0                	test   %eax,%eax
    2cf9:	0f 84 c5 fb ff ff    	je     28c4 <submitr+0x303>
    2cff:	48 8d 35 90 1a 00 00 	lea    0x1a90(%rip),%rsi        # 4796 <transition_table+0x4b6>
    2d06:	48 89 ef             	mov    %rbp,%rdi
    2d09:	e8 c2 e5 ff ff       	call   12d0 <strcmp@plt>
    2d0e:	85 c0                	test   %eax,%eax
    2d10:	0f 84 ae fb ff ff    	je     28c4 <submitr+0x303>
    2d16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d1b:	e9 a4 fb ff ff       	jmp    28c4 <submitr+0x303>
    2d20:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d27:	3a 20 43 
    2d2a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d31:	20 75 6e 
    2d34:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d38:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d3c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d43:	74 6f 20 
    2d46:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d4d:	73 74 61 
    2d50:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d54:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d58:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d5f:	65 73 73 
    2d62:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2d69:	72 6f 6d 
    2d6c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d70:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d74:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2d7b:	6c 61 62 
    2d7e:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2d85:	65 72 00 
    2d88:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d8c:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2d90:	89 df                	mov    %ebx,%edi
    2d92:	e8 29 e5 ff ff       	call   12c0 <close@plt>
    2d97:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d9c:	e9 23 fb ff ff       	jmp    28c4 <submitr+0x303>
    2da1:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    2da8:	00 
    2da9:	48 8d 0d 98 19 00 00 	lea    0x1998(%rip),%rcx        # 4748 <transition_table+0x468>
    2db0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2db7:	be 01 00 00 00       	mov    $0x1,%esi
    2dbc:	48 89 ef             	mov    %rbp,%rdi
    2dbf:	b8 00 00 00 00       	mov    $0x0,%eax
    2dc4:	e8 17 e6 ff ff       	call   13e0 <__sprintf_chk@plt>
    2dc9:	89 df                	mov    %ebx,%edi
    2dcb:	e8 f0 e4 ff ff       	call   12c0 <close@plt>
    2dd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dd5:	e9 ea fa ff ff       	jmp    28c4 <submitr+0x303>
    2dda:	e8 c1 e4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002ddf <init_timeout>:
    2ddf:	f3 0f 1e fa          	endbr64
    2de3:	85 ff                	test   %edi,%edi
    2de5:	74 26                	je     2e0d <init_timeout+0x2e>
    2de7:	53                   	push   %rbx
    2de8:	89 fb                	mov    %edi,%ebx
    2dea:	78 1a                	js     2e06 <init_timeout+0x27>
    2dec:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 22f6 <sigalrm_handler>
    2df3:	bf 0e 00 00 00       	mov    $0xe,%edi
    2df8:	e8 e3 e4 ff ff       	call   12e0 <signal@plt>
    2dfd:	89 df                	mov    %ebx,%edi
    2dff:	e8 ac e4 ff ff       	call   12b0 <alarm@plt>
    2e04:	5b                   	pop    %rbx
    2e05:	c3                   	ret
    2e06:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e0b:	eb df                	jmp    2dec <init_timeout+0xd>
    2e0d:	c3                   	ret

0000000000002e0e <init_driver>:
    2e0e:	f3 0f 1e fa          	endbr64
    2e12:	41 54                	push   %r12
    2e14:	55                   	push   %rbp
    2e15:	53                   	push   %rbx
    2e16:	48 83 ec 20          	sub    $0x20,%rsp
    2e1a:	48 89 fd             	mov    %rdi,%rbp
    2e1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e24:	00 00 
    2e26:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e2b:	31 c0                	xor    %eax,%eax
    2e2d:	be 01 00 00 00       	mov    $0x1,%esi
    2e32:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e37:	e8 a4 e4 ff ff       	call   12e0 <signal@plt>
    2e3c:	be 01 00 00 00       	mov    $0x1,%esi
    2e41:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e46:	e8 95 e4 ff ff       	call   12e0 <signal@plt>
    2e4b:	be 01 00 00 00       	mov    $0x1,%esi
    2e50:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e55:	e8 86 e4 ff ff       	call   12e0 <signal@plt>
    2e5a:	ba 00 00 00 00       	mov    $0x0,%edx
    2e5f:	be 01 00 00 00       	mov    $0x1,%esi
    2e64:	bf 02 00 00 00       	mov    $0x2,%edi
    2e69:	e8 82 e5 ff ff       	call   13f0 <socket@plt>
    2e6e:	85 c0                	test   %eax,%eax
    2e70:	0f 88 9c 00 00 00    	js     2f12 <init_driver+0x104>
    2e76:	89 c3                	mov    %eax,%ebx
    2e78:	48 8d 3d 1a 19 00 00 	lea    0x191a(%rip),%rdi        # 4799 <transition_table+0x4b9>
    2e7f:	e8 6c e4 ff ff       	call   12f0 <gethostbyname@plt>
    2e84:	48 85 c0             	test   %rax,%rax
    2e87:	0f 84 d1 00 00 00    	je     2f5e <init_driver+0x150>
    2e8d:	49 89 e4             	mov    %rsp,%r12
    2e90:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2e97:	00 
    2e98:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2e9f:	00 00 
    2ea1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ea7:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2eab:	48 8b 40 18          	mov    0x18(%rax),%rax
    2eaf:	48 8b 30             	mov    (%rax),%rsi
    2eb2:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2eb7:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2ebc:	e8 3f e4 ff ff       	call   1300 <__memmove_chk@plt>
    2ec1:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2ec8:	ba 10 00 00 00       	mov    $0x10,%edx
    2ecd:	4c 89 e6             	mov    %r12,%rsi
    2ed0:	89 df                	mov    %ebx,%edi
    2ed2:	e8 c9 e4 ff ff       	call   13a0 <connect@plt>
    2ed7:	85 c0                	test   %eax,%eax
    2ed9:	0f 88 e7 00 00 00    	js     2fc6 <init_driver+0x1b8>
    2edf:	89 df                	mov    %ebx,%edi
    2ee1:	e8 da e3 ff ff       	call   12c0 <close@plt>
    2ee6:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2eec:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2ef0:	b8 00 00 00 00       	mov    $0x0,%eax
    2ef5:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2efa:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2f01:	00 00 
    2f03:	0f 85 2f 01 00 00    	jne    3038 <init_driver+0x22a>
    2f09:	48 83 c4 20          	add    $0x20,%rsp
    2f0d:	5b                   	pop    %rbx
    2f0e:	5d                   	pop    %rbp
    2f0f:	41 5c                	pop    %r12
    2f11:	c3                   	ret
    2f12:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f19:	3a 20 43 
    2f1c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f23:	20 75 6e 
    2f26:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f2a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f2e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f35:	74 6f 20 
    2f38:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f3f:	65 20 73 
    2f42:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f46:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f4a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2f51:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2f57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f5c:	eb 97                	jmp    2ef5 <init_driver+0xe7>
    2f5e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2f65:	3a 20 44 
    2f68:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2f6f:	20 75 6e 
    2f72:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f76:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f7a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f81:	74 6f 20 
    2f84:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2f8b:	76 65 20 
    2f8e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f92:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f96:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2f9d:	72 20 61 
    2fa0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2fa4:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2fab:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2fb1:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2fb5:	89 df                	mov    %ebx,%edi
    2fb7:	e8 04 e3 ff ff       	call   12c0 <close@plt>
    2fbc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fc1:	e9 2f ff ff ff       	jmp    2ef5 <init_driver+0xe7>
    2fc6:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
    2fcd:	30 35 2e 
    2fd0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2fd4:	c7 45 08 33 31 2e 32 	movl   $0x322e3133,0x8(%rbp)
    2fdb:	66 c7 45 0c 33 32    	movw   $0x3233,0xc(%rbp)
    2fe1:	c6 45 0e 00          	movb   $0x0,0xe(%rbp)
    2fe5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2fec:	3a 20 55 
    2fef:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2ff6:	20 74 6f 
    2ff9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ffd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3001:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3008:	65 63 74 
    300b:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    3012:	65 72 76 
    3015:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3019:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    301d:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    3023:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    3027:	89 df                	mov    %ebx,%edi
    3029:	e8 92 e2 ff ff       	call   12c0 <close@plt>
    302e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3033:	e9 bd fe ff ff       	jmp    2ef5 <init_driver+0xe7>
    3038:	e8 63 e2 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000303d <driver_post>:
    303d:	f3 0f 1e fa          	endbr64
    3041:	53                   	push   %rbx
    3042:	4c 89 cb             	mov    %r9,%rbx
    3045:	45 85 c0             	test   %r8d,%r8d
    3048:	75 18                	jne    3062 <driver_post+0x25>
    304a:	48 85 ff             	test   %rdi,%rdi
    304d:	74 05                	je     3054 <driver_post+0x17>
    304f:	80 3f 00             	cmpb   $0x0,(%rdi)
    3052:	75 37                	jne    308b <driver_post+0x4e>
    3054:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3059:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    305d:	44 89 c0             	mov    %r8d,%eax
    3060:	5b                   	pop    %rbx
    3061:	c3                   	ret
    3062:	48 89 ca             	mov    %rcx,%rdx
    3065:	48 8d 35 3c 17 00 00 	lea    0x173c(%rip),%rsi        # 47a8 <transition_table+0x4c8>
    306c:	bf 01 00 00 00       	mov    $0x1,%edi
    3071:	b8 00 00 00 00       	mov    $0x0,%eax
    3076:	e8 e5 e2 ff ff       	call   1360 <__printf_chk@plt>
    307b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3080:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3084:	b8 00 00 00 00       	mov    $0x0,%eax
    3089:	eb d5                	jmp    3060 <driver_post+0x23>
    308b:	48 83 ec 08          	sub    $0x8,%rsp
    308f:	41 51                	push   %r9
    3091:	49 89 c9             	mov    %rcx,%r9
    3094:	49 89 d0             	mov    %rdx,%r8
    3097:	48 89 f9             	mov    %rdi,%rcx
    309a:	48 89 f2             	mov    %rsi,%rdx
    309d:	be 50 00 00 00       	mov    $0x50,%esi
    30a2:	48 8d 3d f0 16 00 00 	lea    0x16f0(%rip),%rdi        # 4799 <transition_table+0x4b9>
    30a9:	e8 13 f5 ff ff       	call   25c1 <submitr>
    30ae:	48 83 c4 10          	add    $0x10,%rsp
    30b2:	eb ac                	jmp    3060 <driver_post+0x23>

Disassembly of section .fini:

00000000000030b4 <_fini>:
    30b4:	f3 0f 1e fa          	endbr64
    30b8:	48 83 ec 08          	sub    $0x8,%rsp
    30bc:	48 83 c4 08          	add    $0x8,%rsp
    30c0:	c3                   	ret
