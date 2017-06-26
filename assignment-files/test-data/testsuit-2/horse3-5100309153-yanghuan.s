	.data
	.word 1
_static_91:
	.asciiz "\n"
	.align 2
	.word 13
_static_110:
	.asciiz "no solution!\n"
	.align 2
_static_92:
	.word 0
_static_93:
	.word 0
_static_94:
	.word 0
_static_95:
	.word 0
_static_96:
	.word 0
_static_97:
	.word 0
_static_98:
	.word 0
_static_99:
	.word 0
_static_100:
	.word 0
_static_101:
	.word 0
_static_102:
	.word 0
_static_103:
	.word 0
_static_104:
	.word 0
_static_105:
	.word 0
_static_106:
	.word 0
_static_107:
	.word 0
_static_108:
	.word 0
_static_109:
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
	li $8, 12000
	add $t0, $t0, 1
	sw $t0, -4($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -8($fp)
	li $v0, 9
	lw $a0, -8($fp)
	syscall
	sw $v0, -12($fp)
	li $t0, 12000
	lw $t1, -12($fp)
	sw $t0, 0($t1)
	lw $8, -12($fp)
	add $t0, $t0, 4
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, _static_100
	li $8, 12000
	add $t0, $t0, 1
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -28($fp)
	li $v0, 9
	lw $a0, -28($fp)
	syscall
	sw $v0, -32($fp)
	li $t0, 12000
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 4
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, _static_101
	li $8, 8
	add $t0, $t0, 1
	sw $t0, -44($fp)
	lw $8, -44($fp)
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	li $v0, 9
	lw $a0, -48($fp)
	syscall
	sw $v0, -52($fp)
	li $t0, 8
	lw $t1, -52($fp)
	sw $t0, 0($t1)
	lw $8, -52($fp)
	add $t0, $t0, 4
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, _static_105
	li $8, 9
	add $t0, $t0, 1
	sw $t0, -64($fp)
	lw $8, -64($fp)
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	li $v0, 9
	lw $a0, -68($fp)
	syscall
	sw $v0, -72($fp)
	li $t0, 9
	lw $t1, -72($fp)
	sw $t0, 0($t1)
	lw $8, -72($fp)
	add $t0, $t0, 4
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, _static_106
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
	beqz $t0, _end_if_157
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_157:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_108:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_108
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
	beqz $t0, _end_if_158
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_158:
	nop
_continue_loop108:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_108
_end_loop_108:
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
	beqz $t0, _end_if_159
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_159:
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
_begin_loop_109:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_109
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
	beqz $t0, _end_if_160
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_160:
	nop
_continue_loop109:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_109
_end_loop_109:
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
	beqz $t0, _end_if_161
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_161:
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
_begin_loop_110:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_110
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
	beqz $t0, _end_if_162
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_162:
	nop
_continue_loop110:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_110
_end_loop_110:
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
	beqz $t0, _end_if_163
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_163:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_111:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_111
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
	beqz $t0, _end_if_164
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_164:
	nop
_continue_loop111:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_111
_end_loop_111:
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
	sw $fp, -220($sp)
	add $fp, $sp, -4
	add $sp, $fp, -224
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, _static_93
	li $t0, 0
	sw $t0, _static_102
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	lw $8, -12($fp)
	mul $t0, $t0, 4
	sw $t0, -16($fp)
	li $v0, 9
	lw $a0, -16($fp)
	syscall
	sw $v0, -20($fp)
	lw $t0, 0($fp)
	lw $t1, -20($fp)
	sw $t0, 0($t1)
	lw $8, -20($fp)
	add $t0, $t0, 4
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, _static_107
	li $t0, 0
	sw $t0, _static_108
_begin_loop_112:
	lw $8, _static_108
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	beqz $t0, _end_loop_112
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -44($fp)
	lw $8, -44($fp)
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	li $v0, 9
	lw $a0, -48($fp)
	syscall
	sw $v0, -52($fp)
	lw $t0, 0($fp)
	lw $t1, -52($fp)
	sw $t0, 0($t1)
	lw $8, -52($fp)
	add $t0, $t0, 4
	sw $t0, -56($fp)
	lw $8, _static_108
	mul $t0, $t0, 4
	sw $t0, -36($fp)
	lw $8, _static_107
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -56($fp)
	lw $t1, -40($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, _static_109
_begin_loop_113:
	lw $8, _static_109
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	beqz $t0, _end_loop_113
	lw $8, _static_108
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	lw $8, _static_107
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	lw $t0, 0($t0)
	sw $t0, -76($fp)
	lw $8, _static_109
	mul $t0, $t0, 4
	sw $t0, -80($fp)
	lw $8, -76($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	li $t0, 0
	lw $t1, -84($fp)
	sw $t0, 0($t1)
_continue_loop113:
	lw $t0, _static_109
	sw $t0, -92($fp)
	lw $8, _static_109
	add $t0, $t0, 1
	sw $t0, _static_109
	lw $t0, _static_109
	sw $t0, _static_109
	b _begin_loop_113
_end_loop_113:
	nop
_continue_loop112:
	lw $t0, _static_108
	sw $t0, -96($fp)
	lw $8, _static_108
	add $t0, $t0, 1
	sw $t0, _static_108
	lw $t0, _static_108
	sw $t0, _static_108
	b _begin_loop_112
_end_loop_112:
	nop
_end_func_origin:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -216($fp)
	jr $ra

_func_check:
	sw $fp, -140($sp)
	add $fp, $sp, -4
	add $sp, $fp, -144
	sw $ra, 0($sp)
	lw $8, 0($fp)
	lw $t1, _static_92
	slt $t0, $t0, $t1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	beqz $t0, _short_evaluate_25
	lw $8, 0($fp)
	sge $t0, $t0, 0
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	beqz $t0, _short_evaluate_25
_short_evaluate_25:
	nop
	lw $v0, -4($fp)
	b _end_func_check
_end_func_check:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -136($fp)
	jr $ra

_func_addList:
	sw $fp, -236($sp)
	add $fp, $sp, -4
	add $sp, $fp, -240
	sw $ra, 0($sp)
	lw $t0, 0($fp)
	sw $t0, -4($sp)
jal _func_check
	sw $v0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _short_evaluate_26
	lw $t0, -4($fp)
	sw $t0, -4($sp)
jal _func_check
	sw $v0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _short_evaluate_26
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -20($fp)
	lw $8, _static_107
	lw $t1, -20($fp)
	add $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	lw $8, -28($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -44($fp)
	lw $8, -44($fp)
	seq $t0, $t0, -1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _short_evaluate_26
_short_evaluate_26:
	nop
	lw $t0, -8($fp)
	beqz $t0, _end_if_165
	lw $t0, _static_102
	sw $t0, -52($fp)
	lw $8, _static_102
	add $t0, $t0, 1
	sw $t0, _static_102
	lw $t0, _static_102
	sw $t0, _static_102
	lw $8, _static_102
	mul $t0, $t0, 4
	sw $t0, -56($fp)
	lw $8, _static_100
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, 0($fp)
	lw $t1, -60($fp)
	sw $t0, 0($t1)
	lw $8, _static_102
	mul $t0, $t0, 4
	sw $t0, -64($fp)
	lw $8, _static_101
	lw $t1, -64($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -4($fp)
	lw $t1, -68($fp)
	sw $t0, 0($t1)
	lw $8, _static_104
	add $t0, $t0, 1
	sw $t0, -96($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -72($fp)
	lw $8, _static_107
	lw $t1, -72($fp)
	add $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t0, 0($t0)
	sw $t0, -80($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	lw $8, -80($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -96($fp)
	lw $t1, -88($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	lw $t1, _static_96
	seq $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	beqz $t0, _short_evaluate_27
	lw $8, -4($fp)
	lw $t1, _static_97
	seq $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	beqz $t0, _short_evaluate_27
_short_evaluate_27:
	nop
	lw $t0, -100($fp)
	beqz $t0, _end_if_166
	li $t0, 1
	sw $t0, _static_103
_end_if_166:
	nop
_end_if_165:
	nop
_end_func_addList:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -232($fp)
	jr $ra

_func_main:
	sw $fp, -596($sp)
	add $fp, $sp, -4
	add $sp, $fp, -600
	sw $ra, 0($sp)
	li $t0, 106
	sw $t0, -4($sp)
jal _func_origin
	li $v0, 5
	syscall
	sw $v0, -4($fp)
	lw $t0, -4($fp)
	sw $t0, _static_92
	lw $8, _static_92
	sub $t0, $t0, 1
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, _static_97
	lw $t0, _static_97
	sw $t0, _static_96
	li $t0, 0
	sw $t0, _static_108
_begin_loop_114:
	lw $8, _static_108
	lw $t1, _static_92
	slt $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	beqz $t0, _end_loop_114
	li $t0, 0
	sw $t0, _static_109
_begin_loop_115:
	lw $8, _static_109
	lw $t1, _static_92
	slt $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	beqz $t0, _end_loop_115
	lw $8, _static_108
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	lw $8, _static_107
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -40($fp)
	lw $8, _static_109
	mul $t0, $t0, 4
	sw $t0, -44($fp)
	lw $8, -40($fp)
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	li $t0, -1
	lw $t1, -48($fp)
	sw $t0, 0($t1)
_continue_loop115:
	lw $t0, _static_109
	sw $t0, -56($fp)
	lw $8, _static_109
	add $t0, $t0, 1
	sw $t0, _static_109
	lw $t0, _static_109
	sw $t0, _static_109
	b _begin_loop_115
_end_loop_115:
	nop
_continue_loop114:
	lw $t0, _static_108
	sw $t0, -60($fp)
	lw $8, _static_108
	add $t0, $t0, 1
	sw $t0, _static_108
	lw $t0, _static_108
	sw $t0, _static_108
	b _begin_loop_114
_end_loop_114:
	nop
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -68($fp)
	lw $8, _static_105
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, -2
	lw $t1, -72($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -84($fp)
	lw $8, _static_106
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, -1
	lw $t1, -88($fp)
	sw $t0, 0($t1)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -100($fp)
	lw $8, _static_105
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, -2
	lw $t1, -104($fp)
	sw $t0, 0($t1)
	li $8, 1
	mul $t0, $t0, 4
	sw $t0, -116($fp)
	lw $8, _static_106
	lw $t1, -116($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	li $t0, 1
	lw $t1, -120($fp)
	sw $t0, 0($t1)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -132($fp)
	lw $8, _static_105
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	li $t0, 2
	lw $t1, -136($fp)
	sw $t0, 0($t1)
	li $8, 2
	mul $t0, $t0, 4
	sw $t0, -148($fp)
	lw $8, _static_106
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	li $t0, -1
	lw $t1, -152($fp)
	sw $t0, 0($t1)
	li $8, 3
	mul $t0, $t0, 4
	sw $t0, -164($fp)
	lw $8, _static_105
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	li $t0, 2
	lw $t1, -168($fp)
	sw $t0, 0($t1)
	li $8, 3
	mul $t0, $t0, 4
	sw $t0, -180($fp)
	lw $8, _static_106
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	li $t0, 1
	lw $t1, -184($fp)
	sw $t0, 0($t1)
	li $8, 4
	mul $t0, $t0, 4
	sw $t0, -196($fp)
	lw $8, _static_105
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, -1
	lw $t1, -200($fp)
	sw $t0, 0($t1)
	li $8, 4
	mul $t0, $t0, 4
	sw $t0, -212($fp)
	lw $8, _static_106
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	li $t0, -2
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	li $8, 5
	mul $t0, $t0, 4
	sw $t0, -228($fp)
	lw $8, _static_105
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	li $t0, -1
	lw $t1, -232($fp)
	sw $t0, 0($t1)
	li $8, 5
	mul $t0, $t0, 4
	sw $t0, -244($fp)
	lw $8, _static_106
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 2
	lw $t1, -248($fp)
	sw $t0, 0($t1)
	li $8, 6
	mul $t0, $t0, 4
	sw $t0, -260($fp)
	lw $8, _static_105
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 1
	lw $t1, -264($fp)
	sw $t0, 0($t1)
	li $8, 6
	mul $t0, $t0, 4
	sw $t0, -276($fp)
	lw $8, _static_106
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, -2
	lw $t1, -280($fp)
	sw $t0, 0($t1)
	li $8, 7
	mul $t0, $t0, 4
	sw $t0, -292($fp)
	lw $8, _static_105
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 1
	lw $t1, -296($fp)
	sw $t0, 0($t1)
	li $8, 7
	mul $t0, $t0, 4
	sw $t0, -308($fp)
	lw $8, _static_106
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	li $t0, 2
	lw $t1, -312($fp)
	sw $t0, 0($t1)
_continue_loop116:
	lw $8, _static_93
	lw $t1, _static_102
	sle $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	beqz $t0, _end_loop_116
	lw $8, _static_93
	mul $t0, $t0, 4
	sw $t0, -324($fp)
	lw $8, _static_100
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	lw $t0, 0($t0)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, _static_98
	lw $8, _static_93
	mul $t0, $t0, 4
	sw $t0, -336($fp)
	lw $8, _static_101
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t0, 0($t0)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, _static_99
	lw $8, _static_98
	mul $t0, $t0, 4
	sw $t0, -348($fp)
	lw $8, _static_107
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	lw $t0, 0($t0)
	sw $t0, -356($fp)
	lw $8, _static_99
	mul $t0, $t0, 4
	sw $t0, -360($fp)
	lw $8, -356($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t0, 0($t0)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, _static_104
	li $t0, 0
	sw $t0, _static_109
_begin_loop_117:
	lw $8, _static_109
	slt $t0, $t0, 8
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	beqz $t0, _end_loop_117
	lw $8, _static_109
	mul $t0, $t0, 4
	sw $t0, -384($fp)
	lw $8, _static_105
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t0, 0($t0)
	sw $t0, -392($fp)
	lw $8, _static_98
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $8, _static_109
	mul $t0, $t0, 4
	sw $t0, -400($fp)
	lw $8, _static_106
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t0, 0($t0)
	sw $t0, -408($fp)
	lw $8, _static_99
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -396($fp)
	sw $t0, -4($sp)
	lw $t0, -412($fp)
	sw $t0, -8($sp)
jal _func_addList
_continue_loop117:
	lw $t0, _static_109
	sw $t0, -416($fp)
	lw $8, _static_109
	add $t0, $t0, 1
	sw $t0, _static_109
	lw $t0, _static_109
	sw $t0, _static_109
	b _begin_loop_117
_end_loop_117:
	nop
	lw $8, _static_103
	seq $t0, $t0, 1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	beqz $t0, _end_if_167
	b _end_loop_116
_end_if_167:
	nop
	lw $t0, _static_93
	sw $t0, -428($fp)
	lw $8, _static_93
	add $t0, $t0, 1
	sw $t0, _static_93
	lw $t0, _static_93
	sw $t0, _static_93
	b _continue_loop116
_end_loop_116:
	nop
	lw $8, _static_103
	seq $t0, $t0, 1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	beqz $t0, _else_168
	lw $8, _static_96
	mul $t0, $t0, 4
	sw $t0, -444($fp)
	lw $8, _static_107
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t0, 0($t0)
	sw $t0, -452($fp)
	lw $8, _static_97
	mul $t0, $t0, 4
	sw $t0, -456($fp)
	lw $8, -452($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t0, 0($t0)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -468($fp)
	li $v0, 4
	lw $a0, -468($fp)
	syscall
	li $v0, 4
	la $a0, _static_91
	syscall
	b _end_if_168
_else_168:
	la $t0, _static_110
	sw $t0, -440($fp)
	li $v0, 4
	lw $a0, -440($fp)
	syscall
_end_if_168:
	nop
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -592($fp)
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
