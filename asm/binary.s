	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jle	LBB0_2
## %bb.1:
	movl	$-9999, -4(%rbp)        ## imm = 0xD8F1
	jmp	LBB0_7
LBB0_2:
	movq	_a@GOTPCREL(%rip), %rax
	movl	-8(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	cmpl	-16(%rbp), %eax
	jne	LBB0_4
## %bb.3:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_7
LBB0_4:
	movq	_a@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-16(%rbp), %edx
	jle	LBB0_6
## %bb.5:
	movl	-8(%rbp), %edi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	_search
	movl	%eax, -4(%rbp)
	jmp	LBB0_7
LBB0_6:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%eax, %edi
	callq	_search
	movl	%eax, -4(%rbp)
LBB0_7:
	movl	-4(%rbp), %eax
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	movb	$0, %al
	callq	_scanf
	movl	$0, -16(%rbp)
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	_a@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	leaq	L_.str.1(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_scanf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB1_1
LBB1_4:
	xorl	%edi, %edi
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	-12(%rbp), %edx
	movl	%eax, %esi
	callq	_search
	movl	%eax, -20(%rbp)
	cmpl	$-9999, -20(%rbp)       ## imm = 0xD8F1
	je	LBB1_6
## %bb.5:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB1_7
LBB1_6:
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
LBB1_7:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_founded                ## @founded
.zerofill __DATA,__common,_founded,4,2
	.comm	_a,400000,4             ## @a
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d"

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"%d \n"

L_.str.3:                               ## @.str.3
	.asciz	"\354\260\276\354\235\204 \354\210\230 \354\227\206\354\212\265\353\213\210\353\213\244. \n"


.subsections_via_symbols
