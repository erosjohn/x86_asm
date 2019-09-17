all:
	nasm -f elf32 strchr.asm -o strchr.o
	gcc -m32 -o main main.c strchr.o
