	.data
	.word 1
_static_167:
	.asciiz "\n"
	.align 2
_static_168:
	.word 0
_static_169:
	.word 0
_static_170:
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
	li $t0, 0
	sw $t0, _static_169
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
	beqz $t0, _end_if_274
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_274:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_205:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_205
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
	beqz $t0, _end_if_275
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_275:
	nop
_continue_loop205:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_205
_end_loop_205:
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
	beqz $t0, _end_if_276
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_276:
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
_begin_loop_206:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_206
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
	beqz $t0, _end_if_277
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_277:
	nop
_continue_loop206:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_206
_end_loop_206:
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
	beqz $t0, _end_if_278
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_278:
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
_begin_loop_207:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_207
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
	beqz $t0, _end_if_279
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_279:
	nop
_continue_loop207:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_207
_end_loop_207:
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
	beqz $t0, _end_if_280
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_280:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_208:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_208
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
	beqz $t0, _end_if_281
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_281:
	nop
_continue_loop208:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_208
_end_loop_208:
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
	sw $fp, -504($sp)
	add $fp, $sp, -4
	add $sp, $fp, -508
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, _static_168
	lw $8, _static_168
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
	sw $t0, _static_170
	li $t0, 0
	sw $t0, 0($fp)
_continue_loop209:
	lw $8, 0($fp)
	lw $t1, _static_168
	sle $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_209
	lw $t0, 0($fp)
	sw $t0, -60($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	lw $8, -60($fp)
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, _static_170
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 1
	lw $t1, -68($fp)
	sw $t0, 0($t1)
	b _continue_loop209
_end_loop_209:
	nop
	lw $8, _static_168
	add $t0, $t0, 5
	sw $t0, -76($fp)
	lw $8, -76($fp)
	add $t0, $t0, 1
	sw $t0, -80($fp)
	lw $8, -80($fp)
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	li $v0, 9
	lw $a0, -84($fp)
	syscall
	sw $v0, -88($fp)
	lw $t0, -76($fp)
	lw $t1, -88($fp)
	sw $t0, 0($t1)
	lw $8, -88($fp)
	add $t0, $t0, 4
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -4($fp)
	lw $8, _static_168
	add $t0, $t0, 5
	sw $t0, -100($fp)
	lw $8, -100($fp)
	add $t0, $t0, 1
	sw $t0, -104($fp)
	lw $8, -104($fp)
	mul $t0, $t0, 4
	sw $t0, -108($fp)
	li $v0, 9
	lw $a0, -108($fp)
	syscall
	sw $v0, -112($fp)
	lw $t0, -100($fp)
	lw $t1, -112($fp)
	sw $t0, 0($t1)
	lw $8, -112($fp)
	add $t0, $t0, 4
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -8($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -124($fp)
	lw $8, -4($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 1
	lw $t1, -128($fp)
	sw $t0, 0($t1)
	li $t0, 2
	sw $t0, 0($fp)
_begin_loop_210:
	lw $8, 0($fp)
	lw $t1, _static_168
	sgt $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	beqz $t0, _end_if_282
	b _end_loop_210
_end_if_282:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -144($fp)
	lw $8, _static_170
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t0, 0($t0)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	beqz $t0, _end_if_283
	lw $8, _static_169
	add $t0, $t0, 1
	sw $t0, _static_169
	lw $8, _static_169
	mul $t0, $t0, 4
	sw $t0, -156($fp)
	lw $8, -8($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, 0($fp)
	lw $t1, -160($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -176($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -164($fp)
	lw $8, -4($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -176($fp)
	lw $t1, -168($fp)
	sw $t0, 0($t1)
_end_if_283:
	nop
	lw $t0, 0($fp)
	sw $t0, -12($fp)
	li $t0, 1
	sw $t0, -16($fp)
_begin_loop_211:
	lw $8, -16($fp)
	lw $t1, _static_169
	sle $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	beqz $t0, _short_evaluate_36
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -192($fp)
	lw $8, -8($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t0, 0($t0)
	sw $t0, -200($fp)
	lw $8, -12($fp)
	lw $t1, -200($fp)
	mul $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $8, -204($fp)
	lw $t1, _static_168
	sle $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	beqz $t0, _short_evaluate_36
_short_evaluate_36:
	nop
	lw $t0, -184($fp)
	beqz $t0, _end_loop_211
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -212($fp)
	lw $8, -8($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	lw $t0, 0($t0)
	sw $t0, -220($fp)
	lw $8, -12($fp)
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -20($fp)
	lw $8, -20($fp)
	lw $t1, _static_168
	sgt $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	beqz $t0, _end_if_284
	b _continue_loop211
_end_if_284:
	nop
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -232($fp)
	lw $8, _static_170
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	li $t0, 0
	lw $t1, -236($fp)
	sw $t0, 0($t1)
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -240($fp)
	lw $8, -8($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t0, 0($t0)
	sw $t0, -248($fp)
	lw $8, -12($fp)
	lw $t1, -248($fp)
	rem $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $8, -252($fp)
	seq $t0, $t0, 0
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	beqz $t0, _else_285
	lw $8, -12($fp)
	mul $t0, $t0, 4
	sw $t0, -332($fp)
	lw $8, -4($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t0, 0($t0)
	sw $t0, -348($fp)
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -340($fp)
	lw $8, -8($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t0, 0($t0)
	sw $t0, -352($fp)
	lw $8, -348($fp)
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -324($fp)
	lw $8, -4($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -356($fp)
	lw $t1, -328($fp)
	sw $t0, 0($t1)
	b _end_loop_211
	b _end_if_285
_else_285:
	lw $8, -12($fp)
	mul $t0, $t0, 4
	sw $t0, -288($fp)
	lw $8, -4($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t0, 0($t0)
	sw $t0, -316($fp)
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -296($fp)
	lw $8, -8($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t0, 0($t0)
	sw $t0, -308($fp)
	lw $8, -308($fp)
	sub $t0, $t0, 1
	sw $t0, -312($fp)
	lw $8, -316($fp)
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -264($fp)
	lw $8, -8($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t0, 0($t0)
	sw $t0, -272($fp)
	lw $8, -12($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $8, -276($fp)
	mul $t0, $t0, 4
	sw $t0, -280($fp)
	lw $8, -4($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -320($fp)
	lw $t1, -284($fp)
	sw $t0, 0($t1)
_end_if_285:
	nop
_continue_loop211:
	lw $t0, -16($fp)
	sw $t0, -360($fp)
	lw $8, -16($fp)
	add $t0, $t0, 1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -16($fp)
	b _begin_loop_211
_end_loop_211:
	nop
	lw $8, -12($fp)
	mul $t0, $t0, 4
	sw $t0, -364($fp)
	lw $8, -4($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t0, 0($t0)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -376($fp)
	li $v0, 4
	lw $a0, -376($fp)
	syscall
	li $v0, 4
	la $a0, _static_167
	syscall
_continue_loop210:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_210
_end_loop_210:
	nop
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -500($fp)
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
