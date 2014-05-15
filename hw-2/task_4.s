data
fmt_scan:
        .string "%lf %lf"
fmt_print:
        .string "%lf\n"
        .bss
x:      .space 8
y:      .space 8

        .text
        .global main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $y
        pushl $x
        pushl $fmt_scan
        call scanf
        finit
        fldl y
        fldl x
        fyl2x
        frndint
        fld1
        fscale
        fldl y
        fldl x
        fyl2x
        frndint
        fldl y
        fldl x
        fyl2x
        fsubp
        f2xm1
        fld1
        faddp
        fmulp
        sub $8, %esp
        fstpl (%esp)
        pushl $fmt_print
        call printf
        addl $12, %esp
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
                        
