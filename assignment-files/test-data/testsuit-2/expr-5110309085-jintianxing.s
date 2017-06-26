	.data
	.word 1
_static_43:
	.asciiz "\n"
	.align 2
	.word 1
_static_47:
	.asciiz " "
	.align 2
_static_44:
	.word 0
_static_45:
	.word 0
_static_46:
	.word 0
	.data
_buffer:
	.word 0
	.text
_buffer_init:
	li $a0, 256
	li $v0, 9
	syscall
	sw $v0, _buffer
	jr $ra
	.text
main:
	jal _buffer_init
	add $fp, $zero, $sp
	li $t0, 1
	sw $t0, _static_44
	li $t0, 1
	sw $t0, _static_45
	li $t0, 1
	sw $t0, _static_46
	jal _func_main
	move $a0, $v0
	li $v0, 17
	syscall
_func_____built_in_string_less:
	sw $fp, -216($sp)
	add $fp, $sp, -4
	add $sp, $fp, -220
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -8($fp)
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	lw $t0, 0($t0)
	sw $t0, -36($fp)
	lw $8, -8($fp)
	lw $t1, -36($fp)
	sgt $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	beqz $t0, _end_if_60
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_60:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_51:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_51
	lw $8, 0($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	lb $t0, 0($t0)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -16($fp)
	lw $8, -4($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lb $t0, 0($t0)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -20($fp)
	lw $8, -16($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _end_if_61
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_61:
	nop
_continue_loop51:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_51
_end_loop_51:
	nop
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	lw $t0, 0($t0)
	sw $t0, -88($fp)
	lw $8, -8($fp)
	lw $t1, -88($fp)
	slt $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $v0, -92($fp)
	b _end_func_____built_in_string_less
_end_func_____built_in_string_less:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -212($fp)
	jr $ra

_func_____built_in_string_equal:
	sw $fp, -192($sp)
	add $fp, $sp, -4
	add $sp, $fp, -196
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $8, -20($fp)
	lw $t1, -28($fp)
	sne $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	beqz $t0, _end_if_62
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_62:
	nop
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -8($fp)
_begin_loop_52:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_52
	lw $8, 0($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lb $t0, 0($t0)
	sw $t0, -56($fp)
	lw $8, -4($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	lb $t0, 0($t0)
	sw $t0, -64($fp)
	lw $8, -56($fp)
	lw $t1, -64($fp)
	sne $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	beqz $t0, _end_if_63
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_63:
	nop
_continue_loop52:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_52
_end_loop_52:
	nop
	li $v0, 1
	b _end_func_____built_in_string_equal
_end_func_____built_in_string_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -188($fp)
	jr $ra

_func_____built_in_string_inequal:
	sw $fp, -192($sp)
	add $fp, $sp, -4
	add $sp, $fp, -196
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $8, -20($fp)
	lw $t1, -28($fp)
	sne $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	beqz $t0, _end_if_64
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_64:
	nop
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -8($fp)
_begin_loop_53:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_53
	lw $8, 0($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lb $t0, 0($t0)
	sw $t0, -56($fp)
	lw $8, -4($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	lb $t0, 0($t0)
	sw $t0, -64($fp)
	lw $8, -56($fp)
	lw $t1, -64($fp)
	sne $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	beqz $t0, _end_if_65
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_65:
	nop
_continue_loop53:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_53
_end_loop_53:
	nop
	li $v0, 0
	b _end_func_____built_in_string_inequal
_end_func_____built_in_string_inequal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -188($fp)
	jr $ra

_func_____built_in_string_greater:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)
	lw $t0, -4($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_less
	sw $v0, -8($fp)
	lw $v0, -8($fp)
	b _end_func_____built_in_string_greater
_end_func_____built_in_string_greater:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_string_less_equal:
	sw $fp, -224($sp)
	add $fp, $sp, -4
	add $sp, $fp, -228
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -8($fp)
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	lw $t0, 0($t0)
	sw $t0, -36($fp)
	lw $8, -8($fp)
	lw $t1, -36($fp)
	sgt $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	beqz $t0, _end_if_66
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_66:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_54:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_54
	lw $8, 0($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	lb $t0, 0($t0)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -16($fp)
	lw $8, -4($fp)
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lb $t0, 0($t0)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -20($fp)
	lw $8, -16($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _end_if_67
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_67:
	nop
_continue_loop54:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_54
_end_loop_54:
	nop
	lw $8, 0($fp)
	sub $t0, $t0, 4
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	lw $t0, 0($t0)
	sw $t0, -88($fp)
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t0, 0($t0)
	sw $t0, -96($fp)
	lw $8, -88($fp)
	lw $t1, -96($fp)
	sle $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $v0, -100($fp)
	b _end_func_____built_in_string_less_equal
_end_func_____built_in_string_less_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -220($fp)
	jr $ra

_func_____built_in_string_greater_equal:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)
	lw $t0, -4($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_less_equal
	sw $v0, -8($fp)
	lw $v0, -8($fp)
	b _end_func_____built_in_string_greater_equal
_end_func_____built_in_string_greater_equal:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_main:
	sw $fp, -3208($sp)
	add $fp, $sp, -4
	add $sp, $fp, -3212
	sw $ra, 0($sp)
	nop
_continue_loop55:
	lw $8, _static_46
	slt $t0, $t0, 536870912
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	beqz $t0, _short_evaluate_2
	li $8, 0
	sub $t0, $t0, 536870912
	sw $t0, -16($fp)
	lw $8, _static_46
	lw $t1, -16($fp)
	sgt $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	beqz $t0, _short_evaluate_2
_short_evaluate_2:
	nop
	lw $t0, 0($fp)
	beqz $t0, _end_loop_55
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $8, -28($fp)
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $8, -40($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $8, -44($fp)
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $8, -36($fp)
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $8, -60($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $8, -64($fp)
	lw $t1, -68($fp)
	sub $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $8, -76($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $8, -72($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $8, -56($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $8, -96($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $8, -92($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $8, -104($fp)
	lw $t1, -108($fp)
	sub $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $8, -116($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $8, -120($fp)
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $8, -132($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $8, -128($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $8, -112($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $8, -88($fp)
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $8, -156($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $8, -152($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $8, -172($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $8, -168($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $8, -164($fp)
	lw $t1, -180($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $8, -192($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $8, -188($fp)
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $8, -200($fp)
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $8, -184($fp)
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $8, -216($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $8, -220($fp)
	lw $t1, -224($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $8, -232($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $8, -228($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $8, -248($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $8, -244($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $8, -256($fp)
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $8, -240($fp)
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $8, -212($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $8, -148($fp)
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $8, -280($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $8, -284($fp)
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $8, -296($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $8, -300($fp)
	lw $t1, -304($fp)
	sub $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $8, -292($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $8, -316($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $8, -320($fp)
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $8, -332($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $8, -328($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $8, -312($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $8, -352($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $8, -348($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $8, -360($fp)
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $8, -372($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $8, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $8, -388($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $8, -384($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $8, -368($fp)
	lw $t1, -396($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $8, -344($fp)
	lw $t1, -400($fp)
	sub $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $8, -412($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $8, -408($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $8, -420($fp)
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $8, -432($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $8, -436($fp)
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $8, -448($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $8, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $8, -428($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $8, -468($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $8, -464($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $8, -476($fp)
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $8, -488($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $8, -492($fp)
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $8, -504($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $8, -500($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $8, -484($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $8, -460($fp)
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $8, -404($fp)
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $8, -276($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $8, -536($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $8, -532($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $8, -552($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $8, -548($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $8, -544($fp)
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $8, -572($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $8, -568($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $8, -580($fp)
	lw $t1, -584($fp)
	sub $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $8, -564($fp)
	lw $t1, -588($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $8, -596($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $8, -600($fp)
	lw $t1, -604($fp)
	sub $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $8, -612($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $8, -608($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $8, -628($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $8, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $8, -636($fp)
	lw $t1, -640($fp)
	sub $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $8, -620($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $8, -592($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $8, -656($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $8, -660($fp)
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $8, -672($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $8, -668($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $8, -688($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $8, -684($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $8, -696($fp)
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $8, -680($fp)
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $8, -712($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $8, -716($fp)
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $8, -728($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $8, -724($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $8, -744($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $8, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $8, -752($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $8, -736($fp)
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $8, -708($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $8, -652($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $8, -776($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $8, -780($fp)
	lw $t1, -784($fp)
	sub $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $8, -792($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $8, -796($fp)
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $8, -788($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $8, -812($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $8, -816($fp)
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $8, -828($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $8, -824($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $8, -808($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $8, -848($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $8, -844($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $8, -856($fp)
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $8, -868($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $8, -872($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $8, -884($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $8, -880($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $8, -864($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $8, -840($fp)
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $8, -908($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $8, -904($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $8, -916($fp)
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $8, -928($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $8, -932($fp)
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $8, -944($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $8, -940($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $8, -924($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $8, -964($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $8, -960($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $8, -972($fp)
	lw $t1, -976($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $8, -984($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $8, -988($fp)
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $8, -1000($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $8, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $8, -980($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $8, -956($fp)
	lw $t1, -1012($fp)
	sub $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $8, -900($fp)
	lw $t1, -1016($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $8, -772($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $8, -528($fp)
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, _static_44
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $8, -1032($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $8, -1036($fp)
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $8, -1048($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $8, -1052($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $8, -1044($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $8, -1068($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $8, -1072($fp)
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $8, -1084($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $8, -1080($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $8, -1064($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $8, -1104($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $8, -1100($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $8, -1112($fp)
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $8, -1124($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $8, -1128($fp)
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $8, -1140($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $8, -1136($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $8, -1120($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $8, -1096($fp)
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $8, -1164($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $8, -1160($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $8, -1180($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $8, -1176($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $8, -1172($fp)
	lw $t1, -1188($fp)
	sub $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $8, -1200($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $8, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $8, -1208($fp)
	lw $t1, -1212($fp)
	sub $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $8, -1192($fp)
	lw $t1, -1216($fp)
	sub $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $8, -1224($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $8, -1228($fp)
	lw $t1, -1232($fp)
	sub $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $8, -1240($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $8, -1236($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $8, -1256($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $8, -1252($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $8, -1264($fp)
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $8, -1248($fp)
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $8, -1220($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $8, -1156($fp)
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $8, -1288($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $8, -1292($fp)
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $8, -1304($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $8, -1308($fp)
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $8, -1300($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $8, -1324($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $8, -1328($fp)
	lw $t1, -1332($fp)
	sub $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $8, -1340($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $8, -1336($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $8, -1320($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $8, -1360($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $8, -1356($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $8, -1368($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $8, -1380($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $8, -1384($fp)
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $8, -1396($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $8, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $8, -1376($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $8, -1352($fp)
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $8, -1420($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $8, -1416($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $8, -1428($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $8, -1440($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $8, -1444($fp)
	lw $t1, -1448($fp)
	sub $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $8, -1456($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $8, -1452($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $8, -1436($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $8, -1476($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $8, -1472($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $8, -1484($fp)
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $8, -1496($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $8, -1500($fp)
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $8, -1512($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $8, -1508($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $8, -1492($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $8, -1468($fp)
	lw $t1, -1524($fp)
	sub $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $8, -1412($fp)
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $8, -1284($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $8, -1544($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $8, -1540($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $8, -1560($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $8, -1556($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $8, -1552($fp)
	lw $t1, -1568($fp)
	sub $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $8, -1580($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $8, -1576($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $8, -1588($fp)
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $8, -1572($fp)
	lw $t1, -1596($fp)
	sub $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $8, -1604($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $8, -1608($fp)
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $8, -1620($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $8, -1616($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $8, -1636($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $8, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $8, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $8, -1628($fp)
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $8, -1600($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $8, -1664($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $8, -1668($fp)
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $8, -1680($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $8, -1676($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $8, -1696($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $8, -1692($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $8, -1704($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $8, -1688($fp)
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $8, -1720($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $8, -1724($fp)
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $8, -1736($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $8, -1732($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $8, -1752($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $8, -1748($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $8, -1760($fp)
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $8, -1744($fp)
	lw $t1, -1768($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $8, -1716($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $8, -1660($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $8, -1784($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $8, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $8, -1800($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $8, -1804($fp)
	lw $t1, -1808($fp)
	sub $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $8, -1796($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $8, -1820($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $8, -1824($fp)
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $8, -1836($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $8, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $8, -1816($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $8, -1856($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $8, -1852($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $8, -1864($fp)
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $8, -1876($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $8, -1880($fp)
	lw $t1, -1884($fp)
	sub $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $8, -1892($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $8, -1888($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $8, -1872($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $8, -1848($fp)
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $8, -1916($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $8, -1912($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $8, -1924($fp)
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $8, -1936($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $8, -1940($fp)
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $8, -1952($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $8, -1948($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $8, -1932($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $8, -1972($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $8, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $8, -1980($fp)
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $8, -1992($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $8, -1996($fp)
	lw $t1, -2000($fp)
	sub $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $8, -2008($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $8, -2004($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $8, -1988($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $8, -1964($fp)
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $8, -1908($fp)
	lw $t1, -2024($fp)
	sub $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $8, -1780($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $8, -1536($fp)
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, _static_45
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $8, -2040($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $8, -2044($fp)
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $8, -2056($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $8, -2060($fp)
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $8, -2052($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $8, -2076($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $8, -2080($fp)
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $8, -2092($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $8, -2088($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $8, -2072($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $8, -2112($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $8, -2108($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $8, -2120($fp)
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $8, -2132($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $8, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $8, -2148($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $8, -2144($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $8, -2128($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $8, -2104($fp)
	lw $t1, -2160($fp)
	sub $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $8, -2172($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $8, -2168($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $8, -2188($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $8, -2184($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $8, -2180($fp)
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $8, -2208($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $8, -2204($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $8, -2216($fp)
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $8, -2200($fp)
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $8, -2232($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $8, -2236($fp)
	lw $t1, -2240($fp)
	sub $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $8, -2248($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $8, -2244($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $8, -2264($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $8, -2260($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $8, -2272($fp)
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $8, -2256($fp)
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $8, -2228($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $8, -2164($fp)
	lw $t1, -2288($fp)
	sub $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $8, -2296($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $8, -2300($fp)
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $8, -2312($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $8, -2316($fp)
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $8, -2308($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $8, -2332($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $8, -2336($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $8, -2348($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $8, -2344($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $8, -2328($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $8, -2368($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $8, -2364($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $8, -2376($fp)
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $8, -2388($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $8, -2392($fp)
	lw $t1, -2396($fp)
	sub $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $8, -2404($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $8, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $8, -2384($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $8, -2360($fp)
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $8, -2428($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $8, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $8, -2436($fp)
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $8, -2448($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $8, -2452($fp)
	lw $t1, -2456($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $8, -2464($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $8, -2460($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $8, -2444($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $8, -2484($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $8, -2480($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $8, -2492($fp)
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $8, -2504($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $8, -2508($fp)
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $8, -2520($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $8, -2516($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $8, -2500($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $8, -2476($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $8, -2420($fp)
	lw $t1, -2536($fp)
	sub $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $8, -2292($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $8, -2552($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $8, -2548($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $8, -2568($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $8, -2564($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $8, -2560($fp)
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $8, -2588($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $8, -2584($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $8, -2596($fp)
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $8, -2580($fp)
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $8, -2612($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $8, -2616($fp)
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $8, -2628($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $8, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $8, -2644($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $8, -2640($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $8, -2652($fp)
	lw $t1, -2656($fp)
	sub $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $8, -2636($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $8, -2608($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $8, -2672($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $8, -2676($fp)
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $8, -2688($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $8, -2684($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $8, -2704($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $8, -2700($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $8, -2712($fp)
	lw $t1, -2716($fp)
	sub $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $8, -2696($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $8, -2728($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $8, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $8, -2744($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $8, -2740($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $8, -2760($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $8, -2756($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $8, -2768($fp)
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $8, -2752($fp)
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $8, -2724($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $8, -2668($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $8, -2792($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $8, -2796($fp)
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $8, -2808($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $8, -2812($fp)
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $8, -2804($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $8, -2828($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $8, -2832($fp)
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $8, -2844($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $8, -2840($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $8, -2824($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $8, -2864($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $8, -2860($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $8, -2872($fp)
	lw $t1, -2876($fp)
	sub $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $8, -2884($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $8, -2888($fp)
	lw $t1, -2892($fp)
	sub $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $8, -2900($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $8, -2896($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $8, -2880($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $8, -2856($fp)
	lw $t1, -2912($fp)
	sub $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $8, -2924($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $8, -2920($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $8, -2932($fp)
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $8, -2944($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $8, -2948($fp)
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $8, -2960($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $8, -2956($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $8, -2940($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $8, -2980($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $8, -2976($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $8, -2988($fp)
	lw $t1, -2992($fp)
	sub $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $8, -3000($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $8, _static_44
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $8, -3004($fp)
	lw $t1, -3008($fp)
	sub $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $8, _static_46
	lw $t1, _static_44
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $8, -3016($fp)
	lw $t1, _static_45
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $8, -3012($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $8, -2996($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $8, -2972($fp)
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $8, -2916($fp)
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $8, -2788($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $8, -2544($fp)
	lw $t1, -3040($fp)
	sub $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, _static_46
	b _continue_loop55
_end_loop_55:
	nop
	lw $t0, _static_44
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -3048($fp)
	la $t0, _static_47
	sw $t0, -3052($fp)
	lw $t0, -3048($fp)
	sw $t0, -4($sp)
	lw $t0, -3052($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -3056($fp)
	lw $t0, _static_45
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -3060($fp)
	lw $t0, -3056($fp)
	sw $t0, -4($sp)
	lw $t0, -3060($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -3064($fp)
	la $t0, _static_47
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	sw $t0, -4($sp)
	lw $t0, -3068($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -3072($fp)
	lw $t0, _static_46
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -3076($fp)
	lw $t0, -3072($fp)
	sw $t0, -4($sp)
	lw $t0, -3076($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -3080($fp)
	li $v0, 4
	lw $a0, -3080($fp)
	syscall
	li $v0, 4
	la $a0, _static_43
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -3204($fp)
	jr $ra

	.text
_string_copy:
	_begin_string_copy:
	lb $v0, 0($a0)
	beqz $v0, _exit_string_copy
	sb $v0, 0($a1)
	add $a0, $a0, 1
	add $a1, $a1, 1
	j _begin_string_copy
	_exit_string_copy:
	sb $zero, 0($a1)
	jr $ra

_func_____built_in_substring:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	lw $a2, -12($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t0, $a0

	sub $t1, $a2, $a1
	add $t1, $t1, 1
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4

	add $a0, $t0, $a1
	add $t2, $t0, $a2
	lb $t3, 1($t2)
	sb $zero, 1($t2)
	move $a1, $v0
	move $t4, $v0
	jal _string_copy
	move $v0, $t4
	sb $t3, 1($t2)

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

_count_string_length:
	move $v0, $a0

	_begin_count_string_length:
	lb $v1, 0($a0)
	beqz $v1, _exit_count_string_length
	add $a0, $a0, 1
	j _begin_count_string_length

	_exit_count_string_length:
	sub $v0, $a0, $v0
	jr $ra

_func_____built_in_getString:
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	lw $a0, _buffer
	li $a1, 255
	li $v0, 8
	syscall

	jal _count_string_length

	move $a1, $v0
	add $a0, $v0, 5
	li $v0, 9
	syscall
	sw $a1, 0($v0)
	add $v0, $v0, 4
	lw $a0, _buffer
	move $a1, $v0
	move $t0, $v0
	jal _string_copy
	move $v0, $t0

	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

_func_____built_in_parseInt:
	lw $a0, -4($sp)
	li $v0, 0
	move $t0, $a0
	li $t2, 1

	_count_number_pos:
	lb $t1, 0($t0)
	bgt $t1, 57, _begin_parse_int
	blt $t1, 48, _begin_parse_int
	add $t0, $t0, 1
	j _count_number_pos

	_begin_parse_int:
	sub $t0, $t0, 1

	_parsing_int:
	blt $t0, $a0, _finish_parse_int
	lb $t1, 0($t0)
	sub $t1, $t1, 48
	mul $t1, $t1, $t2
	add $v0, $v0, $t1
	mul $t2, $t2, 10
	sub $t0, $t0, 1
	j _parsing_int

	_finish_parse_int:
	jr $ra

_func_____built_in_string_concatenate:
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	subu $sp, $sp, 4
	sw $ra, 0($sp)

	move $t2, $a0
	move $t3, $a1

	lw $t0, -4($a0)
	lw $t1, -4($a1)
	add $t5, $t0, $t1
	add $a0, $t5, 5
	li $v0, 9
	syscall
	sw $t5, 0($v0)
	add $v0, $v0, 4
	move $t4, $v0

	move $a0, $t2
	move $a1, $t4
	jal _string_copy

	move $a0, $t3
	add $a1, $t4, $t0
	
	jal _string_copy

	move $v0, $t4
	lw $ra, 0($sp)
	addu $sp, $sp, 4
	jr $ra

_func_____built_in_toString:
	lw $a0, -4($sp)
	li $t0, 0
	bgez $a0, _skip_set_less_than_zero
	li $t0, 1
	neg $a0, $a0
	_skip_set_less_than_zero:
	beqz $a0, _set_zero

	li $t1, 0
	move $t2, $a0
	move $t3, $a0
	li $t5, 10

	_begin_count_digit:
	div $t2, $t5
	mflo $v0
	mfhi $v1
	bgtz $v0, _not_yet
	bgtz $v1, _not_yet
	j _yet
	_not_yet:
	add $t1, $t1, 1
	move $t2, $v0
	j _begin_count_digit

	_yet:
	beqz $t0, _skip_reserve_neg
	add $t1, $t1, 1
	_skip_reserve_neg:
	add $a0, $t1, 5
	li $v0, 9
	syscall
	sw $t1, 0($v0)
	add $v0, $v0, 4
	add $t1, $t1, $v0
	sb $zero, 0($t1)
	sub $t1, $t1, 1

	_continue_toString:
	div $t3, $t5
	mfhi $v1
	add $v1, $v1, 48
	sb $v1, 0($t1)
	sub $t1, $t1, 1
	mflo $t3
	
	bnez $t3, _continue_toString

	beqz $t0, _skip_place_neg
	li $v1, 45
	sb $v1, 0($t1)
	_skip_place_neg:
	
	jr $ra

	_set_zero:
	li $a0, 6
	li $v0, 9
	syscall
	li $a0, 1
	sw $a0, 0($v0)
	add $v0, $v0, 4
	li $a0, 48
	sb $a0, 0($v0)
	jr $ra
