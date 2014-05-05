	.data
a:
.float	2.2
b:
.float	3.1
fmt:
.string "%f\n"

.globl main
.text
main:
pushl	%ebp
movl	%esp, %ebp
finit
flds	a
flds	b
faddp
flds b
pushl fmt
call	printf
addl	$4, %esp
movl	%ebp, %esp
popl	%ebp
ret	
