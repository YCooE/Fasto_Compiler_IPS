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
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_tmp_3_,_param_x_1_,0
# 	ori	_write_intres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_x_4_, 2, 0
# 	ori	_arr_reg_7_,_param_x_4_,0
	lw	$16, 0($10)
# was:	lw	_size_reg_6_, 0(_arr_reg_7_)
	ori	$17, $28, 0
# was:	ori	_write_int_arrres_5_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_int_arrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_int_arrres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_11_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_8_, _arr_reg_7_, 4
_loop_beg_12_:
	sub	$10, $19, $16
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_6_
	bgez	$10, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	lw	$2, 0($20)
# was:	lw	_res_reg_9_, 0(_elem_reg_8_)
# 	ori	2,_res_reg_9_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_15_,2,0
# 	ori	_res_reg_9_,_tmp_reg_15_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_8_, _elem_reg_8_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_9_, 0(_addr_reg_10_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_10_, _addr_reg_10_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	ori	$2, $17, 0
# was:	ori	2, _write_int_arrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isMul16
isMul16:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_17_,2,0
# 	ori	_divide_L_23_,_param_a_17_,0
	ori	$10, $0, 16
# was:	ori	_divide_R_24_, 0, 16
	div	$11, $2, $10
# was:	div	_times_L_21_, _divide_L_23_, _divide_R_24_
	ori	$10, $0, 16
# was:	ori	_times_R_22_, 0, 16
	mul	$10, $11, $10
# was:	mul	_eq_L_19_, _times_L_21_, _times_R_22_
# 	ori	_eq_R_20_,_param_a_17_,0
	ori	$11, $0, 0
# was:	ori	_isMul16res_18_, 0, 0
	bne	$10, $2, _false_25_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_25_
	ori	$11, $0, 1
# was:	ori	_isMul16res_18_, 0, 1
_false_25_:
	ori	$2, $11, 0
# was:	ori	2, _isMul16res_18_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$22, -32($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -36
	jal	getint
# was:	jal	getint, 2
	ori	$10, $2, 0
# was:	ori	_letBind_27_, 2, 0
# 	ori	_size_reg_34_,_letBind_27_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_34_, _size_reg_34_, -1
	bgez	$10, _safe_lab_35_
# was:	bgez	_size_reg_34_, _safe_lab_35_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_35_:
	addi	$10, $10, 1
# was:	addi	_size_reg_34_, _size_reg_34_, 1
	ori	$14, $28, 0
# was:	ori	_arr_reg_30_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_41_, _size_reg_34_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_41_, _tmp_41_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_41_
	sw	$10, 0($14)
# was:	sw	_size_reg_34_, 0(_arr_reg_30_)
	addi	$12, $14, 4
# was:	addi	_addr_reg_36_, _arr_reg_30_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_37_, 0, 0
_loop_beg_38_:
	sub	$11, $13, $10
# was:	sub	_tmp_reg_40_, _i_reg_37_, _size_reg_34_
	bgez	$11, _loop_end_39_
# was:	bgez	_tmp_reg_40_, _loop_end_39_
	sw	$13, 0($12)
# was:	sw	_i_reg_37_, 0(_addr_reg_36_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_36_, _addr_reg_36_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_37_, _i_reg_37_, 1
	j	_loop_beg_38_
_loop_end_39_:
	lw	$10, 0($14)
# was:	lw	_size_reg_29_, 0(_arr_reg_30_)
	ori	$11, $28, 0
# was:	ori	_letBind_28_, 28, 0
	sll	$12, $10, 2
# was:	sll	_tmp_56_, _size_reg_29_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_56_, _tmp_56_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_56_
	sw	$10, 0($11)
# was:	sw	_size_reg_29_, 0(_letBind_28_)
	addi	$12, $11, 4
# was:	addi	_addr_reg_42_, _letBind_28_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_43_, 0, 0
	addi	$14, $14, 4
# was:	addi	_elem_reg_31_, _arr_reg_30_, 4
	ori	$15, $0, 0
# was:	ori	_counter_reg_33_, 0, 0
_loop_beg_44_:
	sub	$16, $13, $10
# was:	sub	_tmp_reg_46_, _i_reg_43_, _size_reg_29_
	bgez	$16, _loop_end_45_
# was:	bgez	_tmp_reg_46_, _loop_end_45_
	lw	$18, 0($14)
# was:	lw	_res_reg_32_, 0(_elem_reg_31_)
# 	ori	_eq_L_48_,_res_reg_32_,0
	ori	$17, $18, 0
# was:	ori	_divide_L_52_, _res_reg_32_, 0
	ori	$16, $0, 2
# was:	ori	_divide_R_53_, 0, 2
	div	$17, $17, $16
# was:	div	_times_L_50_, _divide_L_52_, _divide_R_53_
	ori	$16, $0, 2
# was:	ori	_times_R_51_, 0, 2
	mul	$17, $17, $16
# was:	mul	_eq_R_49_, _times_L_50_, _times_R_51_
	ori	$16, $0, 0
# was:	ori	_fun_arg_res_47_, 0, 0
	bne	$18, $17, _false_54_
# was:	bne	_eq_L_48_, _eq_R_49_, _false_54_
	ori	$16, $0, 1
