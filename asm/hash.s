	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_init                   ## -- Begin function init
	.p2align	4, 0x90
_init:                                  ## @init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10007, -12(%rbp)       ## imm = 0x2717
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_destructor             ## -- Begin function destructor
	.p2align	4, 0x90
_destructor:                            ## @destructor
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10007, -12(%rbp)       ## imm = 0x2717
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	_free
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB1_1
LBB1_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_findEmpty              ## -- Begin function findEmpty
	.p2align	4, 0x90
_findEmpty:                             ## @findEmpty
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltd
	movl	$10007, %esi            ## imm = 0x2717
	idivl	%esi
	movl	%edx, -16(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$10007, %ecx            ## imm = 0x2717
	idivl	%ecx
	movslq	%edx, %rsi
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	cmpq	$0, (%rdi,%rsi,8)
	jne	LBB2_3
## %bb.2:
	movl	-16(%rbp), %eax
	cltd
	movl	$10007, %ecx            ## imm = 0x2717
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	retq
LBB2_3:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB2_1
	.cfi_endproc
                                        ## -- End function
	.globl	_search                 ## -- Begin function search
	.p2align	4, 0x90
_search:                                ## @search
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltd
	movl	$10007, %esi            ## imm = 0x2717
	idivl	%esi
	movl	%edx, -24(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$10007, %ecx            ## imm = 0x2717
	idivl	%ecx
	movslq	%edx, %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	cmpq	$0, (%rdi,%rsi,8)
	jne	LBB3_3
## %bb.2:
	movl	$-1, -4(%rbp)
	jmp	LBB3_7
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$10007, %ecx            ## imm = 0x2717
	idivl	%ecx
	movslq	%edx, %rsi
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi,%rsi,8), %rsi
	movl	(%rsi), %ecx
	cmpl	-20(%rbp), %ecx
	jne	LBB3_5
## %bb.4:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB3_7
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_6
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_1
LBB3_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add                    ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	%rsi, (%rdi,%rax,8)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getValue               ## -- Begin function getValue
	.p2align	4, 0x90
_getValue:                              ## @getValue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	(%rdi,%rax,8), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_show                   ## -- Begin function show
	.p2align	4, 0x90
_show:                                  ## @show
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10007, -12(%rbp)       ## imm = 0x2717
	jge	LBB6_6
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	addq	$4, %rax
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movl	%eax, -16(%rbp)         ## 4-byte Spill
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_5
LBB6_5:                                 ##   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB6_1
LBB6_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	$240168, %edi           ## imm = 0x3AA28
	callq	_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_init
	movl	$0, -20(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$5000, -20(%rbp)        ## imm = 0x1388
	jge	LBB7_6
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	$24, %edi
	callq	_malloc
	movq	%rax, -32(%rbp)
	callq	_rand
	xorl	%esi, %esi
	movq	$-1, %rdx
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	cltd
	movl	$1000000, %ecx          ## imm = 0xF4240
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%edx, (%rdi)
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movq	-32(%rbp), %r8
	movl	(%r8), %r8d
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	leaq	L_.str.1(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	callq	_search
	cmpl	$-1, %eax
	jne	LBB7_4
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	_findEmpty
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_add
LBB7_4:                                 ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_5
LBB7_5:                                 ##   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB7_1
LBB7_6:
	movq	-16(%rbp), %rdi
	callq	_show
	movq	-16(%rbp), %rdi
	callq	_destructor
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\355\202\244: [%d] \354\235\264\353\246\204: [%s] \n"

L_.str.1:                               ## @.str.1
	.asciz	"\354\202\254\353\236\214%d"


.subsections_via_symbols
