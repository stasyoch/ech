.data
int_1:
        .space 4
fmt_scan:
        .string "%d"
fmt_print:
  .string "%d\n"

.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_1
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        movl int_1, %ecx
        movl $0, %eax
count:
        addl %ecx, %eax
        loop count
        pushl %eax
        pushl $fmt_print
        call printf
        addl $12, %esp
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