# was:	ori	_fun_arg_res_47_, 0, 1
_false_54_:
# 	ori	_tmp_reg_46_,_fun_arg_res_47_,0
	addi	$14, $14, 4
# was:	addi	_elem_reg_31_, _elem_reg_31_, 4
	beq	$16, $0, _pred_false_55_
# was:	beq	_tmp_reg_46_, 0, _pred_false_55_
	addi	$15, $15, 1
# was:	addi	_counter_reg_33_, _counter_reg_33_, 1
	sw	$18, 0($12)
# was:	sw	_res_reg_32_, 0(_addr_reg_42_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_42_, _addr_reg_42_, 4
_pred_false_55_:
	addi	$13, $13, 1
# was:	addi	_i_reg_43_, _i_reg_43_, 1
	j	_loop_beg_44_
_loop_end_45_:
	sw	$15, 0($11)
# was:	sw	_counter_reg_33_, 0(_letBind_28_)
	ori	$10, $11, 0
# was:	ori	_arr_reg_59_, _letBind_28_, 0
	lw	$12, 0($10)
# was:	lw	_size_reg_58_, 0(_arr_reg_59_)
	ori	$11, $28, 0
# was:	ori	_letBind_57_, 28, 0
	sll	$13, $12, 2
# was:	sll	_tmp_70_, _size_reg_58_, 2
	addi	$13, $13, 4
# was:	addi	_tmp_70_, _tmp_70_, 4
	add	$28, $28, $13
# was:	add	28, 28, _tmp_70_
	sw	$12, 0($11)
# was:	sw	_size_reg_58_, 0(_letBind_57_)
	addi	$14, $11, 4
# was:	addi	_addr_reg_62_, _letBind_57_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_63_, 0, 0
	addi	$10, $10, 4
# was:	addi	_elem_reg_60_, _arr_reg_59_, 4
_loop_beg_64_:
	sub	$15, $13, $12
# was:	sub	_tmp_reg_66_, _i_reg_63_, _size_reg_58_
	bgez	$15, _loop_end_65_
# was:	bgez	_tmp_reg_66_, _loop_end_65_
	lw	$15, 0($10)
# was:	lw	_res_reg_61_, 0(_elem_reg_60_)
# 	ori	_times_L_68_,_res_reg_61_,0
	ori	$16, $15, 0
# was:	ori	_times_R_69_, _res_reg_61_, 0
	mul	$15, $15, $16
# was:	mul	_fun_arg_res_67_, _times_L_68_, _times_R_69_
# 	ori	_res_reg_61_,_fun_arg_res_67_,0
	addi	$10, $10, 4
# was:	addi	_elem_reg_60_, _elem_reg_60_, 4
	sw	$15, 0($14)
# was:	sw	_res_reg_61_, 0(_addr_reg_62_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_62_, _addr_reg_62_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_63_, _i_reg_63_, 1
	j	_loop_beg_64_
_loop_end_65_:
# 	ori	_arr_reg_73_,_letBind_57_,0
	lw	$17, 0($11)
# was:	lw	_size_reg_72_, 0(_arr_reg_73_)
	ori	$16, $28, 0
# was:	ori	_letBind_71_, 28, 0
	sll	$10, $17, 2
# was:	sll	_tmp_84_, _size_reg_72_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_84_, _tmp_84_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_84_
	sw	$17, 0($16)
# was:	sw	_size_reg_72_, 0(_letBind_71_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_77_, _letBind_71_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_78_, 0, 0
	addi	$21, $11, 4
# was:	addi	_elem_reg_74_, _arr_reg_73_, 4
	ori	$22, $0, 0
# was:	ori	_counter_reg_76_, 0, 0
_loop_beg_79_:
	sub	$2, $18, $17
# was:	sub	_tmp_reg_81_, _i_reg_78_, _size_reg_72_
	bgez	$2, _loop_end_80_
# was:	bgez	_tmp_reg_81_, _loop_end_80_
	lw	$20, 0($21)
# was:	lw	_res_reg_75_, 0(_elem_reg_74_)
	ori	$2, $20, 0
# was:	ori	2, _res_reg_75_, 0
	jal	isMul16
# was:	jal	isMul16, 2
# 	ori	_tmp_reg_82_,2,0
# 	ori	_tmp_reg_81_,_tmp_reg_82_,0
	addi	$21, $21, 4
# was:	addi	_elem_reg_74_, _elem_reg_74_, 4
	beq	$2, $0, _pred_false_83_
# was:	beq	_tmp_reg_81_, 0, _pred_false_83_
	addi	$22, $22, 1
# was:	addi	_counter_reg_76_, _counter_reg_76_, 1
	sw	$20, 0($19)
# was:	sw	_res_reg_75_, 0(_addr_reg_77_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_77_, _addr_reg_77_, 4
_pred_false_83_:
	addi	$18, $18, 1
# was:	addi	_i_reg_78_, _i_reg_78_, 1
	j	_loop_beg_79_
_loop_end_80_:
	sw	$22, 0($16)
# was:	sw	_counter_reg_76_, 0(_letBind_71_)
# 	ori	_arg_85_,_letBind_71_,0
	ori	$2, $16, 0
# was:	ori	2, _arg_85_, 0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_mainres_26_,2,0
# 	ori	2,_mainres_26_,0
	addi	$29, $29, 36
	lw	$22, -32($29)
	lw	$21, -28($29)
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