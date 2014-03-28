.globl  a
        .data
a:
        .space 24
iter_i:
        .space 4
iter_j:
        .space 4
int_1:
        .space 4
fmt_scan:
        .string "%d"
fmt_print:
        .string "%d\n"

        .text
        .globl  main
main:
        pushl %ebp
        movl %esp, %ebp
        movl $0, %eax
        movl %eax, iter_i
        jmp check_1
nul_j_1:
        movl $0, %eax
        movl %eax, iter_j
        jmp check_2
start:
        movl iter_i, %edx
        movl %edx, %eax
        addl %eax, %eax
        addl %edx, %eax
        movl iter_j, %edx
        addl %edx, %eax
        sall $2, %eax
        addl $a, %eax
        pushl %eax
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        movl iter_j, %eax
        addl $1, %eax
        movl %eax, iter_j
check_2:
        movl iter_j, %eax
        cmpl $2, %eax
        jle start
        movl iter_i, %eax
        addl $1, %eax
        movl %eax, iter_i
check_1:
        movl iter_i, %eax
        cmpl $1, %eax
        jle nul_j_1
        movl a, %eax
        movl %eax, int_1
        movl $0, %eax
        movl %eax, iter_i
        jmp check_4
nul_j_2:
        movl $0, %eax
        movl %eax, iter_j
        jmp check_3
count:
        movl iter_i, %edx
        movl %edx, %eax
        addl %eax, %eax
        addl %edx, %eax
        movl iter_j, %edx
        addl %edx, %eax
        movl a(,%eax,4), %eax
        movl int_1, %ebx
        cmpl %ebx, %eax
        jge incl_j
        movl iter_i, %edx
        movl %edx, %eax
        addl %eax, %eax
        addl %edx, %eax
        movl iter_j, %edx
        addl %edx, %eax
        movl a(,%eax,4), %eax
        movl %eax, int_1
incl_j:
        movl iter_j, %eax
        addl $1, %eax
        movl %eax, iter_j
check_3:
        movl iter_j, %eax
        cmpl $2, %eax
        jle count
        movl iter_i, %eax
        addl $1, %eax
        movl %eax, iter_i
check_4:
        movl iter_i, %eax
        cmpl $1, %eax
        jle nul_j_2
        movl int_1, %eax
        pushl %eax
        pushl $fmt_print
        call printf
        addl $8, %esp
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret
