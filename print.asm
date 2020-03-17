section .text
    global _start

_start:

    xor     eax, eax    ;zeroing to remove garbage values
    xor     ebx, ebx
    xor     ecx, ecx
    xor     edx, edx

    push    eax         ; pushing zero in stack for null terminating byte
    push    0x68732f2f
    push    0x6e69622f
    mov     ecx, esp
    mov     dl, 20
    mov     bl, 1
    mov     al, 4       ;execve syscall
    int     0x80        ;system call

    xor ebx, ebx   ;process' exit code
    mov al,1   ;system call number (sys_exit)
    int 0x80    ;call kernel - this interrupt won't return