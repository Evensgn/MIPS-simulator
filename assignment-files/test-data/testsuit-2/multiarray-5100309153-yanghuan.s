	.data
	.word 1
_static_131:
	.asciiz "\n"
	.align 2
_static_132:
	.word 0
_static_133:
	.word 0
_static_134:
	.word 0
_static_135:
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
	li $8, 4
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -8($fp)
	li $v0, 9
	lw $a0, -8($fp)
	syscall
	sw $v0, -12($fp)
	li $t0, 4
	lw $t1, -12($fp)
	sw $t0, 0($t1)
	lw $8, -12($fp)
	add $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_132
	li $8, 5
	add $t0, $t0, 1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	li $v0, 9
	lw $a0, -28($fp)
	syscall
	sw $v0, -32($fp)
	li $t0, 5
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, _static_135
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
	beqz $t0, _end_if_211
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_211:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_150:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_150
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
	beqz $t0, _end_if_212
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_212:
	nop
_continue_loop150:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_150
_end_loop_150:
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
	beqz $t0, _end_if_213
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_213:
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
_begin_loop_151:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_151
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
	beqz $t0, _end_if_214
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_214:
	nop
_continue_loop151:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_151
_end_loop_151:
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
	beqz $t0, _end_if_215
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_215:
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
_begin_loop_152:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_152
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
	beqz $t0, _end_if_216
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_216:
	nop
_continue_loop152:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_152
_end_loop_152:
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
	beqz $t0, _end_if_217
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_217:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_153:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_153
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
	beqz $t0, _end_if_218
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_218:
	nop
_continue_loop153:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_153
_end_loop_153:
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

