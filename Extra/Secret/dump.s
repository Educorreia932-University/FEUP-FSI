simple_rop:     file format elf32-i386


Disassembly of section .init:

08048340 <_init>:
 8048340:       53                      push   %ebx
 8048341:       83 ec 08                sub    $0x8,%esp
 8048344:       e8 b7 00 00 00          call   8048400 <__x86.get_pc_thunk.bx>
 8048349:       81 c3 b7 1c 00 00       add    $0x1cb7,%ebx
 804834f:       8b 83 fc ff ff ff       mov    -0x4(%ebx),%eax
 8048355:       85 c0                   test   %eax,%eax
 8048357:       74 05                   je     804835e <_init+0x1e>
 8048359:       e8 42 00 00 00          call   80483a0 <__gmon_start__@plt>
 804835e:       83 c4 08                add    $0x8,%esp
 8048361:       5b                      pop    %ebx
 8048362:       c3                      ret

Disassembly of section .plt:

08048370 <.plt>:
 8048370:       ff 35 04 a0 04 08       pushl  0x804a004
 8048376:       ff 25 08 a0 04 08       jmp    *0x804a008
 804837c:       00 00                   add    %al,(%eax)
        ...

08048380 <gets@plt>:
 8048380:       ff 25 0c a0 04 08       jmp    *0x804a00c
 8048386:       68 00 00 00 00          push   $0x0
 804838b:       e9 e0 ff ff ff          jmp    8048370 <.plt>

08048390 <puts@plt>:
 8048390:       ff 25 10 a0 04 08       jmp    *0x804a010
 8048396:       68 08 00 00 00          push   $0x8
 804839b:       e9 d0 ff ff ff          jmp    8048370 <.plt>

080483a0 <__gmon_start__@plt>:
 80483a0:       ff 25 14 a0 04 08       jmp    *0x804a014
 80483a6:       68 10 00 00 00          push   $0x10
 80483ab:       e9 c0 ff ff ff          jmp    8048370 <.plt>

080483b0 <__libc_start_main@plt>:
 80483b0:       ff 25 18 a0 04 08       jmp    *0x804a018
 80483b6:       68 18 00 00 00          push   $0x18
 80483bb:       e9 b0 ff ff ff          jmp    8048370 <.plt>

080483c0 <setvbuf@plt>:
 80483c0:       ff 25 1c a0 04 08       jmp    *0x804a01c
 80483c6:       68 20 00 00 00          push   $0x20
 80483cb:       e9 a0 ff ff ff          jmp    8048370 <.plt>

Disassembly of section .text:

080483d0 <_start>:
 80483d0:       31 ed                   xor    %ebp,%ebp
 80483d2:       5e                      pop    %esi
 80483d3:       89 e1                   mov    %esp,%ecx
 80483d5:       83 e4 f0                and    $0xfffffff0,%esp
 80483d8:       50                      push   %eax
 80483d9:       54                      push   %esp
 80483da:       52                      push   %edx
 80483db:       68 b0 85 04 08          push   $0x80485b0
 80483e0:       68 40 85 04 08          push   $0x8048540
 80483e5:       51                      push   %ecx
 80483e6:       56                      push   %esi
 80483e7:       68 cd 84 04 08          push   $0x80484cd
 80483ec:       e8 bf ff ff ff          call   80483b0 <__libc_start_main@plt>
 80483f1:       f4                      hlt
 80483f2:       66 90                   xchg   %ax,%ax
 80483f4:       66 90                   xchg   %ax,%ax
 80483f6:       66 90                   xchg   %ax,%ax
 80483f8:       66 90                   xchg   %ax,%ax
 80483fa:       66 90                   xchg   %ax,%ax
 80483fc:       66 90                   xchg   %ax,%ax
 80483fe:       66 90                   xchg   %ax,%ax

08048400 <__x86.get_pc_thunk.bx>:
 8048400:       8b 1c 24                mov    (%esp),%ebx
 8048403:       c3                      ret
 8048404:       66 90                   xchg   %ax,%ax
 8048406:       66 90                   xchg   %ax,%ax
 8048408:       66 90                   xchg   %ax,%ax
 804840a:       66 90                   xchg   %ax,%ax
 804840c:       66 90                   xchg   %ax,%ax
 804840e:       66 90                   xchg   %ax,%ax

