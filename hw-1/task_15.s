 .data
int_1:
        .space 4
fmt_string:
        .string "%d"
ok:
        .string "ok\n"
nok:
        .string "try again\n"

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_1
        pushl $fmt_string
        call scanf
        addl $8, %esp
        movl int_1, %eax
        cmp $12,%eax
        je lbl
        pushl $nok
        call printf
        addl $4, %esp
        jmp end
lbl:
        pushl $ok
        call printf
        addl $4, %esp
end:
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret

