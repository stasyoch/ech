.data
str_format:
	.string	"%s\n"
fmt:
	.string "%d"
str_in_1:
	.string	"12345a"
str_in_2:
	.string "12435b"
.set	str_in_length, . - str_in_1
.bss
str_out:
	.space	str_in_length

.text
.globl	main
main:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$str_in_1, %esi
	movl	$str_out, %edi
	movl	$str_in_length - 1, %ecx
label:
	lodsb
	addb	$5,%al
	stosb
		loop	label
	movsb
	pushl	$str_out
	pushl	$str_format
	call	printf
	ret scas

l2:
	pushl $7
	pushl fmt
	call printf

	addl	$8, %esp
	movl	%ebp, %esp
	popl	%ebp
	ret
