	.data
	.word 1
_static_113:
	.asciiz "\n"
	.align 2
	.word 1
_static_119:
	.asciiz " "
	.align 2
_static_114:
	.word 0
_static_115:
	.word 0
_static_116:
	.word 0
_static_117:
	.word 0
_static_118:
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
	li $8, 10
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -8($fp)
	li $v0, 9
	lw $a0, -8($fp)
	syscall
	sw $v0, -12($fp)
	li $t0, 10
	lw $t1, -12($fp)
	sw $t0, 0($t1)
	lw $8, -12($fp)
	add $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_115
	li $8, 1
	add $t0, $t0, 1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	li $v0, 9
	lw $a0, -28($fp)
	syscall
	sw $v0, -32($fp)
	li $t0, 1
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, _static_116
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
	beqz $t0, _end_if_177
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_177:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_122:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_122
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
	beqz $t0, _end_if_178
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_178:
	nop
_continue_loop122:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_122
_end_loop_122:
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
	beqz $t0, _end_if_179
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_179:
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
_begin_loop_123:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_123
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
	beqz $t0, _end_if_180
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_180:
	nop
_continue_loop123:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_123
_end_loop_123:
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
	beqz $t0, _end_if_181
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_181:
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
_begin_loop_124:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_124
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
	beqz $t0, _end_if_182
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_182:
	nop
_continue_loop124:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_124
_end_loop_124:
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
	beqz $t0, _end_if_183
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_183:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_125:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_125
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
	beqz $t0, _end_if_184
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_184:
	nop
_continue_loop125:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_125
_end_loop_125:
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

