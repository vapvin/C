	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
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
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movq	_tree@GOTPCREL(%rip), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	addl	-8(%rbp), %esi
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	subl	-4(%rbp), %eax
	andl	%eax, %esi
	movl	-4(%rbp), %eax
	subl	%esi, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_1
LBB0_3:
	movl	-8(%rbp), %eax
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$7, -4(%rbp)
	jg	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	_tree@GOTPCREL(%rip), %rcx
	movl	-8(%rbp), %edx
	movslq	-4(%rbp), %rsi
	addl	(%rcx,%rsi,4), %edx
	movl	%edx, (%rcx,%rsi,4)
	movl	-4(%rbp), %edx
	subl	-4(%rbp), %eax
	andl	%eax, %edx
	addl	-4(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	LBB1_1
LBB1_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getSection             ## -- Begin function getSection
	.p2align	4, 0x90
_getSection:                            ## @getSection
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	_sum
	movl	-4(%rbp), %esi
	subl	$1, %esi
	movl	%esi, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_sum
	movl	-12(%rbp), %esi         ## 4-byte Reload
	subl	%eax, %esi
	movl	%esi, %eax
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$1, %edi
	movl	$7, %esi
	callq	_update
	movl	$2, %edi
	movl	$1, %esi
	callq	_update
	movl	$3, %edi
	movl	$9, %esi
	callq	_update
	movl	$4, %edi
	movl	$5, %esi
	callq	_update
	movl	$5, %edi
	movl	$6, %esi
	callq	_update
	movl	$6, %edi
	movl	$4, %esi
	callq	_update
	movl	$7, %edi
	movl	$1, %esi
	callq	_update
	movl	$1, %edi
	movl	$7, %esi
	callq	_getSection
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$6, %edi
	movl	$3, %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_update
	movl	$4, %edi
	movl	$7, %esi
	callq	_getSection
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_tree,28,4              ## @tree
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1 ~ 7 \352\265\254\352\260\204\355\225\251: %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"\354\235\270\353\215\261\354\212\244 6\354\235\230 \354\233\220\354\206\214\353\245\274 +3\353\247\214\355\201\274 \354\210\230\354\240\225\n"

L_.str.2:                               ## @.str.2
	.asciz	"4\353\266\200\355\204\260 7\352\271\214\354\247\200\354\235\230 \352\265\254\352\260\204\355\225\251: %d\n"


.subsections_via_symbols
