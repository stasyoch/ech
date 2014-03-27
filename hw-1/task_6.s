.data
d:
        .space 8
fmt_scan:
        .string "%lf"
fmt_print:
        .string "%d"
fmt_print_2:
        .string "\n"

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $d
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        pushl %ebx
        movl $4, %eax
        addl $d,%eax
        movl (%eax), %ebx
        movl %ebx, %eax
        popl %ebx
        movl $64, %ecx
doo:
        cmpl $32, %ecx
        jne step_1
        movl $d, %eax
        pushl %ebx
        movl (%eax), %ebx
        movl %ebx, %eax
        popl %ebx
step_1:
        shll $1, %eax
        movl $0, %ebx
        jnc out
        movl $1, %ebx
out:
        pushl %edx
        pushl %ecx
        pushl %eax
        pushl %ebx
        pushl $fmt_print
        call printf
        addl $8, %esp
        popl %eax
        popl %ecx
        popl %edx
        loop doo
        pushl $fmt_print_2
        call printf
        addl $4, %esp
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret
