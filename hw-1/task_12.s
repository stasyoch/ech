.data
int_1:
        .space 4
int_2:
        .space 4
fmt_string:
        .string "%d\n"
fmt_scan:
        .string "%d"

.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_1
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        pushl $int_2
        pushl $fmt_scan
        call scanf
        addl $8, %esp

        movl int_1, %eax
        addl int_2, %eax
        pushl %eax
        pushl $fmt_string
        call printf
        addl $8, %esp

        movl int_1, %eax
        subl int_2, %eax
        pushl %eax
        pushl $fmt_string
        call printf
        addl $8, %esp

        movl int_1, %eax
        mull int_2
        pushl %eax
        pushl $fmt_string
        call printf
        addl $8, %esp

        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
