[org 0x7c00]
jmp start

section .text
    global start

start:
    mov al, 1
    mov bx, 0

print_no:
    inc bx
    cmp bx, 6
    je halt
    mov ah, 0x0e
    add al, '0'
    int 0x10
    sub al, '0'
    inc al
    jmp print_no

halt:
    jmp halt

times 510-($-$$) db 0
db 0x55, 0xaa

x86 Assembly code to print numbers in a sequence from 1 to 5
