	.arch armv4t
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"final_code_without_opts_3_4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\000"
	.align	2
.LC1:
	.ascii	" \000"
	.align	2
.LC2:
	.ascii	",\011\000"
	.align	2
.LC3:
	.ascii	"\012\000"
	.align	2
.LC4:
	.ascii	"%s%d%s\000"
	.text
	.align	2
	.global	printMatrix
	.type	printMatrix, %function
printMatrix:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L9:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L3
.L8:
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	ldr	r3, [r2, r3, asl #2]
	cmp	r3, #0
	bge	.L4
	ldr	r3, .L11
	str	r3, [fp, #-28]
	b	.L5
.L4:
	ldr	r3, .L11+4
	str	r3, [fp, #-28]
.L5:
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	ldr	r2, [r2, r3, asl #2]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	bgt	.L6
	ldr	r3, .L11+8
	str	r3, [fp, #-20]
	b	.L7
.L6:
	ldr	r3, .L11+12
	str	r3, [fp, #-20]
.L7:
	ldr	r0, .L11+16
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L8
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L9
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	printMatrix, .-printMatrix
	.align	2
	.global	matrixMultiplication
	.type	matrixMultiplication, %function
matrixMultiplication:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #32
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-16]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	matrixMultiplication, .-matrixMultiplication
	.global	__aeabi_idiv
	.align	2
	.global	diagonalize
	.type	diagonalize, %function
diagonalize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #280
	str	r0, [fp, #-280]
	mov	r3, #0
	str	r3, [fp, #-80]
	b	.L16
.L101:
	mov	r3, #0
	str	r3, [fp, #-76]
	b	.L17
.L100:
	ldr	r3, [fp, #-76]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	b	.L18
.L99:
	ldr	r3, [fp, #-76]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-280]
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	ldr	r3, [r2, r3, asl #2]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-76]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-280]
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	ldr	r3, [r2, r3, asl #2]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-280]
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	ldr	r3, [r2, r3, asl #2]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-72]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-280]
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	ldr	r3, [r2, r3, asl #2]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L19
	ldr	r3, [fp, #-68]
	ldr	r2, [fp, #-56]
	rsb	r3, r2, r3
	str	r3, [fp, #-28]
	b	.L20
.L19:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-68]
	rsb	r3, r2, r3
	str	r3, [fp, #-28]
.L20:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-64]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L21
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-24]
	b	.L22
.L21:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-64]
	add	r3, r3, r2
	str	r3, [fp, #-24]
.L22:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	ble	.L23
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmn	r3, #2048
	bge	.L24
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #636
	sub	r3, r3, #3
	str	r3, [fp, #-44]
	b	.L25
.L24:
	ldr	r2, [fp, #-32]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L26
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-44]
	b	.L25
.L26:
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #636
	add	r3, r3, #3
	str	r3, [fp, #-44]
.L25:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bge	.L27
	ldr	r3, [fp, #-44]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-44]
.L27:
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-44]
	b	.L28
.L23:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmn	r3, #2048
	bge	.L29
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #636
	sub	r3, r3, #3
	str	r3, [fp, #-44]
	b	.L28
.L29:
	ldr	r2, [fp, #-32]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L30
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-44]
	b	.L28
.L30:
	ldr	r1, [fp, #-32]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #636
	add	r3, r3, #3
	str	r3, [fp, #-44]
.L28:
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L31
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	b	.L32
.L31:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-68]
	add	r3, r3, r2
	str	r3, [fp, #-16]
.L32:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-64]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L33
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	b	.L34
.L33:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-64]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
.L34:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L35
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmn	r3, #2048
	bge	.L36
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #636
	sub	r3, r3, #3
	str	r3, [fp, #-44]
	b	.L37
.L36:
	ldr	r2, [fp, #-20]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L38
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-44]
	b	.L37
.L38:
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #636
	add	r3, r3, #3
	str	r3, [fp, #-44]
.L37:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L39
	ldr	r3, [fp, #-44]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-44]
.L39:
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-44]
	b	.L40
.L35:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmn	r3, #2048
	bge	.L41
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #636
	sub	r3, r3, #3
	str	r3, [fp, #-44]
	b	.L40
.L41:
	ldr	r2, [fp, #-20]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L42
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-44]
	b	.L40
.L42:
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #636
	add	r3, r3, #3
	str	r3, [fp, #-44]
.L40:
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-48]
	mov	r3, #4096
	str	r3, [fp, #-144]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #0
	str	r3, [fp, #-128]
	mov	r3, #4096
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #4096
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #4096
	str	r3, [fp, #-84]
	mov	r3, #4096
	str	r3, [fp, #-208]
	mov	r3, #0
	str	r3, [fp, #-204]
	mov	r3, #0
	str	r3, [fp, #-200]
	mov	r3, #0
	str	r3, [fp, #-196]
	mov	r3, #0
	str	r3, [fp, #-192]
	mov	r3, #4096
	str	r3, [fp, #-188]
	mov	r3, #0
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	mov	r3, #0
	str	r3, [fp, #-176]
	mov	r3, #0
	str	r3, [fp, #-172]
	mov	r3, #4096
	str	r3, [fp, #-168]
	mov	r3, #0
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-160]
	mov	r3, #0
	str	r3, [fp, #-156]
	mov	r3, #0
	str	r3, [fp, #-152]
	mov	r3, #4096
	str	r3, [fp, #-148]
	ldr	r2, [fp, #-52]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L43
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #5
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
	b	.L44
.L43:
	ldr	r2, [fp, #-52]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L45
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L44
.L45:
	ldr	r3, [fp, #-52]
	cmn	r3, #644
	bge	.L46
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L44
.L46:
	ldr	r2, [fp, #-52]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L47
	mov	r3, #4096
	str	r3, [fp, #-8]
	b	.L44
.L47:
	ldr	r3, [fp, #-52]
	cmp	r3, #3216
	bgt	.L48
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L44
.L48:
	ldr	r2, [fp, #-52]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L49
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #4
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	rsb	r2, r1, r2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L44
.L49:
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
.L44:
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-76]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #203
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L50
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #11328
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L51
.L50:
	ldr	r2, [fp, #-52]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L52
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L51
.L52:
	ldr	r2, [fp, #-52]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L53
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #2256
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L51
.L53:
	ldr	r2, [fp, #-52]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L54
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L51
.L54:
	ldr	r2, [fp, #-52]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L55
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #2256
	add	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L51
.L55:
	ldr	r2, [fp, #-52]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L56
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L51
.L56:
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #11328
	add	r3, r3, #7
	str	r3, [fp, #-8]
.L51:
	ldr	r2, [fp, #-76]
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-8]
	rsb	r0, r3, #0
	mov	r3, r2, asl #2
	add	r3, r3, r1
	mvn	r2, #203
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	str	r0, [r3, #0]
	ldr	r2, [fp, #-52]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L57
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #11328
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L58
.L57:
	ldr	r2, [fp, #-52]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L59
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L58
.L59:
	ldr	r2, [fp, #-52]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L60
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #2256
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L58
.L60:
	ldr	r2, [fp, #-52]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L61
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L58
.L61:
	ldr	r2, [fp, #-52]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L62
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #2256
	add	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L58
.L62:
	ldr	r2, [fp, #-52]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L63
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L58
.L63:
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #11328
	add	r3, r3, #7
	str	r3, [fp, #-8]
.L58:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-76]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #203
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L64
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #5
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
	b	.L65
.L64:
	ldr	r2, [fp, #-52]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L66
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L65
.L66:
	ldr	r3, [fp, #-52]
	cmn	r3, #644
	bge	.L67
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L65
.L67:
	ldr	r2, [fp, #-52]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L68
	mov	r3, #4096
	str	r3, [fp, #-8]
	b	.L65
.L68:
	ldr	r3, [fp, #-52]
	cmp	r3, #3216
	bgt	.L69
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L65
.L69:
	ldr	r2, [fp, #-52]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L70
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #4
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	rsb	r2, r1, r2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L65
.L70:
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
.L65:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-72]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #203
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-48]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L71
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #5
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
	b	.L72
.L71:
	ldr	r2, [fp, #-48]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L73
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L72
.L73:
	ldr	r3, [fp, #-48]
	cmn	r3, #644
	bge	.L74
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L72
.L74:
	ldr	r2, [fp, #-48]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L75
	mov	r3, #4096
	str	r3, [fp, #-8]
	b	.L72
.L75:
	ldr	r3, [fp, #-48]
	cmp	r3, #3216
	bgt	.L76
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L72
.L76:
	ldr	r2, [fp, #-48]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L77
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #4
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	rsb	r2, r1, r2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L72
.L77:
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
.L72:
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-76]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #139
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-48]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L78
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #11328
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L79
.L78:
	ldr	r2, [fp, #-48]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L80
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L79
.L80:
	ldr	r2, [fp, #-48]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L81
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #2256
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L79
.L81:
	ldr	r2, [fp, #-48]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L82
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L79
.L82:
	ldr	r2, [fp, #-48]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L83
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #2256
	add	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L79
.L83:
	ldr	r2, [fp, #-48]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L84
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L79
.L84:
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #11328
	add	r3, r3, #7
	str	r3, [fp, #-8]
.L79:
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-72]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #139
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-48]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L85
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #11328
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L86
.L85:
	ldr	r2, [fp, #-48]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L87
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L86
.L87:
	ldr	r2, [fp, #-48]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L88
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #2256
	sub	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L86
.L88:
	ldr	r2, [fp, #-48]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L89
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L86
.L89:
	ldr	r2, [fp, #-48]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L90
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #2256
	add	r3, r3, #7
	str	r3, [fp, #-8]
	b	.L86
.L90:
	ldr	r2, [fp, #-48]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L91
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	str	r3, [fp, #-8]
	b	.L86
.L91:
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #6
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #11328
	add	r3, r3, #7
	str	r3, [fp, #-8]
.L86:
	ldr	r2, [fp, #-72]
	ldr	r1, [fp, #-76]
	ldr	r3, [fp, #-8]
	rsb	r0, r3, #0
	mov	r3, r2, asl #2
	add	r3, r3, r1
	mvn	r2, #139
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	str	r0, [r3, #0]
	ldr	r2, [fp, #-48]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L92
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #2
	mov	r3, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #5
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, r1
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
	b	.L93
.L92:
	ldr	r2, [fp, #-48]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L94
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	add	r3, r3, r1
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L93
.L94:
	ldr	r3, [fp, #-48]
	cmn	r3, #644
	bge	.L95
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L93
.L95:
	ldr	r2, [fp, #-48]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L96
	mov	r3, #4096
	str	r3, [fp, #-8]
	b	.L93
.L96:
	ldr	r3, [fp, #-48]
	cmp	r3, #3216
	bgt	.L97
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r2, r3, asl #3
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	rsb	r3, r1, r3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #4416
	add	r3, r3, #43
	str	r3, [fp, #-8]
	b	.L93
.L97:
	ldr	r2, [fp, #-48]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L98
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #4
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r2, r3, asl #3
	rsb	r2, r1, r2
	mov	r3, r2, asl #2
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	add	r3, r3, #5952
	add	r3, r3, #10
	str	r3, [fp, #-8]
	b	.L93
.L98:
	ldr	r1, [fp, #-48]
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r1, r3
	mov	r3, r3, asl #3
	rsb	r3, r1, r3
	mov	r3, r3, asl #2
	rsb	r3, r1, r3
	rsb	r3, r3, #0
	mov	r3, r3, asr #12
	sub	r3, r3, #316
	sub	r3, r3, #3
	str	r3, [fp, #-8]
.L93:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-72]
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mvn	r2, #139
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
	sub	r3, fp, #208
	sub	r2, fp, #272
	mov	r0, r3
	ldr	r1, [fp, #-280]
	bl	matrixMultiplication
	sub	r3, fp, #272
	sub	r2, fp, #144
	mov	r0, r3
	mov	r1, r2
	ldr	r2, [fp, #-280]
	bl	matrixMultiplication
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L18:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	ble	.L99
	ldr	r3, [fp, #-76]
	add	r3, r3, #1
	str	r3, [fp, #-76]
.L17:
	ldr	r3, [fp, #-76]
	cmp	r3, #2
	ble	.L100
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	str	r3, [fp, #-80]
.L16:
	ldr	r3, [fp, #-80]
	cmp	r3, #5
	ble	.L101
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	diagonalize, .-diagonalize
	.section	.rodata
	.align	2
	.type	C.30.2656, %object
	.size	C.30.2656, 64
C.30.2656:
	.word	31
	.word	77
	.word	-11
	.word	26
	.word	-42
	.word	14
	.word	79
	.word	-53
	.word	-68
	.word	-10
	.word	45
	.word	90
	.word	34
	.word	16
	.word	38
	.word	-19
	.align	2
.LC5:
	.ascii	"elapsed time: %lf\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #144
	ldr	r3, .L125+8
	sub	lr, fp, #84
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L104
.L105:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #2
	mov	r0, r3
	mov	ip, r0
	ldr	r3, [fp, #-12]
	sub	r2, r3, #1
	mov	r3, r2, asr #31
	mov	r1, r3, lsr #30
	add	r3, r2, r1
	and	r3, r3, #3
	rsb	r3, r1, r3
	mov	lr, r3
	mov	r2, r0
	mov	r1, r3
	mov	r3, r2, asl #2
	add	r3, r3, r1
	mvn	r2, #79
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	mov	r1, r3, asl #12
	mov	r3, ip, asl #2
	add	r3, r3, lr
	mvn	r2, #79
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L104:
	ldr	r3, [fp, #-12]
	cmp	r3, #16
	ble	.L105
	bl	clock
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L106
.L123:
	ldr	r3, [fp, #-84]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-88]
	sub	r3, fp, #148
	mov	r0, r3
	bl	diagonalize
	ldr	r3, [fp, #-148]
	mov	r3, r3, asr #12
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-148]
	cmn	r3, #1
	bne	.L107
	mov	r3, #0
	str	r3, [fp, #-148]
.L107:
	ldr	r3, [fp, #-144]
	mov	r3, r3, asr #12
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	cmn	r3, #1
	bne	.L108
	mov	r3, #0
	str	r3, [fp, #-144]
.L108:
	ldr	r3, [fp, #-140]
	mov	r3, r3, asr #12
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmn	r3, #1
	bne	.L109
	mov	r3, #0
	str	r3, [fp, #-140]
.L109:
	ldr	r3, [fp, #-136]
	mov	r3, r3, asr #12
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	cmn	r3, #1
	bne	.L110
	mov	r3, #0
	str	r3, [fp, #-136]
.L110:
	ldr	r3, [fp, #-132]
	mov	r3, r3, asr #12
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-132]
	cmn	r3, #1
	bne	.L111
	mov	r3, #0
	str	r3, [fp, #-132]
.L111:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #12
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	cmn	r3, #1
	bne	.L112
	mov	r3, #0
	str	r3, [fp, #-128]
.L112:
	ldr	r3, [fp, #-124]
	mov	r3, r3, asr #12
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-124]
	cmn	r3, #1
	bne	.L113
	mov	r3, #0
	str	r3, [fp, #-124]
.L113:
	ldr	r3, [fp, #-120]
	mov	r3, r3, asr #12
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-120]
	cmn	r3, #1
	bne	.L114
	mov	r3, #0
	str	r3, [fp, #-120]
.L114:
	ldr	r3, [fp, #-116]
	mov	r3, r3, asr #12
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	cmn	r3, #1
	bne	.L115
	mov	r3, #0
	str	r3, [fp, #-116]
.L115:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #12
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	cmn	r3, #1
	bne	.L116
	mov	r3, #0
	str	r3, [fp, #-112]
.L116:
	ldr	r3, [fp, #-108]
	mov	r3, r3, asr #12
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-108]
	cmn	r3, #1
	bne	.L117
	mov	r3, #0
	str	r3, [fp, #-108]
.L117:
	ldr	r3, [fp, #-104]
	mov	r3, r3, asr #12
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	cmn	r3, #1
	bne	.L118
	mov	r3, #0
	str	r3, [fp, #-104]
.L118:
	ldr	r3, [fp, #-100]
	mov	r3, r3, asr #12
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	cmn	r3, #1
	bne	.L119
	mov	r3, #0
	str	r3, [fp, #-100]
.L119:
	ldr	r3, [fp, #-96]
	mov	r3, r3, asr #12
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmn	r3, #1
	bne	.L120
	mov	r3, #0
	str	r3, [fp, #-96]
.L120:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #12
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	cmn	r3, #1
	bne	.L121
	mov	r3, #0
	str	r3, [fp, #-92]
.L121:
	ldr	r3, [fp, #-88]
	mov	r3, r3, asr #12
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmn	r3, #1
	bne	.L122
	mov	r3, #0
	str	r3, [fp, #-88]
.L122:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L106:
	ldr	r2, [fp, #-8]
	mov	r3, #99328
	add	r3, r3, #668
	add	r3, r3, #3
	cmp	r2, r3
	ble	.L123
	bl	clock
	mov	r3, r0
	str	r3, [fp, #-16]
	sub	r3, fp, #148
	mov	r0, r3
	bl	printMatrix
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	fmsr	s15, r3	@ int
	fsitod	d6, s15
	fldd	d7, .L125
	fdivd	d7, d6, d7
	ldr	r0, .L125+12
	fmrrd	r2, r3, d7
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L126:
	.align	3
.L125:
	.word	0
	.word	1093567616
	.word	C.30.2656
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
