.data
f:
        .space 4
fmt_scan:
        .string "%f"
fmt_print:
        .string "%d"
fmt_print_2:
        .string "\n"

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $f
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        movl f, %eax
        movl $32, %ecx
        movl $0, %edx
doo:
        shll $1, %eax
        movl $0, %ebx
        jnc out
        movl $1, %ebx
        movl $1, %edx
out:
        cmpl $1, %edx
        jne end
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
end:
        loop doo
        pushl $fmt_print_2
        call printf
        addl $4, %esp
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret
