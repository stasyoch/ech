.data
fmt_string_1:
        .string "%d"
int_1:
        .space 4
fmt_string_2:
        .string "\n"

.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_1
        pushl $fmt_string_1
        call scanf
        movl int_1, %eax
        movl $32, %ecx
shear:
        shll $1, %eax
        movl $0, %ebx
        jnc print
        incl %ebx
print:
        pushl %ecx
        pushl %eax
        pushl %ebx
        pushl $fmt_string_1
        call printf
        addl $8, %esp
        popl %eax
        popl %ecx
        loop shear

        pushl $fmt_string_2
        call printf
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
