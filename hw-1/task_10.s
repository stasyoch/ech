.data
int_1:
        .space 4
char_1:
        .space 1
float_1:
        .space 4
double_1:
        .space 8
lbl:
        .string "\n"
fmt_int:
        .string "%d"
fmt_char:
        .string "%c"
fmt_float:
        .string "%f"
fmt_double:
        .string "%lf"

.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp

        pushl $char_1
        pushl $fmt_char
        call scanf
        movzbl  char_1, %eax
        movsbl  %al, %edx
        movl $fmt_char, %eax
        movl %edx, 4(%esp)
        movl %eax, (%esp)
        call printf
        pushl $lbl
        call printf

        pushl $int_1
        pushl $fmt_int
        call scanf
        pushl int_1
        pushl $fmt_int
        call printf
        pushl $lbl
        call printf

        pushl $float_1
        pushl $fmt_float
        call scanf
        flds float_1
        movl $fmt_float, %eax
        fstpl   4(%esp)
        movl %eax, (%esp)
        call printf
        pushl $lbl
        call printf

        pushl $double_1
        pushl $fmt_double
        call scanf
        fldl double_1
        movl $fmt_double, %eax
        fstpl   4(%esp)
        movl %eax, (%esp)
        call printf
        pushl $lbl
        call printf

        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
