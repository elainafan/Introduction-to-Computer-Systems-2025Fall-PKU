
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 4f 00 00 	mov    0x4fd1(%rip),%rax        # 405fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 4f 00 00    	push   0x4fca(%rip)        # 405ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 4f 00 00    	jmp    *0x4fcc(%rip)        # 405ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 406000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 406008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 406010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 406018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 406020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 406028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 406030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 406038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 406040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 406048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 406050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 406058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 406060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 406068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 406070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 406078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 406080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 406088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 406090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 406098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 4060a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 4060a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 4060b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 4060b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 4060c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 4f 00 00    	jmp    *0x4f02(%rip)        # 4060c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 4e 00 00    	jmp    *0x4efa(%rip)        # 4060d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 4e 00 00    	jmp    *0x4ef2(%rip)        # 4060d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 4e 00 00    	jmp    *0x4eea(%rip)        # 4060e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 4e 00 00    	jmp    *0x4ee2(%rip)        # 4060e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 4e 00 00    	jmp    *0x4eda(%rip)        # 4060f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 4e 00 00    	jmp    *0x4ed2(%rip)        # 4060f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 4e 00 00    	jmp    *0x4eca(%rip)        # 406100 <socket@GLIBC_2.2.5>
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
  40125f:	ff 15 73 4d 00 00    	call   *0x4d73(%rip)        # 405fd8 <__libc_start_main@GLIBC_2.34>
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
  401280:	b8 90 64 40 00       	mov    $0x406490,%eax
  401285:	48 3d 90 64 40 00    	cmp    $0x406490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 64 40 00       	mov    $0x406490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 64 40 00       	mov    $0x406490,%esi
  4012b5:	48 81 ee 90 64 40 00 	sub    $0x406490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 64 40 00       	mov    $0x406490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 51 00 00 00 	cmpb   $0x0,0x51ed(%rip)        # 4064e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 51 00 00 01 	movb   $0x1,0x51db(%rip)        # 4064e8 <completed.0>
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
  40132f:	83 3d fa 51 00 00 00 	cmpl   $0x0,0x51fa(%rip)        # 406530 <is_checker>
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
  4013f7:	89 3d 23 51 00 00    	mov    %edi,0x5123(%rip)        # 406520 <check_level>
  4013fd:	8b 3d 2d 4d 00 00    	mov    0x4d2d(%rip),%edi        # 406130 <target_id>
  401403:	e8 45 20 00 00       	call   40344d <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 51 00 00    	mov    %eax,0x511c(%rip)        # 40652c <cookie>
  401410:	e8 38 20 00 00       	call   40344d <gencookie>
  401415:	89 05 0d 51 00 00    	mov    %eax,0x510d(%rip)        # 406528 <authkey>
  40141b:	8b 05 0f 4d 00 00    	mov    0x4d0f(%rip),%eax        # 406130 <target_id>
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
  40144e:	48 89 05 33 50 00 00 	mov    %rax,0x5033(%rip)        # 406488 <buf_offset>
  401455:	c6 05 ec 5c 00 00 63 	movb   $0x63,0x5cec(%rip)        # 407148 <target_prefix>
  40145c:	83 3d 1d 50 00 00 00 	cmpl   $0x0,0x501d(%rip)        # 406480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 50 00 00 00 	cmpl   $0x0,0x50c4(%rip)        # 406530 <is_checker>
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
  4014a6:	e8 d9 1c 00 00       	call   403184 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 29 10 00 00       	call   402500 <__stack_chk_fail>

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
  401519:	48 c7 c6 ef 23 40 00 	mov    $0x4023ef,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 95 23 40 00 	mov    $0x402395,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 49 24 40 00 	mov    $0x402449,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 4f 00 00 00 	cmpl   $0x0,0x4fdd(%rip)        # 406530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 4f 00 00 	mov    0x4f3d(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 4f 00 00 	mov    %rax,0x4fae(%rip)        # 406518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 a3 24 40 00 	mov    $0x4024a3,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 4f 00 00 	mov    0x4f0b(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 4f 00 00 	mov    %rax,0x4f57(%rip)        # 406518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 4e 00 00 	mov    0x4ef3(%rip),%rcx        # 4064c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 4f 00 00 	mov    0x4f00(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 4e 00 00 	mov    0x4ec0(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
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
  40163f:	48 8b 3d 7a 4e 00 00 	mov    0x4e7a(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 4e 00 00 00 	movl   $0x0,0x4e26(%rip)        # 406480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 4e 00 00 	mov    0x4e55(%rip),%rsi        # 4064c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 00 00 00 00       	mov    $0x0,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 4e 00 00 00 	cmpl   $0x0,0x4e89(%rip)        # 406530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 4e 00 00 	cmp    %r14d,0x4e78(%rip)        # 406528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 4a 00 00 	mov    0x4a84(%rip),%rsi        # 406140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 eb 08 00 00       	call   401fd3 <check_fail>
  4016e8:	8b 15 3e 4e 00 00    	mov    0x4e3e(%rip),%edx        # 40652c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 4d 00 00 	mov    0x4d78(%rip),%rdi        # 406488 <buf_offset>
  401710:	e8 51 0f 00 00       	call   402666 <stable_launch>
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
  401737:	e8 c4 0d 00 00       	call   402500 <__stack_chk_fail>

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
  401ca5:	e8 56 08 00 00       	call   402500 <__stack_chk_fail>

0000000000401caa <getbuf>:
  401caa:	f3 0f 1e fa          	endbr64
  401cae:	48 83 ec 28          	sub    $0x28,%rsp # 正常的栈帧
  401cb2:	48 89 e7             	mov    %rsp,%rdi # 把%rsp赋给%rdi 
  401cb5:	e8 57 03 00 00       	call   402011 <Gets> # 调用gets
  401cba:	b8 01 00 00 00       	mov    $0x1,%eax # 将$eax置为1
  401cbf:	48 83 c4 28          	add    $0x28,%rsp # 正常的栈帧
  401cc3:	c3                   	ret 

0000000000401cc4 <getbuf_withcanary>:
  401cc4:	55                   	push   %rbp
  401cc5:	48 89 e5             	mov    %rsp,%rbp
  401cc8:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401ccf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401cd6:	00 00 
  401cd8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401cdc:	31 c0                	xor    %eax,%eax
  401cde:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ce5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401cec:	48 89 c7             	mov    %rax,%rdi
  401cef:	e8 1d 03 00 00       	call   402011 <Gets>
  401cf4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401cf7:	48 98                	cltq
  401cf9:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401d00:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401d04:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401d0b:	ba 80 00 00 00       	mov    $0x80,%edx
  401d10:	48 89 c6             	mov    %rax,%rsi
  401d13:	48 89 cf             	mov    %rcx,%rdi
  401d16:	e8 25 f4 ff ff       	call   401140 <memcpy@plt>
  401d1b:	b8 01 00 00 00       	mov    $0x1,%eax
  401d20:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401d24:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401d2b:	00 00 
  401d2d:	74 05                	je     401d34 <getbuf_withcanary+0x70>
  401d2f:	e8 cc 07 00 00       	call   402500 <__stack_chk_fail>
  401d34:	c9                   	leave
  401d35:	c3                   	ret

0000000000401d36 <touch1>:
  401d36:	f3 0f 1e fa          	endbr64
  401d3a:	50                   	push   %rax
  401d3b:	58                   	pop    %rax
  401d3c:	48 83 ec 08          	sub    $0x8,%rsp
  401d40:	c7 05 da 47 00 00 01 	movl   $0x1,0x47da(%rip)        # 406524 <vlevel>
  401d47:	00 00 00 
  401d4a:	48 8d 3d ba 28 00 00 	lea    0x28ba(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d51:	e8 2a f3 ff ff       	call   401080 <puts@plt>
  401d56:	bf 01 00 00 00       	mov    $0x1,%edi
  401d5b:	e8 2e 05 00 00       	call   40228e <validate>
  401d60:	bf 00 00 00 00       	mov    $0x0,%edi
  401d65:	e8 76 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d6a <touch2>:
  401d6a:	f3 0f 1e fa          	endbr64
  401d6e:	50                   	push   %rax
  401d6f:	58                   	pop    %rax
  401d70:	48 83 ec 08          	sub    $0x8,%rsp
  401d74:	89 fa                	mov    %edi,%edx
  401d76:	c7 05 a4 47 00 00 02 	movl   $0x2,0x47a4(%rip)        # 406524 <vlevel>
  401d7d:	00 00 00 
  401d80:	39 3d a6 47 00 00    	cmp    %edi,0x47a6(%rip)        # 40652c <cookie>
  401d86:	74 2a                	je     401db2 <touch2+0x48>
  401d88:	48 8d 35 f1 23 00 00 	lea    0x23f1(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d8f:	bf 02 00 00 00       	mov    $0x2,%edi
  401d94:	b8 00 00 00 00       	mov    $0x0,%eax
  401d99:	e8 f2 f3 ff ff       	call   401190 <__printf_chk@plt>
  401d9e:	bf 02 00 00 00       	mov    $0x2,%edi
  401da3:	e8 c1 05 00 00       	call   402369 <fail>
  401da8:	bf 00 00 00 00       	mov    $0x0,%edi
  401dad:	e8 2e f4 ff ff       	call   4011e0 <exit@plt>
  401db2:	48 8d 35 9f 23 00 00 	lea    0x239f(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401db9:	bf 02 00 00 00       	mov    $0x2,%edi
  401dbe:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc3:	e8 c8 f3 ff ff       	call   401190 <__printf_chk@plt>
  401dc8:	bf 02 00 00 00       	mov    $0x2,%edi
  401dcd:	e8 bc 04 00 00       	call   40228e <validate>
  401dd2:	eb d4                	jmp    401da8 <touch2+0x3e>

0000000000401dd4 <hexmatch>:
  401dd4:	f3 0f 1e fa          	endbr64
  401dd8:	41 54                	push   %r12
  401dda:	55                   	push   %rbp
  401ddb:	53                   	push   %rbx
  401ddc:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401de0:	89 fd                	mov    %edi,%ebp
  401de2:	48 89 f3             	mov    %rsi,%rbx
  401de5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401dec:	00 00 
  401dee:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401df3:	31 c0                	xor    %eax,%eax
  401df5:	e8 66 f3 ff ff       	call   401160 <random@plt>
  401dfa:	48 89 c6             	mov    %rax,%rsi
  401dfd:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401e04:	0a d7 a3 
  401e07:	48 f7 ea             	imul   %rdx
  401e0a:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401e0e:	48 c1 f9 06          	sar    $0x6,%rcx
  401e12:	48 89 f0             	mov    %rsi,%rax
  401e15:	48 c1 f8 3f          	sar    $0x3f,%rax
  401e19:	48 29 c1             	sub    %rax,%rcx
  401e1c:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401e20:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401e24:	48 c1 e0 02          	shl    $0x2,%rax
  401e28:	48 29 c6             	sub    %rax,%rsi
  401e2b:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401e2f:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401e34:	48 39 d6             	cmp    %rdx,%rsi
  401e37:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e3b:	48 29 f2             	sub    %rsi,%rdx
  401e3e:	41 89 e8             	mov    %ebp,%r8d
  401e41:	48 8d 0d e0 27 00 00 	lea    0x27e0(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e48:	be 02 00 00 00       	mov    $0x2,%esi
  401e4d:	4c 89 e7             	mov    %r12,%rdi
  401e50:	b8 00 00 00 00       	mov    $0x0,%eax
  401e55:	e8 c6 f3 ff ff       	call   401220 <__sprintf_chk@plt>
  401e5a:	ba 09 00 00 00       	mov    $0x9,%edx
  401e5f:	4c 89 e6             	mov    %r12,%rsi
  401e62:	48 89 df             	mov    %rbx,%rdi
  401e65:	e8 f6 f1 ff ff       	call   401060 <strncmp@plt>
  401e6a:	85 c0                	test   %eax,%eax
  401e6c:	0f 94 c0             	sete   %al
  401e6f:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e74:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e7b:	00 00 
  401e7d:	75 0c                	jne    401e8b <hexmatch+0xb7>
  401e7f:	0f b6 c0             	movzbl %al,%eax
  401e82:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e86:	5b                   	pop    %rbx
  401e87:	5d                   	pop    %rbp
  401e88:	41 5c                	pop    %r12
  401e8a:	c3                   	ret
  401e8b:	e8 70 06 00 00       	call   402500 <__stack_chk_fail>

0000000000401e90 <touch3>:
  401e90:	f3 0f 1e fa          	endbr64
  401e94:	53                   	push   %rbx
  401e95:	48 89 fb             	mov    %rdi,%rbx
  401e98:	c7 05 82 46 00 00 03 	movl   $0x3,0x4682(%rip)        # 406524 <vlevel>
  401e9f:	00 00 00 
  401ea2:	48 89 fe             	mov    %rdi,%rsi
  401ea5:	8b 3d 81 46 00 00    	mov    0x4681(%rip),%edi        # 40652c <cookie>
  401eab:	e8 24 ff ff ff       	call   401dd4 <hexmatch>
  401eb0:	85 c0                	test   %eax,%eax
  401eb2:	74 2d                	je     401ee1 <touch3+0x51>
  401eb4:	48 89 da             	mov    %rbx,%rdx
  401eb7:	48 8d 35 ea 22 00 00 	lea    0x22ea(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401ebe:	bf 02 00 00 00       	mov    $0x2,%edi
  401ec3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec8:	e8 c3 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ecd:	bf 03 00 00 00       	mov    $0x3,%edi
  401ed2:	e8 b7 03 00 00       	call   40228e <validate>
  401ed7:	bf 00 00 00 00       	mov    $0x0,%edi
  401edc:	e8 ff f2 ff ff       	call   4011e0 <exit@plt>
  401ee1:	48 89 da             	mov    %rbx,%rdx
  401ee4:	48 8d 35 e5 22 00 00 	lea    0x22e5(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401eeb:	bf 02 00 00 00       	mov    $0x2,%edi
  401ef0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef5:	e8 96 f2 ff ff       	call   401190 <__printf_chk@plt>
  401efa:	bf 03 00 00 00       	mov    $0x3,%edi
  401eff:	e8 65 04 00 00       	call   402369 <fail>
  401f04:	eb d1                	jmp    401ed7 <touch3+0x47>

0000000000401f06 <test>:
  401f06:	f3 0f 1e fa          	endbr64
  401f0a:	48 83 ec 08          	sub    $0x8,%rsp # 正常的栈帧
  401f0e:	b8 00 00 00 00       	mov    $0x0,%eax # 将%eax置为0
  401f13:	e8 92 fd ff ff       	call   401caa <getbuf> # 调用getbuf函数
  401f18:	89 c2                	mov    %eax,%edx # 将getbuf的结果赋给%edx
  401f1a:	48 8d 35 d7 22 00 00 	lea    0x22d7(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8> 取出字符串给%rsi
  401f21:	bf 02 00 00 00       	mov    $0x2,%edi # %edi=2
  401f26:	b8 00 00 00 00       	mov    $0x0,%eax # %eax=0
  401f2b:	e8 60 f2 ff ff       	call   401190 <__printf_chk@plt> # 调用printf函数
  401f30:	48 83 c4 08          	add    $0x8,%rsp # 退回栈帧
  401f34:	c3                   	ret

0000000000401f35 <test2>:
  401f35:	f3 0f 1e fa          	endbr64
  401f39:	48 83 ec 08          	sub    $0x8,%rsp
  401f3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f42:	e8 7d fd ff ff       	call   401cc4 <getbuf_withcanary>
  401f47:	89 c2                	mov    %eax,%edx
  401f49:	48 8d 35 d0 22 00 00 	lea    0x22d0(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f50:	bf 02 00 00 00       	mov    $0x2,%edi
  401f55:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5a:	e8 31 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f5f:	48 83 c4 08          	add    $0x8,%rsp
  401f63:	c3                   	ret

0000000000401f64 <save_char>:
  401f64:	8b 05 da 51 00 00    	mov    0x51da(%rip),%eax        # 407144 <gets_cnt>
  401f6a:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401f6f:	7f 4a                	jg     401fbb <save_char+0x57>
  401f71:	89 f9                	mov    %edi,%ecx
  401f73:	c0 e9 04             	shr    $0x4,%cl
  401f76:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401f79:	4c 8d 05 80 28 00 00 	lea    0x2880(%rip),%r8        # 404800 <trans_char>
  401f80:	83 e1 0f             	and    $0xf,%ecx
  401f83:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401f88:	48 8d 0d b1 45 00 00 	lea    0x45b1(%rip),%rcx        # 406540 <gets_buf>
  401f8f:	48 63 f2             	movslq %edx,%rsi
  401f92:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401f96:	8d 72 01             	lea    0x1(%rdx),%esi
  401f99:	83 e7 0f             	and    $0xf,%edi
  401f9c:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401fa1:	48 63 f6             	movslq %esi,%rsi
  401fa4:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401fa8:	83 c2 02             	add    $0x2,%edx
  401fab:	48 63 d2             	movslq %edx,%rdx
  401fae:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401fb2:	83 c0 01             	add    $0x1,%eax
  401fb5:	89 05 89 51 00 00    	mov    %eax,0x5189(%rip)        # 407144 <gets_cnt>
  401fbb:	c3                   	ret

0000000000401fbc <save_term>:
  401fbc:	8b 05 82 51 00 00    	mov    0x5182(%rip),%eax        # 407144 <gets_cnt>
  401fc2:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401fc5:	48 98                	cltq
  401fc7:	48 8d 15 72 45 00 00 	lea    0x4572(%rip),%rdx        # 406540 <gets_buf>
  401fce:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401fd2:	c3                   	ret

0000000000401fd3 <check_fail>:
  401fd3:	f3 0f 1e fa          	endbr64
  401fd7:	50                   	push   %rax
  401fd8:	58                   	pop    %rax
  401fd9:	48 83 ec 08          	sub    $0x8,%rsp
  401fdd:	0f be 15 64 51 00 00 	movsbl 0x5164(%rip),%edx        # 407148 <target_prefix>
  401fe4:	4c 8d 05 55 45 00 00 	lea    0x4555(%rip),%r8        # 406540 <gets_buf>
  401feb:	8b 0d 2f 45 00 00    	mov    0x452f(%rip),%ecx        # 406520 <check_level>
  401ff1:	48 8d 35 35 26 00 00 	lea    0x2635(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  401ff8:	bf 02 00 00 00       	mov    $0x2,%edi
  401ffd:	b8 00 00 00 00       	mov    $0x0,%eax
  402002:	e8 89 f1 ff ff       	call   401190 <__printf_chk@plt>
  402007:	bf 01 00 00 00       	mov    $0x1,%edi
  40200c:	e8 cf f1 ff ff       	call   4011e0 <exit@plt>

0000000000402011 <Gets>:
  402011:	f3 0f 1e fa          	endbr64
  402015:	41 54                	push   %r12
  402017:	55                   	push   %rbp
  402018:	53                   	push   %rbx
  402019:	49 89 fc             	mov    %rdi,%r12
  40201c:	c7 05 1e 51 00 00 00 	movl   $0x0,0x511e(%rip)        # 407144 <gets_cnt>
  402023:	00 00 00 
  402026:	48 89 fb             	mov    %rdi,%rbx
  402029:	eb 11                	jmp    40203c <Gets+0x2b>
  40202b:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  40202f:	88 03                	mov    %al,(%rbx)
  402031:	0f b6 f8             	movzbl %al,%edi
  402034:	e8 2b ff ff ff       	call   401f64 <save_char>
  402039:	48 89 eb             	mov    %rbp,%rbx
  40203c:	48 8b 3d d5 44 00 00 	mov    0x44d5(%rip),%rdi        # 406518 <infile>
  402043:	e8 c8 f1 ff ff       	call   401210 <getc@plt>
  402048:	83 f8 ff             	cmp    $0xffffffff,%eax
  40204b:	74 05                	je     402052 <Gets+0x41>
  40204d:	83 f8 0a             	cmp    $0xa,%eax
  402050:	75 d9                	jne    40202b <Gets+0x1a>
  402052:	c6 03 00             	movb   $0x0,(%rbx)
  402055:	b8 00 00 00 00       	mov    $0x0,%eax
  40205a:	e8 5d ff ff ff       	call   401fbc <save_term>
  40205f:	4c 89 e0             	mov    %r12,%rax
  402062:	5b                   	pop    %rbx
  402063:	5d                   	pop    %rbp
  402064:	41 5c                	pop    %r12
  402066:	c3                   	ret

0000000000402067 <notify_server>:
  402067:	f3 0f 1e fa          	endbr64
  40206b:	55                   	push   %rbp
  40206c:	53                   	push   %rbx
  40206d:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402074:	ff 
  402075:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40207c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402081:	4c 39 dc             	cmp    %r11,%rsp
  402084:	75 ef                	jne    402075 <notify_server+0xe>
  402086:	48 83 ec 18          	sub    $0x18,%rsp
  40208a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402091:	00 00 
  402093:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40209a:	00 
  40209b:	31 c0                	xor    %eax,%eax
  40209d:	83 3d 8c 44 00 00 00 	cmpl   $0x0,0x448c(%rip)        # 406530 <is_checker>
  4020a4:	0f 85 c2 01 00 00    	jne    40226c <notify_server+0x205>
  4020aa:	89 fb                	mov    %edi,%ebx
  4020ac:	81 3d 8e 50 00 00 9c 	cmpl   $0x1f9c,0x508e(%rip)        # 407144 <gets_cnt>
  4020b3:	1f 00 00 
  4020b6:	0f 8f bd 00 00 00    	jg     402179 <notify_server+0x112>
  4020bc:	0f be 05 85 50 00 00 	movsbl 0x5085(%rip),%eax        # 407148 <target_prefix>
  4020c3:	83 3d b6 43 00 00 00 	cmpl   $0x0,0x43b6(%rip)        # 406480 <notify>
  4020ca:	0f 84 c4 00 00 00    	je     402194 <notify_server+0x12d>
  4020d0:	8b 15 52 44 00 00    	mov    0x4452(%rip),%edx        # 406528 <authkey>
  4020d6:	85 db                	test   %ebx,%ebx
  4020d8:	0f 84 c0 00 00 00    	je     40219e <notify_server+0x137>
  4020de:	48 8d 2d 5e 25 00 00 	lea    0x255e(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4020e5:	48 89 e7             	mov    %rsp,%rdi
  4020e8:	48 8d 0d 51 44 00 00 	lea    0x4451(%rip),%rcx        # 406540 <gets_buf>
  4020ef:	51                   	push   %rcx
  4020f0:	56                   	push   %rsi
  4020f1:	50                   	push   %rax
  4020f2:	52                   	push   %rdx
  4020f3:	49 89 e9             	mov    %rbp,%r9
  4020f6:	44 8b 05 33 40 00 00 	mov    0x4033(%rip),%r8d        # 406130 <target_id>
  4020fd:	48 8d 0d 49 25 00 00 	lea    0x2549(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  402104:	ba 00 20 00 00       	mov    $0x2000,%edx
  402109:	be 02 00 00 00       	mov    $0x2,%esi
  40210e:	b8 00 00 00 00       	mov    $0x0,%eax
  402113:	e8 08 f1 ff ff       	call   401220 <__sprintf_chk@plt>
  402118:	48 83 c4 20          	add    $0x20,%rsp
  40211c:	83 3d 5d 43 00 00 00 	cmpl   $0x0,0x435d(%rip)        # 406480 <notify>
  402123:	0f 84 ba 00 00 00    	je     4021e3 <notify_server+0x17c>
  402129:	48 89 e1             	mov    %rsp,%rcx
  40212c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402133:	00 
  402134:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40213a:	48 8b 15 07 40 00 00 	mov    0x4007(%rip),%rdx        # 406148 <lab>
  402141:	48 8b 35 08 40 00 00 	mov    0x4008(%rip),%rsi        # 406150 <course>
  402148:	48 8b 3d f1 3f 00 00 	mov    0x3ff1(%rip),%rdi        # 406140 <user_id>
  40214f:	e8 4e 12 00 00       	call   4033a2 <driver_post>
  402154:	85 c0                	test   %eax,%eax
  402156:	78 52                	js     4021aa <notify_server+0x143>
  402158:	85 db                	test   %ebx,%ebx
  40215a:	74 76                	je     4021d2 <notify_server+0x16b>
  40215c:	48 8d 3d 1d 21 00 00 	lea    0x211d(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  402163:	e8 18 ef ff ff       	call   401080 <puts@plt>
  402168:	48 8d 3d 06 25 00 00 	lea    0x2506(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  40216f:	e8 0c ef ff ff       	call   401080 <puts@plt>
  402174:	e9 f3 00 00 00       	jmp    40226c <notify_server+0x205>
  402179:	48 8d 35 d0 20 00 00 	lea    0x20d0(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  402180:	bf 02 00 00 00       	mov    $0x2,%edi
  402185:	e8 06 f0 ff ff       	call   401190 <__printf_chk@plt>
  40218a:	bf 01 00 00 00       	mov    $0x1,%edi
  40218f:	e8 4c f0 ff ff       	call   4011e0 <exit@plt>
  402194:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402199:	e9 38 ff ff ff       	jmp    4020d6 <notify_server+0x6f>
  40219e:	48 8d 2d a3 24 00 00 	lea    0x24a3(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  4021a5:	e9 3b ff ff ff       	jmp    4020e5 <notify_server+0x7e>
  4021aa:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4021b1:	00 
  4021b2:	48 8d 35 b0 24 00 00 	lea    0x24b0(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  4021b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4021be:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c3:	e8 c8 ef ff ff       	call   401190 <__printf_chk@plt>
  4021c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cd:	e8 0e f0 ff ff       	call   4011e0 <exit@plt>
  4021d2:	48 8d 3d a6 24 00 00 	lea    0x24a6(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4021d9:	e8 a2 ee ff ff       	call   401080 <puts@plt>
  4021de:	e9 89 00 00 00       	jmp    40226c <notify_server+0x205>
  4021e3:	48 89 ea             	mov    %rbp,%rdx
  4021e6:	48 8d 35 cb 20 00 00 	lea    0x20cb(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4021ed:	bf 02 00 00 00       	mov    $0x2,%edi
  4021f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f7:	e8 94 ef ff ff       	call   401190 <__printf_chk@plt>
  4021fc:	48 8b 15 3d 3f 00 00 	mov    0x3f3d(%rip),%rdx        # 406140 <user_id>
  402203:	48 8d 35 7c 24 00 00 	lea    0x247c(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  40220a:	bf 02 00 00 00       	mov    $0x2,%edi
  40220f:	b8 00 00 00 00       	mov    $0x0,%eax
  402214:	e8 77 ef ff ff       	call   401190 <__printf_chk@plt>
  402219:	48 8b 15 30 3f 00 00 	mov    0x3f30(%rip),%rdx        # 406150 <course>
  402220:	48 8d 35 6c 24 00 00 	lea    0x246c(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  402227:	bf 02 00 00 00       	mov    $0x2,%edi
  40222c:	b8 00 00 00 00       	mov    $0x0,%eax
  402231:	e8 5a ef ff ff       	call   401190 <__printf_chk@plt>
  402236:	48 8b 15 0b 3f 00 00 	mov    0x3f0b(%rip),%rdx        # 406148 <lab>
  40223d:	48 8d 35 5b 24 00 00 	lea    0x245b(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  402244:	bf 02 00 00 00       	mov    $0x2,%edi
  402249:	b8 00 00 00 00       	mov    $0x0,%eax
  40224e:	e8 3d ef ff ff       	call   401190 <__printf_chk@plt>
  402253:	48 89 e2             	mov    %rsp,%rdx
  402256:	48 8d 35 4b 24 00 00 	lea    0x244b(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  40225d:	bf 02 00 00 00       	mov    $0x2,%edi
  402262:	b8 00 00 00 00       	mov    $0x0,%eax
  402267:	e8 24 ef ff ff       	call   401190 <__printf_chk@plt>
  40226c:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402273:	00 
  402274:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40227b:	00 00 
  40227d:	75 0a                	jne    402289 <notify_server+0x222>
  40227f:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402286:	5b                   	pop    %rbx
  402287:	5d                   	pop    %rbp
  402288:	c3                   	ret
  402289:	e8 72 02 00 00       	call   402500 <__stack_chk_fail>

000000000040228e <validate>:
  40228e:	f3 0f 1e fa          	endbr64
  402292:	53                   	push   %rbx
  402293:	89 fb                	mov    %edi,%ebx
  402295:	83 3d 94 42 00 00 00 	cmpl   $0x0,0x4294(%rip)        # 406530 <is_checker>
  40229c:	74 79                	je     402317 <validate+0x89>
  40229e:	39 3d 80 42 00 00    	cmp    %edi,0x4280(%rip)        # 406524 <vlevel>
  4022a4:	75 39                	jne    4022df <validate+0x51>
  4022a6:	8b 15 74 42 00 00    	mov    0x4274(%rip),%edx        # 406520 <check_level>
  4022ac:	39 fa                	cmp    %edi,%edx
  4022ae:	75 45                	jne    4022f5 <validate+0x67>
  4022b0:	0f be 0d 91 4e 00 00 	movsbl 0x4e91(%rip),%ecx        # 407148 <target_prefix>
  4022b7:	4c 8d 0d 82 42 00 00 	lea    0x4282(%rip),%r9        # 406540 <gets_buf>
  4022be:	41 89 f8             	mov    %edi,%r8d
  4022c1:	8b 15 61 42 00 00    	mov    0x4261(%rip),%edx        # 406528 <authkey>
  4022c7:	48 8d 35 3a 20 00 00 	lea    0x203a(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4022ce:	bf 02 00 00 00       	mov    $0x2,%edi
  4022d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d8:	e8 b3 ee ff ff       	call   401190 <__printf_chk@plt>
  4022dd:	5b                   	pop    %rbx
  4022de:	c3                   	ret
  4022df:	48 8d 3d ce 23 00 00 	lea    0x23ce(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4022e6:	e8 95 ed ff ff       	call   401080 <puts@plt>
  4022eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f0:	e8 de fc ff ff       	call   401fd3 <check_fail>
  4022f5:	89 f9                	mov    %edi,%ecx
  4022f7:	48 8d 35 e2 1f 00 00 	lea    0x1fe2(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  4022fe:	bf 02 00 00 00       	mov    $0x2,%edi
  402303:	b8 00 00 00 00       	mov    $0x0,%eax
  402308:	e8 83 ee ff ff       	call   401190 <__printf_chk@plt>
  40230d:	b8 00 00 00 00       	mov    $0x0,%eax
  402312:	e8 bc fc ff ff       	call   401fd3 <check_fail>
  402317:	39 3d 07 42 00 00    	cmp    %edi,0x4207(%rip)        # 406524 <vlevel>
  40231d:	74 1a                	je     402339 <validate+0xab>
  40231f:	48 8d 3d 8e 23 00 00 	lea    0x238e(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  402326:	e8 55 ed ff ff       	call   401080 <puts@plt>
  40232b:	89 de                	mov    %ebx,%esi
  40232d:	bf 00 00 00 00       	mov    $0x0,%edi
  402332:	e8 30 fd ff ff       	call   402067 <notify_server>
  402337:	eb a4                	jmp    4022dd <validate+0x4f>
  402339:	0f be 0d 08 4e 00 00 	movsbl 0x4e08(%rip),%ecx        # 407148 <target_prefix>
  402340:	89 fa                	mov    %edi,%edx
  402342:	48 8d 35 e7 1f 00 00 	lea    0x1fe7(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402349:	bf 02 00 00 00       	mov    $0x2,%edi
  40234e:	b8 00 00 00 00       	mov    $0x0,%eax
  402353:	e8 38 ee ff ff       	call   401190 <__printf_chk@plt>
  402358:	89 de                	mov    %ebx,%esi
  40235a:	bf 01 00 00 00       	mov    $0x1,%edi
  40235f:	e8 03 fd ff ff       	call   402067 <notify_server>
  402364:	e9 74 ff ff ff       	jmp    4022dd <validate+0x4f>

0000000000402369 <fail>:
  402369:	f3 0f 1e fa          	endbr64
  40236d:	48 83 ec 08          	sub    $0x8,%rsp
  402371:	83 3d b8 41 00 00 00 	cmpl   $0x0,0x41b8(%rip)        # 406530 <is_checker>
  402378:	75 11                	jne    40238b <fail+0x22>
  40237a:	89 fe                	mov    %edi,%esi
  40237c:	bf 00 00 00 00       	mov    $0x0,%edi
  402381:	e8 e1 fc ff ff       	call   402067 <notify_server>
  402386:	48 83 c4 08          	add    $0x8,%rsp
  40238a:	c3                   	ret
  40238b:	b8 00 00 00 00       	mov    $0x0,%eax
  402390:	e8 3e fc ff ff       	call   401fd3 <check_fail>

0000000000402395 <bushandler>:
  402395:	f3 0f 1e fa          	endbr64
  402399:	50                   	push   %rax
  40239a:	58                   	pop    %rax
  40239b:	48 83 ec 08          	sub    $0x8,%rsp
  40239f:	83 3d 8a 41 00 00 00 	cmpl   $0x0,0x418a(%rip)        # 406530 <is_checker>
  4023a6:	74 16                	je     4023be <bushandler+0x29>
  4023a8:	48 8d 3d 23 23 00 00 	lea    0x2323(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  4023af:	e8 cc ec ff ff       	call   401080 <puts@plt>
  4023b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b9:	e8 15 fc ff ff       	call   401fd3 <check_fail>
  4023be:	48 8d 3d a3 1f 00 00 	lea    0x1fa3(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  4023c5:	e8 b6 ec ff ff       	call   401080 <puts@plt>
  4023ca:	48 8d 3d 0b 23 00 00 	lea    0x230b(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4023d1:	e8 aa ec ff ff       	call   401080 <puts@plt>
  4023d6:	be 00 00 00 00       	mov    $0x0,%esi
  4023db:	bf 00 00 00 00       	mov    $0x0,%edi
  4023e0:	e8 82 fc ff ff       	call   402067 <notify_server>
  4023e5:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ea:	e8 f1 ed ff ff       	call   4011e0 <exit@plt>

00000000004023ef <seghandler>:
  4023ef:	f3 0f 1e fa          	endbr64
  4023f3:	50                   	push   %rax
  4023f4:	58                   	pop    %rax
  4023f5:	48 83 ec 08          	sub    $0x8,%rsp
  4023f9:	83 3d 30 41 00 00 00 	cmpl   $0x0,0x4130(%rip)        # 406530 <is_checker>
  402400:	74 16                	je     402418 <seghandler+0x29>
  402402:	48 8d 3d e9 22 00 00 	lea    0x22e9(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  402409:	e8 72 ec ff ff       	call   401080 <puts@plt>
  40240e:	b8 00 00 00 00       	mov    $0x0,%eax
  402413:	e8 bb fb ff ff       	call   401fd3 <check_fail>
  402418:	48 8d 3d 69 1f 00 00 	lea    0x1f69(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  40241f:	e8 5c ec ff ff       	call   401080 <puts@plt>
  402424:	48 8d 3d b1 22 00 00 	lea    0x22b1(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40242b:	e8 50 ec ff ff       	call   401080 <puts@plt>
  402430:	be 00 00 00 00       	mov    $0x0,%esi
  402435:	bf 00 00 00 00       	mov    $0x0,%edi
  40243a:	e8 28 fc ff ff       	call   402067 <notify_server>
  40243f:	bf 01 00 00 00       	mov    $0x1,%edi
  402444:	e8 97 ed ff ff       	call   4011e0 <exit@plt>

0000000000402449 <illegalhandler>:
  402449:	f3 0f 1e fa          	endbr64
  40244d:	50                   	push   %rax
  40244e:	58                   	pop    %rax
  40244f:	48 83 ec 08          	sub    $0x8,%rsp
  402453:	83 3d d6 40 00 00 00 	cmpl   $0x0,0x40d6(%rip)        # 406530 <is_checker>
  40245a:	74 16                	je     402472 <illegalhandler+0x29>
  40245c:	48 8d 3d a2 22 00 00 	lea    0x22a2(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  402463:	e8 18 ec ff ff       	call   401080 <puts@plt>
  402468:	b8 00 00 00 00       	mov    $0x0,%eax
  40246d:	e8 61 fb ff ff       	call   401fd3 <check_fail>
  402472:	48 8d 3d 37 1f 00 00 	lea    0x1f37(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402479:	e8 02 ec ff ff       	call   401080 <puts@plt>
  40247e:	48 8d 3d 57 22 00 00 	lea    0x2257(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402485:	e8 f6 eb ff ff       	call   401080 <puts@plt>
  40248a:	be 00 00 00 00       	mov    $0x0,%esi
  40248f:	bf 00 00 00 00       	mov    $0x0,%edi
  402494:	e8 ce fb ff ff       	call   402067 <notify_server>
  402499:	bf 01 00 00 00       	mov    $0x1,%edi
  40249e:	e8 3d ed ff ff       	call   4011e0 <exit@plt>

00000000004024a3 <sigalrmhandler>:
  4024a3:	f3 0f 1e fa          	endbr64
  4024a7:	50                   	push   %rax
  4024a8:	58                   	pop    %rax
  4024a9:	48 83 ec 08          	sub    $0x8,%rsp
  4024ad:	83 3d 7c 40 00 00 00 	cmpl   $0x0,0x407c(%rip)        # 406530 <is_checker>
  4024b4:	74 16                	je     4024cc <sigalrmhandler+0x29>
  4024b6:	48 8d 3d 5c 22 00 00 	lea    0x225c(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  4024bd:	e8 be eb ff ff       	call   401080 <puts@plt>
  4024c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c7:	e8 07 fb ff ff       	call   401fd3 <check_fail>
  4024cc:	ba 02 00 00 00       	mov    $0x2,%edx
  4024d1:	48 8d 35 08 1f 00 00 	lea    0x1f08(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4024d8:	bf 02 00 00 00       	mov    $0x2,%edi
  4024dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e2:	e8 a9 ec ff ff       	call   401190 <__printf_chk@plt>
  4024e7:	be 00 00 00 00       	mov    $0x0,%esi
  4024ec:	bf 00 00 00 00       	mov    $0x0,%edi
  4024f1:	e8 71 fb ff ff       	call   402067 <notify_server>
  4024f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4024fb:	e8 e0 ec ff ff       	call   4011e0 <exit@plt>

0000000000402500 <__stack_chk_fail>:
  402500:	f3 0f 1e fa          	endbr64
  402504:	50                   	push   %rax
  402505:	58                   	pop    %rax
  402506:	48 83 ec 08          	sub    $0x8,%rsp
  40250a:	83 3d 1f 40 00 00 00 	cmpl   $0x0,0x401f(%rip)        # 406530 <is_checker>
  402511:	74 16                	je     402529 <__stack_chk_fail+0x29>
  402513:	48 8d 3d 07 22 00 00 	lea    0x2207(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  40251a:	e8 61 eb ff ff       	call   401080 <puts@plt>
  40251f:	b8 00 00 00 00       	mov    $0x0,%eax
  402524:	e8 aa fa ff ff       	call   401fd3 <check_fail>
  402529:	48 8d 3d e8 1e 00 00 	lea    0x1ee8(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  402530:	e8 4b eb ff ff       	call   401080 <puts@plt>
  402535:	48 8d 3d a0 21 00 00 	lea    0x21a0(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40253c:	e8 3f eb ff ff       	call   401080 <puts@plt>
  402541:	be 00 00 00 00       	mov    $0x0,%esi
  402546:	bf 00 00 00 00       	mov    $0x0,%edi
  40254b:	e8 17 fb ff ff       	call   402067 <notify_server>
  402550:	bf 01 00 00 00       	mov    $0x1,%edi
  402555:	e8 86 ec ff ff       	call   4011e0 <exit@plt>

000000000040255a <launch>:
  40255a:	f3 0f 1e fa          	endbr64
  40255e:	55                   	push   %rbp
  40255f:	48 89 e5             	mov    %rsp,%rbp
  402562:	53                   	push   %rbx
  402563:	48 83 ec 18          	sub    $0x18,%rsp
  402567:	48 89 fa             	mov    %rdi,%rdx
  40256a:	89 f3                	mov    %esi,%ebx
  40256c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402573:	00 00 
  402575:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402579:	31 c0                	xor    %eax,%eax
  40257b:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40257f:	48 89 c6             	mov    %rax,%rsi
  402582:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402586:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40258c:	48 89 e1             	mov    %rsp,%rcx
  40258f:	48 29 c1             	sub    %rax,%rcx
  402592:	48 39 cc             	cmp    %rcx,%rsp
  402595:	74 12                	je     4025a9 <launch+0x4f>
  402597:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40259e:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4025a5:	00 00 
  4025a7:	eb e9                	jmp    402592 <launch+0x38>
  4025a9:	48 89 f0             	mov    %rsi,%rax
  4025ac:	25 ff 0f 00 00       	and    $0xfff,%eax
  4025b1:	48 29 c4             	sub    %rax,%rsp
  4025b4:	48 85 c0             	test   %rax,%rax
  4025b7:	74 06                	je     4025bf <launch+0x65>
  4025b9:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4025bf:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4025c4:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4025c8:	48 89 d1             	mov    %rdx,%rcx
  4025cb:	be f4 00 00 00       	mov    $0xf4,%esi
  4025d0:	e8 fb eb ff ff       	call   4011d0 <__memset_chk@plt>
  4025d5:	48 8b 05 c4 3e 00 00 	mov    0x3ec4(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  4025dc:	48 39 05 35 3f 00 00 	cmp    %rax,0x3f35(%rip)        # 406518 <infile>
  4025e3:	74 42                	je     402627 <launch+0xcd>
  4025e5:	c7 05 35 3f 00 00 00 	movl   $0x0,0x3f35(%rip)        # 406524 <vlevel>
  4025ec:	00 00 00 
  4025ef:	85 db                	test   %ebx,%ebx
  4025f1:	75 4c                	jne    40263f <launch+0xe5>
  4025f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f8:	e8 09 f9 ff ff       	call   401f06 <test>
  4025fd:	83 3d 2c 3f 00 00 00 	cmpl   $0x0,0x3f2c(%rip)        # 406530 <is_checker>
  402604:	75 45                	jne    40264b <launch+0xf1>
  402606:	48 8d 3d 3b 21 00 00 	lea    0x213b(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  40260d:	e8 6e ea ff ff       	call   401080 <puts@plt>
  402612:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402616:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40261d:	00 00 
  40261f:	75 40                	jne    402661 <launch+0x107>
  402621:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402625:	c9                   	leave
  402626:	c3                   	ret
  402627:	48 8d 35 02 21 00 00 	lea    0x2102(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  40262e:	bf 02 00 00 00       	mov    $0x2,%edi
  402633:	b8 00 00 00 00       	mov    $0x0,%eax
  402638:	e8 53 eb ff ff       	call   401190 <__printf_chk@plt>
  40263d:	eb a6                	jmp    4025e5 <launch+0x8b>
  40263f:	b8 00 00 00 00       	mov    $0x0,%eax
  402644:	e8 ec f8 ff ff       	call   401f35 <test2>
  402649:	eb b2                	jmp    4025fd <launch+0xa3>
  40264b:	48 8d 3d eb 20 00 00 	lea    0x20eb(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  402652:	e8 29 ea ff ff       	call   401080 <puts@plt>
  402657:	b8 00 00 00 00       	mov    $0x0,%eax
  40265c:	e8 72 f9 ff ff       	call   401fd3 <check_fail>
  402661:	e8 9a fe ff ff       	call   402500 <__stack_chk_fail>

0000000000402666 <stable_launch>:
  402666:	f3 0f 1e fa          	endbr64
  40266a:	55                   	push   %rbp
  40266b:	53                   	push   %rbx
  40266c:	48 83 ec 08          	sub    $0x8,%rsp
  402670:	89 f5                	mov    %esi,%ebp
  402672:	48 89 3d 97 3e 00 00 	mov    %rdi,0x3e97(%rip)        # 406510 <global_offset>
  402679:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40267f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402685:	b9 32 01 00 00       	mov    $0x132,%ecx
  40268a:	ba 07 00 00 00       	mov    $0x7,%edx
  40268f:	be 00 00 10 00       	mov    $0x100000,%esi
  402694:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402699:	e8 12 ea ff ff       	call   4010b0 <mmap@plt>
  40269e:	48 89 c3             	mov    %rax,%rbx
  4026a1:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4026a7:	75 4a                	jne    4026f3 <stable_launch+0x8d>
  4026a9:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4026b0:	48 89 15 51 3e 00 00 	mov    %rdx,0x3e51(%rip)        # 406508 <stack_top>
  4026b7:	48 89 e0             	mov    %rsp,%rax
  4026ba:	48 89 d4             	mov    %rdx,%rsp
  4026bd:	48 89 c2             	mov    %rax,%rdx
  4026c0:	48 89 15 39 3e 00 00 	mov    %rdx,0x3e39(%rip)        # 406500 <global_save_stack>
  4026c7:	89 ee                	mov    %ebp,%esi
  4026c9:	48 8b 3d 40 3e 00 00 	mov    0x3e40(%rip),%rdi        # 406510 <global_offset>
  4026d0:	e8 85 fe ff ff       	call   40255a <launch>
  4026d5:	48 8b 05 24 3e 00 00 	mov    0x3e24(%rip),%rax        # 406500 <global_save_stack>
  4026dc:	48 89 c4             	mov    %rax,%rsp
  4026df:	be 00 00 10 00       	mov    $0x100000,%esi
  4026e4:	48 89 df             	mov    %rbx,%rdi
  4026e7:	e8 94 ea ff ff       	call   401180 <munmap@plt>
  4026ec:	48 83 c4 08          	add    $0x8,%rsp
  4026f0:	5b                   	pop    %rbx
  4026f1:	5d                   	pop    %rbp
  4026f2:	c3                   	ret
  4026f3:	be 00 00 10 00       	mov    $0x100000,%esi
  4026f8:	48 89 c7             	mov    %rax,%rdi
  4026fb:	e8 80 ea ff ff       	call   401180 <munmap@plt>
  402700:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402705:	48 8d 15 34 1d 00 00 	lea    0x1d34(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  40270c:	be 02 00 00 00       	mov    $0x2,%esi
  402711:	48 8b 3d c8 3d 00 00 	mov    0x3dc8(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  402718:	b8 00 00 00 00       	mov    $0x0,%eax
  40271d:	e8 de ea ff ff       	call   401200 <__fprintf_chk@plt>
  402722:	bf 01 00 00 00       	mov    $0x1,%edi
  402727:	e8 b4 ea ff ff       	call   4011e0 <exit@plt>

000000000040272c <rio_readinitb>:
  40272c:	89 37                	mov    %esi,(%rdi)
  40272e:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402735:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402739:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40273d:	c3                   	ret

000000000040273e <sigalrm_handler>:
  40273e:	f3 0f 1e fa          	endbr64
  402742:	50                   	push   %rax
  402743:	58                   	pop    %rax
  402744:	48 83 ec 08          	sub    $0x8,%rsp
  402748:	b9 00 00 00 00       	mov    $0x0,%ecx
  40274d:	48 8d 15 14 1d 00 00 	lea    0x1d14(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  402754:	be 02 00 00 00       	mov    $0x2,%esi
  402759:	48 8b 3d 80 3d 00 00 	mov    0x3d80(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  402760:	b8 00 00 00 00       	mov    $0x0,%eax
  402765:	e8 96 ea ff ff       	call   401200 <__fprintf_chk@plt>
  40276a:	bf 01 00 00 00       	mov    $0x1,%edi
  40276f:	e8 6c ea ff ff       	call   4011e0 <exit@plt>

0000000000402774 <rio_writen>:
  402774:	41 55                	push   %r13
  402776:	41 54                	push   %r12
  402778:	55                   	push   %rbp
  402779:	53                   	push   %rbx
  40277a:	48 83 ec 08          	sub    $0x8,%rsp
  40277e:	41 89 fc             	mov    %edi,%r12d
  402781:	48 89 f5             	mov    %rsi,%rbp
  402784:	49 89 d5             	mov    %rdx,%r13
  402787:	48 89 d3             	mov    %rdx,%rbx
  40278a:	eb 06                	jmp    402792 <rio_writen+0x1e>
  40278c:	48 29 c3             	sub    %rax,%rbx
  40278f:	48 01 c5             	add    %rax,%rbp
  402792:	48 85 db             	test   %rbx,%rbx
  402795:	74 24                	je     4027bb <rio_writen+0x47>
  402797:	48 89 da             	mov    %rbx,%rdx
  40279a:	48 89 ee             	mov    %rbp,%rsi
  40279d:	44 89 e7             	mov    %r12d,%edi
  4027a0:	e8 eb e8 ff ff       	call   401090 <write@plt>
  4027a5:	48 85 c0             	test   %rax,%rax
  4027a8:	7f e2                	jg     40278c <rio_writen+0x18>
  4027aa:	e8 81 e8 ff ff       	call   401030 <__errno_location@plt>
  4027af:	83 38 04             	cmpl   $0x4,(%rax)
  4027b2:	75 15                	jne    4027c9 <rio_writen+0x55>
  4027b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027b9:	eb d1                	jmp    40278c <rio_writen+0x18>
  4027bb:	4c 89 e8             	mov    %r13,%rax
  4027be:	48 83 c4 08          	add    $0x8,%rsp
  4027c2:	5b                   	pop    %rbx
  4027c3:	5d                   	pop    %rbp
  4027c4:	41 5c                	pop    %r12
  4027c6:	41 5d                	pop    %r13
  4027c8:	c3                   	ret
  4027c9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4027d0:	eb ec                	jmp    4027be <rio_writen+0x4a>

00000000004027d2 <rio_read>:
  4027d2:	41 55                	push   %r13
  4027d4:	41 54                	push   %r12
  4027d6:	55                   	push   %rbp
  4027d7:	53                   	push   %rbx
  4027d8:	48 83 ec 08          	sub    $0x8,%rsp
  4027dc:	48 89 fb             	mov    %rdi,%rbx
  4027df:	49 89 f5             	mov    %rsi,%r13
  4027e2:	49 89 d4             	mov    %rdx,%r12
  4027e5:	eb 0a                	jmp    4027f1 <rio_read+0x1f>
  4027e7:	e8 44 e8 ff ff       	call   401030 <__errno_location@plt>
  4027ec:	83 38 04             	cmpl   $0x4,(%rax)
  4027ef:	75 5f                	jne    402850 <rio_read+0x7e>
  4027f1:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4027f4:	85 ed                	test   %ebp,%ebp
  4027f6:	7f 22                	jg     40281a <rio_read+0x48>
  4027f8:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4027fc:	8b 3b                	mov    (%rbx),%edi
  4027fe:	ba 00 20 00 00       	mov    $0x2000,%edx
  402803:	48 89 ee             	mov    %rbp,%rsi
  402806:	e8 d5 e8 ff ff       	call   4010e0 <read@plt>
  40280b:	89 43 04             	mov    %eax,0x4(%rbx)
  40280e:	85 c0                	test   %eax,%eax
  402810:	78 d5                	js     4027e7 <rio_read+0x15>
  402812:	74 45                	je     402859 <rio_read+0x87>
  402814:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402818:	eb d7                	jmp    4027f1 <rio_read+0x1f>
  40281a:	89 e8                	mov    %ebp,%eax
  40281c:	4c 39 e0             	cmp    %r12,%rax
  40281f:	72 03                	jb     402824 <rio_read+0x52>
  402821:	44 89 e5             	mov    %r12d,%ebp
  402824:	4c 63 e5             	movslq %ebp,%r12
  402827:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40282b:	4c 89 e2             	mov    %r12,%rdx
  40282e:	4c 89 ef             	mov    %r13,%rdi
  402831:	e8 0a e9 ff ff       	call   401140 <memcpy@plt>
  402836:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40283a:	8b 43 04             	mov    0x4(%rbx),%eax
  40283d:	29 e8                	sub    %ebp,%eax
  40283f:	89 43 04             	mov    %eax,0x4(%rbx)
  402842:	4c 89 e0             	mov    %r12,%rax
  402845:	48 83 c4 08          	add    $0x8,%rsp
  402849:	5b                   	pop    %rbx
  40284a:	5d                   	pop    %rbp
  40284b:	41 5c                	pop    %r12
  40284d:	41 5d                	pop    %r13
  40284f:	c3                   	ret
  402850:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402857:	eb ec                	jmp    402845 <rio_read+0x73>
  402859:	b8 00 00 00 00       	mov    $0x0,%eax
  40285e:	eb e5                	jmp    402845 <rio_read+0x73>

0000000000402860 <rio_readlineb>:
  402860:	41 55                	push   %r13
  402862:	41 54                	push   %r12
  402864:	55                   	push   %rbp
  402865:	53                   	push   %rbx
  402866:	48 83 ec 18          	sub    $0x18,%rsp
  40286a:	49 89 fd             	mov    %rdi,%r13
  40286d:	48 89 f5             	mov    %rsi,%rbp
  402870:	49 89 d4             	mov    %rdx,%r12
  402873:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40287a:	00 00 
  40287c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402881:	31 c0                	xor    %eax,%eax
  402883:	bb 01 00 00 00       	mov    $0x1,%ebx
  402888:	eb 18                	jmp    4028a2 <rio_readlineb+0x42>
  40288a:	85 c0                	test   %eax,%eax
  40288c:	75 65                	jne    4028f3 <rio_readlineb+0x93>
  40288e:	48 83 fb 01          	cmp    $0x1,%rbx
  402892:	75 3d                	jne    4028d1 <rio_readlineb+0x71>
  402894:	b8 00 00 00 00       	mov    $0x0,%eax
  402899:	eb 3d                	jmp    4028d8 <rio_readlineb+0x78>
  40289b:	48 83 c3 01          	add    $0x1,%rbx
  40289f:	48 89 d5             	mov    %rdx,%rbp
  4028a2:	4c 39 e3             	cmp    %r12,%rbx
  4028a5:	73 2a                	jae    4028d1 <rio_readlineb+0x71>
  4028a7:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4028ac:	ba 01 00 00 00       	mov    $0x1,%edx
  4028b1:	4c 89 ef             	mov    %r13,%rdi
  4028b4:	e8 19 ff ff ff       	call   4027d2 <rio_read>
  4028b9:	83 f8 01             	cmp    $0x1,%eax
  4028bc:	75 cc                	jne    40288a <rio_readlineb+0x2a>
  4028be:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4028c2:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  4028c7:	88 45 00             	mov    %al,0x0(%rbp)
  4028ca:	3c 0a                	cmp    $0xa,%al
  4028cc:	75 cd                	jne    40289b <rio_readlineb+0x3b>
  4028ce:	48 89 d5             	mov    %rdx,%rbp
  4028d1:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4028d5:	48 89 d8             	mov    %rbx,%rax
  4028d8:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4028dd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4028e4:	00 00 
  4028e6:	75 14                	jne    4028fc <rio_readlineb+0x9c>
  4028e8:	48 83 c4 18          	add    $0x18,%rsp
  4028ec:	5b                   	pop    %rbx
  4028ed:	5d                   	pop    %rbp
  4028ee:	41 5c                	pop    %r12
  4028f0:	41 5d                	pop    %r13
  4028f2:	c3                   	ret
  4028f3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4028fa:	eb dc                	jmp    4028d8 <rio_readlineb+0x78>
  4028fc:	e8 ff fb ff ff       	call   402500 <__stack_chk_fail>

0000000000402901 <urlencode>:
  402901:	41 54                	push   %r12
  402903:	55                   	push   %rbp
  402904:	53                   	push   %rbx
  402905:	48 83 ec 10          	sub    $0x10,%rsp
  402909:	48 89 fb             	mov    %rdi,%rbx
  40290c:	48 89 f5             	mov    %rsi,%rbp
  40290f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402916:	00 00 
  402918:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40291d:	31 c0                	xor    %eax,%eax
  40291f:	e8 7c e7 ff ff       	call   4010a0 <strlen@plt>
  402924:	eb 0f                	jmp    402935 <urlencode+0x34>
  402926:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40292a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40292e:	48 83 c3 01          	add    $0x1,%rbx
  402932:	44 89 e0             	mov    %r12d,%eax
  402935:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402939:	85 c0                	test   %eax,%eax
  40293b:	0f 84 a8 00 00 00    	je     4029e9 <urlencode+0xe8>
  402941:	44 0f b6 03          	movzbl (%rbx),%r8d
  402945:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402949:	0f 94 c0             	sete   %al
  40294c:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402950:	0f 94 c2             	sete   %dl
  402953:	08 d0                	or     %dl,%al
  402955:	75 cf                	jne    402926 <urlencode+0x25>
  402957:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40295b:	74 c9                	je     402926 <urlencode+0x25>
  40295d:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402961:	74 c3                	je     402926 <urlencode+0x25>
  402963:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402967:	3c 09                	cmp    $0x9,%al
  402969:	76 bb                	jbe    402926 <urlencode+0x25>
  40296b:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40296f:	3c 19                	cmp    $0x19,%al
  402971:	76 b3                	jbe    402926 <urlencode+0x25>
  402973:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402977:	3c 19                	cmp    $0x19,%al
  402979:	76 ab                	jbe    402926 <urlencode+0x25>
  40297b:	41 80 f8 20          	cmp    $0x20,%r8b
  40297f:	74 56                	je     4029d7 <urlencode+0xd6>
  402981:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402985:	3c 5f                	cmp    $0x5f,%al
  402987:	0f 96 c0             	setbe  %al
  40298a:	41 80 f8 09          	cmp    $0x9,%r8b
  40298e:	0f 94 c2             	sete   %dl
  402991:	08 d0                	or     %dl,%al
  402993:	74 4f                	je     4029e4 <urlencode+0xe3>
  402995:	48 89 e7             	mov    %rsp,%rdi
  402998:	45 0f b6 c0          	movzbl %r8b,%r8d
  40299c:	48 8d 0d b3 1d 00 00 	lea    0x1db3(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  4029a3:	ba 08 00 00 00       	mov    $0x8,%edx
  4029a8:	be 02 00 00 00       	mov    $0x2,%esi
  4029ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4029b2:	e8 69 e8 ff ff       	call   401220 <__sprintf_chk@plt>
  4029b7:	0f b6 04 24          	movzbl (%rsp),%eax
  4029bb:	88 45 00             	mov    %al,0x0(%rbp)
  4029be:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4029c3:	88 45 01             	mov    %al,0x1(%rbp)
  4029c6:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4029cb:	88 45 02             	mov    %al,0x2(%rbp)
  4029ce:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4029d2:	e9 57 ff ff ff       	jmp    40292e <urlencode+0x2d>
  4029d7:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4029db:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4029df:	e9 4a ff ff ff       	jmp    40292e <urlencode+0x2d>
  4029e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029e9:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4029ee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029f5:	00 00 
  4029f7:	75 09                	jne    402a02 <urlencode+0x101>
  4029f9:	48 83 c4 10          	add    $0x10,%rsp
  4029fd:	5b                   	pop    %rbx
  4029fe:	5d                   	pop    %rbp
  4029ff:	41 5c                	pop    %r12
  402a01:	c3                   	ret
  402a02:	e8 f9 fa ff ff       	call   402500 <__stack_chk_fail>

0000000000402a07 <submitr>:
  402a07:	f3 0f 1e fa          	endbr64
  402a0b:	41 57                	push   %r15
  402a0d:	41 56                	push   %r14
  402a0f:	41 55                	push   %r13
  402a11:	41 54                	push   %r12
  402a13:	55                   	push   %rbp
  402a14:	53                   	push   %rbx
  402a15:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402a1c:	ff 
  402a1d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402a24:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402a29:	4c 39 dc             	cmp    %r11,%rsp
  402a2c:	75 ef                	jne    402a1d <submitr+0x16>
  402a2e:	48 83 ec 68          	sub    $0x68,%rsp
  402a32:	49 89 fd             	mov    %rdi,%r13
  402a35:	41 89 f6             	mov    %esi,%r14d
  402a38:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402a3d:	49 89 cc             	mov    %rcx,%r12
  402a40:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402a45:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402a4a:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402a51:	00 
  402a52:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a59:	00 00 
  402a5b:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402a62:	00 
  402a63:	31 c0                	xor    %eax,%eax
  402a65:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402a6c:	00 
  402a6d:	ba 00 00 00 00       	mov    $0x0,%edx
  402a72:	be 01 00 00 00       	mov    $0x1,%esi
  402a77:	bf 02 00 00 00       	mov    $0x2,%edi
  402a7c:	e8 af e7 ff ff       	call   401230 <socket@plt>
  402a81:	85 c0                	test   %eax,%eax
  402a83:	0f 88 72 02 00 00    	js     402cfb <submitr+0x2f4>
  402a89:	89 c3                	mov    %eax,%ebx
  402a8b:	4c 89 ef             	mov    %r13,%rdi
  402a8e:	e8 7d e6 ff ff       	call   401110 <gethostbyname@plt>
  402a93:	48 85 c0             	test   %rax,%rax
  402a96:	0f 84 ab 02 00 00    	je     402d47 <submitr+0x340>
  402a9c:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402aa1:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402aa5:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402aaa:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ab1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ab5:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ab9:	48 8b 30             	mov    (%rax),%rsi
  402abc:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402ac1:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ac6:	e8 55 e6 ff ff       	call   401120 <__memmove_chk@plt>
  402acb:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402ad0:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402ad6:	ba 10 00 00 00       	mov    $0x10,%edx
  402adb:	48 89 ee             	mov    %rbp,%rsi
  402ade:	89 df                	mov    %ebx,%edi
  402ae0:	e8 0b e7 ff ff       	call   4011f0 <connect@plt>
  402ae5:	85 c0                	test   %eax,%eax
  402ae7:	0f 88 cc 02 00 00    	js     402db9 <submitr+0x3b2>
  402aed:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402af2:	e8 a9 e5 ff ff       	call   4010a0 <strlen@plt>
  402af7:	49 89 c6             	mov    %rax,%r14
  402afa:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402aff:	e8 9c e5 ff ff       	call   4010a0 <strlen@plt>
  402b04:	48 89 c5             	mov    %rax,%rbp
  402b07:	4c 89 e7             	mov    %r12,%rdi
  402b0a:	e8 91 e5 ff ff       	call   4010a0 <strlen@plt>
  402b0f:	48 01 c5             	add    %rax,%rbp
  402b12:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402b17:	e8 84 e5 ff ff       	call   4010a0 <strlen@plt>
  402b1c:	48 01 c5             	add    %rax,%rbp
  402b1f:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402b23:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402b2a:	00 
  402b2b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402b31:	0f 87 e6 02 00 00    	ja     402e1d <submitr+0x416>
  402b37:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402b3e:	00 
  402b3f:	b9 00 04 00 00       	mov    $0x400,%ecx
  402b44:	b8 00 00 00 00       	mov    $0x0,%eax
  402b49:	48 89 f7             	mov    %rsi,%rdi
  402b4c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402b4f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b54:	e8 a8 fd ff ff       	call   402901 <urlencode>
  402b59:	85 c0                	test   %eax,%eax
  402b5b:	0f 88 2e 03 00 00    	js     402e8f <submitr+0x488>
  402b61:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402b68:	00 
  402b69:	48 83 ec 08          	sub    $0x8,%rsp
  402b6d:	41 55                	push   %r13
  402b6f:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402b76:	00 
  402b77:	50                   	push   %rax
  402b78:	41 54                	push   %r12
  402b7a:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402b7f:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402b84:	48 8d 0d 05 19 00 00 	lea    0x1905(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402b8b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b90:	be 02 00 00 00       	mov    $0x2,%esi
  402b95:	48 89 ef             	mov    %rbp,%rdi
  402b98:	b8 00 00 00 00       	mov    $0x0,%eax
  402b9d:	e8 7e e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402ba2:	48 83 c4 20          	add    $0x20,%rsp
  402ba6:	48 89 ef             	mov    %rbp,%rdi
  402ba9:	e8 f2 e4 ff ff       	call   4010a0 <strlen@plt>
  402bae:	48 89 c2             	mov    %rax,%rdx
  402bb1:	48 89 ee             	mov    %rbp,%rsi
  402bb4:	89 df                	mov    %ebx,%edi
  402bb6:	e8 b9 fb ff ff       	call   402774 <rio_writen>
  402bbb:	48 85 c0             	test   %rax,%rax
  402bbe:	0f 88 53 03 00 00    	js     402f17 <submitr+0x510>
  402bc4:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402bc9:	89 de                	mov    %ebx,%esi
  402bcb:	48 89 ef             	mov    %rbp,%rdi
  402bce:	e8 59 fb ff ff       	call   40272c <rio_readinitb>
  402bd3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402bda:	00 
  402bdb:	ba 00 20 00 00       	mov    $0x2000,%edx
  402be0:	48 89 ef             	mov    %rbp,%rdi
  402be3:	e8 78 fc ff ff       	call   402860 <rio_readlineb>
  402be8:	48 85 c0             	test   %rax,%rax
  402beb:	0f 8e 92 03 00 00    	jle    402f83 <submitr+0x57c>
  402bf1:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402bf6:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402bfd:	00 
  402bfe:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402c05:	00 
  402c06:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402c0d:	00 
  402c0e:	48 8d 35 48 1b 00 00 	lea    0x1b48(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402c15:	b8 00 00 00 00       	mov    $0x0,%eax
  402c1a:	e8 51 e5 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402c1f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402c26:	00 
  402c27:	48 8d 35 46 1b 00 00 	lea    0x1b46(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402c2e:	e8 bd e4 ff ff       	call   4010f0 <strcmp@plt>
  402c33:	85 c0                	test   %eax,%eax
  402c35:	0f 84 c8 03 00 00    	je     403003 <submitr+0x5fc>
  402c3b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c42:	00 
  402c43:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c48:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c4d:	e8 0e fc ff ff       	call   402860 <rio_readlineb>
  402c52:	48 85 c0             	test   %rax,%rax
  402c55:	7f c8                	jg     402c1f <submitr+0x218>
  402c57:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c5e:	3a 20 43 
  402c61:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c68:	20 75 6e 
  402c6b:	49 89 07             	mov    %rax,(%r15)
  402c6e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402c72:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c79:	74 6f 20 
  402c7c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402c83:	68 65 61 
  402c86:	49 89 47 10          	mov    %rax,0x10(%r15)
  402c8a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402c8e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402c95:	66 72 6f 
  402c98:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402c9f:	6f 6c 61 
  402ca2:	49 89 47 20          	mov    %rax,0x20(%r15)
  402ca6:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402caa:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402cb1:	6c 61 62 
  402cb4:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402cbb:	65 72 00 
  402cbe:	49 89 47 29          	mov    %rax,0x29(%r15)
  402cc2:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402cc6:	89 df                	mov    %ebx,%edi
  402cc8:	e8 03 e4 ff ff       	call   4010d0 <close@plt>
  402ccd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cd2:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402cd9:	00 
  402cda:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ce1:	00 00 
  402ce3:	0f 85 67 04 00 00    	jne    403150 <submitr+0x749>
  402ce9:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402cf0:	5b                   	pop    %rbx
  402cf1:	5d                   	pop    %rbp
  402cf2:	41 5c                	pop    %r12
  402cf4:	41 5d                	pop    %r13
  402cf6:	41 5e                	pop    %r14
  402cf8:	41 5f                	pop    %r15
  402cfa:	c3                   	ret
  402cfb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d02:	3a 20 43 
  402d05:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d0c:	20 75 6e 
  402d0f:	49 89 07             	mov    %rax,(%r15)
  402d12:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d16:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d1d:	74 6f 20 
  402d20:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402d27:	65 20 73 
  402d2a:	49 89 47 10          	mov    %rax,0x10(%r15)
  402d2e:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402d32:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402d39:	65 74 00 
  402d3c:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402d40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d45:	eb 8b                	jmp    402cd2 <submitr+0x2cb>
  402d47:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d4e:	3a 20 44 
  402d51:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d58:	20 75 6e 
  402d5b:	49 89 07             	mov    %rax,(%r15)
  402d5e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d62:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d69:	74 6f 20 
  402d6c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402d73:	76 65 20 
  402d76:	49 89 47 10          	mov    %rax,0x10(%r15)
  402d7a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402d7e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402d85:	61 62 20 
  402d88:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402d8f:	72 20 61 
  402d92:	49 89 47 20          	mov    %rax,0x20(%r15)
  402d96:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402d9a:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402da1:	73 73 00 
  402da4:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402da8:	89 df                	mov    %ebx,%edi
  402daa:	e8 21 e3 ff ff       	call   4010d0 <close@plt>
  402daf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402db4:	e9 19 ff ff ff       	jmp    402cd2 <submitr+0x2cb>
  402db9:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402dc0:	3a 20 55 
  402dc3:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402dca:	20 74 6f 
  402dcd:	49 89 07             	mov    %rax,(%r15)
  402dd0:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402dd4:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ddb:	65 63 74 
  402dde:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402de5:	68 65 20 
  402de8:	49 89 47 10          	mov    %rax,0x10(%r15)
  402dec:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402df0:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402df7:	6c 61 62 
  402dfa:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e01:	65 72 00 
  402e04:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402e08:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402e0c:	89 df                	mov    %ebx,%edi
  402e0e:	e8 bd e2 ff ff       	call   4010d0 <close@plt>
  402e13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e18:	e9 b5 fe ff ff       	jmp    402cd2 <submitr+0x2cb>
  402e1d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402e24:	3a 20 52 
  402e27:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402e2e:	20 73 74 
  402e31:	49 89 07             	mov    %rax,(%r15)
  402e34:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e38:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402e3f:	74 6f 6f 
  402e42:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402e49:	65 2e 20 
  402e4c:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e50:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e54:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402e5b:	61 73 65 
  402e5e:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402e65:	49 54 52 
  402e68:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e6c:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e70:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402e77:	55 46 00 
  402e7a:	49 89 47 30          	mov    %rax,0x30(%r15)
  402e7e:	89 df                	mov    %ebx,%edi
  402e80:	e8 4b e2 ff ff       	call   4010d0 <close@plt>
  402e85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e8a:	e9 43 fe ff ff       	jmp    402cd2 <submitr+0x2cb>
  402e8f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e96:	3a 20 55 
  402e99:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  402ea0:	20 73 74 
  402ea3:	49 89 07             	mov    %rax,(%r15)
  402ea6:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402eaa:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402eb1:	63 6f 6e 
  402eb4:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402ebb:	20 61 6e 
  402ebe:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ec2:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ec6:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402ecd:	67 61 6c 
  402ed0:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ed7:	6e 70 72 
  402eda:	49 89 47 20          	mov    %rax,0x20(%r15)
  402ede:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402ee2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ee9:	6c 65 20 
  402eec:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402ef3:	63 74 65 
  402ef6:	49 89 47 30          	mov    %rax,0x30(%r15)
  402efa:	49 89 57 38          	mov    %rdx,0x38(%r15)
  402efe:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  402f05:	00 
  402f06:	89 df                	mov    %ebx,%edi
  402f08:	e8 c3 e1 ff ff       	call   4010d0 <close@plt>
  402f0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f12:	e9 bb fd ff ff       	jmp    402cd2 <submitr+0x2cb>
  402f17:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f1e:	3a 20 43 
  402f21:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f28:	20 75 6e 
  402f2b:	49 89 07             	mov    %rax,(%r15)
  402f2e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f32:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f39:	74 6f 20 
  402f3c:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402f43:	20 74 6f 
  402f46:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f4a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f4e:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402f55:	41 75 74 
  402f58:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402f5f:	73 65 72 
  402f62:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f66:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f6a:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  402f71:	00 
  402f72:	89 df                	mov    %ebx,%edi
  402f74:	e8 57 e1 ff ff       	call   4010d0 <close@plt>
  402f79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f7e:	e9 4f fd ff ff       	jmp    402cd2 <submitr+0x2cb>
  402f83:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f8a:	3a 20 43 
  402f8d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f94:	20 75 6e 
  402f97:	49 89 07             	mov    %rax,(%r15)
  402f9a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f9e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fa5:	74 6f 20 
  402fa8:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402faf:	66 69 72 
  402fb2:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fb6:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fba:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402fc1:	61 64 65 
  402fc4:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402fcb:	6d 20 41 
  402fce:	49 89 47 20          	mov    %rax,0x20(%r15)
  402fd2:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fd6:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402fdd:	6c 61 62 
  402fe0:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fe7:	65 72 00 
  402fea:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  402fee:	49 89 57 36          	mov    %rdx,0x36(%r15)
  402ff2:	89 df                	mov    %ebx,%edi
  402ff4:	e8 d7 e0 ff ff       	call   4010d0 <close@plt>
  402ff9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ffe:	e9 cf fc ff ff       	jmp    402cd2 <submitr+0x2cb>
  403003:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40300a:	00 
  40300b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403010:	ba 00 20 00 00       	mov    $0x2000,%edx
  403015:	e8 46 f8 ff ff       	call   402860 <rio_readlineb>
  40301a:	48 85 c0             	test   %rax,%rax
  40301d:	7e 78                	jle    403097 <submitr+0x690>
  40301f:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403024:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40302b:	0f 85 e6 00 00 00    	jne    403117 <submitr+0x710>
  403031:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403038:	00 
  403039:	4c 89 ff             	mov    %r15,%rdi
  40303c:	e8 2f e0 ff ff       	call   401070 <strcpy@plt>
  403041:	89 df                	mov    %ebx,%edi
  403043:	e8 88 e0 ff ff       	call   4010d0 <close@plt>
  403048:	48 8d 35 1f 17 00 00 	lea    0x171f(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  40304f:	4c 89 ff             	mov    %r15,%rdi
  403052:	e8 99 e0 ff ff       	call   4010f0 <strcmp@plt>
  403057:	85 c0                	test   %eax,%eax
  403059:	0f 84 73 fc ff ff    	je     402cd2 <submitr+0x2cb>
  40305f:	48 8d 35 0c 17 00 00 	lea    0x170c(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  403066:	4c 89 ff             	mov    %r15,%rdi
  403069:	e8 82 e0 ff ff       	call   4010f0 <strcmp@plt>
  40306e:	85 c0                	test   %eax,%eax
  403070:	0f 84 5c fc ff ff    	je     402cd2 <submitr+0x2cb>
  403076:	48 8d 35 fa 16 00 00 	lea    0x16fa(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  40307d:	4c 89 ff             	mov    %r15,%rdi
  403080:	e8 6b e0 ff ff       	call   4010f0 <strcmp@plt>
  403085:	85 c0                	test   %eax,%eax
  403087:	0f 84 45 fc ff ff    	je     402cd2 <submitr+0x2cb>
  40308d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403092:	e9 3b fc ff ff       	jmp    402cd2 <submitr+0x2cb>
  403097:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40309e:	3a 20 43 
  4030a1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030a8:	20 75 6e 
  4030ab:	49 89 07             	mov    %rax,(%r15)
  4030ae:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030b2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030b9:	74 6f 20 
  4030bc:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4030c3:	73 74 61 
  4030c6:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030ca:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030ce:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4030d5:	65 73 73 
  4030d8:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4030df:	72 6f 6d 
  4030e2:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030e6:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030ea:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4030f1:	6c 61 62 
  4030f4:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4030fb:	65 72 00 
  4030fe:	49 89 47 30          	mov    %rax,0x30(%r15)
  403102:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403106:	89 df                	mov    %ebx,%edi
  403108:	e8 c3 df ff ff       	call   4010d0 <close@plt>
  40310d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403112:	e9 bb fb ff ff       	jmp    402cd2 <submitr+0x2cb>
  403117:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40311e:	00 
  40311f:	48 8d 0d ca 13 00 00 	lea    0x13ca(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  403126:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40312d:	be 02 00 00 00       	mov    $0x2,%esi
  403132:	4c 89 ff             	mov    %r15,%rdi
  403135:	b8 00 00 00 00       	mov    $0x0,%eax
  40313a:	e8 e1 e0 ff ff       	call   401220 <__sprintf_chk@plt>
  40313f:	89 df                	mov    %ebx,%edi
  403141:	e8 8a df ff ff       	call   4010d0 <close@plt>
  403146:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40314b:	e9 82 fb ff ff       	jmp    402cd2 <submitr+0x2cb>
  403150:	e8 ab f3 ff ff       	call   402500 <__stack_chk_fail>

0000000000403155 <init_timeout>:
  403155:	f3 0f 1e fa          	endbr64
  403159:	85 ff                	test   %edi,%edi
  40315b:	74 26                	je     403183 <init_timeout+0x2e>
  40315d:	53                   	push   %rbx
  40315e:	89 fb                	mov    %edi,%ebx
  403160:	78 1a                	js     40317c <init_timeout+0x27>
  403162:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 40273e <sigalrm_handler>
  403169:	bf 0e 00 00 00       	mov    $0xe,%edi
  40316e:	e8 8d df ff ff       	call   401100 <signal@plt>
  403173:	89 df                	mov    %ebx,%edi
  403175:	e8 46 df ff ff       	call   4010c0 <alarm@plt>
  40317a:	5b                   	pop    %rbx
  40317b:	c3                   	ret
  40317c:	bb 00 00 00 00       	mov    $0x0,%ebx
  403181:	eb df                	jmp    403162 <init_timeout+0xd>
  403183:	c3                   	ret

0000000000403184 <init_driver>:
  403184:	f3 0f 1e fa          	endbr64
  403188:	41 54                	push   %r12
  40318a:	55                   	push   %rbp
  40318b:	53                   	push   %rbx
  40318c:	48 83 ec 20          	sub    $0x20,%rsp
  403190:	48 89 fd             	mov    %rdi,%rbp
  403193:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40319a:	00 00 
  40319c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4031a1:	31 c0                	xor    %eax,%eax
  4031a3:	be 01 00 00 00       	mov    $0x1,%esi
  4031a8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4031ad:	e8 4e df ff ff       	call   401100 <signal@plt>
  4031b2:	be 01 00 00 00       	mov    $0x1,%esi
  4031b7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4031bc:	e8 3f df ff ff       	call   401100 <signal@plt>
  4031c1:	be 01 00 00 00       	mov    $0x1,%esi
  4031c6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4031cb:	e8 30 df ff ff       	call   401100 <signal@plt>
  4031d0:	ba 00 00 00 00       	mov    $0x0,%edx
  4031d5:	be 01 00 00 00       	mov    $0x1,%esi
  4031da:	bf 02 00 00 00       	mov    $0x2,%edi
  4031df:	e8 4c e0 ff ff       	call   401230 <socket@plt>
  4031e4:	85 c0                	test   %eax,%eax
  4031e6:	0f 88 93 00 00 00    	js     40327f <init_driver+0xfb>
  4031ec:	89 c3                	mov    %eax,%ebx
  4031ee:	48 8d 3d 85 15 00 00 	lea    0x1585(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4031f5:	e8 16 df ff ff       	call   401110 <gethostbyname@plt>
  4031fa:	48 85 c0             	test   %rax,%rax
  4031fd:	0f 84 c9 00 00 00    	je     4032cc <init_driver+0x148>
  403203:	49 89 e4             	mov    %rsp,%r12
  403206:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40320a:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40320e:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403214:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403218:	48 8b 40 18          	mov    0x18(%rax),%rax
  40321c:	48 8b 30             	mov    (%rax),%rsi
  40321f:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403224:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403229:	e8 f2 de ff ff       	call   401120 <__memmove_chk@plt>
  40322e:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  403235:	ba 10 00 00 00       	mov    $0x10,%edx
  40323a:	4c 89 e6             	mov    %r12,%rsi
  40323d:	89 df                	mov    %ebx,%edi
  40323f:	e8 ac df ff ff       	call   4011f0 <connect@plt>
  403244:	85 c0                	test   %eax,%eax
  403246:	0f 88 e5 00 00 00    	js     403331 <init_driver+0x1ad>
  40324c:	89 df                	mov    %ebx,%edi
  40324e:	e8 7d de ff ff       	call   4010d0 <close@plt>
  403253:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403259:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40325d:	b8 00 00 00 00       	mov    $0x0,%eax
  403262:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403267:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40326e:	00 00 
  403270:	0f 85 27 01 00 00    	jne    40339d <init_driver+0x219>
  403276:	48 83 c4 20          	add    $0x20,%rsp
  40327a:	5b                   	pop    %rbx
  40327b:	5d                   	pop    %rbp
  40327c:	41 5c                	pop    %r12
  40327e:	c3                   	ret
  40327f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403286:	3a 20 43 
  403289:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403290:	20 75 6e 
  403293:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403297:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40329b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032a2:	74 6f 20 
  4032a5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4032ac:	65 20 73 
  4032af:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032b3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032b7:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  4032be:	65 74 00 
  4032c1:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  4032c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ca:	eb 96                	jmp    403262 <init_driver+0xde>
  4032cc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4032d3:	3a 20 44 
  4032d6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4032dd:	20 75 6e 
  4032e0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032e4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032e8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032ef:	74 6f 20 
  4032f2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4032f9:	76 65 20 
  4032fc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403300:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403304:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  40330b:	65 72 20 
  40330e:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  403315:	73 73 00 
  403318:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  40331c:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  403320:	89 df                	mov    %ebx,%edi
  403322:	e8 a9 dd ff ff       	call   4010d0 <close@plt>
  403327:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40332c:	e9 31 ff ff ff       	jmp    403262 <init_driver+0xde>
  403331:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  403338:	30 35 2e 
  40333b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40333f:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  403346:	33 32 00 
  403349:	48 89 45 07          	mov    %rax,0x7(%rbp)
  40334d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403354:	3a 20 55 
  403357:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40335e:	20 74 6f 
  403361:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403365:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403369:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403370:	65 63 74 
  403373:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40337a:	65 72 76 
  40337d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403381:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403385:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40338c:	89 df                	mov    %ebx,%edi
  40338e:	e8 3d dd ff ff       	call   4010d0 <close@plt>
  403393:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403398:	e9 c5 fe ff ff       	jmp    403262 <init_driver+0xde>
  40339d:	e8 5e f1 ff ff       	call   402500 <__stack_chk_fail>

00000000004033a2 <driver_post>:
  4033a2:	f3 0f 1e fa          	endbr64
  4033a6:	53                   	push   %rbx
  4033a7:	4c 89 cb             	mov    %r9,%rbx
  4033aa:	45 85 c0             	test   %r8d,%r8d
  4033ad:	75 18                	jne    4033c7 <driver_post+0x25>
  4033af:	48 85 ff             	test   %rdi,%rdi
  4033b2:	74 05                	je     4033b9 <driver_post+0x17>
  4033b4:	80 3f 00             	cmpb   $0x0,(%rdi)
  4033b7:	75 37                	jne    4033f0 <driver_post+0x4e>
  4033b9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4033be:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4033c2:	44 89 c0             	mov    %r8d,%eax
  4033c5:	5b                   	pop    %rbx
  4033c6:	c3                   	ret
  4033c7:	48 89 ca             	mov    %rcx,%rdx
  4033ca:	48 8d 35 b8 13 00 00 	lea    0x13b8(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  4033d1:	bf 02 00 00 00       	mov    $0x2,%edi
  4033d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4033db:	e8 b0 dd ff ff       	call   401190 <__printf_chk@plt>
  4033e0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4033e5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4033e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4033ee:	eb d5                	jmp    4033c5 <driver_post+0x23>
  4033f0:	48 83 ec 08          	sub    $0x8,%rsp
  4033f4:	41 51                	push   %r9
  4033f6:	49 89 c9             	mov    %rcx,%r9
  4033f9:	49 89 d0             	mov    %rdx,%r8
  4033fc:	48 89 f9             	mov    %rdi,%rcx
  4033ff:	48 89 f2             	mov    %rsi,%rdx
  403402:	be 50 00 00 00       	mov    $0x50,%esi
  403407:	48 8d 3d 6c 13 00 00 	lea    0x136c(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  40340e:	e8 f4 f5 ff ff       	call   402a07 <submitr>
  403413:	48 83 c4 10          	add    $0x10,%rsp
  403417:	eb ac                	jmp    4033c5 <driver_post+0x23>

0000000000403419 <check>:
  403419:	f3 0f 1e fa          	endbr64
  40341d:	89 f8                	mov    %edi,%eax
  40341f:	c1 e8 1c             	shr    $0x1c,%eax
  403422:	74 1d                	je     403441 <check+0x28>
  403424:	b9 00 00 00 00       	mov    $0x0,%ecx
  403429:	83 f9 1f             	cmp    $0x1f,%ecx
  40342c:	7f 0d                	jg     40343b <check+0x22>
  40342e:	89 f8                	mov    %edi,%eax
  403430:	d3 e8                	shr    %cl,%eax
  403432:	3c 0a                	cmp    $0xa,%al
  403434:	74 11                	je     403447 <check+0x2e>
  403436:	83 c1 08             	add    $0x8,%ecx
  403439:	eb ee                	jmp    403429 <check+0x10>
  40343b:	b8 01 00 00 00       	mov    $0x1,%eax
  403440:	c3                   	ret
  403441:	b8 00 00 00 00       	mov    $0x0,%eax
  403446:	c3                   	ret
  403447:	b8 00 00 00 00       	mov    $0x0,%eax
  40344c:	c3                   	ret

000000000040344d <gencookie>:
  40344d:	f3 0f 1e fa          	endbr64
  403451:	53                   	push   %rbx
  403452:	83 c7 01             	add    $0x1,%edi
  403455:	e8 e6 db ff ff       	call   401040 <srandom@plt>
  40345a:	e8 01 dd ff ff       	call   401160 <random@plt>
  40345f:	89 c3                	mov    %eax,%ebx
  403461:	89 c7                	mov    %eax,%edi
  403463:	e8 b1 ff ff ff       	call   403419 <check>
  403468:	85 c0                	test   %eax,%eax
  40346a:	74 ee                	je     40345a <gencookie+0xd>
  40346c:	89 d8                	mov    %ebx,%eax
  40346e:	5b                   	pop    %rbx
  40346f:	c3                   	ret

Disassembly of section .fini:

0000000000403470 <_fini>:
  403470:	f3 0f 1e fa          	endbr64
  403474:	48 83 ec 08          	sub    $0x8,%rsp
  403478:	48 83 c4 08          	add    $0x8,%rsp
  40347c:	c3                   	ret
