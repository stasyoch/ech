.data
fmt_string:
        .string "%d"
int_1:
        .space 4
fmt_print:
        .string "\n"

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
        movl $32, %ecx
        movl $0, %edx
shear:
        shll $1, %eax
        movl $0, %ebx
        jnb print
        incl %ebx
        movl $1, %edx
print:
        cmpl $1, %edx
        jne loop
        pushl %ecx
        pushl %eax
        pushl %edx
        pushl %ebx
        pushl $fmt_string
        call printf
        addl $8, %esp
        popl %edx
        popl %eax
        popl %ecx
loop:
        loop shear
        pushl $fmt_print
        call printf
        addl $4, %esp
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret

       
       
        
