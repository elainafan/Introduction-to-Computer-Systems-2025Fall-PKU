
rtarget:     file format elf64-x86-64


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
  401258:	48 c7 c7 d7 14 40 00 	mov    $0x4014d7,%rdi
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
  401403:	e8 13 22 00 00       	call   40361b <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 06 22 00 00       	call   40361b <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 07 03 00 00       	call   40173c <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 50                	jne    40148b <initialize_target+0xc7>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	83 3d 1d 60 00 00 00 	cmpl   $0x0,0x601d(%rip)        # 407480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 60 00 00 00 	cmpl   $0x0,0x60c4(%rip)        # 407530 <is_checker>
  40146c:	74 35                	je     4014a3 <initialize_target+0xdf>
  40146e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401475:	00 
  401476:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	75 51                	jne    4014d2 <initialize_target+0x10e>
  401481:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401488:	5b                   	pop    %rbx
  401489:	5d                   	pop    %rbp
  40148a:	c3                   	ret
  40148b:	bf 00 00 00 00       	mov    $0x0,%edi
  401490:	e8 bb fc ff ff       	call   401150 <time@plt>
  401495:	89 c7                	mov    %eax,%edi
  401497:	e8 a4 fb ff ff       	call   401040 <srandom@plt>
  40149c:	e8 bf fc ff ff       	call   401160 <random@plt>
  4014a1:	eb 9d                	jmp    401440 <initialize_target+0x7c>
  4014a3:	48 89 e7             	mov    %rsp,%rdi
  4014a6:	e8 a7 1e 00 00       	call   403352 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 f7 11 00 00       	call   4026ce <__stack_chk_fail>

