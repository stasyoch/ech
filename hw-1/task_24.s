.globl  a
        .data
a:
        .space 12
fmt_scan:
        .string "%d"
fmt_print:
        .string "%d\n"
int_1:
        .space 4
iter:
        .space 4

        .text
        .globl  main
main:
        pushl   %ebp
        movl    %esp, %ebp
        movl $0, %eax
        movl %eax, iter
        jmp     step_1
start:
        movl    iter, %eax
        sall    $2, %eax
        addl    $a, %eax
        pushl    %eax
        pushl   $fmt_scan
        call    scanf
        addl    $8, %esp
        movl iter, %eax
        addl    $1, %eax
        movl %eax, iter
step_1:
        movl iter, %eax
        cmpl    $2, %eax
        jle     start
        movl a, %eax
        movl %eax, int_1
        movl $1, %eax
        movl %eax, iter
        jmp step_2
count:
        movl iter, %eax
        sall $2, %eax
        addl $a, %eax
        movl (%eax), %edx
        movl int_1, %eax
        addl %edx, %eax
        movl %eax, int_1
        movl iter, %eax
        addl $1, %eax
        movl %eax, iter
step_2:
        movl iter, %eax
        cmpl $2, %eax
        jle count
        movl int_1, %eax
        pushl %eax
        pushl $fmt_print
        call printf
        addl $8, %esp
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret
