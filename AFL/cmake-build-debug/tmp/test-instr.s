	.text
Ltext0:
	.cstring
lC0:
	.ascii "Hum?\0"
lC1:
	.ascii "Looks like a zero to me!\0"
lC2:
	.ascii "A non-zero value? How quaint!\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.p2align 4
	.globl _main
_main:
LFB8:
	.file 1 "../test-instr.c"
	.loc 1 29 33
LVL0:
	.loc 1 31 3
	.loc 1 33 3
	.loc 1 29 33 is_stmt 0
	subq	$24, %rsp
LCFI0:
	.loc 1 33 7
	xorl	%edi, %edi
LVL1:
	movl	$8, %edx
	leaq	8(%rsp), %rsi
LVL2:
	call	_read
LVL3:
	.loc 1 33 6
	testq	%rax, %rax
	jle	L7
	.loc 1 38 3 is_stmt 1
	.loc 1 38 6 is_stmt 0
	cmpb	$48, 8(%rsp)
	je	L8
	.loc 1 41 5 is_stmt 1
	leaq	lC2(%rip), %rdi
	call	_puts
LVL4:
L4:
	.loc 1 43 3
	xorl	%edi, %edi
	call	_exit
LVL5:
L8:
	.loc 1 39 5
	leaq	lC1(%rip), %rdi
	call	_puts
LVL6:
	jmp	L4
L7:
	.loc 1 34 5
	leaq	lC0(%rip), %rdi
	call	_puts
LVL7:
	.loc 1 35 5
	movl	$1, %edi
	call	_exit
LVL8:
LFE8:
	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.quad	LFB8
	.set L$set$3,LFE8-LFB8
	.quad L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB8
	.long L$set$4
	.byte	0xe
	.byte	0x20
	.align 3
LEFDE0:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$5,LECIE1-LSCIE1
	.long L$set$5
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB8-.
	.set L$set$7,LFE8-LFB8
	.quad L$set$7
	.byte	0
	.byte	0x4
	.set L$set$8,LCFI0-LFB8
	.long L$set$8
	.byte	0xe
	.byte	0x20
	.align 3
LEFDE3:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x1e5
	.word	0x2
	.set L$set$9,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$9
	.byte	0x8
	.byte	0x1
	.ascii "GNU C17 9.3.0 -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=10.15.0 -mtune=core2 -g -O3 -funroll-loops\0"
	.byte	0x1
	.ascii "../test-instr.c\0"
	.ascii "/Users/sakura/gitsource/AFL/cmake-build-debug\0"
	.byte	0x1
	.set L$set$10,Ldebug_line0-Lsection__debug_line
	.long L$set$10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.long	0x16b
	.long	0x183
	.byte	0x4
	.long	0xc5
	.byte	0x7
	.byte	0
	.byte	0x5
	.byte	0x8
	.long	0x16b
	.byte	0x6
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.byte	0x1
	.long	0x12d
	.quad	LFB8
	.quad	LFE8
	.set L$set$11,LLST0-Lsection__debug_loc
	.long L$set$11
	.long	0x1e2
	.byte	0x7
	.ascii "argc\0"
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.long	0x12d
	.set L$set$12,LLST1-Lsection__debug_loc
	.long L$set$12
	.byte	0x7
	.ascii "argv\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x1b
	.long	0x1e2
	.set L$set$13,LLST2-Lsection__debug_loc
	.long L$set$13
	.byte	0x8
	.ascii "buf\0"
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.long	0x173
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.byte	0x8
	.long	0x183
	.byte	0
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0xb4,0x42
	.byte	0xc
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
Ldebug_loc0:
LLST0:
	.quad	LFB8
	.quad	LCFI0
	.word	0x2
	.byte	0x77
	.byte	0x8
	.quad	LCFI0
	.quad	LFE8
	.word	0x2
	.byte	0x77
	.byte	0x20
	.quad	0
	.quad	0
LLST1:
	.quad	LVL0
	.quad	LVL1
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
LLST2:
	.quad	LVL0
	.quad	LVL2
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x17
	.word	0x2
	.set L$set$14,Ldebug_info0-Lsection__debug_info
	.long L$set$14
	.long	0x1e9
	.long	0x189
	.ascii "main\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0xc7
	.word	0x2
	.set L$set$15,Ldebug_info0-Lsection__debug_info
	.long L$set$15
	.long	0x1e9
	.long	0xc5
	.ascii "long unsigned int\0"
	.long	0xda
	.ascii "unsigned int\0"
	.long	0xea
	.ascii "signed char\0"
	.long	0xf9
	.ascii "unsigned char\0"
	.long	0x10a
	.ascii "short int\0"
	.long	0x117
	.ascii "short unsigned int\0"
	.long	0x12d
	.ascii "int\0"
	.long	0x134
	.ascii "long long int\0"
	.long	0x145
	.ascii "long long unsigned int\0"
	.long	0x15f
	.ascii "long int\0"
	.long	0x16b
	.ascii "char\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.word	0x2
	.set L$set$16,Ldebug_info0-Lsection__debug_info
	.long L$set$16
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	LFB8
	.set L$set$17,LFE8-LFB8
	.quad L$set$17
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.ident	"GCC: (Homebrew GCC 9.3.0_1) 9.3.0"
	.subsections_via_symbols
