	.file	"calc.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Enter two numbers: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter choice"
.LC3:
	.string	"1 - Add"
.LC4:
	.string	"2 - Sub"
.LC5:
	.string	"Result: %d\n"
.LC6:
	.string	"Invalid choice"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	lea	ecx, 4[esp]
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
	push	esi
	push	ebx
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	push	ecx
	sub	esp, 40
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -28[ebp], eax
	lea	eax, .LC0@GOTOFF[ebx]
	push	eax
	call	puts@PLT
	pop	ecx
	lea	eax, -40[ebp]
	pop	esi
	lea	esi, .LC1@GOTOFF[ebx]
	push	eax
	push	esi
	call	__isoc23_scanf@PLT
	pop	eax
	lea	eax, -36[ebp]
	pop	edx
	push	eax
	push	esi
	call	__isoc23_scanf@PLT
	lea	eax, .LC2@GOTOFF[ebx]
	mov	DWORD PTR [esp], eax
	call	puts@PLT
	lea	eax, .LC3@GOTOFF[ebx]
	mov	DWORD PTR [esp], eax
	call	puts@PLT
	lea	eax, .LC4@GOTOFF[ebx]
	mov	DWORD PTR [esp], eax
	call	puts@PLT
	pop	ecx
	pop	eax
	lea	eax, -32[ebp]
	push	eax
	push	esi
	call	__isoc23_scanf@PLT
	mov	eax, DWORD PTR -32[ebp]
	add	esp, 16
	cmp	eax, 1
	je	.L9
	cmp	eax, 2
	je	.L10
	sub	esp, 12
	lea	eax, .LC6@GOTOFF[ebx]
	push	eax
	call	puts@PLT
	add	esp, 16
.L3:
	mov	eax, DWORD PTR -28[ebp]
	sub	eax, DWORD PTR gs:20
	jne	.L11
	lea	esp, -12[ebp]
	xor	eax, eax
	pop	ecx
	pop	ebx
	pop	esi
	pop	ebp
	lea	esp, -4[ecx]
	ret
.L10:
	push	eax
	push	eax
	mov	eax, DWORD PTR -40[ebp]
	sub	eax, DWORD PTR -36[ebp]
.L7:
	push	eax
	lea	eax, .LC5@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	jmp	.L3
.L9:
	push	edx
	push	edx
	mov	eax, DWORD PTR -36[ebp]
	add	eax, DWORD PTR -40[ebp]
	jmp	.L7
.L11:
	call	__stack_chk_fail_local
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	mov	ebx, DWORD PTR [esp]
	ret
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
