.data
person:
        .space 36
fmt_s:
        .string "%s"
fmt_d:
        .string "%d"
fmt_print:
        .string "%d\n"

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $person
        pushl $fmt_s
        call scanf
        pushl $person+14
        pushl $fmt_s
        call scanf
        pushl $person+28
        pushl $fmt_d
        call scanf
        movl $person, (%esp)
        call puts
        movl $person+14, (%esp)
        call puts
        movl person+28, %edx
        pushl %edx
        pushl $fmt_print
        call printf
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
