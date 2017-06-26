	.data
	.word 1
_static_48:
	.asciiz "\n"
	.align 2
	.word 1
_static_55:
	.asciiz " "
	.align 2
_static_49:
	.word 0
_static_50:
	.word 0
_static_51:
	.word 0
_static_52:
	.word 0
_static_53:
	.word 0
_static_54:
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
	beqz $t0, _end_if_68
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_68:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_56:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_56
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
	beqz $t0, _end_if_69
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_69:
	nop
_continue_loop56:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_56
_end_loop_56:
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
	beqz $t0, _end_if_70
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_70:
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
_begin_loop_57:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_57
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
	beqz $t0, _end_if_71
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_71:
	nop
_continue_loop57:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_57
_end_loop_57:
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
	beqz $t0, _end_if_72
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_72:
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
_begin_loop_58:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_58
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
	beqz $t0, _end_if_73
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_73:
	nop
_continue_loop58:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_58
_end_loop_58:
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
	beqz $t0, _end_if_74
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_74:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_59:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_59
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
	beqz $t0, _end_if_75
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_75:
	nop
_continue_loop59:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_59
_end_loop_59:
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

_func_merge:
	sw $fp, -244($sp)
	add $fp, $sp, -4
	add $sp, $fp, -248
	sw $ra, 0($sp)
	li $8, 0
	lw $t1, 0($fp)
	seq $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _end_if_76
	lw $v0, -4($fp)
	b _end_func_merge
_end_if_76:
	nop
	li $8, 0
	lw $t1, -4($fp)
	seq $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	beqz $t0, _end_if_77
	lw $v0, 0($fp)
	b _end_func_merge
