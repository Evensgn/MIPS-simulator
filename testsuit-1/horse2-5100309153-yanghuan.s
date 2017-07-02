	.data
	.word 1
_static_89:
	.asciiz "\n"
	.align 2
	.word 13
_static_90:
	.asciiz "no solution!\n"
	.align 2
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
	ble $10, $13, _end_if_131
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_131:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_99:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_99
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_132
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_132:
_continue_loop99:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_99
_end_loop_99:
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
	beq $10, $13, _end_if_133
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_133:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_100:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_100
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_134
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_134:
_continue_loop100:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_100
_end_loop_100:
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
	beq $10, $13, _end_if_135
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_135:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_101:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_101
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_136
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_136:
_continue_loop101:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_101
_end_loop_101:
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
	ble $10, $13, _end_if_137
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_137:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_102:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_102
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_138
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_138:
_continue_loop102:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_102
_end_loop_102:
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
	la $8, _static_89
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_check:
	sw $fp, -140($sp)
	add $fp, $sp, -4
	add $sp, $fp, -144
	sw $ra, 0($sp)
	lw $8, 0($fp)
	lw $9, -4($fp)
	slt $10, $8, $9
	move $11, $10
	sw $11, -8($fp)
	beqz $11, _short_evaluate_8
	lw $8, 0($fp)
	sge $9, $8, 0
	move $10, $9
	sw $10, -8($fp)
_short_evaluate_8:
	lw $8, -8($fp)
	move $v0, $8
	b _end_func_check
_end_func_check:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -136($fp)
	jr $ra

