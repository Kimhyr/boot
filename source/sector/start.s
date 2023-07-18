BITS 16

SECTION .boot.sector.text
GLOBAL start
start:
	; setup the Stack.
	mov	bp, $$
	mov	sp, $$

	; save any variables the BIOS gave.
	mov	[boot_drive], dl

	mov	si, hello_msg
	call	print

end:
	cli
	jmp	$

; prints a null-terminated string.
; 	si: the string to print.
print:
	push	ax
	mov	ah, 0x0E
.loop:
	lodsb
	test	al, al
	jz	.done
	int	0x10
	jmp	.loop
.done:
	pop	ax
	ret

SECTION .boot.sector.data
boot_drive:	db 0

SECTION .boot.sector.rodata
hello_msg:	db 'Hello, World!', 0
