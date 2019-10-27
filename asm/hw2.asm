%include "asm_io.inc" 
segment .text

global asm_main

asm_main:
    enter 0,0
    pusha

    mov ebx ,0
    mov ecx ,0
    mov edx ,0

input_loop:
    call read_int
    cmp eax, 0
    je input_is_zero
    cmp eax, 1
    je input_is_one
    cmp eax, 2
    je input_is_two
    jmp end_input_loop

input_is_zero: ;save in ebx
    inc ebx
    jmp end_input_loop

input_is_one: ; ecx
    inc ecx
    jmp end_input_loop

input_is_two: ; edx
    inc edx
    jmp end_input_loop

end_input_loop:
    cmp eax, 2
    jng input_loop


    ; find largest num ;;;;;;;;;;;

    mov esi, ebx
    cmp esi, ecx
    jg cmp_third_num
    mov esi, ecx

cmp_third_num:

    cmp esi, edx
    jg end_cpm
    mov esi, edx

end_cpm:
    ;    ;;;;;;;;;;;;;;;;;;;;;;;


print_loop:

    mov eax ,'|'
    call print_char
    mov eax ,' '
    call print_char
    call print_char

    cmp ebx,esi
    jge print_star1
    mov eax ,' '
    call print_char
    jmp cont1
print_star1:
    mov eax ,'*'
    call print_char
cont1:


    mov eax ,' '
    call print_char
    call print_char

    cmp ecx,esi
    jge print_star2
    mov eax ,' '
    call print_char
    jmp cont2
print_star2:
    mov eax ,'*'
    call print_char
cont2:

    mov eax ,' '
    call print_char
    call print_char

    cmp edx,esi
    jge print_star3
    mov eax ,' '
    call print_char
    jmp cont3
print_star3:
    mov eax ,'*'
    call print_char
cont3:

    mov eax ,' '
    call print_char
    call print_char

    mov eax ,'|'
    call print_char
    call print_nl

    dec esi
    cmp esi ,0
    jg print_loop

end_print_loop:

    mov eax ,'|'
    call print_char
    mov eax,'~'
    call print_char    
    call print_char
    mov eax,0
    call print_int
    mov eax,'~'
    call print_char    
    call print_char
    mov eax,1
    call print_int
    mov eax,'~'
    call print_char    
    call print_char
    mov eax,2
    call print_int
    mov eax,'~'
    call print_char    
    call print_char
    mov eax ,'|'
    call print_char
    call print_nl
    
    popa
    leave
    ret