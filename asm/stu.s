	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	$100, %edi
	callq	_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	L_.str(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
	movslq	-8(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rdx, %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	_array@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movl	$0, -20(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$100, %edi
	callq	_malloc
	movq	_array@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	(%rdi), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$0, -24(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	_array@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movq	_founded@GOTPCREL(%rip), %rdi
	movl	$1, (%rdi)
	movl	%eax, -36(%rbp)         ## 4-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_5
LBB0_10:
	movq	_founded@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jne	LBB0_12
## %bb.11:
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB0_12:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %s"

	.comm	_array,8,3              ## @array
L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"%d.\n"

	.comm	_founded,4,2            ## @founded
L_.str.3:                               ## @.str.3
	.asciz	"\354\260\276\354\235\204 \354\210\230 \354\227\206\354\212\265\353\213\210\353\213\244."


.subsections_via_symbols
