nasm -f elf32 -o $1.o $1.asm 
ld -melf_i386 -s -o $1 $1.o
