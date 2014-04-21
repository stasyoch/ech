data
fmt:
        .string "%c"
fmtp:
        .string "%d"
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
        movb $0,%cl
ll1:
        pushl $int_1
        pushl $fmt
        call scanf
        movb int_1,%bl
        movb int_1,%dl
        cmpb $128,%bl
        jg step1
        je step1
        jl n1
step1:
        addb $1,%cl
        subb $128,%bl
        jmp n1
n1:
        cmpb $64,%bl
        jg step2
        je step2
        jl n2
step2:
        addb $2,%cl
        subb $64,%bl
        jmp n2
n2:
        cmpb $32,%bl
        jg step3
        je step3
        jl n3
step3:
        addb $4,%cl
        subb $32,%bl
        jmp n3
n3:
        cmpb $16,%bl
        jg step4
        je step4
        jl n4
step4:
        addb $8,%cl
        subb $16,%bl
        jmp n4
n4:
        cmpb $8,%bl
        jg step5
        je step5
        jl n5
step5:
        addb $16,%cl
        subb $8,%bl
        jmp n5
n5:
        cmpb $4,%bl
        jg step6
        je step6
        jl n6
step6:
        addb $32,%cl
        subb $4,%bl
        jmp n6
n6:
        cmpb $2,%bl
        jg step7
        je step7
 jl n7
step7:
        addb $64,%cl
        subb $2,%bl
        jmp n7
n7:
        cmpb $1,%bl
        jg step8
        je step8
        jl n8
step8:
        addb $128,%cl
        jmp n8
n8:
        pushl %ecx
        pushl $fmtp
        call printf
        movl $0,%ecx
        movb $0,%cl
        cmpb eof,%dl
        jne ll1
        je out
out:
         movl %ebp,%esp
        popl %ebp
        ret