00000000004014d7 <main>:
  4014d7:	f3 0f 1e fa          	endbr64
  4014db:	41 56                	push   %r14
  4014dd:	41 55                	push   %r13
  4014df:	41 54                	push   %r12
  4014e1:	55                   	push   %rbp
  4014e2:	53                   	push   %rbx
  4014e3:	48 83 ec 60          	sub    $0x60,%rsp
  4014e7:	89 fd                	mov    %edi,%ebp
  4014e9:	48 89 f3             	mov    %rsi,%rbx
  4014ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014f3:	00 00 
  4014f5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014fa:	31 c0                	xor    %eax,%eax
  4014fc:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401503:	74 65 64 
  401506:	48 89 04 24          	mov    %rax,(%rsp)
  40150a:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401511:	43 4e 00 
  401514:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401519:	48 c7 c6 bd 25 40 00 	mov    $0x4025bd,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 63 25 40 00 	mov    $0x402563,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 17 26 40 00 	mov    $0x402617,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 5f 00 00 00 	cmpl   $0x0,0x5fdd(%rip)        # 407530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 5f 00 00 	mov    0x5f3d(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 5f 00 00 	mov    %rax,0x5fae(%rip)        # 407518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 71 26 40 00 	mov    $0x402671,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 5f 00 00 	mov    0x5f0b(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 5f 00 00 	mov    %rax,0x5f57(%rip)        # 407518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 5e 00 00 	mov    0x5ef3(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 5f 00 00 	mov    0x5f00(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 5e 00 00 	mov    0x5ec0(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401600:	e8 bb fb ff ff       	call   4011c0 <strtoul@plt>
  401605:	41 89 c6             	mov    %eax,%r14d
  401608:	4c 89 e2             	mov    %r12,%rdx
  40160b:	48 89 de             	mov    %rbx,%rsi
  40160e:	89 ef                	mov    %ebp,%edi
  401610:	e8 9b fb ff ff       	call   4011b0 <getopt@plt>
  401615:	3c ff                	cmp    $0xff,%al
  401617:	74 7a                	je     401693 <main+0x1bc>
  401619:	8d 50 9f             	lea    -0x61(%rax),%edx
  40161c:	80 fa 14             	cmp    $0x14,%dl
  40161f:	77 51                	ja     401672 <main+0x19b>
  401621:	0f b6 d2             	movzbl %dl,%edx
  401624:	48 8d 0d 75 31 00 00 	lea    0x3175(%rip),%rcx        # 4047a0 <_IO_stdin_used+0x7a0>
  40162b:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  40162f:	48 01 ca             	add    %rcx,%rdx
  401632:	3e ff e2             	notrack jmp *%rdx
  401635:	ba 0a 00 00 00       	mov    $0xa,%edx
  40163a:	be 00 00 00 00       	mov    $0x0,%esi
  40163f:	48 8b 3d 7a 5e 00 00 	mov    0x5e7a(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 5e 00 00 00 	movl   $0x0,0x5e26(%rip)        # 407480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 5e 00 00 	mov    0x5e55(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 5e 00 00 00 	cmpl   $0x0,0x5e89(%rip)        # 407530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 5e 00 00 	cmp    %r14d,0x5e78(%rip)        # 407528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 5a 00 00 	mov    0x5a84(%rip),%rsi        # 407140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 b9 0a 00 00       	call   4021a1 <check_fail>
  4016e8:	8b 15 3e 5e 00 00    	mov    0x5e3e(%rip),%edx        # 40752c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 5d 00 00 	mov    0x5d78(%rip),%rdi        # 407488 <buf_offset>
  401710:	e8 13 10 00 00       	call   402728 <launch>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  40171f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401726:	00 00 
  401728:	75 0d                	jne    401737 <main+0x260>
  40172a:	48 83 c4 60          	add    $0x60,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	41 5c                	pop    %r12
  401732:	41 5d                	pop    %r13
  401734:	41 5e                	pop    %r14
  401736:	c3                   	ret
  401737:	e8 92 0f 00 00       	call   4026ce <__stack_chk_fail>

000000000040173c <scramble>:
  40173c:	f3 0f 1e fa          	endbr64
  401740:	48 83 ec 38          	sub    $0x38,%rsp
  401744:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40174b:	00 00 
  40174d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401752:	31 c0                	xor    %eax,%eax
  401754:	eb 10                	jmp    401766 <scramble+0x2a>
  401756:	69 d0 a5 ae 00 00    	imul   $0xaea5,%eax,%edx
  40175c:	01 fa                	add    %edi,%edx
  40175e:	89 c1                	mov    %eax,%ecx
  401760:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401763:	83 c0 01             	add    $0x1,%eax
  401766:	83 f8 09             	cmp    $0x9,%eax
  401769:	76 eb                	jbe    401756 <scramble+0x1a>
  40176b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40176f:	69 c0 38 60 00 00    	imul   $0x6038,%eax,%eax
  401775:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401779:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40177d:	69 c0 46 68 00 00    	imul   $0x6846,%eax,%eax
  401783:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401787:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40178b:	69 c0 1d 63 00 00    	imul   $0x631d,%eax,%eax
  401791:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401795:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401799:	69 c0 cd cf 00 00    	imul   $0xcfcd,%eax,%eax
  40179f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a3:	8b 04 24             	mov    (%rsp),%eax
  4017a6:	69 c0 cf 28 00 00    	imul   $0x28cf,%eax,%eax
  4017ac:	89 04 24             	mov    %eax,(%rsp)
  4017af:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017b3:	69 c0 27 ee 00 00    	imul   $0xee27,%eax,%eax
  4017b9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017bd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017c1:	69 c0 45 d1 00 00    	imul   $0xd145,%eax,%eax
  4017c7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017cb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017cf:	69 c0 4c df 00 00    	imul   $0xdf4c,%eax,%eax
  4017d5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017d9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017dd:	69 c0 14 0a 00 00    	imul   $0xa14,%eax,%eax
  4017e3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017e7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017eb:	69 c0 62 6f 00 00    	imul   $0x6f62,%eax,%eax
  4017f1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017f5:	8b 04 24             	mov    (%rsp),%eax
  4017f8:	69 c0 28 13 00 00    	imul   $0x1328,%eax,%eax
  4017fe:	89 04 24             	mov    %eax,(%rsp)
  401801:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401805:	69 c0 ba 3e 00 00    	imul   $0x3eba,%eax,%eax
  40180b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40180f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401813:	69 c0 a6 d8 00 00    	imul   $0xd8a6,%eax,%eax
  401819:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40181d:	8b 04 24             	mov    (%rsp),%eax
  401820:	69 c0 31 dd 00 00    	imul   $0xdd31,%eax,%eax
  401826:	89 04 24             	mov    %eax,(%rsp)
  401829:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40182d:	69 c0 0d 3a 00 00    	imul   $0x3a0d,%eax,%eax
  401833:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401837:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40183b:	69 c0 5b ae 00 00    	imul   $0xae5b,%eax,%eax
  401841:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401845:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401849:	69 c0 dc 6c 00 00    	imul   $0x6cdc,%eax,%eax
  40184f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401853:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401857:	69 c0 30 09 00 00    	imul   $0x930,%eax,%eax
  40185d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401861:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401865:	69 c0 d7 f1 00 00    	imul   $0xf1d7,%eax,%eax
  40186b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40186f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401873:	69 c0 86 7a 00 00    	imul   $0x7a86,%eax,%eax
  401879:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40187d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401881:	69 c0 3d 5d 00 00    	imul   $0x5d3d,%eax,%eax
  401887:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40188b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40188f:	69 c0 6e 54 00 00    	imul   $0x546e,%eax,%eax
  401895:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401899:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40189d:	69 c0 db 5e 00 00    	imul   $0x5edb,%eax,%eax
  4018a3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018a7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018ab:	69 c0 0c 87 00 00    	imul   $0x870c,%eax,%eax
  4018b1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018b5:	8b 04 24             	mov    (%rsp),%eax
  4018b8:	69 c0 55 ff 00 00    	imul   $0xff55,%eax,%eax
  4018be:	89 04 24             	mov    %eax,(%rsp)
  4018c1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018c5:	69 c0 c2 6c 00 00    	imul   $0x6cc2,%eax,%eax
  4018cb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018cf:	8b 04 24             	mov    (%rsp),%eax
  4018d2:	69 c0 b6 b0 00 00    	imul   $0xb0b6,%eax,%eax
  4018d8:	89 04 24             	mov    %eax,(%rsp)
  4018db:	8b 04 24             	mov    (%rsp),%eax
  4018de:	69 c0 34 67 00 00    	imul   $0x6734,%eax,%eax
  4018e4:	89 04 24             	mov    %eax,(%rsp)
  4018e7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018eb:	69 c0 c1 de 00 00    	imul   $0xdec1,%eax,%eax
  4018f1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018f5:	8b 04 24             	mov    (%rsp),%eax
  4018f8:	69 c0 12 89 00 00    	imul   $0x8912,%eax,%eax
  4018fe:	89 04 24             	mov    %eax,(%rsp)
  401901:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401905:	69 c0 f7 fb 00 00    	imul   $0xfbf7,%eax,%eax
  40190b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40190f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401913:	69 c0 13 b3 00 00    	imul   $0xb313,%eax,%eax
  401919:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40191d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401921:	69 c0 0e 4e 00 00    	imul   $0x4e0e,%eax,%eax
  401927:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40192b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40192f:	69 c0 ce 38 00 00    	imul   $0x38ce,%eax,%eax
  401935:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401939:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40193d:	69 c0 41 95 00 00    	imul   $0x9541,%eax,%eax
  401943:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401947:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40194b:	69 c0 8c 5a 00 00    	imul   $0x5a8c,%eax,%eax
  401951:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401955:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401959:	69 c0 02 1c 00 00    	imul   $0x1c02,%eax,%eax
  40195f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401963:	8b 04 24             	mov    (%rsp),%eax
  401966:	69 c0 02 21 00 00    	imul   $0x2102,%eax,%eax
  40196c:	89 04 24             	mov    %eax,(%rsp)
  40196f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401973:	69 c0 b6 e2 00 00    	imul   $0xe2b6,%eax,%eax
  401979:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40197d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401981:	69 c0 cd e3 00 00    	imul   $0xe3cd,%eax,%eax
  401987:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40198b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40198f:	69 c0 7c 9e 00 00    	imul   $0x9e7c,%eax,%eax
  401995:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401999:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40199d:	69 c0 89 f4 00 00    	imul   $0xf489,%eax,%eax
  4019a3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019a7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4019ab:	69 c0 0c fc 00 00    	imul   $0xfc0c,%eax,%eax
  4019b1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4019b5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4019b9:	69 c0 8e d8 00 00    	imul   $0xd88e,%eax,%eax
  4019bf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019c3:	8b 04 24             	mov    (%rsp),%eax
  4019c6:	69 c0 23 a0 00 00    	imul   $0xa023,%eax,%eax
  4019cc:	89 04 24             	mov    %eax,(%rsp)
  4019cf:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019d3:	69 c0 9b f3 00 00    	imul   $0xf39b,%eax,%eax
  4019d9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019dd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019e1:	69 c0 0d 99 00 00    	imul   $0x990d,%eax,%eax
  4019e7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019eb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019ef:	69 c0 ee 04 00 00    	imul   $0x4ee,%eax,%eax
  4019f5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019f9:	8b 04 24             	mov    (%rsp),%eax
  4019fc:	69 c0 f3 62 00 00    	imul   $0x62f3,%eax,%eax
  401a02:	89 04 24             	mov    %eax,(%rsp)
  401a05:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a09:	69 c0 00 27 00 00    	imul   $0x2700,%eax,%eax
  401a0f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a13:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a17:	69 c0 11 f1 00 00    	imul   $0xf111,%eax,%eax
  401a1d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a21:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a25:	69 c0 b3 ea 00 00    	imul   $0xeab3,%eax,%eax
  401a2b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a2f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a33:	69 c0 88 30 00 00    	imul   $0x3088,%eax,%eax
  401a39:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a3d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a41:	69 c0 f1 87 00 00    	imul   $0x87f1,%eax,%eax
  401a47:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a4b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a4f:	69 c0 c3 b3 00 00    	imul   $0xb3c3,%eax,%eax
  401a55:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a59:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a5d:	69 c0 49 f5 00 00    	imul   $0xf549,%eax,%eax
  401a63:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a67:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a6b:	69 c0 4f bc 00 00    	imul   $0xbc4f,%eax,%eax
  401a71:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a75:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a79:	69 c0 71 a1 00 00    	imul   $0xa171,%eax,%eax
  401a7f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a83:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a87:	69 c0 90 45 00 00    	imul   $0x4590,%eax,%eax
  401a8d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a91:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a95:	69 c0 29 93 00 00    	imul   $0x9329,%eax,%eax
  401a9b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a9f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401aa3:	69 c0 9f db 00 00    	imul   $0xdb9f,%eax,%eax
  401aa9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aad:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ab1:	69 c0 cd 81 00 00    	imul   $0x81cd,%eax,%eax
  401ab7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401abb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401abf:	69 c0 73 2d 00 00    	imul   $0x2d73,%eax,%eax
  401ac5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ac9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401acd:	69 c0 c7 5b 00 00    	imul   $0x5bc7,%eax,%eax
  401ad3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ad7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401adb:	69 c0 78 c4 00 00    	imul   $0xc478,%eax,%eax
  401ae1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ae5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ae9:	69 c0 9b 88 00 00    	imul   $0x889b,%eax,%eax
  401aef:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401af3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401af7:	69 c0 55 04 00 00    	imul   $0x455,%eax,%eax
  401afd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b01:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b05:	69 c0 9d c2 00 00    	imul   $0xc29d,%eax,%eax
  401b0b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b0f:	8b 04 24             	mov    (%rsp),%eax
  401b12:	69 c0 04 7f 00 00    	imul   $0x7f04,%eax,%eax
  401b18:	89 04 24             	mov    %eax,(%rsp)
  401b1b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b1f:	69 c0 1b 48 00 00    	imul   $0x481b,%eax,%eax
  401b25:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b29:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b2d:	69 c0 4d b6 00 00    	imul   $0xb64d,%eax,%eax
  401b33:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b37:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b3b:	69 c0 07 85 00 00    	imul   $0x8507,%eax,%eax
  401b41:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b45:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b49:	69 c0 37 27 00 00    	imul   $0x2737,%eax,%eax
  401b4f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b53:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b57:	69 c0 f8 2a 00 00    	imul   $0x2af8,%eax,%eax
  401b5d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b61:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b65:	69 c0 78 a0 00 00    	imul   $0xa078,%eax,%eax
  401b6b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b6f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b73:	69 c0 7a 52 00 00    	imul   $0x527a,%eax,%eax
  401b79:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b7d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b81:	69 c0 e5 44 00 00    	imul   $0x44e5,%eax,%eax
  401b87:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b8b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b8f:	69 c0 c4 f0 00 00    	imul   $0xf0c4,%eax,%eax
  401b95:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b99:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b9d:	69 c0 03 5b 00 00    	imul   $0x5b03,%eax,%eax
  401ba3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ba7:	8b 04 24             	mov    (%rsp),%eax
  401baa:	69 c0 bf 02 00 00    	imul   $0x2bf,%eax,%eax
  401bb0:	89 04 24             	mov    %eax,(%rsp)
  401bb3:	8b 04 24             	mov    (%rsp),%eax
  401bb6:	69 c0 53 cf 00 00    	imul   $0xcf53,%eax,%eax
  401bbc:	89 04 24             	mov    %eax,(%rsp)
  401bbf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bc3:	69 c0 05 d5 00 00    	imul   $0xd505,%eax,%eax
  401bc9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bcd:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bd1:	69 c0 a9 fe 00 00    	imul   $0xfea9,%eax,%eax
  401bd7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bdb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bdf:	69 c0 85 08 00 00    	imul   $0x885,%eax,%eax
  401be5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401be9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bed:	69 c0 31 e2 00 00    	imul   $0xe231,%eax,%eax
  401bf3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bf7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bfb:	69 c0 74 b0 00 00    	imul   $0xb074,%eax,%eax
  401c01:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c05:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c09:	69 c0 05 8e 00 00    	imul   $0x8e05,%eax,%eax
  401c0f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c13:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c17:	69 c0 1b 0b 00 00    	imul   $0xb1b,%eax,%eax
  401c1d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c21:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c25:	69 c0 f4 5b 00 00    	imul   $0x5bf4,%eax,%eax
  401c2b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c2f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c33:	69 c0 03 22 00 00    	imul   $0x2203,%eax,%eax
  401c39:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c3d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c41:	69 c0 34 f4 00 00    	imul   $0xf434,%eax,%eax
  401c47:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c4b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c4f:	69 c0 83 78 00 00    	imul   $0x7883,%eax,%eax
  401c55:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c59:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c5d:	69 c0 c4 48 00 00    	imul   $0x48c4,%eax,%eax
  401c63:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c67:	8b 04 24             	mov    (%rsp),%eax
  401c6a:	69 c0 72 ab 00 00    	imul   $0xab72,%eax,%eax
  401c70:	89 04 24             	mov    %eax,(%rsp)
  401c73:	b8 00 00 00 00       	mov    $0x0,%eax
  401c78:	ba 00 00 00 00       	mov    $0x0,%edx
  401c7d:	eb 0a                	jmp    401c89 <scramble+0x54d>
  401c7f:	89 c1                	mov    %eax,%ecx
  401c81:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c84:	01 ca                	add    %ecx,%edx
  401c86:	83 c0 01             	add    $0x1,%eax
  401c89:	83 f8 09             	cmp    $0x9,%eax
  401c8c:	76 f1                	jbe    401c7f <scramble+0x543>
  401c8e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c93:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9a:	00 00 
  401c9c:	75 07                	jne    401ca5 <scramble+0x569>
  401c9e:	89 d0                	mov    %edx,%eax
  401ca0:	48 83 c4 38          	add    $0x38,%rsp
  401ca4:	c3                   	ret
  401ca5:	e8 24 0a 00 00       	call   4026ce <__stack_chk_fail>

0000000000401caa <getbuf>:
  401caa:	f3 0f 1e fa          	endbr64
  401cae:	48 83 ec 28          	sub    $0x28,%rsp
  401cb2:	48 89 e7             	mov    %rsp,%rdi
  401cb5:	e8 25 05 00 00       	call   4021df <Gets>
  401cba:	b8 01 00 00 00       	mov    $0x1,%eax
  401cbf:	48 83 c4 28          	add    $0x28,%rsp
  401cc3:	c3                   	ret

0000000000401cc4 <touch1>:
  401cc4:	f3 0f 1e fa          	endbr64
  401cc8:	50                   	push   %rax
  401cc9:	58                   	pop    %rax
  401cca:	48 83 ec 08          	sub    $0x8,%rsp
  401cce:	c7 05 4c 58 00 00 01 	movl   $0x1,0x584c(%rip)        # 407524 <vlevel>
  401cd5:	00 00 00 
  401cd8:	48 8d 3d 2c 29 00 00 	lea    0x292c(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401cdf:	e8 9c f3 ff ff       	call   401080 <puts@plt>
  401ce4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce9:	e8 6e 07 00 00       	call   40245c <validate>
  401cee:	bf 00 00 00 00       	mov    $0x0,%edi
  401cf3:	e8 e8 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401cf8 <touch2>:
  401cf8:	f3 0f 1e fa          	endbr64
  401cfc:	50                   	push   %rax
  401cfd:	58                   	pop    %rax
  401cfe:	48 83 ec 08          	sub    $0x8,%rsp
  401d02:	89 fa                	mov    %edi,%edx
  401d04:	c7 05 16 58 00 00 02 	movl   $0x2,0x5816(%rip)        # 407524 <vlevel>
  401d0b:	00 00 00 
  401d0e:	39 3d 18 58 00 00    	cmp    %edi,0x5818(%rip)        # 40752c <cookie>
  401d14:	74 2a                	je     401d40 <touch2+0x48>
  401d16:	48 8d 35 63 24 00 00 	lea    0x2463(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d1d:	bf 02 00 00 00       	mov    $0x2,%edi
  401d22:	b8 00 00 00 00       	mov    $0x0,%eax
  401d27:	e8 64 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d2c:	bf 02 00 00 00       	mov    $0x2,%edi
  401d31:	e8 01 08 00 00       	call   402537 <fail>
  401d36:	bf 00 00 00 00       	mov    $0x0,%edi
  401d3b:	e8 a0 f4 ff ff       	call   4011e0 <exit@plt>
  401d40:	48 8d 35 11 24 00 00 	lea    0x2411(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d47:	bf 02 00 00 00       	mov    $0x2,%edi
  401d4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d51:	e8 3a f4 ff ff       	call   401190 <__printf_chk@plt>
  401d56:	bf 02 00 00 00       	mov    $0x2,%edi
  401d5b:	e8 fc 06 00 00       	call   40245c <validate>
  401d60:	eb d4                	jmp    401d36 <touch2+0x3e>

0000000000401d62 <hexmatch>:
  401d62:	f3 0f 1e fa          	endbr64
  401d66:	41 54                	push   %r12
  401d68:	55                   	push   %rbp
  401d69:	53                   	push   %rbx
  401d6a:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d6e:	89 fd                	mov    %edi,%ebp
  401d70:	48 89 f3             	mov    %rsi,%rbx
  401d73:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d7a:	00 00 
  401d7c:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d81:	31 c0                	xor    %eax,%eax
  401d83:	e8 d8 f3 ff ff       	call   401160 <random@plt>
  401d88:	48 89 c6             	mov    %rax,%rsi
  401d8b:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d92:	0a d7 a3 
  401d95:	48 f7 ea             	imul   %rdx
  401d98:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401d9c:	48 c1 f9 06          	sar    $0x6,%rcx
  401da0:	48 89 f0             	mov    %rsi,%rax
  401da3:	48 c1 f8 3f          	sar    $0x3f,%rax
  401da7:	48 29 c1             	sub    %rax,%rcx
  401daa:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401dae:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401db2:	48 c1 e0 02          	shl    $0x2,%rax
  401db6:	48 29 c6             	sub    %rax,%rsi
  401db9:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401dbd:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401dc2:	48 39 d6             	cmp    %rdx,%rsi
  401dc5:	48 0f 43 d6          	cmovae %rsi,%rdx
  401dc9:	48 29 f2             	sub    %rsi,%rdx
  401dcc:	41 89 e8             	mov    %ebp,%r8d
  401dcf:	48 8d 0d 52 28 00 00 	lea    0x2852(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401dd6:	be 02 00 00 00       	mov    $0x2,%esi
  401ddb:	4c 89 e7             	mov    %r12,%rdi
  401dde:	b8 00 00 00 00       	mov    $0x0,%eax
  401de3:	e8 38 f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401de8:	ba 09 00 00 00       	mov    $0x9,%edx
  401ded:	4c 89 e6             	mov    %r12,%rsi
  401df0:	48 89 df             	mov    %rbx,%rdi
  401df3:	e8 68 f2 ff ff       	call   401060 <strncmp@plt>
  401df8:	85 c0                	test   %eax,%eax
  401dfa:	0f 94 c0             	sete   %al
  401dfd:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e02:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e09:	00 00 
  401e0b:	75 0c                	jne    401e19 <hexmatch+0xb7>
  401e0d:	0f b6 c0             	movzbl %al,%eax
  401e10:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e14:	5b                   	pop    %rbx
  401e15:	5d                   	pop    %rbp
  401e16:	41 5c                	pop    %r12
  401e18:	c3                   	ret
  401e19:	e8 b0 08 00 00       	call   4026ce <__stack_chk_fail>

0000000000401e1e <touch3>:
  401e1e:	f3 0f 1e fa          	endbr64
  401e22:	53                   	push   %rbx
  401e23:	48 89 fb             	mov    %rdi,%rbx
  401e26:	c7 05 f4 56 00 00 03 	movl   $0x3,0x56f4(%rip)        # 407524 <vlevel>
  401e2d:	00 00 00 
  401e30:	48 89 fe             	mov    %rdi,%rsi
  401e33:	8b 3d f3 56 00 00    	mov    0x56f3(%rip),%edi        # 40752c <cookie>
  401e39:	e8 24 ff ff ff       	call   401d62 <hexmatch>
  401e3e:	85 c0                	test   %eax,%eax
  401e40:	74 2d                	je     401e6f <touch3+0x51>
  401e42:	48 89 da             	mov    %rbx,%rdx
  401e45:	48 8d 35 5c 23 00 00 	lea    0x235c(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e4c:	bf 02 00 00 00       	mov    $0x2,%edi
  401e51:	b8 00 00 00 00       	mov    $0x0,%eax
  401e56:	e8 35 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e5b:	bf 03 00 00 00       	mov    $0x3,%edi
  401e60:	e8 f7 05 00 00       	call   40245c <validate>
  401e65:	bf 00 00 00 00       	mov    $0x0,%edi
  401e6a:	e8 71 f3 ff ff       	call   4011e0 <exit@plt>
  401e6f:	48 89 da             	mov    %rbx,%rdx
  401e72:	48 8d 35 57 23 00 00 	lea    0x2357(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e79:	bf 02 00 00 00       	mov    $0x2,%edi
  401e7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e83:	e8 08 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e88:	bf 03 00 00 00       	mov    $0x3,%edi
  401e8d:	e8 a5 06 00 00       	call   402537 <fail>
  401e92:	eb d1                	jmp    401e65 <touch3+0x47>

0000000000401e94 <test>:
  401e94:	f3 0f 1e fa          	endbr64
  401e98:	48 83 ec 08          	sub    $0x8,%rsp
  401e9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea1:	e8 04 fe ff ff       	call   401caa <getbuf>
  401ea6:	89 c2                	mov    %eax,%edx
  401ea8:	48 8d 35 49 23 00 00 	lea    0x2349(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401eaf:	bf 02 00 00 00       	mov    $0x2,%edi
  401eb4:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb9:	e8 d2 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ebe:	48 83 c4 08          	add    $0x8,%rsp
  401ec2:	c3                   	ret

0000000000401ec3 <test2>:
  401ec3:	f3 0f 1e fa          	endbr64
  401ec7:	48 83 ec 08          	sub    $0x8,%rsp
  401ecb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed0:	e8 1d 00 00 00       	call   401ef2 <getbuf_withcanary>
  401ed5:	89 c2                	mov    %eax,%edx
  401ed7:	48 8d 35 42 23 00 00 	lea    0x2342(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401ede:	bf 02 00 00 00       	mov    $0x2,%edi
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	e8 a3 f2 ff ff       	call   401190 <__printf_chk@plt>
  401eed:	48 83 c4 08          	add    $0x8,%rsp
  401ef1:	c3                   	ret

0000000000401ef2 <getbuf_withcanary>:
  401ef2:	55                   	push   %rbp
  401ef3:	48 89 e5             	mov    %rsp,%rbp
  401ef6:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401efd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f04:	00 00 
  401f06:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f0a:	31 c0                	xor    %eax,%eax
  401f0c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401f13:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f1a:	48 89 c7             	mov    %rax,%rdi
  401f1d:	e8 bd 02 00 00       	call   4021df <Gets>
  401f22:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401f25:	48 98                	cltq
  401f27:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401f2e:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401f32:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f39:	ba 80 00 00 00       	mov    $0x80,%edx
  401f3e:	48 89 c6             	mov    %rax,%rsi
  401f41:	48 89 cf             	mov    %rcx,%rdi
  401f44:	e8 f7 f1 ff ff       	call   401140 <memcpy@plt>
  401f49:	b8 01 00 00 00       	mov    $0x1,%eax
  401f4e:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f52:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f59:	00 00 
  401f5b:	74 05                	je     401f62 <getbuf_withcanary+0x70>
  401f5d:	e8 6c 07 00 00       	call   4026ce <__stack_chk_fail>
  401f62:	c9                   	leave
  401f63:	c3                   	ret

0000000000401f64 <start_farm>:
  401f64:	f3 0f 1e fa          	endbr64
  401f68:	b8 01 00 00 00       	mov    $0x1,%eax
  401f6d:	c3                   	ret

0000000000401f6e <getval_173>:
  401f6e:	f3 0f 1e fa          	endbr64
  401f72:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  401f77:	c3                   	ret

0000000000401f78 <getval_135>:
  401f78:	f3 0f 1e fa          	endbr64
  401f7c:	b8 48 88 c7 90       	mov    $0x90c78848,%eax
  401f81:	c3                   	ret

0000000000401f82 <getval_121>:
  401f82:	f3 0f 1e fa          	endbr64
  401f86:	b8 48 89 c7 91       	mov    $0x91c78948,%eax
  401f8b:	c3                   	ret

0000000000401f8c <addval_382>:
  401f8c:	f3 0f 1e fa          	endbr64
  401f90:	8d 87 98 08 58 91    	lea    -0x6ea7f768(%rdi),%eax
  401f96:	c3                   	ret

0000000000401f97 <setval_278>:
  401f97:	f3 0f 1e fa          	endbr64
  401f9b:	c7 07 58 91 90 90    	movl   $0x90909158,(%rdi)
  401fa1:	c3                   	ret

0000000000401fa2 <getval_200>:
  401fa2:	f3 0f 1e fa          	endbr64
  401fa6:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401fab:	c3                   	ret

0000000000401fac <addval_392>:
  401fac:	f3 0f 1e fa          	endbr64
  401fb0:	8d 87 35 58 90 c3    	lea    -0x3c6fa7cb(%rdi),%eax
  401fb6:	c3                   	ret

0000000000401fb7 <getval_258>:
  401fb7:	f3 0f 1e fa          	endbr64
  401fbb:	b8 7d 58 90 c3       	mov    $0xc390587d,%eax
  401fc0:	c3                   	ret

0000000000401fc1 <mid_farm>:
  401fc1:	f3 0f 1e fa          	endbr64
  401fc5:	b8 01 00 00 00       	mov    $0x1,%eax
  401fca:	c3                   	ret

0000000000401fcb <add_xy>:
  401fcb:	f3 0f 1e fa          	endbr64
  401fcf:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401fd3:	c3                   	ret

0000000000401fd4 <addval_312>:
  401fd4:	f3 0f 1e fa          	endbr64
  401fd8:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401fde:	c3                   	ret

0000000000401fdf <addval_484>:
  401fdf:	f3 0f 1e fa          	endbr64
  401fe3:	8d 87 89 c1 28 d2    	lea    -0x2dd73e77(%rdi),%eax
  401fe9:	c3                   	ret

0000000000401fea <getval_390>:
  401fea:	f3 0f 1e fa          	endbr64
  401fee:	b8 89 ca 20 c9       	mov    $0xc920ca89,%eax
  401ff3:	c3                   	ret

0000000000401ff4 <addval_175>:
  401ff4:	f3 0f 1e fa          	endbr64
  401ff8:	8d 87 89 ca 38 c9    	lea    -0x36c73577(%rdi),%eax
  401ffe:	c3                   	ret

0000000000401fff <addval_474>:
  401fff:	f3 0f 1e fa          	endbr64
  402003:	8d 87 48 09 e0 90    	lea    -0x6f1ff6b8(%rdi),%eax
  402009:	c3                   	ret

000000000040200a <setval_160>:
  40200a:	f3 0f 1e fa          	endbr64
  40200e:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  402014:	c3                   	ret

0000000000402015 <getval_427>:
  402015:	f3 0f 1e fa          	endbr64
  402019:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  40201e:	c3                   	ret

000000000040201f <setval_116>:
  40201f:	f3 0f 1e fa          	endbr64
  402023:	c7 07 3d 99 ca c3    	movl   $0xc3ca993d,(%rdi)
  402029:	c3                   	ret

000000000040202a <addval_432>:
  40202a:	f3 0f 1e fa          	endbr64
  40202e:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  402034:	c3                   	ret

0000000000402035 <addval_108>:
  402035:	f3 0f 1e fa          	endbr64
  402039:	8d 87 ba 89 ca c2    	lea    -0x3d357646(%rdi),%eax
  40203f:	c3                   	ret

0000000000402040 <setval_331>:
  402040:	f3 0f 1e fa          	endbr64
  402044:	c7 07 89 c1 28 c9    	movl   $0xc928c189,(%rdi)
  40204a:	c3                   	ret

000000000040204b <addval_255>:
  40204b:	f3 0f 1e fa          	endbr64
  40204f:	8d 87 89 c1 78 db    	lea    -0x24873e77(%rdi),%eax
  402055:	c3                   	ret

0000000000402056 <getval_298>:
  402056:	f3 0f 1e fa          	endbr64
  40205a:	b8 0b 8b ca c3       	mov    $0xc3ca8b0b,%eax
  40205f:	c3                   	ret

0000000000402060 <getval_165>:
  402060:	f3 0f 1e fa          	endbr64
  402064:	b8 89 ca 30 db       	mov    $0xdb30ca89,%eax
  402069:	c3                   	ret

000000000040206a <setval_311>:
  40206a:	f3 0f 1e fa          	endbr64
  40206e:	c7 07 e6 48 a9 e0    	movl   $0xe0a948e6,(%rdi)
  402074:	c3                   	ret

0000000000402075 <addval_229>:
  402075:	f3 0f 1e fa          	endbr64
  402079:	8d 87 89 ca 18 db    	lea    -0x24e73577(%rdi),%eax
  40207f:	c3                   	ret

0000000000402080 <getval_193>:
  402080:	f3 0f 1e fa          	endbr64
  402084:	b8 8b d6 20 d2       	mov    $0xd220d68b,%eax
  402089:	c3                   	ret

000000000040208a <getval_387>:
  40208a:	f3 0f 1e fa          	endbr64
  40208e:	b8 8d ca 90 c3       	mov    $0xc390ca8d,%eax
  402093:	c3                   	ret

0000000000402094 <setval_296>:
  402094:	f3 0f 1e fa          	endbr64
  402098:	c7 07 89 c1 18 d2    	movl   $0xd218c189,(%rdi)
  40209e:	c3                   	ret

000000000040209f <getval_279>:
  40209f:	f3 0f 1e fa          	endbr64
  4020a3:	b8 89 d6 48 c0       	mov    $0xc048d689,%eax
  4020a8:	c3                   	ret

00000000004020a9 <getval_249>:
  4020a9:	f3 0f 1e fa          	endbr64
  4020ad:	b8 a9 d6 38 c0       	mov    $0xc038d6a9,%eax
  4020b2:	c3                   	ret

00000000004020b3 <addval_367>:
  4020b3:	f3 0f 1e fa          	endbr64
  4020b7:	8d 87 89 d6 38 c9    	lea    -0x36c72977(%rdi),%eax
  4020bd:	c3                   	ret

00000000004020be <addval_377>:
  4020be:	f3 0f 1e fa          	endbr64
  4020c2:	8d 87 89 d6 20 db    	lea    -0x24df2977(%rdi),%eax
  4020c8:	c3                   	ret

00000000004020c9 <addval_262>:
  4020c9:	f3 0f 1e fa          	endbr64
  4020cd:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  4020d3:	c3                   	ret

00000000004020d4 <getval_450>:
  4020d4:	f3 0f 1e fa          	endbr64
  4020d8:	b8 89 c1 38 c9       	mov    $0xc938c189,%eax
  4020dd:	c3                   	ret

00000000004020de <addval_281>:
  4020de:	f3 0f 1e fa          	endbr64
  4020e2:	8d 87 89 d6 91 90    	lea    -0x6f6e2977(%rdi),%eax
  4020e8:	c3                   	ret

00000000004020e9 <getval_148>:
  4020e9:	f3 0f 1e fa          	endbr64
  4020ed:	b8 09 d6 08 c9       	mov    $0xc908d609,%eax
  4020f2:	c3                   	ret

00000000004020f3 <getval_329>:
  4020f3:	f3 0f 1e fa          	endbr64
  4020f7:	b8 f0 8d c1 c3       	mov    $0xc3c18df0,%eax
  4020fc:	c3                   	ret

00000000004020fd <addval_117>:
  4020fd:	f3 0f 1e fa          	endbr64
  402101:	8d 87 89 c1 84 c9    	lea    -0x367b3e77(%rdi),%eax
  402107:	c3                   	ret

0000000000402108 <addval_330>:
  402108:	f3 0f 1e fa          	endbr64
  40210c:	8d 87 01 89 c1 94    	lea    -0x6b3e76ff(%rdi),%eax
  402112:	c3                   	ret

0000000000402113 <getval_444>:
  402113:	f3 0f 1e fa          	endbr64
  402117:	b8 08 48 81 e0       	mov    $0xe0814808,%eax
  40211c:	c3                   	ret

000000000040211d <addval_360>:
  40211d:	f3 0f 1e fa          	endbr64
  402121:	8d 87 81 d6 90 90    	lea    -0x6f6f297f(%rdi),%eax
  402127:	c3                   	ret

0000000000402128 <end_farm>:
  402128:	f3 0f 1e fa          	endbr64
  40212c:	b8 01 00 00 00       	mov    $0x1,%eax
  402131:	c3                   	ret

0000000000402132 <save_char>:
  402132:	8b 05 0c 60 00 00    	mov    0x600c(%rip),%eax        # 408144 <gets_cnt>
  402138:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40213d:	7f 4a                	jg     402189 <save_char+0x57>
  40213f:	89 f9                	mov    %edi,%ecx
  402141:	c0 e9 04             	shr    $0x4,%cl
  402144:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402147:	4c 8d 05 b2 26 00 00 	lea    0x26b2(%rip),%r8        # 404800 <trans_char>
  40214e:	83 e1 0f             	and    $0xf,%ecx
  402151:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402156:	48 8d 0d e3 53 00 00 	lea    0x53e3(%rip),%rcx        # 407540 <gets_buf>
  40215d:	48 63 f2             	movslq %edx,%rsi
  402160:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402164:	8d 72 01             	lea    0x1(%rdx),%esi
  402167:	83 e7 0f             	and    $0xf,%edi
  40216a:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  40216f:	48 63 f6             	movslq %esi,%rsi
  402172:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402176:	83 c2 02             	add    $0x2,%edx
  402179:	48 63 d2             	movslq %edx,%rdx
  40217c:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402180:	83 c0 01             	add    $0x1,%eax
  402183:	89 05 bb 5f 00 00    	mov    %eax,0x5fbb(%rip)        # 408144 <gets_cnt>
  402189:	c3                   	ret

000000000040218a <save_term>:
  40218a:	8b 05 b4 5f 00 00    	mov    0x5fb4(%rip),%eax        # 408144 <gets_cnt>
  402190:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402193:	48 98                	cltq
  402195:	48 8d 15 a4 53 00 00 	lea    0x53a4(%rip),%rdx        # 407540 <gets_buf>
  40219c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021a0:	c3                   	ret

00000000004021a1 <check_fail>:
  4021a1:	f3 0f 1e fa          	endbr64
  4021a5:	50                   	push   %rax
  4021a6:	58                   	pop    %rax
  4021a7:	48 83 ec 08          	sub    $0x8,%rsp
  4021ab:	0f be 15 96 5f 00 00 	movsbl 0x5f96(%rip),%edx        # 408148 <target_prefix>
  4021b2:	4c 8d 05 87 53 00 00 	lea    0x5387(%rip),%r8        # 407540 <gets_buf>
  4021b9:	8b 0d 61 53 00 00    	mov    0x5361(%rip),%ecx        # 407520 <check_level>
  4021bf:	48 8d 35 67 24 00 00 	lea    0x2467(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  4021c6:	bf 02 00 00 00       	mov    $0x2,%edi
  4021cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d0:	e8 bb ef ff ff       	call   401190 <__printf_chk@plt>
  4021d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4021da:	e8 01 f0 ff ff       	call   4011e0 <exit@plt>

00000000004021df <Gets>:
  4021df:	f3 0f 1e fa          	endbr64
  4021e3:	41 54                	push   %r12
  4021e5:	55                   	push   %rbp
  4021e6:	53                   	push   %rbx
  4021e7:	49 89 fc             	mov    %rdi,%r12
  4021ea:	c7 05 50 5f 00 00 00 	movl   $0x0,0x5f50(%rip)        # 408144 <gets_cnt>
  4021f1:	00 00 00 
  4021f4:	48 89 fb             	mov    %rdi,%rbx
  4021f7:	eb 11                	jmp    40220a <Gets+0x2b>
  4021f9:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021fd:	88 03                	mov    %al,(%rbx)
  4021ff:	0f b6 f8             	movzbl %al,%edi
  402202:	e8 2b ff ff ff       	call   402132 <save_char>
  402207:	48 89 eb             	mov    %rbp,%rbx
  40220a:	48 8b 3d 07 53 00 00 	mov    0x5307(%rip),%rdi        # 407518 <infile>
  402211:	e8 fa ef ff ff       	call   401210 <getc@plt>
  402216:	83 f8 ff             	cmp    $0xffffffff,%eax
  402219:	74 05                	je     402220 <Gets+0x41>
  40221b:	83 f8 0a             	cmp    $0xa,%eax
  40221e:	75 d9                	jne    4021f9 <Gets+0x1a>
  402220:	c6 03 00             	movb   $0x0,(%rbx)
  402223:	b8 00 00 00 00       	mov    $0x0,%eax
  402228:	e8 5d ff ff ff       	call   40218a <save_term>
  40222d:	4c 89 e0             	mov    %r12,%rax
  402230:	5b                   	pop    %rbx
  402231:	5d                   	pop    %rbp
  402232:	41 5c                	pop    %r12
  402234:	c3                   	ret

0000000000402235 <notify_server>:
  402235:	f3 0f 1e fa          	endbr64
  402239:	55                   	push   %rbp
  40223a:	53                   	push   %rbx
  40223b:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402242:	ff 
  402243:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40224a:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40224f:	4c 39 dc             	cmp    %r11,%rsp
  402252:	75 ef                	jne    402243 <notify_server+0xe>
  402254:	48 83 ec 18          	sub    $0x18,%rsp
  402258:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40225f:	00 00 
  402261:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402268:	00 
  402269:	31 c0                	xor    %eax,%eax
  40226b:	83 3d be 52 00 00 00 	cmpl   $0x0,0x52be(%rip)        # 407530 <is_checker>
  402272:	0f 85 c2 01 00 00    	jne    40243a <notify_server+0x205>
  402278:	89 fb                	mov    %edi,%ebx
  40227a:	81 3d c0 5e 00 00 9c 	cmpl   $0x1f9c,0x5ec0(%rip)        # 408144 <gets_cnt>
  402281:	1f 00 00 
  402284:	0f 8f bd 00 00 00    	jg     402347 <notify_server+0x112>
  40228a:	0f be 05 b7 5e 00 00 	movsbl 0x5eb7(%rip),%eax        # 408148 <target_prefix>
  402291:	83 3d e8 51 00 00 00 	cmpl   $0x0,0x51e8(%rip)        # 407480 <notify>
  402298:	0f 84 c4 00 00 00    	je     402362 <notify_server+0x12d>
  40229e:	8b 15 84 52 00 00    	mov    0x5284(%rip),%edx        # 407528 <authkey>
  4022a4:	85 db                	test   %ebx,%ebx
  4022a6:	0f 84 c0 00 00 00    	je     40236c <notify_server+0x137>
  4022ac:	48 8d 2d 90 23 00 00 	lea    0x2390(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4022b3:	48 89 e7             	mov    %rsp,%rdi
  4022b6:	48 8d 0d 83 52 00 00 	lea    0x5283(%rip),%rcx        # 407540 <gets_buf>
  4022bd:	51                   	push   %rcx
  4022be:	56                   	push   %rsi
  4022bf:	50                   	push   %rax
  4022c0:	52                   	push   %rdx
  4022c1:	49 89 e9             	mov    %rbp,%r9
  4022c4:	44 8b 05 65 4e 00 00 	mov    0x4e65(%rip),%r8d        # 407130 <target_id>
  4022cb:	48 8d 0d 7b 23 00 00 	lea    0x237b(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  4022d2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022d7:	be 02 00 00 00       	mov    $0x2,%esi
  4022dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e1:	e8 3a ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022e6:	48 83 c4 20          	add    $0x20,%rsp
  4022ea:	83 3d 8f 51 00 00 00 	cmpl   $0x0,0x518f(%rip)        # 407480 <notify>
  4022f1:	0f 84 ba 00 00 00    	je     4023b1 <notify_server+0x17c>
  4022f7:	48 89 e1             	mov    %rsp,%rcx
  4022fa:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402301:	00 
  402302:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402308:	48 8b 15 39 4e 00 00 	mov    0x4e39(%rip),%rdx        # 407148 <lab>
  40230f:	48 8b 35 3a 4e 00 00 	mov    0x4e3a(%rip),%rsi        # 407150 <course>
  402316:	48 8b 3d 23 4e 00 00 	mov    0x4e23(%rip),%rdi        # 407140 <user_id>
  40231d:	e8 4e 12 00 00       	call   403570 <driver_post>
  402322:	85 c0                	test   %eax,%eax
  402324:	78 52                	js     402378 <notify_server+0x143>
  402326:	85 db                	test   %ebx,%ebx
  402328:	74 76                	je     4023a0 <notify_server+0x16b>
  40232a:	48 8d 3d 4f 1f 00 00 	lea    0x1f4f(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  402331:	e8 4a ed ff ff       	call   401080 <puts@plt>
  402336:	48 8d 3d 38 23 00 00 	lea    0x2338(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  40233d:	e8 3e ed ff ff       	call   401080 <puts@plt>
  402342:	e9 f3 00 00 00       	jmp    40243a <notify_server+0x205>
  402347:	48 8d 35 02 1f 00 00 	lea    0x1f02(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  40234e:	bf 02 00 00 00       	mov    $0x2,%edi
  402353:	e8 38 ee ff ff       	call   401190 <__printf_chk@plt>
  402358:	bf 01 00 00 00       	mov    $0x1,%edi
  40235d:	e8 7e ee ff ff       	call   4011e0 <exit@plt>
  402362:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402367:	e9 38 ff ff ff       	jmp    4022a4 <notify_server+0x6f>
  40236c:	48 8d 2d d5 22 00 00 	lea    0x22d5(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  402373:	e9 3b ff ff ff       	jmp    4022b3 <notify_server+0x7e>
  402378:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40237f:	00 
  402380:	48 8d 35 e2 22 00 00 	lea    0x22e2(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  402387:	bf 02 00 00 00       	mov    $0x2,%edi
  40238c:	b8 00 00 00 00       	mov    $0x0,%eax
  402391:	e8 fa ed ff ff       	call   401190 <__printf_chk@plt>
  402396:	bf 01 00 00 00       	mov    $0x1,%edi
  40239b:	e8 40 ee ff ff       	call   4011e0 <exit@plt>
  4023a0:	48 8d 3d d8 22 00 00 	lea    0x22d8(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4023a7:	e8 d4 ec ff ff       	call   401080 <puts@plt>
  4023ac:	e9 89 00 00 00       	jmp    40243a <notify_server+0x205>
  4023b1:	48 89 ea             	mov    %rbp,%rdx
  4023b4:	48 8d 35 fd 1e 00 00 	lea    0x1efd(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4023bb:	bf 02 00 00 00       	mov    $0x2,%edi
  4023c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c5:	e8 c6 ed ff ff       	call   401190 <__printf_chk@plt>
  4023ca:	48 8b 15 6f 4d 00 00 	mov    0x4d6f(%rip),%rdx        # 407140 <user_id>
  4023d1:	48 8d 35 ae 22 00 00 	lea    0x22ae(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  4023d8:	bf 02 00 00 00       	mov    $0x2,%edi
  4023dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e2:	e8 a9 ed ff ff       	call   401190 <__printf_chk@plt>
  4023e7:	48 8b 15 62 4d 00 00 	mov    0x4d62(%rip),%rdx        # 407150 <course>
  4023ee:	48 8d 35 9e 22 00 00 	lea    0x229e(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  4023f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4023fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ff:	e8 8c ed ff ff       	call   401190 <__printf_chk@plt>
  402404:	48 8b 15 3d 4d 00 00 	mov    0x4d3d(%rip),%rdx        # 407148 <lab>
  40240b:	48 8d 35 8d 22 00 00 	lea    0x228d(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  402412:	bf 02 00 00 00       	mov    $0x2,%edi
  402417:	b8 00 00 00 00       	mov    $0x0,%eax
  40241c:	e8 6f ed ff ff       	call   401190 <__printf_chk@plt>
  402421:	48 89 e2             	mov    %rsp,%rdx
  402424:	48 8d 35 7d 22 00 00 	lea    0x227d(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  40242b:	bf 02 00 00 00       	mov    $0x2,%edi
  402430:	b8 00 00 00 00       	mov    $0x0,%eax
  402435:	e8 56 ed ff ff       	call   401190 <__printf_chk@plt>
  40243a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402441:	00 
  402442:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402449:	00 00 
  40244b:	75 0a                	jne    402457 <notify_server+0x222>
  40244d:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402454:	5b                   	pop    %rbx
  402455:	5d                   	pop    %rbp
  402456:	c3                   	ret
  402457:	e8 72 02 00 00       	call   4026ce <__stack_chk_fail>

000000000040245c <validate>:
  40245c:	f3 0f 1e fa          	endbr64
  402460:	53                   	push   %rbx
  402461:	89 fb                	mov    %edi,%ebx
  402463:	83 3d c6 50 00 00 00 	cmpl   $0x0,0x50c6(%rip)        # 407530 <is_checker>
  40246a:	74 79                	je     4024e5 <validate+0x89>
  40246c:	39 3d b2 50 00 00    	cmp    %edi,0x50b2(%rip)        # 407524 <vlevel>
  402472:	75 39                	jne    4024ad <validate+0x51>
  402474:	8b 15 a6 50 00 00    	mov    0x50a6(%rip),%edx        # 407520 <check_level>
  40247a:	39 fa                	cmp    %edi,%edx
  40247c:	75 45                	jne    4024c3 <validate+0x67>
  40247e:	0f be 0d c3 5c 00 00 	movsbl 0x5cc3(%rip),%ecx        # 408148 <target_prefix>
  402485:	4c 8d 0d b4 50 00 00 	lea    0x50b4(%rip),%r9        # 407540 <gets_buf>
  40248c:	41 89 f8             	mov    %edi,%r8d
  40248f:	8b 15 93 50 00 00    	mov    0x5093(%rip),%edx        # 407528 <authkey>
  402495:	48 8d 35 6c 1e 00 00 	lea    0x1e6c(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  40249c:	bf 02 00 00 00       	mov    $0x2,%edi
  4024a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a6:	e8 e5 ec ff ff       	call   401190 <__printf_chk@plt>
  4024ab:	5b                   	pop    %rbx
  4024ac:	c3                   	ret
  4024ad:	48 8d 3d 00 22 00 00 	lea    0x2200(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024b4:	e8 c7 eb ff ff       	call   401080 <puts@plt>
  4024b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4024be:	e8 de fc ff ff       	call   4021a1 <check_fail>
  4024c3:	89 f9                	mov    %edi,%ecx
  4024c5:	48 8d 35 14 1e 00 00 	lea    0x1e14(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  4024cc:	bf 02 00 00 00       	mov    $0x2,%edi
  4024d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d6:	e8 b5 ec ff ff       	call   401190 <__printf_chk@plt>
  4024db:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e0:	e8 bc fc ff ff       	call   4021a1 <check_fail>
  4024e5:	39 3d 39 50 00 00    	cmp    %edi,0x5039(%rip)        # 407524 <vlevel>
  4024eb:	74 1a                	je     402507 <validate+0xab>
  4024ed:	48 8d 3d c0 21 00 00 	lea    0x21c0(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024f4:	e8 87 eb ff ff       	call   401080 <puts@plt>
  4024f9:	89 de                	mov    %ebx,%esi
  4024fb:	bf 00 00 00 00       	mov    $0x0,%edi
  402500:	e8 30 fd ff ff       	call   402235 <notify_server>
  402505:	eb a4                	jmp    4024ab <validate+0x4f>
  402507:	0f be 0d 3a 5c 00 00 	movsbl 0x5c3a(%rip),%ecx        # 408148 <target_prefix>
  40250e:	89 fa                	mov    %edi,%edx
  402510:	48 8d 35 19 1e 00 00 	lea    0x1e19(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402517:	bf 02 00 00 00       	mov    $0x2,%edi
  40251c:	b8 00 00 00 00       	mov    $0x0,%eax
  402521:	e8 6a ec ff ff       	call   401190 <__printf_chk@plt>
  402526:	89 de                	mov    %ebx,%esi
  402528:	bf 01 00 00 00       	mov    $0x1,%edi
  40252d:	e8 03 fd ff ff       	call   402235 <notify_server>
  402532:	e9 74 ff ff ff       	jmp    4024ab <validate+0x4f>

0000000000402537 <fail>:
  402537:	f3 0f 1e fa          	endbr64
  40253b:	48 83 ec 08          	sub    $0x8,%rsp
  40253f:	83 3d ea 4f 00 00 00 	cmpl   $0x0,0x4fea(%rip)        # 407530 <is_checker>
  402546:	75 11                	jne    402559 <fail+0x22>
  402548:	89 fe                	mov    %edi,%esi
  40254a:	bf 00 00 00 00       	mov    $0x0,%edi
  40254f:	e8 e1 fc ff ff       	call   402235 <notify_server>
  402554:	48 83 c4 08          	add    $0x8,%rsp
  402558:	c3                   	ret
  402559:	b8 00 00 00 00       	mov    $0x0,%eax
  40255e:	e8 3e fc ff ff       	call   4021a1 <check_fail>

0000000000402563 <bushandler>:
  402563:	f3 0f 1e fa          	endbr64
  402567:	50                   	push   %rax
  402568:	58                   	pop    %rax
  402569:	48 83 ec 08          	sub    $0x8,%rsp
  40256d:	83 3d bc 4f 00 00 00 	cmpl   $0x0,0x4fbc(%rip)        # 407530 <is_checker>
  402574:	74 16                	je     40258c <bushandler+0x29>
  402576:	48 8d 3d 55 21 00 00 	lea    0x2155(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  40257d:	e8 fe ea ff ff       	call   401080 <puts@plt>
  402582:	b8 00 00 00 00       	mov    $0x0,%eax
  402587:	e8 15 fc ff ff       	call   4021a1 <check_fail>
  40258c:	48 8d 3d d5 1d 00 00 	lea    0x1dd5(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  402593:	e8 e8 ea ff ff       	call   401080 <puts@plt>
  402598:	48 8d 3d 3d 21 00 00 	lea    0x213d(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40259f:	e8 dc ea ff ff       	call   401080 <puts@plt>
  4025a4:	be 00 00 00 00       	mov    $0x0,%esi
  4025a9:	bf 00 00 00 00       	mov    $0x0,%edi
  4025ae:	e8 82 fc ff ff       	call   402235 <notify_server>
  4025b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4025b8:	e8 23 ec ff ff       	call   4011e0 <exit@plt>

00000000004025bd <seghandler>:
  4025bd:	f3 0f 1e fa          	endbr64
  4025c1:	50                   	push   %rax
  4025c2:	58                   	pop    %rax
  4025c3:	48 83 ec 08          	sub    $0x8,%rsp
  4025c7:	83 3d 62 4f 00 00 00 	cmpl   $0x0,0x4f62(%rip)        # 407530 <is_checker>
  4025ce:	74 16                	je     4025e6 <seghandler+0x29>
  4025d0:	48 8d 3d 1b 21 00 00 	lea    0x211b(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  4025d7:	e8 a4 ea ff ff       	call   401080 <puts@plt>
  4025dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e1:	e8 bb fb ff ff       	call   4021a1 <check_fail>
  4025e6:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  4025ed:	e8 8e ea ff ff       	call   401080 <puts@plt>
  4025f2:	48 8d 3d e3 20 00 00 	lea    0x20e3(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025f9:	e8 82 ea ff ff       	call   401080 <puts@plt>
  4025fe:	be 00 00 00 00       	mov    $0x0,%esi
  402603:	bf 00 00 00 00       	mov    $0x0,%edi
  402608:	e8 28 fc ff ff       	call   402235 <notify_server>
  40260d:	bf 01 00 00 00       	mov    $0x1,%edi
  402612:	e8 c9 eb ff ff       	call   4011e0 <exit@plt>

0000000000402617 <illegalhandler>:
  402617:	f3 0f 1e fa          	endbr64
  40261b:	50                   	push   %rax
  40261c:	58                   	pop    %rax
  40261d:	48 83 ec 08          	sub    $0x8,%rsp
  402621:	83 3d 08 4f 00 00 00 	cmpl   $0x0,0x4f08(%rip)        # 407530 <is_checker>
  402628:	74 16                	je     402640 <illegalhandler+0x29>
  40262a:	48 8d 3d d4 20 00 00 	lea    0x20d4(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  402631:	e8 4a ea ff ff       	call   401080 <puts@plt>
  402636:	b8 00 00 00 00       	mov    $0x0,%eax
  40263b:	e8 61 fb ff ff       	call   4021a1 <check_fail>
  402640:	48 8d 3d 69 1d 00 00 	lea    0x1d69(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402647:	e8 34 ea ff ff       	call   401080 <puts@plt>
  40264c:	48 8d 3d 89 20 00 00 	lea    0x2089(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402653:	e8 28 ea ff ff       	call   401080 <puts@plt>
  402658:	be 00 00 00 00       	mov    $0x0,%esi
  40265d:	bf 00 00 00 00       	mov    $0x0,%edi
  402662:	e8 ce fb ff ff       	call   402235 <notify_server>
  402667:	bf 01 00 00 00       	mov    $0x1,%edi
  40266c:	e8 6f eb ff ff       	call   4011e0 <exit@plt>

0000000000402671 <sigalrmhandler>:
  402671:	f3 0f 1e fa          	endbr64
  402675:	50                   	push   %rax
  402676:	58                   	pop    %rax
  402677:	48 83 ec 08          	sub    $0x8,%rsp
  40267b:	83 3d ae 4e 00 00 00 	cmpl   $0x0,0x4eae(%rip)        # 407530 <is_checker>
  402682:	74 16                	je     40269a <sigalrmhandler+0x29>
  402684:	48 8d 3d 8e 20 00 00 	lea    0x208e(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  40268b:	e8 f0 e9 ff ff       	call   401080 <puts@plt>
  402690:	b8 00 00 00 00       	mov    $0x0,%eax
  402695:	e8 07 fb ff ff       	call   4021a1 <check_fail>
  40269a:	ba 02 00 00 00       	mov    $0x2,%edx
  40269f:	48 8d 35 3a 1d 00 00 	lea    0x1d3a(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4026a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4026ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b0:	e8 db ea ff ff       	call   401190 <__printf_chk@plt>
  4026b5:	be 00 00 00 00       	mov    $0x0,%esi
  4026ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4026bf:	e8 71 fb ff ff       	call   402235 <notify_server>
  4026c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c9:	e8 12 eb ff ff       	call   4011e0 <exit@plt>

00000000004026ce <__stack_chk_fail>:
  4026ce:	f3 0f 1e fa          	endbr64
  4026d2:	50                   	push   %rax
  4026d3:	58                   	pop    %rax
  4026d4:	48 83 ec 08          	sub    $0x8,%rsp
  4026d8:	83 3d 51 4e 00 00 00 	cmpl   $0x0,0x4e51(%rip)        # 407530 <is_checker>
  4026df:	74 16                	je     4026f7 <__stack_chk_fail+0x29>
  4026e1:	48 8d 3d 39 20 00 00 	lea    0x2039(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  4026e8:	e8 93 e9 ff ff       	call   401080 <puts@plt>
  4026ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f2:	e8 aa fa ff ff       	call   4021a1 <check_fail>
  4026f7:	48 8d 3d 1a 1d 00 00 	lea    0x1d1a(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  4026fe:	e8 7d e9 ff ff       	call   401080 <puts@plt>
  402703:	48 8d 3d d2 1f 00 00 	lea    0x1fd2(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40270a:	e8 71 e9 ff ff       	call   401080 <puts@plt>
  40270f:	be 00 00 00 00       	mov    $0x0,%esi
  402714:	bf 00 00 00 00       	mov    $0x0,%edi
  402719:	e8 17 fb ff ff       	call   402235 <notify_server>
  40271e:	bf 01 00 00 00       	mov    $0x1,%edi
  402723:	e8 b8 ea ff ff       	call   4011e0 <exit@plt>

0000000000402728 <launch>:
  402728:	f3 0f 1e fa          	endbr64
  40272c:	55                   	push   %rbp
  40272d:	48 89 e5             	mov    %rsp,%rbp
  402730:	53                   	push   %rbx
  402731:	48 83 ec 18          	sub    $0x18,%rsp
  402735:	48 89 fa             	mov    %rdi,%rdx
  402738:	89 f3                	mov    %esi,%ebx
  40273a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402741:	00 00 
  402743:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402747:	31 c0                	xor    %eax,%eax
  402749:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40274d:	48 89 c6             	mov    %rax,%rsi
  402750:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402754:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40275a:	48 89 e1             	mov    %rsp,%rcx
  40275d:	48 29 c1             	sub    %rax,%rcx
  402760:	48 39 cc             	cmp    %rcx,%rsp
  402763:	74 12                	je     402777 <launch+0x4f>
  402765:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40276c:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402773:	00 00 
  402775:	eb e9                	jmp    402760 <launch+0x38>
  402777:	48 89 f0             	mov    %rsi,%rax
  40277a:	25 ff 0f 00 00       	and    $0xfff,%eax
  40277f:	48 29 c4             	sub    %rax,%rsp
  402782:	48 85 c0             	test   %rax,%rax
  402785:	74 06                	je     40278d <launch+0x65>
  402787:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  40278d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402792:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402796:	48 89 d1             	mov    %rdx,%rcx
  402799:	be f4 00 00 00       	mov    $0xf4,%esi
  40279e:	e8 2d ea ff ff       	call   4011d0 <__memset_chk@plt>
  4027a3:	48 8b 05 f6 4c 00 00 	mov    0x4cf6(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4027aa:	48 39 05 67 4d 00 00 	cmp    %rax,0x4d67(%rip)        # 407518 <infile>
  4027b1:	74 42                	je     4027f5 <launch+0xcd>
  4027b3:	c7 05 67 4d 00 00 00 	movl   $0x0,0x4d67(%rip)        # 407524 <vlevel>
  4027ba:	00 00 00 
  4027bd:	85 db                	test   %ebx,%ebx
  4027bf:	75 4c                	jne    40280d <launch+0xe5>
  4027c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c6:	e8 c9 f6 ff ff       	call   401e94 <test>
  4027cb:	83 3d 5e 4d 00 00 00 	cmpl   $0x0,0x4d5e(%rip)        # 407530 <is_checker>
  4027d2:	75 45                	jne    402819 <launch+0xf1>
  4027d4:	48 8d 3d 6d 1f 00 00 	lea    0x1f6d(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  4027db:	e8 a0 e8 ff ff       	call   401080 <puts@plt>
  4027e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027e4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027eb:	00 00 
  4027ed:	75 40                	jne    40282f <launch+0x107>
  4027ef:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027f3:	c9                   	leave
  4027f4:	c3                   	ret
  4027f5:	48 8d 35 34 1f 00 00 	lea    0x1f34(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  4027fc:	bf 02 00 00 00       	mov    $0x2,%edi
  402801:	b8 00 00 00 00       	mov    $0x0,%eax
  402806:	e8 85 e9 ff ff       	call   401190 <__printf_chk@plt>
  40280b:	eb a6                	jmp    4027b3 <launch+0x8b>
  40280d:	b8 00 00 00 00       	mov    $0x0,%eax
  402812:	e8 ac f6 ff ff       	call   401ec3 <test2>
  402817:	eb b2                	jmp    4027cb <launch+0xa3>
  402819:	48 8d 3d 1d 1f 00 00 	lea    0x1f1d(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  402820:	e8 5b e8 ff ff       	call   401080 <puts@plt>
  402825:	b8 00 00 00 00       	mov    $0x0,%eax
  40282a:	e8 72 f9 ff ff       	call   4021a1 <check_fail>
  40282f:	e8 9a fe ff ff       	call   4026ce <__stack_chk_fail>

0000000000402834 <stable_launch>:
  402834:	f3 0f 1e fa          	endbr64
  402838:	55                   	push   %rbp
  402839:	53                   	push   %rbx
  40283a:	48 83 ec 08          	sub    $0x8,%rsp
  40283e:	89 f5                	mov    %esi,%ebp
  402840:	48 89 3d c9 4c 00 00 	mov    %rdi,0x4cc9(%rip)        # 407510 <global_offset>
  402847:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40284d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402853:	b9 32 01 00 00       	mov    $0x132,%ecx
  402858:	ba 07 00 00 00       	mov    $0x7,%edx
  40285d:	be 00 00 10 00       	mov    $0x100000,%esi
  402862:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402867:	e8 44 e8 ff ff       	call   4010b0 <mmap@plt>
  40286c:	48 89 c3             	mov    %rax,%rbx
  40286f:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402875:	75 4a                	jne    4028c1 <stable_launch+0x8d>
  402877:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40287e:	48 89 15 83 4c 00 00 	mov    %rdx,0x4c83(%rip)        # 407508 <stack_top>
  402885:	48 89 e0             	mov    %rsp,%rax
  402888:	48 89 d4             	mov    %rdx,%rsp
  40288b:	48 89 c2             	mov    %rax,%rdx
  40288e:	48 89 15 6b 4c 00 00 	mov    %rdx,0x4c6b(%rip)        # 407500 <global_save_stack>
  402895:	89 ee                	mov    %ebp,%esi
  402897:	48 8b 3d 72 4c 00 00 	mov    0x4c72(%rip),%rdi        # 407510 <global_offset>
  40289e:	e8 85 fe ff ff       	call   402728 <launch>
  4028a3:	48 8b 05 56 4c 00 00 	mov    0x4c56(%rip),%rax        # 407500 <global_save_stack>
  4028aa:	48 89 c4             	mov    %rax,%rsp
  4028ad:	be 00 00 10 00       	mov    $0x100000,%esi
  4028b2:	48 89 df             	mov    %rbx,%rdi
  4028b5:	e8 c6 e8 ff ff       	call   401180 <munmap@plt>
  4028ba:	48 83 c4 08          	add    $0x8,%rsp
  4028be:	5b                   	pop    %rbx
  4028bf:	5d                   	pop    %rbp
  4028c0:	c3                   	ret
  4028c1:	be 00 00 10 00       	mov    $0x100000,%esi
  4028c6:	48 89 c7             	mov    %rax,%rdi
  4028c9:	e8 b2 e8 ff ff       	call   401180 <munmap@plt>
  4028ce:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4028d3:	48 8d 15 66 1b 00 00 	lea    0x1b66(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  4028da:	be 02 00 00 00       	mov    $0x2,%esi
  4028df:	48 8b 3d fa 4b 00 00 	mov    0x4bfa(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4028eb:	e8 10 e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4028f5:	e8 e6 e8 ff ff       	call   4011e0 <exit@plt>

00000000004028fa <rio_readinitb>:
  4028fa:	89 37                	mov    %esi,(%rdi)
  4028fc:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402903:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402907:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40290b:	c3                   	ret

000000000040290c <sigalrm_handler>:
  40290c:	f3 0f 1e fa          	endbr64
  402910:	50                   	push   %rax
  402911:	58                   	pop    %rax
  402912:	48 83 ec 08          	sub    $0x8,%rsp
  402916:	b9 00 00 00 00       	mov    $0x0,%ecx
  40291b:	48 8d 15 46 1b 00 00 	lea    0x1b46(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  402922:	be 02 00 00 00       	mov    $0x2,%esi
  402927:	48 8b 3d b2 4b 00 00 	mov    0x4bb2(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  40292e:	b8 00 00 00 00       	mov    $0x0,%eax
  402933:	e8 c8 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402938:	bf 01 00 00 00       	mov    $0x1,%edi
  40293d:	e8 9e e8 ff ff       	call   4011e0 <exit@plt>

0000000000402942 <rio_writen>:
  402942:	41 55                	push   %r13
  402944:	41 54                	push   %r12
  402946:	55                   	push   %rbp
  402947:	53                   	push   %rbx
  402948:	48 83 ec 08          	sub    $0x8,%rsp
  40294c:	41 89 fc             	mov    %edi,%r12d
  40294f:	48 89 f5             	mov    %rsi,%rbp
  402952:	49 89 d5             	mov    %rdx,%r13
  402955:	48 89 d3             	mov    %rdx,%rbx
  402958:	eb 06                	jmp    402960 <rio_writen+0x1e>
  40295a:	48 29 c3             	sub    %rax,%rbx
  40295d:	48 01 c5             	add    %rax,%rbp
  402960:	48 85 db             	test   %rbx,%rbx
  402963:	74 24                	je     402989 <rio_writen+0x47>
  402965:	48 89 da             	mov    %rbx,%rdx
  402968:	48 89 ee             	mov    %rbp,%rsi
  40296b:	44 89 e7             	mov    %r12d,%edi
  40296e:	e8 1d e7 ff ff       	call   401090 <write@plt>
  402973:	48 85 c0             	test   %rax,%rax
  402976:	7f e2                	jg     40295a <rio_writen+0x18>
  402978:	e8 b3 e6 ff ff       	call   401030 <__errno_location@plt>
  40297d:	83 38 04             	cmpl   $0x4,(%rax)
  402980:	75 15                	jne    402997 <rio_writen+0x55>
  402982:	b8 00 00 00 00       	mov    $0x0,%eax
  402987:	eb d1                	jmp    40295a <rio_writen+0x18>
  402989:	4c 89 e8             	mov    %r13,%rax
  40298c:	48 83 c4 08          	add    $0x8,%rsp
  402990:	5b                   	pop    %rbx
  402991:	5d                   	pop    %rbp
  402992:	41 5c                	pop    %r12
  402994:	41 5d                	pop    %r13
  402996:	c3                   	ret
  402997:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40299e:	eb ec                	jmp    40298c <rio_writen+0x4a>

00000000004029a0 <rio_read>:
  4029a0:	41 55                	push   %r13
  4029a2:	41 54                	push   %r12
  4029a4:	55                   	push   %rbp
  4029a5:	53                   	push   %rbx
  4029a6:	48 83 ec 08          	sub    $0x8,%rsp
  4029aa:	48 89 fb             	mov    %rdi,%rbx
  4029ad:	49 89 f5             	mov    %rsi,%r13
  4029b0:	49 89 d4             	mov    %rdx,%r12
  4029b3:	eb 0a                	jmp    4029bf <rio_read+0x1f>
  4029b5:	e8 76 e6 ff ff       	call   401030 <__errno_location@plt>
  4029ba:	83 38 04             	cmpl   $0x4,(%rax)
  4029bd:	75 5f                	jne    402a1e <rio_read+0x7e>
  4029bf:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4029c2:	85 ed                	test   %ebp,%ebp
  4029c4:	7f 22                	jg     4029e8 <rio_read+0x48>
  4029c6:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4029ca:	8b 3b                	mov    (%rbx),%edi
  4029cc:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029d1:	48 89 ee             	mov    %rbp,%rsi
  4029d4:	e8 07 e7 ff ff       	call   4010e0 <read@plt>
  4029d9:	89 43 04             	mov    %eax,0x4(%rbx)
  4029dc:	85 c0                	test   %eax,%eax
  4029de:	78 d5                	js     4029b5 <rio_read+0x15>
  4029e0:	74 45                	je     402a27 <rio_read+0x87>
  4029e2:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029e6:	eb d7                	jmp    4029bf <rio_read+0x1f>
  4029e8:	89 e8                	mov    %ebp,%eax
  4029ea:	4c 39 e0             	cmp    %r12,%rax
  4029ed:	72 03                	jb     4029f2 <rio_read+0x52>
  4029ef:	44 89 e5             	mov    %r12d,%ebp
  4029f2:	4c 63 e5             	movslq %ebp,%r12
  4029f5:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4029f9:	4c 89 e2             	mov    %r12,%rdx
  4029fc:	4c 89 ef             	mov    %r13,%rdi
  4029ff:	e8 3c e7 ff ff       	call   401140 <memcpy@plt>
  402a04:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a08:	8b 43 04             	mov    0x4(%rbx),%eax
  402a0b:	29 e8                	sub    %ebp,%eax
  402a0d:	89 43 04             	mov    %eax,0x4(%rbx)
  402a10:	4c 89 e0             	mov    %r12,%rax
  402a13:	48 83 c4 08          	add    $0x8,%rsp
  402a17:	5b                   	pop    %rbx
  402a18:	5d                   	pop    %rbp
  402a19:	41 5c                	pop    %r12
  402a1b:	41 5d                	pop    %r13
  402a1d:	c3                   	ret
  402a1e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a25:	eb ec                	jmp    402a13 <rio_read+0x73>
  402a27:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2c:	eb e5                	jmp    402a13 <rio_read+0x73>

0000000000402a2e <rio_readlineb>:
  402a2e:	41 55                	push   %r13
  402a30:	41 54                	push   %r12
  402a32:	55                   	push   %rbp
  402a33:	53                   	push   %rbx
  402a34:	48 83 ec 18          	sub    $0x18,%rsp
  402a38:	49 89 fd             	mov    %rdi,%r13
  402a3b:	48 89 f5             	mov    %rsi,%rbp
  402a3e:	49 89 d4             	mov    %rdx,%r12
  402a41:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a48:	00 00 
  402a4a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a4f:	31 c0                	xor    %eax,%eax
  402a51:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a56:	eb 18                	jmp    402a70 <rio_readlineb+0x42>
  402a58:	85 c0                	test   %eax,%eax
  402a5a:	75 65                	jne    402ac1 <rio_readlineb+0x93>
  402a5c:	48 83 fb 01          	cmp    $0x1,%rbx
  402a60:	75 3d                	jne    402a9f <rio_readlineb+0x71>
  402a62:	b8 00 00 00 00       	mov    $0x0,%eax
  402a67:	eb 3d                	jmp    402aa6 <rio_readlineb+0x78>
  402a69:	48 83 c3 01          	add    $0x1,%rbx
  402a6d:	48 89 d5             	mov    %rdx,%rbp
  402a70:	4c 39 e3             	cmp    %r12,%rbx
  402a73:	73 2a                	jae    402a9f <rio_readlineb+0x71>
  402a75:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a7a:	ba 01 00 00 00       	mov    $0x1,%edx
  402a7f:	4c 89 ef             	mov    %r13,%rdi
  402a82:	e8 19 ff ff ff       	call   4029a0 <rio_read>
  402a87:	83 f8 01             	cmp    $0x1,%eax
  402a8a:	75 cc                	jne    402a58 <rio_readlineb+0x2a>
  402a8c:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a90:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a95:	88 45 00             	mov    %al,0x0(%rbp)
  402a98:	3c 0a                	cmp    $0xa,%al
  402a9a:	75 cd                	jne    402a69 <rio_readlineb+0x3b>
  402a9c:	48 89 d5             	mov    %rdx,%rbp
  402a9f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402aa3:	48 89 d8             	mov    %rbx,%rax
  402aa6:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402aab:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ab2:	00 00 
  402ab4:	75 14                	jne    402aca <rio_readlineb+0x9c>
  402ab6:	48 83 c4 18          	add    $0x18,%rsp
  402aba:	5b                   	pop    %rbx
  402abb:	5d                   	pop    %rbp
  402abc:	41 5c                	pop    %r12
  402abe:	41 5d                	pop    %r13
  402ac0:	c3                   	ret
  402ac1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402ac8:	eb dc                	jmp    402aa6 <rio_readlineb+0x78>
  402aca:	e8 ff fb ff ff       	call   4026ce <__stack_chk_fail>

0000000000402acf <urlencode>:
  402acf:	41 54                	push   %r12
  402ad1:	55                   	push   %rbp
  402ad2:	53                   	push   %rbx
  402ad3:	48 83 ec 10          	sub    $0x10,%rsp
  402ad7:	48 89 fb             	mov    %rdi,%rbx
  402ada:	48 89 f5             	mov    %rsi,%rbp
  402add:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ae4:	00 00 
  402ae6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402aeb:	31 c0                	xor    %eax,%eax
  402aed:	e8 ae e5 ff ff       	call   4010a0 <strlen@plt>
  402af2:	eb 0f                	jmp    402b03 <urlencode+0x34>
  402af4:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402af8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402afc:	48 83 c3 01          	add    $0x1,%rbx
  402b00:	44 89 e0             	mov    %r12d,%eax
  402b03:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b07:	85 c0                	test   %eax,%eax
  402b09:	0f 84 a8 00 00 00    	je     402bb7 <urlencode+0xe8>
  402b0f:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b13:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b17:	0f 94 c0             	sete   %al
  402b1a:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b1e:	0f 94 c2             	sete   %dl
  402b21:	08 d0                	or     %dl,%al
  402b23:	75 cf                	jne    402af4 <urlencode+0x25>
  402b25:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b29:	74 c9                	je     402af4 <urlencode+0x25>
  402b2b:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b2f:	74 c3                	je     402af4 <urlencode+0x25>
  402b31:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b35:	3c 09                	cmp    $0x9,%al
  402b37:	76 bb                	jbe    402af4 <urlencode+0x25>
  402b39:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b3d:	3c 19                	cmp    $0x19,%al
  402b3f:	76 b3                	jbe    402af4 <urlencode+0x25>
  402b41:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b45:	3c 19                	cmp    $0x19,%al
  402b47:	76 ab                	jbe    402af4 <urlencode+0x25>
  402b49:	41 80 f8 20          	cmp    $0x20,%r8b
  402b4d:	74 56                	je     402ba5 <urlencode+0xd6>
  402b4f:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b53:	3c 5f                	cmp    $0x5f,%al
  402b55:	0f 96 c0             	setbe  %al
  402b58:	41 80 f8 09          	cmp    $0x9,%r8b
  402b5c:	0f 94 c2             	sete   %dl
  402b5f:	08 d0                	or     %dl,%al
  402b61:	74 4f                	je     402bb2 <urlencode+0xe3>
  402b63:	48 89 e7             	mov    %rsp,%rdi
  402b66:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b6a:	48 8d 0d e5 1b 00 00 	lea    0x1be5(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402b71:	ba 08 00 00 00       	mov    $0x8,%edx
  402b76:	be 02 00 00 00       	mov    $0x2,%esi
  402b7b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b80:	e8 9b e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b85:	0f b6 04 24          	movzbl (%rsp),%eax
  402b89:	88 45 00             	mov    %al,0x0(%rbp)
  402b8c:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b91:	88 45 01             	mov    %al,0x1(%rbp)
  402b94:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b99:	88 45 02             	mov    %al,0x2(%rbp)
  402b9c:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402ba0:	e9 57 ff ff ff       	jmp    402afc <urlencode+0x2d>
  402ba5:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402ba9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bad:	e9 4a ff ff ff       	jmp    402afc <urlencode+0x2d>
  402bb2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bb7:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402bbc:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402bc3:	00 00 
  402bc5:	75 09                	jne    402bd0 <urlencode+0x101>
  402bc7:	48 83 c4 10          	add    $0x10,%rsp
  402bcb:	5b                   	pop    %rbx
  402bcc:	5d                   	pop    %rbp
  402bcd:	41 5c                	pop    %r12
  402bcf:	c3                   	ret
  402bd0:	e8 f9 fa ff ff       	call   4026ce <__stack_chk_fail>

0000000000402bd5 <submitr>:
  402bd5:	f3 0f 1e fa          	endbr64
  402bd9:	41 57                	push   %r15
  402bdb:	41 56                	push   %r14
  402bdd:	41 55                	push   %r13
  402bdf:	41 54                	push   %r12
  402be1:	55                   	push   %rbp
  402be2:	53                   	push   %rbx
  402be3:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402bea:	ff 
  402beb:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bf2:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bf7:	4c 39 dc             	cmp    %r11,%rsp
  402bfa:	75 ef                	jne    402beb <submitr+0x16>
  402bfc:	48 83 ec 68          	sub    $0x68,%rsp
  402c00:	49 89 fd             	mov    %rdi,%r13
  402c03:	41 89 f6             	mov    %esi,%r14d
  402c06:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402c0b:	49 89 cc             	mov    %rcx,%r12
  402c0e:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402c13:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402c18:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402c1f:	00 
  402c20:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c27:	00 00 
  402c29:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c30:	00 
  402c31:	31 c0                	xor    %eax,%eax
  402c33:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c3a:	00 
  402c3b:	ba 00 00 00 00       	mov    $0x0,%edx
  402c40:	be 01 00 00 00       	mov    $0x1,%esi
  402c45:	bf 02 00 00 00       	mov    $0x2,%edi
  402c4a:	e8 e1 e5 ff ff       	call   401230 <socket@plt>
  402c4f:	85 c0                	test   %eax,%eax
  402c51:	0f 88 72 02 00 00    	js     402ec9 <submitr+0x2f4>
  402c57:	89 c3                	mov    %eax,%ebx
  402c59:	4c 89 ef             	mov    %r13,%rdi
  402c5c:	e8 af e4 ff ff       	call   401110 <gethostbyname@plt>
  402c61:	48 85 c0             	test   %rax,%rax
  402c64:	0f 84 ab 02 00 00    	je     402f15 <submitr+0x340>
  402c6a:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c6f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c73:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c78:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c7f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c83:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c87:	48 8b 30             	mov    (%rax),%rsi
  402c8a:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c8f:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c94:	e8 87 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402c99:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402c9e:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402ca4:	ba 10 00 00 00       	mov    $0x10,%edx
  402ca9:	48 89 ee             	mov    %rbp,%rsi
  402cac:	89 df                	mov    %ebx,%edi
  402cae:	e8 3d e5 ff ff       	call   4011f0 <connect@plt>
  402cb3:	85 c0                	test   %eax,%eax
  402cb5:	0f 88 cc 02 00 00    	js     402f87 <submitr+0x3b2>
  402cbb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402cc0:	e8 db e3 ff ff       	call   4010a0 <strlen@plt>
  402cc5:	49 89 c6             	mov    %rax,%r14
  402cc8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402ccd:	e8 ce e3 ff ff       	call   4010a0 <strlen@plt>
  402cd2:	48 89 c5             	mov    %rax,%rbp
  402cd5:	4c 89 e7             	mov    %r12,%rdi
  402cd8:	e8 c3 e3 ff ff       	call   4010a0 <strlen@plt>
  402cdd:	48 01 c5             	add    %rax,%rbp
  402ce0:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402ce5:	e8 b6 e3 ff ff       	call   4010a0 <strlen@plt>
  402cea:	48 01 c5             	add    %rax,%rbp
  402ced:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402cf1:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402cf8:	00 
  402cf9:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402cff:	0f 87 e6 02 00 00    	ja     402feb <submitr+0x416>
  402d05:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d0c:	00 
  402d0d:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d12:	b8 00 00 00 00       	mov    $0x0,%eax
  402d17:	48 89 f7             	mov    %rsi,%rdi
  402d1a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d1d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d22:	e8 a8 fd ff ff       	call   402acf <urlencode>
  402d27:	85 c0                	test   %eax,%eax
  402d29:	0f 88 2e 03 00 00    	js     40305d <submitr+0x488>
  402d2f:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d36:	00 
  402d37:	48 83 ec 08          	sub    $0x8,%rsp
  402d3b:	41 55                	push   %r13
  402d3d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d44:	00 
  402d45:	50                   	push   %rax
  402d46:	41 54                	push   %r12
  402d48:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d4d:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d52:	48 8d 0d 37 17 00 00 	lea    0x1737(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d59:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d5e:	be 02 00 00 00       	mov    $0x2,%esi
  402d63:	48 89 ef             	mov    %rbp,%rdi
  402d66:	b8 00 00 00 00       	mov    $0x0,%eax
  402d6b:	e8 b0 e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d70:	48 83 c4 20          	add    $0x20,%rsp
  402d74:	48 89 ef             	mov    %rbp,%rdi
  402d77:	e8 24 e3 ff ff       	call   4010a0 <strlen@plt>
  402d7c:	48 89 c2             	mov    %rax,%rdx
  402d7f:	48 89 ee             	mov    %rbp,%rsi
  402d82:	89 df                	mov    %ebx,%edi
  402d84:	e8 b9 fb ff ff       	call   402942 <rio_writen>
  402d89:	48 85 c0             	test   %rax,%rax
  402d8c:	0f 88 53 03 00 00    	js     4030e5 <submitr+0x510>
  402d92:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d97:	89 de                	mov    %ebx,%esi
  402d99:	48 89 ef             	mov    %rbp,%rdi
  402d9c:	e8 59 fb ff ff       	call   4028fa <rio_readinitb>
  402da1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402da8:	00 
  402da9:	ba 00 20 00 00       	mov    $0x2000,%edx
  402dae:	48 89 ef             	mov    %rbp,%rdi
  402db1:	e8 78 fc ff ff       	call   402a2e <rio_readlineb>
  402db6:	48 85 c0             	test   %rax,%rax
  402db9:	0f 8e 92 03 00 00    	jle    403151 <submitr+0x57c>
  402dbf:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402dc4:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402dcb:	00 
  402dcc:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402dd3:	00 
  402dd4:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402ddb:	00 
  402ddc:	48 8d 35 7a 19 00 00 	lea    0x197a(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402de3:	b8 00 00 00 00       	mov    $0x0,%eax
  402de8:	e8 83 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402ded:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402df4:	00 
  402df5:	48 8d 35 78 19 00 00 	lea    0x1978(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402dfc:	e8 ef e2 ff ff       	call   4010f0 <strcmp@plt>
  402e01:	85 c0                	test   %eax,%eax
  402e03:	0f 84 c8 03 00 00    	je     4031d1 <submitr+0x5fc>
  402e09:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e10:	00 
  402e11:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e16:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e1b:	e8 0e fc ff ff       	call   402a2e <rio_readlineb>
  402e20:	48 85 c0             	test   %rax,%rax
  402e23:	7f c8                	jg     402ded <submitr+0x218>
  402e25:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e2c:	3a 20 43 
  402e2f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e36:	20 75 6e 
  402e39:	49 89 07             	mov    %rax,(%r15)
  402e3c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e40:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e47:	74 6f 20 
  402e4a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e51:	68 65 61 
  402e54:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e58:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e5c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e63:	66 72 6f 
  402e66:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e6d:	6f 6c 61 
  402e70:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e74:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e78:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e7f:	6c 61 62 
  402e82:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e89:	65 72 00 
  402e8c:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e90:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e94:	89 df                	mov    %ebx,%edi
  402e96:	e8 35 e2 ff ff       	call   4010d0 <close@plt>
  402e9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ea0:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402ea7:	00 
  402ea8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402eaf:	00 00 
  402eb1:	0f 85 67 04 00 00    	jne    40331e <submitr+0x749>
  402eb7:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402ebe:	5b                   	pop    %rbx
  402ebf:	5d                   	pop    %rbp
  402ec0:	41 5c                	pop    %r12
  402ec2:	41 5d                	pop    %r13
  402ec4:	41 5e                	pop    %r14
  402ec6:	41 5f                	pop    %r15
  402ec8:	c3                   	ret
  402ec9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ed0:	3a 20 43 
  402ed3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402eda:	20 75 6e 
  402edd:	49 89 07             	mov    %rax,(%r15)
  402ee0:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ee4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eeb:	74 6f 20 
  402eee:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ef5:	65 20 73 
  402ef8:	49 89 47 10          	mov    %rax,0x10(%r15)
  402efc:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f00:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402f07:	65 74 00 
  402f0a:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402f0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f13:	eb 8b                	jmp    402ea0 <submitr+0x2cb>
  402f15:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f1c:	3a 20 44 
  402f1f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f26:	20 75 6e 
  402f29:	49 89 07             	mov    %rax,(%r15)
  402f2c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f30:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f37:	74 6f 20 
  402f3a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f41:	76 65 20 
  402f44:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f48:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f4c:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f53:	61 62 20 
  402f56:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f5d:	72 20 61 
  402f60:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f64:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f68:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f6f:	73 73 00 
  402f72:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f76:	89 df                	mov    %ebx,%edi
  402f78:	e8 53 e1 ff ff       	call   4010d0 <close@plt>
  402f7d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f82:	e9 19 ff ff ff       	jmp    402ea0 <submitr+0x2cb>
  402f87:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f8e:	3a 20 55 
  402f91:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f98:	20 74 6f 
  402f9b:	49 89 07             	mov    %rax,(%r15)
  402f9e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fa2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fa9:	65 63 74 
  402fac:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402fb3:	68 65 20 
  402fb6:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fba:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fbe:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402fc5:	6c 61 62 
  402fc8:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fcf:	65 72 00 
  402fd2:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402fd6:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402fda:	89 df                	mov    %ebx,%edi
  402fdc:	e8 ef e0 ff ff       	call   4010d0 <close@plt>
  402fe1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fe6:	e9 b5 fe ff ff       	jmp    402ea0 <submitr+0x2cb>
  402feb:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402ff2:	3a 20 52 
  402ff5:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402ffc:	20 73 74 
  402fff:	49 89 07             	mov    %rax,(%r15)
  403002:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403006:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40300d:	74 6f 6f 
  403010:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403017:	65 2e 20 
  40301a:	49 89 47 10          	mov    %rax,0x10(%r15)
  40301e:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403022:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  403029:	61 73 65 
  40302c:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403033:	49 54 52 
  403036:	49 89 47 20          	mov    %rax,0x20(%r15)
  40303a:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40303e:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403045:	55 46 00 
  403048:	49 89 47 30          	mov    %rax,0x30(%r15)
  40304c:	89 df                	mov    %ebx,%edi
  40304e:	e8 7d e0 ff ff       	call   4010d0 <close@plt>
  403053:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403058:	e9 43 fe ff ff       	jmp    402ea0 <submitr+0x2cb>
  40305d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403064:	3a 20 55 
  403067:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  40306e:	20 73 74 
  403071:	49 89 07             	mov    %rax,(%r15)
  403074:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403078:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40307f:	63 6f 6e 
  403082:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403089:	20 61 6e 
  40308c:	49 89 47 10          	mov    %rax,0x10(%r15)
  403090:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403094:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40309b:	67 61 6c 
  40309e:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4030a5:	6e 70 72 
  4030a8:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030ac:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030b0:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4030b7:	6c 65 20 
  4030ba:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4030c1:	63 74 65 
  4030c4:	49 89 47 30          	mov    %rax,0x30(%r15)
  4030c8:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4030cc:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  4030d3:	00 
  4030d4:	89 df                	mov    %ebx,%edi
  4030d6:	e8 f5 df ff ff       	call   4010d0 <close@plt>
  4030db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030e0:	e9 bb fd ff ff       	jmp    402ea0 <submitr+0x2cb>
  4030e5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030ec:	3a 20 43 
  4030ef:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030f6:	20 75 6e 
  4030f9:	49 89 07             	mov    %rax,(%r15)
  4030fc:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403100:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403107:	74 6f 20 
  40310a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403111:	20 74 6f 
  403114:	49 89 47 10          	mov    %rax,0x10(%r15)
  403118:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40311c:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403123:	41 75 74 
  403126:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  40312d:	73 65 72 
  403130:	49 89 47 20          	mov    %rax,0x20(%r15)
  403134:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403138:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  40313f:	00 
  403140:	89 df                	mov    %ebx,%edi
  403142:	e8 89 df ff ff       	call   4010d0 <close@plt>
  403147:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40314c:	e9 4f fd ff ff       	jmp    402ea0 <submitr+0x2cb>
  403151:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403158:	3a 20 43 
  40315b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403162:	20 75 6e 
  403165:	49 89 07             	mov    %rax,(%r15)
  403168:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40316c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403173:	74 6f 20 
  403176:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40317d:	66 69 72 
  403180:	49 89 47 10          	mov    %rax,0x10(%r15)
  403184:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403188:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40318f:	61 64 65 
  403192:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403199:	6d 20 41 
  40319c:	49 89 47 20          	mov    %rax,0x20(%r15)
  4031a0:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4031a4:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4031ab:	6c 61 62 
  4031ae:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4031b5:	65 72 00 
  4031b8:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  4031bc:	49 89 57 36          	mov    %rdx,0x36(%r15)
  4031c0:	89 df                	mov    %ebx,%edi
  4031c2:	e8 09 df ff ff       	call   4010d0 <close@plt>
  4031c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031cc:	e9 cf fc ff ff       	jmp    402ea0 <submitr+0x2cb>
  4031d1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031d8:	00 
  4031d9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4031de:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031e3:	e8 46 f8 ff ff       	call   402a2e <rio_readlineb>
  4031e8:	48 85 c0             	test   %rax,%rax
  4031eb:	7e 78                	jle    403265 <submitr+0x690>
  4031ed:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031f2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031f9:	0f 85 e6 00 00 00    	jne    4032e5 <submitr+0x710>
  4031ff:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403206:	00 
  403207:	4c 89 ff             	mov    %r15,%rdi
  40320a:	e8 61 de ff ff       	call   401070 <strcpy@plt>
  40320f:	89 df                	mov    %ebx,%edi
  403211:	e8 ba de ff ff       	call   4010d0 <close@plt>
  403216:	48 8d 35 51 15 00 00 	lea    0x1551(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  40321d:	4c 89 ff             	mov    %r15,%rdi
  403220:	e8 cb de ff ff       	call   4010f0 <strcmp@plt>
  403225:	85 c0                	test   %eax,%eax
  403227:	0f 84 73 fc ff ff    	je     402ea0 <submitr+0x2cb>
  40322d:	48 8d 35 3e 15 00 00 	lea    0x153e(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  403234:	4c 89 ff             	mov    %r15,%rdi
  403237:	e8 b4 de ff ff       	call   4010f0 <strcmp@plt>
  40323c:	85 c0                	test   %eax,%eax
  40323e:	0f 84 5c fc ff ff    	je     402ea0 <submitr+0x2cb>
  403244:	48 8d 35 2c 15 00 00 	lea    0x152c(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  40324b:	4c 89 ff             	mov    %r15,%rdi
  40324e:	e8 9d de ff ff       	call   4010f0 <strcmp@plt>
  403253:	85 c0                	test   %eax,%eax
  403255:	0f 84 45 fc ff ff    	je     402ea0 <submitr+0x2cb>
  40325b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403260:	e9 3b fc ff ff       	jmp    402ea0 <submitr+0x2cb>
  403265:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40326c:	3a 20 43 
  40326f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403276:	20 75 6e 
  403279:	49 89 07             	mov    %rax,(%r15)
  40327c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403280:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403287:	74 6f 20 
  40328a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403291:	73 74 61 
  403294:	49 89 47 10          	mov    %rax,0x10(%r15)
  403298:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40329c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4032a3:	65 73 73 
  4032a6:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4032ad:	72 6f 6d 
  4032b0:	49 89 47 20          	mov    %rax,0x20(%r15)
  4032b4:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4032b8:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4032bf:	6c 61 62 
  4032c2:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4032c9:	65 72 00 
  4032cc:	49 89 47 30          	mov    %rax,0x30(%r15)
  4032d0:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4032d4:	89 df                	mov    %ebx,%edi
  4032d6:	e8 f5 dd ff ff       	call   4010d0 <close@plt>
  4032db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e0:	e9 bb fb ff ff       	jmp    402ea0 <submitr+0x2cb>
  4032e5:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032ec:	00 
  4032ed:	48 8d 0d fc 11 00 00 	lea    0x11fc(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  4032f4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4032fb:	be 02 00 00 00       	mov    $0x2,%esi
  403300:	4c 89 ff             	mov    %r15,%rdi
  403303:	b8 00 00 00 00       	mov    $0x0,%eax
  403308:	e8 13 df ff ff       	call   401220 <__sprintf_chk@plt>
  40330d:	89 df                	mov    %ebx,%edi
  40330f:	e8 bc dd ff ff       	call   4010d0 <close@plt>
  403314:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403319:	e9 82 fb ff ff       	jmp    402ea0 <submitr+0x2cb>
  40331e:	e8 ab f3 ff ff       	call   4026ce <__stack_chk_fail>

0000000000403323 <init_timeout>:
  403323:	f3 0f 1e fa          	endbr64
  403327:	85 ff                	test   %edi,%edi
  403329:	74 26                	je     403351 <init_timeout+0x2e>
  40332b:	53                   	push   %rbx
  40332c:	89 fb                	mov    %edi,%ebx
  40332e:	78 1a                	js     40334a <init_timeout+0x27>
  403330:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 40290c <sigalrm_handler>
  403337:	bf 0e 00 00 00       	mov    $0xe,%edi
  40333c:	e8 bf dd ff ff       	call   401100 <signal@plt>
  403341:	89 df                	mov    %ebx,%edi
  403343:	e8 78 dd ff ff       	call   4010c0 <alarm@plt>
  403348:	5b                   	pop    %rbx
  403349:	c3                   	ret
  40334a:	bb 00 00 00 00       	mov    $0x0,%ebx
  40334f:	eb df                	jmp    403330 <init_timeout+0xd>
  403351:	c3                   	ret

0000000000403352 <init_driver>:
  403352:	f3 0f 1e fa          	endbr64
  403356:	41 54                	push   %r12
  403358:	55                   	push   %rbp
  403359:	53                   	push   %rbx
  40335a:	48 83 ec 20          	sub    $0x20,%rsp
  40335e:	48 89 fd             	mov    %rdi,%rbp
  403361:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403368:	00 00 
  40336a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40336f:	31 c0                	xor    %eax,%eax
  403371:	be 01 00 00 00       	mov    $0x1,%esi
  403376:	bf 0d 00 00 00       	mov    $0xd,%edi
  40337b:	e8 80 dd ff ff       	call   401100 <signal@plt>
  403380:	be 01 00 00 00       	mov    $0x1,%esi
  403385:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40338a:	e8 71 dd ff ff       	call   401100 <signal@plt>
  40338f:	be 01 00 00 00       	mov    $0x1,%esi
  403394:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403399:	e8 62 dd ff ff       	call   401100 <signal@plt>
  40339e:	ba 00 00 00 00       	mov    $0x0,%edx
  4033a3:	be 01 00 00 00       	mov    $0x1,%esi
  4033a8:	bf 02 00 00 00       	mov    $0x2,%edi
  4033ad:	e8 7e de ff ff       	call   401230 <socket@plt>
  4033b2:	85 c0                	test   %eax,%eax
  4033b4:	0f 88 93 00 00 00    	js     40344d <init_driver+0xfb>
  4033ba:	89 c3                	mov    %eax,%ebx
  4033bc:	48 8d 3d b7 13 00 00 	lea    0x13b7(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4033c3:	e8 48 dd ff ff       	call   401110 <gethostbyname@plt>
  4033c8:	48 85 c0             	test   %rax,%rax
  4033cb:	0f 84 c9 00 00 00    	je     40349a <init_driver+0x148>
  4033d1:	49 89 e4             	mov    %rsp,%r12
  4033d4:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4033d8:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4033dc:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033e2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033e6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033ea:	48 8b 30             	mov    (%rax),%rsi
  4033ed:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033f2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033f7:	e8 24 dd ff ff       	call   401120 <__memmove_chk@plt>
  4033fc:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  403403:	ba 10 00 00 00       	mov    $0x10,%edx
  403408:	4c 89 e6             	mov    %r12,%rsi
  40340b:	89 df                	mov    %ebx,%edi
  40340d:	e8 de dd ff ff       	call   4011f0 <connect@plt>
  403412:	85 c0                	test   %eax,%eax
  403414:	0f 88 e5 00 00 00    	js     4034ff <init_driver+0x1ad>
  40341a:	89 df                	mov    %ebx,%edi
  40341c:	e8 af dc ff ff       	call   4010d0 <close@plt>
  403421:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403427:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40342b:	b8 00 00 00 00       	mov    $0x0,%eax
  403430:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403435:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40343c:	00 00 
  40343e:	0f 85 27 01 00 00    	jne    40356b <init_driver+0x219>
  403444:	48 83 c4 20          	add    $0x20,%rsp
  403448:	5b                   	pop    %rbx
  403449:	5d                   	pop    %rbp
  40344a:	41 5c                	pop    %r12
  40344c:	c3                   	ret
  40344d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403454:	3a 20 43 
  403457:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40345e:	20 75 6e 
  403461:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403465:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403469:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403470:	74 6f 20 
  403473:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40347a:	65 20 73 
  40347d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403481:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403485:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  40348c:	65 74 00 
  40348f:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403493:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403498:	eb 96                	jmp    403430 <init_driver+0xde>
  40349a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4034a1:	3a 20 44 
  4034a4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4034ab:	20 75 6e 
  4034ae:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034b2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034b6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034bd:	74 6f 20 
  4034c0:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4034c7:	76 65 20 
  4034ca:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034ce:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034d2:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4034d9:	65 72 20 
  4034dc:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034e3:	73 73 00 
  4034e6:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034ea:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034ee:	89 df                	mov    %ebx,%edi
  4034f0:	e8 db db ff ff       	call   4010d0 <close@plt>
  4034f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034fa:	e9 31 ff ff ff       	jmp    403430 <init_driver+0xde>
  4034ff:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  403506:	30 35 2e 
  403509:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40350d:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  403514:	33 32 00 
  403517:	48 89 45 07          	mov    %rax,0x7(%rbp)
  40351b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403522:	3a 20 55 
  403525:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40352c:	20 74 6f 
  40352f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403533:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403537:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40353e:	65 63 74 
  403541:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403548:	65 72 76 
  40354b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40354f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403553:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40355a:	89 df                	mov    %ebx,%edi
  40355c:	e8 6f db ff ff       	call   4010d0 <close@plt>
  403561:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403566:	e9 c5 fe ff ff       	jmp    403430 <init_driver+0xde>
  40356b:	e8 5e f1 ff ff       	call   4026ce <__stack_chk_fail>

0000000000403570 <driver_post>:
  403570:	f3 0f 1e fa          	endbr64
  403574:	53                   	push   %rbx
  403575:	4c 89 cb             	mov    %r9,%rbx
  403578:	45 85 c0             	test   %r8d,%r8d
  40357b:	75 18                	jne    403595 <driver_post+0x25>
  40357d:	48 85 ff             	test   %rdi,%rdi
  403580:	74 05                	je     403587 <driver_post+0x17>
  403582:	80 3f 00             	cmpb   $0x0,(%rdi)
  403585:	75 37                	jne    4035be <driver_post+0x4e>
  403587:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40358c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403590:	44 89 c0             	mov    %r8d,%eax
  403593:	5b                   	pop    %rbx
  403594:	c3                   	ret
  403595:	48 89 ca             	mov    %rcx,%rdx
  403598:	48 8d 35 ea 11 00 00 	lea    0x11ea(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  40359f:	bf 02 00 00 00       	mov    $0x2,%edi
  4035a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4035a9:	e8 e2 db ff ff       	call   401190 <__printf_chk@plt>
  4035ae:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035b3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4035bc:	eb d5                	jmp    403593 <driver_post+0x23>
  4035be:	48 83 ec 08          	sub    $0x8,%rsp
  4035c2:	41 51                	push   %r9
  4035c4:	49 89 c9             	mov    %rcx,%r9
  4035c7:	49 89 d0             	mov    %rdx,%r8
  4035ca:	48 89 f9             	mov    %rdi,%rcx
  4035cd:	48 89 f2             	mov    %rsi,%rdx
  4035d0:	be 50 00 00 00       	mov    $0x50,%esi
  4035d5:	48 8d 3d 9e 11 00 00 	lea    0x119e(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4035dc:	e8 f4 f5 ff ff       	call   402bd5 <submitr>
  4035e1:	48 83 c4 10          	add    $0x10,%rsp
  4035e5:	eb ac                	jmp    403593 <driver_post+0x23>

00000000004035e7 <check>:
  4035e7:	f3 0f 1e fa          	endbr64
  4035eb:	89 f8                	mov    %edi,%eax
  4035ed:	c1 e8 1c             	shr    $0x1c,%eax
  4035f0:	74 1d                	je     40360f <check+0x28>
  4035f2:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035f7:	83 f9 1f             	cmp    $0x1f,%ecx
  4035fa:	7f 0d                	jg     403609 <check+0x22>
  4035fc:	89 f8                	mov    %edi,%eax
  4035fe:	d3 e8                	shr    %cl,%eax
  403600:	3c 0a                	cmp    $0xa,%al
  403602:	74 11                	je     403615 <check+0x2e>
  403604:	83 c1 08             	add    $0x8,%ecx
  403607:	eb ee                	jmp    4035f7 <check+0x10>
  403609:	b8 01 00 00 00       	mov    $0x1,%eax
  40360e:	c3                   	ret
  40360f:	b8 00 00 00 00       	mov    $0x0,%eax
  403614:	c3                   	ret
  403615:	b8 00 00 00 00       	mov    $0x0,%eax
  40361a:	c3                   	ret

000000000040361b <gencookie>:
  40361b:	f3 0f 1e fa          	endbr64
  40361f:	53                   	push   %rbx
  403620:	83 c7 01             	add    $0x1,%edi
  403623:	e8 18 da ff ff       	call   401040 <srandom@plt>
  403628:	e8 33 db ff ff       	call   401160 <random@plt>
  40362d:	89 c3                	mov    %eax,%ebx
  40362f:	89 c7                	mov    %eax,%edi
  403631:	e8 b1 ff ff ff       	call   4035e7 <check>
  403636:	85 c0                	test   %eax,%eax
  403638:	74 ee                	je     403628 <gencookie+0xd>
  40363a:	89 d8                	mov    %ebx,%eax
  40363c:	5b                   	pop    %rbx
  40363d:	c3                   	ret

Disassembly of section .fini:

0000000000403640 <_fini>:
  403640:	f3 0f 1e fa          	endbr64
  403644:	48 83 ec 08          	sub    $0x8,%rsp
  403648:	48 83 c4 08          	add    $0x8,%rsp
  40364c:	c3                   	ret