_func_origin:
	sw $fp, -212($sp)
	add $fp, $sp, -4
	add $sp, $fp, -216
	sw $ra, 0($sp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -8($fp)
	li $v0, 9
	lw $a0, -8($fp)
	syscall
	sw $v0, -12($fp)
	lw $t0, 0($fp)
	lw $t1, -12($fp)
	sw $t0, 0($t1)
	lw $8, -12($fp)
	add $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_114
	li $t0, 0
	sw $t0, _static_117
_begin_loop_126:
	lw $8, _static_117
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	beqz $t0, _end_loop_126
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -36($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -40($fp)
	li $v0, 9
	lw $a0, -40($fp)
	syscall
	sw $v0, -44($fp)
	lw $t0, 0($fp)
	lw $t1, -44($fp)
	sw $t0, 0($t1)
	lw $8, -44($fp)
	add $t0, $t0, 4
	sw $t0, -48($fp)
	lw $8, _static_117
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	lw $8, _static_114
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -48($fp)
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, _static_118
_begin_loop_127:
	lw $8, _static_118
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_127
	lw $8, _static_117
	mul $t0, $t0, 4
	sw $t0, -60($fp)
	lw $8, _static_114
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	lw $t0, 0($t0)
	sw $t0, -68($fp)
	lw $8, _static_118
	mul $t0, $t0, 4
	sw $t0, -72($fp)
	lw $8, -68($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sw $t0, 0($t1)
_continue_loop127:
	lw $t0, _static_118
	sw $t0, -84($fp)
	lw $8, _static_118
	add $t0, $t0, 1
	sw $t0, _static_118
	lw $t0, _static_118
	sw $t0, _static_118
	b _begin_loop_127
_end_loop_127:
	nop
_continue_loop126:
	lw $t0, _static_117
	sw $t0, -88($fp)
	lw $8, _static_117
	add $t0, $t0, 1
	sw $t0, _static_117
	lw $t0, _static_117
	sw $t0, _static_117
	b _begin_loop_126
_end_loop_126:
	nop
_end_func_origin:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -208($fp)
	jr $ra

_func_search:
	sw $fp, -1848($sp)
	add $fp, $sp, -4
	add $sp, $fp, -1852
	sw $ra, 0($sp)
	lw $8, -4($fp)
	sgt $t0, $t0, 0
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	bnez $t0, _short_evaluate_29
	lw $8, -4($fp)
	slt $t0, $t0, 0
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	bnez $t0, _short_evaluate_29
_short_evaluate_29:
	nop
	lw $t0, -28($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	bnez $t0, _short_evaluate_28
	lw $8, 0($fp)
	seq $t0, $t0, 0
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	bnez $t0, _short_evaluate_28
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -60($fp)
	lw $8, -60($fp)
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, _static_114
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t0, 0($t0)
	sw $t0, -76($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -80($fp)
	lw $8, -76($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	lw $t0, 0($t0)
	sw $t0, -120($fp)
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -92($fp)
	lw $8, -92($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	lw $8, _static_114
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t0, 0($t0)
	sw $t0, -108($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -112($fp)
	lw $8, -108($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t0, 0($t0)
	sw $t0, -124($fp)
	lw $8, -120($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -136($fp)
	lw $8, -136($fp)
	mul $t0, $t0, 4
	sw $t0, -140($fp)
	lw $8, _static_114
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t0, 0($t0)
	sw $t0, -152($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -156($fp)
	lw $8, -152($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t0, 0($t0)
	sw $t0, -164($fp)
	lw $8, -128($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $8, -168($fp)
	seq $t0, $t0, 15
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	bnez $t0, _short_evaluate_28
_short_evaluate_28:
	nop
	lw $t0, -24($fp)
	beqz $t0, _end_if_185
	lw $8, 0($fp)
	seq $t0, $t0, 2
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	beqz $t0, _short_evaluate_30
	lw $8, -4($fp)
	seq $t0, $t0, 2
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	beqz $t0, _short_evaluate_30
_short_evaluate_30:
	nop
	lw $t0, -180($fp)
	beqz $t0, _else_186
	li $8, 45
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -724($fp)
	lw $8, _static_114
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t0, 0($t0)
	sw $t0, -736($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -740($fp)
	lw $8, -736($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -752($fp)
	lw $t1, -744($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -760($fp)
	lw $8, _static_114
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t0, 0($t0)
	sw $t0, -772($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -776($fp)
	lw $8, -772($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t0, 0($t0)
	sw $t0, -812($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -788($fp)
	lw $8, _static_114
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t0, 0($t0)
	sw $t0, -800($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -804($fp)
	lw $8, -800($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t0, 0($t0)
	sw $t0, -816($fp)
	lw $8, -812($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -828($fp)
	lw $8, _static_114
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t0, 0($t0)
	sw $t0, -840($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -844($fp)
	lw $8, -840($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t0, 0($t0)
	sw $t0, -852($fp)
	lw $8, -820($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -12($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -868($fp)
	lw $8, _static_114
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t0, 0($t0)
	sw $t0, -880($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -884($fp)
	lw $8, -880($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t0, 0($t0)
	sw $t0, -920($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -896($fp)
	lw $8, _static_114
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t0, 0($t0)
	sw $t0, -908($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -912($fp)
	lw $8, -908($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t0, 0($t0)
	sw $t0, -924($fp)
	lw $8, -920($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -928($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -936($fp)
	lw $8, _static_114
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t0, 0($t0)
	sw $t0, -948($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -952($fp)
	lw $8, -948($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t0, 0($t0)
	sw $t0, -960($fp)
	lw $8, -928($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $8, -964($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -976($fp)
	lw $8, _static_114
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t0, 0($t0)
	sw $t0, -988($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -992($fp)
	lw $8, -988($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t0, 0($t0)
	sw $t0, -1028($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1004($fp)
	lw $8, _static_114
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t0, 0($t0)
	sw $t0, -1016($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1020($fp)
	lw $8, -1016($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t0, 0($t0)
	sw $t0, -1032($fp)
	lw $8, -1028($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1044($fp)
	lw $8, _static_114
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t0, 0($t0)
	sw $t0, -1056($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1060($fp)
	lw $8, -1056($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t0, 0($t0)
	sw $t0, -1068($fp)
	lw $8, -1036($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $8, -1072($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1084($fp)
	lw $8, _static_114
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t0, 0($t0)
	sw $t0, -1096($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1100($fp)
	lw $8, -1096($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t0, 0($t0)
	sw $t0, -1136($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1112($fp)
	lw $8, _static_114
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t0, 0($t0)
	sw $t0, -1124($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1128($fp)
	lw $8, -1124($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t0, 0($t0)
	sw $t0, -1140($fp)
	lw $8, -1136($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1152($fp)
	lw $8, _static_114
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t0, 0($t0)
	sw $t0, -1164($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1168($fp)
	lw $8, -1164($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t0, 0($t0)
	sw $t0, -1176($fp)
	lw $8, -1144($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $8, -1180($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1192($fp)
	lw $8, _static_114
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t0, 0($t0)
	sw $t0, -1204($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1208($fp)
	lw $8, -1204($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t0, 0($t0)
	sw $t0, -1244($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1220($fp)
	lw $8, _static_114
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t0, 0($t0)
	sw $t0, -1232($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1236($fp)
	lw $8, -1232($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t0, 0($t0)
	sw $t0, -1248($fp)
	lw $8, -1244($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1260($fp)
	lw $8, _static_114
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t0, 0($t0)
	sw $t0, -1272($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1276($fp)
	lw $8, -1272($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t0, 0($t0)
	sw $t0, -1284($fp)
	lw $8, -1252($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $8, -1288($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1300($fp)
	lw $8, _static_114
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t0, 0($t0)
	sw $t0, -1312($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1316($fp)
	lw $8, -1312($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t0, 0($t0)
	sw $t0, -1352($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1328($fp)
	lw $8, _static_114
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t0, 0($t0)
	sw $t0, -1340($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1344($fp)
	lw $8, -1340($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t0, 0($t0)
	sw $t0, -1356($fp)
	lw $8, -1352($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1368($fp)
	lw $8, _static_114
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t0, 0($t0)
	sw $t0, -1380($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1384($fp)
	lw $8, -1380($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t0, 0($t0)
	sw $t0, -1392($fp)
	lw $8, -1360($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $8, -1396($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1408($fp)
	lw $8, _static_114
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t0, 0($t0)
	sw $t0, -1420($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1424($fp)
	lw $8, -1420($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t0, 0($t0)
	sw $t0, -1460($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1436($fp)
	lw $8, _static_114
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t0, 0($t0)
	sw $t0, -1448($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1452($fp)
	lw $8, -1448($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t0, 0($t0)
	sw $t0, -1464($fp)
	lw $8, -1460($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1476($fp)
	lw $8, _static_114
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t0, 0($t0)
	sw $t0, -1488($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1492($fp)
	lw $8, -1488($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t0, 0($t0)
	sw $t0, -1500($fp)
	lw $8, -1468($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $8, -1504($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1516($fp)
	lw $8, _static_114
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t0, 0($t0)
	sw $t0, -1528($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1532($fp)
	lw $8, -1528($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t0, 0($t0)
	sw $t0, -1568($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1544($fp)
	lw $8, _static_114
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t0, 0($t0)
	sw $t0, -1556($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -1560($fp)
	lw $8, -1556($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t0, 0($t0)
	sw $t0, -1572($fp)
	lw $8, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1584($fp)
	lw $8, _static_114
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t0, 0($t0)
	sw $t0, -1596($fp)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -1600($fp)
	lw $8, -1596($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t0, 0($t0)
	sw $t0, -1608($fp)
	lw $8, -1576($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $8, -1612($fp)
	lw $t1, -12($fp)
	seq $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	beqz $t0, _short_evaluate_32
_short_evaluate_32:
	nop
	lw $t0, -860($fp)
	beqz $t0, _end_if_192
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1636($fp)
	lw $8, _static_116
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t0, 0($t0)
	sw $t0, -1648($fp)
	lw $8, -1648($fp)
	add $t0, $t0, 1
	sw $t0, -1652($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -1624($fp)
	lw $8, _static_116
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1652($fp)
	lw $t1, -1628($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, -16($fp)
_begin_loop_129:
	lw $8, -16($fp)
	sle $t0, $t0, 2
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	beqz $t0, _end_loop_129
	li $t0, 0
	sw $t0, -20($fp)
_begin_loop_130:
	lw $8, -20($fp)
	sle $t0, $t0, 2
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	beqz $t0, _end_loop_130
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -1680($fp)
	lw $8, _static_114
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t0, 0($t0)
	sw $t0, -1688($fp)
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -1692($fp)
	lw $8, -1688($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t0, 0($t0)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -1704($fp)
	li $v0, 4
	lw $a0, -1704($fp)
	syscall
	la $t0, _static_119
	sw $t0, -1708($fp)
	li $v0, 4
	lw $a0, -1708($fp)
	syscall
_continue_loop130:
	lw $t0, -20($fp)
	sw $t0, -1712($fp)
	lw $8, -20($fp)
	add $t0, $t0, 1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -20($fp)
	b _begin_loop_130
_end_loop_130:
	nop
	la $t0, _static_113
	sw $t0, -1716($fp)
	li $v0, 4
	lw $a0, -1716($fp)
	syscall
_continue_loop129:
	lw $t0, -16($fp)
	sw $t0, -1720($fp)
	lw $8, -16($fp)
	add $t0, $t0, 1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -16($fp)
	b _begin_loop_129
_end_loop_129:
	nop
	la $t0, _static_113
	sw $t0, -1724($fp)
	li $v0, 4
	lw $a0, -1724($fp)
	syscall
_end_if_192:
	nop
	b _end_if_186
_else_186:
	lw $8, -4($fp)
	seq $t0, $t0, 2
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	beqz $t0, _else_187
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -380($fp)
	lw $8, _static_114
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t0, 0($t0)
	sw $t0, -392($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -396($fp)
	lw $8, -392($fp)
	lw $t1, -396($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t0, 0($t0)
	sw $t0, -404($fp)
	li $8, 15
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -412($fp)
	lw $8, _static_114
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t0, 0($t0)
	sw $t0, -424($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -428($fp)
	lw $8, -424($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t0, 0($t0)
	sw $t0, -436($fp)
	lw $8, -408($fp)
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -356($fp)
	lw $8, _static_114
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t0, 0($t0)
	sw $t0, -364($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -368($fp)
	lw $8, -364($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -440($fp)
	lw $t1, -372($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -448($fp)
	lw $8, _static_114
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t0, 0($t0)
	sw $t0, -456($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -460($fp)
	lw $8, -456($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t0, 0($t0)
	sw $t0, -472($fp)
	lw $8, -472($fp)
	sgt $t0, $t0, 0
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	beqz $t0, _short_evaluate_31
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -480($fp)
	lw $8, _static_114
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t0, 0($t0)
	sw $t0, -488($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -492($fp)
	lw $8, -488($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t0, 0($t0)
	sw $t0, -504($fp)
	lw $8, -504($fp)
	slt $t0, $t0, 10
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	beqz $t0, _short_evaluate_31
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -512($fp)
	lw $8, _static_114
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	lw $t0, 0($t0)
	sw $t0, -520($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -524($fp)
	lw $8, -520($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t0, 0($t0)
	sw $t0, -532($fp)
	lw $8, -532($fp)
	mul $t0, $t0, 4
	sw $t0, -536($fp)
	lw $8, _static_115
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t0, 0($t0)
	sw $t0, -548($fp)
	lw $8, -548($fp)
	seq $t0, $t0, 0
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	beqz $t0, _short_evaluate_31
_short_evaluate_31:
	nop
	lw $t0, -444($fp)
	beqz $t0, _end_if_190
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -556($fp)
	lw $8, _static_114
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t0, 0($t0)
	sw $t0, -564($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -568($fp)
	lw $8, -564($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t0, 0($t0)
	sw $t0, -576($fp)
	lw $8, -576($fp)
	mul $t0, $t0, 4
	sw $t0, -580($fp)
	lw $8, _static_115
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	li $t0, 1
	lw $t1, -584($fp)
	sw $t0, 0($t1)
	lw $8, -4($fp)
	seq $t0, $t0, 2
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	beqz $t0, _else_191
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -648($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -656($fp)
	lw $8, _static_114
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t0, 0($t0)
	sw $t0, -664($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -668($fp)
	lw $8, -664($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t0, 0($t0)
	sw $t0, -676($fp)
	lw $8, -8($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -648($fp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -680($fp)
	sw $t0, -12($sp)
jal _func_search
	sw $v0, -640($fp)
	b _end_if_191
_else_191:
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -608($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -612($fp)
	lw $8, _static_114
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t0, 0($t0)
	sw $t0, -620($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -624($fp)
	lw $8, -620($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t0, 0($t0)
	sw $t0, -632($fp)
	lw $8, -8($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
	lw $t0, -608($fp)
	sw $t0, -8($sp)
	lw $t0, -636($fp)
	sw $t0, -12($sp)
jal _func_search
	sw $v0, -600($fp)
_end_if_191:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -684($fp)
	lw $8, _static_114
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t0, 0($t0)
	sw $t0, -692($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -696($fp)
	lw $8, -692($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t0, 0($t0)
	sw $t0, -704($fp)
	lw $8, -704($fp)
	mul $t0, $t0, 4
	sw $t0, -708($fp)
	lw $8, _static_115
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 0
	lw $t1, -712($fp)
	sw $t0, 0($t1)
_end_if_190:
	nop
	b _end_if_187
_else_187:
	li $t0, 1
	sw $t0, -16($fp)
_begin_loop_128:
	lw $8, -16($fp)
	sle $t0, $t0, 9
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	beqz $t0, _end_loop_128
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -220($fp)
	lw $8, _static_115
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t0, 0($t0)
	sw $t0, -232($fp)
	lw $8, -232($fp)
	seq $t0, $t0, 0
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	beqz $t0, _end_if_188
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -240($fp)
	lw $8, _static_115
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 1
	lw $t1, -244($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -252($fp)
	lw $8, _static_114
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t0, 0($t0)
	sw $t0, -260($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -264($fp)
	lw $8, -260($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -16($fp)
	lw $t1, -268($fp)
	sw $t0, 0($t1)
	lw $8, -4($fp)
	seq $t0, $t0, 2
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	beqz $t0, _else_189
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -304($fp)
	lw $8, -8($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	lw $t0, -312($fp)
	sw $t0, -12($sp)
jal _func_search
	sw $v0, -296($fp)
	b _end_if_189
_else_189:
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -288($fp)
	lw $8, -8($fp)
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
	lw $t0, -288($fp)
	sw $t0, -8($sp)
	lw $t0, -292($fp)
	sw $t0, -12($sp)
jal _func_search
	sw $v0, -280($fp)
_end_if_189:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -316($fp)
	lw $8, _static_114
	lw $t1, -316($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t0, 0($t0)
	sw $t0, -324($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -328($fp)
	lw $8, -324($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	lw $t1, -332($fp)
	sw $t0, 0($t1)
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -340($fp)
	lw $8, _static_115
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sw $t0, 0($t1)
_end_if_188:
	nop
_continue_loop128:
	lw $t0, -16($fp)
	sw $t0, -352($fp)
	lw $8, -16($fp)
	add $t0, $t0, 1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -16($fp)
	b _begin_loop_128
_end_loop_128:
	nop
_end_if_187:
	nop
_end_if_186:
	nop
_end_if_185:
	nop
_end_func_search:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -1844($fp)
	jr $ra

_func_main:
	sw $fp, -164($sp)
	add $fp, $sp, -4
	add $sp, $fp, -168
	sw $ra, 0($sp)
	li $t0, 3
	sw $t0, -4($sp)
jal _func_origin
	li $t0, 0
	sw $t0, -4($sp)
	li $t0, 0
	sw $t0, -8($sp)
	li $t0, 0
	sw $t0, -12($sp)
jal _func_search
	sw $v0, -4($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_116
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	lw $t0, 0($t0)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -36($fp)
	li $v0, 4
	lw $a0, -36($fp)
	syscall
	li $v0, 4
	la $a0, _static_113
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -160($fp)
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