08048410 <deregister_tm_clones>:
 8048410:       b8 6b a0 04 08          mov    $0x804a06b,%eax
 8048415:       2d 68 a0 04 08          sub    $0x804a068,%eax
 804841a:       83 f8 06                cmp    $0x6,%eax
 804841d:       77 01                   ja     8048420 <deregister_tm_clones+0x10>
 804841f:       c3                      ret
 8048420:       b8 00 00 00 00          mov    $0x0,%eax
 8048425:       85 c0                   test   %eax,%eax
 8048427:       74 f6                   je     804841f <deregister_tm_clones+0xf>
 8048429:       55                      push   %ebp
 804842a:       89 e5                   mov    %esp,%ebp
 804842c:       83 ec 18                sub    $0x18,%esp
 804842f:       c7 04 24 68 a0 04 08    movl   $0x804a068,(%esp)
 8048436:       ff d0                   call   *%eax
 8048438:       c9                      leave
 8048439:       c3                      ret
 804843a:       8d b6 00 00 00 00       lea    0x0(%esi),%esi

08048440 <register_tm_clones>:
 8048440:       b8 68 a0 04 08          mov    $0x804a068,%eax
 8048445:       2d 68 a0 04 08          sub    $0x804a068,%eax
 804844a:       c1 f8 02                sar    $0x2,%eax
 804844d:       89 c2                   mov    %eax,%edx
 804844f:       c1 ea 1f                shr    $0x1f,%edx
 8048452:       01 d0                   add    %edx,%eax
 8048454:       d1 f8                   sar    %eax
 8048456:       75 01                   jne    8048459 <register_tm_clones+0x19>
 8048458:       c3                      ret
 8048459:       ba 00 00 00 00          mov    $0x0,%edx
 804845e:       85 d2                   test   %edx,%edx
 8048460:       74 f6                   je     8048458 <register_tm_clones+0x18>
 8048462:       55                      push   %ebp
 8048463:       89 e5                   mov    %esp,%ebp
 8048465:       83 ec 18                sub    $0x18,%esp
 8048468:       89 44 24 04             mov    %eax,0x4(%esp)
 804846c:       c7 04 24 68 a0 04 08    movl   $0x804a068,(%esp)
 8048473:       ff d2                   call   *%edx
 8048475:       c9                      leave
 8048476:       c3                      ret
 8048477:       89 f6                   mov    %esi,%esi
 8048479:       8d bc 27 00 00 00 00    lea    0x0(%edi,%eiz,1),%edi

08048480 <__do_global_dtors_aux>:
 8048480:       80 3d a4 a0 04 08 00    cmpb   $0x0,0x804a0a4
 8048487:       75 13                   jne    804849c <__do_global_dtors_aux+0x1c>
 8048489:       55                      push   %ebp
 804848a:       89 e5                   mov    %esp,%ebp
 804848c:       83 ec 08                sub    $0x8,%esp
 804848f:       e8 7c ff ff ff          call   8048410 <deregister_tm_clones>
 8048494:       c6 05 a4 a0 04 08 01    movb   $0x1,0x804a0a4
 804849b:       c9                      leave
 804849c:       f3 c3                   repz ret
 804849e:       66 90                   xchg   %ax,%ax

080484a0 <frame_dummy>:
 80484a0:       a1 10 9f 04 08          mov    0x8049f10,%eax
 80484a5:       85 c0                   test   %eax,%eax
 80484a7:       74 1f                   je     80484c8 <frame_dummy+0x28>
 80484a9:       b8 00 00 00 00          mov    $0x0,%eax
 80484ae:       85 c0                   test   %eax,%eax
 80484b0:       74 16                   je     80484c8 <frame_dummy+0x28>
 80484b2:       55                      push   %ebp
 80484b3:       89 e5                   mov    %esp,%ebp
 80484b5:       83 ec 18                sub    $0x18,%esp
 80484b8:       c7 04 24 10 9f 04 08    movl   $0x8049f10,(%esp)
 80484bf:       ff d0                   call   *%eax
 80484c1:       c9                      leave
 80484c2:       e9 79 ff ff ff          jmp    8048440 <register_tm_clones>
 80484c7:       90                      nop
 80484c8:       e9 73 ff ff ff          jmp    8048440 <register_tm_clones>

