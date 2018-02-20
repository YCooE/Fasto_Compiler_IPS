	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _1__str__17_
# was:	la	_1__str__17__addr, _1__str__17_
	ori	$10, $0, 1
# was:	ori	_1__str__17__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_1__str__17__init, 0(_1__str__17__addr)
	la	$11, _0__str__4_
# was:	la	_0__str__4__addr, _0__str__4_
	ori	$10, $0, 1
# was:	ori	_0__str__4__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_0__str__4__init, 0(_0__str__4__addr)
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function fail
fail:
	sw	$31, -4($29)
	addi	$29, $29, -8
	la	$2, _0__str__4_
# was:	la	_tmp_3_, _0__str__4_
# _0__str__4_: string "0"
# 	ori	_letBind_2_,_tmp_3_,0
# 	ori	2,_tmp_3_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 0
# was:	ori	_failres_1_, 0, 0
# 	ori	2,_failres_1_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function test3
test3:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$11, $0, 0
# was:	ori	_letBind_6_, 0, 0
	ori	$12, $0, 0
# was:	ori	_letBind_7_, 0, 0
# 	ori	_and_L_12_,_letBind_6_,0
	ori	$10, $0, 0
# was:	ori	_cond_11_, 0, 0
	beq	$11, $10, _false_14_
# was:	beq	_and_L_12_, _cond_11_, _false_14_
# 	ori	_and_R_13_,_letBind_7_,0
	beq	$12, $10, _false_14_
# was:	beq	_and_R_13_, _cond_11_, _false_14_
	ori	$10, $0, 1
# was:	ori	_cond_11_, 0, 1
_false_14_:
	bne	$10, $0, _then_8_
# was:	bne	_cond_11_, 0, _then_8_
	j	_else_9_
_then_8_:
	jal	fail
# was:	jal	fail, 
# 	ori	_test3res_5_,2,0
	j	_endif_10_
_else_9_:
	la	$2, _1__str__17_
# was:	la	_tmp_16_, _1__str__17_
# _1__str__17_: string "1"
# 	ori	_letBind_15_,_tmp_16_,0
# 	ori	2,_tmp_16_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 1
# was:	ori	_test3res_5_, 0, 1
_endif_10_:
# 	ori	2,_test3res_5_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function test2
test2:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$11, $0, 1
# was:	ori	_letBind_19_, 0, 1
	ori	$12, $0, 0
# was:	ori	_letBind_20_, 0, 0
# 	ori	_and_L_25_,_letBind_19_,0
	ori	$10, $0, 0
# was:	ori	_cond_24_, 0, 0
	beq	$11, $10, _false_27_
# was:	beq	_and_L_25_, _cond_24_, _false_27_
# 	ori	_and_R_26_,_letBind_20_,0
	beq	$12, $10, _false_27_
# was:	beq	_and_R_26_, _cond_24_, _false_27_
	ori	$10, $0, 1
# was:	ori	_cond_24_, 0, 1
_false_27_:
	bne	$10, $0, _then_21_
# was:	bne	_cond_24_, 0, _then_21_
	j	_else_22_
_then_21_:
	jal	fail
# was:	jal	fail, 
# 	ori	_test2res_18_,2,0
	j	_endif_23_
_else_22_:
	jal	test3
# was:	jal	test3, 
# 	ori	_test2res_18_,2,0
_endif_23_:
# 	ori	2,_test2res_18_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function test1
test1:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$12, $0, 0
# was:	ori	_letBind_29_, 0, 0
	ori	$11, $0, 1
# was:	ori	_letBind_30_, 0, 1
# 	ori	_and_L_35_,_letBind_29_,0
	ori	$10, $0, 0
# was:	ori	_cond_34_, 0, 0
	beq	$12, $10, _false_37_
# was:	beq	_and_L_35_, _cond_34_, _false_37_
# 	ori	_and_R_36_,_letBind_30_,0
	beq	$11, $10, _false_37_
# was:	beq	_and_R_36_, _cond_34_, _false_37_
	ori	$10, $0, 1
# was:	ori	_cond_34_, 0, 1
_false_37_:
	bne	$10, $0, _then_31_
# was:	bne	_cond_34_, 0, _then_31_
	j	_else_32_
_then_31_:
	jal	fail
# was:	jal	fail, 
# 	ori	_test1res_28_,2,0
	j	_endif_33_
_else_32_:
	jal	test2
# was:	jal	test2, 
# 	ori	_test1res_28_,2,0
_endif_33_:
# 	ori	2,_test1res_28_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$12, $0, 1
# was:	ori	_letBind_39_, 0, 1
	ori	$10, $0, 1
# was:	ori	_letBind_40_, 0, 1
# 	ori	_and_L_45_,_letBind_39_,0
	ori	$11, $0, 0
# was:	ori	_cond_44_, 0, 0
	beq	$12, $11, _false_47_
# was:	beq	_and_L_45_, _cond_44_, _false_47_
# 	ori	_and_R_46_,_letBind_40_,0
	beq	$10, $11, _false_47_
# was:	beq	_and_R_46_, _cond_44_, _false_47_
	ori	$11, $0, 1
# was:	ori	_cond_44_, 0, 1
_false_47_:
	bne	$11, $0, _then_41_
# was:	bne	_cond_44_, 0, _then_41_
	j	_else_42_
_then_41_:
	jal	test1
# was:	jal	test1, 
# 	ori	_mainres_38_,2,0
	j	_endif_43_
_else_42_:
	jal	fail
# was:	jal	fail, 
# 	ori	_mainres_38_,2,0
_endif_43_:
# 	ori	2,_mainres_38_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_1__str__17_:
	.space	4
	.asciiz	"1"
	.align	2
_0__str__4_:
	.space	4
	.asciiz	"0"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000