 .data
.LC0:
        .string "%d"
.LC1:
        .string "0"
.LC2:
        .string "1"
        .text
.globl main
        .type   main, @function
main:
        pushl   %ebp
        movl    %esp, %ebp
        andl    $-16, %esp
        subl    $32, %esp
        movl    $.LC0, %eax
        leal    28(%esp), %edx
        movl    %edx, 4(%esp)
        movl    %eax, (%esp)
        call    __isoc99_scanf
        movl    28(%esp), %eax
        cmpl    $11, %eax
        jne     .L2
        movl    $.LC1, (%esp)
        call    puts
        jmp     .L3
.L2:
        movl    $.LC2, (%esp)
        call    puts
.L3:
        movl    $0, %eax
        leave
        ret
