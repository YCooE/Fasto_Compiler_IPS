	.text	0x00400000
	.globl	main
	la	$28, _heap_
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
# Function writeBool
writeBool:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_b_1_, 2, 0
# 	ori	_tmp_3_,_param_b_1_,0
# 	ori	_writeBoolres_2_,_tmp_3_,0
	la	$2, _true
# was:	la	2, _true
	bne	$16, $0, _wBoolF_4_
# was:	bne	_writeBoolres_2_, 0, _wBoolF_4_
	la	$2, _false
# was:	la	2, _false
_wBoolF_4_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $16, 0
# was:	ori	2, _writeBoolres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$12, $0, 7
# was:	ori	_size_reg_7_, 0, 7
	ori	$14, $0, 0
# was:	ori	_elem_reg_9_, 0, 0
	addi	$12, $12, -1
# was:	addi	_size_reg_7_, _size_reg_7_, -1
	bgez	$12, _safe_lab_14_
# was:	bgez	_size_reg_7_, _safe_lab_14_
	ori	$5, $0, 1
# was:	ori	5, 0, 1
	j	_IllegalArrSizeError_
_safe_lab_14_:
	addi	$12, $12, 1
# was:	addi	_size_reg_7_, _size_reg_7_, 1
	ori	$10, $28, 0
# was:	ori	_letBind_6_, 28, 0
	addi	$11, $12, 3
# was:	addi	_tmp_16_, _size_reg_7_, 3
	sra	$11, $11, 2
# was:	sra	_tmp_16_, _tmp_16_, 2
	sll	$11, $11, 2
# was:	sll	_tmp_16_, _tmp_16_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_16_
	sw	$12, 0($10)
# was:	sw	_size_reg_7_, 0(_letBind_6_)
	addi	$12, $10, 4
# was:	addi	_addr_reg_15_, _letBind_6_, 4
	ori	$13, $0, 0
# was:	ori	_ind_var_10_, 0, 0
_loop_beg_12_:
	sub	$11, $13, $15
# was:	sub	_tmp_reg_11_, _ind_var_10_, _arr_reg_8_
	bgez	$11, _loop_end_13_
# was:	bgez	_tmp_reg_11_, _loop_end_13_
	sb	$14, 0($12)
# was:	sb	_elem_reg_9_, 0(_addr_reg_15_)
	addi	$12, $10, 1
# was:	addi	_addr_reg_15_, _letBind_6_, 1
	addi	$13, $13, 1
# was:	addi	_ind_var_10_, _ind_var_10_, 1
	j	_loop_beg_12_
_loop_end_13_:
# 	ori	_arr_reg_18_,_letBind_6_,0
	lw	$16, 0($10)
# was:	lw	_size_reg_17_, 0(_arr_reg_18_)
	ori	$17, $28, 0
# was:	ori	_mainres_5_, 28, 0
	addi	$11, $16, 3
# was:	addi	_tmp_27_, _size_reg_17_, 3
	sra	$11, $11, 2
# was:	sra	_tmp_27_, _tmp_27_, 2
	sll	$11, $11, 2
# was:	sll	_tmp_27_, _tmp_27_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_27_, _tmp_27_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_27_
	sw	$16, 0($17)
# was:	sw	_size_reg_17_, 0(_mainres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_21_, _mainres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_22_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_19_, _arr_reg_18_, 4
_loop_beg_23_:
	sub	$10, $19, $16
# was:	sub	_tmp_reg_25_, _i_reg_22_, _size_reg_17_
	bgez	$10, _loop_end_24_
# was:	bgez	_tmp_reg_25_, _loop_end_24_
	lb	$2, 0($20)
# was:	lb	_res_reg_20_, 0(_elem_reg_19_)
# 	ori	2,_res_reg_20_,0
	jal	writeBool
# was:	jal	writeBool, 2
# 	ori	_tmp_reg_26_,2,0
# 	ori	_res_reg_20_,_tmp_reg_26_,0
	addi	$20, $20, 1
# was:	addi	_elem_reg_19_, _elem_reg_19_, 1
	sb	$2, 0($18)
# was:	sb	_res_reg_20_, 0(_addr_reg_21_)
	addi	$18, $18, 1
# was:	addi	_addr_reg_21_, _addr_reg_21_, 1
	addi	$19, $19, 1
# was:	addi	_i_reg_22_, _i_reg_22_, 1
	j	_loop_beg_23_
_loop_end_24_:
	ori	$2, $17, 0
# was:	ori	2, _mainres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
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