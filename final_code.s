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
	.file	"final_code.c"
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
	.global	__aeabi_idiv
	.align	2
	.global	diagonalize
	.type	diagonalize, %function
diagonalize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 1728
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1728
	str	r0, [fp, #-1728]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L14
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1428]
	b	.L15
.L14:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1428]
.L15:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L16
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1424]
	b	.L17
.L16:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1424]
.L17:
	ldr	r2, [fp, #-1424]
	ldr	r3, [fp, #-1428]
	cmp	r2, r3
	ble	.L18
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1432]
	ldr	r3, [fp, #-1432]
	cmn	r3, #2048
	bge	.L19
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
	b	.L20
.L19:
	ldr	r2, [fp, #-1432]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L21
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
	b	.L20
.L21:
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
.L20:
	ldr	r3, [fp, #-1432]
	cmp	r3, #0
	bge	.L22
	ldr	r3, [fp, #-1444]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1444]
.L22:
	ldr	r3, [fp, #-1444]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1444]
	b	.L23
.L18:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1432]
	ldr	r3, [fp, #-1432]
	cmn	r3, #2048
	bge	.L24
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
	b	.L23
.L24:
	ldr	r2, [fp, #-1432]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L25
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
	b	.L23
.L25:
	ldr	r1, [fp, #-1432]
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
	str	r3, [fp, #-1444]
.L23:
	ldr	r3, [fp, #-1444]
	str	r3, [fp, #-1440]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L26
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1416]
	b	.L27
.L26:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1416]
.L27:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L28
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1412]
	b	.L29
.L28:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1412]
.L29:
	ldr	r2, [fp, #-1412]
	ldr	r3, [fp, #-1416]
	cmp	r2, r3
	ble	.L30
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1420]
	ldr	r3, [fp, #-1420]
	cmn	r3, #2048
	bge	.L31
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
	b	.L32
.L31:
	ldr	r2, [fp, #-1420]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L33
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
	b	.L32
.L33:
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
.L32:
	ldr	r3, [fp, #-1420]
	cmp	r3, #0
	bge	.L34
	ldr	r3, [fp, #-1444]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1444]
.L34:
	ldr	r3, [fp, #-1444]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1444]
	b	.L35
.L30:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1420]
	ldr	r3, [fp, #-1420]
	cmn	r3, #2048
	bge	.L36
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
	b	.L35
.L36:
	ldr	r2, [fp, #-1420]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L37
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
	b	.L35
.L37:
	ldr	r1, [fp, #-1420]
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
	str	r3, [fp, #-1444]
.L35:
	ldr	r3, [fp, #-1444]
	str	r3, [fp, #-1436]
	ldr	r2, [fp, #-1440]
	ldr	r3, [fp, #-1436]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1440]
	ldr	r3, [fp, #-1436]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L38
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L39
.L38:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L40
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L39
.L40:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L41
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L39
.L41:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L42
	mov	r3, #4096
	str	r3, [fp, #-1408]
	b	.L39
.L42:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L43
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L39
.L43:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L44
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L39
.L44:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
.L39:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L45
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L45:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L47
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L47:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L48
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L48:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L49
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L49:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L50
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L50:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L51
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L46
.L51:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
.L46:
	ldr	r3, [fp, #-1408]
	rsb	r3, r3, #0
	str	r3, [fp, #-1592]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L52
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L52:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L54
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L54:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L55
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L55:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L56
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L56:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L57
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L57:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L58
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L53
.L58:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
.L53:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1580]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L59
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L60
.L59:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L61
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L60
.L61:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L62
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L60
.L62:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L63
	mov	r3, #4096
	str	r3, [fp, #-1408]
	b	.L60
.L63:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L64
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L60
.L64:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L65
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
	b	.L60
.L65:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1408]
.L60:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L66
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L67
.L66:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L68
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L67
.L68:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L69
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L67
.L69:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L70
	mov	r3, #4096
	str	r3, [fp, #-1408]
	b	.L67
.L70:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L71
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L67
.L71:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L72
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L67
.L72:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
.L67:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L73
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L73:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L75
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L75:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L76
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L76:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L77
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L77:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L78
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L78:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L79
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L74
.L79:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
.L74:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1528]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L80
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L80:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L82
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L82:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L83
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L83:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L84
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L84:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L85
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L85:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L86
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L81
.L86:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
.L81:
	ldr	r3, [fp, #-1408]
	rsb	r3, r3, #0
	str	r3, [fp, #-1516]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L87
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L88
.L87:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L89
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L88
.L89:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L90
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L88
.L90:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L91
	mov	r3, #4096
	str	r3, [fp, #-1408]
	b	.L88
.L91:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L92
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L88
.L92:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L93
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
	b	.L88
.L93:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1408]
.L88:
	ldr	r3, [fp, #-1408]
	str	r3, [fp, #-1512]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L94
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1388]
	b	.L95
.L94:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1388]
.L95:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L96
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1384]
	b	.L97
.L96:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1384]
.L97:
	ldr	r2, [fp, #-1384]
	ldr	r3, [fp, #-1388]
	cmp	r2, r3
	ble	.L98
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1392]
	ldr	r3, [fp, #-1392]
	cmn	r3, #2048
	bge	.L99
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
	b	.L100
.L99:
	ldr	r2, [fp, #-1392]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L101
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
	b	.L100
.L101:
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
.L100:
	ldr	r3, [fp, #-1392]
	cmp	r3, #0
	bge	.L102
	ldr	r3, [fp, #-1404]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1404]
.L102:
	ldr	r3, [fp, #-1404]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1404]
	b	.L103
.L98:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1392]
	ldr	r3, [fp, #-1392]
	cmn	r3, #2048
	bge	.L104
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
	b	.L103
.L104:
	ldr	r2, [fp, #-1392]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L105
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
	b	.L103
.L105:
	ldr	r1, [fp, #-1392]
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
	str	r3, [fp, #-1404]
.L103:
	ldr	r3, [fp, #-1404]
	str	r3, [fp, #-1400]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L106
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1376]
	b	.L107
.L106:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1376]
.L107:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L108
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1372]
	b	.L109
.L108:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1372]
.L109:
	ldr	r2, [fp, #-1372]
	ldr	r3, [fp, #-1376]
	cmp	r2, r3
	ble	.L110
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1380]
	ldr	r3, [fp, #-1380]
	cmn	r3, #2048
	bge	.L111
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
	b	.L112
.L111:
	ldr	r2, [fp, #-1380]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L113
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
	b	.L112
.L113:
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
.L112:
	ldr	r3, [fp, #-1380]
	cmp	r3, #0
	bge	.L114
	ldr	r3, [fp, #-1404]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1404]
.L114:
	ldr	r3, [fp, #-1404]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1404]
	b	.L115
.L110:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1380]
	ldr	r3, [fp, #-1380]
	cmn	r3, #2048
	bge	.L116
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
	b	.L115
.L116:
	ldr	r2, [fp, #-1380]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L117
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
	b	.L115
.L117:
	ldr	r1, [fp, #-1380]
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
	str	r3, [fp, #-1404]
.L115:
	ldr	r3, [fp, #-1404]
	str	r3, [fp, #-1396]
	ldr	r2, [fp, #-1400]
	ldr	r3, [fp, #-1396]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1400]
	ldr	r3, [fp, #-1396]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L118
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L119
.L118:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L120
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L119
.L120:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L121
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L119
.L121:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L122
	mov	r3, #4096
	str	r3, [fp, #-1368]
	b	.L119
.L122:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L123
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L119
.L123:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L124
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L119
.L124:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
.L119:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L125
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L125:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L127
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L127:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L128
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L128:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L129
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L129:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L130
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L130:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L131
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L126
.L131:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
.L126:
	ldr	r3, [fp, #-1368]
	rsb	r3, r3, #0
	str	r3, [fp, #-1588]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L132
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L132:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L134
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L134:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L135
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L135:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L136
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L136:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L137
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L137:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L138
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L133
.L138:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
.L133:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1564]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L139
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L140
.L139:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L141
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L140
.L141:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L142
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L140
.L142:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L143
	mov	r3, #4096
	str	r3, [fp, #-1368]
	b	.L140
.L143:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L144
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L140
.L144:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L145
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
	b	.L140
.L145:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1368]
.L140:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L146
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L147
.L146:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L148
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L147
.L148:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L149
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L147
.L149:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L150
	mov	r3, #4096
	str	r3, [fp, #-1368]
	b	.L147
.L150:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L151
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L147
.L151:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L152
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L147
.L152:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
.L147:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L153
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L153:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L155
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L155:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L156
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L156:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L157
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L157:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L158
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L158:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L159
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L154
.L159:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
.L154:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1524]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L160
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L160:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L162
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L162:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L163
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L163:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L164
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L164:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L165
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L165:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L166
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L161
.L166:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
.L161:
	ldr	r3, [fp, #-1368]
	rsb	r3, r3, #0
	str	r3, [fp, #-1500]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L167
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L168
.L167:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L169
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L168
.L169:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L170
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L168
.L170:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L171
	mov	r3, #4096
	str	r3, [fp, #-1368]
	b	.L168
.L171:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L172
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L168
.L172:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L173
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
	b	.L168
.L173:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1368]
.L168:
	ldr	r3, [fp, #-1368]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L174
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1348]
	b	.L175
.L174:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1348]
.L175:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L176
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1344]
	b	.L177
.L176:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1344]
.L177:
	ldr	r2, [fp, #-1344]
	ldr	r3, [fp, #-1348]
	cmp	r2, r3
	ble	.L178
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1352]
	ldr	r3, [fp, #-1352]
	cmn	r3, #2048
	bge	.L179
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
	b	.L180
.L179:
	ldr	r2, [fp, #-1352]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L181
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
	b	.L180
.L181:
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
.L180:
	ldr	r3, [fp, #-1352]
	cmp	r3, #0
	bge	.L182
	ldr	r3, [fp, #-1364]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1364]
.L182:
	ldr	r3, [fp, #-1364]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1364]
	b	.L183
.L178:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1352]
	ldr	r3, [fp, #-1352]
	cmn	r3, #2048
	bge	.L184
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
	b	.L183
.L184:
	ldr	r2, [fp, #-1352]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L185
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
	b	.L183
.L185:
	ldr	r1, [fp, #-1352]
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
	str	r3, [fp, #-1364]
.L183:
	ldr	r3, [fp, #-1364]
	str	r3, [fp, #-1360]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L186
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1336]
	b	.L187
.L186:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1336]
.L187:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L188
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1332]
	b	.L189
.L188:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1332]
.L189:
	ldr	r2, [fp, #-1332]
	ldr	r3, [fp, #-1336]
	cmp	r2, r3
	ble	.L190
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1340]
	ldr	r3, [fp, #-1340]
	cmn	r3, #2048
	bge	.L191
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
	b	.L192
.L191:
	ldr	r2, [fp, #-1340]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L193
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
	b	.L192
.L193:
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
.L192:
	ldr	r3, [fp, #-1340]
	cmp	r3, #0
	bge	.L194
	ldr	r3, [fp, #-1364]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1364]
.L194:
	ldr	r3, [fp, #-1364]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1364]
	b	.L195
.L190:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1340]
	ldr	r3, [fp, #-1340]
	cmn	r3, #2048
	bge	.L196
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
	b	.L195
.L196:
	ldr	r2, [fp, #-1340]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L197
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
	b	.L195
.L197:
	ldr	r1, [fp, #-1340]
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
	str	r3, [fp, #-1364]
.L195:
	ldr	r3, [fp, #-1364]
	str	r3, [fp, #-1356]
	ldr	r2, [fp, #-1360]
	ldr	r3, [fp, #-1356]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1360]
	ldr	r3, [fp, #-1356]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L198
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L199
.L198:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L200
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L199
.L200:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L201
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L199
.L201:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L202
	mov	r3, #4096
	str	r3, [fp, #-1328]
	b	.L199
.L202:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L203
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L199
.L203:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L204
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L199
.L204:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
.L199:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L205
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L205:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L207
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L207:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L208
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L208:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L209
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L209:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L210
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L210:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L211
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L206
.L211:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
.L206:
	ldr	r3, [fp, #-1328]
	rsb	r3, r3, #0
	str	r3, [fp, #-1584]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L212
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L212:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L214
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L214:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L215
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L215:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L216
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L216:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L217
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L217:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L218
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L213
.L218:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
.L213:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1548]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L219
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L220
.L219:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L221
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L220
.L221:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L222
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L220
.L222:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L223
	mov	r3, #4096
	str	r3, [fp, #-1328]
	b	.L220
.L223:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L224
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L220
.L224:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L225
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
	b	.L220
.L225:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1328]
.L220:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L226
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L227
.L226:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L228
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L227
.L228:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L229
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L227
.L229:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L230
	mov	r3, #4096
	str	r3, [fp, #-1328]
	b	.L227
.L230:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L231
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L227
.L231:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L232
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L227
.L232:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
.L227:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L233
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L233:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L235
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L235:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L236
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L236:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L237
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L237:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L238
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L238:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L239
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L234
.L239:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
.L234:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1520]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L240
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L240:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L242
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L242:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L243
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L243:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L244
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L244:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L245
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L245:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L246
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L241
.L246:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
.L241:
	ldr	r3, [fp, #-1328]
	rsb	r3, r3, #0
	str	r3, [fp, #-1484]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L247
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L248
.L247:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L249
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L248
.L249:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L250
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L248
.L250:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L251
	mov	r3, #4096
	str	r3, [fp, #-1328]
	b	.L248
.L251:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L252
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L248
.L252:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L253
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
	b	.L248
.L253:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1328]
.L248:
	ldr	r3, [fp, #-1328]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L254
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1308]
	b	.L255
.L254:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1308]
.L255:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L256
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1304]
	b	.L257
.L256:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1304]
.L257:
	ldr	r2, [fp, #-1304]
	ldr	r3, [fp, #-1308]
	cmp	r2, r3
	ble	.L258
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1312]
	ldr	r3, [fp, #-1312]
	cmn	r3, #2048
	bge	.L259
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
	b	.L260
.L259:
	ldr	r2, [fp, #-1312]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L261
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
	b	.L260
.L261:
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
.L260:
	ldr	r3, [fp, #-1312]
	cmp	r3, #0
	bge	.L262
	ldr	r3, [fp, #-1324]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1324]
.L262:
	ldr	r3, [fp, #-1324]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1324]
	b	.L263
.L258:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1312]
	ldr	r3, [fp, #-1312]
	cmn	r3, #2048
	bge	.L264
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
	b	.L263
.L264:
	ldr	r2, [fp, #-1312]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L265
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
	b	.L263
.L265:
	ldr	r1, [fp, #-1312]
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
	str	r3, [fp, #-1324]
.L263:
	ldr	r3, [fp, #-1324]
	str	r3, [fp, #-1320]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L266
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1296]
	b	.L267
.L266:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1296]
.L267:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L268
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1292]
	b	.L269
.L268:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1292]
.L269:
	ldr	r2, [fp, #-1292]
	ldr	r3, [fp, #-1296]
	cmp	r2, r3
	ble	.L270
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1300]
	ldr	r3, [fp, #-1300]
	cmn	r3, #2048
	bge	.L271
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
	b	.L272
.L271:
	ldr	r2, [fp, #-1300]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L273
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
	b	.L272
.L273:
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
.L272:
	ldr	r3, [fp, #-1300]
	cmp	r3, #0
	bge	.L274
	ldr	r3, [fp, #-1324]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1324]
.L274:
	ldr	r3, [fp, #-1324]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1324]
	b	.L275
.L270:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1300]
	ldr	r3, [fp, #-1300]
	cmn	r3, #2048
	bge	.L276
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
	b	.L275
.L276:
	ldr	r2, [fp, #-1300]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L277
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
	b	.L275
.L277:
	ldr	r1, [fp, #-1300]
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
	str	r3, [fp, #-1324]
.L275:
	ldr	r3, [fp, #-1324]
	str	r3, [fp, #-1316]
	ldr	r2, [fp, #-1320]
	ldr	r3, [fp, #-1316]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1320]
	ldr	r3, [fp, #-1316]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L278
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L279
.L278:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L280
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L279
.L280:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L281
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L279
.L281:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L282
	mov	r3, #4096
	str	r3, [fp, #-1288]
	b	.L279
.L282:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L283
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L279
.L283:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L284
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L279
.L284:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
.L279:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L285
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L285:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L287
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L287:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L288
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L288:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L289
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L289:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L290
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L290:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L291
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L286
.L291:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
.L286:
	ldr	r3, [fp, #-1288]
	rsb	r3, r3, #0
	str	r3, [fp, #-1572]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L292
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L292:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L294
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L294:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L295
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L295:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L296
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L296:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L297
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L297:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L298
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L293
.L298:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
.L293:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1560]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L299
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L300
.L299:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L301
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L300
.L301:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L302
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L300
.L302:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L303
	mov	r3, #4096
	str	r3, [fp, #-1288]
	b	.L300
.L303:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L304
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L300
.L304:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L305
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
	b	.L300
.L305:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1288]
.L300:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L306
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L307
.L306:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L308
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L307
.L308:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L309
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L307
.L309:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L310
	mov	r3, #4096
	str	r3, [fp, #-1288]
	b	.L307
.L310:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L311
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L307
.L311:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L312
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L307
.L312:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
.L307:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L313
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L313:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L315
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L315:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L316
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L316:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L317
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L317:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L318
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L318:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L319
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L314
.L319:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
.L314:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1508]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L320
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L320:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L322
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L322:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L323
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L323:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L324
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L324:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L325
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L325:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L326
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L321
.L326:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
.L321:
	ldr	r3, [fp, #-1288]
	rsb	r3, r3, #0
	str	r3, [fp, #-1496]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L327
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L328
.L327:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L329
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L328
.L329:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L330
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L328
.L330:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L331
	mov	r3, #4096
	str	r3, [fp, #-1288]
	b	.L328
.L331:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L332
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L328
.L332:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L333
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
	b	.L328
.L333:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1288]
.L328:
	ldr	r3, [fp, #-1288]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L334
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1268]
	b	.L335
.L334:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1268]
.L335:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L336
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1264]
	b	.L337
.L336:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1264]
.L337:
	ldr	r2, [fp, #-1264]
	ldr	r3, [fp, #-1268]
	cmp	r2, r3
	ble	.L338
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1272]
	ldr	r3, [fp, #-1272]
	cmn	r3, #2048
	bge	.L339
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
	b	.L340
.L339:
	ldr	r2, [fp, #-1272]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L341
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
	b	.L340
.L341:
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
.L340:
	ldr	r3, [fp, #-1272]
	cmp	r3, #0
	bge	.L342
	ldr	r3, [fp, #-1284]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1284]
.L342:
	ldr	r3, [fp, #-1284]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1284]
	b	.L343
.L338:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1272]
	ldr	r3, [fp, #-1272]
	cmn	r3, #2048
	bge	.L344
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
	b	.L343
.L344:
	ldr	r2, [fp, #-1272]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L345
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
	b	.L343
.L345:
	ldr	r1, [fp, #-1272]
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
	str	r3, [fp, #-1284]
.L343:
	ldr	r3, [fp, #-1284]
	str	r3, [fp, #-1280]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L346
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1256]
	b	.L347
.L346:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1256]
.L347:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L348
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1252]
	b	.L349
.L348:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1252]
.L349:
	ldr	r2, [fp, #-1252]
	ldr	r3, [fp, #-1256]
	cmp	r2, r3
	ble	.L350
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1260]
	ldr	r3, [fp, #-1260]
	cmn	r3, #2048
	bge	.L351
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
	b	.L352
.L351:
	ldr	r2, [fp, #-1260]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L353
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
	b	.L352
.L353:
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
.L352:
	ldr	r3, [fp, #-1260]
	cmp	r3, #0
	bge	.L354
	ldr	r3, [fp, #-1284]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1284]
.L354:
	ldr	r3, [fp, #-1284]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1284]
	b	.L355
.L350:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1260]
	ldr	r3, [fp, #-1260]
	cmn	r3, #2048
	bge	.L356
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
	b	.L355
.L356:
	ldr	r2, [fp, #-1260]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L357
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
	b	.L355
.L357:
	ldr	r1, [fp, #-1260]
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
	str	r3, [fp, #-1284]
.L355:
	ldr	r3, [fp, #-1284]
	str	r3, [fp, #-1276]
	ldr	r2, [fp, #-1280]
	ldr	r3, [fp, #-1276]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1280]
	ldr	r3, [fp, #-1276]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L358
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L359
.L358:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L360
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L359
.L360:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L361
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L359
.L361:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L362
	mov	r3, #4096
	str	r3, [fp, #-1248]
	b	.L359
.L362:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L363
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L359
.L363:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L364
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L359
.L364:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
.L359:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L365
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L365:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L367
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L367:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L368
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L368:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L369
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L369:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L370
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L370:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L371
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L366
.L371:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
.L366:
	ldr	r3, [fp, #-1248]
	rsb	r3, r3, #0
	str	r3, [fp, #-1568]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L372
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L372:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L374
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L374:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L375
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L375:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L376
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L376:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L377
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L377:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L378
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L373
.L378:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
.L373:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1544]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L379
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L380
.L379:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L381
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L380
.L381:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L382
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L380
.L382:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L383
	mov	r3, #4096
	str	r3, [fp, #-1248]
	b	.L380
.L383:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L384
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L380
.L384:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L385
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
	b	.L380
.L385:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1248]
.L380:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L386
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L387
.L386:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L388
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L387
.L388:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L389
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L387
.L389:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L390
	mov	r3, #4096
	str	r3, [fp, #-1248]
	b	.L387
.L390:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L391
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L387
.L391:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L392
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L387
.L392:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
.L387:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L393
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L393:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L395
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L395:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L396
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L396:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L397
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L397:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L398
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L398:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L399
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L394
.L399:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
.L394:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1504]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L400
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L400:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L402
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L402:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L403
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L403:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L404
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L404:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L405
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L405:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L406
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L401
.L406:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
.L401:
	ldr	r3, [fp, #-1248]
	rsb	r3, r3, #0
	str	r3, [fp, #-1480]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L407
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L408
.L407:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L409
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L408
.L409:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L410
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L408
.L410:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L411
	mov	r3, #4096
	str	r3, [fp, #-1248]
	b	.L408
.L411:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L412
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L408
.L412:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L413
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
	b	.L408
.L413:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1248]
.L408:
	ldr	r3, [fp, #-1248]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L414
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1228]
	b	.L415
.L414:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1228]
.L415:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L416
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1224]
	b	.L417
.L416:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1224]
.L417:
	ldr	r2, [fp, #-1224]
	ldr	r3, [fp, #-1228]
	cmp	r2, r3
	ble	.L418
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1232]
	ldr	r3, [fp, #-1232]
	cmn	r3, #2048
	bge	.L419
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
	b	.L420
.L419:
	ldr	r2, [fp, #-1232]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L421
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
	b	.L420
.L421:
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
.L420:
	ldr	r3, [fp, #-1232]
	cmp	r3, #0
	bge	.L422
	ldr	r3, [fp, #-1244]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1244]
.L422:
	ldr	r3, [fp, #-1244]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1244]
	b	.L423
.L418:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1232]
	ldr	r3, [fp, #-1232]
	cmn	r3, #2048
	bge	.L424
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
	b	.L423
.L424:
	ldr	r2, [fp, #-1232]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L425
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
	b	.L423
.L425:
	ldr	r1, [fp, #-1232]
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
	str	r3, [fp, #-1244]
.L423:
	ldr	r3, [fp, #-1244]
	str	r3, [fp, #-1240]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L426
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1216]
	b	.L427
.L426:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1216]
.L427:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L428
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1212]
	b	.L429
.L428:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1212]
.L429:
	ldr	r2, [fp, #-1212]
	ldr	r3, [fp, #-1216]
	cmp	r2, r3
	ble	.L430
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1220]
	ldr	r3, [fp, #-1220]
	cmn	r3, #2048
	bge	.L431
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
	b	.L432
.L431:
	ldr	r2, [fp, #-1220]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L433
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
	b	.L432
.L433:
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
.L432:
	ldr	r3, [fp, #-1220]
	cmp	r3, #0
	bge	.L434
	ldr	r3, [fp, #-1244]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1244]
.L434:
	ldr	r3, [fp, #-1244]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1244]
	b	.L435
.L430:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1220]
	ldr	r3, [fp, #-1220]
	cmn	r3, #2048
	bge	.L436
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
	b	.L435
.L436:
	ldr	r2, [fp, #-1220]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L437
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
	b	.L435
.L437:
	ldr	r1, [fp, #-1220]
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
	str	r3, [fp, #-1244]
.L435:
	ldr	r3, [fp, #-1244]
	str	r3, [fp, #-1236]
	ldr	r2, [fp, #-1240]
	ldr	r3, [fp, #-1236]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1240]
	ldr	r3, [fp, #-1236]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L438
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L439
.L438:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L440
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L439
.L440:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L441
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L439
.L441:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L442
	mov	r3, #4096
	str	r3, [fp, #-1208]
	b	.L439
.L442:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L443
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L439
.L443:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L444
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L439
.L444:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
.L439:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L445
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L445:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L447
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L447:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L448
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L448:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L449
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L449:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L450
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L450:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L451
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L446
.L451:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
.L446:
	ldr	r3, [fp, #-1208]
	rsb	r3, r3, #0
	str	r3, [fp, #-1552]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L452
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L452:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L454
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L454:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L455
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L455:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L456
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L456:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L457
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L457:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L458
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L453
.L458:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
.L453:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1540]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L459
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L460
.L459:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L461
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L460
.L461:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L462
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L460
.L462:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L463
	mov	r3, #4096
	str	r3, [fp, #-1208]
	b	.L460
.L463:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L464
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L460
.L464:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L465
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
	b	.L460
.L465:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1208]
.L460:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L466
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L467
.L466:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L468
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L467
.L468:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L469
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L467
.L469:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L470
	mov	r3, #4096
	str	r3, [fp, #-1208]
	b	.L467
.L470:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L471
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L467
.L471:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L472
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L467
.L472:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
.L467:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1492]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L473
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L473:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L475
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L475:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L476
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L476:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L477
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L477:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L478
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L478:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L479
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L474
.L479:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
.L474:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1488]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L480
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L480:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L482
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L482:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L483
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L483:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L484
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L484:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L485
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L485:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L486
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L481
.L486:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
.L481:
	ldr	r3, [fp, #-1208]
	rsb	r3, r3, #0
	str	r3, [fp, #-1476]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L487
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L488
.L487:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L489
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L488
.L489:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L490
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L488
.L490:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L491
	mov	r3, #4096
	str	r3, [fp, #-1208]
	b	.L488
.L491:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L492
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L488
.L492:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L493
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
	b	.L488
.L493:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1208]
.L488:
	ldr	r3, [fp, #-1208]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L494
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1188]
	b	.L495
.L494:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1188]
.L495:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L496
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1184]
	b	.L497
.L496:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1184]
.L497:
	ldr	r2, [fp, #-1184]
	ldr	r3, [fp, #-1188]
	cmp	r2, r3
	ble	.L498
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1192]
	ldr	r3, [fp, #-1192]
	cmn	r3, #2048
	bge	.L499
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
	b	.L500
.L499:
	ldr	r2, [fp, #-1192]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L501
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
	b	.L500
.L501:
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
.L500:
	ldr	r3, [fp, #-1192]
	cmp	r3, #0
	bge	.L502
	ldr	r3, [fp, #-1204]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1204]
.L502:
	ldr	r3, [fp, #-1204]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1204]
	b	.L503
.L498:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1192]
	ldr	r3, [fp, #-1192]
	cmn	r3, #2048
	bge	.L504
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
	b	.L503
.L504:
	ldr	r2, [fp, #-1192]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L505
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
	b	.L503
.L505:
	ldr	r1, [fp, #-1192]
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
	str	r3, [fp, #-1204]
.L503:
	ldr	r3, [fp, #-1204]
	str	r3, [fp, #-1200]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L506
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1176]
	b	.L507
.L506:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1176]
.L507:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L508
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1172]
	b	.L509
.L508:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1172]
.L509:
	ldr	r2, [fp, #-1172]
	ldr	r3, [fp, #-1176]
	cmp	r2, r3
	ble	.L510
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1180]
	ldr	r3, [fp, #-1180]
	cmn	r3, #2048
	bge	.L511
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
	b	.L512
.L511:
	ldr	r2, [fp, #-1180]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L513
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
	b	.L512
.L513:
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
.L512:
	ldr	r3, [fp, #-1180]
	cmp	r3, #0
	bge	.L514
	ldr	r3, [fp, #-1204]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1204]
.L514:
	ldr	r3, [fp, #-1204]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1204]
	b	.L515
.L510:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1180]
	ldr	r3, [fp, #-1180]
	cmn	r3, #2048
	bge	.L516
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
	b	.L515
.L516:
	ldr	r2, [fp, #-1180]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L517
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
	b	.L515
.L517:
	ldr	r1, [fp, #-1180]
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
	str	r3, [fp, #-1204]
.L515:
	ldr	r3, [fp, #-1204]
	str	r3, [fp, #-1196]
	ldr	r2, [fp, #-1200]
	ldr	r3, [fp, #-1196]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1200]
	ldr	r3, [fp, #-1196]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L518
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L519
.L518:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L520
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L519
.L520:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L521
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L519
.L521:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L522
	mov	r3, #4096
	str	r3, [fp, #-1168]
	b	.L519
.L522:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L523
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L519
.L523:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L524
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L519
.L524:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
.L519:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L525
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L525:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L527
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L527:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L528
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L528:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L529
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L529:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L530
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L530:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L531
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L526
.L531:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
.L526:
	ldr	r3, [fp, #-1168]
	rsb	r3, r3, #0
	str	r3, [fp, #-1592]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L532
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L532:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L534
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L534:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L535
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L535:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L536
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L536:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L537
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L537:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L538
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L533
.L538:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
.L533:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1580]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L539
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L540
.L539:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L541
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L540
.L541:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L542
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L540
.L542:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L543
	mov	r3, #4096
	str	r3, [fp, #-1168]
	b	.L540
.L543:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L544
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L540
.L544:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L545
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
	b	.L540
.L545:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1168]
.L540:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L546
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L547
.L546:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L548
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L547
.L548:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L549
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L547
.L549:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L550
	mov	r3, #4096
	str	r3, [fp, #-1168]
	b	.L547
.L550:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L551
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L547
.L551:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L552
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L547
.L552:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
.L547:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L553
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L553:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L555
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L555:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L556
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L556:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L557
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L557:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L558
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L558:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L559
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L554
.L559:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
.L554:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1528]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L560
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L560:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L562
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L562:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L563
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L563:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L564
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L564:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L565
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L565:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L566
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L561
.L566:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
.L561:
	ldr	r3, [fp, #-1168]
	rsb	r3, r3, #0
	str	r3, [fp, #-1516]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L567
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L568
.L567:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L569
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L568
.L569:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L570
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L568
.L570:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L571
	mov	r3, #4096
	str	r3, [fp, #-1168]
	b	.L568
.L571:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L572
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L568
.L572:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L573
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
	b	.L568
.L573:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1168]
.L568:
	ldr	r3, [fp, #-1168]
	str	r3, [fp, #-1512]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L574
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1148]
	b	.L575
.L574:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1148]
.L575:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L576
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1144]
	b	.L577
.L576:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1144]
.L577:
	ldr	r2, [fp, #-1144]
	ldr	r3, [fp, #-1148]
	cmp	r2, r3
	ble	.L578
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1152]
	ldr	r3, [fp, #-1152]
	cmn	r3, #2048
	bge	.L579
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
	b	.L580
.L579:
	ldr	r2, [fp, #-1152]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L581
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
	b	.L580
.L581:
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
.L580:
	ldr	r3, [fp, #-1152]
	cmp	r3, #0
	bge	.L582
	ldr	r3, [fp, #-1164]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1164]
.L582:
	ldr	r3, [fp, #-1164]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1164]
	b	.L583
.L578:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1152]
	ldr	r3, [fp, #-1152]
	cmn	r3, #2048
	bge	.L584
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
	b	.L583
.L584:
	ldr	r2, [fp, #-1152]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L585
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
	b	.L583
.L585:
	ldr	r1, [fp, #-1152]
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
	str	r3, [fp, #-1164]
.L583:
	ldr	r3, [fp, #-1164]
	str	r3, [fp, #-1160]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L586
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1136]
	b	.L587
.L586:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1136]
.L587:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L588
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1132]
	b	.L589
.L588:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1132]
.L589:
	ldr	r2, [fp, #-1132]
	ldr	r3, [fp, #-1136]
	cmp	r2, r3
	ble	.L590
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1140]
	ldr	r3, [fp, #-1140]
	cmn	r3, #2048
	bge	.L591
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
	b	.L592
.L591:
	ldr	r2, [fp, #-1140]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L593
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
	b	.L592
.L593:
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
.L592:
	ldr	r3, [fp, #-1140]
	cmp	r3, #0
	bge	.L594
	ldr	r3, [fp, #-1164]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1164]
.L594:
	ldr	r3, [fp, #-1164]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1164]
	b	.L595
.L590:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1140]
	ldr	r3, [fp, #-1140]
	cmn	r3, #2048
	bge	.L596
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
	b	.L595
.L596:
	ldr	r2, [fp, #-1140]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L597
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
	b	.L595
.L597:
	ldr	r1, [fp, #-1140]
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
	str	r3, [fp, #-1164]
.L595:
	ldr	r3, [fp, #-1164]
	str	r3, [fp, #-1156]
	ldr	r2, [fp, #-1160]
	ldr	r3, [fp, #-1156]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1160]
	ldr	r3, [fp, #-1156]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L598
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L599
.L598:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L600
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L599
.L600:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L601
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L599
.L601:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L602
	mov	r3, #4096
	str	r3, [fp, #-1128]
	b	.L599
.L602:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L603
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L599
.L603:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L604
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L599
.L604:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
.L599:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L605
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L605:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L607
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L607:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L608
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L608:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L609
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L609:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L610
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L610:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L611
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L606
.L611:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
.L606:
	ldr	r3, [fp, #-1128]
	rsb	r3, r3, #0
	str	r3, [fp, #-1588]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L612
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L612:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L614
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L614:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L615
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L615:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L616
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L616:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L617
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L617:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L618
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L613
.L618:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
.L613:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1564]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L619
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L620
.L619:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L621
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L620
.L621:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L622
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L620
.L622:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L623
	mov	r3, #4096
	str	r3, [fp, #-1128]
	b	.L620
.L623:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L624
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L620
.L624:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L625
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
	b	.L620
.L625:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1128]
.L620:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L626
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L627
.L626:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L628
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L627
.L628:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L629
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L627
.L629:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L630
	mov	r3, #4096
	str	r3, [fp, #-1128]
	b	.L627
.L630:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L631
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L627
.L631:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L632
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L627
.L632:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
.L627:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L633
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L633:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L635
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L635:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L636
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L636:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L637
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L637:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L638
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L638:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L639
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L634
.L639:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
.L634:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1524]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L640
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L640:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L642
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L642:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L643
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L643:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L644
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L644:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L645
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L645:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L646
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L641
.L646:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
.L641:
	ldr	r3, [fp, #-1128]
	rsb	r3, r3, #0
	str	r3, [fp, #-1500]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L647
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L648
.L647:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L649
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L648
.L649:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L650
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L648
.L650:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L651
	mov	r3, #4096
	str	r3, [fp, #-1128]
	b	.L648
.L651:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L652
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L648
.L652:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L653
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
	b	.L648
.L653:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1128]
.L648:
	ldr	r3, [fp, #-1128]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L654
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1108]
	b	.L655
.L654:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1108]
.L655:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L656
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1104]
	b	.L657
.L656:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1104]
.L657:
	ldr	r2, [fp, #-1104]
	ldr	r3, [fp, #-1108]
	cmp	r2, r3
	ble	.L658
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1112]
	ldr	r3, [fp, #-1112]
	cmn	r3, #2048
	bge	.L659
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
	b	.L660
.L659:
	ldr	r2, [fp, #-1112]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L661
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
	b	.L660
.L661:
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
.L660:
	ldr	r3, [fp, #-1112]
	cmp	r3, #0
	bge	.L662
	ldr	r3, [fp, #-1124]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1124]
.L662:
	ldr	r3, [fp, #-1124]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1124]
	b	.L663
.L658:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1112]
	ldr	r3, [fp, #-1112]
	cmn	r3, #2048
	bge	.L664
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
	b	.L663
.L664:
	ldr	r2, [fp, #-1112]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L665
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
	b	.L663
.L665:
	ldr	r1, [fp, #-1112]
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
	str	r3, [fp, #-1124]
.L663:
	ldr	r3, [fp, #-1124]
	str	r3, [fp, #-1120]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L666
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1096]
	b	.L667
.L666:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1096]
.L667:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L668
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1092]
	b	.L669
.L668:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1092]
.L669:
	ldr	r2, [fp, #-1092]
	ldr	r3, [fp, #-1096]
	cmp	r2, r3
	ble	.L670
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	cmn	r3, #2048
	bge	.L671
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
	b	.L672
.L671:
	ldr	r2, [fp, #-1100]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L673
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
	b	.L672
.L673:
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
.L672:
	ldr	r3, [fp, #-1100]
	cmp	r3, #0
	bge	.L674
	ldr	r3, [fp, #-1124]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1124]
.L674:
	ldr	r3, [fp, #-1124]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1124]
	b	.L675
.L670:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	cmn	r3, #2048
	bge	.L676
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
	b	.L675
.L676:
	ldr	r2, [fp, #-1100]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L677
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
	b	.L675
.L677:
	ldr	r1, [fp, #-1100]
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
	str	r3, [fp, #-1124]
.L675:
	ldr	r3, [fp, #-1124]
	str	r3, [fp, #-1116]
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-1116]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-1116]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L678
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L679
.L678:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L680
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L679
.L680:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L681
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L679
.L681:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L682
	mov	r3, #4096
	str	r3, [fp, #-1088]
	b	.L679
.L682:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L683
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L679
.L683:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L684
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L679
.L684:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
.L679:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L685
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L685:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L687
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L687:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L688
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L688:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L689
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L689:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L690
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L690:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L691
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L686
.L691:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
.L686:
	ldr	r3, [fp, #-1088]
	rsb	r3, r3, #0
	str	r3, [fp, #-1584]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L692
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L692:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L694
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L694:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L695
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L695:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L696
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L696:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L697
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L697:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L698
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L693
.L698:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
.L693:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1548]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L699
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L700
.L699:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L701
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L700
.L701:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L702
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L700
.L702:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L703
	mov	r3, #4096
	str	r3, [fp, #-1088]
	b	.L700
.L703:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L704
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L700
.L704:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L705
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
	b	.L700
.L705:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1088]
.L700:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L706
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L707
.L706:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L708
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L707
.L708:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L709
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L707
.L709:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L710
	mov	r3, #4096
	str	r3, [fp, #-1088]
	b	.L707
.L710:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L711
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L707
.L711:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L712
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L707
.L712:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
.L707:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L713
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L713:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L715
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L715:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L716
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L716:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L717
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L717:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L718
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L718:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L719
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L714
.L719:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
.L714:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1520]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L720
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L720:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L722
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L722:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L723
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L723:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L724
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L724:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L725
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L725:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L726
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L721
.L726:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
.L721:
	ldr	r3, [fp, #-1088]
	rsb	r3, r3, #0
	str	r3, [fp, #-1484]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L727
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L728
.L727:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L729
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L728
.L729:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L730
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L728
.L730:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L731
	mov	r3, #4096
	str	r3, [fp, #-1088]
	b	.L728
.L731:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L732
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L728
.L732:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L733
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
	b	.L728
.L733:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1088]
.L728:
	ldr	r3, [fp, #-1088]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L734
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1068]
	b	.L735
.L734:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1068]
.L735:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L736
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1064]
	b	.L737
.L736:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1064]
.L737:
	ldr	r2, [fp, #-1064]
	ldr	r3, [fp, #-1068]
	cmp	r2, r3
	ble	.L738
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1072]
	ldr	r3, [fp, #-1072]
	cmn	r3, #2048
	bge	.L739
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
	b	.L740
.L739:
	ldr	r2, [fp, #-1072]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L741
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
	b	.L740
.L741:
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
.L740:
	ldr	r3, [fp, #-1072]
	cmp	r3, #0
	bge	.L742
	ldr	r3, [fp, #-1084]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1084]
.L742:
	ldr	r3, [fp, #-1084]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1084]
	b	.L743
.L738:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1072]
	ldr	r3, [fp, #-1072]
	cmn	r3, #2048
	bge	.L744
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
	b	.L743
.L744:
	ldr	r2, [fp, #-1072]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L745
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
	b	.L743
.L745:
	ldr	r1, [fp, #-1072]
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
	str	r3, [fp, #-1084]
.L743:
	ldr	r3, [fp, #-1084]
	str	r3, [fp, #-1080]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L746
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1056]
	b	.L747
.L746:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1056]
.L747:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L748
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1052]
	b	.L749
.L748:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1052]
.L749:
	ldr	r2, [fp, #-1052]
	ldr	r3, [fp, #-1056]
	cmp	r2, r3
	ble	.L750
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1060]
	ldr	r3, [fp, #-1060]
	cmn	r3, #2048
	bge	.L751
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
	b	.L752
.L751:
	ldr	r2, [fp, #-1060]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L753
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
	b	.L752
.L753:
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
.L752:
	ldr	r3, [fp, #-1060]
	cmp	r3, #0
	bge	.L754
	ldr	r3, [fp, #-1084]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1084]
.L754:
	ldr	r3, [fp, #-1084]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1084]
	b	.L755
.L750:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1060]
	ldr	r3, [fp, #-1060]
	cmn	r3, #2048
	bge	.L756
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
	b	.L755
.L756:
	ldr	r2, [fp, #-1060]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L757
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
	b	.L755
.L757:
	ldr	r1, [fp, #-1060]
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
	str	r3, [fp, #-1084]
.L755:
	ldr	r3, [fp, #-1084]
	str	r3, [fp, #-1076]
	ldr	r2, [fp, #-1080]
	ldr	r3, [fp, #-1076]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1080]
	ldr	r3, [fp, #-1076]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L758
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L759
.L758:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L760
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L759
.L760:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L761
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L759
.L761:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L762
	mov	r3, #4096
	str	r3, [fp, #-1048]
	b	.L759
.L762:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L763
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L759
.L763:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L764
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L759
.L764:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
.L759:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L765
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L765:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L767
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L767:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L768
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L768:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L769
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L769:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L770
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L770:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L771
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L766
.L771:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
.L766:
	ldr	r3, [fp, #-1048]
	rsb	r3, r3, #0
	str	r3, [fp, #-1572]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L772
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L772:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L774
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L774:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L775
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L775:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L776
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L776:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L777
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L777:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L778
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L773
.L778:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
.L773:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1560]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L779
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L780
.L779:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L781
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L780
.L781:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L782
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L780
.L782:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L783
	mov	r3, #4096
	str	r3, [fp, #-1048]
	b	.L780
.L783:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L784
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L780
.L784:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L785
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
	b	.L780
.L785:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1048]
.L780:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L786
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L787
.L786:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L788
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L787
.L788:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L789
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L787
.L789:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L790
	mov	r3, #4096
	str	r3, [fp, #-1048]
	b	.L787
.L790:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L791
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L787
.L791:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L792
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L787
.L792:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
.L787:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L793
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L793:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L795
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L795:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L796
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L796:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L797
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L797:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L798
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L798:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L799
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L794
.L799:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
.L794:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1508]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L800
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L800:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L802
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L802:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L803
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L803:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L804
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L804:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L805
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L805:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L806
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L801
.L806:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
.L801:
	ldr	r3, [fp, #-1048]
	rsb	r3, r3, #0
	str	r3, [fp, #-1496]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L807
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L808
.L807:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L809
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L808
.L809:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L810
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L808
.L810:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L811
	mov	r3, #4096
	str	r3, [fp, #-1048]
	b	.L808
.L811:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L812
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L808
.L812:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L813
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
	b	.L808
.L813:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1048]
.L808:
	ldr	r3, [fp, #-1048]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L814
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-1028]
	b	.L815
.L814:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-1028]
.L815:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L816
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1024]
	b	.L817
.L816:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-1024]
.L817:
	ldr	r2, [fp, #-1024]
	ldr	r3, [fp, #-1028]
	cmp	r2, r3
	ble	.L818
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1032]
	ldr	r3, [fp, #-1032]
	cmn	r3, #2048
	bge	.L819
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
	b	.L820
.L819:
	ldr	r2, [fp, #-1032]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L821
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
	b	.L820
.L821:
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
.L820:
	ldr	r3, [fp, #-1032]
	cmp	r3, #0
	bge	.L822
	ldr	r3, [fp, #-1044]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1044]
.L822:
	ldr	r3, [fp, #-1044]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1044]
	b	.L823
.L818:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1032]
	ldr	r3, [fp, #-1032]
	cmn	r3, #2048
	bge	.L824
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
	b	.L823
.L824:
	ldr	r2, [fp, #-1032]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L825
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
	b	.L823
.L825:
	ldr	r1, [fp, #-1032]
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
	str	r3, [fp, #-1044]
.L823:
	ldr	r3, [fp, #-1044]
	str	r3, [fp, #-1040]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L826
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-1016]
	b	.L827
.L826:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-1016]
.L827:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L828
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-1012]
	b	.L829
.L828:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-1012]
.L829:
	ldr	r2, [fp, #-1012]
	ldr	r3, [fp, #-1016]
	cmp	r2, r3
	ble	.L830
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1020]
	ldr	r3, [fp, #-1020]
	cmn	r3, #2048
	bge	.L831
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
	b	.L832
.L831:
	ldr	r2, [fp, #-1020]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L833
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
	b	.L832
.L833:
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
.L832:
	ldr	r3, [fp, #-1020]
	cmp	r3, #0
	bge	.L834
	ldr	r3, [fp, #-1044]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1044]
.L834:
	ldr	r3, [fp, #-1044]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1044]
	b	.L835
.L830:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-1020]
	ldr	r3, [fp, #-1020]
	cmn	r3, #2048
	bge	.L836
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
	b	.L835
.L836:
	ldr	r2, [fp, #-1020]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L837
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
	b	.L835
.L837:
	ldr	r1, [fp, #-1020]
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
	str	r3, [fp, #-1044]
.L835:
	ldr	r3, [fp, #-1044]
	str	r3, [fp, #-1036]
	ldr	r2, [fp, #-1040]
	ldr	r3, [fp, #-1036]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1040]
	ldr	r3, [fp, #-1036]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L838
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L839
.L838:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L840
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L839
.L840:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L841
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L839
.L841:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L842
	mov	r3, #4096
	str	r3, [fp, #-1008]
	b	.L839
.L842:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L843
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L839
.L843:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L844
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L839
.L844:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
.L839:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L845
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L845:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L847
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L847:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L848
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L848:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L849
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L849:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L850
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L850:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L851
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L846
.L851:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
.L846:
	ldr	r3, [fp, #-1008]
	rsb	r3, r3, #0
	str	r3, [fp, #-1568]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L852
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L852:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L854
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L854:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L855
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L855:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L856
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L856:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L857
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L857:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L858
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L853
.L858:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
.L853:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1544]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L859
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L860
.L859:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L861
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L860
.L861:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L862
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L860
.L862:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L863
	mov	r3, #4096
	str	r3, [fp, #-1008]
	b	.L860
.L863:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L864
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L860
.L864:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L865
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
	b	.L860
.L865:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-1008]
.L860:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L866
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L867
.L866:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L868
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L867
.L868:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L869
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L867
.L869:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L870
	mov	r3, #4096
	str	r3, [fp, #-1008]
	b	.L867
.L870:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L871
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L867
.L871:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L872
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L867
.L872:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
.L867:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L873
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L873:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L875
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L875:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L876
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L876:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L877
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L877:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L878
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L878:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L879
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L874
.L879:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
.L874:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1504]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L880
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L880:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L882
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L882:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L883
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L883:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L884
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L884:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L885
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L885:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L886
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L881
.L886:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
.L881:
	ldr	r3, [fp, #-1008]
	rsb	r3, r3, #0
	str	r3, [fp, #-1480]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L887
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L888
.L887:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L889
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L888
.L889:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L890
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L888
.L890:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L891
	mov	r3, #4096
	str	r3, [fp, #-1008]
	b	.L888
.L891:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L892
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L888
.L892:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L893
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
	b	.L888
.L893:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-1008]
.L888:
	ldr	r3, [fp, #-1008]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L894
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-988]
	b	.L895
.L894:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-988]
.L895:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L896
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-984]
	b	.L897
.L896:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-984]
.L897:
	ldr	r2, [fp, #-984]
	ldr	r3, [fp, #-988]
	cmp	r2, r3
	ble	.L898
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-992]
	ldr	r3, [fp, #-992]
	cmn	r3, #2048
	bge	.L899
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
	b	.L900
.L899:
	ldr	r2, [fp, #-992]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L901
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
	b	.L900
.L901:
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
.L900:
	ldr	r3, [fp, #-992]
	cmp	r3, #0
	bge	.L902
	ldr	r3, [fp, #-1004]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1004]
.L902:
	ldr	r3, [fp, #-1004]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1004]
	b	.L903
.L898:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-992]
	ldr	r3, [fp, #-992]
	cmn	r3, #2048
	bge	.L904
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
	b	.L903
.L904:
	ldr	r2, [fp, #-992]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L905
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
	b	.L903
.L905:
	ldr	r1, [fp, #-992]
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
	str	r3, [fp, #-1004]
.L903:
	ldr	r3, [fp, #-1004]
	str	r3, [fp, #-1000]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L906
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-976]
	b	.L907
.L906:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-976]
.L907:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L908
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-972]
	b	.L909
.L908:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-972]
.L909:
	ldr	r2, [fp, #-972]
	ldr	r3, [fp, #-976]
	cmp	r2, r3
	ble	.L910
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-980]
	ldr	r3, [fp, #-980]
	cmn	r3, #2048
	bge	.L911
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
	b	.L912
.L911:
	ldr	r2, [fp, #-980]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L913
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
	b	.L912
.L913:
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
.L912:
	ldr	r3, [fp, #-980]
	cmp	r3, #0
	bge	.L914
	ldr	r3, [fp, #-1004]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-1004]
.L914:
	ldr	r3, [fp, #-1004]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-1004]
	b	.L915
.L910:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-980]
	ldr	r3, [fp, #-980]
	cmn	r3, #2048
	bge	.L916
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
	b	.L915
.L916:
	ldr	r2, [fp, #-980]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L917
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
	b	.L915
.L917:
	ldr	r1, [fp, #-980]
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
	str	r3, [fp, #-1004]
.L915:
	ldr	r3, [fp, #-1004]
	str	r3, [fp, #-996]
	ldr	r2, [fp, #-1000]
	ldr	r3, [fp, #-996]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-1000]
	ldr	r3, [fp, #-996]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L918
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L919
.L918:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L920
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L919
.L920:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L921
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L919
.L921:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L922
	mov	r3, #4096
	str	r3, [fp, #-968]
	b	.L919
.L922:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L923
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L919
.L923:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L924
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L919
.L924:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
.L919:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L925
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L925:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L927
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L927:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L928
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L928:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L929
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L929:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L930
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L930:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L931
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L926
.L931:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
.L926:
	ldr	r3, [fp, #-968]
	rsb	r3, r3, #0
	str	r3, [fp, #-1552]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L932
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L932:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L934
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L934:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L935
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L935:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L936
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L936:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L937
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L937:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L938
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L933
.L938:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
.L933:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1540]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L939
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L940
.L939:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L941
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L940
.L941:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L942
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L940
.L942:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L943
	mov	r3, #4096
	str	r3, [fp, #-968]
	b	.L940
.L943:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L944
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L940
.L944:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L945
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
	b	.L940
.L945:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-968]
.L940:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L946
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L947
.L946:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L948
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L947
.L948:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L949
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L947
.L949:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L950
	mov	r3, #4096
	str	r3, [fp, #-968]
	b	.L947
.L950:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L951
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L947
.L951:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L952
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L947
.L952:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
.L947:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1492]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L953
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L953:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L955
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L955:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L956
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L956:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L957
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L957:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L958
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L958:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L959
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L954
.L959:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
.L954:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1488]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L960
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L960:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L962
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L962:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L963
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L963:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L964
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L964:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L965
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L965:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L966
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L961
.L966:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
.L961:
	ldr	r3, [fp, #-968]
	rsb	r3, r3, #0
	str	r3, [fp, #-1476]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L967
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L968
.L967:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L969
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L968
.L969:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L970
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L968
.L970:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L971
	mov	r3, #4096
	str	r3, [fp, #-968]
	b	.L968
.L971:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L972
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L968
.L972:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L973
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
	b	.L968
.L973:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-968]
.L968:
	ldr	r3, [fp, #-968]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L974
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-948]
	b	.L975
.L974:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-948]
.L975:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L976
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-944]
	b	.L977
.L976:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-944]
.L977:
	ldr	r2, [fp, #-944]
	ldr	r3, [fp, #-948]
	cmp	r2, r3
	ble	.L978
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-952]
	ldr	r3, [fp, #-952]
	cmn	r3, #2048
	bge	.L979
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
	b	.L980
.L979:
	ldr	r2, [fp, #-952]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L981
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
	b	.L980
.L981:
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
.L980:
	ldr	r3, [fp, #-952]
	cmp	r3, #0
	bge	.L982
	ldr	r3, [fp, #-964]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-964]
.L982:
	ldr	r3, [fp, #-964]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-964]
	b	.L983
.L978:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-952]
	ldr	r3, [fp, #-952]
	cmn	r3, #2048
	bge	.L984
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
	b	.L983
.L984:
	ldr	r2, [fp, #-952]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L985
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
	b	.L983
.L985:
	ldr	r1, [fp, #-952]
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
	str	r3, [fp, #-964]
.L983:
	ldr	r3, [fp, #-964]
	str	r3, [fp, #-960]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L986
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-936]
	b	.L987
.L986:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-936]
.L987:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L988
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-932]
	b	.L989
.L988:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-932]
.L989:
	ldr	r2, [fp, #-932]
	ldr	r3, [fp, #-936]
	cmp	r2, r3
	ble	.L990
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-940]
	ldr	r3, [fp, #-940]
	cmn	r3, #2048
	bge	.L991
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
	b	.L992
.L991:
	ldr	r2, [fp, #-940]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L993
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
	b	.L992
.L993:
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
.L992:
	ldr	r3, [fp, #-940]
	cmp	r3, #0
	bge	.L994
	ldr	r3, [fp, #-964]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-964]
.L994:
	ldr	r3, [fp, #-964]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-964]
	b	.L995
.L990:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-940]
	ldr	r3, [fp, #-940]
	cmn	r3, #2048
	bge	.L996
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
	b	.L995
.L996:
	ldr	r2, [fp, #-940]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L997
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
	b	.L995
.L997:
	ldr	r1, [fp, #-940]
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
	str	r3, [fp, #-964]
.L995:
	ldr	r3, [fp, #-964]
	str	r3, [fp, #-956]
	ldr	r2, [fp, #-960]
	ldr	r3, [fp, #-956]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-960]
	ldr	r3, [fp, #-956]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L998
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L999
.L998:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1000
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L999
.L1000:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1001
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L999
.L1001:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1002
	mov	r3, #4096
	str	r3, [fp, #-928]
	b	.L999
.L1002:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1003
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L999
.L1003:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1004
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L999
.L1004:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
.L999:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1005
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1005:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1007
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1007:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1008
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1008:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1009
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1009:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1010
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1010:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1011
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1006
.L1011:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
.L1006:
	ldr	r3, [fp, #-928]
	rsb	r3, r3, #0
	str	r3, [fp, #-1592]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1012
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1012:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1014
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1014:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1015
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1015:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1016
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1016:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1017
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1017:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1018
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1013
.L1018:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
.L1013:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1580]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1019
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1020
.L1019:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1021
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1020
.L1021:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1022
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1020
.L1022:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1023
	mov	r3, #4096
	str	r3, [fp, #-928]
	b	.L1020
.L1023:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1024
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1020
.L1024:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1025
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
	b	.L1020
.L1025:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-928]
.L1020:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1026
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1027
.L1026:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1028
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1027
.L1028:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1029
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1027
.L1029:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1030
	mov	r3, #4096
	str	r3, [fp, #-928]
	b	.L1027
.L1030:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1031
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1027
.L1031:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1032
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1027
.L1032:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
.L1027:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1033
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1033:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1035
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1035:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1036
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1036:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1037
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1037:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1038
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1038:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1039
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1034
.L1039:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
.L1034:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1528]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1040
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1040:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1042
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1042:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1043
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1043:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1044
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1044:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1045
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1045:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1046
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1041
.L1046:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
.L1041:
	ldr	r3, [fp, #-928]
	rsb	r3, r3, #0
	str	r3, [fp, #-1516]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1047
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1048
.L1047:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1049
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1048
.L1049:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1050
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1048
.L1050:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1051
	mov	r3, #4096
	str	r3, [fp, #-928]
	b	.L1048
.L1051:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1052
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1048
.L1052:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1053
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
	b	.L1048
.L1053:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-928]
.L1048:
	ldr	r3, [fp, #-928]
	str	r3, [fp, #-1512]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L1054
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-908]
	b	.L1055
.L1054:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-908]
.L1055:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L1056
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-904]
	b	.L1057
.L1056:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-904]
.L1057:
	ldr	r2, [fp, #-904]
	ldr	r3, [fp, #-908]
	cmp	r2, r3
	ble	.L1058
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-912]
	ldr	r3, [fp, #-912]
	cmn	r3, #2048
	bge	.L1059
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
	b	.L1060
.L1059:
	ldr	r2, [fp, #-912]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1061
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
	b	.L1060
.L1061:
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
.L1060:
	ldr	r3, [fp, #-912]
	cmp	r3, #0
	bge	.L1062
	ldr	r3, [fp, #-924]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-924]
.L1062:
	ldr	r3, [fp, #-924]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-924]
	b	.L1063
.L1058:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-912]
	ldr	r3, [fp, #-912]
	cmn	r3, #2048
	bge	.L1064
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
	b	.L1063
.L1064:
	ldr	r2, [fp, #-912]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1065
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
	b	.L1063
.L1065:
	ldr	r1, [fp, #-912]
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
	str	r3, [fp, #-924]
.L1063:
	ldr	r3, [fp, #-924]
	str	r3, [fp, #-920]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L1066
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-896]
	b	.L1067
.L1066:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-896]
.L1067:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L1068
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-892]
	b	.L1069
.L1068:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-892]
.L1069:
	ldr	r2, [fp, #-892]
	ldr	r3, [fp, #-896]
	cmp	r2, r3
	ble	.L1070
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-900]
	ldr	r3, [fp, #-900]
	cmn	r3, #2048
	bge	.L1071
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
	b	.L1072
.L1071:
	ldr	r2, [fp, #-900]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1073
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
	b	.L1072
.L1073:
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
.L1072:
	ldr	r3, [fp, #-900]
	cmp	r3, #0
	bge	.L1074
	ldr	r3, [fp, #-924]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-924]
.L1074:
	ldr	r3, [fp, #-924]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-924]
	b	.L1075
.L1070:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-900]
	ldr	r3, [fp, #-900]
	cmn	r3, #2048
	bge	.L1076
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
	b	.L1075
.L1076:
	ldr	r2, [fp, #-900]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1077
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
	b	.L1075
.L1077:
	ldr	r1, [fp, #-900]
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
	str	r3, [fp, #-924]
.L1075:
	ldr	r3, [fp, #-924]
	str	r3, [fp, #-916]
	ldr	r2, [fp, #-920]
	ldr	r3, [fp, #-916]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-920]
	ldr	r3, [fp, #-916]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1078
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1079
.L1078:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1080
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1079
.L1080:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1081
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1079
.L1081:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1082
	mov	r3, #4096
	str	r3, [fp, #-888]
	b	.L1079
.L1082:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1083
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1079
.L1083:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1084
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1079
.L1084:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
.L1079:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1085
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1085:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1087
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1087:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1088
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1088:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1089
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1089:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1090
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1090:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1091
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1086
.L1091:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
.L1086:
	ldr	r3, [fp, #-888]
	rsb	r3, r3, #0
	str	r3, [fp, #-1588]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1092
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1092:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1094
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1094:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1095
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1095:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1096
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1096:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1097
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1097:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1098
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1093
.L1098:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
.L1093:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1564]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1099
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1100
.L1099:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1101
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1100
.L1101:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1102
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1100
.L1102:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1103
	mov	r3, #4096
	str	r3, [fp, #-888]
	b	.L1100
.L1103:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1104
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1100
.L1104:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1105
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
	b	.L1100
.L1105:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-888]
.L1100:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1106
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1107
.L1106:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1108
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1107
.L1108:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1109
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1107
.L1109:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1110
	mov	r3, #4096
	str	r3, [fp, #-888]
	b	.L1107
.L1110:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1111
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1107
.L1111:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1112
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1107
.L1112:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
.L1107:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1113
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1113:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1115
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1115:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1116
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1116:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1117
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1117:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1118
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1118:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1119
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1114
.L1119:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
.L1114:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1524]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1120
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1120:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1122
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1122:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1123
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1123:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1124
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1124:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1125
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1125:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1126
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1121
.L1126:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
.L1121:
	ldr	r3, [fp, #-888]
	rsb	r3, r3, #0
	str	r3, [fp, #-1500]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1127
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1128
.L1127:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1129
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1128
.L1129:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1130
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1128
.L1130:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1131
	mov	r3, #4096
	str	r3, [fp, #-888]
	b	.L1128
.L1131:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1132
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1128
.L1132:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1133
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
	b	.L1128
.L1133:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-888]
.L1128:
	ldr	r3, [fp, #-888]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L1134
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-868]
	b	.L1135
.L1134:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-868]
.L1135:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L1136
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-864]
	b	.L1137
.L1136:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-864]
.L1137:
	ldr	r2, [fp, #-864]
	ldr	r3, [fp, #-868]
	cmp	r2, r3
	ble	.L1138
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-872]
	ldr	r3, [fp, #-872]
	cmn	r3, #2048
	bge	.L1139
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
	b	.L1140
.L1139:
	ldr	r2, [fp, #-872]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1141
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
	b	.L1140
.L1141:
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
.L1140:
	ldr	r3, [fp, #-872]
	cmp	r3, #0
	bge	.L1142
	ldr	r3, [fp, #-884]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-884]
.L1142:
	ldr	r3, [fp, #-884]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-884]
	b	.L1143
.L1138:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-872]
	ldr	r3, [fp, #-872]
	cmn	r3, #2048
	bge	.L1144
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
	b	.L1143
.L1144:
	ldr	r2, [fp, #-872]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1145
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
	b	.L1143
.L1145:
	ldr	r1, [fp, #-872]
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
	str	r3, [fp, #-884]
.L1143:
	ldr	r3, [fp, #-884]
	str	r3, [fp, #-880]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L1146
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-856]
	b	.L1147
.L1146:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-856]
.L1147:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L1148
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-852]
	b	.L1149
.L1148:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-852]
.L1149:
	ldr	r2, [fp, #-852]
	ldr	r3, [fp, #-856]
	cmp	r2, r3
	ble	.L1150
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-860]
	ldr	r3, [fp, #-860]
	cmn	r3, #2048
	bge	.L1151
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
	b	.L1152
.L1151:
	ldr	r2, [fp, #-860]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1153
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
	b	.L1152
.L1153:
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
.L1152:
	ldr	r3, [fp, #-860]
	cmp	r3, #0
	bge	.L1154
	ldr	r3, [fp, #-884]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-884]
.L1154:
	ldr	r3, [fp, #-884]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-884]
	b	.L1155
.L1150:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-860]
	ldr	r3, [fp, #-860]
	cmn	r3, #2048
	bge	.L1156
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
	b	.L1155
.L1156:
	ldr	r2, [fp, #-860]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1157
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
	b	.L1155
.L1157:
	ldr	r1, [fp, #-860]
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
	str	r3, [fp, #-884]
.L1155:
	ldr	r3, [fp, #-884]
	str	r3, [fp, #-876]
	ldr	r2, [fp, #-880]
	ldr	r3, [fp, #-876]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-880]
	ldr	r3, [fp, #-876]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1158
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1159
.L1158:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1160
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1159
.L1160:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1161
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1159
.L1161:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1162
	mov	r3, #4096
	str	r3, [fp, #-848]
	b	.L1159
.L1162:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1163
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1159
.L1163:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1164
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1159
.L1164:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
.L1159:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1596]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1165
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1165:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1167
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1167:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1168
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1168:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1169
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1169:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1170
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1170:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1171
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1166
.L1171:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
.L1166:
	ldr	r3, [fp, #-848]
	rsb	r3, r3, #0
	str	r3, [fp, #-1584]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1172
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1172:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1174
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1174:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1175
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1175:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1176
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1176:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1177
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1177:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1178
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1173
.L1178:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
.L1173:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1548]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1179
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1180
.L1179:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1181
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1180
.L1181:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1182
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1180
.L1182:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1183
	mov	r3, #4096
	str	r3, [fp, #-848]
	b	.L1180
.L1183:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1184
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1180
.L1184:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1185
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
	b	.L1180
.L1185:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-848]
.L1180:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1186
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1187
.L1186:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1188
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1187
.L1188:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1189
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1187
.L1189:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1190
	mov	r3, #4096
	str	r3, [fp, #-848]
	b	.L1187
.L1190:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1191
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1187
.L1191:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1192
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1187
.L1192:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
.L1187:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1532]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1193
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1193:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1195
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1195:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1196
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1196:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1197
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1197:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1198
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1198:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1199
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1194
.L1199:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
.L1194:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1520]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1200
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1200:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1202
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1202:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1203
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1203:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1204
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1204:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1205
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1205:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1206
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1201
.L1206:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
.L1201:
	ldr	r3, [fp, #-848]
	rsb	r3, r3, #0
	str	r3, [fp, #-1484]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1207
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1208
.L1207:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1209
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1208
.L1209:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1210
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1208
.L1210:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1211
	mov	r3, #4096
	str	r3, [fp, #-848]
	b	.L1208
.L1211:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1212
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1208
.L1212:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1213
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
	b	.L1208
.L1213:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-848]
.L1208:
	ldr	r3, [fp, #-848]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L1214
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-828]
	b	.L1215
.L1214:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-828]
.L1215:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L1216
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-824]
	b	.L1217
.L1216:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-824]
.L1217:
	ldr	r2, [fp, #-824]
	ldr	r3, [fp, #-828]
	cmp	r2, r3
	ble	.L1218
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-832]
	ldr	r3, [fp, #-832]
	cmn	r3, #2048
	bge	.L1219
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
	b	.L1220
.L1219:
	ldr	r2, [fp, #-832]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1221
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
	b	.L1220
.L1221:
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
.L1220:
	ldr	r3, [fp, #-832]
	cmp	r3, #0
	bge	.L1222
	ldr	r3, [fp, #-844]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-844]
.L1222:
	ldr	r3, [fp, #-844]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-844]
	b	.L1223
.L1218:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-832]
	ldr	r3, [fp, #-832]
	cmn	r3, #2048
	bge	.L1224
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
	b	.L1223
.L1224:
	ldr	r2, [fp, #-832]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1225
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
	b	.L1223
.L1225:
	ldr	r1, [fp, #-832]
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
	str	r3, [fp, #-844]
.L1223:
	ldr	r3, [fp, #-844]
	str	r3, [fp, #-840]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L1226
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-816]
	b	.L1227
.L1226:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-816]
.L1227:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L1228
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-812]
	b	.L1229
.L1228:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-812]
.L1229:
	ldr	r2, [fp, #-812]
	ldr	r3, [fp, #-816]
	cmp	r2, r3
	ble	.L1230
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-820]
	ldr	r3, [fp, #-820]
	cmn	r3, #2048
	bge	.L1231
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
	b	.L1232
.L1231:
	ldr	r2, [fp, #-820]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1233
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
	b	.L1232
.L1233:
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
.L1232:
	ldr	r3, [fp, #-820]
	cmp	r3, #0
	bge	.L1234
	ldr	r3, [fp, #-844]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-844]
.L1234:
	ldr	r3, [fp, #-844]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-844]
	b	.L1235
.L1230:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-820]
	ldr	r3, [fp, #-820]
	cmn	r3, #2048
	bge	.L1236
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
	b	.L1235
.L1236:
	ldr	r2, [fp, #-820]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1237
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
	b	.L1235
.L1237:
	ldr	r1, [fp, #-820]
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
	str	r3, [fp, #-844]
.L1235:
	ldr	r3, [fp, #-844]
	str	r3, [fp, #-836]
	ldr	r2, [fp, #-840]
	ldr	r3, [fp, #-836]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-840]
	ldr	r3, [fp, #-836]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1238
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1239
.L1238:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1240
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1239
.L1240:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1241
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1239
.L1241:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1242
	mov	r3, #4096
	str	r3, [fp, #-808]
	b	.L1239
.L1242:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1243
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1239
.L1243:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1244
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1239
.L1244:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
.L1239:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1245
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1245:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1247
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1247:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1248
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1248:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1249
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1249:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1250
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1250:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1251
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1246
.L1251:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
.L1246:
	ldr	r3, [fp, #-808]
	rsb	r3, r3, #0
	str	r3, [fp, #-1572]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1252
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1252:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1254
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1254:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1255
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1255:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1256
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1256:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1257
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1257:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1258
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1253
.L1258:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
.L1253:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1560]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1259
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1260
.L1259:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1261
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1260
.L1261:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1262
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1260
.L1262:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1263
	mov	r3, #4096
	str	r3, [fp, #-808]
	b	.L1260
.L1263:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1264
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1260
.L1264:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1265
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
	b	.L1260
.L1265:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-808]
.L1260:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1266
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1267
.L1266:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1268
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1267
.L1268:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1269
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1267
.L1269:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1270
	mov	r3, #4096
	str	r3, [fp, #-808]
	b	.L1267
.L1270:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1271
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1267
.L1271:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1272
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1267
.L1272:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
.L1267:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1273
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1273:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1275
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1275:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1276
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1276:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1277
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1277:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1278
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1278:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1279
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1274
.L1279:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
.L1274:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1508]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1280
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1280:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1282
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1282:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1283
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1283:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1284
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1284:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1285
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1285:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1286
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1281
.L1286:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
.L1281:
	ldr	r3, [fp, #-808]
	rsb	r3, r3, #0
	str	r3, [fp, #-1496]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1287
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1288
.L1287:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1289
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1288
.L1289:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1290
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1288
.L1290:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1291
	mov	r3, #4096
	str	r3, [fp, #-808]
	b	.L1288
.L1291:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1292
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1288
.L1292:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1293
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
	b	.L1288
.L1293:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-808]
.L1288:
	ldr	r3, [fp, #-808]
	str	r3, [fp, #-1492]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1664]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1660]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1656]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1652]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1648]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1644]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1640]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1636]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1632]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1628]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1624]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1620]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1616]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1724]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1708]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1692]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1676]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1720]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1704]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1688]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1672]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1716]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1700]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1684]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1668]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1612]
	ldr	r3, [fp, #-1712]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1608]
	ldr	r3, [fp, #-1696]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1604]
	ldr	r3, [fp, #-1680]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1600]
	ldr	r3, [fp, #-1664]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L1294
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-788]
	b	.L1295
.L1294:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-788]
.L1295:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L1296
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-784]
	b	.L1297
.L1296:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-784]
.L1297:
	ldr	r2, [fp, #-784]
	ldr	r3, [fp, #-788]
	cmp	r2, r3
	ble	.L1298
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-792]
	ldr	r3, [fp, #-792]
	cmn	r3, #2048
	bge	.L1299
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
	b	.L1300
.L1299:
	ldr	r2, [fp, #-792]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1301
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
	b	.L1300
.L1301:
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
.L1300:
	ldr	r3, [fp, #-792]
	cmp	r3, #0
	bge	.L1302
	ldr	r3, [fp, #-804]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-804]
.L1302:
	ldr	r3, [fp, #-804]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-804]
	b	.L1303
.L1298:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-792]
	ldr	r3, [fp, #-792]
	cmn	r3, #2048
	bge	.L1304
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
	b	.L1303
.L1304:
	ldr	r2, [fp, #-792]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1305
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
	b	.L1303
.L1305:
	ldr	r1, [fp, #-792]
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
	str	r3, [fp, #-804]
.L1303:
	ldr	r3, [fp, #-804]
	str	r3, [fp, #-800]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L1306
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-776]
	b	.L1307
.L1306:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-776]
.L1307:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L1308
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-772]
	b	.L1309
.L1308:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-772]
.L1309:
	ldr	r2, [fp, #-772]
	ldr	r3, [fp, #-776]
	cmp	r2, r3
	ble	.L1310
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-780]
	ldr	r3, [fp, #-780]
	cmn	r3, #2048
	bge	.L1311
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
	b	.L1312
.L1311:
	ldr	r2, [fp, #-780]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1313
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
	b	.L1312
.L1313:
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
.L1312:
	ldr	r3, [fp, #-780]
	cmp	r3, #0
	bge	.L1314
	ldr	r3, [fp, #-804]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-804]
.L1314:
	ldr	r3, [fp, #-804]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-804]
	b	.L1315
.L1310:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-780]
	ldr	r3, [fp, #-780]
	cmn	r3, #2048
	bge	.L1316
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
	b	.L1315
.L1316:
	ldr	r2, [fp, #-780]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1317
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
	b	.L1315
.L1317:
	ldr	r1, [fp, #-780]
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
	str	r3, [fp, #-804]
.L1315:
	ldr	r3, [fp, #-804]
	str	r3, [fp, #-796]
	ldr	r2, [fp, #-800]
	ldr	r3, [fp, #-796]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-800]
	ldr	r3, [fp, #-796]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1318
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1319
.L1318:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1320
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1319
.L1320:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1321
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1319
.L1321:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1322
	mov	r3, #4096
	str	r3, [fp, #-768]
	b	.L1319
.L1322:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1323
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1319
.L1323:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1324
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1319
.L1324:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
.L1319:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1576]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1325
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1325:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1327
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1327:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1328
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1328:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1329
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1329:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1330
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1330:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1331
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1326
.L1331:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
.L1326:
	ldr	r3, [fp, #-768]
	rsb	r3, r3, #0
	str	r3, [fp, #-1568]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1332
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1332:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1334
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1334:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1335
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1335:
	ldr	r2, [fp, #-1452]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1336
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1336:
	ldr	r2, [fp, #-1452]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1337
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1337:
	ldr	r2, [fp, #-1452]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1338
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1333
.L1338:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
.L1333:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1544]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1339
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1340
.L1339:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1341
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1340
.L1341:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1342
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1340
.L1342:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1343
	mov	r3, #4096
	str	r3, [fp, #-768]
	b	.L1340
.L1343:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1344
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1340
.L1344:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1345
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
	b	.L1340
.L1345:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-768]
.L1340:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1346
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1347
.L1346:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1348
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1347
.L1348:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1349
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1347
.L1349:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1350
	mov	r3, #4096
	str	r3, [fp, #-768]
	b	.L1347
.L1350:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1351
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1347
.L1351:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1352
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1347
.L1352:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
.L1347:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1512]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1353
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1353:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1355
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1355:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1356
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1356:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1357
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1357:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1358
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1358:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1359
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1354
.L1359:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
.L1354:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1504]
	ldr	r2, [fp, #-1448]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1360
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1360:
	ldr	r2, [fp, #-1448]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1362
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1362:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3856
	sub	r3, r3, #4
	cmp	r2, r3
	bge	.L1363
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1363:
	ldr	r2, [fp, #-1448]
	mov	r3, #3856
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L1364
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1364:
	ldr	r2, [fp, #-1448]
	mov	r3, #6400
	add	r3, r3, #33
	cmp	r2, r3
	bgt	.L1365
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1365:
	ldr	r2, [fp, #-1448]
	mov	r3, #8960
	add	r3, r3, #47
	cmp	r2, r3
	bgt	.L1366
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1361
.L1366:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
.L1361:
	ldr	r3, [fp, #-768]
	rsb	r3, r3, #0
	str	r3, [fp, #-1480]
	ldr	r2, [fp, #-1448]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1367
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1368
.L1367:
	ldr	r2, [fp, #-1448]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1369
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1368
.L1369:
	ldr	r3, [fp, #-1448]
	cmn	r3, #644
	bge	.L1370
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1368
.L1370:
	ldr	r2, [fp, #-1448]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1371
	mov	r3, #4096
	str	r3, [fp, #-768]
	b	.L1368
.L1371:
	ldr	r3, [fp, #-1448]
	cmp	r3, #3216
	bgt	.L1372
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1368
.L1372:
	ldr	r2, [fp, #-1448]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1373
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
	b	.L1368
.L1373:
	ldr	r1, [fp, #-1448]
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
	str	r3, [fp, #-768]
.L1368:
	ldr	r3, [fp, #-768]
	str	r3, [fp, #-1472]
	ldr	r3, [fp, #-1596]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1592]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1588]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1584]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1580]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1576]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1572]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1568]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1564]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1560]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1556]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1552]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1548]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1544]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1540]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1536]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1724]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1720]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1716]
	ldr	r3, [fp, #-1728]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1712]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1708]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1704]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1700]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1696]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1692]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1688]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1684]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1680]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-1676]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #4]
	str	r3, [fp, #-1672]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1668]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1664]
	ldr	r3, [fp, #-1532]
	str	r3, [fp, #-1660]
	ldr	r3, [fp, #-1528]
	str	r3, [fp, #-1656]
	ldr	r3, [fp, #-1524]
	str	r3, [fp, #-1652]
	ldr	r3, [fp, #-1520]
	str	r3, [fp, #-1648]
	ldr	r3, [fp, #-1516]
	str	r3, [fp, #-1644]
	ldr	r3, [fp, #-1512]
	str	r3, [fp, #-1640]
	ldr	r3, [fp, #-1508]
	str	r3, [fp, #-1636]
	ldr	r3, [fp, #-1504]
	str	r3, [fp, #-1632]
	ldr	r3, [fp, #-1500]
	str	r3, [fp, #-1628]
	ldr	r3, [fp, #-1496]
	str	r3, [fp, #-1624]
	ldr	r3, [fp, #-1492]
	str	r3, [fp, #-1620]
	ldr	r3, [fp, #-1488]
	str	r3, [fp, #-1616]
	ldr	r3, [fp, #-1484]
	str	r3, [fp, #-1612]
	ldr	r3, [fp, #-1480]
	str	r3, [fp, #-1608]
	ldr	r3, [fp, #-1476]
	str	r3, [fp, #-1604]
	ldr	r3, [fp, #-1472]
	str	r3, [fp, #-1600]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-1728]
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #16
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #32
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-1728]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1724]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1720]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1716]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1712]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r2, r1, r3
	ldr	r3, [fp, #-1728]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1708]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1704]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1700]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #16
	ldr	r3, [fp, #-1728]
	add	r3, r3, #16
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1696]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1692]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1688]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1684]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #32
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1680]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1660]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1644]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1628]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1612]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1656]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1640]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1624]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #4]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1608]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #4]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1652]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1636]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1620]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #8]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1604]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #8]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1676]
	ldr	r3, [fp, #-1648]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1672]
	ldr	r3, [fp, #-1632]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1668]
	ldr	r3, [fp, #-1616]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r0, r3, #48
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-1664]
	ldr	r3, [fp, #-1600]
	mul	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r1, r3
	str	r3, [r0, #12]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1468]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1464]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #8]
	str	r3, [fp, #-1460]
	ldr	r3, [fp, #-1728]
	add	r3, r3, #48
	ldr	r3, [r3, #12]
	str	r3, [fp, #-1456]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	cmp	r3, #0
	bge	.L1374
	ldr	r3, [fp, #-1468]
	ldr	r2, [fp, #-1456]
	rsb	r3, r2, r3
	str	r3, [fp, #-748]
	b	.L1375
.L1374:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	rsb	r3, r2, r3
	str	r3, [fp, #-748]
.L1375:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L1376
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-744]
	b	.L1377
.L1376:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	add	r3, r3, r2
	str	r3, [fp, #-744]
.L1377:
	ldr	r2, [fp, #-744]
	ldr	r3, [fp, #-748]
	cmp	r2, r3
	ble	.L1378
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-752]
	ldr	r3, [fp, #-752]
	cmn	r3, #2048
	bge	.L1379
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
	b	.L1380
.L1379:
	ldr	r2, [fp, #-752]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1381
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
	b	.L1380
.L1381:
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
.L1380:
	ldr	r3, [fp, #-752]
	cmp	r3, #0
	bge	.L1382
	ldr	r3, [fp, #-764]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-764]
.L1382:
	ldr	r3, [fp, #-764]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-764]
	b	.L1383
.L1378:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-752]
	ldr	r3, [fp, #-752]
	cmn	r3, #2048
	bge	.L1384
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
	b	.L1383
.L1384:
	ldr	r2, [fp, #-752]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1385
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
	b	.L1383
.L1385:
	ldr	r1, [fp, #-752]
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
	str	r3, [fp, #-764]
.L1383:
	ldr	r3, [fp, #-764]
	str	r3, [fp, #-760]
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	cmp	r3, #0
	bge	.L1386
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	rsb	r3, r3, #0
	str	r3, [fp, #-736]
	b	.L1387
.L1386:
	ldr	r3, [fp, #-1456]
	ldr	r2, [fp, #-1468]
	add	r3, r3, r2
	str	r3, [fp, #-736]
.L1387:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	cmp	r3, #0
	bge	.L1388
	ldr	r3, [fp, #-1464]
	ldr	r2, [fp, #-1460]
	rsb	r3, r2, r3
	str	r3, [fp, #-732]
	b	.L1389
.L1388:
	ldr	r3, [fp, #-1460]
	ldr	r2, [fp, #-1464]
	rsb	r3, r2, r3
	str	r3, [fp, #-732]
.L1389:
	ldr	r2, [fp, #-732]
	ldr	r3, [fp, #-736]
	cmp	r2, r3
	ble	.L1390
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-740]
	ldr	r3, [fp, #-740]
	cmn	r3, #2048
	bge	.L1391
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
	b	.L1392
.L1391:
	ldr	r2, [fp, #-740]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1393
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
	b	.L1392
.L1393:
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
.L1392:
	ldr	r3, [fp, #-740]
	cmp	r3, #0
	bge	.L1394
	ldr	r3, [fp, #-764]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-764]
.L1394:
	ldr	r3, [fp, #-764]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-764]
	b	.L1395
.L1390:
	ldr	r2, [fp, #-1460]
	ldr	r3, [fp, #-1464]
	rsb	r3, r3, r2
	mov	r1, r3, asl #12
	ldr	r2, [fp, #-1456]
	ldr	r3, [fp, #-1468]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-740]
	ldr	r3, [fp, #-740]
	cmn	r3, #2048
	bge	.L1396
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
	b	.L1395
.L1396:
	ldr	r2, [fp, #-740]
	mov	r3, #2032
	add	r3, r3, #15
	cmp	r2, r3
	bgt	.L1397
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
	b	.L1395
.L1397:
	ldr	r1, [fp, #-740]
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
	str	r3, [fp, #-764]
.L1395:
	ldr	r3, [fp, #-764]
	str	r3, [fp, #-756]
	ldr	r2, [fp, #-760]
	ldr	r3, [fp, #-756]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-1452]
	ldr	r2, [fp, #-760]
	ldr	r3, [fp, #-756]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-1448]
	mov	r3, #4096
	str	r3, [fp, #-1532]
	mov	r3, #0
	str	r3, [fp, #-1528]
	mov	r3, #0
	str	r3, [fp, #-1524]
	mov	r3, #0
	str	r3, [fp, #-1520]
	mov	r3, #0
	str	r3, [fp, #-1516]
	mov	r3, #4096
	str	r3, [fp, #-1512]
	mov	r3, #0
	str	r3, [fp, #-1508]
	mov	r3, #0
	str	r3, [fp, #-1504]
	mov	r3, #0
	str	r3, [fp, #-1500]
	mov	r3, #0
	str	r3, [fp, #-1496]
	mov	r3, #4096
	str	r3, [fp, #-1492]
	mov	r3, #0
	str	r3, [fp, #-1488]
	mov	r3, #0
	str	r3, [fp, #-1484]
	mov	r3, #0
	str	r3, [fp, #-1480]
	mov	r3, #0
	str	r3, [fp, #-1476]
	mov	r3, #4096
	str	r3, [fp, #-1472]
	mov	r3, #4096
	str	r3, [fp, #-1596]
	mov	r3, #0
	str	r3, [fp, #-1592]
	mov	r3, #0
	str	r3, [fp, #-1588]
	mov	r3, #0
	str	r3, [fp, #-1584]
	mov	r3, #0
	str	r3, [fp, #-1580]
	mov	r3, #4096
	str	r3, [fp, #-1576]
	mov	r3, #0
	str	r3, [fp, #-1572]
	mov	r3, #0
	str	r3, [fp, #-1568]
	mov	r3, #0
	str	r3, [fp, #-1564]
	mov	r3, #0
	str	r3, [fp, #-1560]
	mov	r3, #4096
	str	r3, [fp, #-1556]
	mov	r3, #0
	str	r3, [fp, #-1552]
	mov	r3, #0
	str	r3, [fp, #-1548]
	mov	r3, #0
	str	r3, [fp, #-1544]
	mov	r3, #0
	str	r3, [fp, #-1540]
	mov	r3, #4096
	str	r3, [fp, #-1536]
	ldr	r2, [fp, #-1452]
	mvn	r3, #10240
	sub	r3, r3, #54
	cmp	r2, r3
	bge	.L1398
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1399
.L1398:
	ldr	r2, [fp, #-1452]
	mvn	r3, #3216
	cmp	r2, r3
	bge	.L1400
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1399
.L1400:
	ldr	r3, [fp, #-1452]
	cmn	r3, #644
	bge	.L1401
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1399
.L1401:
	ldr	r2, [fp, #-1452]
	mov	r3, #640
	add	r3, r3, #3
	cmp	r2, r3
	bgt	.L1402
	mov	r3, #4096
	str	r3, [fp, #-728]
	b	.L1399
.L1402:
	ldr	r3, [fp, #-1452]
	cmp	r3, #3216
	bgt	.L1403
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1399
.L1403:
	ldr	r2, [fp, #-1452]
	mov	r3, #10240
	add	r3, r3, #54
	cmp	r2, r3
	bgt	.L1404
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1399
.L1404:
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
.L1399:
	ldr	r3, [fp, #-728]
	str	r3, [fp, #-1556]
	ldr	r2, [fp, #-1452]
	mvn	r3, #8960
	sub	r3, r3, #47
	cmp	r2, r3
	bge	.L1405
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1406
.L1405:
	ldr	r2, [fp, #-1452]
	mvn	r3, #6400
	sub	r3, r3, #33
	cmp	r2, r3
	bge	.L1407
	ldr	r1, [fp, #-1452]
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
	str	r3, [fp, #-728]
	b	.L1406