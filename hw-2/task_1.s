.data
int_1:
        .space 4
int_2:
        .space 4
fmt:
        .string "%d %d"
fmt_1:
        .string "%d\n"

.text
.globl main
main:
        pushl %ebp
        movl %esp,%ebp
        pushl $int_1
        pushl $int_2
        pushl $fmt
        call scanf

        movl int_1,%ebx
        movl int_2,%ecx
        andl %ebx,%ecx
        pushl %ecx
        pushl $fmt_1
        call printf

        movl int_2,%ecx
        or %ebx,%ecx
        pushl %ecx
        pushl $fmt_1
        call printf

        not %bx
        pushl %ebx
        pushl $fmt_1
        call printf

        movl int_1,%ebx
        movl int_2,%ecx
        xor %bx,%cx
        pushl %ecx
        pushl $fmt_1
        call printf

        shll $1,%ebx
        pushl %ebx
        pushl $fmt_1
        call printf

        movl int_1,%ebx
        movl int_2,%ecx
        shrl $1,%ebx
        pushl %ebx
        pushl $fmt_1
        call printf

        movl %ebp,%esp
        popl %ebp
        ret
