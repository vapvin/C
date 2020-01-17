	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_push                   ## -- Begin function push
	.p2align	4, 0x90
_push:                                  ## @push
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$10000, 40000(%rdi)     ## imm = 0x2710
	jl	LBB1_2
## %bb.1:
	jmp	LBB1_8
LBB1_2:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	40000(%rdx), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movq	-8(%rbp), %rcx
	movl	40000(%rcx), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movl	40000(%rcx), %eax
	subl	$1, %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%eax, -20(%rbp)
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -21(%rbp)          ## 1-byte Spill
	jle	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	cmpl	(%rax,%rcx,4), %edx
	setg	%sil
	movb	%sil, -21(%rbp)         ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	movb	-21(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_swap
	movl	-20(%rbp), %r8d
	movl	%r8d, -16(%rbp)
	movl	-20(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, %eax
	cltd
	movl	$2, %r8d
	idivl	%r8d
	movl	%eax, -20(%rbp)
	jmp	LBB1_3
LBB1_7:
	movq	-8(%rbp), %rax
	movl	40000(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40000(%rax)
LBB1_8:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_pop                    ## -- Begin function pop
	.p2align	4, 0x90
_pop:                                   ## @pop
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 40000(%rdi)
	jg	LBB2_2
## %bb.1:
	movl	$-9999, -4(%rbp)        ## imm = 0xD8F1
	jmp	LBB2_14
LBB2_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	40000(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40000(%rax)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movslq	40000(%rdx), %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -32(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40000(%rcx), %eax
	jge	LBB2_13
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cmpl	(%rax,%rcx,4), %edx
	jge	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cmpl	(%rax,%rcx,4), %edx
	jge	LBB2_9
## %bb.7:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40000(%rcx), %eax
	jge	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
LBB2_9:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	LBB2_11
## %bb.10:
	jmp	LBB2_13
LBB2_11:                                ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_swap
	movl	-36(%rbp), %r8d
	movl	%r8d, -24(%rbp)
	movl	-24(%rbp), %r8d
	shll	$1, %r8d
	addl	$1, %r8d
	movl	%r8d, -28(%rbp)
	movl	-24(%rbp), %r8d
	shll	$1, %r8d
	addl	$2, %r8d
	movl	%r8d, -32(%rbp)
## %bb.12:                              ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_13:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB2_14:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
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
	movl	$40048, %eax            ## imm = 0x9C70
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
	movl	$0, -16(%rbp)
	movl	$0, -40020(%rbp)
	movl	%eax, -40032(%rbp)      ## 4-byte Spill
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40020(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	leaq	L_.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
	movl	-12(%rbp), %esi
	leaq	-40016(%rbp), %rdi
	movl	%eax, -40036(%rbp)      ## 4-byte Spill
	callq	_push
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	-40020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40020(%rbp)
	jmp	LBB3_1
LBB3_4:
	movl	$0, -40024(%rbp)
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40024(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	leaq	-40016(%rbp), %rdi
	callq	_pop
	movl	%eax, -40028(%rbp)
	movl	-40028(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40040(%rbp)      ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB3_5 Depth=1
	movl	-40024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40024(%rbp)
	jmp	LBB3_5
LBB3_8:
	xorl	%eax, %eax
	addq	$40048, %rsp            ## imm = 0x9C70
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
