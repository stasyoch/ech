.data
ok:
        .string "Ok\n"
nok:
        .string "Try again\n"
mid:
        .string "This is one\n"
good:
        .string "Good result\n"
fmt_string:
        .string "%d"
int_1:
        .space 4

        .text
        .globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $int_1
        pushl $fmt_string
        call scanf
        addl $8, %esp
        pushl %eax
        movl int_1, %eax
        cmpl $11, %eax
        je right
        cmpl $1, %eax
        je one
        cmpl $12, %eax
        je goood
        pushl $nok
        call printf
        addl $4, %esp
        jmp end
right:
        pushl $ok
 call printf
        addl $4, %esp
        jmp end
one:
        pushl $mid
        call printf
        addl $4, %esp
        jmp end
goood:
        pushl $good
        call printf
        addl $4, %esp
        jmp end
end:
        popl %eax
        movl %ebp, %esp
        popl %ebp
        movl $0, %eax
        ret

