	.section .bss
	.lcomm buffer 1000

	.section .text
	.globl _start
_start:
	movl $buffer, %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE1
.LB1:
	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB1
.LE1:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE2
.LB2:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB2
.LE2:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE3
.LB3:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB3
.LE3:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE4
.LB4:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB4
.LE4:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE5
.LB5:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB5
.LE5:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE6
.LB6:
	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB6
.LE6:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE7
.LB7:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB7
.LE7:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE8
.LB8:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB8
.LE8:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE9
.LB9:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB9
.LE9:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE10
.LB10:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB10
.LE10:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE11
.LB11:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB11
.LE11:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE12
.LB12:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB12
.LE12:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE13
.LB13:
	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB13
.LE13:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE14
.LB14:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB14
.LE14:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE15
.LB15:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB15
.LE15:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE16
.LB16:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB16
.LE16:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE17
.LB17:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB17
.LE17:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE18
.LB18:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB18
.LE18:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE19
.LB19:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB19
.LE19:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE20
.LB20:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB20
.LE20:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE21
.LB21:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB21
.LE21:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE22
.LB22:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB22
.LE22:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE23
.LB23:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB23
.LE23:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE24
.LB24:
	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB24
.LE24:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE25
.LB25:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB25
.LE25:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE26
.LB26:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB26
.LE26:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE27
.LB27:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB27
.LE27:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE28
.LB28:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB28
.LE28:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE29
.LB29:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB29
.LE29:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE30
.LB30:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB30
.LE30:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE31
.LB31:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB31
.LE31:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE32
.LB32:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB32
.LE32:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE33
.LB33:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB33
.LE33:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE34
.LB34:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB34
.LE34:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE35
.LB35:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB35
.LE35:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE36
.LB36:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB36
.LE36:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE37
.LB37:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB37
.LE37:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE38
.LB38:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB38
.LE38:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE39
.LB39:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB39
.LE39:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE40
.LB40:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB40
.LE40:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE41
.LB41:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB41
.LE41:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE42
.LB42:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB42
.LE42:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE43
.LB43:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB43
.LE43:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE44
.LB44:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB44
.LE44:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE45
.LB45:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB45
.LE45:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE46
.LB46:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB46
.LE46:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE47
.LB47:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB47
.LE47:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE48
.LB48:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB48
.LE48:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE49
.LB49:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB49
.LE49:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE50
.LB50:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB50
.LE50:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE51
.LB51:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB51
.LE51:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE52
.LB52:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB52
.LE52:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE53
.LB53:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB53
.LE53:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE54
.LB54:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB54
.LE54:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE55
.LB55:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB55
.LE55:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE56
.LB56:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB56
.LE56:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE57
.LB57:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB57
.LE57:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE58
.LB58:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB58
.LE58:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE59
.LB59:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB59
.LE59:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE60
.LB60:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB60
.LE60:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE61
.LB61:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB61
.LE61:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE62
.LB62:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB62
.LE62:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE63
.LB63:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB63
.LE63:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE64
.LB64:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB64
.LE64:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE65
.LB65:
	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB65
.LE65:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE66
.LB66:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB66
.LE66:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE67
.LB67:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB67
.LE67:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE68
.LB68:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB68
.LE68:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE69
.LB69:
	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB69
.LE69:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE70
.LB70:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB70
.LE70:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE71
.LB71:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB71
.LE71:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE72
.LB72:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB72
.LE72:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE73
.LB73:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB73
.LE73:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE74
.LB74:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB74
.LE74:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE75
.LB75:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB75
.LE75:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE76
.LB76:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB76
.LE76:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE77
.LB77:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB77
.LE77:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE78
.LB78:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB78
.LE78:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE79
.LB79:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB79
.LE79:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE80
.LB80:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB80
.LE80:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE81
.LB81:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB81
.LE81:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE82
.LB82:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB82
.LE82:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE83
.LB83:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB83
.LE83:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE84
.LB84:
	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB84
