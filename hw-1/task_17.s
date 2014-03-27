.data
fmt_scan:
        .string "%d"
int_1:
        .space 4
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
        movl $0, %eax
        movl $0, %ecx
        movl int_1, %ebx
        addl $1,%ebx
start:
        cmpl %ecx,%ebx
        je end
        addl %ecx, %eax
        addl $1, %ecx
        jmp start
end:
        pushl %eax
        pushl $fmt_print
        call printf
        addl $12, %esp
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
