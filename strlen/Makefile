all:
	nasm -f elf32 strlen.asm -o strlen.o
	gcc -m32 -o main main.c strlen.o
