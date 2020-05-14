section .text
    global _start

_start: 
    mov rax, 1
    mov rsp, 1
    xor rax, rax

    jmp --

    ;ss

    mov eax 60