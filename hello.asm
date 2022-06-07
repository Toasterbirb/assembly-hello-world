section .text
	global _start

_start:
	mov eax, 4 					; 'Write' syscall
	mov ebx, 1 					; Write to stdout
	mov ecx, hello 				; Set 'hello' variable as the buffer
	mov edx, hellolen 			; Length of the buffer
	int 0x80

	mov eax, 1 					; 'Exit' syscall
	mov ebx, 0 					; Exit code 0
	int 0x80


section .data
	hello db "Hello world!", 0xA
	hellolen equ $-hello
