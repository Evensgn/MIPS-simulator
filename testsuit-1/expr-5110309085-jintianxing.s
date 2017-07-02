	.data
	.word 1
_static_43:
	.asciiz "\n"
	.align 2
	.word 1
_static_47:
	.asciiz " "
	.align 2
_static_44:
	.word 0
_static_45:
	.word 0
_static_46:
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
	li $8, 1
	sw $8, _static_44
	li $8, 1
	sw $8, _static_45
	li $8, 1
	sw $8, _static_46
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
	ble $10, $13, _end_if_60
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_60:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_51:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_51
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_61
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_61:
_continue_loop51:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_51
_end_loop_51:
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
	beq $10, $13, _end_if_62
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_62:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_52:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_52
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_63
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_63:
_continue_loop52:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_52
_end_loop_52:
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
	beq $10, $13, _end_if_64
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_64:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_53:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_53
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_65
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_65:
_continue_loop53:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_53
_end_loop_53:
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
	ble $10, $13, _end_if_66
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_66:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_54:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_54
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_67
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_67:
_continue_loop54:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_54
_end_loop_54:
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
	la $8, _static_43
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
	sw $fp, -3184($sp)
	add $fp, $sp, -4
	add $sp, $fp, -3188
	sw $ra, 0($sp)
_continue_loop55:
	lw $8, _static_46
	slt $9, $8, 536870912
	move $10, $9
	sw $10, 0($fp)
	beqz $10, _short_evaluate_2
	lw $8, _static_46
	sgt $9, $8, -536870912
	move $10, $9
	sw $10, 0($fp)