.LE84:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE85
.LB85:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB85
.LE85:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE86
.LB86:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB86
.LE86:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE87
.LB87:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB87
.LE87:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE88
.LB88:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB88
.LE88:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE89
.LB89:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB89
.LE89:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE90
.LB90:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB90
.LE90:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE91
.LB91:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB91
.LE91:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE92
.LB92:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB92
.LE92:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE93
.LB93:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB93
.LE93:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE94
.LB94:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB94
.LE94:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE95
.LB95:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB95
.LE95:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE96
.LB96:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB96
.LE96:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE97
.LB97:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB97
.LE97:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE98
.LB98:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB98
.LE98:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE99
.LB99:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB99
.LE99:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE100
.LB100:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB100
.LE100:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE101
.LB101:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB101
.LE101:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE102
.LB102:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB102
.LE102:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE103
.LB103:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB103
.LE103:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE104
.LB104:
	incb (%edi)

	incb (%edi)

	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB104
.LE104:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE105
.LB105:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB105
.LE105:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE106
.LB106:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB106
.LE106:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE107
.LB107:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB107
.LE107:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE108
.LB108:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB108
.LE108:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE109
.LB109:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB109
.LE109:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE110
.LB110:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB110
.LE110:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE111
.LB111:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB111
.LE111:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE112
.LB112:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB112
.LE112:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE113
.LB113:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB113
.LE113:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE114
.LB114:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB114
.LE114:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE115
.LB115:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB115
.LE115:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE116
.LB116:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB116
.LE116:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE117
.LB117:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB117
.LE117:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE118
.LB118:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB118
.LE118:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE119
.LB119:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB119
.LE119:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE120
.LB120:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB120
.LE120:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE121
.LB121:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB121
.LE121:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE122
.LB122:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB122
.LE122:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE123
.LB123:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB123
.LE123:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE124
.LB124:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB124
.LE124:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE125
.LB125:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB125
.LE125:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE126
.LB126:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB126
.LE126:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE127
.LB127:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB127
.LE127:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE128
.LB128:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB128
.LE128:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE129
.LB129:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB129
.LE129:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE130
.LB130:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB130
.LE130:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE131
.LB131:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB131
.LE131:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE132
.LB132:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB132
.LE132:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE133
.LB133:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB133
.LE133:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE134
.LB134:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB134
.LE134:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE135
.LB135:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB135
.LE135:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE136
.LB136:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB136
.LE136:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE137
.LB137:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB137
.LE137:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE138
.LB138:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB138
.LE138:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE139
.LB139:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB139
.LE139:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE140
.LB140:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB140
.LE140:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE141
.LB141:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB141
.LE141:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE142
.LB142:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB142
.LE142:
	inc %edi

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE143
.LB143:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB143
.LE143:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE144
.LB144:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB144
.LE144:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE145
.LB145:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB145
.LE145:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE146
.LB146:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB146
.LE146:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE147
.LB147:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB147
.LE147:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE148
.LB148:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB148
.LE148:
	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE149
.LB149:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB149
.LE149:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE150
.LB150:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB150
.LE150:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE151
.LB151:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB151
.LE151:
	inc %edi

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE152
.LB152:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB152
.LE152:
	inc %edi

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE153
.LB153:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB153
.LE153:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE154
.LB154:
	decb (%edi)

	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB154
.LE154:
	inc %edi

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	cmpb $0, (%edi)
	jz .LE155
.LB155:
	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB155
.LE155:
	inc %edi

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	cmpb $0, (%edi)
	jz .LE156
.LB156:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB156
.LE156:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	cmpb $0, (%edi)
	jz .LE157
.LB157:
	decb (%edi)

	decb (%edi)

	inc %edi

	incb (%edi)

	incb (%edi)

	incb (%edi)

	dec %edi

	cmpb $0, (%edi)
	jnz .LB157
.LE157:
	inc %edi

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	decb (%edi)

	decb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80

	incb (%edi)

	incb (%edi)

	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $1, %edx
	int $0x80


	movl $1, %eax
	movl $0, %ebx
	int $0x80

