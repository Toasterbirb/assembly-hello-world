all:
	nasm -f elf32 -o hello_world.o hello.asm
	ld -m elf_i386 -o hello_world ./hello_world.o

clean:
	rm -f ./hello_world ./hello_world.o
