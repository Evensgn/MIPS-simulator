	.data
	.word 1
_static_15:
	.asciiz "\n"
	.align 2
	.word 1
_static_25:
	.asciiz " "
	.align 2
	.word 0
_static_26:
	.asciiz ""
	.align 2
	.word 79
_static_27:
	.asciiz "Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"
	.align 2
	.word 12
_static_28:
	.asciiz "Let's start!"
	.align 2
	.word 5
_static_29:
	.asciiz "step "
	.align 2
	.word 1
_static_30:
	.asciiz ":"
	.align 2
	.word 7
_static_31:
	.asciiz "Total: "
	.align 2
	.word 8
_static_32:
	.asciiz " step(s)"
	.align 2
_static_16:
	.word 0
_static_17:
	.word 0
_static_18:
	.word 0
_static_19:
	.word 0
_static_20:
	.word 0
_static_21:
	.word 0
_static_22:
	.word 0
_static_23:
	.word 0
_static_24:
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
	li $8, 48271
	sw $8, _static_20
	li $8, 2147483647
	sw $8, _static_21
	li $8, 1
	sw $8, _static_24
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
	ble $10, $13, _end_if_34
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_34:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_30:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_30
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_35
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_35:
_continue_loop30:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_30
_end_loop_30:
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
	beq $10, $13, _end_if_36
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_36:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_31:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_31
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_37
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_37:
_continue_loop31:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_31
_end_loop_31:
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
	beq $10, $13, _end_if_38
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_38:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_32:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_32
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_39
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_39:
_continue_loop32:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_32
_end_loop_32:
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
	ble $10, $13, _end_if_40
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_40:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_33:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_33
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_41
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_41:
_continue_loop33:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_33
_end_loop_33:
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
	la $8, _static_15
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_random:
	sw $fp, -152($sp)
	add $fp, $sp, -4
	add $sp, $fp, -156
	sw $ra, 0($sp)
	lw $8, _static_24
	lw $9, _static_22
	rem $10, $8, $9
	lw $11, _static_20
	mul $12, $11, $10
	div $13, $8, $9
	lw $14, _static_23
	mul $15, $14, $13
	sub $16, $12, $15
	sw $16, 0($fp)
	blt $16, 0, _else_42
	lw $8, 0($fp)
	sw $8, _static_24
	b _end_if_42
_else_42:
	lw $8, 0($fp)
	lw $9, _static_21
	add $10, $8, $9
	sw $10, _static_24
_end_if_42:
	lw $8, _static_24
	move $v0, $8
	b _end_func_random
_end_func_random:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -148($fp)
	jr $ra

_func_initialize:
	sw $fp, -124($sp)
	add $fp, $sp, -4
	add $sp, $fp, -128
	sw $ra, 0($sp)
	lw $8, 0($fp)
	sw $8, _static_24
_end_func_initialize:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -120($fp)
	jr $ra

_func_swap:
	sw $fp, -172($sp)
	add $fp, $sp, -4
	add $sp, $fp, -176
	sw $ra, 0($sp)
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $10, $14
	lw $16, 0($15)
	mul $17, $8, 4
	add $18, $10, $17
	sw $16, 0($18)
	mul $19, $13, 4
	add $20, $10, $19
	sw $12, 0($20)
	sw $12, -8($fp)
_end_func_swap:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -168($fp)
	jr $ra

_func_pd:
	sw $fp, -152($sp)
	add $fp, $sp, -4
	add $sp, $fp, -156
	sw $ra, 0($sp)
_begin_loop_34:
	lw $8, _static_17
	lw $9, 0($fp)
	bgt $8, $9, _end_loop_34
	lw $8, _static_17
	add $9, $8, 1
	mul $10, $8, $9
	div $11, $10, 2
	lw $12, 0($fp)
	bne $12, $11, _end_if_43
	li $8, 1
	move $v0, $8
	b _end_func_pd
_end_if_43:
_continue_loop34:
	lw $8, _static_17
	add $8, $8, 1
	sw $8, _static_17
	b _begin_loop_34
_end_loop_34:
	move $v0, $zero
	b _end_func_pd
_end_func_pd:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -148($fp)
	jr $ra

_func_show:
	sw $fp, -152($sp)
	add $fp, $sp, -4
	add $sp, $fp, -156
	sw $ra, 0($sp)
	li $8, 0
	sw $8, 0($fp)
