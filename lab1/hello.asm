section .data
    hello db 'Hello, World!', '$'

section .text
    org 0x100 ; tell the assembler that the program will be loaded at 0x100

_start:
    ; Print the message to the screen
    mov ah, 9     ; AH=9 means "print string" function
    mov dx, hello ; Load the offset address of 'hello' into DX
    int 21h       ; Call the DOS interrupt 21h to execute the function

    ; Exit the program
    mov ah, 4Ch ; AH=4Ch means "exit" function
    xor al, al  ; Set AL to 0 (return code)
    int 21h     ; Call the DOS interrupt 21h to exit the program