	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_makeTble               ## -- Begin function makeTble
	.p2align	4, 0x90
_makeTble:                              ## @makeTble
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$0, -32(%rbp)
	movl	$1, -36(%rbp)
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_15
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -32(%rbp)
	movb	%cl, -37(%rbp)          ## 1-byte Spill
	jle	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	setne	%dil
	movb	%dil, -37(%rbp)         ## 1-byte Spill
LBB0_9:                                 ##   in Loop: Header=BB0_7 Depth=2
	movb	-37(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_10
	jmp	LBB0_11
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	%ecx, -32(%rbp)
	jmp	LBB0_7
LBB0_11:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jne	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
LBB0_13:                                ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_5
LBB0_15:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_KMP                    ## -- Begin function KMP
	.p2align	4, 0x90
_KMP:                                   ## @KMP
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_makeTble
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB1_12
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_3
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -32(%rbp)
	movb	%cl, -37(%rbp)          ## 1-byte Spill
	jle	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -37(%rbp)         ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	movb	-37(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	%ecx, -32(%rbp)
	jmp	LBB1_3
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jne	LBB1_9
## %bb.8:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	addl	$2, %eax
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movl	(%rdi,%rcx,4), %esi
	movl	%esi, -32(%rbp)
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB1_10
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_11
LBB1_11:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_1
LBB1_12:
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	_parent(%rip), %rdi
	movq	_pattern(%rip), %rsi
	callq	_KMP
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"acabacdabac"

	.section	__DATA,__data
	.globl	_parent                 ## @parent
	.p2align	3
_parent:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"abacdab"

	.section	__DATA,__data
	.globl	_pattern                ## @pattern
	.p2align	3
_pattern:
	.quad	L_.str.1

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"[\354\235\270\353\215\261\354\212\244 %d]\354\227\220\354\204\234 \353\247\244\354\271\255\354\204\261\352\263\265 \n"


.subsections_via_symbols
