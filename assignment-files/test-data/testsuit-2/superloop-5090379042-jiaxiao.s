	.data
	.word 1
_static_178:
	.asciiz "\n"
	.align 2
_static_179:
	.word 0
_static_180:
	.word 0
_static_181:
	.word 0
_static_182:
	.word 0
_static_183:
	.word 0
_static_184:
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
	li $t0, 99
	sw $t0, _static_180
	li $t0, 100
	sw $t0, _static_181
	li $t0, 101
	sw $t0, _static_182
	li $t0, 102
	sw $t0, _static_183
	li $t0, 0
	sw $t0, _static_184
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
	beqz $t0, _end_if_300
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_300:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_216:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_216
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
	beqz $t0, _end_if_301
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_301:
	nop
_continue_loop216:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_216
_end_loop_216:
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
	beqz $t0, _end_if_302
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_302:
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
_begin_loop_217:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_217
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
	beqz $t0, _end_if_303
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_303:
	nop
_continue_loop217:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_217
_end_loop_217:
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
	beqz $t0, _end_if_304
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_304:
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
_begin_loop_218:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_218
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
	beqz $t0, _end_if_305
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_305:
	nop
_continue_loop218:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_218
_end_loop_218:
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
	beqz $t0, _end_if_306
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_306:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_219:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_219
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
	beqz $t0, _end_if_307
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_307:
	nop
_continue_loop219:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_219
_end_loop_219:
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
	sw $fp, -400($sp)
	add $fp, $sp, -4
	add $sp, $fp, -404
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, _static_179
	li $t0, 1
	sw $t0, 0($fp)
_begin_loop_220:
	lw $8, 0($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	beqz $t0, _end_loop_220
	li $t0, 1
	sw $t0, -4($fp)
_begin_loop_221:
	lw $8, -4($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	beqz $t0, _end_loop_221
	li $t0, 1
	sw $t0, -8($fp)
_begin_loop_222:
	lw $8, -8($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_222
	li $t0, 1
	sw $t0, -12($fp)
_begin_loop_223:
	lw $8, -12($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_223
	li $t0, 1
	sw $t0, -16($fp)
_begin_loop_224:
	lw $8, -16($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	beqz $t0, _end_loop_224
	li $t0, 1
	sw $t0, -20($fp)
_begin_loop_225:
	lw $8, -20($fp)
	lw $t1, _static_179
	sle $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	beqz $t0, _end_loop_225
	lw $8, 0($fp)
	lw $t1, -4($fp)
	sne $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, -8($fp)
	sne $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, -12($fp)
	sne $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, -16($fp)
	sne $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, 0($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, -8($fp)
	sne $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, -12($fp)
	sne $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, -16($fp)
	sne $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -4($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, -12($fp)
	sne $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, -16($fp)
	sne $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -8($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, -16($fp)
	sne $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -12($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -16($fp)
	lw $t1, -20($fp)
	sne $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -16($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -16($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -16($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -16($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -20($fp)
	lw $t1, _static_180
	sne $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -20($fp)
	lw $t1, _static_181
	sne $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -20($fp)
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, -20($fp)
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, _static_181
	lw $t1, _static_182
	sne $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
	lw $8, _static_180
	lw $t1, _static_183
	sne $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	beqz $t0, _short_evaluate_37
_short_evaluate_37:
	nop
	lw $t0, -76($fp)
	beqz $t0, _end_if_308
	lw $t0, _static_184
	sw $t0, -244($fp)
	lw $8, _static_184
	add $t0, $t0, 1
	sw $t0, _static_184
	lw $t0, _static_184
	sw $t0, _static_184
_end_if_308:
	nop
_continue_loop225:
	lw $t0, -20($fp)
	sw $t0, -248($fp)
	lw $8, -20($fp)
	add $t0, $t0, 1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -20($fp)
	b _begin_loop_225
_end_loop_225:
	nop
_continue_loop224:
	lw $t0, -16($fp)
	sw $t0, -252($fp)
	lw $8, -16($fp)
	add $t0, $t0, 1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -16($fp)
	b _begin_loop_224
_end_loop_224:
	nop
_continue_loop223:
	lw $t0, -12($fp)
	sw $t0, -256($fp)
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -12($fp)
	b _begin_loop_223
_end_loop_223:
	nop
_continue_loop222:
	lw $t0, -8($fp)
	sw $t0, -260($fp)
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -8($fp)
	b _begin_loop_222
_end_loop_222:
	nop
_continue_loop221:
	lw $t0, -4($fp)
	sw $t0, -264($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_221
_end_loop_221:
	nop
_continue_loop220:
	lw $t0, 0($fp)
	sw $t0, -268($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_220
_end_loop_220:
	nop
	lw $t0, _static_184
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -272($fp)
	li $v0, 4
	lw $a0, -272($fp)
	syscall
	li $v0, 4
	la $a0, _static_178
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -396($fp)
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
