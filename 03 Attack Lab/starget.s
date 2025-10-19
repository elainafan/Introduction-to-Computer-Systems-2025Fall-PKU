
starget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 5f 00 00 	mov    0x5fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   0x5fca(%rip)        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    *0x5fcc(%rip)        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 407070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 407078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 407080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 407088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 407090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 407098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 4070d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 5e 00 00    	jmp    *0x5eea(%rip)        # 4070e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 5e 00 00    	jmp    *0x5ee2(%rip)        # 4070e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 5e 00 00    	jmp    *0x5eda(%rip)        # 4070f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 5e 00 00    	jmp    *0x5ed2(%rip)        # 4070f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 5e 00 00    	jmp    *0x5eca(%rip)        # 407100 <socket@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 de 14 40 00 	mov    $0x4014de,%rdi
  40125f:	ff 15 73 5d 00 00    	call   *0x5d73(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	c3                   	ret
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 90 74 40 00       	mov    $0x407490,%eax
  401285:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 74 40 00       	mov    $0x407490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012b5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 61 00 00 00 	cmpb   $0x0,0x61ed(%rip)        # 4074e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 61 00 00 01 	movb   $0x1,0x61db(%rip)        # 4074e8 <completed.0>
  40130d:	5d                   	pop    %rbp
  40130e:	c3                   	ret
  40130f:	90                   	nop
  401310:	c3                   	ret
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	f3 0f 1e fa          	endbr64
  401324:	eb 8a                	jmp    4012b0 <register_tm_clones>

0000000000401326 <usage>:
  401326:	50                   	push   %rax
  401327:	58                   	pop    %rax
  401328:	48 83 ec 08          	sub    $0x8,%rsp
  40132c:	48 89 fa             	mov    %rdi,%rdx
  40132f:	83 3d fa 61 00 00 00 	cmpl   $0x0,0x61fa(%rip)        # 407530 <is_checker>
  401336:	74 50                	je     401388 <usage+0x62>
  401338:	48 8d 35 c9 2c 00 00 	lea    0x2cc9(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40133f:	bf 02 00 00 00       	mov    $0x2,%edi
  401344:	b8 00 00 00 00       	mov    $0x0,%eax
  401349:	e8 42 fe ff ff       	call   401190 <__printf_chk@plt>
  40134e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401355:	e8 26 fd ff ff       	call   401080 <puts@plt>
  40135a:	48 8d 3d bc 31 00 00 	lea    0x31bc(%rip),%rdi        # 40451d <_IO_stdin_used+0x51d>
  401361:	e8 1a fd ff ff       	call   401080 <puts@plt>
  401366:	48 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40136d:	e8 0e fd ff ff       	call   401080 <puts@plt>
  401372:	48 8d 3d be 31 00 00 	lea    0x31be(%rip),%rdi        # 404537 <_IO_stdin_used+0x537>
  401379:	e8 02 fd ff ff       	call   401080 <puts@plt>
  40137e:	bf 00 00 00 00       	mov    $0x0,%edi
  401383:	e8 58 fe ff ff       	call   4011e0 <exit@plt>
  401388:	48 8d 35 c4 31 00 00 	lea    0x31c4(%rip),%rsi        # 404553 <_IO_stdin_used+0x553>
  40138f:	bf 02 00 00 00       	mov    $0x2,%edi
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	e8 f2 fd ff ff       	call   401190 <__printf_chk@plt>
  40139e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4013a5:	e8 d6 fc ff ff       	call   401080 <puts@plt>
  4013aa:	48 8d 3d 07 2d 00 00 	lea    0x2d07(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4013b1:	e8 ca fc ff ff       	call   401080 <puts@plt>
  4013b6:	48 8d 3d b4 31 00 00 	lea    0x31b4(%rip),%rdi        # 404571 <_IO_stdin_used+0x571>
  4013bd:	e8 be fc ff ff       	call   401080 <puts@plt>
  4013c2:	eb ba                	jmp    40137e <usage+0x58>

00000000004013c4 <initialize_target>:
  4013c4:	55                   	push   %rbp
  4013c5:	53                   	push   %rbx
  4013c6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013cd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013d2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013d9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013de:	48 83 ec 18          	sub    $0x18,%rsp
  4013e2:	89 f5                	mov    %esi,%ebp
  4013e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013eb:	00 00 
  4013ed:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013f4:	00 
  4013f5:	31 c0                	xor    %eax,%eax
  4013f7:	89 3d 23 61 00 00    	mov    %edi,0x6123(%rip)        # 407520 <check_level>
  4013fd:	8b 3d 2d 5d 00 00    	mov    0x5d2d(%rip),%edi        # 407130 <target_id>
  401403:	e8 1a 22 00 00       	call   403622 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 0d 22 00 00       	call   403622 <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 0e 03 00 00       	call   401743 <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 57                	jne    401492 <initialize_target+0xce>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	c6 05 e5 6c 00 00 73 	movb   $0x73,0x6ce5(%rip)        # 408148 <target_prefix>
  401463:	83 3d 16 60 00 00 00 	cmpl   $0x0,0x6016(%rip)        # 407480 <notify>
  40146a:	74 09                	je     401475 <initialize_target+0xb1>
  40146c:	83 3d bd 60 00 00 00 	cmpl   $0x0,0x60bd(%rip)        # 407530 <is_checker>
  401473:	74 35                	je     4014aa <initialize_target+0xe6>
  401475:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  40147c:	00 
  40147d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401484:	00 00 
  401486:	75 51                	jne    4014d9 <initialize_target+0x115>
  401488:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  40148f:	5b                   	pop    %rbx
  401490:	5d                   	pop    %rbp
  401491:	c3                   	ret
  401492:	bf 00 00 00 00       	mov    $0x0,%edi
  401497:	e8 b4 fc ff ff       	call   401150 <time@plt>
  40149c:	89 c7                	mov    %eax,%edi
  40149e:	e8 9d fb ff ff       	call   401040 <srandom@plt>
  4014a3:	e8 b8 fc ff ff       	call   401160 <random@plt>
  4014a8:	eb 96                	jmp    401440 <initialize_target+0x7c>
  4014aa:	48 89 e7             	mov    %rsp,%rdi
  4014ad:	e8 a7 1e 00 00       	call   403359 <init_driver>
  4014b2:	85 c0                	test   %eax,%eax
  4014b4:	79 bf                	jns    401475 <initialize_target+0xb1>
  4014b6:	48 89 e2             	mov    %rsp,%rdx
  4014b9:	48 8d 35 28 2c 00 00 	lea    0x2c28(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4014c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ca:	e8 c1 fc ff ff       	call   401190 <__printf_chk@plt>
  4014cf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d4:	e8 07 fd ff ff       	call   4011e0 <exit@plt>
  4014d9:	e8 f7 11 00 00       	call   4026d5 <__stack_chk_fail>

00000000004014de <main>:
  4014de:	f3 0f 1e fa          	endbr64
  4014e2:	41 56                	push   %r14
  4014e4:	41 55                	push   %r13
  4014e6:	41 54                	push   %r12
  4014e8:	55                   	push   %rbp
  4014e9:	53                   	push   %rbx
  4014ea:	48 83 ec 60          	sub    $0x60,%rsp
  4014ee:	89 fd                	mov    %edi,%ebp
  4014f0:	48 89 f3             	mov    %rsi,%rbx
  4014f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014fa:	00 00 
  4014fc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401501:	31 c0                	xor    %eax,%eax
  401503:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  40150a:	74 65 64 
  40150d:	48 89 04 24          	mov    %rax,(%rsp)
  401511:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401518:	43 4e 00 
  40151b:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401520:	48 c7 c6 c4 25 40 00 	mov    $0x4025c4,%rsi
  401527:	bf 0b 00 00 00       	mov    $0xb,%edi
  40152c:	e8 cf fb ff ff       	call   401100 <signal@plt>
  401531:	48 c7 c6 6a 25 40 00 	mov    $0x40256a,%rsi
  401538:	bf 07 00 00 00       	mov    $0x7,%edi
  40153d:	e8 be fb ff ff       	call   401100 <signal@plt>
  401542:	48 c7 c6 1e 26 40 00 	mov    $0x40261e,%rsi
  401549:	bf 04 00 00 00       	mov    $0x4,%edi
  40154e:	e8 ad fb ff ff       	call   401100 <signal@plt>
  401553:	83 3d d6 5f 00 00 00 	cmpl   $0x0,0x5fd6(%rip)        # 407530 <is_checker>
  40155a:	75 26                	jne    401582 <main+0xa4>
  40155c:	4c 8d 25 27 30 00 00 	lea    0x3027(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  401563:	48 8b 05 36 5f 00 00 	mov    0x5f36(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40156a:	48 89 05 a7 5f 00 00 	mov    %rax,0x5fa7(%rip)        # 407518 <infile>
  401571:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401577:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40157d:	e9 8d 00 00 00       	jmp    40160f <main+0x131>
  401582:	48 c7 c6 78 26 40 00 	mov    $0x402678,%rsi
  401589:	bf 0e 00 00 00       	mov    $0xe,%edi
  40158e:	e8 6d fb ff ff       	call   401100 <signal@plt>
  401593:	bf 02 00 00 00       	mov    $0x2,%edi
  401598:	e8 23 fb ff ff       	call   4010c0 <alarm@plt>
  40159d:	4c 8d 25 eb 2f 00 00 	lea    0x2feb(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  4015a4:	eb bd                	jmp    401563 <main+0x85>
  4015a6:	48 8b 3b             	mov    (%rbx),%rdi
  4015a9:	e8 78 fd ff ff       	call   401326 <usage>
  4015ae:	48 8d 35 54 30 00 00 	lea    0x3054(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015b5:	48 8b 3d 04 5f 00 00 	mov    0x5f04(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015bc:	e8 df fb ff ff       	call   4011a0 <fopen@plt>
  4015c1:	48 89 05 50 5f 00 00 	mov    %rax,0x5f50(%rip)        # 407518 <infile>
  4015c8:	48 85 c0             	test   %rax,%rax
  4015cb:	75 42                	jne    40160f <main+0x131>
  4015cd:	48 8b 0d ec 5e 00 00 	mov    0x5eec(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015d4:	48 8d 15 be 2f 00 00 	lea    0x2fbe(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015db:	be 02 00 00 00       	mov    $0x2,%esi
  4015e0:	48 8b 3d f9 5e 00 00 	mov    0x5ef9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e7:	e8 14 fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f1:	e9 2b 01 00 00       	jmp    401721 <main+0x243>
  4015f6:	ba 10 00 00 00       	mov    $0x10,%edx
  4015fb:	be 00 00 00 00       	mov    $0x0,%esi
  401600:	48 8b 3d b9 5e 00 00 	mov    0x5eb9(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401607:	e8 b4 fb ff ff       	call   4011c0 <strtoul@plt>
  40160c:	41 89 c6             	mov    %eax,%r14d
  40160f:	4c 89 e2             	mov    %r12,%rdx
  401612:	48 89 de             	mov    %rbx,%rsi
  401615:	89 ef                	mov    %ebp,%edi
  401617:	e8 94 fb ff ff       	call   4011b0 <getopt@plt>
  40161c:	3c ff                	cmp    $0xff,%al
  40161e:	74 7a                	je     40169a <main+0x1bc>
  401620:	8d 50 9f             	lea    -0x61(%rax),%edx
  401623:	80 fa 14             	cmp    $0x14,%dl
  401626:	77 51                	ja     401679 <main+0x19b>
  401628:	0f b6 d2             	movzbl %dl,%edx
  40162b:	48 8d 0d 6e 31 00 00 	lea    0x316e(%rip),%rcx        # 4047a0 <_IO_stdin_used+0x7a0>
  401632:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  401636:	48 01 ca             	add    %rcx,%rdx
  401639:	3e ff e2             	notrack jmp *%rdx
  40163c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401641:	be 00 00 00 00       	mov    $0x0,%esi
  401646:	48 8b 3d 73 5e 00 00 	mov    0x5e73(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  40164d:	e8 de fa ff ff       	call   401130 <strtol@plt>
  401652:	41 89 c5             	mov    %eax,%r13d
  401655:	eb b8                	jmp    40160f <main+0x131>
  401657:	c7 05 1f 5e 00 00 00 	movl   $0x0,0x5e1f(%rip)        # 407480 <notify>
  40165e:	00 00 00 
  401661:	eb ac                	jmp    40160f <main+0x131>
  401663:	48 89 e7             	mov    %rsp,%rdi
  401666:	ba 50 00 00 00       	mov    $0x50,%edx
  40166b:	48 8b 35 4e 5e 00 00 	mov    0x5e4e(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  401672:	e8 d9 f9 ff ff       	call   401050 <strncpy@plt>
  401677:	eb 96                	jmp    40160f <main+0x131>
  401679:	0f be d0             	movsbl %al,%edx
  40167c:	48 8d 35 33 2f 00 00 	lea    0x2f33(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  401683:	bf 02 00 00 00       	mov    $0x2,%edi
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 fe fa ff ff       	call   401190 <__printf_chk@plt>
  401692:	48 8b 3b             	mov    (%rbx),%rdi
  401695:	e8 8c fc ff ff       	call   401326 <usage>
  40169a:	be 01 00 00 00       	mov    $0x1,%esi
  40169f:	44 89 ef             	mov    %r13d,%edi
  4016a2:	e8 1d fd ff ff       	call   4013c4 <initialize_target>
  4016a7:	83 3d 82 5e 00 00 00 	cmpl   $0x0,0x5e82(%rip)        # 407530 <is_checker>
  4016ae:	74 3f                	je     4016ef <main+0x211>
  4016b0:	44 39 35 71 5e 00 00 	cmp    %r14d,0x5e71(%rip)        # 407528 <authkey>
  4016b7:	75 13                	jne    4016cc <main+0x1ee>
  4016b9:	48 89 e7             	mov    %rsp,%rdi
  4016bc:	48 8b 35 7d 5a 00 00 	mov    0x5a7d(%rip),%rsi        # 407140 <user_id>
  4016c3:	e8 28 fa ff ff       	call   4010f0 <strcmp@plt>
  4016c8:	85 c0                	test   %eax,%eax
  4016ca:	74 23                	je     4016ef <main+0x211>
  4016cc:	44 89 f2             	mov    %r14d,%edx
  4016cf:	48 8d 35 3a 2a 00 00 	lea    0x2a3a(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4016db:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e0:	e8 ab fa ff ff       	call   401190 <__printf_chk@plt>
  4016e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ea:	e8 b9 0a 00 00       	call   4021a8 <check_fail>
  4016ef:	8b 15 37 5e 00 00    	mov    0x5e37(%rip),%edx        # 40752c <cookie>
  4016f5:	48 8d 35 cd 2e 00 00 	lea    0x2ecd(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016fc:	bf 02 00 00 00       	mov    $0x2,%edi
  401701:	b8 00 00 00 00       	mov    $0x0,%eax
  401706:	e8 85 fa ff ff       	call   401190 <__printf_chk@plt>
  40170b:	be 01 00 00 00       	mov    $0x1,%esi
  401710:	48 8b 3d 71 5d 00 00 	mov    0x5d71(%rip),%rdi        # 407488 <buf_offset>
  401717:	e8 13 10 00 00       	call   40272f <launch>
  40171c:	b8 00 00 00 00       	mov    $0x0,%eax
  401721:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  401726:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40172d:	00 00 
  40172f:	75 0d                	jne    40173e <main+0x260>
  401731:	48 83 c4 60          	add    $0x60,%rsp
  401735:	5b                   	pop    %rbx
  401736:	5d                   	pop    %rbp
  401737:	41 5c                	pop    %r12
  401739:	41 5d                	pop    %r13
  40173b:	41 5e                	pop    %r14
  40173d:	c3                   	ret
  40173e:	e8 92 0f 00 00       	call   4026d5 <__stack_chk_fail>

0000000000401743 <scramble>:
  401743:	f3 0f 1e fa          	endbr64
  401747:	48 83 ec 38          	sub    $0x38,%rsp
  40174b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401752:	00 00 
  401754:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401759:	31 c0                	xor    %eax,%eax
  40175b:	eb 10                	jmp    40176d <scramble+0x2a>
  40175d:	69 d0 a5 ae 00 00    	imul   $0xaea5,%eax,%edx
  401763:	01 fa                	add    %edi,%edx
  401765:	89 c1                	mov    %eax,%ecx
  401767:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40176a:	83 c0 01             	add    $0x1,%eax
  40176d:	83 f8 09             	cmp    $0x9,%eax
  401770:	76 eb                	jbe    40175d <scramble+0x1a>
  401772:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401776:	69 c0 38 60 00 00    	imul   $0x6038,%eax,%eax
  40177c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401780:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401784:	69 c0 46 68 00 00    	imul   $0x6846,%eax,%eax
  40178a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40178e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401792:	69 c0 1d 63 00 00    	imul   $0x631d,%eax,%eax
  401798:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40179c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017a0:	69 c0 cd cf 00 00    	imul   $0xcfcd,%eax,%eax
  4017a6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017aa:	8b 04 24             	mov    (%rsp),%eax
  4017ad:	69 c0 cf 28 00 00    	imul   $0x28cf,%eax,%eax
  4017b3:	89 04 24             	mov    %eax,(%rsp)
  4017b6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017ba:	69 c0 27 ee 00 00    	imul   $0xee27,%eax,%eax
  4017c0:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017c4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017c8:	69 c0 45 d1 00 00    	imul   $0xd145,%eax,%eax
  4017ce:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017d2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017d6:	69 c0 4c df 00 00    	imul   $0xdf4c,%eax,%eax
  4017dc:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017e0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017e4:	69 c0 14 0a 00 00    	imul   $0xa14,%eax,%eax
  4017ea:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017ee:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017f2:	69 c0 62 6f 00 00    	imul   $0x6f62,%eax,%eax
  4017f8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017fc:	8b 04 24             	mov    (%rsp),%eax
  4017ff:	69 c0 28 13 00 00    	imul   $0x1328,%eax,%eax
  401805:	89 04 24             	mov    %eax,(%rsp)
  401808:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40180c:	69 c0 ba 3e 00 00    	imul   $0x3eba,%eax,%eax
  401812:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401816:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40181a:	69 c0 a6 d8 00 00    	imul   $0xd8a6,%eax,%eax
  401820:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401824:	8b 04 24             	mov    (%rsp),%eax
  401827:	69 c0 31 dd 00 00    	imul   $0xdd31,%eax,%eax
  40182d:	89 04 24             	mov    %eax,(%rsp)
  401830:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401834:	69 c0 0d 3a 00 00    	imul   $0x3a0d,%eax,%eax
  40183a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40183e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401842:	69 c0 5b ae 00 00    	imul   $0xae5b,%eax,%eax
  401848:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40184c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401850:	69 c0 dc 6c 00 00    	imul   $0x6cdc,%eax,%eax
  401856:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40185a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40185e:	69 c0 30 09 00 00    	imul   $0x930,%eax,%eax
  401864:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401868:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40186c:	69 c0 d7 f1 00 00    	imul   $0xf1d7,%eax,%eax
  401872:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401876:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40187a:	69 c0 86 7a 00 00    	imul   $0x7a86,%eax,%eax
  401880:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401884:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401888:	69 c0 3d 5d 00 00    	imul   $0x5d3d,%eax,%eax
  40188e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401892:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401896:	69 c0 6e 54 00 00    	imul   $0x546e,%eax,%eax
  40189c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018a0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018a4:	69 c0 db 5e 00 00    	imul   $0x5edb,%eax,%eax
  4018aa:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018ae:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018b2:	69 c0 0c 87 00 00    	imul   $0x870c,%eax,%eax
  4018b8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018bc:	8b 04 24             	mov    (%rsp),%eax
  4018bf:	69 c0 55 ff 00 00    	imul   $0xff55,%eax,%eax
  4018c5:	89 04 24             	mov    %eax,(%rsp)
  4018c8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018cc:	69 c0 c2 6c 00 00    	imul   $0x6cc2,%eax,%eax
  4018d2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018d6:	8b 04 24             	mov    (%rsp),%eax
  4018d9:	69 c0 b6 b0 00 00    	imul   $0xb0b6,%eax,%eax
  4018df:	89 04 24             	mov    %eax,(%rsp)
  4018e2:	8b 04 24             	mov    (%rsp),%eax
  4018e5:	69 c0 34 67 00 00    	imul   $0x6734,%eax,%eax
  4018eb:	89 04 24             	mov    %eax,(%rsp)
  4018ee:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018f2:	69 c0 c1 de 00 00    	imul   $0xdec1,%eax,%eax
  4018f8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018fc:	8b 04 24             	mov    (%rsp),%eax
  4018ff:	69 c0 12 89 00 00    	imul   $0x8912,%eax,%eax
  401905:	89 04 24             	mov    %eax,(%rsp)
  401908:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40190c:	69 c0 f7 fb 00 00    	imul   $0xfbf7,%eax,%eax
  401912:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401916:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40191a:	69 c0 13 b3 00 00    	imul   $0xb313,%eax,%eax
  401920:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401924:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401928:	69 c0 0e 4e 00 00    	imul   $0x4e0e,%eax,%eax
  40192e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401932:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401936:	69 c0 ce 38 00 00    	imul   $0x38ce,%eax,%eax
  40193c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401940:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401944:	69 c0 41 95 00 00    	imul   $0x9541,%eax,%eax
  40194a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40194e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401952:	69 c0 8c 5a 00 00    	imul   $0x5a8c,%eax,%eax
  401958:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40195c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401960:	69 c0 02 1c 00 00    	imul   $0x1c02,%eax,%eax
  401966:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40196a:	8b 04 24             	mov    (%rsp),%eax
  40196d:	69 c0 02 21 00 00    	imul   $0x2102,%eax,%eax
  401973:	89 04 24             	mov    %eax,(%rsp)
  401976:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40197a:	69 c0 b6 e2 00 00    	imul   $0xe2b6,%eax,%eax
  401980:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401984:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401988:	69 c0 cd e3 00 00    	imul   $0xe3cd,%eax,%eax
  40198e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401992:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401996:	69 c0 7c 9e 00 00    	imul   $0x9e7c,%eax,%eax
  40199c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019a0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019a4:	69 c0 89 f4 00 00    	imul   $0xf489,%eax,%eax
  4019aa:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019ae:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4019b2:	69 c0 0c fc 00 00    	imul   $0xfc0c,%eax,%eax
  4019b8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4019bc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4019c0:	69 c0 8e d8 00 00    	imul   $0xd88e,%eax,%eax
  4019c6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019ca:	8b 04 24             	mov    (%rsp),%eax
  4019cd:	69 c0 23 a0 00 00    	imul   $0xa023,%eax,%eax
  4019d3:	89 04 24             	mov    %eax,(%rsp)
  4019d6:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019da:	69 c0 9b f3 00 00    	imul   $0xf39b,%eax,%eax
  4019e0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019e4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019e8:	69 c0 0d 99 00 00    	imul   $0x990d,%eax,%eax
  4019ee:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019f2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019f6:	69 c0 ee 04 00 00    	imul   $0x4ee,%eax,%eax
  4019fc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a00:	8b 04 24             	mov    (%rsp),%eax
  401a03:	69 c0 f3 62 00 00    	imul   $0x62f3,%eax,%eax
  401a09:	89 04 24             	mov    %eax,(%rsp)
  401a0c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a10:	69 c0 00 27 00 00    	imul   $0x2700,%eax,%eax
  401a16:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a1a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a1e:	69 c0 11 f1 00 00    	imul   $0xf111,%eax,%eax
  401a24:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a28:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a2c:	69 c0 b3 ea 00 00    	imul   $0xeab3,%eax,%eax
  401a32:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a36:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a3a:	69 c0 88 30 00 00    	imul   $0x3088,%eax,%eax
  401a40:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a44:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a48:	69 c0 f1 87 00 00    	imul   $0x87f1,%eax,%eax
  401a4e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a52:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a56:	69 c0 c3 b3 00 00    	imul   $0xb3c3,%eax,%eax
  401a5c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a60:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a64:	69 c0 49 f5 00 00    	imul   $0xf549,%eax,%eax
  401a6a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a6e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a72:	69 c0 4f bc 00 00    	imul   $0xbc4f,%eax,%eax
  401a78:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a7c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a80:	69 c0 71 a1 00 00    	imul   $0xa171,%eax,%eax
  401a86:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a8a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a8e:	69 c0 90 45 00 00    	imul   $0x4590,%eax,%eax
  401a94:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a98:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a9c:	69 c0 29 93 00 00    	imul   $0x9329,%eax,%eax
  401aa2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401aa6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401aaa:	69 c0 9f db 00 00    	imul   $0xdb9f,%eax,%eax
  401ab0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ab4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ab8:	69 c0 cd 81 00 00    	imul   $0x81cd,%eax,%eax
  401abe:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ac2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ac6:	69 c0 73 2d 00 00    	imul   $0x2d73,%eax,%eax
  401acc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ad0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401ad4:	69 c0 c7 5b 00 00    	imul   $0x5bc7,%eax,%eax
  401ada:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ade:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ae2:	69 c0 78 c4 00 00    	imul   $0xc478,%eax,%eax
  401ae8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aec:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401af0:	69 c0 9b 88 00 00    	imul   $0x889b,%eax,%eax
  401af6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401afa:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401afe:	69 c0 55 04 00 00    	imul   $0x455,%eax,%eax
  401b04:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b08:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b0c:	69 c0 9d c2 00 00    	imul   $0xc29d,%eax,%eax
  401b12:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b16:	8b 04 24             	mov    (%rsp),%eax
  401b19:	69 c0 04 7f 00 00    	imul   $0x7f04,%eax,%eax
  401b1f:	89 04 24             	mov    %eax,(%rsp)
  401b22:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b26:	69 c0 1b 48 00 00    	imul   $0x481b,%eax,%eax
  401b2c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b30:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b34:	69 c0 4d b6 00 00    	imul   $0xb64d,%eax,%eax
  401b3a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b3e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b42:	69 c0 07 85 00 00    	imul   $0x8507,%eax,%eax
  401b48:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b4c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b50:	69 c0 37 27 00 00    	imul   $0x2737,%eax,%eax
  401b56:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b5a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b5e:	69 c0 f8 2a 00 00    	imul   $0x2af8,%eax,%eax
  401b64:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b68:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b6c:	69 c0 78 a0 00 00    	imul   $0xa078,%eax,%eax
  401b72:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b76:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b7a:	69 c0 7a 52 00 00    	imul   $0x527a,%eax,%eax
  401b80:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b84:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b88:	69 c0 e5 44 00 00    	imul   $0x44e5,%eax,%eax
  401b8e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b92:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b96:	69 c0 c4 f0 00 00    	imul   $0xf0c4,%eax,%eax
  401b9c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ba0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ba4:	69 c0 03 5b 00 00    	imul   $0x5b03,%eax,%eax
  401baa:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401bae:	8b 04 24             	mov    (%rsp),%eax
  401bb1:	69 c0 bf 02 00 00    	imul   $0x2bf,%eax,%eax
  401bb7:	89 04 24             	mov    %eax,(%rsp)
  401bba:	8b 04 24             	mov    (%rsp),%eax
  401bbd:	69 c0 53 cf 00 00    	imul   $0xcf53,%eax,%eax
  401bc3:	89 04 24             	mov    %eax,(%rsp)
  401bc6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bca:	69 c0 05 d5 00 00    	imul   $0xd505,%eax,%eax
  401bd0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bd4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bd8:	69 c0 a9 fe 00 00    	imul   $0xfea9,%eax,%eax
  401bde:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401be2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401be6:	69 c0 85 08 00 00    	imul   $0x885,%eax,%eax
  401bec:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bf0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bf4:	69 c0 31 e2 00 00    	imul   $0xe231,%eax,%eax
  401bfa:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bfe:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c02:	69 c0 74 b0 00 00    	imul   $0xb074,%eax,%eax
  401c08:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c0c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c10:	69 c0 05 8e 00 00    	imul   $0x8e05,%eax,%eax
  401c16:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c1a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c1e:	69 c0 1b 0b 00 00    	imul   $0xb1b,%eax,%eax
  401c24:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c28:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c2c:	69 c0 f4 5b 00 00    	imul   $0x5bf4,%eax,%eax
  401c32:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c36:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c3a:	69 c0 03 22 00 00    	imul   $0x2203,%eax,%eax
  401c40:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c44:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c48:	69 c0 34 f4 00 00    	imul   $0xf434,%eax,%eax
  401c4e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c52:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c56:	69 c0 83 78 00 00    	imul   $0x7883,%eax,%eax
  401c5c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c60:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c64:	69 c0 c4 48 00 00    	imul   $0x48c4,%eax,%eax
  401c6a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c6e:	8b 04 24             	mov    (%rsp),%eax
  401c71:	69 c0 72 ab 00 00    	imul   $0xab72,%eax,%eax
  401c77:	89 04 24             	mov    %eax,(%rsp)
  401c7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7f:	ba 00 00 00 00       	mov    $0x0,%edx
  401c84:	eb 0a                	jmp    401c90 <scramble+0x54d>
  401c86:	89 c1                	mov    %eax,%ecx
  401c88:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c8b:	01 ca                	add    %ecx,%edx
  401c8d:	83 c0 01             	add    $0x1,%eax
  401c90:	83 f8 09             	cmp    $0x9,%eax
  401c93:	76 f1                	jbe    401c86 <scramble+0x543>
  401c95:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c9a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401ca1:	00 00 
  401ca3:	75 07                	jne    401cac <scramble+0x569>
  401ca5:	89 d0                	mov    %edx,%eax
  401ca7:	48 83 c4 38          	add    $0x38,%rsp
  401cab:	c3                   	ret
  401cac:	e8 24 0a 00 00       	call   4026d5 <__stack_chk_fail>

0000000000401cb1 <getbuf>:
  401cb1:	f3 0f 1e fa          	endbr64
  401cb5:	48 83 ec 28          	sub    $0x28,%rsp
  401cb9:	48 89 e7             	mov    %rsp,%rdi
  401cbc:	e8 25 05 00 00       	call   4021e6 <Gets>
  401cc1:	b8 01 00 00 00       	mov    $0x1,%eax
  401cc6:	48 83 c4 28          	add    $0x28,%rsp
  401cca:	c3                   	ret

0000000000401ccb <touch1>:
  401ccb:	f3 0f 1e fa          	endbr64
  401ccf:	50                   	push   %rax
  401cd0:	58                   	pop    %rax
  401cd1:	48 83 ec 08          	sub    $0x8,%rsp
  401cd5:	c7 05 45 58 00 00 01 	movl   $0x1,0x5845(%rip)        # 407524 <vlevel>
  401cdc:	00 00 00 
  401cdf:	48 8d 3d 25 29 00 00 	lea    0x2925(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401ce6:	e8 95 f3 ff ff       	call   401080 <puts@plt>
  401ceb:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf0:	e8 6e 07 00 00       	call   402463 <validate>
  401cf5:	bf 00 00 00 00       	mov    $0x0,%edi
  401cfa:	e8 e1 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401cff <touch2>:
  401cff:	f3 0f 1e fa          	endbr64
  401d03:	50                   	push   %rax
  401d04:	58                   	pop    %rax
  401d05:	48 83 ec 08          	sub    $0x8,%rsp
  401d09:	89 fa                	mov    %edi,%edx
  401d0b:	c7 05 0f 58 00 00 02 	movl   $0x2,0x580f(%rip)        # 407524 <vlevel>
  401d12:	00 00 00 
  401d15:	39 3d 11 58 00 00    	cmp    %edi,0x5811(%rip)        # 40752c <cookie>
  401d1b:	74 2a                	je     401d47 <touch2+0x48>
  401d1d:	48 8d 35 5c 24 00 00 	lea    0x245c(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d24:	bf 02 00 00 00       	mov    $0x2,%edi
  401d29:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2e:	e8 5d f4 ff ff       	call   401190 <__printf_chk@plt>
  401d33:	bf 02 00 00 00       	mov    $0x2,%edi
  401d38:	e8 01 08 00 00       	call   40253e <fail>
  401d3d:	bf 00 00 00 00       	mov    $0x0,%edi
  401d42:	e8 99 f4 ff ff       	call   4011e0 <exit@plt>
  401d47:	48 8d 35 0a 24 00 00 	lea    0x240a(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d4e:	bf 02 00 00 00       	mov    $0x2,%edi
  401d53:	b8 00 00 00 00       	mov    $0x0,%eax
  401d58:	e8 33 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d5d:	bf 02 00 00 00       	mov    $0x2,%edi
  401d62:	e8 fc 06 00 00       	call   402463 <validate>
  401d67:	eb d4                	jmp    401d3d <touch2+0x3e>

0000000000401d69 <hexmatch>:
  401d69:	f3 0f 1e fa          	endbr64
  401d6d:	41 54                	push   %r12
  401d6f:	55                   	push   %rbp
  401d70:	53                   	push   %rbx
  401d71:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d75:	89 fd                	mov    %edi,%ebp
  401d77:	48 89 f3             	mov    %rsi,%rbx
  401d7a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d81:	00 00 
  401d83:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d88:	31 c0                	xor    %eax,%eax
  401d8a:	e8 d1 f3 ff ff       	call   401160 <random@plt>
  401d8f:	48 89 c6             	mov    %rax,%rsi
  401d92:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d99:	0a d7 a3 
  401d9c:	48 f7 ea             	imul   %rdx
  401d9f:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401da3:	48 c1 f9 06          	sar    $0x6,%rcx
  401da7:	48 89 f0             	mov    %rsi,%rax
  401daa:	48 c1 f8 3f          	sar    $0x3f,%rax
  401dae:	48 29 c1             	sub    %rax,%rcx
  401db1:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401db5:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401db9:	48 c1 e0 02          	shl    $0x2,%rax
  401dbd:	48 29 c6             	sub    %rax,%rsi
  401dc0:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401dc4:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401dc9:	48 39 d6             	cmp    %rdx,%rsi
  401dcc:	48 0f 43 d6          	cmovae %rsi,%rdx
  401dd0:	48 29 f2             	sub    %rsi,%rdx
  401dd3:	41 89 e8             	mov    %ebp,%r8d
  401dd6:	48 8d 0d 4b 28 00 00 	lea    0x284b(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401ddd:	be 02 00 00 00       	mov    $0x2,%esi
  401de2:	4c 89 e7             	mov    %r12,%rdi
  401de5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dea:	e8 31 f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401def:	ba 09 00 00 00       	mov    $0x9,%edx
  401df4:	4c 89 e6             	mov    %r12,%rsi
  401df7:	48 89 df             	mov    %rbx,%rdi
  401dfa:	e8 61 f2 ff ff       	call   401060 <strncmp@plt>
  401dff:	85 c0                	test   %eax,%eax
  401e01:	0f 94 c0             	sete   %al
  401e04:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e09:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e10:	00 00 
  401e12:	75 0c                	jne    401e20 <hexmatch+0xb7>
  401e14:	0f b6 c0             	movzbl %al,%eax
  401e17:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e1b:	5b                   	pop    %rbx
  401e1c:	5d                   	pop    %rbp
  401e1d:	41 5c                	pop    %r12
  401e1f:	c3                   	ret
  401e20:	e8 b0 08 00 00       	call   4026d5 <__stack_chk_fail>

0000000000401e25 <touch3>:
  401e25:	f3 0f 1e fa          	endbr64
  401e29:	53                   	push   %rbx
  401e2a:	48 89 fb             	mov    %rdi,%rbx
  401e2d:	c7 05 ed 56 00 00 03 	movl   $0x3,0x56ed(%rip)        # 407524 <vlevel>
  401e34:	00 00 00 
  401e37:	48 89 fe             	mov    %rdi,%rsi
  401e3a:	8b 3d ec 56 00 00    	mov    0x56ec(%rip),%edi        # 40752c <cookie>
  401e40:	e8 24 ff ff ff       	call   401d69 <hexmatch>
  401e45:	85 c0                	test   %eax,%eax
  401e47:	74 2d                	je     401e76 <touch3+0x51>
  401e49:	48 89 da             	mov    %rbx,%rdx
  401e4c:	48 8d 35 55 23 00 00 	lea    0x2355(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e53:	bf 02 00 00 00       	mov    $0x2,%edi
  401e58:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5d:	e8 2e f3 ff ff       	call   401190 <__printf_chk@plt>
  401e62:	bf 03 00 00 00       	mov    $0x3,%edi
  401e67:	e8 f7 05 00 00       	call   402463 <validate>
  401e6c:	bf 00 00 00 00       	mov    $0x0,%edi
  401e71:	e8 6a f3 ff ff       	call   4011e0 <exit@plt>
  401e76:	48 89 da             	mov    %rbx,%rdx
  401e79:	48 8d 35 50 23 00 00 	lea    0x2350(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e80:	bf 02 00 00 00       	mov    $0x2,%edi
  401e85:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8a:	e8 01 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e8f:	bf 03 00 00 00       	mov    $0x3,%edi
  401e94:	e8 a5 06 00 00       	call   40253e <fail>
  401e99:	eb d1                	jmp    401e6c <touch3+0x47>

0000000000401e9b <test>:
  401e9b:	f3 0f 1e fa          	endbr64
  401e9f:	48 83 ec 08          	sub    $0x8,%rsp
  401ea3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea8:	e8 04 fe ff ff       	call   401cb1 <getbuf>
  401ead:	89 c2                	mov    %eax,%edx
  401eaf:	48 8d 35 42 23 00 00 	lea    0x2342(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401eb6:	bf 02 00 00 00       	mov    $0x2,%edi
  401ebb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec0:	e8 cb f2 ff ff       	call   401190 <__printf_chk@plt>
  401ec5:	48 83 c4 08          	add    $0x8,%rsp
  401ec9:	c3                   	ret

0000000000401eca <test2>:
  401eca:	f3 0f 1e fa          	endbr64
  401ece:	48 83 ec 08          	sub    $0x8,%rsp
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 1d 00 00 00       	call   401ef9 <getbuf_withcanary>
  401edc:	89 c2                	mov    %eax,%edx
  401ede:	48 8d 35 3b 23 00 00 	lea    0x233b(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401ee5:	bf 02 00 00 00       	mov    $0x2,%edi
  401eea:	b8 00 00 00 00       	mov    $0x0,%eax
  401eef:	e8 9c f2 ff ff       	call   401190 <__printf_chk@plt>
  401ef4:	48 83 c4 08          	add    $0x8,%rsp
  401ef8:	c3                   	ret

0000000000401ef9 <getbuf_withcanary>:
  401ef9:	55                   	push   %rbp
  401efa:	48 89 e5             	mov    %rsp,%rbp
  401efd:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp # 创造288个字节的空间
  401f04:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f0b:	00 00                 
  401f0d:	48 89 45 f8          	mov    %rax,-0x8(%rbp) # 金丝雀值：%rsp+276
  401f11:	31 c0                	xor    %eax,%eax # %eax=0
  401f13:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp) # 0：%rsp+260
  401f1a:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax # %rax：%rsp+128
  401f21:	48 89 c7             	mov    %rax,%rdi # %rdi=%rax
  401f24:	e8 bd 02 00 00       	call   4021e6 <Gets> # 输入字符串，从%rdi（%rsp+128/%rbp-160）开始输
  401f29:	8b 45 e4             	mov    -0x1c(%rbp),%eax # %eax=0，不一定，可能被改过，因为有输入。
  401f2c:	48 98                	cltq # %rax=0
  401f2e:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx # %rdx=%rsp
  401f35:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx # %rcx=%rdx+%rax
  401f39:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax # %rax=%rsp+128
  401f40:	ba 80 00 00 00       	mov    $0x80,%edx # %edx=128
  401f45:	48 89 c6             	mov    %rax,%rsi # %rsi=%rsp+128
  401f48:	48 89 cf             	mov    %rcx,%rdi # %rdi=%rcx
  401f4b:	e8 f0 f1 ff ff       	call   401140 <memcpy@plt> # 调用memcpy(%rdi,%rsi,%rdx)
  401f50:	b8 01 00 00 00       	mov    $0x1,%eax # 检验金丝雀，下略
  401f55:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f59:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f60:	00 00 
  401f62:	74 05                	je     401f69 <getbuf_withcanary+0x70>
  401f64:	e8 6c 07 00 00       	call   4026d5 <__stack_chk_fail>
  401f69:	c9                   	leave
  401f6a:	c3                   	ret

0000000000401f6b <start_farm>:
  401f6b:	f3 0f 1e fa          	endbr64
  401f6f:	b8 01 00 00 00       	mov    $0x1,%eax
  401f74:	c3                   	ret

0000000000401f75 <getval_173>:
  401f75:	f3 0f 1e fa          	endbr64
  401f79:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401f7e:	c3                   	ret

0000000000401f7f <getval_135>:
  401f7f:	f3 0f 1e fa          	endbr64
  401f83:	b8 48 88 c7 90       	mov    $0x90c78848,%eax
  401f88:	c3                   	ret

0000000000401f89 <getval_121>:
  401f89:	f3 0f 1e fa          	endbr64
  401f8d:	b8 48 89 c7 91       	mov    $0x91c78948,%eax
  401f92:	c3                   	ret

0000000000401f93 <addval_382>:
  401f93:	f3 0f 1e fa          	endbr64
  401f97:	8d 87 98 08 58 91    	lea    -0x6ea7f768(%rdi),%eax
  401f9d:	c3                   	ret

0000000000401f9e <setval_278>:
  401f9e:	f3 0f 1e fa          	endbr64
  401fa2:	c7 07 58 91 90 90    	movl   $0x90909158,(%rdi)
  401fa8:	c3                   	ret

0000000000401fa9 <getval_200>:
  401fa9:	f3 0f 1e fa          	endbr64
  401fad:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401fb2:	c3                   	ret

0000000000401fb3 <addval_392>:
  401fb3:	f3 0f 1e fa          	endbr64
  401fb7:	8d 87 35 58 90 c3    	lea    -0x3c6fa7cb(%rdi),%eax
  401fbd:	c3                   	ret

0000000000401fbe <getval_258>:
  401fbe:	f3 0f 1e fa          	endbr64
  401fc2:	b8 7d 58 90 c3       	mov    $0xc390587d,%eax
  401fc7:	c3                   	ret

0000000000401fc8 <mid_farm>:
  401fc8:	f3 0f 1e fa          	endbr64
  401fcc:	b8 01 00 00 00       	mov    $0x1,%eax
  401fd1:	c3                   	ret

0000000000401fd2 <add_xy>:
  401fd2:	f3 0f 1e fa          	endbr64
  401fd6:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401fda:	c3                   	ret

0000000000401fdb <addval_312>:
  401fdb:	f3 0f 1e fa          	endbr64
  401fdf:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401fe5:	c3                   	ret

0000000000401fe6 <addval_484>:
  401fe6:	f3 0f 1e fa          	endbr64
  401fea:	8d 87 89 c1 28 d2    	lea    -0x2dd73e77(%rdi),%eax
  401ff0:	c3                   	ret

0000000000401ff1 <getval_390>:
  401ff1:	f3 0f 1e fa          	endbr64
  401ff5:	b8 89 ca 20 c9       	mov    $0xc920ca89,%eax
  401ffa:	c3                   	ret

0000000000401ffb <addval_175>:
  401ffb:	f3 0f 1e fa          	endbr64
  401fff:	8d 87 89 ca 38 c9    	lea    -0x36c73577(%rdi),%eax
  402005:	c3                   	ret

0000000000402006 <addval_474>:
  402006:	f3 0f 1e fa          	endbr64
  40200a:	8d 87 48 09 e0 90    	lea    -0x6f1ff6b8(%rdi),%eax
  402010:	c3                   	ret

0000000000402011 <setval_160>:
  402011:	f3 0f 1e fa          	endbr64
  402015:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  40201b:	c3                   	ret

000000000040201c <getval_427>:
  40201c:	f3 0f 1e fa          	endbr64
  402020:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  402025:	c3                   	ret

0000000000402026 <setval_116>:
  402026:	f3 0f 1e fa          	endbr64
  40202a:	c7 07 3d 99 ca c3    	movl   $0xc3ca993d,(%rdi)
  402030:	c3                   	ret

0000000000402031 <addval_432>:
  402031:	f3 0f 1e fa          	endbr64
  402035:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  40203b:	c3                   	ret

000000000040203c <addval_108>:
  40203c:	f3 0f 1e fa          	endbr64
  402040:	8d 87 ba 89 ca c2    	lea    -0x3d357646(%rdi),%eax
  402046:	c3                   	ret

0000000000402047 <setval_331>:
  402047:	f3 0f 1e fa          	endbr64
  40204b:	c7 07 89 c1 28 c9    	movl   $0xc928c189,(%rdi)
  402051:	c3                   	ret

0000000000402052 <addval_255>:
  402052:	f3 0f 1e fa          	endbr64
  402056:	8d 87 89 c1 78 db    	lea    -0x24873e77(%rdi),%eax
  40205c:	c3                   	ret

000000000040205d <getval_298>:
  40205d:	f3 0f 1e fa          	endbr64
  402061:	b8 0b 8b ca c3       	mov    $0xc3ca8b0b,%eax
  402066:	c3                   	ret

0000000000402067 <getval_165>:
  402067:	f3 0f 1e fa          	endbr64
  40206b:	b8 89 ca 30 db       	mov    $0xdb30ca89,%eax
  402070:	c3                   	ret

0000000000402071 <setval_311>:
  402071:	f3 0f 1e fa          	endbr64
  402075:	c7 07 e6 48 a9 e0    	movl   $0xe0a948e6,(%rdi)
  40207b:	c3                   	ret

000000000040207c <addval_229>:
  40207c:	f3 0f 1e fa          	endbr64
  402080:	8d 87 89 ca 18 db    	lea    -0x24e73577(%rdi),%eax
  402086:	c3                   	ret

0000000000402087 <getval_193>:
  402087:	f3 0f 1e fa          	endbr64
  40208b:	b8 8b d6 20 d2       	mov    $0xd220d68b,%eax
  402090:	c3                   	ret

0000000000402091 <getval_387>:
  402091:	f3 0f 1e fa          	endbr64
  402095:	b8 8d ca 90 c3       	mov    $0xc390ca8d,%eax
  40209a:	c3                   	ret

000000000040209b <setval_296>:
  40209b:	f3 0f 1e fa          	endbr64
  40209f:	c7 07 89 c1 18 d2    	movl   $0xd218c189,(%rdi)
  4020a5:	c3                   	ret

00000000004020a6 <getval_279>:
  4020a6:	f3 0f 1e fa          	endbr64
  4020aa:	b8 89 d6 48 c0       	mov    $0xc048d689,%eax
  4020af:	c3                   	ret

00000000004020b0 <getval_249>:
  4020b0:	f3 0f 1e fa          	endbr64
  4020b4:	b8 a9 d6 38 c0       	mov    $0xc038d6a9,%eax
  4020b9:	c3                   	ret

00000000004020ba <addval_367>:
  4020ba:	f3 0f 1e fa          	endbr64
  4020be:	8d 87 89 d6 38 c9    	lea    -0x36c72977(%rdi),%eax
  4020c4:	c3                   	ret

00000000004020c5 <addval_377>:
  4020c5:	f3 0f 1e fa          	endbr64
  4020c9:	8d 87 89 d6 20 db    	lea    -0x24df2977(%rdi),%eax
  4020cf:	c3                   	ret

00000000004020d0 <addval_262>:
  4020d0:	f3 0f 1e fa          	endbr64
  4020d4:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  4020da:	c3                   	ret

00000000004020db <getval_450>:
  4020db:	f3 0f 1e fa          	endbr64
  4020df:	b8 89 c1 38 c9       	mov    $0xc938c189,%eax
  4020e4:	c3                   	ret

00000000004020e5 <addval_281>:
  4020e5:	f3 0f 1e fa          	endbr64
  4020e9:	8d 87 89 d6 91 90    	lea    -0x6f6e2977(%rdi),%eax
  4020ef:	c3                   	ret

00000000004020f0 <getval_148>:
  4020f0:	f3 0f 1e fa          	endbr64
  4020f4:	b8 09 d6 08 c9       	mov    $0xc908d609,%eax
  4020f9:	c3                   	ret

00000000004020fa <getval_329>:
  4020fa:	f3 0f 1e fa          	endbr64
  4020fe:	b8 f0 8d c1 c3       	mov    $0xc3c18df0,%eax
  402103:	c3                   	ret

0000000000402104 <addval_117>:
  402104:	f3 0f 1e fa          	endbr64
  402108:	8d 87 89 c1 84 c9    	lea    -0x367b3e77(%rdi),%eax
  40210e:	c3                   	ret

000000000040210f <addval_330>:
  40210f:	f3 0f 1e fa          	endbr64
  402113:	8d 87 01 89 c1 94    	lea    -0x6b3e76ff(%rdi),%eax
  402119:	c3                   	ret

000000000040211a <getval_444>:
  40211a:	f3 0f 1e fa          	endbr64
  40211e:	b8 08 48 81 e0       	mov    $0xe0814808,%eax
  402123:	c3                   	ret

0000000000402124 <addval_360>:
  402124:	f3 0f 1e fa          	endbr64
  402128:	8d 87 81 d6 90 90    	lea    -0x6f6f297f(%rdi),%eax
  40212e:	c3                   	ret

000000000040212f <end_farm>:
  40212f:	f3 0f 1e fa          	endbr64
  402133:	b8 01 00 00 00       	mov    $0x1,%eax
  402138:	c3                   	ret

0000000000402139 <save_char>:
  402139:	8b 05 05 60 00 00    	mov    0x6005(%rip),%eax        # 408144 <gets_cnt>
  40213f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402144:	7f 4a                	jg     402190 <save_char+0x57>
  402146:	89 f9                	mov    %edi,%ecx
  402148:	c0 e9 04             	shr    $0x4,%cl
  40214b:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40214e:	4c 8d 05 ab 26 00 00 	lea    0x26ab(%rip),%r8        # 404800 <trans_char>
  402155:	83 e1 0f             	and    $0xf,%ecx
  402158:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40215d:	48 8d 0d dc 53 00 00 	lea    0x53dc(%rip),%rcx        # 407540 <gets_buf>
  402164:	48 63 f2             	movslq %edx,%rsi
  402167:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40216b:	8d 72 01             	lea    0x1(%rdx),%esi
  40216e:	83 e7 0f             	and    $0xf,%edi
  402171:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402176:	48 63 f6             	movslq %esi,%rsi
  402179:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40217d:	83 c2 02             	add    $0x2,%edx
  402180:	48 63 d2             	movslq %edx,%rdx
  402183:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402187:	83 c0 01             	add    $0x1,%eax
  40218a:	89 05 b4 5f 00 00    	mov    %eax,0x5fb4(%rip)        # 408144 <gets_cnt>
  402190:	c3                   	ret

0000000000402191 <save_term>:
  402191:	8b 05 ad 5f 00 00    	mov    0x5fad(%rip),%eax        # 408144 <gets_cnt>
  402197:	8d 04 40             	lea    (%rax,%rax,2),%eax
  40219a:	48 98                	cltq
  40219c:	48 8d 15 9d 53 00 00 	lea    0x539d(%rip),%rdx        # 407540 <gets_buf>
  4021a3:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021a7:	c3                   	ret

00000000004021a8 <check_fail>:
  4021a8:	f3 0f 1e fa          	endbr64
  4021ac:	50                   	push   %rax
  4021ad:	58                   	pop    %rax
  4021ae:	48 83 ec 08          	sub    $0x8,%rsp
  4021b2:	0f be 15 8f 5f 00 00 	movsbl 0x5f8f(%rip),%edx        # 408148 <target_prefix>
  4021b9:	4c 8d 05 80 53 00 00 	lea    0x5380(%rip),%r8        # 407540 <gets_buf>
  4021c0:	8b 0d 5a 53 00 00    	mov    0x535a(%rip),%ecx        # 407520 <check_level>
  4021c6:	48 8d 35 60 24 00 00 	lea    0x2460(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  4021cd:	bf 02 00 00 00       	mov    $0x2,%edi
  4021d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d7:	e8 b4 ef ff ff       	call   401190 <__printf_chk@plt>
  4021dc:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e1:	e8 fa ef ff ff       	call   4011e0 <exit@plt>

00000000004021e6 <Gets>:
  4021e6:	f3 0f 1e fa          	endbr64
  4021ea:	41 54                	push   %r12
  4021ec:	55                   	push   %rbp
  4021ed:	53                   	push   %rbx
  4021ee:	49 89 fc             	mov    %rdi,%r12
  4021f1:	c7 05 49 5f 00 00 00 	movl   $0x0,0x5f49(%rip)        # 408144 <gets_cnt>
  4021f8:	00 00 00 
  4021fb:	48 89 fb             	mov    %rdi,%rbx
  4021fe:	eb 11                	jmp    402211 <Gets+0x2b>
  402200:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402204:	88 03                	mov    %al,(%rbx)
  402206:	0f b6 f8             	movzbl %al,%edi
  402209:	e8 2b ff ff ff       	call   402139 <save_char>
  40220e:	48 89 eb             	mov    %rbp,%rbx
  402211:	48 8b 3d 00 53 00 00 	mov    0x5300(%rip),%rdi        # 407518 <infile>
  402218:	e8 f3 ef ff ff       	call   401210 <getc@plt>
  40221d:	83 f8 ff             	cmp    $0xffffffff,%eax
  402220:	74 05                	je     402227 <Gets+0x41>
  402222:	83 f8 0a             	cmp    $0xa,%eax
  402225:	75 d9                	jne    402200 <Gets+0x1a>
  402227:	c6 03 00             	movb   $0x0,(%rbx)
  40222a:	b8 00 00 00 00       	mov    $0x0,%eax
  40222f:	e8 5d ff ff ff       	call   402191 <save_term>
  402234:	4c 89 e0             	mov    %r12,%rax
  402237:	5b                   	pop    %rbx
  402238:	5d                   	pop    %rbp
  402239:	41 5c                	pop    %r12
  40223b:	c3                   	ret

000000000040223c <notify_server>:
  40223c:	f3 0f 1e fa          	endbr64
  402240:	55                   	push   %rbp
  402241:	53                   	push   %rbx
  402242:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402249:	ff 
  40224a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402251:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402256:	4c 39 dc             	cmp    %r11,%rsp
  402259:	75 ef                	jne    40224a <notify_server+0xe>
  40225b:	48 83 ec 18          	sub    $0x18,%rsp
  40225f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402266:	00 00 
  402268:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40226f:	00 
  402270:	31 c0                	xor    %eax,%eax
  402272:	83 3d b7 52 00 00 00 	cmpl   $0x0,0x52b7(%rip)        # 407530 <is_checker>
  402279:	0f 85 c2 01 00 00    	jne    402441 <notify_server+0x205>
  40227f:	89 fb                	mov    %edi,%ebx
  402281:	81 3d b9 5e 00 00 9c 	cmpl   $0x1f9c,0x5eb9(%rip)        # 408144 <gets_cnt>
  402288:	1f 00 00 
  40228b:	0f 8f bd 00 00 00    	jg     40234e <notify_server+0x112>
  402291:	0f be 05 b0 5e 00 00 	movsbl 0x5eb0(%rip),%eax        # 408148 <target_prefix>
  402298:	83 3d e1 51 00 00 00 	cmpl   $0x0,0x51e1(%rip)        # 407480 <notify>
  40229f:	0f 84 c4 00 00 00    	je     402369 <notify_server+0x12d>
  4022a5:	8b 15 7d 52 00 00    	mov    0x527d(%rip),%edx        # 407528 <authkey>
  4022ab:	85 db                	test   %ebx,%ebx
  4022ad:	0f 84 c0 00 00 00    	je     402373 <notify_server+0x137>
  4022b3:	48 8d 2d 89 23 00 00 	lea    0x2389(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4022ba:	48 89 e7             	mov    %rsp,%rdi
  4022bd:	48 8d 0d 7c 52 00 00 	lea    0x527c(%rip),%rcx        # 407540 <gets_buf>
  4022c4:	51                   	push   %rcx
  4022c5:	56                   	push   %rsi
  4022c6:	50                   	push   %rax
  4022c7:	52                   	push   %rdx
  4022c8:	49 89 e9             	mov    %rbp,%r9
  4022cb:	44 8b 05 5e 4e 00 00 	mov    0x4e5e(%rip),%r8d        # 407130 <target_id>
  4022d2:	48 8d 0d 74 23 00 00 	lea    0x2374(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  4022d9:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022de:	be 02 00 00 00       	mov    $0x2,%esi
  4022e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e8:	e8 33 ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022ed:	48 83 c4 20          	add    $0x20,%rsp
  4022f1:	83 3d 88 51 00 00 00 	cmpl   $0x0,0x5188(%rip)        # 407480 <notify>
  4022f8:	0f 84 ba 00 00 00    	je     4023b8 <notify_server+0x17c>
  4022fe:	48 89 e1             	mov    %rsp,%rcx
  402301:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402308:	00 
  402309:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40230f:	48 8b 15 32 4e 00 00 	mov    0x4e32(%rip),%rdx        # 407148 <lab>
  402316:	48 8b 35 33 4e 00 00 	mov    0x4e33(%rip),%rsi        # 407150 <course>
  40231d:	48 8b 3d 1c 4e 00 00 	mov    0x4e1c(%rip),%rdi        # 407140 <user_id>
  402324:	e8 4e 12 00 00       	call   403577 <driver_post>
  402329:	85 c0                	test   %eax,%eax
  40232b:	78 52                	js     40237f <notify_server+0x143>
  40232d:	85 db                	test   %ebx,%ebx
  40232f:	74 76                	je     4023a7 <notify_server+0x16b>
  402331:	48 8d 3d 48 1f 00 00 	lea    0x1f48(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  402338:	e8 43 ed ff ff       	call   401080 <puts@plt>
  40233d:	48 8d 3d 31 23 00 00 	lea    0x2331(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  402344:	e8 37 ed ff ff       	call   401080 <puts@plt>
  402349:	e9 f3 00 00 00       	jmp    402441 <notify_server+0x205>
  40234e:	48 8d 35 fb 1e 00 00 	lea    0x1efb(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  402355:	bf 02 00 00 00       	mov    $0x2,%edi
  40235a:	e8 31 ee ff ff       	call   401190 <__printf_chk@plt>
  40235f:	bf 01 00 00 00       	mov    $0x1,%edi
  402364:	e8 77 ee ff ff       	call   4011e0 <exit@plt>
  402369:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  40236e:	e9 38 ff ff ff       	jmp    4022ab <notify_server+0x6f>
  402373:	48 8d 2d ce 22 00 00 	lea    0x22ce(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  40237a:	e9 3b ff ff ff       	jmp    4022ba <notify_server+0x7e>
  40237f:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402386:	00 
  402387:	48 8d 35 db 22 00 00 	lea    0x22db(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  40238e:	bf 02 00 00 00       	mov    $0x2,%edi
  402393:	b8 00 00 00 00       	mov    $0x0,%eax
  402398:	e8 f3 ed ff ff       	call   401190 <__printf_chk@plt>
  40239d:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a2:	e8 39 ee ff ff       	call   4011e0 <exit@plt>
  4023a7:	48 8d 3d d1 22 00 00 	lea    0x22d1(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4023ae:	e8 cd ec ff ff       	call   401080 <puts@plt>
  4023b3:	e9 89 00 00 00       	jmp    402441 <notify_server+0x205>
  4023b8:	48 89 ea             	mov    %rbp,%rdx
  4023bb:	48 8d 35 f6 1e 00 00 	lea    0x1ef6(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4023c2:	bf 02 00 00 00       	mov    $0x2,%edi
  4023c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023cc:	e8 bf ed ff ff       	call   401190 <__printf_chk@plt>
  4023d1:	48 8b 15 68 4d 00 00 	mov    0x4d68(%rip),%rdx        # 407140 <user_id>
  4023d8:	48 8d 35 a7 22 00 00 	lea    0x22a7(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  4023df:	bf 02 00 00 00       	mov    $0x2,%edi
  4023e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e9:	e8 a2 ed ff ff       	call   401190 <__printf_chk@plt>
  4023ee:	48 8b 15 5b 4d 00 00 	mov    0x4d5b(%rip),%rdx        # 407150 <course>
  4023f5:	48 8d 35 97 22 00 00 	lea    0x2297(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  4023fc:	bf 02 00 00 00       	mov    $0x2,%edi
  402401:	b8 00 00 00 00       	mov    $0x0,%eax
  402406:	e8 85 ed ff ff       	call   401190 <__printf_chk@plt>
  40240b:	48 8b 15 36 4d 00 00 	mov    0x4d36(%rip),%rdx        # 407148 <lab>
  402412:	48 8d 35 86 22 00 00 	lea    0x2286(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  402419:	bf 02 00 00 00       	mov    $0x2,%edi
  40241e:	b8 00 00 00 00       	mov    $0x0,%eax
  402423:	e8 68 ed ff ff       	call   401190 <__printf_chk@plt>
  402428:	48 89 e2             	mov    %rsp,%rdx
  40242b:	48 8d 35 76 22 00 00 	lea    0x2276(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  402432:	bf 02 00 00 00       	mov    $0x2,%edi
  402437:	b8 00 00 00 00       	mov    $0x0,%eax
  40243c:	e8 4f ed ff ff       	call   401190 <__printf_chk@plt>
  402441:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402448:	00 
  402449:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402450:	00 00 
  402452:	75 0a                	jne    40245e <notify_server+0x222>
  402454:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40245b:	5b                   	pop    %rbx
  40245c:	5d                   	pop    %rbp
  40245d:	c3                   	ret
  40245e:	e8 72 02 00 00       	call   4026d5 <__stack_chk_fail>

0000000000402463 <validate>:
  402463:	f3 0f 1e fa          	endbr64
  402467:	53                   	push   %rbx
  402468:	89 fb                	mov    %edi,%ebx
  40246a:	83 3d bf 50 00 00 00 	cmpl   $0x0,0x50bf(%rip)        # 407530 <is_checker>
  402471:	74 79                	je     4024ec <validate+0x89>
  402473:	39 3d ab 50 00 00    	cmp    %edi,0x50ab(%rip)        # 407524 <vlevel>
  402479:	75 39                	jne    4024b4 <validate+0x51>
  40247b:	8b 15 9f 50 00 00    	mov    0x509f(%rip),%edx        # 407520 <check_level>
  402481:	39 fa                	cmp    %edi,%edx
  402483:	75 45                	jne    4024ca <validate+0x67>
  402485:	0f be 0d bc 5c 00 00 	movsbl 0x5cbc(%rip),%ecx        # 408148 <target_prefix>
  40248c:	4c 8d 0d ad 50 00 00 	lea    0x50ad(%rip),%r9        # 407540 <gets_buf>
  402493:	41 89 f8             	mov    %edi,%r8d
  402496:	8b 15 8c 50 00 00    	mov    0x508c(%rip),%edx        # 407528 <authkey>
  40249c:	48 8d 35 65 1e 00 00 	lea    0x1e65(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4024a3:	bf 02 00 00 00       	mov    $0x2,%edi
  4024a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ad:	e8 de ec ff ff       	call   401190 <__printf_chk@plt>
  4024b2:	5b                   	pop    %rbx
  4024b3:	c3                   	ret
  4024b4:	48 8d 3d f9 21 00 00 	lea    0x21f9(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024bb:	e8 c0 eb ff ff       	call   401080 <puts@plt>
  4024c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c5:	e8 de fc ff ff       	call   4021a8 <check_fail>
  4024ca:	89 f9                	mov    %edi,%ecx
  4024cc:	48 8d 35 0d 1e 00 00 	lea    0x1e0d(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  4024d3:	bf 02 00 00 00       	mov    $0x2,%edi
  4024d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4024dd:	e8 ae ec ff ff       	call   401190 <__printf_chk@plt>
  4024e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e7:	e8 bc fc ff ff       	call   4021a8 <check_fail>
  4024ec:	39 3d 32 50 00 00    	cmp    %edi,0x5032(%rip)        # 407524 <vlevel>
  4024f2:	74 1a                	je     40250e <validate+0xab>
  4024f4:	48 8d 3d b9 21 00 00 	lea    0x21b9(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024fb:	e8 80 eb ff ff       	call   401080 <puts@plt>
  402500:	89 de                	mov    %ebx,%esi
  402502:	bf 00 00 00 00       	mov    $0x0,%edi
  402507:	e8 30 fd ff ff       	call   40223c <notify_server>
  40250c:	eb a4                	jmp    4024b2 <validate+0x4f>
  40250e:	0f be 0d 33 5c 00 00 	movsbl 0x5c33(%rip),%ecx        # 408148 <target_prefix>
  402515:	89 fa                	mov    %edi,%edx
  402517:	48 8d 35 12 1e 00 00 	lea    0x1e12(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  40251e:	bf 02 00 00 00       	mov    $0x2,%edi
  402523:	b8 00 00 00 00       	mov    $0x0,%eax
  402528:	e8 63 ec ff ff       	call   401190 <__printf_chk@plt>
  40252d:	89 de                	mov    %ebx,%esi
  40252f:	bf 01 00 00 00       	mov    $0x1,%edi
  402534:	e8 03 fd ff ff       	call   40223c <notify_server>
  402539:	e9 74 ff ff ff       	jmp    4024b2 <validate+0x4f>

000000000040253e <fail>:
  40253e:	f3 0f 1e fa          	endbr64
  402542:	48 83 ec 08          	sub    $0x8,%rsp
  402546:	83 3d e3 4f 00 00 00 	cmpl   $0x0,0x4fe3(%rip)        # 407530 <is_checker>
  40254d:	75 11                	jne    402560 <fail+0x22>
  40254f:	89 fe                	mov    %edi,%esi
  402551:	bf 00 00 00 00       	mov    $0x0,%edi
  402556:	e8 e1 fc ff ff       	call   40223c <notify_server>
  40255b:	48 83 c4 08          	add    $0x8,%rsp
  40255f:	c3                   	ret
  402560:	b8 00 00 00 00       	mov    $0x0,%eax
  402565:	e8 3e fc ff ff       	call   4021a8 <check_fail>

000000000040256a <bushandler>:
  40256a:	f3 0f 1e fa          	endbr64
  40256e:	50                   	push   %rax
  40256f:	58                   	pop    %rax
  402570:	48 83 ec 08          	sub    $0x8,%rsp
  402574:	83 3d b5 4f 00 00 00 	cmpl   $0x0,0x4fb5(%rip)        # 407530 <is_checker>
  40257b:	74 16                	je     402593 <bushandler+0x29>
  40257d:	48 8d 3d 4e 21 00 00 	lea    0x214e(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  402584:	e8 f7 ea ff ff       	call   401080 <puts@plt>
  402589:	b8 00 00 00 00       	mov    $0x0,%eax
  40258e:	e8 15 fc ff ff       	call   4021a8 <check_fail>
  402593:	48 8d 3d ce 1d 00 00 	lea    0x1dce(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  40259a:	e8 e1 ea ff ff       	call   401080 <puts@plt>
  40259f:	48 8d 3d 36 21 00 00 	lea    0x2136(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025a6:	e8 d5 ea ff ff       	call   401080 <puts@plt>
  4025ab:	be 00 00 00 00       	mov    $0x0,%esi
  4025b0:	bf 00 00 00 00       	mov    $0x0,%edi
  4025b5:	e8 82 fc ff ff       	call   40223c <notify_server>
  4025ba:	bf 01 00 00 00       	mov    $0x1,%edi
  4025bf:	e8 1c ec ff ff       	call   4011e0 <exit@plt>

00000000004025c4 <seghandler>:
  4025c4:	f3 0f 1e fa          	endbr64
  4025c8:	50                   	push   %rax
  4025c9:	58                   	pop    %rax
  4025ca:	48 83 ec 08          	sub    $0x8,%rsp
  4025ce:	83 3d 5b 4f 00 00 00 	cmpl   $0x0,0x4f5b(%rip)        # 407530 <is_checker>
  4025d5:	74 16                	je     4025ed <seghandler+0x29>
  4025d7:	48 8d 3d 14 21 00 00 	lea    0x2114(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  4025de:	e8 9d ea ff ff       	call   401080 <puts@plt>
  4025e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e8:	e8 bb fb ff ff       	call   4021a8 <check_fail>
  4025ed:	48 8d 3d 94 1d 00 00 	lea    0x1d94(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  4025f4:	e8 87 ea ff ff       	call   401080 <puts@plt>
  4025f9:	48 8d 3d dc 20 00 00 	lea    0x20dc(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402600:	e8 7b ea ff ff       	call   401080 <puts@plt>
  402605:	be 00 00 00 00       	mov    $0x0,%esi
  40260a:	bf 00 00 00 00       	mov    $0x0,%edi
  40260f:	e8 28 fc ff ff       	call   40223c <notify_server>
  402614:	bf 01 00 00 00       	mov    $0x1,%edi
  402619:	e8 c2 eb ff ff       	call   4011e0 <exit@plt>

000000000040261e <illegalhandler>:
  40261e:	f3 0f 1e fa          	endbr64
  402622:	50                   	push   %rax
  402623:	58                   	pop    %rax
  402624:	48 83 ec 08          	sub    $0x8,%rsp
  402628:	83 3d 01 4f 00 00 00 	cmpl   $0x0,0x4f01(%rip)        # 407530 <is_checker>
  40262f:	74 16                	je     402647 <illegalhandler+0x29>
  402631:	48 8d 3d cd 20 00 00 	lea    0x20cd(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  402638:	e8 43 ea ff ff       	call   401080 <puts@plt>
  40263d:	b8 00 00 00 00       	mov    $0x0,%eax
  402642:	e8 61 fb ff ff       	call   4021a8 <check_fail>
  402647:	48 8d 3d 62 1d 00 00 	lea    0x1d62(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  40264e:	e8 2d ea ff ff       	call   401080 <puts@plt>
  402653:	48 8d 3d 82 20 00 00 	lea    0x2082(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40265a:	e8 21 ea ff ff       	call   401080 <puts@plt>
  40265f:	be 00 00 00 00       	mov    $0x0,%esi
  402664:	bf 00 00 00 00       	mov    $0x0,%edi
  402669:	e8 ce fb ff ff       	call   40223c <notify_server>
  40266e:	bf 01 00 00 00       	mov    $0x1,%edi
  402673:	e8 68 eb ff ff       	call   4011e0 <exit@plt>

0000000000402678 <sigalrmhandler>:
  402678:	f3 0f 1e fa          	endbr64
  40267c:	50                   	push   %rax
  40267d:	58                   	pop    %rax
  40267e:	48 83 ec 08          	sub    $0x8,%rsp
  402682:	83 3d a7 4e 00 00 00 	cmpl   $0x0,0x4ea7(%rip)        # 407530 <is_checker>
  402689:	74 16                	je     4026a1 <sigalrmhandler+0x29>
  40268b:	48 8d 3d 87 20 00 00 	lea    0x2087(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  402692:	e8 e9 e9 ff ff       	call   401080 <puts@plt>
  402697:	b8 00 00 00 00       	mov    $0x0,%eax
  40269c:	e8 07 fb ff ff       	call   4021a8 <check_fail>
  4026a1:	ba 02 00 00 00       	mov    $0x2,%edx
  4026a6:	48 8d 35 33 1d 00 00 	lea    0x1d33(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4026ad:	bf 02 00 00 00       	mov    $0x2,%edi
  4026b2:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b7:	e8 d4 ea ff ff       	call   401190 <__printf_chk@plt>
  4026bc:	be 00 00 00 00       	mov    $0x0,%esi
  4026c1:	bf 00 00 00 00       	mov    $0x0,%edi
  4026c6:	e8 71 fb ff ff       	call   40223c <notify_server>
  4026cb:	bf 01 00 00 00       	mov    $0x1,%edi
  4026d0:	e8 0b eb ff ff       	call   4011e0 <exit@plt>

00000000004026d5 <__stack_chk_fail>:
  4026d5:	f3 0f 1e fa          	endbr64
  4026d9:	50                   	push   %rax
  4026da:	58                   	pop    %rax
  4026db:	48 83 ec 08          	sub    $0x8,%rsp
  4026df:	83 3d 4a 4e 00 00 00 	cmpl   $0x0,0x4e4a(%rip)        # 407530 <is_checker>
  4026e6:	74 16                	je     4026fe <__stack_chk_fail+0x29>
  4026e8:	48 8d 3d 32 20 00 00 	lea    0x2032(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  4026ef:	e8 8c e9 ff ff       	call   401080 <puts@plt>
  4026f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f9:	e8 aa fa ff ff       	call   4021a8 <check_fail>
  4026fe:	48 8d 3d 13 1d 00 00 	lea    0x1d13(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  402705:	e8 76 e9 ff ff       	call   401080 <puts@plt>
  40270a:	48 8d 3d cb 1f 00 00 	lea    0x1fcb(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402711:	e8 6a e9 ff ff       	call   401080 <puts@plt>
  402716:	be 00 00 00 00       	mov    $0x0,%esi
  40271b:	bf 00 00 00 00       	mov    $0x0,%edi
  402720:	e8 17 fb ff ff       	call   40223c <notify_server>
  402725:	bf 01 00 00 00       	mov    $0x1,%edi
  40272a:	e8 b1 ea ff ff       	call   4011e0 <exit@plt>

000000000040272f <launch>:
  40272f:	f3 0f 1e fa          	endbr64
  402733:	55                   	push   %rbp
  402734:	48 89 e5             	mov    %rsp,%rbp
  402737:	53                   	push   %rbx
  402738:	48 83 ec 18          	sub    $0x18,%rsp
  40273c:	48 89 fa             	mov    %rdi,%rdx
  40273f:	89 f3                	mov    %esi,%ebx
  402741:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402748:	00 00 
  40274a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40274e:	31 c0                	xor    %eax,%eax
  402750:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402754:	48 89 c6             	mov    %rax,%rsi
  402757:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  40275b:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402761:	48 89 e1             	mov    %rsp,%rcx
  402764:	48 29 c1             	sub    %rax,%rcx
  402767:	48 39 cc             	cmp    %rcx,%rsp
  40276a:	74 12                	je     40277e <launch+0x4f>
  40276c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402773:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40277a:	00 00 
  40277c:	eb e9                	jmp    402767 <launch+0x38>
  40277e:	48 89 f0             	mov    %rsi,%rax
  402781:	25 ff 0f 00 00       	and    $0xfff,%eax
  402786:	48 29 c4             	sub    %rax,%rsp
  402789:	48 85 c0             	test   %rax,%rax
  40278c:	74 06                	je     402794 <launch+0x65>
  40278e:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402794:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402799:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40279d:	48 89 d1             	mov    %rdx,%rcx
  4027a0:	be f4 00 00 00       	mov    $0xf4,%esi
  4027a5:	e8 26 ea ff ff       	call   4011d0 <__memset_chk@plt>
  4027aa:	48 8b 05 ef 4c 00 00 	mov    0x4cef(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4027b1:	48 39 05 60 4d 00 00 	cmp    %rax,0x4d60(%rip)        # 407518 <infile>
  4027b8:	74 42                	je     4027fc <launch+0xcd>
  4027ba:	c7 05 60 4d 00 00 00 	movl   $0x0,0x4d60(%rip)        # 407524 <vlevel>
  4027c1:	00 00 00 
  4027c4:	85 db                	test   %ebx,%ebx
  4027c6:	75 4c                	jne    402814 <launch+0xe5>
  4027c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027cd:	e8 c9 f6 ff ff       	call   401e9b <test>
  4027d2:	83 3d 57 4d 00 00 00 	cmpl   $0x0,0x4d57(%rip)        # 407530 <is_checker>
  4027d9:	75 45                	jne    402820 <launch+0xf1>
  4027db:	48 8d 3d 66 1f 00 00 	lea    0x1f66(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  4027e2:	e8 99 e8 ff ff       	call   401080 <puts@plt>
  4027e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027eb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027f2:	00 00 
  4027f4:	75 40                	jne    402836 <launch+0x107>
  4027f6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027fa:	c9                   	leave
  4027fb:	c3                   	ret
  4027fc:	48 8d 35 2d 1f 00 00 	lea    0x1f2d(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  402803:	bf 02 00 00 00       	mov    $0x2,%edi
  402808:	b8 00 00 00 00       	mov    $0x0,%eax
  40280d:	e8 7e e9 ff ff       	call   401190 <__printf_chk@plt>
  402812:	eb a6                	jmp    4027ba <launch+0x8b>
  402814:	b8 00 00 00 00       	mov    $0x0,%eax
  402819:	e8 ac f6 ff ff       	call   401eca <test2>
  40281e:	eb b2                	jmp    4027d2 <launch+0xa3>
  402820:	48 8d 3d 16 1f 00 00 	lea    0x1f16(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  402827:	e8 54 e8 ff ff       	call   401080 <puts@plt>
  40282c:	b8 00 00 00 00       	mov    $0x0,%eax
  402831:	e8 72 f9 ff ff       	call   4021a8 <check_fail>
  402836:	e8 9a fe ff ff       	call   4026d5 <__stack_chk_fail>

000000000040283b <stable_launch>:
  40283b:	f3 0f 1e fa          	endbr64
  40283f:	55                   	push   %rbp
  402840:	53                   	push   %rbx
  402841:	48 83 ec 08          	sub    $0x8,%rsp
  402845:	89 f5                	mov    %esi,%ebp
  402847:	48 89 3d c2 4c 00 00 	mov    %rdi,0x4cc2(%rip)        # 407510 <global_offset>
  40284e:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402854:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40285a:	b9 32 01 00 00       	mov    $0x132,%ecx
  40285f:	ba 07 00 00 00       	mov    $0x7,%edx
  402864:	be 00 00 10 00       	mov    $0x100000,%esi
  402869:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40286e:	e8 3d e8 ff ff       	call   4010b0 <mmap@plt>
  402873:	48 89 c3             	mov    %rax,%rbx
  402876:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40287c:	75 4a                	jne    4028c8 <stable_launch+0x8d>
  40287e:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402885:	48 89 15 7c 4c 00 00 	mov    %rdx,0x4c7c(%rip)        # 407508 <stack_top>
  40288c:	48 89 e0             	mov    %rsp,%rax
  40288f:	48 89 d4             	mov    %rdx,%rsp
  402892:	48 89 c2             	mov    %rax,%rdx
  402895:	48 89 15 64 4c 00 00 	mov    %rdx,0x4c64(%rip)        # 407500 <global_save_stack>
  40289c:	89 ee                	mov    %ebp,%esi
  40289e:	48 8b 3d 6b 4c 00 00 	mov    0x4c6b(%rip),%rdi        # 407510 <global_offset>
  4028a5:	e8 85 fe ff ff       	call   40272f <launch>
  4028aa:	48 8b 05 4f 4c 00 00 	mov    0x4c4f(%rip),%rax        # 407500 <global_save_stack>
  4028b1:	48 89 c4             	mov    %rax,%rsp
  4028b4:	be 00 00 10 00       	mov    $0x100000,%esi
  4028b9:	48 89 df             	mov    %rbx,%rdi
  4028bc:	e8 bf e8 ff ff       	call   401180 <munmap@plt>
  4028c1:	48 83 c4 08          	add    $0x8,%rsp
  4028c5:	5b                   	pop    %rbx
  4028c6:	5d                   	pop    %rbp
  4028c7:	c3                   	ret
  4028c8:	be 00 00 10 00       	mov    $0x100000,%esi
  4028cd:	48 89 c7             	mov    %rax,%rdi
  4028d0:	e8 ab e8 ff ff       	call   401180 <munmap@plt>
  4028d5:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4028da:	48 8d 15 5f 1b 00 00 	lea    0x1b5f(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  4028e1:	be 02 00 00 00       	mov    $0x2,%esi
  4028e6:	48 8b 3d f3 4b 00 00 	mov    0x4bf3(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4028f2:	e8 09 e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028f7:	bf 01 00 00 00       	mov    $0x1,%edi
  4028fc:	e8 df e8 ff ff       	call   4011e0 <exit@plt>

0000000000402901 <rio_readinitb>:
  402901:	89 37                	mov    %esi,(%rdi)
  402903:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40290a:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40290e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402912:	c3                   	ret

0000000000402913 <sigalrm_handler>:
  402913:	f3 0f 1e fa          	endbr64
  402917:	50                   	push   %rax
  402918:	58                   	pop    %rax
  402919:	48 83 ec 08          	sub    $0x8,%rsp
  40291d:	b9 00 00 00 00       	mov    $0x0,%ecx
  402922:	48 8d 15 3f 1b 00 00 	lea    0x1b3f(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  402929:	be 02 00 00 00       	mov    $0x2,%esi
  40292e:	48 8b 3d ab 4b 00 00 	mov    0x4bab(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402935:	b8 00 00 00 00       	mov    $0x0,%eax
  40293a:	e8 c1 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  40293f:	bf 01 00 00 00       	mov    $0x1,%edi
  402944:	e8 97 e8 ff ff       	call   4011e0 <exit@plt>

0000000000402949 <rio_writen>:
  402949:	41 55                	push   %r13
  40294b:	41 54                	push   %r12
  40294d:	55                   	push   %rbp
  40294e:	53                   	push   %rbx
  40294f:	48 83 ec 08          	sub    $0x8,%rsp
  402953:	41 89 fc             	mov    %edi,%r12d
  402956:	48 89 f5             	mov    %rsi,%rbp
  402959:	49 89 d5             	mov    %rdx,%r13
  40295c:	48 89 d3             	mov    %rdx,%rbx
  40295f:	eb 06                	jmp    402967 <rio_writen+0x1e>
  402961:	48 29 c3             	sub    %rax,%rbx
  402964:	48 01 c5             	add    %rax,%rbp
  402967:	48 85 db             	test   %rbx,%rbx
  40296a:	74 24                	je     402990 <rio_writen+0x47>
  40296c:	48 89 da             	mov    %rbx,%rdx
  40296f:	48 89 ee             	mov    %rbp,%rsi
  402972:	44 89 e7             	mov    %r12d,%edi
  402975:	e8 16 e7 ff ff       	call   401090 <write@plt>
  40297a:	48 85 c0             	test   %rax,%rax
  40297d:	7f e2                	jg     402961 <rio_writen+0x18>
  40297f:	e8 ac e6 ff ff       	call   401030 <__errno_location@plt>
  402984:	83 38 04             	cmpl   $0x4,(%rax)
  402987:	75 15                	jne    40299e <rio_writen+0x55>
  402989:	b8 00 00 00 00       	mov    $0x0,%eax
  40298e:	eb d1                	jmp    402961 <rio_writen+0x18>
  402990:	4c 89 e8             	mov    %r13,%rax
  402993:	48 83 c4 08          	add    $0x8,%rsp
  402997:	5b                   	pop    %rbx
  402998:	5d                   	pop    %rbp
  402999:	41 5c                	pop    %r12
  40299b:	41 5d                	pop    %r13
  40299d:	c3                   	ret
  40299e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029a5:	eb ec                	jmp    402993 <rio_writen+0x4a>

00000000004029a7 <rio_read>:
  4029a7:	41 55                	push   %r13
  4029a9:	41 54                	push   %r12
  4029ab:	55                   	push   %rbp
  4029ac:	53                   	push   %rbx
  4029ad:	48 83 ec 08          	sub    $0x8,%rsp
  4029b1:	48 89 fb             	mov    %rdi,%rbx
  4029b4:	49 89 f5             	mov    %rsi,%r13
  4029b7:	49 89 d4             	mov    %rdx,%r12
  4029ba:	eb 0a                	jmp    4029c6 <rio_read+0x1f>
  4029bc:	e8 6f e6 ff ff       	call   401030 <__errno_location@plt>
  4029c1:	83 38 04             	cmpl   $0x4,(%rax)
  4029c4:	75 5f                	jne    402a25 <rio_read+0x7e>
  4029c6:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4029c9:	85 ed                	test   %ebp,%ebp
  4029cb:	7f 22                	jg     4029ef <rio_read+0x48>
  4029cd:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4029d1:	8b 3b                	mov    (%rbx),%edi
  4029d3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029d8:	48 89 ee             	mov    %rbp,%rsi
  4029db:	e8 00 e7 ff ff       	call   4010e0 <read@plt>
  4029e0:	89 43 04             	mov    %eax,0x4(%rbx)
  4029e3:	85 c0                	test   %eax,%eax
  4029e5:	78 d5                	js     4029bc <rio_read+0x15>
  4029e7:	74 45                	je     402a2e <rio_read+0x87>
  4029e9:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029ed:	eb d7                	jmp    4029c6 <rio_read+0x1f>
  4029ef:	89 e8                	mov    %ebp,%eax
  4029f1:	4c 39 e0             	cmp    %r12,%rax
  4029f4:	72 03                	jb     4029f9 <rio_read+0x52>
  4029f6:	44 89 e5             	mov    %r12d,%ebp
  4029f9:	4c 63 e5             	movslq %ebp,%r12
  4029fc:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a00:	4c 89 e2             	mov    %r12,%rdx
  402a03:	4c 89 ef             	mov    %r13,%rdi
  402a06:	e8 35 e7 ff ff       	call   401140 <memcpy@plt>
  402a0b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a0f:	8b 43 04             	mov    0x4(%rbx),%eax
  402a12:	29 e8                	sub    %ebp,%eax
  402a14:	89 43 04             	mov    %eax,0x4(%rbx)
  402a17:	4c 89 e0             	mov    %r12,%rax
  402a1a:	48 83 c4 08          	add    $0x8,%rsp
  402a1e:	5b                   	pop    %rbx
  402a1f:	5d                   	pop    %rbp
  402a20:	41 5c                	pop    %r12
  402a22:	41 5d                	pop    %r13
  402a24:	c3                   	ret
  402a25:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a2c:	eb ec                	jmp    402a1a <rio_read+0x73>
  402a2e:	b8 00 00 00 00       	mov    $0x0,%eax
  402a33:	eb e5                	jmp    402a1a <rio_read+0x73>

0000000000402a35 <rio_readlineb>:
  402a35:	41 55                	push   %r13
  402a37:	41 54                	push   %r12
  402a39:	55                   	push   %rbp
  402a3a:	53                   	push   %rbx
  402a3b:	48 83 ec 18          	sub    $0x18,%rsp
  402a3f:	49 89 fd             	mov    %rdi,%r13
  402a42:	48 89 f5             	mov    %rsi,%rbp
  402a45:	49 89 d4             	mov    %rdx,%r12
  402a48:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a4f:	00 00 
  402a51:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a56:	31 c0                	xor    %eax,%eax
  402a58:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a5d:	eb 18                	jmp    402a77 <rio_readlineb+0x42>
  402a5f:	85 c0                	test   %eax,%eax
  402a61:	75 65                	jne    402ac8 <rio_readlineb+0x93>
  402a63:	48 83 fb 01          	cmp    $0x1,%rbx
  402a67:	75 3d                	jne    402aa6 <rio_readlineb+0x71>
  402a69:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6e:	eb 3d                	jmp    402aad <rio_readlineb+0x78>
  402a70:	48 83 c3 01          	add    $0x1,%rbx
  402a74:	48 89 d5             	mov    %rdx,%rbp
  402a77:	4c 39 e3             	cmp    %r12,%rbx
  402a7a:	73 2a                	jae    402aa6 <rio_readlineb+0x71>
  402a7c:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a81:	ba 01 00 00 00       	mov    $0x1,%edx
  402a86:	4c 89 ef             	mov    %r13,%rdi
  402a89:	e8 19 ff ff ff       	call   4029a7 <rio_read>
  402a8e:	83 f8 01             	cmp    $0x1,%eax
  402a91:	75 cc                	jne    402a5f <rio_readlineb+0x2a>
  402a93:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a97:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a9c:	88 45 00             	mov    %al,0x0(%rbp)
  402a9f:	3c 0a                	cmp    $0xa,%al
  402aa1:	75 cd                	jne    402a70 <rio_readlineb+0x3b>
  402aa3:	48 89 d5             	mov    %rdx,%rbp
  402aa6:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402aaa:	48 89 d8             	mov    %rbx,%rax
  402aad:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402ab2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ab9:	00 00 
  402abb:	75 14                	jne    402ad1 <rio_readlineb+0x9c>
  402abd:	48 83 c4 18          	add    $0x18,%rsp
  402ac1:	5b                   	pop    %rbx
  402ac2:	5d                   	pop    %rbp
  402ac3:	41 5c                	pop    %r12
  402ac5:	41 5d                	pop    %r13
  402ac7:	c3                   	ret
  402ac8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402acf:	eb dc                	jmp    402aad <rio_readlineb+0x78>
  402ad1:	e8 ff fb ff ff       	call   4026d5 <__stack_chk_fail>

0000000000402ad6 <urlencode>:
  402ad6:	41 54                	push   %r12
  402ad8:	55                   	push   %rbp
  402ad9:	53                   	push   %rbx
  402ada:	48 83 ec 10          	sub    $0x10,%rsp
  402ade:	48 89 fb             	mov    %rdi,%rbx
  402ae1:	48 89 f5             	mov    %rsi,%rbp
  402ae4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402aeb:	00 00 
  402aed:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402af2:	31 c0                	xor    %eax,%eax
  402af4:	e8 a7 e5 ff ff       	call   4010a0 <strlen@plt>
  402af9:	eb 0f                	jmp    402b0a <urlencode+0x34>
  402afb:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402aff:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b03:	48 83 c3 01          	add    $0x1,%rbx
  402b07:	44 89 e0             	mov    %r12d,%eax
  402b0a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b0e:	85 c0                	test   %eax,%eax
  402b10:	0f 84 a8 00 00 00    	je     402bbe <urlencode+0xe8>
  402b16:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b1a:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b1e:	0f 94 c0             	sete   %al
  402b21:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b25:	0f 94 c2             	sete   %dl
  402b28:	08 d0                	or     %dl,%al
  402b2a:	75 cf                	jne    402afb <urlencode+0x25>
  402b2c:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b30:	74 c9                	je     402afb <urlencode+0x25>
  402b32:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b36:	74 c3                	je     402afb <urlencode+0x25>
  402b38:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b3c:	3c 09                	cmp    $0x9,%al
  402b3e:	76 bb                	jbe    402afb <urlencode+0x25>
  402b40:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b44:	3c 19                	cmp    $0x19,%al
  402b46:	76 b3                	jbe    402afb <urlencode+0x25>
  402b48:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b4c:	3c 19                	cmp    $0x19,%al
  402b4e:	76 ab                	jbe    402afb <urlencode+0x25>
  402b50:	41 80 f8 20          	cmp    $0x20,%r8b
  402b54:	74 56                	je     402bac <urlencode+0xd6>
  402b56:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b5a:	3c 5f                	cmp    $0x5f,%al
  402b5c:	0f 96 c0             	setbe  %al
  402b5f:	41 80 f8 09          	cmp    $0x9,%r8b
  402b63:	0f 94 c2             	sete   %dl
  402b66:	08 d0                	or     %dl,%al
  402b68:	74 4f                	je     402bb9 <urlencode+0xe3>
  402b6a:	48 89 e7             	mov    %rsp,%rdi
  402b6d:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b71:	48 8d 0d de 1b 00 00 	lea    0x1bde(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402b78:	ba 08 00 00 00       	mov    $0x8,%edx
  402b7d:	be 02 00 00 00       	mov    $0x2,%esi
  402b82:	b8 00 00 00 00       	mov    $0x0,%eax
  402b87:	e8 94 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b8c:	0f b6 04 24          	movzbl (%rsp),%eax
  402b90:	88 45 00             	mov    %al,0x0(%rbp)
  402b93:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b98:	88 45 01             	mov    %al,0x1(%rbp)
  402b9b:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402ba0:	88 45 02             	mov    %al,0x2(%rbp)
  402ba3:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402ba7:	e9 57 ff ff ff       	jmp    402b03 <urlencode+0x2d>
  402bac:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402bb0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bb4:	e9 4a ff ff ff       	jmp    402b03 <urlencode+0x2d>
  402bb9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bbe:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402bc3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402bca:	00 00 
  402bcc:	75 09                	jne    402bd7 <urlencode+0x101>
  402bce:	48 83 c4 10          	add    $0x10,%rsp
  402bd2:	5b                   	pop    %rbx
  402bd3:	5d                   	pop    %rbp
  402bd4:	41 5c                	pop    %r12
  402bd6:	c3                   	ret
  402bd7:	e8 f9 fa ff ff       	call   4026d5 <__stack_chk_fail>

0000000000402bdc <submitr>:
  402bdc:	f3 0f 1e fa          	endbr64
  402be0:	41 57                	push   %r15
  402be2:	41 56                	push   %r14
  402be4:	41 55                	push   %r13
  402be6:	41 54                	push   %r12
  402be8:	55                   	push   %rbp
  402be9:	53                   	push   %rbx
  402bea:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402bf1:	ff 
  402bf2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bf9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bfe:	4c 39 dc             	cmp    %r11,%rsp
  402c01:	75 ef                	jne    402bf2 <submitr+0x16>
  402c03:	48 83 ec 68          	sub    $0x68,%rsp
  402c07:	49 89 fd             	mov    %rdi,%r13
  402c0a:	41 89 f6             	mov    %esi,%r14d
  402c0d:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402c12:	49 89 cc             	mov    %rcx,%r12
  402c15:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402c1a:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402c1f:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402c26:	00 
  402c27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c2e:	00 00 
  402c30:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c37:	00 
  402c38:	31 c0                	xor    %eax,%eax
  402c3a:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c41:	00 
  402c42:	ba 00 00 00 00       	mov    $0x0,%edx
  402c47:	be 01 00 00 00       	mov    $0x1,%esi
  402c4c:	bf 02 00 00 00       	mov    $0x2,%edi
  402c51:	e8 da e5 ff ff       	call   401230 <socket@plt>
  402c56:	85 c0                	test   %eax,%eax
  402c58:	0f 88 72 02 00 00    	js     402ed0 <submitr+0x2f4>
  402c5e:	89 c3                	mov    %eax,%ebx
  402c60:	4c 89 ef             	mov    %r13,%rdi
  402c63:	e8 a8 e4 ff ff       	call   401110 <gethostbyname@plt>
  402c68:	48 85 c0             	test   %rax,%rax
  402c6b:	0f 84 ab 02 00 00    	je     402f1c <submitr+0x340>
  402c71:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c76:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c7a:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c7f:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c86:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c8a:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c8e:	48 8b 30             	mov    (%rax),%rsi
  402c91:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c96:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c9b:	e8 80 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402ca0:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402ca5:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402cab:	ba 10 00 00 00       	mov    $0x10,%edx
  402cb0:	48 89 ee             	mov    %rbp,%rsi
  402cb3:	89 df                	mov    %ebx,%edi
  402cb5:	e8 36 e5 ff ff       	call   4011f0 <connect@plt>
  402cba:	85 c0                	test   %eax,%eax
  402cbc:	0f 88 cc 02 00 00    	js     402f8e <submitr+0x3b2>
  402cc2:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402cc7:	e8 d4 e3 ff ff       	call   4010a0 <strlen@plt>
  402ccc:	49 89 c6             	mov    %rax,%r14
  402ccf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402cd4:	e8 c7 e3 ff ff       	call   4010a0 <strlen@plt>
  402cd9:	48 89 c5             	mov    %rax,%rbp
  402cdc:	4c 89 e7             	mov    %r12,%rdi
  402cdf:	e8 bc e3 ff ff       	call   4010a0 <strlen@plt>
  402ce4:	48 01 c5             	add    %rax,%rbp
  402ce7:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402cec:	e8 af e3 ff ff       	call   4010a0 <strlen@plt>
  402cf1:	48 01 c5             	add    %rax,%rbp
  402cf4:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402cf8:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402cff:	00 
  402d00:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402d06:	0f 87 e6 02 00 00    	ja     402ff2 <submitr+0x416>
  402d0c:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d13:	00 
  402d14:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d19:	b8 00 00 00 00       	mov    $0x0,%eax
  402d1e:	48 89 f7             	mov    %rsi,%rdi
  402d21:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d24:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d29:	e8 a8 fd ff ff       	call   402ad6 <urlencode>
  402d2e:	85 c0                	test   %eax,%eax
  402d30:	0f 88 2e 03 00 00    	js     403064 <submitr+0x488>
  402d36:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d3d:	00 
  402d3e:	48 83 ec 08          	sub    $0x8,%rsp
  402d42:	41 55                	push   %r13
  402d44:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d4b:	00 
  402d4c:	50                   	push   %rax
  402d4d:	41 54                	push   %r12
  402d4f:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d54:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d59:	48 8d 0d 30 17 00 00 	lea    0x1730(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d60:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d65:	be 02 00 00 00       	mov    $0x2,%esi
  402d6a:	48 89 ef             	mov    %rbp,%rdi
  402d6d:	b8 00 00 00 00       	mov    $0x0,%eax
  402d72:	e8 a9 e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d77:	48 83 c4 20          	add    $0x20,%rsp
  402d7b:	48 89 ef             	mov    %rbp,%rdi
  402d7e:	e8 1d e3 ff ff       	call   4010a0 <strlen@plt>
  402d83:	48 89 c2             	mov    %rax,%rdx
  402d86:	48 89 ee             	mov    %rbp,%rsi
  402d89:	89 df                	mov    %ebx,%edi
  402d8b:	e8 b9 fb ff ff       	call   402949 <rio_writen>
  402d90:	48 85 c0             	test   %rax,%rax
  402d93:	0f 88 53 03 00 00    	js     4030ec <submitr+0x510>
  402d99:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d9e:	89 de                	mov    %ebx,%esi
  402da0:	48 89 ef             	mov    %rbp,%rdi
  402da3:	e8 59 fb ff ff       	call   402901 <rio_readinitb>
  402da8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402daf:	00 
  402db0:	ba 00 20 00 00       	mov    $0x2000,%edx
  402db5:	48 89 ef             	mov    %rbp,%rdi
  402db8:	e8 78 fc ff ff       	call   402a35 <rio_readlineb>
  402dbd:	48 85 c0             	test   %rax,%rax
  402dc0:	0f 8e 92 03 00 00    	jle    403158 <submitr+0x57c>
  402dc6:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402dcb:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402dd2:	00 
  402dd3:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dda:	00 
  402ddb:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402de2:	00 
  402de3:	48 8d 35 73 19 00 00 	lea    0x1973(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402dea:	b8 00 00 00 00       	mov    $0x0,%eax
  402def:	e8 7c e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402df4:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dfb:	00 
  402dfc:	48 8d 35 71 19 00 00 	lea    0x1971(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402e03:	e8 e8 e2 ff ff       	call   4010f0 <strcmp@plt>
  402e08:	85 c0                	test   %eax,%eax
  402e0a:	0f 84 c8 03 00 00    	je     4031d8 <submitr+0x5fc>
  402e10:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e17:	00 
  402e18:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e1d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e22:	e8 0e fc ff ff       	call   402a35 <rio_readlineb>
  402e27:	48 85 c0             	test   %rax,%rax
  402e2a:	7f c8                	jg     402df4 <submitr+0x218>
  402e2c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e33:	3a 20 43 
  402e36:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e3d:	20 75 6e 
  402e40:	49 89 07             	mov    %rax,(%r15)
  402e43:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e47:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e4e:	74 6f 20 
  402e51:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e58:	68 65 61 
  402e5b:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e5f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e63:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e6a:	66 72 6f 
  402e6d:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e74:	6f 6c 61 
  402e77:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e7b:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e7f:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e86:	6c 61 62 
  402e89:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e90:	65 72 00 
  402e93:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e97:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e9b:	89 df                	mov    %ebx,%edi
  402e9d:	e8 2e e2 ff ff       	call   4010d0 <close@plt>
  402ea2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ea7:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402eae:	00 
  402eaf:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402eb6:	00 00 
  402eb8:	0f 85 67 04 00 00    	jne    403325 <submitr+0x749>
  402ebe:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402ec5:	5b                   	pop    %rbx
  402ec6:	5d                   	pop    %rbp
  402ec7:	41 5c                	pop    %r12
  402ec9:	41 5d                	pop    %r13
  402ecb:	41 5e                	pop    %r14
  402ecd:	41 5f                	pop    %r15
  402ecf:	c3                   	ret
  402ed0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ed7:	3a 20 43 
  402eda:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ee1:	20 75 6e 
  402ee4:	49 89 07             	mov    %rax,(%r15)
  402ee7:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402eeb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ef2:	74 6f 20 
  402ef5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402efc:	65 20 73 
  402eff:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f03:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f07:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402f0e:	65 74 00 
  402f11:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402f15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f1a:	eb 8b                	jmp    402ea7 <submitr+0x2cb>
  402f1c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f23:	3a 20 44 
  402f26:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f2d:	20 75 6e 
  402f30:	49 89 07             	mov    %rax,(%r15)
  402f33:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f37:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f3e:	74 6f 20 
  402f41:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f48:	76 65 20 
  402f4b:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f4f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f53:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f5a:	61 62 20 
  402f5d:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f64:	72 20 61 
  402f67:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f6b:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f6f:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f76:	73 73 00 
  402f79:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f7d:	89 df                	mov    %ebx,%edi
  402f7f:	e8 4c e1 ff ff       	call   4010d0 <close@plt>
  402f84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f89:	e9 19 ff ff ff       	jmp    402ea7 <submitr+0x2cb>
  402f8e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f95:	3a 20 55 
  402f98:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f9f:	20 74 6f 
  402fa2:	49 89 07             	mov    %rax,(%r15)
  402fa5:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fa9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fb0:	65 63 74 
  402fb3:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402fba:	68 65 20 
  402fbd:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fc1:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fc5:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402fcc:	6c 61 62 
  402fcf:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fd6:	65 72 00 
  402fd9:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402fdd:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402fe1:	89 df                	mov    %ebx,%edi
  402fe3:	e8 e8 e0 ff ff       	call   4010d0 <close@plt>
  402fe8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fed:	e9 b5 fe ff ff       	jmp    402ea7 <submitr+0x2cb>
  402ff2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402ff9:	3a 20 52 
  402ffc:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403003:	20 73 74 
  403006:	49 89 07             	mov    %rax,(%r15)
  403009:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40300d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403014:	74 6f 6f 
  403017:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40301e:	65 2e 20 
  403021:	49 89 47 10          	mov    %rax,0x10(%r15)
  403025:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403029:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  403030:	61 73 65 
  403033:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40303a:	49 54 52 
  40303d:	49 89 47 20          	mov    %rax,0x20(%r15)
  403041:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403045:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40304c:	55 46 00 
  40304f:	49 89 47 30          	mov    %rax,0x30(%r15)
  403053:	89 df                	mov    %ebx,%edi
  403055:	e8 76 e0 ff ff       	call   4010d0 <close@plt>
  40305a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40305f:	e9 43 fe ff ff       	jmp    402ea7 <submitr+0x2cb>
  403064:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40306b:	3a 20 55 
  40306e:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  403075:	20 73 74 
  403078:	49 89 07             	mov    %rax,(%r15)
  40307b:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40307f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403086:	63 6f 6e 
  403089:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403090:	20 61 6e 
  403093:	49 89 47 10          	mov    %rax,0x10(%r15)
  403097:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40309b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4030a2:	67 61 6c 
  4030a5:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4030ac:	6e 70 72 
  4030af:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030b3:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030b7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4030be:	6c 65 20 
  4030c1:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4030c8:	63 74 65 
  4030cb:	49 89 47 30          	mov    %rax,0x30(%r15)
  4030cf:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4030d3:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  4030da:	00 
  4030db:	89 df                	mov    %ebx,%edi
  4030dd:	e8 ee df ff ff       	call   4010d0 <close@plt>
  4030e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030e7:	e9 bb fd ff ff       	jmp    402ea7 <submitr+0x2cb>
  4030ec:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030f3:	3a 20 43 
  4030f6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030fd:	20 75 6e 
  403100:	49 89 07             	mov    %rax,(%r15)
  403103:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403107:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40310e:	74 6f 20 
  403111:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403118:	20 74 6f 
  40311b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40311f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403123:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40312a:	41 75 74 
  40312d:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403134:	73 65 72 
  403137:	49 89 47 20          	mov    %rax,0x20(%r15)
  40313b:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40313f:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403146:	00 
  403147:	89 df                	mov    %ebx,%edi
  403149:	e8 82 df ff ff       	call   4010d0 <close@plt>
  40314e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403153:	e9 4f fd ff ff       	jmp    402ea7 <submitr+0x2cb>
  403158:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40315f:	3a 20 43 
  403162:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403169:	20 75 6e 
  40316c:	49 89 07             	mov    %rax,(%r15)
  40316f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403173:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40317a:	74 6f 20 
  40317d:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403184:	66 69 72 
  403187:	49 89 47 10          	mov    %rax,0x10(%r15)
  40318b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40318f:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403196:	61 64 65 
  403199:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4031a0:	6d 20 41 
  4031a3:	49 89 47 20          	mov    %rax,0x20(%r15)
  4031a7:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4031ab:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4031b2:	6c 61 62 
  4031b5:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4031bc:	65 72 00 
  4031bf:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  4031c3:	49 89 57 36          	mov    %rdx,0x36(%r15)
  4031c7:	89 df                	mov    %ebx,%edi
  4031c9:	e8 02 df ff ff       	call   4010d0 <close@plt>
  4031ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d3:	e9 cf fc ff ff       	jmp    402ea7 <submitr+0x2cb>
  4031d8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031df:	00 
  4031e0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4031e5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031ea:	e8 46 f8 ff ff       	call   402a35 <rio_readlineb>
  4031ef:	48 85 c0             	test   %rax,%rax
  4031f2:	7e 78                	jle    40326c <submitr+0x690>
  4031f4:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031f9:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403200:	0f 85 e6 00 00 00    	jne    4032ec <submitr+0x710>
  403206:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40320d:	00 
  40320e:	4c 89 ff             	mov    %r15,%rdi
  403211:	e8 5a de ff ff       	call   401070 <strcpy@plt>
  403216:	89 df                	mov    %ebx,%edi
  403218:	e8 b3 de ff ff       	call   4010d0 <close@plt>
  40321d:	48 8d 35 4a 15 00 00 	lea    0x154a(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  403224:	4c 89 ff             	mov    %r15,%rdi
  403227:	e8 c4 de ff ff       	call   4010f0 <strcmp@plt>
  40322c:	85 c0                	test   %eax,%eax
  40322e:	0f 84 73 fc ff ff    	je     402ea7 <submitr+0x2cb>
  403234:	48 8d 35 37 15 00 00 	lea    0x1537(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  40323b:	4c 89 ff             	mov    %r15,%rdi
  40323e:	e8 ad de ff ff       	call   4010f0 <strcmp@plt>
  403243:	85 c0                	test   %eax,%eax
  403245:	0f 84 5c fc ff ff    	je     402ea7 <submitr+0x2cb>
  40324b:	48 8d 35 25 15 00 00 	lea    0x1525(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  403252:	4c 89 ff             	mov    %r15,%rdi
  403255:	e8 96 de ff ff       	call   4010f0 <strcmp@plt>
  40325a:	85 c0                	test   %eax,%eax
  40325c:	0f 84 45 fc ff ff    	je     402ea7 <submitr+0x2cb>
  403262:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403267:	e9 3b fc ff ff       	jmp    402ea7 <submitr+0x2cb>
  40326c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403273:	3a 20 43 
  403276:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40327d:	20 75 6e 
  403280:	49 89 07             	mov    %rax,(%r15)
  403283:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403287:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40328e:	74 6f 20 
  403291:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403298:	73 74 61 
  40329b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40329f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4032a3:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4032aa:	65 73 73 
  4032ad:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4032b4:	72 6f 6d 
  4032b7:	49 89 47 20          	mov    %rax,0x20(%r15)
  4032bb:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4032bf:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4032c6:	6c 61 62 
  4032c9:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4032d0:	65 72 00 
  4032d3:	49 89 47 30          	mov    %rax,0x30(%r15)
  4032d7:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4032db:	89 df                	mov    %ebx,%edi
  4032dd:	e8 ee dd ff ff       	call   4010d0 <close@plt>
  4032e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e7:	e9 bb fb ff ff       	jmp    402ea7 <submitr+0x2cb>
  4032ec:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032f3:	00 
  4032f4:	48 8d 0d f5 11 00 00 	lea    0x11f5(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  4032fb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403302:	be 02 00 00 00       	mov    $0x2,%esi
  403307:	4c 89 ff             	mov    %r15,%rdi
  40330a:	b8 00 00 00 00       	mov    $0x0,%eax
  40330f:	e8 0c df ff ff       	call   401220 <__sprintf_chk@plt>
  403314:	89 df                	mov    %ebx,%edi
  403316:	e8 b5 dd ff ff       	call   4010d0 <close@plt>
  40331b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403320:	e9 82 fb ff ff       	jmp    402ea7 <submitr+0x2cb>
  403325:	e8 ab f3 ff ff       	call   4026d5 <__stack_chk_fail>

000000000040332a <init_timeout>:
  40332a:	f3 0f 1e fa          	endbr64
  40332e:	85 ff                	test   %edi,%edi
  403330:	74 26                	je     403358 <init_timeout+0x2e>
  403332:	53                   	push   %rbx
  403333:	89 fb                	mov    %edi,%ebx
  403335:	78 1a                	js     403351 <init_timeout+0x27>
  403337:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 402913 <sigalrm_handler>
  40333e:	bf 0e 00 00 00       	mov    $0xe,%edi
  403343:	e8 b8 dd ff ff       	call   401100 <signal@plt>
  403348:	89 df                	mov    %ebx,%edi
  40334a:	e8 71 dd ff ff       	call   4010c0 <alarm@plt>
  40334f:	5b                   	pop    %rbx
  403350:	c3                   	ret
  403351:	bb 00 00 00 00       	mov    $0x0,%ebx
  403356:	eb df                	jmp    403337 <init_timeout+0xd>
  403358:	c3                   	ret

0000000000403359 <init_driver>:
  403359:	f3 0f 1e fa          	endbr64
  40335d:	41 54                	push   %r12
  40335f:	55                   	push   %rbp
  403360:	53                   	push   %rbx
  403361:	48 83 ec 20          	sub    $0x20,%rsp
  403365:	48 89 fd             	mov    %rdi,%rbp
  403368:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40336f:	00 00 
  403371:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403376:	31 c0                	xor    %eax,%eax
  403378:	be 01 00 00 00       	mov    $0x1,%esi
  40337d:	bf 0d 00 00 00       	mov    $0xd,%edi
  403382:	e8 79 dd ff ff       	call   401100 <signal@plt>
  403387:	be 01 00 00 00       	mov    $0x1,%esi
  40338c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403391:	e8 6a dd ff ff       	call   401100 <signal@plt>
  403396:	be 01 00 00 00       	mov    $0x1,%esi
  40339b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033a0:	e8 5b dd ff ff       	call   401100 <signal@plt>
  4033a5:	ba 00 00 00 00       	mov    $0x0,%edx
  4033aa:	be 01 00 00 00       	mov    $0x1,%esi
  4033af:	bf 02 00 00 00       	mov    $0x2,%edi
  4033b4:	e8 77 de ff ff       	call   401230 <socket@plt>
  4033b9:	85 c0                	test   %eax,%eax
  4033bb:	0f 88 93 00 00 00    	js     403454 <init_driver+0xfb>
  4033c1:	89 c3                	mov    %eax,%ebx
  4033c3:	48 8d 3d b0 13 00 00 	lea    0x13b0(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4033ca:	e8 41 dd ff ff       	call   401110 <gethostbyname@plt>
  4033cf:	48 85 c0             	test   %rax,%rax
  4033d2:	0f 84 c9 00 00 00    	je     4034a1 <init_driver+0x148>
  4033d8:	49 89 e4             	mov    %rsp,%r12
  4033db:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4033df:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4033e3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033e9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033ed:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033f1:	48 8b 30             	mov    (%rax),%rsi
  4033f4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033f9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033fe:	e8 1d dd ff ff       	call   401120 <__memmove_chk@plt>
  403403:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  40340a:	ba 10 00 00 00       	mov    $0x10,%edx
  40340f:	4c 89 e6             	mov    %r12,%rsi
  403412:	89 df                	mov    %ebx,%edi
  403414:	e8 d7 dd ff ff       	call   4011f0 <connect@plt>
  403419:	85 c0                	test   %eax,%eax
  40341b:	0f 88 e5 00 00 00    	js     403506 <init_driver+0x1ad>
  403421:	89 df                	mov    %ebx,%edi
  403423:	e8 a8 dc ff ff       	call   4010d0 <close@plt>
  403428:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40342e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403432:	b8 00 00 00 00       	mov    $0x0,%eax
  403437:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40343c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403443:	00 00 
  403445:	0f 85 27 01 00 00    	jne    403572 <init_driver+0x219>
  40344b:	48 83 c4 20          	add    $0x20,%rsp
  40344f:	5b                   	pop    %rbx
  403450:	5d                   	pop    %rbp
  403451:	41 5c                	pop    %r12
  403453:	c3                   	ret
  403454:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40345b:	3a 20 43 
  40345e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403465:	20 75 6e 
  403468:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40346c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403470:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403477:	74 6f 20 
  40347a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403481:	65 20 73 
  403484:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403488:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40348c:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  403493:	65 74 00 
  403496:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  40349a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40349f:	eb 96                	jmp    403437 <init_driver+0xde>
  4034a1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4034a8:	3a 20 44 
  4034ab:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4034b2:	20 75 6e 
  4034b5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034b9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034bd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034c4:	74 6f 20 
  4034c7:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4034ce:	76 65 20 
  4034d1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034d5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034d9:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4034e0:	65 72 20 
  4034e3:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034ea:	73 73 00 
  4034ed:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034f1:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034f5:	89 df                	mov    %ebx,%edi
  4034f7:	e8 d4 db ff ff       	call   4010d0 <close@plt>
  4034fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403501:	e9 31 ff ff ff       	jmp    403437 <init_driver+0xde>
  403506:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  40350d:	30 35 2e 
  403510:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403514:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  40351b:	33 32 00 
  40351e:	48 89 45 07          	mov    %rax,0x7(%rbp)
  403522:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403529:	3a 20 55 
  40352c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403533:	20 74 6f 
  403536:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40353a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40353e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403545:	65 63 74 
  403548:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40354f:	65 72 76 
  403552:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403556:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40355a:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  403561:	89 df                	mov    %ebx,%edi
  403563:	e8 68 db ff ff       	call   4010d0 <close@plt>
  403568:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40356d:	e9 c5 fe ff ff       	jmp    403437 <init_driver+0xde>
  403572:	e8 5e f1 ff ff       	call   4026d5 <__stack_chk_fail>

0000000000403577 <driver_post>:
  403577:	f3 0f 1e fa          	endbr64
  40357b:	53                   	push   %rbx
  40357c:	4c 89 cb             	mov    %r9,%rbx
  40357f:	45 85 c0             	test   %r8d,%r8d
  403582:	75 18                	jne    40359c <driver_post+0x25>
  403584:	48 85 ff             	test   %rdi,%rdi
  403587:	74 05                	je     40358e <driver_post+0x17>
  403589:	80 3f 00             	cmpb   $0x0,(%rdi)
  40358c:	75 37                	jne    4035c5 <driver_post+0x4e>
  40358e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403593:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403597:	44 89 c0             	mov    %r8d,%eax
  40359a:	5b                   	pop    %rbx
  40359b:	c3                   	ret
  40359c:	48 89 ca             	mov    %rcx,%rdx
  40359f:	48 8d 35 e3 11 00 00 	lea    0x11e3(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  4035a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4035ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4035b0:	e8 db db ff ff       	call   401190 <__printf_chk@plt>
  4035b5:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035ba:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035be:	b8 00 00 00 00       	mov    $0x0,%eax
  4035c3:	eb d5                	jmp    40359a <driver_post+0x23>
  4035c5:	48 83 ec 08          	sub    $0x8,%rsp
  4035c9:	41 51                	push   %r9
  4035cb:	49 89 c9             	mov    %rcx,%r9
  4035ce:	49 89 d0             	mov    %rdx,%r8
  4035d1:	48 89 f9             	mov    %rdi,%rcx
  4035d4:	48 89 f2             	mov    %rsi,%rdx
  4035d7:	be 50 00 00 00       	mov    $0x50,%esi
  4035dc:	48 8d 3d 97 11 00 00 	lea    0x1197(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4035e3:	e8 f4 f5 ff ff       	call   402bdc <submitr>
  4035e8:	48 83 c4 10          	add    $0x10,%rsp
  4035ec:	eb ac                	jmp    40359a <driver_post+0x23>

00000000004035ee <check>:
  4035ee:	f3 0f 1e fa          	endbr64
  4035f2:	89 f8                	mov    %edi,%eax
  4035f4:	c1 e8 1c             	shr    $0x1c,%eax
  4035f7:	74 1d                	je     403616 <check+0x28>
  4035f9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035fe:	83 f9 1f             	cmp    $0x1f,%ecx
  403601:	7f 0d                	jg     403610 <check+0x22>
  403603:	89 f8                	mov    %edi,%eax
  403605:	d3 e8                	shr    %cl,%eax
  403607:	3c 0a                	cmp    $0xa,%al
  403609:	74 11                	je     40361c <check+0x2e>
  40360b:	83 c1 08             	add    $0x8,%ecx
  40360e:	eb ee                	jmp    4035fe <check+0x10>
  403610:	b8 01 00 00 00       	mov    $0x1,%eax
  403615:	c3                   	ret
  403616:	b8 00 00 00 00       	mov    $0x0,%eax
  40361b:	c3                   	ret
  40361c:	b8 00 00 00 00       	mov    $0x0,%eax
  403621:	c3                   	ret

0000000000403622 <gencookie>:
  403622:	f3 0f 1e fa          	endbr64
  403626:	53                   	push   %rbx
  403627:	83 c7 01             	add    $0x1,%edi
  40362a:	e8 11 da ff ff       	call   401040 <srandom@plt>
  40362f:	e8 2c db ff ff       	call   401160 <random@plt>
  403634:	89 c3                	mov    %eax,%ebx
  403636:	89 c7                	mov    %eax,%edi
  403638:	e8 b1 ff ff ff       	call   4035ee <check>
  40363d:	85 c0                	test   %eax,%eax
  40363f:	74 ee                	je     40362f <gencookie+0xd>
  403641:	89 d8                	mov    %ebx,%eax
  403643:	5b                   	pop    %rbx
  403644:	c3                   	ret

Disassembly of section .fini:

0000000000403648 <_fini>:
  403648:	f3 0f 1e fa          	endbr64
  40364c:	48 83 ec 08          	sub    $0x8,%rsp
  403650:	48 83 c4 08          	add    $0x8,%rsp
  403654:	c3                   	ret
