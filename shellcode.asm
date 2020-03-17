section .text   
    global _start       ; need for compiler comparable with int main()

_start:

    xor     eax, eax    ;zeroing to remove garbage values
    push    eax         ;pushing zero in stack for null terminating byte
    push    0x68732f2f  ;push /bin//sh into stack
    push    0x6e69622f
    mov     ebx, esp    ;set ebx to point to our string /bin//sh
    xor     ecx, ecx    ;no argument for /bin//sh
    mov     al, 0x0b    ;execve syscall
    int     0x80        ;system call

    xor     ebx, ebx    ;normal exit
    xor     eax, eax    ;zeroing to remove garbage values
    mov     al, 0x01    ;exit system call
    int     0x80        ;system call
