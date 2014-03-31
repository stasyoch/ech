.data
fmt:
        .string "%c"
fmtp:
        .string "%d\n"
int_1:
        .space 1
int_2:
        .space 4
eof:
        .string "7"

.text
.globl main
main:
        pushl %ebp
        movl %esp,%ebp
        movl $0,%ecx
ll1:
        pushl $int_1
        pushl $fmt
        call scanf
        movb int_1,%bl
        incl %ecx
        cmpb eof,%bl
        jne ll1
        je out
out:
        pushl %ecx
        pushl $fmtp
        call printf
        movl %ebp,%esp
        popl %ebp
        ret
