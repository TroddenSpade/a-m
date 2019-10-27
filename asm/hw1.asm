%include "asm_io.inc"
    segment .text
    global asm_main
asm_main:
    enter 0,0
    pusha

    call read_int ;read a from user
    mov ecx,eax ;move a to ecx
    mov edx,eax

    call read_int ;read b from user
    mov ebx,eax ;move b to ebx

    sub ebx,42 ;ebx = b-42

    add ecx,32 ;a + 32
    add ecx,ecx ; *2
    add ecx,ecx ; 4
    add ecx,ecx ; ecx = a+32 * 8

    add ebx,ecx ; ebx = lfs
    add ebx,ebx ; 2
    mov ecx,ebx ; ecx = 2*lfs
    add ebx,ebx ; 4
    add ebx,ecx ; 6

    sub ebx,edx

    mov eax,ebx 

    call print_int


    popa
    leave
    ret
