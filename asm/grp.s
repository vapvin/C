	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_addFront               ## -- Begin function addFront
	.p2align	4, 0x90
_addFront:                              ## @addFront
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
	movl	%edx, -16(%rbp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_showAll                ## -- Begin function showAll
	.p2align	4, 0x90
_showAll:                               ## @showAll
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_3:
	addq	$32, %rsp
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
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	movb	$0, %al
	callq	_scanf
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rdx, %rdi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	$16, %edi
	callq	_malloc
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	$0, 8(%rax)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_1
LBB2_4:
	movl	$0, -32(%rbp)
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	leaq	L_.str.2(%rip), %rdi
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movb	$0, %al
	callq	_scanf
	movq	-24(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	callq	_addFront
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB2_5
LBB2_8:
	movl	$1, -48(%rbp)
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB2_12
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movl	-48(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movslq	-48(%rbp), %rcx
	movq	(%rdi,%rcx,8), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_showAll
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB2_9
LBB2_12:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d(\352\261\260\353\246\254:%d)"

L_.str.1:                               ## @.str.1
	.asciz	"%d %d"

L_.str.2:                               ## @.str.2
	.asciz	"%d %d %d"

L_.str.3:                               ## @.str.3
	.asciz	"\354\233\220\354\206\214 [%d]: "

L_.str.4:                               ## @.str.4
	.asciz	"\n"


.subsections_via_symbols
