	.data
	.word 1
_static_6:
	.asciiz "\n"
	.align 2
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
	beqz $t0, _end_if_16
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_16:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_15:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_15
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
	beqz $t0, _end_if_17
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_17:
	nop
_continue_loop15:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_15
_end_loop_15:
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
	beqz $t0, _end_if_18
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_18:
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
_begin_loop_16:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_16
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
	beqz $t0, _end_if_19
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_19:
	nop
_continue_loop16:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_16
_end_loop_16:
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
	beqz $t0, _end_if_20
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_20:
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
_begin_loop_17:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_17
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
	beqz $t0, _end_if_21
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_21:
	nop
_continue_loop17:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_17
_end_loop_17:
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
	beqz $t0, _end_if_22
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_22:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_18:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_18
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
	beqz $t0, _end_if_23
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_23:
	nop
_continue_loop18:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_18
_end_loop_18:
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
	sw $fp, -476($sp)
	add $fp, $sp, -4
	add $sp, $fp, -480
	sw $ra, 0($sp)
	li $8, 100
	add $t0, $t0, 1
	sw $t0, -28($fp)
	lw $8, -28($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	li $v0, 9
	lw $a0, -32($fp)
	syscall
	sw $v0, -36($fp)
	li $t0, 100
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	add $t0, $t0, 4
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, 0($fp)
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_19:
	lw $8, -4($fp)
	slt $t0, $t0, 100
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	beqz $t0, _end_loop_19
	li $8, 100
	add $t0, $t0, 1
	sw $t0, -68($fp)
	lw $8, -68($fp)
	mul $t0, $t0, 4
	sw $t0, -72($fp)
	li $v0, 9
	lw $a0, -72($fp)
	syscall
	sw $v0, -76($fp)
	li $t0, 100
	lw $t1, -76($fp)
	sw $t0, 0($t1)
	lw $8, -76($fp)
	add $t0, $t0, 4
	sw $t0, -80($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -56($fp)
	lw $8, 0($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -80($fp)
	lw $t1, -60($fp)
	sw $t0, 0($t1)
_continue_loop19:
	lw $t0, -4($fp)
	sw $t0, -84($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_19
_end_loop_19:
	nop
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_20:
	lw $8, -4($fp)
	slt $t0, $t0, 100
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	beqz $t0, _end_loop_20
	li $t0, 0
	sw $t0, -8($fp)
_begin_loop_21:
	lw $8, -8($fp)
	slt $t0, $t0, 100
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	beqz $t0, _end_loop_21
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, 0($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t0, 0($t0)
	sw $t0, -124($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -128($fp)
	lw $8, -124($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 0
	lw $t1, -132($fp)
	sw $t0, 0($t1)
_continue_loop21:
	lw $t0, -8($fp)
	sw $t0, -140($fp)
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -8($fp)
	b _begin_loop_21
_end_loop_21:
	nop
_continue_loop20:
	lw $t0, -4($fp)
	sw $t0, -144($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_20
_end_loop_20:
	nop
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_22:
	lw $8, -4($fp)
	slt $t0, $t0, 100
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	beqz $t0, _end_loop_22
	lw $8, -4($fp)
	sgt $t0, $t0, 20
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	beqz $t0, _short_evaluate_0
	lw $8, -4($fp)
	slt $t0, $t0, 80
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	beqz $t0, _short_evaluate_0
_short_evaluate_0:
	nop
	lw $t0, -160($fp)
	beqz $t0, _end_if_24
	li $t0, 0
	sw $t0, -8($fp)
_begin_loop_23:
	lw $8, -8($fp)
	slt $t0, $t0, 100
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	beqz $t0, _end_loop_23
	lw $8, -8($fp)
	sgt $t0, $t0, 5
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	bnez $t0, _short_evaluate_1
	lw $8, -4($fp)
	slt $t0, $t0, 90
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	bnez $t0, _short_evaluate_1
_short_evaluate_1:
	nop
	lw $t0, -192($fp)
	beqz $t0, _end_if_25
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -216($fp)
	lw $8, -216($fp)
	div $t0, $t0, 100
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -16($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -232($fp)
	lw $8, -232($fp)
	rem $t0, $t0, 100
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -20($fp)
	li $8, 100
	div $t0, $t0, 2
	sw $t0, -276($fp)
	lw $8, -8($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $8, -4($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $8, -244($fp)
	mul $t0, $t0, 4
	sw $t0, -248($fp)
	lw $8, 0($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t0, 0($t0)
	sw $t0, -256($fp)
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -260($fp)
	lw $8, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -280($fp)
	lw $t1, -264($fp)
	sw $t0, 0($t1)
_end_if_25:
	nop
_continue_loop23:
	lw $t0, -8($fp)
	sw $t0, -284($fp)
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -8($fp)
	b _begin_loop_23
_end_loop_23:
	nop
_end_if_24:
	nop
_continue_loop22:
	lw $t0, -4($fp)
	sw $t0, -288($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_22
_end_loop_22:
	nop
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_24:
	lw $8, -4($fp)
	slt $t0, $t0, 100
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	beqz $t0, _end_loop_24
	li $t0, 0
	sw $t0, -8($fp)
_begin_loop_25:
	lw $8, -8($fp)
	slt $t0, $t0, 100
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	beqz $t0, _end_loop_25
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -316($fp)
	lw $8, 0($fp)
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t0, 0($t0)
	sw $t0, -324($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -328($fp)
	lw $8, -324($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	lw $t0, 0($t0)
	sw $t0, -336($fp)
	lw $8, -12($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -12($fp)
_continue_loop25:
	lw $t0, -8($fp)
	sw $t0, -344($fp)
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -8($fp)
	b _begin_loop_25
_end_loop_25:
	nop
_continue_loop24:
	lw $t0, -4($fp)
	sw $t0, -348($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_24
_end_loop_24:
	nop
	lw $t0, -12($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -352($fp)
	li $v0, 4
	lw $a0, -352($fp)
	syscall
	li $v0, 4
	la $a0, _static_6
	syscall
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -472($fp)
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
