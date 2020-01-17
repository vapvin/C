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
	movl	$16, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%esi, (%rax)
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
	.globl	_dfs                    ## -- Begin function dfs
	.p2align	4, 0x90
_dfs:                                   ## @dfs
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_c@GOTPCREL(%rip), %rax
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	je	LBB1_2
## %bb.1:
	jmp	LBB1_5
LBB1_2:
	movq	_c@GOTPCREL(%rip), %rax
	movslq	-4(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	movl	-4(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	_a@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movslq	-4(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_dfs
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB1_3
LBB1_5:
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
	subq	$32, %rsp
	movq	_n@GOTPCREL(%rip), %rsi
	movq	_m@GOTPCREL(%rip), %rdx
	movl	$0, -4(%rbp)
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	movl	$8008, %edi             ## imm = 0x1F48
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	_a@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movl	$1, -8(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	_n@GOTPCREL(%rip), %rax
	movl	-8(%rbp), %ecx
	cmpl	(%rax), %ecx
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	$16, %edi
	callq	_malloc
	movq	_a@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rcx
	movslq	-8(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	(%rdi), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	$0, 8(%rax)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB2_1
LBB2_4:
	movl	$0, -12(%rbp)
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	_m@GOTPCREL(%rip), %rax
	movl	-12(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	leaq	L_.str.1(%rip), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movb	$0, %al
	callq	_scanf
	movq	_a@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	movq	(%rdx,%rsi,8), %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_addFront
	movq	_a@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movslq	-20(%rbp), %rdi
	movq	(%rdx,%rdi,8), %rdi
	movl	-16(%rbp), %esi
	callq	_addFront
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB2_5
LBB2_8:
	movl	$1, %edi
	callq	_dfs
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_c,4004,4               ## @c
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

	.comm	_a,8,3                  ## @a
L_.str.1:                               ## @.str.1
	.asciz	"%d %d"

	.comm	_n,4,2                  ## @n
	.comm	_m,4,2                  ## @m

.subsections_via_symbols
