#!/bin/bash

nasm -f elf $1 -o ini/file.o

gcc -m32 ini/driver.o ini/file.o ini/asm_io.o -o executable

./executable