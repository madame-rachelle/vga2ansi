vga2ansi:
	cc -O2 vga2ansi.c main.c -o vga2ansi -static -static-libstdc++ -static-libgcc
	strip -g vga2ansi
