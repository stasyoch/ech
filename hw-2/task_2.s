.data
code:
        .string "qwertyui"
str_yes:
        .string "You win!!"
str_no:
        .string "Oops...."
fmt_scan:
        .string "%s"
fmt_print:
        .string "%s\n"
str_1:
        .space 8
str_2:
        .space 8
str_3:
        .space 8

.text
.globl main
main:
        pushl %ebp
        movl %esp, %ebp
        pushl $str_1
        pushl $fmt_scan
        call scanf
        addl $8, %esp
        movl $str_1, %esi
        movl $str_2, %edi
        movl $8, %ecx
        rep movsb
        movl $8, %ecx
        movl $str_2, %esi
        movl $code, %edi
        rep cmpsb
        jne step_1
        movl $8, %ecxj
	movl $str_yes, %esi
        movl $str_3, %edi
        rep movsb
        jmp end
step_1:
        movl $8, %ecx
        movl $str_2, %edi
        movl $42, %eax
        repne scasb
        test %ecx, %ecx
        je incorrect
        movl $8, %ecx
        movl $str_2, %esi
        movl $str_3, %edi
step_2:
        lodsb
        incb %al
        stosb
        loop step_2
        jmp end
incorrect:
        movl $8, %ecx
        movl $str_no, %esi
        movl $str_3, %edi
        rep movsb
end:
        pushl $str_3
        pushl $fmt_print
        call printf
        addl $8, %esp
        movl $0, %eax
        movl %ebp, %esp
        popl %ebp
        ret
