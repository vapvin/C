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
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$600001, 4800008(%rsi)  ## imm = 0x927C1
	jl	LBB1_2
## %bb.1:
	jmp	LBB1_8
LBB1_2:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	4800008(%rdx), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	-8(%rbp), %rax
	movl	4800008(%rax), %esi
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	4800008(%rax), %esi
	subl	$1, %esi
	movl	%esi, %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%eax, -24(%rbp)
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -25(%rbp)          ## 1-byte Spill
	jle	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpl	(%rax), %edx
	setl	%sil
	movb	%sil, -25(%rbp)         ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_swap
	movl	-24(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %eax
	cltd
	movl	$2, %r8d
	idivl	%r8d
	movl	%eax, -24(%rbp)
	jmp	LBB1_3
LBB1_7:
	movq	-8(%rbp), %rax
	movl	4800008(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4800008(%rax)
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
	cmpl	$0, 4800008(%rdi)
	jg	LBB2_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB2_14
LBB2_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	4800008(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4800008(%rax)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movslq	4800008(%rdx), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$2, -36(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -40(%rbp)
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4800008(%rcx), %eax
	jge	LBB2_13
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpl	(%rax), %edx
	jle	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpl	(%rax), %edx
	jle	LBB2_9
## %bb.7:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4800008(%rcx), %eax
	jge	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB2_9:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	LBB2_11
## %bb.10:
	jmp	LBB2_13
LBB2_11:                                ##   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_swap
	movl	-40(%rbp), %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	shll	$1, %edx
	addl	$2, %edx
	movl	%edx, -36(%rbp)
## %bb.12:                              ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_13:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB2_14:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addNode                ## -- Begin function addNode
	.p2align	4, 0x90
_addNode:                               ## @addNode
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rdi
	cmpq	$0, (%rdx,%rdi,8)
	jne	LBB3_2
## %bb.1:
	movl	$16, %edi
	callq	_malloc
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	$0, 8(%rax)
	jmp	LBB3_3
LBB3_2:
	movl	$16, %edi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rdi
	movq	(%rax,%rdi,8), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
LBB3_3:
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
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movb	$0, %al
	callq	_scanf
	movl	-8(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	callq	_malloc
	movq	_adj@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	$1, -20(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	_ans@GOTPCREL(%rip), %rax
	movq	_adj@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movq	$0, (%rcx,%rdx,8)
	movslq	-20(%rbp), %rcx
	movl	$2147483647, (%rax,%rcx,4) ## imm = 0x7FFFFFFF
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB4_1
LBB4_4:
	movl	$4800016, %edi          ## imm = 0x493E10
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 4800008(%rax)
	movl	$0, -36(%rbp)
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB4_8
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str(%rip), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movb	$0, %al
	callq	_scanf
	movl	$8, %edi
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	callq	_malloc
	movq	_adj@GOTPCREL(%rip), %rcx
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 4(%rax)
	movl	-48(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, (%rax)
	movq	(%rcx), %rdi
	movl	-40(%rbp), %esi
	movq	-56(%rbp), %rdx
	callq	_addNode
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB4_5
LBB4_8:
	movq	_ans@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-16(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_push
LBB4_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_14 Depth 2
	movq	-32(%rbp), %rdi
	callq	_pop
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	LBB4_11
## %bb.10:
	jmp	LBB4_19
LBB4_11:                                ##   in Loop: Header=BB4_9 Depth=1
	movq	_ans@GOTPCREL(%rip), %rax
	movq	-72(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -76(%rbp)
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-80(%rbp), %edx
	jge	LBB4_13
## %bb.12:                              ##   in Loop: Header=BB4_9 Depth=1
	jmp	LBB4_9
LBB4_13:                                ##   in Loop: Header=BB4_9 Depth=1
	movq	_adj@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -88(%rbp)
LBB4_14:                                ##   Parent Loop BB4_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -88(%rbp)
	je	LBB4_18
## %bb.15:                              ##   in Loop: Header=BB4_14 Depth=2
	movq	_ans@GOTPCREL(%rip), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movl	-80(%rbp), %edx
	movq	-96(%rbp), %rcx
	addl	(%rcx), %edx
	movl	%edx, (%rcx)
	movq	-96(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-96(%rbp), %rcx
	movslq	4(%rcx), %rcx
	cmpl	(%rax,%rcx,4), %edx
	jge	LBB4_17
## %bb.16:                              ##   in Loop: Header=BB4_14 Depth=2
	movq	_ans@GOTPCREL(%rip), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-96(%rbp), %rcx
	movslq	4(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	_push
LBB4_17:                                ##   in Loop: Header=BB4_14 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	LBB4_14
LBB4_18:                                ##   in Loop: Header=BB4_9 Depth=1
	jmp	LBB4_9
LBB4_19:
	movl	$1, -100(%rbp)
LBB4_20:                                ## =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB4_26
## %bb.21:                              ##   in Loop: Header=BB4_20 Depth=1
	movq	_ans@GOTPCREL(%rip), %rax
	movslq	-100(%rbp), %rcx
	cmpl	$2147483647, (%rax,%rcx,4) ## imm = 0x7FFFFFFF
	jne	LBB4_23
## %bb.22:                              ##   in Loop: Header=BB4_20 Depth=1
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	jmp	LBB4_24
LBB4_23:                                ##   in Loop: Header=BB4_20 Depth=1
	movq	_ans@GOTPCREL(%rip), %rax
	movslq	-100(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -116(%rbp)        ## 4-byte Spill
LBB4_24:                                ##   in Loop: Header=BB4_20 Depth=1
	jmp	LBB4_25
LBB4_25:                                ##   in Loop: Header=BB4_20 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB4_20
LBB4_26:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d %d"

	.comm	_adj,8,3                ## @adj
	.comm	_ans,80004,4            ## @ans
L_.str.1:                               ## @.str.1
	.asciz	"INF\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d"


.subsections_via_symbols
