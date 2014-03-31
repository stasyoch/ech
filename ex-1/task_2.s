.data
fmt_print:
        .string "%d\n"
fmt_string:
        .string "%d %d"
int_1:
        .space 4
int_2:
        .space 4
.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_2
        pushl $int_1
        pushl $fmt_string
        call scanf
        movl int_1,%eax
        movl int_2,%ebx
        addl %ebx,%eax
        pushl %eax
        pushl $fmt_print
        call printf
        movl %ebp,%esp
        popl %ebp
        ret
