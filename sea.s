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
	.globl	_queuePush              ## -- Begin function queuePush
	.p2align	4, 0x90
_queuePush:                             ## @queuePush
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
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	LBB1_2
## %bb.1:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	LBB1_3
LBB1_2:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 8(%rcx)
LBB1_3:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_queuePop               ## -- Begin function queuePop
	.p2align	4, 0x90
_queuePop:                              ## @queuePop
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 16(%rdi)
	jne	LBB2_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$-99999999, -4(%rbp)    ## imm = 0xFA0A1F01
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB2_3
LBB2_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	movl	-28(%rbp), %ecx
	movl	%ecx, -4(%rbp)
LBB2_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bfs                    ## -- Begin function bfs
	.p2align	4, 0x90
_bfs:                                   ## @bfs
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -16(%rbp)
	movl	-4(%rbp), %esi
	leaq	-32(%rbp), %rdi
	callq	_queuePush
	movq	_c@GOTPCREL(%rip), %rdi
	movslq	-4(%rbp), %rax
	movl	$1, (%rdi,%rax,4)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmpl	$0, -16(%rbp)
	je	LBB3_8
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_queuePop
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	_a@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movslq	-36(%rbp), %rcx
	movq	(%rdi,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	LBB3_7
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	movq	_c@GOTPCREL(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -52(%rbp)
	movslq	-52(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	movl	-52(%rbp), %esi
	leaq	-32(%rbp), %rdi
	callq	_queuePush
	movq	_c@GOTPCREL(%rip), %rdi
	movslq	-52(%rbp), %rax
	movl	$1, (%rdi,%rax,4)
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB3_3
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_1
LBB3_8:
	addq	$64, %rsp
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
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	movl	$8008, %edi             ## imm = 0x1F48
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	_a@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movl	$1, -8(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	_n@GOTPCREL(%rip), %rax
	movl	-8(%rbp), %ecx
	cmpl	(%rax), %ecx
	jg	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
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
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB4_1
LBB4_4:
	movl	$0, -12(%rbp)
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	_m@GOTPCREL(%rip), %rax
	movl	-12(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB4_8
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=1
	leaq	L_.str.2(%rip), %rdi
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
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB4_5
LBB4_8:
	movl	$1, %edi
	callq	_bfs
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\355\201\220 \354\226\270\353\215\224\355\224\214\353\241\234\354\232\260 \353\260\234\354\203\235 \n"

	.comm	_c,4004,4               ## @c
L_.str.1:                               ## @.str.1
	.asciz	"%d"

	.comm	_a,8,3                  ## @a
L_.str.2:                               ## @.str.2
	.asciz	"%d %d"

	.comm	_n,4,2                  ## @n
	.comm	_m,4,2                  ## @m

.subsections_via_symbols