_begin_loop_35:
	lw $8, 0($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_35
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	sw $12, -4($sp)

jal _func_____built_in_toString
	sw $v0, -20($fp)

	lw $8, -20($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_25
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_continue_loop35:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_35
_end_loop_35:
	la $8, _static_26
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall
_end_func_show:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -148($fp)
	jr $ra

_func_win:
	sw $fp, -304($sp)
	add $fp, $sp, -4
	add $sp, $fp, -308
	sw $ra, 0($sp)
	li $8, 100
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -28($fp)
	li $8, 100
	lw $9, -28($fp)
	sw $8, 0($9)
	add $10, $9, 4
	lw $11, _static_18
	lw $12, _static_17
	sw $10, -8($fp)
	beq $11, $12, _end_if_44
	move $v0, $zero
	b _end_func_win
_end_if_44:
	li $8, 0
	sw $8, -4($fp)
_begin_loop_36:
	lw $8, -4($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_36
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $8, 4
	lw $14, -8($fp)
	add $15, $14, $13
	sw $12, 0($15)
_continue_loop36:
	lw $8, -4($fp)
	add $8, $8, 1
	sw $8, -4($fp)
	b _begin_loop_36
_end_loop_36:
	li $8, 0
	sw $8, 0($fp)
_begin_loop_37:
	lw $8, _static_18
	sub $9, $8, 1
	lw $10, 0($fp)
	bge $10, $9, _end_loop_37
	lw $8, 0($fp)
	add $9, $8, 1
	sw $9, -4($fp)
_begin_loop_38:
	lw $8, -4($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_38
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $10, $14
	lw $16, 0($15)
	ble $12, $16, _end_if_45
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	mul $14, $13, 4
	add $15, $10, $14
	lw $16, 0($15)
	mul $17, $8, 4
	add $18, $10, $17
	sw $16, 0($18)
	mul $19, $13, 4
	add $20, $10, $19
	sw $12, 0($20)
	sw $12, -12($fp)
_end_if_45:
_continue_loop38:
	lw $8, -4($fp)
	add $8, $8, 1
	sw $8, -4($fp)
	b _begin_loop_38
_end_loop_38:
_continue_loop37:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_37
_end_loop_37:
	li $8, 0
	sw $8, 0($fp)
_begin_loop_39:
	lw $8, 0($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_39
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, -8($fp)
	add $11, $10, $9
	lw $12, 0($11)
	add $13, $8, 1
	beq $12, $13, _end_if_46
	move $v0, $zero
	b _end_func_win
_end_if_46:
_continue_loop39:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_39
_end_loop_39:
	li $8, 1
	move $v0, $8
	b _end_func_win
_end_func_win:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -300($fp)
	jr $ra

_func_merge:
	sw $fp, -196($sp)
	add $fp, $sp, -4
	add $sp, $fp, -200
	sw $ra, 0($sp)
	li $8, 0
	sw $8, 0($fp)
_begin_loop_40:
	lw $8, 0($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_40
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	bne $12, 0, _end_if_47
	lw $8, 0($fp)
	add $9, $8, 1
	sw $9, -4($fp)
_begin_loop_41:
	lw $8, -4($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_41
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	beq $12, 0, _end_if_48

	lw $8, 0($fp)
	sw $8, -4($sp)

	lw $9, -4($fp)
	sw $9, -8($sp)

jal _func_swap
	b _end_loop_41
_end_if_48:
_continue_loop41:
	lw $8, -4($fp)
	add $8, $8, 1
	sw $8, -4($fp)
	b _begin_loop_41
_end_loop_41:
_end_if_47:
_continue_loop40:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_40
_end_loop_40:
	li $8, 0
	sw $8, 0($fp)
_begin_loop_42:
	lw $8, 0($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_42
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	bne $12, 0, _end_if_49
	lw $8, 0($fp)
	sw $8, _static_18
	b _end_loop_42
_end_if_49:
_continue_loop42:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_42
_end_loop_42:
_end_func_merge:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -192($fp)
	jr $ra

_func_move:
	sw $fp, -160($sp)
	add $fp, $sp, -4
	add $sp, $fp, -164
	sw $ra, 0($sp)
	li $8, 0
	sw $8, 0($fp)
_begin_loop_43:
	lw $8, 0($fp)
	lw $9, _static_18
	bge $8, $9, _end_loop_43
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	sub $12, $12, 1
	sw $12, 0($11)
	add $13, $8, 1
	sw $13, 0($fp)
_continue_loop43:
	b _begin_loop_43
_end_loop_43:
	lw $8, _static_18
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	sw $8, 0($11)
	add $8, $8, 1
	move $8, $8
	sw $8, _static_18
_end_func_move:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -156($fp)
	jr $ra

_func_main:
	sw $fp, -368($sp)
	add $fp, $sp, -4
	add $sp, $fp, -372
	sw $ra, 0($sp)
	li $8, 0
	li $9, 0
	li $10, 0
	li $11, 210
	li $12, 0
	li $13, 100
	add $14, $13, 1
	mul $15, $14, 4
	li $v0, 9
	move $a0, $15
	sw $8, 0($fp)
	sw $9, -4($fp)
	sw $10, -8($fp)
	sw $11, _static_16
	sw $12, _static_17
	syscall
	sw $v0, -28($fp)
	li $8, 100
	lw $9, -28($fp)
	sw $8, 0($9)
	add $10, $9, 4
	lw $11, _static_21
	lw $12, _static_20
	div $13, $11, $12
	rem $14, $11, $12

	lw $15, _static_16
	sw $15, -4($sp)
	sw $10, _static_19
	sw $13, _static_22
	sw $14, _static_23
jal _func_pd
	sw $v0, -44($fp)
	lw $8, -44($fp)
	xor $9, $8, 1
	beqz $9, _end_if_50
	la $8, _static_27
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall
	li $8, 1
	move $v0, $8
	b _end_func_main
_end_if_50:
	la $8, _static_28
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall

	li $8, 3654898
	sw $8, -4($sp)

jal _func_initialize

jal _func_random
	sw $v0, -68($fp)
	lw $8, -68($fp)
	rem $9, $8, 10
	add $10, $9, 1
	sw $10, -4($sp)
	sw $10, _static_18
jal _func_____built_in_toString
	sw $v0, -88($fp)

	lw $8, -88($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall
_begin_loop_44:
	lw $8, _static_18
	sub $9, $8, 1
	lw $10, 0($fp)
	bge $10, $9, _end_loop_44

jal _func_random
	sw $v0, -112($fp)
	lw $8, -112($fp)
	rem $9, $8, 10
	add $10, $9, 1
	lw $11, 0($fp)
	mul $12, $11, 4
	lw $13, _static_19
	add $14, $13, $12
	sw $10, 0($14)
_continue_loop45:
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	add $14, $12, $13
	lw $15, _static_16
	ble $14, $15, _end_loop_45

jal _func_random
	sw $v0, -160($fp)
	lw $8, -160($fp)
	rem $9, $8, 10
	add $10, $9, 1
	lw $11, 0($fp)
	mul $12, $11, 4
	lw $13, _static_19
	add $14, $13, $12
	sw $10, 0($14)
	b _continue_loop45
_end_loop_45:
	lw $8, 0($fp)
	mul $9, $8, 4
	lw $10, _static_19
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -4($fp)
	add $14, $13, $12
	sw $14, -4($fp)
_continue_loop44:
	lw $8, 0($fp)
	add $8, $8, 1
	sw $8, 0($fp)
	b _begin_loop_44
_end_loop_44:
	lw $8, _static_16
	lw $9, -4($fp)
	sub $10, $8, $9
	lw $11, _static_18
	sub $12, $11, 1
	mul $13, $12, 4
	lw $14, _static_19
	add $15, $14, $13
	sw $10, 0($15)

jal _func_show

jal _func_merge
_continue_loop46:

jal _func_win
	sw $v0, -216($fp)
	lw $8, -216($fp)
	xor $9, $8, 1
	beqz $9, _end_loop_46
	la $8, _static_29
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -4($sp)
	sw $8, -8($fp)
jal _func_____built_in_toString
	sw $v0, -228($fp)

	lw $8, -228($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_30
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall

jal _func_move

jal _func_merge

jal _func_show
	b _continue_loop46
_end_loop_46:
	la $8, _static_31
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -8($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -240($fp)

	lw $8, -240($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_32
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_15
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -364($fp)
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
