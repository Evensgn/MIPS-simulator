	.data
	.word 1
_static_137:
	.asciiz "\n"
	.align 2
	.word 1
_static_149:
	.asciiz " "
	.align 2
	.word 7
_static_150:
	.asciiz "Total: "
	.align 2
_static_138:
	.word 0
_static_139:
	.word 0
_static_140:
	.word 0
_static_141:
	.word 0
_static_142:
	.word 0
_static_143:
	.word 0
_static_144:
	.word 0
_static_145:
	.word 0
_static_146:
	.word 0
_static_147:
	.word 0
_static_148:
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
	li $8, 1001
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -8($fp)
	li $v0, 9
	lw $a0, -8($fp)
	syscall
	sw $v0, -12($fp)
	li $t0, 1001
	lw $t1, -12($fp)
	sw $t0, 0($t1)
	lw $8, -12($fp)
	add $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_144
	li $8, 170
	add $t0, $t0, 1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	li $v0, 9
	lw $a0, -28($fp)
	syscall
	sw $v0, -32($fp)
	li $t0, 170
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, _static_145
	li $8, 1001
	add $t0, $t0, 1
	sw $t0, -44($fp)
	lw $8, -44($fp)
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	li $v0, 9
	lw $a0, -48($fp)
	syscall
	sw $v0, -52($fp)
	li $t0, 1001
	lw $t1, -52($fp)
	sw $t0, 0($t1)
	lw $8, -52($fp)
	add $t0, $t0, 4
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, _static_146
	li $8, 1
	add $t0, $t0, 1
	sw $t0, -64($fp)
	lw $8, -64($fp)
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	li $v0, 9
	lw $a0, -68($fp)
	syscall
	sw $v0, -72($fp)
	li $t0, 1
	lw $t1, -72($fp)
	sw $t0, 0($t1)
	lw $8, -72($fp)
	add $t0, $t0, 4
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, _static_147
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
	beqz $t0, _end_if_229
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_229:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_169:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_169
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
	beqz $t0, _end_if_230
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_230:
	nop
_continue_loop169:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_169
_end_loop_169:
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
	beqz $t0, _end_if_231
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_231:
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
_begin_loop_170:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_170
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
	beqz $t0, _end_if_232
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_232:
	nop
_continue_loop170:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_170
_end_loop_170:
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
	beqz $t0, _end_if_233
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_233:
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
_begin_loop_171:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_171
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
	beqz $t0, _end_if_234
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_234:
	nop
_continue_loop171:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_171
_end_loop_171:
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
	beqz $t0, _end_if_235
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_235:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_172:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_172
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
	beqz $t0, _end_if_236
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_236:
	nop
_continue_loop172:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_172
_end_loop_172:
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
	sw $t0, _static_148
	li $t0, 0
	sw $t0, _static_140
