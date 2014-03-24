.data
.LC0:
        .string "%d"

.text
.globl main
        .type   main, @function
main:
        pushl   %ebp
        movl    %esp, %ebp
        andl    $-16, %esp
        subl    $48, %esp
        movl    $1p)
        jmp     .L2
.L3:
        movl    32(%esp), %eax
        movl    %eax, %edx
        sarl    $31, %edx
        shrl    $31, %edx
        addl    %edx, %eax
        andl    $1, %eax
        subl    %edx, %eax
        movl    %eax, 36(%esp)
        movl    36(%esp), %eax
        imull   40(%esp), %eax
        addl    %eax, 44(%esp)


        movl    40(%esp), %edx
        movl    %edx, %eax
        sall    $2, %eax
        addl    %edx, %eax
        addl    %eax, %eax
        movl    %eax, 40(%esp)
        movl    32(%esp), %eax
        movl    %eax, %edx
        shrl    $31, %edx
        leal    (%edx,%eax), %eax
        sarl    %eax
        movl    %eax, 32(%esp)
.L2:
        cmpl    $0, 32(%esp)
        jg      .L3
        movl    $.LC0, %eax
        movl    44(%esp), %edx
        movl    %edx, 4(%esp)
        movl    %eax, (%esp)
        call    printf
        movl    $0, %eax
        leave
        ret
esp)
        movl    $0, 44(%esp)
        movl    $.LC0, %eax
        leal    28(%esp), %edx
        movl    %edx, 4(%esp)
        movl    %eax, (%esp)
        call    __isoc99_scanf
        movl    28(%esp), %eax
        movl    %eax, 32(%esp)
        jmp     .L2
.L3:
        movl    32(%esp), %eax
        movl    %eax, %edx
        sarl    $31, %edx
        shrl    $31, %edx
        addl    %edx, %eax
        andl    $1, %eax
        subl    %edx, %eax
        movl    %eax, 36(%esp)
        movl    36(%esp), %eax
        imull   40(%esp), %eax
        addl    %eax, 44(%esp)
        movl    40(%esp), %edx
        movl    %edx, %eax
        sall    $2, %eax
        addl    %edx, %eax
        addl    %eax, %eax
        movl    %eax, 40(%esp)
        movl    32(%esp), %eax
        movl    %eax, %edx
        shrl    $31, %edx
        leal    (%edx,%eax), %eax
        sarl    %eax
        movl    %eax, 32(%esp)
.L2:
        cmpl    $0, 32(%esp)
        jg      .L3
        movl    $.LC0, %eax
        movl    44(%esp), %edx
        movl    %edx, 4(%esp)
        movl    %eax, (%esp)
        call    printf
        movl    $0, %eax
        leave
        ret
