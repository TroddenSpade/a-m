#!/bin/bash

nasm -f elf -d ELF_TYPE ./ini/asm_io.asm -o ./obj/asm_io.o
gcc -m32 -c ./ini/driver.c -o ./obj/driver.o

nasm -f elf ./asm/$1 -o ./obj/file.o


gcc -m32 ./obj/driver.o ./obj/file.o ./obj/asm_io.o

./a.out