_begin_loop_173:
	lw $8, _static_140
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	beqz $t0, _end_loop_173
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
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	lw $8, _static_148
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -48($fp)
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, _static_141
_begin_loop_174:
	lw $8, _static_141
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_174
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -60($fp)
	lw $8, _static_148
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	lw $t0, 0($t0)
	sw $t0, -68($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -72($fp)
	lw $8, -68($fp)
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sw $t0, 0($t1)
_continue_loop174:
	lw $t0, _static_141
	sw $t0, -84($fp)
	lw $8, _static_141
	add $t0, $t0, 1
	sw $t0, _static_141
	lw $t0, _static_141
	sw $t0, _static_141
	b _begin_loop_174
_end_loop_174:
	nop
_continue_loop173:
	lw $t0, _static_140
	sw $t0, -88($fp)
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, _static_140
	lw $t0, _static_140
	sw $t0, _static_140
	b _begin_loop_173
_end_loop_173:
	nop
_end_func_origin:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -208($fp)
	jr $ra

_func_getPrime:
	sw $fp, -292($sp)
	add $fp, $sp, -4
	add $sp, $fp, -296
	sw $ra, 0($sp)
	li $t0, 2
	sw $t0, -4($fp)
	li $t0, 2
	sw $t0, -8($fp)
_begin_loop_175:
	lw $8, -8($fp)
	lw $t1, 0($fp)
	sle $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _end_loop_175
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_144
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	lw $t0, 0($t0)
	sw $t0, -36($fp)
	lw $8, -36($fp)
	seq $t0, $t0, 1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	beqz $t0, _end_if_237
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -60($fp)
	lw $8, _static_147
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	lw $t0, 0($t0)
	sw $t0, -72($fp)
	lw $8, -72($fp)
	add $t0, $t0, 1
	sw $t0, -76($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	lw $8, _static_147
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -76($fp)
	lw $t1, -52($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	lw $8, _static_147
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t0, 0($t0)
	sw $t0, -92($fp)
	lw $8, -92($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	lw $8, _static_145
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -8($fp)
	lw $t1, -100($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, _static_147
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t0, 0($t0)
	sw $t0, -124($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -104($fp)
	lw $8, _static_146
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -124($fp)
	lw $t1, -108($fp)
	sw $t0, 0($t1)
_end_if_237:
	nop
_continue_loop176:
	lw $8, -8($fp)
	lw $t1, -4($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $8, -128($fp)
	lw $t1, 0($fp)
	sle $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	beqz $t0, _end_loop_176
	lw $8, -8($fp)
	lw $t1, -4($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $8, -136($fp)
	mul $t0, $t0, 4
	sw $t0, -140($fp)
	lw $8, _static_144
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sw $t0, 0($t1)
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -4($fp)
	b _continue_loop176
_end_loop_176:
	nop
	li $t0, 2
	sw $t0, -4($fp)
_continue_loop175:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -8($fp)
	b _begin_loop_175
_end_loop_175:
	nop
_end_func_getPrime:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -288($fp)
	jr $ra

_func_getResult:
	sw $fp, -420($sp)
	add $fp, $sp, -4
	add $sp, $fp, -424
	sw $ra, 0($sp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	lw $8, _static_148
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, -20($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	lw $t0, 0($t0)
	sw $t0, -36($fp)
	lw $8, -36($fp)
	seq $t0, $t0, -1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	beqz $t0, _end_if_238
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -44($fp)
	lw $8, _static_145
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	lw $t0, 0($t0)
	sw $t0, -56($fp)
	lw $8, -56($fp)
	mul $t0, $t0, 2
	sw $t0, -60($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, _static_145
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t0, 0($t0)
	sw $t0, -72($fp)
	lw $8, -60($fp)
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $8, -76($fp)
	lw $t1, 0($fp)
	sle $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	beqz $t0, _end_if_239
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	lw $8, _static_145
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t0, 0($t0)
	sw $t0, -96($fp)
	lw $8, -96($fp)
	mul $t0, $t0, 2
	sw $t0, -100($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -104($fp)
	lw $8, _static_145
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t0, 0($t0)
	sw $t0, -112($fp)
	lw $8, -100($fp)
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $8, -116($fp)
	mul $t0, $t0, 4
	sw $t0, -120($fp)
	lw $8, _static_144
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	lw $t0, 0($t0)
	sw $t0, -132($fp)
	lw $8, -132($fp)
	sne $t0, $t0, 0
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	beqz $t0, _end_if_240
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -164($fp)
	lw $8, _static_145
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t0, 0($t0)
	sw $t0, -176($fp)
	lw $8, -176($fp)
	mul $t0, $t0, 2
	sw $t0, -180($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -184($fp)
	lw $8, _static_145
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t0, 0($t0)
	sw $t0, -192($fp)
	lw $8, -180($fp)
	lw $t1, -192($fp)
	sub $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $8, -196($fp)
	mul $t0, $t0, 4
	sw $t0, -200($fp)
	lw $8, _static_146
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t0, 0($t0)
	sw $t0, -208($fp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
	lw $t0, -8($fp)
	sw $t0, -8($sp)
	lw $t0, -208($fp)
	sw $t0, -12($sp)
jal _func_getResult
	sw $v0, -160($fp)
	lw $8, -160($fp)
	add $t0, $t0, 1
	sw $t0, -216($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -140($fp)
	lw $8, _static_148
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t0, 0($t0)
	sw $t0, -148($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -152($fp)
	lw $8, -148($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -216($fp)
	lw $t1, -156($fp)
	sw $t0, 0($t1)
_end_if_240:
	nop
_end_if_239:
	nop
_end_if_238:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -220($fp)
	lw $8, _static_148
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t0, 0($t0)
	sw $t0, -228($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -232($fp)
	lw $8, -228($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t0, 0($t0)
	sw $t0, -244($fp)
	lw $8, -244($fp)
	seq $t0, $t0, -1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	beqz $t0, _end_if_241
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -252($fp)
	lw $8, _static_148
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t0, 0($t0)
	sw $t0, -260($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -264($fp)
	lw $8, -260($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	li $t0, 1
	lw $t1, -268($fp)
	sw $t0, 0($t1)
_end_if_241:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -276($fp)
	lw $8, _static_148
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t0, 0($t0)
	sw $t0, -284($fp)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -288($fp)
	lw $8, -284($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t0, 0($t0)
	sw $t0, -296($fp)
	lw $v0, -296($fp)
	b _end_func_getResult
_end_func_getResult:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -416($fp)
	jr $ra

_func_printF:
	sw $fp, -188($sp)
	add $fp, $sp, -4
	add $sp, $fp, -192
	sw $ra, 0($sp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -12($fp)
	li $v0, 4
	lw $a0, -12($fp)
	syscall
_continue_loop177:
	lw $8, -8($fp)
	sgt $t0, $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _end_loop_177
	la $t0, _static_149
	sw $t0, -24($fp)
	li $v0, 4
	lw $a0, -24($fp)
	syscall
	lw $t0, -4($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -28($fp)
	li $v0, 4
	lw $a0, -28($fp)
	syscall
	lw $8, -4($fp)
	mul $t0, $t0, 2
	sw $t0, -36($fp)
	lw $8, -36($fp)
	lw $t1, 0($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -4($fp)
	lw $8, 0($fp)
	lw $t1, -4($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $8, -44($fp)
	div $t0, $t0, 2
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, 0($fp)
	lw $8, -8($fp)
	sub $t0, $t0, 1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -8($fp)
	b _continue_loop177
_end_loop_177:
	nop
	la $t0, _static_137
	sw $t0, -64($fp)
	li $v0, 4
	lw $a0, -64($fp)
	syscall
_end_func_printF:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -184($fp)
	jr $ra

_func_main:
	sw $fp, -512($sp)
	add $fp, $sp, -4
	add $sp, $fp, -516
	sw $ra, 0($sp)
	li $t0, 170
	sw $t0, -4($sp)
jal _func_origin
	li $t0, 1000
	sw $t0, _static_138
	li $v0, 5
	syscall
	sw $v0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, _static_139
	li $t0, 0
	sw $t0, _static_142
	li $t0, 0
	sw $t0, _static_143
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_147
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	li $t0, 0
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, _static_140
_begin_loop_178:
	lw $8, _static_138
	add $t0, $t0, 1
	sw $t0, -44($fp)
	lw $8, _static_140
	lw $t1, -44($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_178
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -52($fp)
	lw $8, _static_144
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	sw $t0, -56($fp)
	li $t0, 1
	lw $t1, -56($fp)
	sw $t0, 0($t1)
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, _static_146
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 0
	lw $t1, -68($fp)
	sw $t0, 0($t1)
_continue_loop178:
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, _static_140
	b _begin_loop_178
_end_loop_178:
	nop
	li $t0, 0
	sw $t0, _static_140
_begin_loop_179:
	lw $8, _static_139
	add $t0, $t0, 1
	sw $t0, -92($fp)
	lw $8, _static_140
	lw $t1, -92($fp)
	slt $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	beqz $t0, _end_loop_179
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -100($fp)
	lw $8, _static_145
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, 0
	lw $t1, -104($fp)
	sw $t0, 0($t1)
_continue_loop179:
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, _static_140
	b _begin_loop_179
_end_loop_179:
	nop
	li $t0, 0
	sw $t0, _static_140
_begin_loop_180:
	lw $8, _static_140
	lw $t1, _static_139
	sle $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	beqz $t0, _end_loop_180
	li $t0, 0
	sw $t0, _static_141
_begin_loop_181:
	lw $8, _static_141
	lw $t1, _static_139
	sle $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	beqz $t0, _end_loop_181
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -136($fp)
	lw $8, _static_148
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t0, 0($t0)
	sw $t0, -144($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -148($fp)
	lw $8, -144($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	li $t0, -1
	lw $t1, -152($fp)
	sw $t0, 0($t1)
_continue_loop181:
	lw $8, _static_141
	add $t0, $t0, 1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, _static_141
	b _begin_loop_181
_end_loop_181:
	nop
_continue_loop180:
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, _static_140
	b _begin_loop_180
_end_loop_180:
	nop
	lw $t0, _static_138
	sw $t0, -4($sp)
jal _func_getPrime
	sw $v0, -176($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -184($fp)
	lw $8, _static_147
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t0, 0($t0)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, _static_142
	li $t0, 1
	sw $t0, _static_140
_begin_loop_182:
	lw $8, _static_140
	lw $t1, _static_142
	slt $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	beqz $t0, _end_loop_182
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, _static_141
_begin_loop_183:
	lw $8, _static_141
	lw $t1, _static_142
	sle $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	beqz $t0, _end_loop_183
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -216($fp)
	lw $8, _static_148
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t0, 0($t0)
	sw $t0, -224($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -228($fp)
	lw $8, -224($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t0, 0($t0)
	sw $t0, -240($fp)
	lw $8, -240($fp)
	seq $t0, $t0, -1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	beqz $t0, _end_if_242
	lw $t0, _static_138
	sw $t0, -4($sp)
	lw $t0, _static_140
	sw $t0, -8($sp)
	lw $t0, _static_141
	sw $t0, -12($sp)
jal _func_getResult
	sw $v0, -268($fp)
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -248($fp)
	lw $8, _static_148
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t0, 0($t0)
	sw $t0, -256($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -260($fp)
	lw $8, -256($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -268($fp)
	lw $t1, -264($fp)
	sw $t0, 0($t1)
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -272($fp)
	lw $8, _static_148
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t0, 0($t0)
	sw $t0, -280($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -284($fp)
	lw $8, -280($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t0, 0($t0)
	sw $t0, -296($fp)
	lw $8, -296($fp)
	sgt $t0, $t0, 1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	beqz $t0, _end_if_243
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -308($fp)
	lw $8, _static_145
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t0, 0($t0)
	sw $t0, -316($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -320($fp)
	lw $8, _static_145
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t0, 0($t0)
	sw $t0, -328($fp)
	lw $8, _static_140
	mul $t0, $t0, 4
	sw $t0, -332($fp)
	lw $8, _static_148
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t0, 0($t0)
	sw $t0, -340($fp)
	lw $8, _static_141
	mul $t0, $t0, 4
	sw $t0, -344($fp)
	lw $8, -340($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t0, 0($t0)
	sw $t0, -352($fp)
	lw $t0, -316($fp)
	sw $t0, -4($sp)
	lw $t0, -328($fp)
	sw $t0, -8($sp)
	lw $t0, -352($fp)
	sw $t0, -12($sp)
jal _func_printF
	sw $v0, -304($fp)
	lw $8, _static_143
	add $t0, $t0, 1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, _static_143
_end_if_243:
	nop
_end_if_242:
	nop
_continue_loop183:
	lw $8, _static_141
	add $t0, $t0, 1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, _static_141
	b _begin_loop_183
_end_loop_183:
	nop
_continue_loop182:
	lw $8, _static_140
	add $t0, $t0, 1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, _static_140
	b _begin_loop_182
_end_loop_182:
	nop
	la $t0, _static_150
	sw $t0, -380($fp)
	li $v0, 4
	lw $a0, -380($fp)
	syscall
	lw $t0, _static_143
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -384($fp)
	li $v0, 4
	lw $a0, -384($fp)
	syscall
	li $v0, 4
	la $a0, _static_137
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -508($fp)
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