_short_evaluate_2:
	lw $8, 0($fp)
	beqz $8, _end_loop_55
	lw $8, _static_46
	lw $9, _static_44
	sub $10, $8, $9
	lw $11, _static_45
	add $12, $10, $11
	add $13, $9, $11
	sub $14, $12, $13
	sub $15, $8, $9
	add $16, $15, $11
	add $17, $9, $11
	sub $18, $16, $17
	add $19, $14, $18
	sub $20, $8, $9
	add $21, $20, $11
	add $22, $9, $11
	sub $23, $21, $22
	sub $24, $8, $9
	add $25, $24, $11
	add $10, $23, $25
	add $12, $19, $10
	add $13, $9, $11
	sub $15, $8, $9
	add $16, $15, $11
	add $17, $13, $16
	add $14, $9, $11
	sub $18, $17, $14
	sub $20, $8, $9
	add $21, $20, $11
	add $22, $9, $11
	sub $24, $21, $22
	sub $23, $8, $9
	add $25, $23, $11
	add $19, $24, $25
	add $10, $18, $19
	sub $15, $12, $10
	add $13, $9, $11
	sub $16, $8, $9
	add $17, $16, $11
	add $14, $13, $17
	add $20, $9, $11
	sub $21, $8, $9
	add $22, $21, $11
	add $23, $20, $22
	sub $24, $14, $23
	add $25, $9, $11
	sub $18, $8, $9
	add $19, $18, $11
	add $12, $25, $19
	add $10, $9, $11
	sw $15, -144($fp)
	sub $15, $12, $10
	sub $16, $24, $15
	sub $13, $8, $9
	add $17, $13, $11
	add $21, $9, $11
	sub $20, $17, $21
	sub $22, $8, $9
	add $14, $22, $11
	add $23, $20, $14
	add $18, $9, $11
	sub $25, $8, $9
	add $19, $25, $11
	add $12, $18, $19
	add $10, $9, $11
	sub $24, $12, $10
	sub $15, $23, $24
	add $13, $16, $15
	lw $17, -144($fp)
	sub $21, $17, $13
	sub $22, $8, $9
	add $20, $22, $11
	add $14, $9, $11
	sub $25, $20, $14
	sub $18, $8, $9
	add $19, $18, $11
	add $12, $9, $11
	sub $10, $19, $12
	add $23, $25, $10
	sub $24, $8, $9
	add $16, $24, $11
	add $15, $9, $11
	sub $17, $16, $15
	sub $13, $8, $9
	sw $21, -272($fp)
	add $21, $13, $11
	add $22, $17, $21
	add $20, $23, $22
	add $14, $9, $11
	sub $18, $8, $9
	add $19, $18, $11
	add $12, $14, $19
	add $25, $9, $11
	sub $10, $12, $25
	sub $24, $8, $9
	add $16, $24, $11
	add $15, $9, $11
	sub $13, $16, $15
	sub $17, $8, $9
	add $21, $17, $11
	add $23, $13, $21
	add $22, $10, $23
	sub $18, $20, $22
	add $14, $9, $11
	sub $19, $8, $9
	add $12, $19, $11
	add $25, $14, $12
	add $24, $9, $11
	sub $16, $25, $24
	sub $15, $8, $9
	add $17, $15, $11
	add $13, $9, $11
	sub $21, $17, $13
	sub $10, $8, $9
	add $23, $10, $11
	add $20, $21, $23
	add $22, $16, $20
	sw $18, -400($fp)
	add $18, $9, $11
	sub $19, $8, $9
	add $14, $19, $11
	add $12, $18, $14
	add $25, $9, $11
	sub $24, $12, $25
	sub $15, $8, $9
	add $17, $15, $11
	add $13, $9, $11
	sub $10, $17, $13
	sub $21, $8, $9
	add $23, $21, $11
	add $16, $10, $23
	add $20, $24, $16
	sub $19, $22, $20
	lw $18, -400($fp)
	sub $14, $18, $19
	lw $12, -272($fp)
	add $25, $12, $14
	add $15, $9, $11
	sub $17, $8, $9
	add $13, $17, $11
	add $21, $15, $13
	add $10, $9, $11
	sub $23, $8, $9
	add $24, $23, $11
	add $16, $10, $24
	sub $22, $21, $16
	add $20, $9, $11
	sub $18, $8, $9
	add $19, $18, $11
	add $12, $20, $19
	add $14, $9, $11
	sw $25, -524($fp)
	sub $25, $12, $14
	sub $17, $22, $25
	sub $15, $8, $9
	add $13, $15, $11
	add $23, $9, $11
	sub $10, $13, $23
	sub $24, $8, $9
	add $21, $24, $11
	add $16, $10, $21
	add $18, $9, $11
	sub $20, $8, $9
	add $19, $20, $11
	add $12, $18, $19
	add $14, $9, $11
	sub $22, $12, $14
	sub $25, $16, $22
	add $15, $17, $25
	sub $13, $8, $9
	add $23, $13, $11
	add $24, $9, $11
	sub $10, $23, $24
	sub $21, $8, $9
	add $20, $21, $11
	add $18, $10, $20
	add $19, $9, $11
	sub $12, $8, $9
	add $14, $12, $11
	add $16, $19, $14
	add $22, $9, $11
	sub $17, $16, $22
	sub $25, $18, $17
	sw $15, -648($fp)
	sub $15, $8, $9
	add $13, $15, $11
	add $23, $9, $11
	sub $24, $13, $23
	sub $21, $8, $9
	add $10, $21, $11
	add $20, $24, $10
	add $12, $9, $11
	sub $19, $8, $9
	add $14, $19, $11
	add $16, $12, $14
	add $22, $9, $11
	sub $18, $16, $22
	sub $17, $20, $18
	add $15, $25, $17
	lw $13, -648($fp)
	add $23, $13, $15
	sub $21, $8, $9
	add $24, $21, $11
	add $10, $9, $11
	sub $19, $24, $10
	sub $12, $8, $9
	add $14, $12, $11
	add $16, $9, $11
	sub $22, $14, $16
	add $20, $19, $22
	sub $18, $8, $9
	add $25, $18, $11
	add $17, $9, $11
	sub $13, $25, $17
	sub $15, $8, $9
	sw $23, -768($fp)
	add $23, $15, $11
	add $21, $13, $23
	add $24, $20, $21
	add $10, $9, $11
	sub $12, $8, $9
	add $14, $12, $11
	add $16, $10, $14
	add $19, $9, $11
	sub $22, $16, $19
	sub $18, $8, $9
	add $25, $18, $11
	add $17, $9, $11
	sub $15, $25, $17
	sub $13, $8, $9
	add $23, $13, $11
	add $20, $15, $23
	add $21, $22, $20
	sub $12, $24, $21
	add $10, $9, $11
	sub $14, $8, $9
	add $16, $14, $11
	add $19, $10, $16
	add $18, $9, $11
	sub $25, $19, $18
	sub $17, $8, $9
	add $13, $17, $11
	add $15, $9, $11
	sub $23, $13, $15
	sub $22, $8, $9
	add $20, $22, $11
	add $24, $23, $20
	add $21, $25, $24
	sw $12, -896($fp)
	add $12, $9, $11
	sub $14, $8, $9
	add $10, $14, $11
	add $16, $12, $10
	add $19, $9, $11
	sub $18, $16, $19
	sub $17, $8, $9
	add $13, $17, $11
	add $15, $9, $11
	sub $22, $13, $15
	sub $23, $8, $9
	add $20, $23, $11
	add $25, $22, $20
	add $24, $18, $25
	sub $14, $21, $24
	lw $12, -896($fp)
	sub $10, $12, $14
	lw $16, -768($fp)
	add $19, $16, $10
	lw $17, -524($fp)
	sub $13, $17, $19
	sub $9, $8, $13
	add $15, $9, $11
	add $23, $13, $11
	sub $22, $15, $23
	sub $20, $8, $13
	add $18, $20, $11
	add $25, $13, $11
	sub $21, $18, $25
	add $24, $22, $21
	sub $12, $8, $13
	add $14, $12, $11
	add $16, $13, $11
	sub $10, $14, $16
	sub $17, $8, $13
	add $19, $17, $11
	add $9, $10, $19
	add $15, $24, $9
	add $23, $13, $11
	sub $20, $8, $13
	add $18, $20, $11
	add $25, $23, $18
	add $22, $13, $11
	sub $21, $25, $22
	sub $12, $8, $13
	add $14, $12, $11
	add $16, $13, $11
	sub $17, $14, $16
	sub $10, $8, $13
	add $19, $10, $11
	add $24, $17, $19
	add $9, $21, $24
	sub $20, $15, $9
	add $23, $13, $11
	sub $18, $8, $13
	add $25, $18, $11
	add $22, $23, $25
	add $12, $13, $11
	sub $14, $8, $13
	add $16, $14, $11
	add $10, $12, $16
	sub $17, $22, $10
	add $19, $13, $11
	sub $21, $8, $13
	add $24, $21, $11
	add $15, $19, $24
	add $9, $13, $11
	sw $20, -1152($fp)
	sub $20, $15, $9
	sub $18, $17, $20
	sub $23, $8, $13
	add $25, $23, $11
	add $14, $13, $11
	sub $12, $25, $14
	sub $16, $8, $13
	add $22, $16, $11
	add $10, $12, $22
	add $21, $13, $11
	sub $19, $8, $13
	add $24, $19, $11
	add $15, $21, $24
	add $9, $13, $11
	sub $17, $15, $9
	sub $20, $10, $17
	add $23, $18, $20
	lw $25, -1152($fp)
	sub $14, $25, $23
	sub $16, $8, $13
	add $12, $16, $11
	add $22, $13, $11
	sub $19, $12, $22
	sub $21, $8, $13
	add $24, $21, $11
	add $15, $13, $11
	sub $9, $24, $15
	add $10, $19, $9
	sub $17, $8, $13
	add $18, $17, $11
	add $20, $13, $11
	sub $25, $18, $20
	sub $23, $8, $13
	sw $14, -1280($fp)
	add $14, $23, $11
	add $16, $25, $14
	add $12, $10, $16
	add $22, $13, $11
	sub $21, $8, $13
	add $24, $21, $11
	add $15, $22, $24
	add $19, $13, $11
	sub $9, $15, $19
	sub $17, $8, $13
	add $18, $17, $11
	add $20, $13, $11
	sub $23, $18, $20
	sub $25, $8, $13
	add $14, $25, $11
	add $10, $23, $14
	add $16, $9, $10
	sub $21, $12, $16
	add $22, $13, $11
	sub $24, $8, $13
	add $15, $24, $11
	add $19, $22, $15
	add $17, $13, $11
	sub $18, $19, $17
	sub $20, $8, $13
	add $25, $20, $11
	add $23, $13, $11
	sub $14, $25, $23
	sub $9, $8, $13
	add $10, $9, $11
	add $12, $14, $10
	add $16, $18, $12
	sw $21, -1408($fp)
	add $21, $13, $11
	sub $24, $8, $13
	add $22, $24, $11
	add $15, $21, $22
	add $19, $13, $11
	sub $17, $15, $19
	sub $20, $8, $13
	add $25, $20, $11
	add $23, $13, $11
	sub $9, $25, $23
	sub $14, $8, $13
	add $10, $14, $11
	add $18, $9, $10
	add $12, $17, $18
	sub $24, $16, $12
	lw $21, -1408($fp)
	sub $22, $21, $24
	lw $15, -1280($fp)
	add $19, $15, $22
	add $20, $13, $11
	sub $25, $8, $13
	add $23, $25, $11
	add $14, $20, $23
	add $9, $13, $11
	sub $10, $8, $13
	add $17, $10, $11
	add $18, $9, $17
	sub $16, $14, $18
	add $12, $13, $11
	sub $21, $8, $13
	add $24, $21, $11
	add $15, $12, $24
	add $22, $13, $11
	sw $19, -1532($fp)
	sub $19, $15, $22
	sub $25, $16, $19
	sub $20, $8, $13
	add $23, $20, $11
	add $10, $13, $11
	sub $9, $23, $10
	sub $17, $8, $13
	add $14, $17, $11
	add $18, $9, $14
	add $21, $13, $11
	sub $12, $8, $13
	add $24, $12, $11
	add $15, $21, $24
	add $22, $13, $11
	sub $16, $15, $22
	sub $19, $18, $16
	add $20, $25, $19
	sub $23, $8, $13
	add $10, $23, $11
	add $17, $13, $11
	sub $9, $10, $17
	sub $14, $8, $13
	add $12, $14, $11
	add $21, $9, $12
	add $24, $13, $11
	sub $15, $8, $13
	add $22, $15, $11
	add $18, $24, $22
	add $16, $13, $11
	sub $25, $18, $16
	sub $19, $21, $25
	sw $20, -1656($fp)
	sub $20, $8, $13
	add $23, $20, $11
	add $10, $13, $11
	sub $17, $23, $10
	sub $14, $8, $13
	add $9, $14, $11
	add $12, $17, $9
	add $15, $13, $11
	sub $24, $8, $13
	add $22, $24, $11
	add $18, $15, $22
	add $16, $13, $11
	sub $21, $18, $16
	sub $25, $12, $21
	add $20, $19, $25
	lw $23, -1656($fp)
	add $10, $23, $20
	sub $14, $8, $13
	add $17, $14, $11
	add $9, $13, $11
	sub $24, $17, $9
	sub $15, $8, $13
	add $22, $15, $11
	add $18, $13, $11
	sub $16, $22, $18
	add $12, $24, $16
	sub $21, $8, $13
	add $19, $21, $11
	add $25, $13, $11
	sub $23, $19, $25
	sub $20, $8, $13
	sw $10, -1776($fp)
	add $10, $20, $11
	add $14, $23, $10
	add $17, $12, $14
	add $9, $13, $11
	sub $15, $8, $13
	add $22, $15, $11
	add $18, $9, $22
	add $24, $13, $11
	sub $16, $18, $24
	sub $21, $8, $13
	add $19, $21, $11
	add $25, $13, $11
	sub $20, $19, $25
	sub $23, $8, $13
	add $10, $23, $11
	add $12, $20, $10
	add $14, $16, $12
	sub $15, $17, $14
	add $9, $13, $11
	sub $22, $8, $13
	add $18, $22, $11
	add $24, $9, $18
	add $21, $13, $11
	sub $19, $24, $21
	sub $25, $8, $13
	add $23, $25, $11
	add $20, $13, $11
	sub $10, $23, $20
	sub $16, $8, $13
	add $12, $16, $11
	add $17, $10, $12
	add $14, $19, $17
	sw $15, -1904($fp)
	add $15, $13, $11
	sub $22, $8, $13
	add $9, $22, $11
	add $18, $15, $9
	add $24, $13, $11
	sub $21, $18, $24
	sub $25, $8, $13
	add $23, $25, $11
	add $20, $13, $11
	sub $16, $23, $20
	sub $10, $8, $13
	add $12, $10, $11
	add $19, $16, $12
	add $17, $21, $19
	sub $22, $14, $17
	lw $15, -1904($fp)
	sub $9, $15, $22
	lw $18, -1776($fp)
	add $24, $18, $9
	lw $25, -1532($fp)
	sub $23, $25, $24
	sub $11, $8, $13
	add $20, $11, $23
	add $10, $13, $23
	sub $16, $20, $10
	sub $12, $8, $13
	add $21, $12, $23
	add $19, $13, $23
	sub $14, $21, $19
	add $17, $16, $14
	sub $15, $8, $13
	add $22, $15, $23
	add $18, $13, $23
	sub $9, $22, $18
	sub $25, $8, $13
	add $24, $25, $23
	add $11, $9, $24
	add $20, $17, $11
	add $10, $13, $23
	sub $12, $8, $13
	add $21, $12, $23
	add $19, $10, $21
	add $16, $13, $23
	sub $14, $19, $16
	sub $15, $8, $13
	add $22, $15, $23
	add $18, $13, $23
	sub $25, $22, $18
	sub $9, $8, $13
	add $24, $9, $23
	add $17, $25, $24
	add $11, $14, $17
	sub $12, $20, $11
	add $10, $13, $23
	sub $21, $8, $13
	add $19, $21, $23
	add $16, $10, $19
	add $15, $13, $23
	sub $22, $8, $13
	add $18, $22, $23
	add $9, $15, $18
	sub $25, $16, $9
	add $24, $13, $23
	sub $14, $8, $13
	add $17, $14, $23
	add $20, $24, $17
	add $11, $13, $23
	sw $12, -2160($fp)
	sub $12, $20, $11
	sub $21, $25, $12
	sub $10, $8, $13
	add $19, $10, $23
	add $22, $13, $23
	sub $15, $19, $22
	sub $18, $8, $13
	add $16, $18, $23
	add $9, $15, $16
	add $14, $13, $23
	sub $24, $8, $13
	add $17, $24, $23
	add $20, $14, $17
	add $11, $13, $23
	sub $25, $20, $11
	sub $12, $9, $25
	add $10, $21, $12
	lw $19, -2160($fp)
	sub $22, $19, $10
	sub $18, $8, $13
	add $15, $18, $23
	add $16, $13, $23
	sub $24, $15, $16
	sub $14, $8, $13
	add $17, $14, $23
	add $20, $13, $23
	sub $11, $17, $20
	add $9, $24, $11
	sub $25, $8, $13
	add $21, $25, $23
	add $12, $13, $23
	sub $19, $21, $12
	sub $10, $8, $13
	sw $22, -2288($fp)
	add $22, $10, $23
	add $18, $19, $22
	add $15, $9, $18
	add $16, $13, $23
	sub $14, $8, $13
	add $17, $14, $23
	add $20, $16, $17
	add $24, $13, $23
	sub $11, $20, $24
	sub $25, $8, $13
	add $21, $25, $23
	add $12, $13, $23
	sub $10, $21, $12
	sub $19, $8, $13
	add $22, $19, $23
	add $9, $10, $22
	add $18, $11, $9
	sub $14, $15, $18
	add $16, $13, $23
	sub $17, $8, $13
	add $20, $17, $23
	add $24, $16, $20
	add $25, $13, $23
	sub $21, $24, $25
	sub $12, $8, $13
	add $19, $12, $23
	add $10, $13, $23
	sub $22, $19, $10
	sub $11, $8, $13
	add $9, $11, $23
	add $15, $22, $9
	add $18, $21, $15
	sw $14, -2416($fp)
	add $14, $13, $23
	sub $17, $8, $13
	add $16, $17, $23
	add $20, $14, $16
	add $24, $13, $23
	sub $25, $20, $24
	sub $12, $8, $13
	add $19, $12, $23
	add $10, $13, $23
	sub $11, $19, $10
	sub $22, $8, $13
	add $9, $22, $23
	add $21, $11, $9
	add $15, $25, $21
	sub $17, $18, $15
	lw $14, -2416($fp)
	sub $16, $14, $17
	lw $20, -2288($fp)
	add $24, $20, $16
	add $12, $13, $23
	sub $19, $8, $13
	add $10, $19, $23
	add $22, $12, $10
	add $11, $13, $23
	sub $9, $8, $13
	add $25, $9, $23
	add $21, $11, $25
	sub $18, $22, $21
	add $15, $13, $23
	sub $14, $8, $13
	add $17, $14, $23
	add $20, $15, $17
	add $16, $13, $23
	sw $24, -2540($fp)
	sub $24, $20, $16
	sub $19, $18, $24
	sub $12, $8, $13
	add $10, $12, $23
	add $9, $13, $23
	sub $11, $10, $9
	sub $25, $8, $13
	add $22, $25, $23
	add $21, $11, $22
	add $14, $13, $23
	sub $15, $8, $13
	add $17, $15, $23
	add $20, $14, $17
	add $16, $13, $23
	sub $18, $20, $16
	sub $24, $21, $18
	add $12, $19, $24
	sub $10, $8, $13
	add $9, $10, $23
	add $25, $13, $23
	sub $11, $9, $25
	sub $22, $8, $13
	add $15, $22, $23
	add $14, $11, $15
	add $17, $13, $23
	sub $20, $8, $13
	add $16, $20, $23
	add $21, $17, $16
	add $18, $13, $23
	sub $19, $21, $18
	sub $24, $14, $19
	sw $12, -2664($fp)
	sub $12, $8, $13
	add $10, $12, $23
	add $9, $13, $23
	sub $25, $10, $9
	sub $22, $8, $13
	add $11, $22, $23
	add $15, $25, $11
	add $20, $13, $23
	sub $17, $8, $13
	add $16, $17, $23
	add $21, $20, $16
	add $18, $13, $23
	sub $14, $21, $18
	sub $19, $15, $14
	add $12, $24, $19
	lw $10, -2664($fp)
	add $9, $10, $12
	sub $22, $8, $13
	add $25, $22, $23
	add $11, $13, $23
	sub $17, $25, $11
	sub $20, $8, $13
	add $16, $20, $23
	add $21, $13, $23
	sub $18, $16, $21
	add $15, $17, $18
	sub $14, $8, $13
	add $24, $14, $23
	add $19, $13, $23
	sub $10, $24, $19
	sub $12, $8, $13
	sw $9, -2784($fp)
	add $9, $12, $23
	add $22, $10, $9
	add $25, $15, $22
	add $11, $13, $23
	sub $20, $8, $13
	add $16, $20, $23
	add $21, $11, $16
	add $17, $13, $23
	sub $18, $21, $17
	sub $14, $8, $13
	add $24, $14, $23
	add $19, $13, $23
	sub $12, $24, $19
	sub $10, $8, $13
	add $9, $10, $23
	add $15, $12, $9
	add $22, $18, $15
	sub $20, $25, $22
	add $11, $13, $23
	sub $16, $8, $13
	add $21, $16, $23
	add $17, $11, $21
	add $14, $13, $23
	sub $24, $17, $14
	sub $19, $8, $13
	add $10, $19, $23
	add $12, $13, $23
	sub $9, $10, $12
	sub $18, $8, $13
	add $15, $18, $23
	add $25, $9, $15
	add $22, $24, $25
	sw $20, -2912($fp)
	add $20, $13, $23
	sub $16, $8, $13
	add $11, $16, $23
	add $21, $20, $11
	add $17, $13, $23
	sub $14, $21, $17
	sub $19, $8, $13
	add $10, $19, $23
	add $12, $13, $23
	sub $18, $10, $12
	sub $9, $8, $13
	add $15, $9, $23
	add $24, $18, $15
	add $25, $14, $24
	sub $16, $22, $25
	lw $20, -2912($fp)
	sub $11, $20, $16
	lw $21, -2784($fp)
	add $17, $21, $11
	lw $19, -2540($fp)
	sub $10, $19, $17
	sw $10, _static_46
	sw $13, _static_44
	sw $23, _static_45
	b _continue_loop55
_end_loop_55:

	lw $8, _static_44
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3044($fp)

	lw $8, -3044($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_47
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, _static_45
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3052($fp)

	lw $8, -3052($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_47
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, _static_46
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3060($fp)

	lw $8, -3060($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_43
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -3180($fp)
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
