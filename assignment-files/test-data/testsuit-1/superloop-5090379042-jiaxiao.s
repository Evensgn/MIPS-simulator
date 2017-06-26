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
	li $8, 99
	sw $8, _static_180
	li $8, 100
	sw $8, _static_181
	li $8, 101
	sw $8, _static_182
	li $8, 102
	sw $8, _static_183
	li $8, 0
	sw $8, _static_184
	jal _func_main
	move $a0, $v0
	li $v0, 17
	syscall
_func_____built_in_string_less:
	sw $fp, -212($sp)
	add $fp, $sp, -4
	add $sp, $fp, -216
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sw $10, -8($fp)
	ble $10, $13, _end_if_300
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_300:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_216:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_216
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_301
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_301:
_continue_loop216:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_216
_end_loop_216:
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -8($fp)
	slt $12, $11, $10
	move $v0, $12
	sw $12, -88($fp)
	b _end_func_____built_in_string_less
_end_func_____built_in_string_less:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -208($fp)
	jr $ra

_func_____built_in_string_equal:
	sw $fp, -188($sp)
	add $fp, $sp, -4
	add $sp, $fp, -192
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	beq $10, $13, _end_if_302
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_302:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_217:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_217
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_303
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_303:
_continue_loop217:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_217
_end_loop_217:
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_equal
_end_func_____built_in_string_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -184($fp)
	jr $ra

_func_____built_in_string_inequal:
	sw $fp, -188($sp)
	add $fp, $sp, -4
	add $sp, $fp, -192
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	beq $10, $13, _end_if_304
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_304:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_218:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_218
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_305
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_305:
_continue_loop218:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_218
_end_loop_218:
	move $v0, $zero
	b _end_func_____built_in_string_inequal
_end_func_____built_in_string_inequal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -184($fp)
	jr $ra

_func_____built_in_string_greater:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater
_end_func_____built_in_string_greater:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_string_less_equal:
	sw $fp, -220($sp)
	add $fp, $sp, -4
	add $sp, $fp, -224
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sw $10, -8($fp)
	ble $10, $13, _end_if_306
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_306:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_219:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_219
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_307
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_307:
_continue_loop219:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_219
_end_loop_219:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	lw $11, -4($fp)
	sub $12, $11, 4
	lw $13, 0($12)
	sle $14, $10, $13
	move $v0, $14
	sw $14, -96($fp)
	b _end_func_____built_in_string_less_equal
_end_func_____built_in_string_less_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -216($fp)
	jr $ra

_func_____built_in_string_greater_equal:
	sw $fp, -132($sp)
	add $fp, $sp, -4
	add $sp, $fp, -136
	sw $ra, 0($sp)

	lw $8, -4($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_____built_in_string_less_equal
	sw $v0, -8($fp)
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_____built_in_string_greater_equal
_end_func_____built_in_string_greater_equal:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -128($fp)
	jr $ra

_func_____built_in_println:
	sw $fp, -128($sp)
	add $fp, $sp, -4
	add $sp, $fp, -132
	sw $ra, 0($sp)

	lw $8, 0($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_178
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_main:
	sw $fp, -396($sp)
	add $fp, $sp, -4
	add $sp, $fp, -400
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -24($fp)
	lw $8, -24($fp)
	li $9, 1
	sw $8, _static_179
	sw $9, 0($fp)
_begin_loop_220:
	lw $8, 0($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_220
	li $8, 1
	sw $8, -4($fp)
_begin_loop_221:
	lw $8, -4($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_221
	li $8, 1
	sw $8, -8($fp)
_begin_loop_222:
	lw $8, -8($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_222
	li $8, 1
	sw $8, -12($fp)
_begin_loop_223:
	lw $8, -12($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_223
	li $8, 1
	sw $8, -16($fp)
_begin_loop_224:
	lw $8, -16($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_224
	li $8, 1
	sw $8, -20($fp)
_begin_loop_225:
	lw $8, -20($fp)
	lw $9, _static_179
	bgt $8, $9, _end_loop_225
	lw $8, 0($fp)
	lw $9, -4($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, -8($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, -12($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, -16($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, -20($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, 0($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, -8($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, -12($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, -16($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, -20($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -4($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, -12($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, -16($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, -20($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -8($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, -16($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, -20($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -12($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -16($fp)
	lw $9, -20($fp)
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -16($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -16($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -16($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -16($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -20($fp)
	lw $9, _static_180
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -20($fp)
	lw $9, _static_181
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -20($fp)
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, -20($fp)
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, _static_181
	lw $9, _static_182
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
	beqz $11, _short_evaluate_37
	lw $8, _static_180
	lw $9, _static_183
	sne $10, $8, $9
	move $11, $10
	sw $11, -76($fp)
_short_evaluate_37:
	lw $8, -76($fp)
	beqz $8, _end_if_308
	lw $8, _static_184
	add $8, $8, 1
	move $8, $8
	sw $8, _static_184
_end_if_308:
_continue_loop225:
	lw $8, -20($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -20($fp)
	b _begin_loop_225
_end_loop_225:
_continue_loop224:
	lw $8, -16($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -16($fp)
	b _begin_loop_224
_end_loop_224:
_continue_loop223:
	lw $8, -12($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -12($fp)
	b _begin_loop_223
_end_loop_223:
_continue_loop222:
	lw $8, -8($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -8($fp)
	b _begin_loop_222
_end_loop_222:
_continue_loop221:
	lw $8, -4($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -4($fp)
	b _begin_loop_221
_end_loop_221:
_continue_loop220:
	lw $8, 0($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, 0($fp)
	b _begin_loop_220
_end_loop_220:

	lw $8, _static_184
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -272($fp)

	lw $8, -272($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_178
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -392($fp)
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
