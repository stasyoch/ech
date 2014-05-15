data
fmt_scan:
        .string "%lf%lf%lf"
fmt_print:
        .string "%lf\n"
        .bss
buf:
        .space  24

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        finit
        movl $buf, %eax
        movl $3, %ecx
step_1:
        pushl %eax
        addl $8, %eax
        loop step_1
        pushl $fmt_scan
        call scanf
        movl $buf, %eax
        movl $3, %ecx
        fldl (%eax)
step_2:
        addl $8, %eax
        fldl (%eax)
        faddp
        loop step_2
        fstpl (%esp)
        wait
        pushl $fmt_print
        call printf
        movl $0, %eax
        movl %ebp, %esp
 	popl %ebp
        ret
                  