_func_printNum:
	sw $fp, -128($sp)
	add $fp, $sp, -4
	add $sp, $fp, -132
	sw $ra, 0($sp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -4($fp)
	li $v0, 4
	lw $a0, -4($fp)
	syscall
	li $v0, 4
	la $a0, _static_131
	syscall
_end_func_printNum:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_main:
	sw $fp, -632($sp)
	add $fp, $sp, -4
	add $sp, $fp, -636
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, _static_133
_begin_loop_154:
	lw $8, _static_133
	slt $t0, $t0, 4
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _end_loop_154
	li $8, 11
	add $t0, $t0, 1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	li $v0, 9
	lw $a0, -28($fp)
	syscall
	sw $v0, -32($fp)
	li $t0, 11
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 4
	sw $t0, -36($fp)
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	lw $8, _static_132
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -36($fp)
	lw $t1, -16($fp)
	sw $t0, 0($t1)
_continue_loop154:
	lw $t0, _static_133
	sw $t0, -40($fp)
	lw $8, _static_133
	add $t0, $t0, 1
	sw $t0, _static_133
	lw $t0, _static_133
	sw $t0, _static_133
	b _begin_loop_154
_end_loop_154:
	nop
	li $t0, 0
	sw $t0, _static_133
_begin_loop_155:
	lw $8, _static_133
	slt $t0, $t0, 4
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	beqz $t0, _end_loop_155
	li $t0, 0
	sw $t0, _static_134
_begin_loop_156:
	lw $8, _static_134
	slt $t0, $t0, 10
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	beqz $t0, _end_loop_156
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	lw $8, _static_132
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t0, 0($t0)
	sw $t0, -76($fp)
	lw $8, _static_134
	mul $t0, $t0, 4
	sw $t0, -80($fp)
	lw $8, -76($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	li $t0, 888
	lw $t1, -84($fp)
	sw $t0, 0($t1)
_continue_loop156:
	lw $t0, _static_134
	sw $t0, -92($fp)
	lw $8, _static_134
	add $t0, $t0, 1
	sw $t0, _static_134
	lw $t0, _static_134
	sw $t0, _static_134
	b _begin_loop_156
_end_loop_156:
	nop
_continue_loop155:
	lw $t0, _static_133
	sw $t0, -96($fp)
	lw $8, _static_133
	add $t0, $t0, 1
	sw $t0, _static_133
	lw $t0, _static_133
	sw $t0, _static_133
	b _begin_loop_155
_end_loop_155:
	nop
	li $t0, 0
	sw $t0, _static_133
_begin_loop_157:
	lw $8, _static_133
	slt $t0, $t0, 5
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	beqz $t0, _end_loop_157
	li $v0, 9
	li $a0, 8
	syscall
	sw $v0, -120($fp)
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -112($fp)
	lw $8, _static_135
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -120($fp)
	lw $t1, -116($fp)
	sw $t0, 0($t1)
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -124($fp)
	lw $8, _static_135
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t0, 0($t0)
	sw $t0, -132($fp)
	lw $8, -132($fp)
	add $t0, $t0, 0
	sw $t0, -136($fp)
	li $t0, -1
	lw $t1, -136($fp)
	sw $t0, 0($t1)
_continue_loop157:
	lw $t0, _static_133
	sw $t0, -144($fp)
	lw $8, _static_133
	add $t0, $t0, 1
	sw $t0, _static_133
	lw $t0, _static_133
	sw $t0, _static_133
	b _begin_loop_157
_end_loop_157:
	nop
	li $8, 3
	mul $t0, $t0, 4
	sw $t0, -156($fp)
	lw $8, _static_132
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t0, 0($t0)
	sw $t0, -168($fp)
	li $8, 9
	mul $t0, $t0, 4
	sw $t0, -172($fp)
	lw $8, -168($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t0, 0($t0)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -4($sp)
jal _func_printNum
	sw $v0, -148($fp)
	li $t0, 0
	sw $t0, _static_133
_begin_loop_158:
	lw $8, _static_133
	sle $t0, $t0, 3
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	beqz $t0, _end_loop_158
	li $t0, 0
	sw $t0, _static_134
_begin_loop_159:
	lw $8, _static_134
	sle $t0, $t0, 9
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	beqz $t0, _end_loop_159
	lw $8, _static_133
	mul $t0, $t0, 10
	sw $t0, -232($fp)
	lw $8, -232($fp)
	lw $t1, _static_134
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -208($fp)
	lw $8, _static_132
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t0, 0($t0)
	sw $t0, -216($fp)
	lw $8, _static_134
	mul $t0, $t0, 4
	sw $t0, -220($fp)
	lw $8, -216($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -236($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
_continue_loop159:
	lw $t0, _static_134
	sw $t0, -240($fp)
	lw $8, _static_134
	add $t0, $t0, 1
	sw $t0, _static_134
	lw $t0, _static_134
	sw $t0, _static_134
	b _begin_loop_159
_end_loop_159:
	nop
_continue_loop158:
	lw $t0, _static_133
	sw $t0, -244($fp)
	lw $8, _static_133
	add $t0, $t0, 1
	sw $t0, _static_133
	lw $t0, _static_133
	sw $t0, _static_133
	b _begin_loop_158
_end_loop_158:
	nop
	li $t0, 0
	sw $t0, _static_133
_begin_loop_160:
	lw $8, _static_133
	sle $t0, $t0, 3
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	beqz $t0, _end_loop_160
	li $t0, 0
	sw $t0, _static_134
_begin_loop_161:
	lw $8, _static_134
	sle $t0, $t0, 9
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	beqz $t0, _end_loop_161
	lw $8, _static_133
	mul $t0, $t0, 4
	sw $t0, -276($fp)
	lw $8, _static_132
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t0, 0($t0)
	sw $t0, -284($fp)
	lw $8, _static_134
	mul $t0, $t0, 4
	sw $t0, -288($fp)
	lw $8, -284($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t0, 0($t0)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -4($sp)
jal _func_printNum
	sw $v0, -272($fp)
_continue_loop161:
	lw $t0, _static_134
	sw $t0, -300($fp)
	lw $8, _static_134
	add $t0, $t0, 1
	sw $t0, _static_134
	lw $t0, _static_134
	sw $t0, _static_134
	b _begin_loop_161
_end_loop_161:
	nop
_continue_loop160:
	lw $t0, _static_133
	sw $t0, -304($fp)
	lw $8, _static_133
	add $t0, $t0, 1
	sw $t0, _static_133
	lw $t0, _static_133
	sw $t0, _static_133
	b _begin_loop_160
_end_loop_160:
	nop
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -312($fp)
	lw $8, _static_132
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t0, 0($t0)
	sw $t0, -324($fp)
	li $8, 10
	mul $t0, $t0, 4
	sw $t0, -328($fp)
	lw $8, -324($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	lw $t1, -332($fp)
	sw $t0, 0($t1)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -348($fp)
	lw $8, _static_132
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t0, 0($t0)
	sw $t0, -360($fp)
	li $8, 10
	mul $t0, $t0, 4
	sw $t0, -364($fp)
	lw $8, -360($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t0, 0($t0)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -4($sp)
jal _func_printNum
	sw $v0, -340($fp)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -380($fp)
	lw $8, _static_135
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t0, 0($t0)
	sw $t0, -388($fp)
	lw $8, -388($fp)
	add $t0, $t0, 0
	sw $t0, -392($fp)
	li $t0, -2
	lw $t1, -392($fp)
	sw $t0, 0($t1)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -404($fp)
	lw $8, _static_132
	lw $t1, -404($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t0, 0($t0)
	sw $t0, -416($fp)
	li $8, 10
	mul $t0, $t0, 4
	sw $t0, -420($fp)
	lw $8, -416($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t0, 0($t0)
	sw $t0, -428($fp)
	lw $8, -428($fp)
	mul $t0, $t0, 4
	sw $t0, -432($fp)
	lw $8, _static_135
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t0, 0($t0)
	sw $t0, -440($fp)
	lw $8, -440($fp)
	add $t0, $t0, 0
	sw $t0, -444($fp)
	li $t0, -10
	lw $t1, -444($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -460($fp)
	lw $8, _static_135
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t0, 0($t0)
	sw $t0, -468($fp)
	lw $8, -468($fp)
	add $t0, $t0, 0
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t0, 0($t0)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -4($sp)
jal _func_printNum
	sw $v0, -452($fp)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -488($fp)
	lw $8, _static_135
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t0, 0($t0)
	sw $t0, -496($fp)
	lw $8, -496($fp)
	add $t0, $t0, 0
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t0, 0($t0)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -4($sp)
jal _func_printNum
	sw $v0, -480($fp)
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -628($fp)
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
