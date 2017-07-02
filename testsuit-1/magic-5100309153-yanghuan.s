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
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -12($fp)
	li $8, 10
	lw $9, -12($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_115
	li $8, 1
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -32($fp)
	li $8, 1
	lw $9, -32($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_116
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
	ble $10, $13, _end_if_177
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_177:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_122:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_122
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_178
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_178:
_continue_loop122:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_122
_end_loop_122:
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
	beq $10, $13, _end_if_179
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_179:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_123:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_123
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_180
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_180:
_continue_loop123:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_123
_end_loop_123:
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
	beq $10, $13, _end_if_181
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_181:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_124:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_124
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_182
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_182:
_continue_loop124:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_124
_end_loop_124:
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
	ble $10, $13, _end_if_183
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_183:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_125:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_125
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_184
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_184:
_continue_loop125:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_125
_end_loop_125:
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
	la $8, _static_113
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_origin:
	sw $fp, -200($sp)
	add $fp, $sp, -4
	add $sp, $fp, -204
	sw $ra, 0($sp)
	lw $8, 0($fp)
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -12($fp)
	lw $8, 0($fp)
	lw $9, -12($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 0
	sw $10, _static_114
	sw $11, _static_117
_begin_loop_126:
	lw $8, _static_117
	lw $9, 0($fp)
	bge $8, $9, _end_loop_126
	lw $8, 0($fp)
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -40($fp)
	lw $8, 0($fp)
	lw $9, -40($fp)
	sw $8, 0($9)
	add $10, $9, 4
	lw $11, _static_117
	mul $12, $11, 4
	lw $13, _static_114
	add $14, $13, $12
	sw $10, 0($14)
	li $15, 0
	sw $15, _static_118
_begin_loop_127:
	lw $8, _static_118
	lw $9, 0($fp)
	bge $8, $9, _end_loop_127
	lw $8, _static_117
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_118
	mul $14, $13, 4
	add $15, $12, $14
	sw $zero, 0($15)
_continue_loop127:
	lw $8, _static_118
	add $8, $8, 1
	move $8, $8
	sw $8, _static_118
	b _begin_loop_127
_end_loop_127:
_continue_loop126:
	lw $8, _static_117
	add $8, $8, 1
	move $8, $8
	sw $8, _static_117
	b _begin_loop_126
_end_loop_126:
_end_func_origin:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -196($fp)
	jr $ra

_func_search:
	sw $fp, -1716($sp)
	add $fp, $sp, -4
	add $sp, $fp, -1720
	sw $ra, 0($sp)
	lw $8, -4($fp)
	sgt $9, $8, 0
	move $10, $9
	sw $10, -28($fp)
	bnez $10, _short_evaluate_29
	lw $8, -4($fp)
	slt $9, $8, 0
	move $10, $9
	sw $10, -28($fp)
_short_evaluate_29:
	lw $8, -28($fp)
	move $9, $8
	sw $9, -24($fp)
	bnez $9, _short_evaluate_28
	lw $8, 0($fp)
	seq $9, $8, 0
	move $10, $9
	sw $10, -24($fp)
	bnez $10, _short_evaluate_28
	lw $8, 0($fp)
	sub $9, $8, 1
	mul $10, $9, 4
	lw $11, _static_114
	add $12, $11, $10
	lw $13, 0($12)
	mul $14, $zero, 4
	add $15, $13, $14
	lw $16, 0($15)
	sub $17, $8, 1
	mul $18, $17, 4
	add $19, $11, $18
	lw $20, 0($19)
	li $21, 1
	mul $22, $21, 4
	add $23, $20, $22
	lw $24, 0($23)
	add $25, $16, $24
	sub $9, $8, 1
	mul $10, $9, 4
	add $12, $11, $10
	lw $13, 0($12)
	li $14, 2
	mul $15, $14, 4
	add $17, $13, $15
	lw $18, 0($17)
	add $19, $25, $18
	seq $21, $19, 15
	move $20, $21
	sw $20, -24($fp)
_short_evaluate_28:
	lw $8, -24($fp)
	beqz $8, _end_if_185
	lw $8, 0($fp)
	seq $9, $8, 2
	move $10, $9
	sw $10, -164($fp)
	beqz $10, _short_evaluate_30
	lw $8, -4($fp)
	seq $9, $8, 2
	move $10, $9
	sw $10, -164($fp)
_short_evaluate_30:
	lw $8, -164($fp)
	beqz $8, _else_186
	li $8, 45
	lw $9, -8($fp)
	sub $10, $8, $9
	li $11, 2
	mul $12, $11, 4
	lw $13, _static_114
	add $14, $13, $12
	lw $15, 0($14)
	li $16, 2
	mul $17, $16, 4
	add $18, $15, $17
	sw $10, 0($18)
	mul $19, $zero, 4
	add $20, $13, $19
	lw $21, 0($20)
	mul $22, $zero, 4
	add $23, $21, $22
	lw $24, 0($23)
	mul $25, $zero, 4
	add $8, $13, $25
	lw $9, 0($8)
	li $11, 1
	mul $12, $11, 4
	add $14, $9, $12
	lw $16, 0($14)
	add $15, $24, $16
	mul $17, $zero, 4
	add $10, $13, $17
	lw $18, 0($10)
	li $19, 2
	mul $20, $19, 4
	add $21, $18, $20
	lw $22, 0($21)
	add $23, $15, $22
	li $25, 1
	mul $8, $25, 4
	add $11, $13, $8
	lw $9, 0($11)
	mul $12, $zero, 4
	add $14, $9, $12
	lw $24, 0($14)
	li $16, 1
	mul $17, $16, 4
	add $10, $13, $17
	lw $19, 0($10)
	li $18, 1
	mul $20, $18, 4
	add $21, $19, $20
	lw $15, 0($21)
	add $22, $24, $15
	sw $23, -12($fp)
	li $23, 1
	mul $25, $23, 4
	add $8, $13, $25
	lw $11, 0($8)
	li $9, 2
	mul $12, $9, 4
	add $14, $11, $12
	lw $16, 0($14)
	add $17, $22, $16
	lw $10, -12($fp)
	seq $18, $17, $10
	move $19, $18
	sw $19, -792($fp)
	beqz $19, _short_evaluate_32
	li $8, 2
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $zero, 4
	add $14, $12, $13
	lw $15, 0($14)
	li $16, 2
	mul $17, $16, 4
	add $18, $10, $17
	lw $19, 0($18)
	li $20, 1
	mul $21, $20, 4
	add $22, $19, $21
	lw $23, 0($22)
	add $24, $15, $23
	li $25, 2
	mul $8, $25, 4
	add $9, $10, $8
	lw $11, 0($9)
	li $12, 2
	mul $13, $12, 4
	add $14, $11, $13
	lw $16, 0($14)
	add $17, $24, $16
	lw $18, -12($fp)
	seq $20, $17, $18
	move $19, $20
	sw $19, -792($fp)
	beqz $19, _short_evaluate_32
	mul $8, $zero, 4
	lw $9, _static_114
	add $10, $9, $8
	lw $11, 0($10)
	mul $12, $zero, 4
	add $13, $11, $12
	lw $14, 0($13)
	li $15, 1
	mul $16, $15, 4
	add $17, $9, $16
	lw $18, 0($17)
	mul $19, $zero, 4
	add $20, $18, $19
	lw $21, 0($20)
	add $22, $14, $21
	li $23, 2
	mul $24, $23, 4
	add $25, $9, $24
	lw $8, 0($25)
	mul $10, $zero, 4
	add $11, $8, $10
	lw $12, 0($11)
	add $13, $22, $12
	lw $15, -12($fp)
	seq $16, $13, $15
	move $17, $16
	sw $17, -792($fp)
	beqz $17, _short_evaluate_32
	mul $8, $zero, 4
	lw $9, _static_114
	add $10, $9, $8
	lw $11, 0($10)
	li $12, 1
	mul $13, $12, 4
	add $14, $11, $13
	lw $15, 0($14)
	li $16, 1
	mul $17, $16, 4
	add $18, $9, $17
	lw $19, 0($18)
	li $20, 1
	mul $21, $20, 4
	add $22, $19, $21
	lw $23, 0($22)
	add $24, $15, $23
	li $25, 2
	mul $8, $25, 4
	add $10, $9, $8
	lw $12, 0($10)
	li $11, 1
	mul $13, $11, 4
	add $14, $12, $13
	lw $16, 0($14)
	add $17, $24, $16
	lw $18, -12($fp)
	seq $20, $17, $18
	move $19, $20
	sw $19, -792($fp)
	beqz $19, _short_evaluate_32
	mul $8, $zero, 4
	lw $9, _static_114
	add $10, $9, $8
	lw $11, 0($10)
	li $12, 2
	mul $13, $12, 4
	add $14, $11, $13
	lw $15, 0($14)
	li $16, 1
	mul $17, $16, 4
	add $18, $9, $17
	lw $19, 0($18)
	li $20, 2
	mul $21, $20, 4
	add $22, $19, $21
	lw $23, 0($22)
	add $24, $15, $23
	li $25, 2
	mul $8, $25, 4
	add $10, $9, $8
	lw $12, 0($10)
	li $11, 2
	mul $13, $11, 4
	add $14, $12, $13
	lw $16, 0($14)
	add $17, $24, $16
	lw $18, -12($fp)
	seq $20, $17, $18
	move $19, $20
	sw $19, -792($fp)
	beqz $19, _short_evaluate_32
	mul $8, $zero, 4
	lw $9, _static_114
	add $10, $9, $8
	lw $11, 0($10)
	mul $12, $zero, 4
	add $13, $11, $12
	lw $14, 0($13)
	li $15, 1
	mul $16, $15, 4
	add $17, $9, $16
	lw $18, 0($17)
	li $19, 1
	mul $20, $19, 4
	add $21, $18, $20
	lw $22, 0($21)
	add $23, $14, $22
	li $24, 2
	mul $25, $24, 4
	add $8, $9, $25
	lw $10, 0($8)
	li $11, 2
	mul $12, $11, 4
	add $13, $10, $12
	lw $15, 0($13)
	add $16, $23, $15
	lw $17, -12($fp)
	seq $19, $16, $17
	move $18, $19
	sw $18, -792($fp)
	beqz $18, _short_evaluate_32
	li $8, 2
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $zero, 4
	add $14, $12, $13
	lw $15, 0($14)
	li $16, 1
	mul $17, $16, 4
	add $18, $10, $17
	lw $19, 0($18)
	li $20, 1
	mul $21, $20, 4
	add $22, $19, $21
	lw $23, 0($22)
	add $24, $15, $23
	mul $25, $zero, 4
	add $8, $10, $25
	lw $9, 0($8)
	li $11, 2
	mul $12, $11, 4
	add $13, $9, $12
	lw $14, 0($13)
	add $16, $24, $14
	lw $17, -12($fp)
	seq $18, $16, $17
	move $20, $18
	sw $20, -792($fp)
_short_evaluate_32:
	lw $8, -792($fp)
	beqz $8, _end_if_192
	mul $8, $zero, 4
	lw $9, _static_116
	add $10, $9, $8
	lw $11, 0($10)
	add $12, $11, 1
	mul $13, $zero, 4
	add $14, $9, $13
	sw $12, 0($14)
	li $15, 0
	sw $15, -16($fp)
_begin_loop_129:
	lw $8, -16($fp)
	bgt $8, 2, _end_loop_129
	li $8, 0
	sw $8, -20($fp)
_begin_loop_130:
	lw $8, -20($fp)
	bgt $8, 2, _end_loop_130
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -20($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	sw $16, -4($sp)

jal _func_____built_in_toString
	sw $v0, -1572($fp)

	lw $8, -1572($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_119
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_continue_loop130:
	lw $8, -20($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -20($fp)
	b _begin_loop_130
_end_loop_130:
	la $8, _static_113
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_continue_loop129:
	lw $8, -16($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -16($fp)
	b _begin_loop_129
_end_loop_129:
	la $8, _static_113
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_if_192:
	b _end_if_186
_else_186:
	lw $8, -4($fp)
	bne $8, 2, _else_187
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $zero, 4
	add $14, $12, $13
	lw $15, 0($14)
	li $16, 15
	sub $17, $16, $15
	mul $18, $8, 4
	add $19, $10, $18
	lw $20, 0($19)
	li $21, 1
	mul $22, $21, 4
	add $23, $20, $22
	lw $24, 0($23)
	sub $25, $17, $24
	mul $9, $8, 4
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $16, $12, $14
	sw $25, 0($16)
	mul $15, $8, 4
	add $18, $10, $15
	lw $19, 0($18)
	mul $21, $13, 4
	add $20, $19, $21
	lw $22, 0($20)
	sgt $23, $22, 0
	move $17, $23
	sw $17, -408($fp)
	beqz $17, _short_evaluate_31
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	slt $17, $16, 10
	move $18, $17
	sw $18, -408($fp)
	beqz $18, _short_evaluate_31
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	mul $17, $16, 4
	lw $18, _static_115
	add $19, $18, $17
	lw $20, 0($19)
	seq $21, $20, 0
	move $22, $21
	sw $22, -408($fp)
_short_evaluate_31:
	lw $8, -408($fp)
	beqz $8, _end_if_190
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	mul $17, $16, 4
	lw $18, _static_115
	add $19, $18, $17
	li $20, 1
	sw $20, 0($19)
	bne $13, 2, _else_191
	lw $8, 0($fp)
	add $9, $8, 1
	mul $10, $8, 4
	lw $11, _static_114
	add $12, $11, $10
	lw $13, 0($12)
	lw $14, -4($fp)
	mul $15, $14, 4
	add $16, $13, $15
	lw $17, 0($16)
	lw $18, -8($fp)
	add $19, $18, $17
	sw $9, -4($sp)
	sw $zero, -8($sp)
	sw $19, -12($sp)

jal _func_search
	sw $v0, -596($fp)
	b _end_if_191
_else_191:
	lw $8, -4($fp)
	add $9, $8, 1
	lw $10, 0($fp)
	mul $11, $10, 4
	lw $12, _static_114
	add $13, $12, $11
	lw $14, 0($13)
	mul $15, $8, 4
	add $16, $14, $15
	lw $17, 0($16)
	lw $18, -8($fp)
	add $19, $18, $17
	sw $10, -4($sp)
	sw $9, -8($sp)
	sw $19, -12($sp)

jal _func_search
	sw $v0, -556($fp)
_end_if_191:
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	mul $17, $16, 4
	lw $18, _static_115
	add $19, $18, $17
	sw $zero, 0($19)
_end_if_190:
	b _end_if_187
_else_187:
	li $8, 1
	sw $8, -16($fp)
_begin_loop_128:
	lw $8, -16($fp)
	bgt $8, 9, _end_loop_128
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, _static_115
	add $11, $10, $9
	lw $12, 0($11)
	bne $12, 0, _end_if_188
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, _static_115
	add $11, $10, $9
	li $12, 1
	sw $12, 0($11)
	lw $13, 0($fp)
	mul $14, $13, 4
	lw $15, _static_114
	add $16, $15, $14
	lw $17, 0($16)
	lw $18, -4($fp)
	mul $19, $18, 4
	add $20, $17, $19
	sw $8, 0($20)
	bne $18, 2, _else_189
	lw $8, 0($fp)
	add $9, $8, 1
	lw $10, -8($fp)
	lw $11, -16($fp)
	add $12, $10, $11
	sw $9, -4($sp)
	sw $zero, -8($sp)
	sw $12, -12($sp)

jal _func_search
	sw $v0, -276($fp)
	b _end_if_189
_else_189:
	lw $8, -4($fp)
	add $9, $8, 1
	lw $10, -8($fp)
	lw $11, -16($fp)
	add $12, $10, $11

	lw $13, 0($fp)
	sw $13, -4($sp)
	sw $9, -8($sp)
	sw $12, -12($sp)

jal _func_search
	sw $v0, -260($fp)
_end_if_189:
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_114
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $12, $14
	sw $zero, 0($15)
	lw $16, -16($fp)
	mul $17, $16, 4
	lw $18, _static_115
	add $19, $18, $17
	sw $zero, 0($19)
_end_if_188:
_continue_loop128:
	lw $8, -16($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -16($fp)
	b _begin_loop_128
_end_loop_128:
_end_if_187:
_end_if_186:
_end_if_185:
_end_func_search:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -1712($fp)
	jr $ra

_func_main:
	sw $fp, -144($sp)
	add $fp, $sp, -4
	add $sp, $fp, -148
	sw $ra, 0($sp)

	li $8, 3
	sw $8, -4($sp)

jal _func_origin
	sw $zero, -4($sp)
	sw $zero, -8($sp)
	sw $zero, -12($sp)

jal _func_search
	sw $v0, -4($fp)
	mul $8, $zero, 4
	lw $9, _static_116
	add $10, $9, $8
	lw $11, 0($10)
	sw $11, -4($sp)

jal _func_____built_in_toString
	sw $v0, -20($fp)

	lw $8, -20($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_113
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -140($fp)
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
