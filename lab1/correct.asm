section .data
	; Y     dw 0x6F3C ; XLEN=16 in 8086
	Y   dw 0b0110111100111100 ; XLEN=16 in 8086
	cnt dw 0

section .bss
	; none

section .text
	org 0x100

_start: 
	mov cx, 16
	mov ax, [Y]
	mov dx, 0   ; counter
cnt_loop:
 	test ax, 1
	jz  skip
	inc dx
skip:
	shr  ax, 1
	loop cnt_loop

_end:
	mov [cnt], dx
	mov ah,    0x4C
	int 0x21