_func_main:
	sw $fp, -1724($sp)
	add $fp, $sp, -4
	add $sp, $fp, -1728
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -64($fp)
	lw $8, -64($fp)
	li $9, 0
	move $10, $9
	move $11, $10
	move $12, $11
	sub $13, $8, 1
	move $14, $13
	li $15, 0
	move $16, $15
	li $17, 0
	move $18, $17
	mul $19, $8, $8
	add $20, $19, 1
	mul $21, $20, 4
	li $v0, 9
	move $a0, $21
	sw $8, 0($fp)
	sw $9, -12($fp)
	sw $10, -8($fp)
	sw $11, -24($fp)
	sw $12, -4($fp)
	sw $13, -20($fp)
	sw $14, -16($fp)
	sw $15, -40($fp)
	sw $16, -36($fp)
	sw $17, -28($fp)
	sw $18, -32($fp)
	sw $19, -76($fp)
	syscall
	sw $v0, -88($fp)
	lw $8, -76($fp)
	lw $9, -88($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 0
	sw $10, -44($fp)
	sw $11, -56($fp)
_begin_loop_103:
	lw $8, 0($fp)
	mul $9, $8, $8
	lw $10, -56($fp)
	bge $10, $9, _end_loop_103
	lw $8, -56($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	sw $zero, 0($11)
_continue_loop103:
	lw $8, -56($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -56($fp)
	b _begin_loop_103
_end_loop_103:
	lw $8, 0($fp)
	mul $9, $8, $8
	add $10, $9, 1
	mul $11, $10, 4
	li $v0, 9
	move $a0, $11
	sw $9, -116($fp)
	syscall
	sw $v0, -128($fp)
	lw $8, -116($fp)
	lw $9, -128($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 0
	sw $10, -48($fp)
	sw $11, -56($fp)
_begin_loop_104:
	lw $8, 0($fp)
	mul $9, $8, $8
	lw $10, -56($fp)
	bge $10, $9, _end_loop_104
	lw $8, -56($fp)
	mul $9, $8, 4
	lw $10, -48($fp)
	add $11, $10, $9
	sw $zero, 0($11)
_continue_loop104:
	lw $8, -56($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -56($fp)
	b _begin_loop_104
_end_loop_104:
	lw $8, 0($fp)
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -164($fp)
	lw $8, 0($fp)
	lw $9, -164($fp)
	sw $8, 0($9)
	add $10, $9, 4
	li $11, 0
	sw $10, -52($fp)
	sw $11, -56($fp)
_begin_loop_105:
	lw $8, -56($fp)
	lw $9, 0($fp)
	bge $8, $9, _end_loop_105
	lw $8, 0($fp)
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -192($fp)
	lw $8, 0($fp)
	lw $9, -192($fp)
	sw $8, 0($9)
	add $10, $9, 4
	lw $11, -56($fp)
	mul $12, $11, 4
	lw $13, -52($fp)
	add $14, $13, $12
	sw $10, 0($14)
	li $15, 0
	sw $15, -60($fp)
_begin_loop_106:
	lw $8, -60($fp)
	lw $9, 0($fp)
	bge $8, $9, _end_loop_106
	lw $8, -56($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -60($fp)
	mul $14, $13, 4
	add $15, $12, $14
	li $16, -1
	sw $16, 0($15)
_continue_loop106:
	lw $8, -60($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -60($fp)
	b _begin_loop_106
_end_loop_106:
_continue_loop105:
	lw $8, -56($fp)
	add $8, $8, 1
	move $8, $8
	sw $8, -56($fp)
	b _begin_loop_105
_end_loop_105:
	mul $8, $zero, 4
	lw $9, -44($fp)
	add $10, $9, $8
	lw $11, -8($fp)
	sw $11, 0($10)
	mul $12, $zero, 4
	lw $13, -48($fp)
	add $14, $13, $12
	lw $15, -12($fp)
	sw $15, 0($14)
	mul $16, $11, 4
	lw $17, -52($fp)
	add $18, $17, $16
	lw $19, 0($18)
	mul $20, $15, 4
	add $21, $19, $20
	lw $22, 0($21)
	seq $23, $22, 0
_continue_loop107:
	lw $8, -4($fp)
	lw $9, -24($fp)
	bgt $8, $9, _end_loop_107
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $12, 4
	lw $14, -52($fp)
	add $15, $14, $13
	lw $16, 0($15)
	mul $17, $8, 4
	lw $18, -48($fp)
	add $19, $18, $17
	lw $20, 0($19)
	mul $21, $20, 4
	add $22, $16, $21
	lw $23, 0($22)
	mul $24, $8, 4
	add $25, $10, $24
	lw $9, 0($25)
	sub $11, $9, 1
	mul $12, $8, 4
	add $14, $18, $12
	lw $13, 0($14)
	sub $15, $13, 2
	sw $11, -4($sp)

	lw $17, 0($fp)
	sw $17, -8($sp)
	sw $11, -36($fp)
	sw $15, -40($fp)
	sw $23, -32($fp)
jal _func_check
	sw $v0, -376($fp)
	lw $8, -376($fp)
	move $9, $8
	sw $9, -372($fp)
	beqz $9, _short_evaluate_9

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -380($fp)
	lw $8, -380($fp)
	move $9, $8
	sw $9, -372($fp)
	beqz $9, _short_evaluate_9
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -372($fp)
_short_evaluate_9:
	lw $8, -372($fp)
	beqz $8, _end_if_139
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -468($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_10
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -468($fp)
_short_evaluate_10:
	lw $8, -468($fp)
	beqz $8, _end_if_140
	li $8, 1
	sw $8, -28($fp)
_end_if_140:
_end_if_139:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	sub $13, $12, 1
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	add $18, $17, 2
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -528($fp)
	lw $8, -528($fp)
	move $9, $8
	sw $9, -524($fp)
	beqz $9, _short_evaluate_11

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -532($fp)
	lw $8, -532($fp)
	move $9, $8
	sw $9, -524($fp)
	beqz $9, _short_evaluate_11
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -524($fp)
_short_evaluate_11:
	lw $8, -524($fp)
	beqz $8, _end_if_141
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -620($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_12
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -620($fp)
_short_evaluate_12:
	lw $8, -620($fp)
	beqz $8, _end_if_142
	li $8, 1
	sw $8, -28($fp)
_end_if_142:
_end_if_141:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	add $13, $12, 1
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	sub $18, $17, 2
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -680($fp)
	lw $8, -680($fp)
	move $9, $8
	sw $9, -676($fp)
	beqz $9, _short_evaluate_13

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -684($fp)
	lw $8, -684($fp)
	move $9, $8
	sw $9, -676($fp)
	beqz $9, _short_evaluate_13
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -676($fp)
_short_evaluate_13:
	lw $8, -676($fp)
	beqz $8, _end_if_143
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -772($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_14
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -772($fp)
_short_evaluate_14:
	lw $8, -772($fp)
	beqz $8, _end_if_144
	li $8, 1
	sw $8, -28($fp)
_end_if_144:
_end_if_143:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	add $13, $12, 1
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	add $18, $17, 2
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -832($fp)
	lw $8, -832($fp)
	move $9, $8
	sw $9, -828($fp)
	beqz $9, _short_evaluate_15

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -836($fp)
	lw $8, -836($fp)
	move $9, $8
	sw $9, -828($fp)
	beqz $9, _short_evaluate_15
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -828($fp)
_short_evaluate_15:
	lw $8, -828($fp)
	beqz $8, _end_if_145
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -924($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_16
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -924($fp)
_short_evaluate_16:
	lw $8, -924($fp)
	beqz $8, _end_if_146
	li $8, 1
	sw $8, -28($fp)
_end_if_146:
_end_if_145:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	sub $13, $12, 2
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	sub $18, $17, 1
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -984($fp)
	lw $8, -984($fp)
	move $9, $8
	sw $9, -980($fp)
	beqz $9, _short_evaluate_17

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -988($fp)
	lw $8, -988($fp)
	move $9, $8
	sw $9, -980($fp)
	beqz $9, _short_evaluate_17
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -980($fp)
_short_evaluate_17:
	lw $8, -980($fp)
	beqz $8, _end_if_147
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -1076($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_18
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -1076($fp)
_short_evaluate_18:
	lw $8, -1076($fp)
	beqz $8, _end_if_148
	li $8, 1
	sw $8, -28($fp)
_end_if_148:
_end_if_147:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	sub $13, $12, 2
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	add $18, $17, 1
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -1136($fp)
	lw $8, -1136($fp)
	move $9, $8
	sw $9, -1132($fp)
	beqz $9, _short_evaluate_19

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -1140($fp)
	lw $8, -1140($fp)
	move $9, $8
	sw $9, -1132($fp)
	beqz $9, _short_evaluate_19
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -1132($fp)
_short_evaluate_19:
	lw $8, -1132($fp)
	beqz $8, _end_if_149
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -1228($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_20
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -1228($fp)
_short_evaluate_20:
	lw $8, -1228($fp)
	beqz $8, _end_if_150
	li $8, 1
	sw $8, -28($fp)
_end_if_150:
_end_if_149:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	add $13, $12, 2
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	sub $18, $17, 1
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -1288($fp)
	lw $8, -1288($fp)
	move $9, $8
	sw $9, -1284($fp)
	beqz $9, _short_evaluate_21

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -1292($fp)
	lw $8, -1292($fp)
	move $9, $8
	sw $9, -1284($fp)
	beqz $9, _short_evaluate_21
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -1284($fp)
_short_evaluate_21:
	lw $8, -1284($fp)
	beqz $8, _end_if_151
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -1380($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_22
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -1380($fp)
_short_evaluate_22:
	lw $8, -1380($fp)
	beqz $8, _end_if_152
	li $8, 1
	sw $8, -28($fp)
_end_if_152:
_end_if_151:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, -44($fp)
	add $11, $10, $9
	lw $12, 0($11)
	add $13, $12, 2
	mul $14, $8, 4
	lw $15, -48($fp)
	add $16, $15, $14
	lw $17, 0($16)
	add $18, $17, 1
	sw $13, -4($sp)

	lw $19, 0($fp)
	sw $19, -8($sp)
	sw $13, -36($fp)
	sw $18, -40($fp)
jal _func_check
	sw $v0, -1440($fp)
	lw $8, -1440($fp)
	move $9, $8
	sw $9, -1436($fp)
	beqz $9, _short_evaluate_23

	lw $8, -40($fp)
	sw $8, -4($sp)

	lw $9, 0($fp)
	sw $9, -8($sp)

jal _func_check
	sw $v0, -1444($fp)
	lw $8, -1444($fp)
	move $9, $8
	sw $9, -1436($fp)
	beqz $9, _short_evaluate_23
	lw $8, -36($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -40($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	seq $17, $16, -1
	move $18, $17
	sw $18, -1436($fp)
_short_evaluate_23:
	lw $8, -1436($fp)
	beqz $8, _end_if_153
	lw $8, -24($fp)
	add $9, $8, 1
	mul $8, $9, 4
	lw $10, -44($fp)
	add $11, $10, $8
	lw $12, -36($fp)
	sw $12, 0($11)
	mul $13, $9, 4
	lw $14, -48($fp)
	add $15, $14, $13
	lw $16, -40($fp)
	sw $16, 0($15)
	lw $17, -32($fp)
	add $18, $17, 1
	mul $19, $12, 4
	lw $20, -52($fp)
	add $21, $20, $19
	lw $22, 0($21)
	mul $23, $16, 4
	add $24, $22, $23
	sw $18, 0($24)
	lw $25, -16($fp)
	seq $10, $12, $25
	move $8, $10
	sw $8, -1532($fp)
	sw $9, -24($fp)
	beqz $8, _short_evaluate_24
	lw $8, -40($fp)
	lw $9, -20($fp)
	seq $10, $8, $9
	move $11, $10
	sw $11, -1532($fp)
_short_evaluate_24:
	lw $8, -1532($fp)
	beqz $8, _end_if_154
	li $8, 1
	sw $8, -28($fp)
_end_if_154:
_end_if_153:
	lw $8, -28($fp)
	bne $8, 1, _end_if_155
	b _end_loop_107
_end_if_155:
	lw $8, -4($fp)
	add $9, $8, 1
	sw $9, -4($fp)
	b _continue_loop107
_end_loop_107:
	lw $8, -28($fp)
	bne $8, 1, _else_156
	lw $8, -16($fp)
	mul $9, $8, 4
	lw $10, -52($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -20($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	sw $16, -4($sp)

jal _func_____built_in_toString
	sw $v0, -1600($fp)

	lw $8, -1600($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_89
	li $v0, 4
	move $a0, $8

	syscall
	b _end_if_156
_else_156:
	la $8, _static_90
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_if_156:
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -1720($fp)
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
