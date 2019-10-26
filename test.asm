%include "asm_io.inc" 

segment .text

global asm_main

asm_main:
    enter 0,0
    pusha
    ;;;;;;;;;;;;

    mov eax, 100
    mov ebx, 20
    sub eax, ebx
    call print_int ; print EAX
    call print_nl ; print a new line
    dump_regs 1111 ; printing the system state (registers, etc.)
    
    ;;;;;;;;;;;;;
    popa
    leave
    ret