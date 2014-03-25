.data
int:
        .space  4
fmt_hex:
        .string "%x"
fmt_dec:
        .string "%d"
fmt_print:
        .string "\n"

        .text
        .globl  main
        .globl  func

main:
        pushl   %ebp
        movl    %esp,   %ebp
        pushl   $int
        pushl   $fmt_hex
        call    scanf
        addl    $8,     %esp
        pushl   int
        pushl   $32
        call    func
        addl    $8,     %esp
        pushl   $fmt_print
        call printf
        addl    $4,     %esp
        movl    %ebp,   %esp
        popl    %ebp
        movl    $0,     %eax
        ret

func:
        pushl   %ebx
        pushl   %ecx
        pushl   %edx
        pushl   %ebp
        movl    %esp,   %ebp
        movl 20(%ebp),  %ecx
        movl 24(%ebp),  %ebx
        movl 20(%ebp),  %ecx

loop_1:
        movl    $1,     %edx
        rorl    $1,     %ebx
        jc      one
        movl    $0,     %edx
        one:
        pushl   %edx
        loop loop_1
        movl 20(%ebp),  %ecx

loop_2:
        movl    %ecx,   %ebx
        pushl $fmt_dec
        call printf
        addl    $8,     %esp
        movl    %ebx,   %ecx
        loop loop_2

        movl    %ebp,   %esp
        popl    %ebp
        popl    %edx
        popl    %ecx
        popl    %ebx
        ret