080484cd <main>:
 80484cd:       55                      push   %ebp
 80484ce:       89 e5                   mov    %esp,%ebp
 80484d0:       83 e4 f0                and    $0xfffffff0,%esp
 80484d3:       83 ec 20                sub    $0x20,%esp
 80484d6:       a1 80 a0 04 08          mov    0x804a080,%eax
 80484db:       c7 44 24 0c 00 00 00    movl   $0x0,0xc(%esp)
 80484e2:       00
 80484e3:       c7 44 24 08 02 00 00    movl   $0x2,0x8(%esp)
 80484ea:       00
 80484eb:       c7 44 24 04 00 00 00    movl   $0x0,0x4(%esp)
 80484f2:       00
 80484f3:       89 04 24                mov    %eax,(%esp)
 80484f6:       e8 c5 fe ff ff          call   80483c0 <setvbuf@plt>
 80484fb:       a1 a0 a0 04 08          mov    0x804a0a0,%eax
 8048500:       c7 44 24 0c 00 00 00    movl   $0x0,0xc(%esp)
 8048507:       00
 8048508:       c7 44 24 08 02 00 00    movl   $0x2,0x8(%esp)
 804850f:       00
 8048510:       c7 44 24 04 00 00 00    movl   $0x0,0x4(%esp)
 8048517:       00
 8048518:       89 04 24                mov    %eax,(%esp)
 804851b:       e8 a0 fe ff ff          call   80483c0 <setvbuf@plt>
 8048520:       c7 04 24 d0 85 04 08    movl   $0x80485d0,(%esp)
 8048527:       e8 64 fe ff ff          call   8048390 <puts@plt>
 804852c:       8d 44 24 10             lea    0x10(%esp),%eax
 8048530:       89 04 24                mov    %eax,(%esp)
 8048533:       e8 48 fe ff ff          call   8048380 <gets@plt>
 8048538:       b8 00 00 00 00          mov    $0x0,%eax
 804853d:       c9                      leave
 804853e:       c3                      ret
 804853f:       90                      nop

08048540 <__libc_csu_init>:
 8048540:       55                      push   %ebp
 8048541:       57                      push   %edi
 8048542:       31 ff                   xor    %edi,%edi
 8048544:       56                      push   %esi
 8048545:       53                      push   %ebx
 8048546:       e8 b5 fe ff ff          call   8048400 <__x86.get_pc_thunk.bx>
 804854b:       81 c3 b5 1a 00 00       add    $0x1ab5,%ebx
 8048551:       83 ec 1c                sub    $0x1c,%esp
 8048554:       8b 6c 24 30             mov    0x30(%esp),%ebp
 8048558:       8d b3 0c ff ff ff       lea    -0xf4(%ebx),%esi
 804855e:       e8 dd fd ff ff          call   8048340 <_init>
 8048563:       8d 83 08 ff ff ff       lea    -0xf8(%ebx),%eax
 8048569:       29 c6                   sub    %eax,%esi
 804856b:       c1 fe 02                sar    $0x2,%esi
 804856e:       85 f6                   test   %esi,%esi
 8048570:       74 27                   je     8048599 <__libc_csu_init+0x59>
 8048572:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048578:       8b 44 24 38             mov    0x38(%esp),%eax
 804857c:       89 2c 24                mov    %ebp,(%esp)
 804857f:       89 44 24 08             mov    %eax,0x8(%esp)
 8048583:       8b 44 24 34             mov    0x34(%esp),%eax
 8048587:       89 44 24 04             mov    %eax,0x4(%esp)
 804858b:       ff 94 bb 08 ff ff ff    call   *-0xf8(%ebx,%edi,4)
 8048592:       83 c7 01                add    $0x1,%edi
 8048595:       39 f7                   cmp    %esi,%edi
 8048597:       75 df                   jne    8048578 <__libc_csu_init+0x38>
 8048599:       83 c4 1c                add    $0x1c,%esp
 804859c:       5b                      pop    %ebx
 804859d:       5e                      pop    %esi
 804859e:       5f                      pop    %edi
 804859f:       5d                      pop    %ebp
 80485a0:       c3                      ret
 80485a1:       eb 0d                   jmp    80485b0 <__libc_csu_fini>
 80485a3:       90                      nop
 80485a4:       90                      nop
 80485a5:       90                      nop
 80485a6:       90                      nop
 80485a7:       90                      nop
 80485a8:       90                      nop
 80485a9:       90                      nop
 80485aa:       90                      nop
 80485ab:       90                      nop
 80485ac:       90                      nop
 80485ad:       90                      nop
 80485ae:       90                      nop
 80485af:       90                      nop

080485b0 <__libc_csu_fini>:
 80485b0:       f3 c3                   repz ret

Disassembly of section .fini:

080485b4 <_fini>:
 80485b4:       53                      push   %ebx
 80485b5:       83 ec 08                sub    $0x8,%esp
 80485b8:       e8 43 fe ff ff          call   8048400 <__x86.get_pc_thunk.bx>
 80485bd:       81 c3 43 1a 00 00       add    $0x1a43,%ebx
 80485c3:       83 c4 08                add    $0x8,%esp
 80485c6:       5b                      pop    %ebx
 80485c7:       c3