	.data
	.word 1
_static_155:
	.asciiz "\n"
	.align 2
	.word 2
_static_160:
	.asciiz " ."
	.align 2
	.word 2
_static_161:
	.asciiz " O"
	.align 2
	.word 0
_static_162:
	.asciiz ""
	.align 2
_static_156:
	.word 0
_static_157:
	.word 0
_static_158:
	.word 0
_static_159:
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
	li $t0, 8
	sw $t0, _static_156
	li $8, 8
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	li $v0, 9
	lw $a0, -12($fp)
	syscall
	sw $v0, -16($fp)
	li $t0, 8
	lw $t1, -16($fp)
	sw $t0, 0($t1)
	lw $8, -16($fp)
	add $t0, $t0, 4
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, _static_157
	li $8, 8
	add $t0, $t0, 1
	sw $t0, -28($fp)
	lw $8, -28($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	li $v0, 9
	lw $a0, -32($fp)
	syscall
	sw $v0, -36($fp)
	li $t0, 8
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	add $t0, $t0, 4
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, _static_158
	li $8, 2
	add $t0, $t0, 1
	sw $t0, -48($fp)
	lw $8, -48($fp)
	mul $t0, $t0, 4
	sw $t0, -52($fp)
	li $v0, 9
	lw $a0, -52($fp)
	syscall
	sw $v0, -56($fp)
	li $t0, 2
	lw $t1, -56($fp)
	sw $t0, 0($t1)
	lw $8, -56($fp)
	add $t0, $t0, 4
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, _static_159
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
	beqz $t0, _end_if_255
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_255:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_193:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_193
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
	beqz $t0, _end_if_256
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_256:
	nop
_continue_loop193:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_193
_end_loop_193:
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
	beqz $t0, _end_if_257
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_257:
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
_begin_loop_194:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_194
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
	beqz $t0, _end_if_258
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_258:
	nop
_continue_loop194:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_194
_end_loop_194:
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
	beqz $t0, _end_if_259
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_259:
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
_begin_loop_195:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_195
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
	beqz $t0, _end_if_260
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_260:
	nop
_continue_loop195:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_195
_end_loop_195:
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
	beqz $t0, _end_if_261
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_261:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_196:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_196
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
	beqz $t0, _end_if_262
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_262:
	nop
_continue_loop196:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_196
_end_loop_196:
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

_func_printBoard:
	sw $fp, -184($sp)
	add $fp, $sp, -4
	add $sp, $fp, -188
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_197:
	lw $8, 0($fp)
	lw $t1, _static_156
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	beqz $t0, _end_loop_197
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_198:
	lw $8, -4($fp)
	lw $t1, _static_156
	slt $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _end_loop_198
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_158
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	lw $t0, 0($t0)
	sw $t0, -32($fp)
	lw $8, -32($fp)
	lw $t1, -4($fp)
	seq $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	beqz $t0, _else_263
	la $t0, _static_161
	sw $t0, -44($fp)
	li $v0, 4
	lw $a0, -44($fp)
	syscall
	b _end_if_263
_else_263:
	la $t0, _static_160
	sw $t0, -40($fp)
	li $v0, 4
	lw $a0, -40($fp)
	syscall
_end_if_263:
	nop
_continue_loop198:
	lw $t0, -4($fp)
	sw $t0, -48($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_198
_end_loop_198:
	nop
	la $t0, _static_162
	sw $t0, -52($fp)
	li $v0, 4
	lw $a0, -52($fp)
	syscall
	li $v0, 4
	la $a0, _static_155
	syscall
_continue_loop197:
	lw $t0, 0($fp)
	sw $t0, -56($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_197
_end_loop_197:
	nop
	la $t0, _static_162
	sw $t0, -60($fp)
	li $v0, 4
	lw $a0, -60($fp)
	syscall
	li $v0, 4
	la $a0, _static_155
	syscall
_end_func_printBoard:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -180($fp)
	jr $ra

_func_search:
	sw $fp, -452($sp)
	add $fp, $sp, -4
	add $sp, $fp, -456
	sw $ra, 0($sp)
	lw $8, 0($fp)
	lw $t1, _static_156
	seq $t0, $t0, $t1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _else_264
jal _func_printBoard
	b _end_if_264
_else_264:
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_199:
	lw $8, -4($fp)
	lw $t1, _static_156
	slt $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	beqz $t0, _end_loop_199
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_157
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	lw $t0, 0($t0)
	sw $t0, -36($fp)
	lw $8, -36($fp)
	seq $t0, $t0, 0
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _short_evaluate_35
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	lw $8, _static_159
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lw $t0, 0($t0)
	sw $t0, -60($fp)
	lw $8, -4($fp)
	lw $t1, 0($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $8, -56($fp)
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, -60($fp)
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t0, 0($t0)
	sw $t0, -76($fp)
	lw $8, -76($fp)
	seq $t0, $t0, 0
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _short_evaluate_35
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -88($fp)
	lw $8, _static_159
	lw $t1, -88($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t0, 0($t0)
	sw $t0, -112($fp)
	lw $8, -4($fp)
	lw $t1, _static_156
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $8, -96($fp)
	sub $t0, $t0, 1
	sw $t0, -104($fp)
	lw $8, -104($fp)
	lw $t1, 0($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $8, -108($fp)
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, -112($fp)
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t0, 0($t0)
	sw $t0, -128($fp)
	lw $8, -128($fp)
	seq $t0, $t0, 0
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _short_evaluate_35
_short_evaluate_35:
	nop
	lw $t0, -20($fp)
	beqz $t0, _end_if_265
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -176($fp)
	lw $8, _static_159
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t0, 0($t0)
	sw $t0, -200($fp)
	lw $8, -4($fp)
	lw $t1, _static_156
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $8, -184($fp)
	sub $t0, $t0, 1
	sw $t0, -192($fp)
	lw $8, -192($fp)
	lw $t1, 0($fp)
	sub $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $8, -196($fp)
	mul $t0, $t0, 4
	sw $t0, -204($fp)
	lw $8, -200($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	li $t0, 1
	lw $t1, -208($fp)
	sw $t0, 0($t1)
	lw $t0, -208($fp)
	lw $t0, 0($t0)
	sw $t0, -216($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -148($fp)
	lw $8, _static_159
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t0, 0($t0)
	sw $t0, -160($fp)
	lw $8, -4($fp)
	lw $t1, 0($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $8, -156($fp)
	mul $t0, $t0, 4
	sw $t0, -164($fp)
	lw $8, -160($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -216($fp)
	lw $t1, -168($fp)
	sw $t0, 0($t1)
	lw $t0, -168($fp)
	lw $t0, 0($t0)
	sw $t0, -220($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -136($fp)
	lw $8, _static_157
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -220($fp)
	lw $t1, -140($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -224($fp)
	lw $8, _static_158
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -4($fp)
	lw $t1, -228($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -4($sp)
jal _func_search
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -280($fp)
	lw $8, _static_159
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t0, 0($t0)
	sw $t0, -304($fp)
	lw $8, -4($fp)
	lw $t1, _static_156
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $8, -288($fp)
	sub $t0, $t0, 1
	sw $t0, -296($fp)
	lw $8, -296($fp)
	lw $t1, 0($fp)
	sub $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $8, -300($fp)
	mul $t0, $t0, 4
	sw $t0, -308($fp)
	lw $8, -304($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sw $t0, 0($t1)
	lw $t0, -312($fp)
	lw $t0, 0($t0)
	sw $t0, -320($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -252($fp)
	lw $8, _static_159
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t0, 0($t0)
	sw $t0, -264($fp)
	lw $8, -4($fp)
	lw $t1, 0($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $8, -260($fp)
	mul $t0, $t0, 4
	sw $t0, -268($fp)
	lw $8, -264($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -320($fp)
	lw $t1, -272($fp)
	sw $t0, 0($t1)
	lw $t0, -272($fp)
	lw $t0, 0($t0)
	sw $t0, -324($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -240($fp)
	lw $8, _static_157
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -324($fp)
	lw $t1, -244($fp)
	sw $t0, 0($t1)
_end_if_265:
	nop
_continue_loop199:
	lw $t0, -4($fp)
	sw $t0, -328($fp)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, -4($fp)
	b _begin_loop_199
_end_loop_199:
	nop
_end_if_264:
	nop
_end_func_search:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -448($fp)
	jr $ra

_func_main:
	sw $fp, -176($sp)
	add $fp, $sp, -4
	add $sp, $fp, -180
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_200:
	lw $8, 0($fp)
	slt $t0, $t0, 2
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	beqz $t0, _end_loop_200
	li $8, 15
	add $t0, $t0, 1
	sw $t0, -28($fp)
	lw $8, -28($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	li $v0, 9
	lw $a0, -32($fp)
	syscall
	sw $v0, -36($fp)
	li $t0, 15
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	add $t0, $t0, 4
	sw $t0, -40($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -16($fp)
	lw $8, _static_159
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -40($fp)
	lw $t1, -20($fp)
	sw $t0, 0($t1)
_continue_loop200:
	lw $t0, 0($fp)
	sw $t0, -44($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	lw $t0, 0($fp)
	sw $t0, 0($fp)
	b _begin_loop_200
_end_loop_200:
	nop
	li $t0, 0
	sw $t0, -4($sp)
jal _func_search
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -172($fp)
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
