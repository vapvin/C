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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jne	LBB0_2
## %bb.1:
	movq	_tree@GOTPCREL(%rip), %rax
	movslq	-8(%rbp), %rcx
	leaq	_a(%rip), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-16(%rbp), %rcx
	movl	%esi, (%rax,%rcx,4)
	movl	%esi, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	shll	$1, %eax
	movl	%eax, %edx
	callq	_init
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%ecx, %edi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_init
	movq	_tree@GOTPCREL(%rip), %r8
	movl	-24(%rbp), %ecx         ## 4-byte Reload
	addl	%eax, %ecx
	movslq	-16(%rbp), %r9
	movl	%ecx, (%r8,%r9,4)
	movl	%ecx, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jg	LBB1_2
## %bb.1:
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB1_3
LBB1_2:
	movl	$0, -4(%rbp)
	jmp	LBB1_7
LBB1_3:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB1_6
## %bb.4:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	LBB1_6
## %bb.5:
	movq	_tree@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -4(%rbp)
	jmp	LBB1_7
LBB1_6:
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-16(%rbp), %eax
	shll	$1, %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %edx
	callq	_sum
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %r8d
	movl	%edi, -32(%rbp)         ## 4-byte Spill
	movl	%ecx, %edi
	movl	-32(%rbp), %ecx         ## 4-byte Reload
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_sum
	movl	-36(%rbp), %ecx         ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB1_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_update                 ## -- Begin function update
	.p2align	4, 0x90
_update:                                ## @update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-16(%rbp), %ecx
	cmpl	-4(%rbp), %ecx
	jl	LBB2_2
## %bb.1:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	LBB2_3
LBB2_2:
	jmp	LBB2_6
LBB2_3:
	movq	_tree@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, (%rax,%rdx,4)
	movl	-4(%rbp), %ecx
	cmpl	-8(%rbp), %ecx
	jne	LBB2_5
## %bb.4:
	jmp	LBB2_6
LBB2_5:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	%eax, %edx
	callq	_update
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	%eax, %edi
	movl	%edx, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %ecx         ## 4-byte Reload
	callq	_update
LBB2_6:
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
	xorl	%edi, %edi
	movl	$0, -4(%rbp)
	movl	$6, %esi
	movl	$1, %edx
	callq	_init
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$6, %esi
	movl	%esi, -8(%rbp)          ## 4-byte Spill
	movl	$1, %ecx
	movl	%edx, -12(%rbp)         ## 4-byte Spill
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx         ## 4-byte Reload
	movl	-8(%rbp), %r8d          ## 4-byte Reload
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_sum
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%edi, %edi
	movl	$6, %esi
	movl	$1, %edx
	movl	$5, %ecx
	movl	$3, %r8d
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_update
	xorl	%edi, %edi
	movl	$6, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	%eax, %r8d
	callq	_sum
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_a                      ## @a
	.p2align	4
_a:
	.long	7                       ## 0x7
	.long	1                       ## 0x1
	.long	9                       ## 0x9
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	4                       ## 0x4
	.long	1                       ## 0x1

	.comm	_tree,112,4             ## @tree
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0\353\266\200\355\204\260 6\352\271\214\354\247\200\354\235\230 \352\265\254\352\260\204\355\225\251: %d \n"

L_.str.1:                               ## @.str.1
	.asciz	"\354\235\270\353\215\261\354\212\244 5\354\235\230 \354\233\220\354\206\214\353\245\274 3\353\247\214\355\201\274 \354\210\230\354\240\225 \n"

L_.str.2:                               ## @.str.2
	.asciz	"3\353\266\200\355\204\260 6\352\271\214\354\247\200\354\235\230 \352\265\254\352\260\204\355\225\251: %d\n"


.subsections_via_symbols
