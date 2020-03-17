# Linux-X86-shellcode
handy linux shellcode implemented in assembly

# Prerequisites
```
gcc
gcc-multilib
nasm
ld
objdump
```

compile assembly with this command
```
./compile_asm.sh <asm_file_name_with_out_asm_extension>
```
\
After that we should extract out binary asssembly bytecodes and put them in our shellprogram.c\
We can view bytecodes of our bin file with this command
```
objdump -D <bin_file>
```
\
We can extract .text section bytecodes with readshell.c
```
./readshell <bin_file>
```
the longest output is the bytecodes of .text section
\
\
If you want the shellprogram execute successfully you should compile the shellprogram.c like this
```
gcc -m32 -fno-stack-protector -z execstack shellprogram.c -o shellprogram
```

# Credits
https://0x00sec.org/t/linux-shellcoding-part-1-0/289 \
https://www.youtube.com/watch?v=yN2Upw4dXu0
