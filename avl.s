	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_getMax                 ## -- Begin function getMax
	.p2align	4, 0x90
_getMax:                                ## @getMax
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jle	LBB0_2
## %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getHight               ## -- Begin function getHight
	.p2align	4, 0x90
_getHight:                              ## @getHight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB1_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB1_3
LBB1_2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
LBB1_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_setHeight              ## -- Begin function setHeight
	.p2align	4, 0x90
_setHeight:                             ## @setHeight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	$0, %al
	callq	_getHeight
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_getHeight
	movl	-12(%rbp), %edi         ## 4-byte Reload
	movl	%eax, %esi
	callq	_getMax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getDifference          ## -- Begin function getDifference
	.p2align	4, 0x90
_getDifference:                         ## @getDifference
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB3_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB3_3
LBB3_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	_getHeight
	movq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_getHeight
	movl	-36(%rbp), %ecx         ## 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB3_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_rotateLL               ## -- Begin function rotateLL
	.p2align	4, 0x90
_rotateLL:                              ## @rotateLL
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rdi
	callq	_setHeight
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_rotateRR               ## -- Begin function rotateRR
	.p2align	4, 0x90
_rotateRR:                              ## @rotateRR
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	_setHeight
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_rotateLR               ## -- Begin function rotateLR
	.p2align	4, 0x90
_rotateLR:                              ## @rotateLR
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi ; rbp
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_rotateRR
	movq	-8(%rbp), %rdi ; rdi => rbp 
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax ; Dump Here
	movq	%rax, %rdi
	callq	_setHeight
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	_rotate
	cltq
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_rotateRL               ## -- Begin function rotateRL
	.p2align	4, 0x90
_rotateRL:                              ## @rotateRL
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_rotateLL
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	_setHeight
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	_rotate
	cltq
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_balance                ## -- Begin function balance
	.p2align	4, 0x90
_balance:                               ## @balance
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_getDifference
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jl	LBB8_5
## %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	_getDifference
	cmpl	$1, %eax
	jl	LBB8_3
## %bb.2:
	movq	-8(%rbp), %rdi
	callq	_rotateLL
	movq	%rax, -8(%rbp)
	jmp	LBB8_4
LBB8_3:
	movq	-8(%rbp), %rdi
	callq	_rotateLR
	movq	%rax, -8(%rbp)
LBB8_4:
	jmp	LBB8_11
LBB8_5:
	cmpl	$-2, -12(%rbp)
	jg	LBB8_10
## %bb.6:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	_getDifference
	cmpl	$-1, %eax
	jg	LBB8_8
## %bb.7:
	movq	-8(%rbp), %rdi
	callq	_rotateRR
	movq	%rax, -8(%rbp)
	jmp	LBB8_9
LBB8_8:
	movq	-8(%rbp), %rdi
	callq	_rotateRL
	movq	%rax, -8(%rbp)
LBB8_9:
	jmp	LBB8_10
LBB8_10:
	jmp	LBB8_11
LBB8_11:
	movq	-8(%rbp), %rdi
	callq	_setHeight
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_inserNode              ## -- Begin function inserNode
	.p2align	4, 0x90
_inserNode:                             ## @inserNode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB9_2
## %bb.1:
	movl	$24, %edi
	callq	_malloc
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	LBB9_9
LBB9_2:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB9_4
## %bb.3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	movq	-8(%rbp), %rdi
	callq	_balance
	movq	%rax, -8(%rbp)
	jmp	LBB9_8
LBB9_4:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	LBB9_6
## %bb.5:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 16(%rcx)
	movq	-8(%rbp), %rdi
	callq	_balance
	movq	%rax, -8(%rbp)
	jmp	LBB9_7
LBB9_6:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -16(%rbp)         ## 4-byte Spill
LBB9_7:
	jmp	LBB9_8
LBB9_8:
	jmp	LBB9_9
LBB9_9:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_display                ## -- Begin function display
	.p2align	4, 0x90
_display:                               ## @display
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB10_10
## %bb.1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_display
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rdi
	cmpq	_root(%rip), %rdi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jne	LBB10_3
## %bb.2:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB10_3:
	movl	$0, -16(%rbp)
LBB10_4:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	movb	%cl, -25(%rbp)          ## 1-byte Spill
	jge	LBB10_6
## %bb.5:                               ##   in Loop: Header=BB10_4 Depth=1
	movq	-8(%rbp), %rax
	cmpq	_root(%rip), %rax
	setne	%cl
	movb	%cl, -25(%rbp)          ## 1-byte Spill
LBB10_6:                                ##   in Loop: Header=BB10_4 Depth=1
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB10_7
	jmp	LBB10_9
LBB10_7:                                ##   in Loop: Header=BB10_4 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
## %bb.8:                               ##   in Loop: Header=BB10_4 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB10_4
LBB10_9:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	movl	%esi, -36(%rbp)         ## 4-byte Spill
	callq	_getHeight
	leaq	L_.str.4(%rip), %rdi
	movl	-36(%rbp), %esi         ## 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %esi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_display
LBB10_10:
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
	movq	_root(%rip), %rdi
	movl	$7, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$6, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$5, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$3, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$1, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$9, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$8, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$12, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$16, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$18, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$23, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$21, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$14, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$15, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$19, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$20, %esi
	movb	$0, %al
	callq	_insertNode
	movslq	%eax, %rdi
	movq	%rdi, _root(%rip)
	movq	_root(%rip), %rdi
	movl	$1, %esi
	callq	_display
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\353\215\260\354\235\264\355\204\260 \354\244\221\353\263\265\354\235\264 \353\260\234\354\203\235 \n"

	.globl	_root                   ## @root
.zerofill __DATA,__common,_root,8,3
L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"Root: "

L_.str.3:                               ## @.str.3
	.asciz	"   "

L_.str.4:                               ## @.str.4
	.asciz	"%d(%d)"


.subsections_via_symbols