_end_if_77:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	lw $8, _static_54
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -40($fp)
	lw $8, _static_54
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -52($fp)
	lw $8, -48($fp)
	lw $t1, -52($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_if_78
	lw $t0, 0($fp)
	sw $t0, -8($fp)
	lw $t0, -4($fp)
	sw $t0, 0($fp)
	lw $t0, -8($fp)
	sw $t0, -4($fp)
_end_if_78:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -72($fp)
	lw $8, _static_53
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t0, 0($t0)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -4($sp)
	lw $t0, -4($fp)
	sw $t0, -8($sp)
jal _func_merge
	sw $v0, -68($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -60($fp)
	lw $8, _static_53
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -68($fp)
	lw $t1, -64($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	lw $8, _static_52
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t0, 0($t0)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -12($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -104($fp)
	lw $8, _static_53
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t0, 0($t0)
	sw $t0, -112($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	lw $8, _static_52
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -112($fp)
	lw $t1, -100($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, _static_53
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -12($fp)
	lw $t1, -120($fp)
	sw $t0, 0($t1)
	lw $v0, 0($fp)
	b _end_func_merge
_end_func_merge:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -240($fp)
	jr $ra

_func_main:
	sw $fp, -464($sp)
	add $fp, $sp, -4
	add $sp, $fp, -468
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, _static_49
	li $v0, 5
	syscall
	sw $v0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_50
jal _func_____built_in_getString
	sw $v0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, _static_51
	lw $8, _static_49
	lw $t1, _static_50
	add $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	add $t0, $t0, 5
	sw $t0, -32($fp)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -36($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -40($fp)
	li $v0, 9
	lw $a0, -40($fp)
	syscall
	sw $v0, -44($fp)
	lw $t0, -32($fp)
	lw $t1, -44($fp)
	sw $t0, 0($t1)
	lw $8, -44($fp)
	add $t0, $t0, 4
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, _static_52
	lw $8, _static_49
	lw $t1, _static_50
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $8, -52($fp)
	add $t0, $t0, 5
	sw $t0, -60($fp)
	lw $8, -60($fp)
	add $t0, $t0, 1
	sw $t0, -64($fp)
	lw $8, -64($fp)
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	li $v0, 9
	lw $a0, -68($fp)
	syscall
	sw $v0, -72($fp)
	lw $t0, -60($fp)
	lw $t1, -72($fp)
	sw $t0, 0($t1)
	lw $8, -72($fp)
	add $t0, $t0, 4
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, _static_53
	lw $8, _static_49
	lw $t1, _static_50
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $8, -80($fp)
	add $t0, $t0, 5
	sw $t0, -88($fp)
	lw $8, -88($fp)
	add $t0, $t0, 1
	sw $t0, -92($fp)
	lw $8, -92($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	li $v0, 9
	lw $a0, -96($fp)
	syscall
	sw $v0, -100($fp)
	lw $t0, -88($fp)
	lw $t1, -100($fp)
	sw $t0, 0($t1)
	lw $8, -100($fp)
	add $t0, $t0, 4
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, _static_54
	li $t0, 1
	sw $t0, 0($fp)
_begin_loop_60:
	lw $8, 0($fp)
	lw $t1, _static_49
	sle $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	beqz $t0, _end_loop_60
	li $v0, 5
	syscall
	sw $v0, -124($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, _static_54
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -124($fp)
	lw $t1, -120($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -128($fp)
	lw $8, _static_52
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	li $t0, 0
	lw $t1, -132($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -140($fp)
	lw $8, _static_53
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sw $t0, 0($t1)
_continue_loop60:
	lw $t0, 0($fp)
	sw $t0, -152($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_60
_end_loop_60:
	nop
	li $t0, 1
	sw $t0, 0($fp)
_begin_loop_61:
	lw $8, 0($fp)
	lw $t1, _static_50
	sle $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	beqz $t0, _end_loop_61
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -180($fp)
	lw $8, _static_51
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lb $t0, 0($t0)
	sw $t0, -188($fp)
	lw $8, 0($fp)
	lw $t1, _static_49
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $8, -164($fp)
	mul $t0, $t0, 4
	sw $t0, -168($fp)
	lw $8, _static_54
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -188($fp)
	lw $t1, -172($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	lw $t1, _static_49
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $8, -192($fp)
	mul $t0, $t0, 4
	sw $t0, -196($fp)
	lw $8, _static_52
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	lw $t1, _static_49
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $8, -208($fp)
	mul $t0, $t0, 4
	sw $t0, -212($fp)
	lw $8, _static_53
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	li $t0, 0
	lw $t1, -216($fp)
	sw $t0, 0($t1)
_continue_loop61:
	lw $t0, 0($fp)
	sw $t0, -224($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_61
_end_loop_61:
	nop
	li $t0, 1
	sw $t0, -4($fp)
	lw $8, _static_49
	add $t0, $t0, 1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -8($fp)
	li $t0, 2
	sw $t0, 0($fp)
_begin_loop_62:
	lw $8, 0($fp)
	lw $t1, _static_49
	sle $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	beqz $t0, _end_loop_62
	lw $t0, -4($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_merge
	sw $v0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -4($fp)
_continue_loop62:
	lw $t0, 0($fp)
	sw $t0, -252($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_62
_end_loop_62:
	nop
	lw $8, _static_49
	add $t0, $t0, 2
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, 0($fp)
_begin_loop_63:
	lw $8, _static_49
	lw $t1, _static_50
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $8, 0($fp)
	lw $t1, -264($fp)
	sle $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	beqz $t0, _end_loop_63
	lw $t0, -8($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_merge
	sw $v0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -8($fp)
_continue_loop63:
	lw $t0, 0($fp)
	sw $t0, -276($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_63
_end_loop_63:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -280($fp)
	lw $8, _static_54
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t0, 0($t0)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -292($fp)
	li $v0, 4
	lw $a0, -292($fp)
	syscall
	la $t0, _static_55
	sw $t0, -296($fp)
	li $v0, 4
	lw $a0, -296($fp)
	syscall
	lw $8, -8($fp)
	lw $t1, _static_49
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $8, -300($fp)
	sub $t0, $t0, 1
	sw $t0, -308($fp)
	lw $8, -8($fp)
	lw $t1, _static_49
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $8, -312($fp)
	sub $t0, $t0, 1
	sw $t0, -320($fp)
	lw $t0, _static_51
	sw $t0, -4($sp)
	lw $t0, -308($fp)
	sw $t0, -8($sp)
	lw $t0, -320($fp)
	sw $t0, -12($sp)
jal _func_____built_in_substring
	sw $v0, -324($fp)
	li $v0, 4
	lw $a0, -324($fp)
	syscall
	la $t0, _static_48
	sw $t0, -328($fp)
	li $v0, 4
	lw $a0, -328($fp)
	syscall
	lw $t0, -4($fp)
	sw $t0, -4($sp)
	lw $t0, -8($fp)
	sw $t0, -8($sp)
jal _func_merge
	sw $v0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -336($fp)
	li $v0, 4
	lw $a0, -336($fp)
	syscall
	li $v0, 4
	la $a0, _static_48
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -460($fp)
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
