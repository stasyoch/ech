.data
res:
        .space 4

.text
.globl sum1
sum1:
        pushl %ebp
        movl %esp, %ebp
        movl 8(%ebp), %ebx
        movl 12(%ebp), %ecx
        movl $0, res
start_1:
        movl (%ebx), %eax
        addl %eax, res
        addl $4, %ebx
        loop start_1
        movl res, %eax
        movl %ebp, %esp
        popl %ebp
        ret

.globl sum2
sum2:
        pushl %ebp
        movl %esp, %ebp
        subl $4, %esp
        movl $0, %eax
        movl %eax, res
        movl 8(%ebp), %ebx
        movl 12(%ebp), %ecx
start_2:
        movl %ebx, %eax
        flds (%eax)
        flds res
        faddp %st, %st(1)
        fstps res
        addl $4, %ebx
        loop start_2
        movl res, %eax
        movl %eax, -4(%ebp)
        flds -4(%ebp)
        movl %ebp, %esp
        popl %ebp
        ret
                     
