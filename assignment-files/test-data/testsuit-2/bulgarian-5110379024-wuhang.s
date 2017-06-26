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
	li $t0, 48271
	sw $t0, _static_20
	li $t0, 2147483647
	sw $t0, _static_21
	li $t0, 1
	sw $t0, _static_24
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
	beqz $t0, _end_if_34
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_34:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_30:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_30
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
	beqz $t0, _end_if_35
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_35:
	nop
_continue_loop30:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_30
_end_loop_30:
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
	beqz $t0, _end_if_36
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_36:
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
_begin_loop_31:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_31
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
	beqz $t0, _end_if_37
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_37:
	nop
_continue_loop31:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_31
_end_loop_31:
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
	beqz $t0, _end_if_38
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_38:
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
_begin_loop_32:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_32
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
	beqz $t0, _end_if_39
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_39:
	nop
_continue_loop32:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_32
_end_loop_32:
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
	beqz $t0, _end_if_40
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_40:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_33:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_33
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
	beqz $t0, _end_if_41
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_41:
	nop
_continue_loop33:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_33
_end_loop_33:
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

_func_random:
	sw $fp, -156($sp)
	add $fp, $sp, -4
	add $sp, $fp, -160
	sw $ra, 0($sp)
	lw $8, _static_24
	lw $t1, _static_22
	rem $t0, $t0, $t1
	sw $t0, -4($fp)
	lw $8, _static_20
	lw $t1, -4($fp)
	mul $t0, $t0, $t1
	sw $t0, -8($fp)
	lw $8, _static_24
	lw $t1, _static_22
	div $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $8, _static_23
	lw $t1, -12($fp)
	mul $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $8, -8($fp)
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, 0($fp)
	lw $8, 0($fp)
	sge $t0, $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	beqz $t0, _else_42
	lw $t0, 0($fp)
	sw $t0, _static_24
	b _end_if_42
_else_42:
	lw $8, 0($fp)
	lw $t1, _static_21
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, _static_24
_end_if_42:
	nop
	lw $v0, _static_24
	b _end_func_random
_end_func_random:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -152($fp)
	jr $ra

_func_initialize:
	sw $fp, -124($sp)
	add $fp, $sp, -4
	add $sp, $fp, -128
	sw $ra, 0($sp)
	lw $t0, 0($fp)
	sw $t0, _static_24
_end_func_initialize:
	nop
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
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	lw $8, _static_19
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -8($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	lw $8, _static_19
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	lw $t0, 0($t0)
	sw $t0, -40($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	lw $8, _static_19
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -40($fp)
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -44($fp)
	lw $8, _static_19
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -8($fp)
	lw $t1, -48($fp)
	sw $t0, 0($t1)
_end_func_swap:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -168($fp)
	jr $ra

_func_pd:
	sw $fp, -152($sp)
	add $fp, $sp, -4
	add $sp, $fp, -156
	sw $ra, 0($sp)
	nop
_begin_loop_34:
	lw $8, _static_17
	lw $t1, 0($fp)
	sle $t0, $t0, $t1
	sw $t0, -4($fp)
	lw $t0, -4($fp)
	beqz $t0, _end_loop_34
	lw $8, _static_17
	add $t0, $t0, 1
	sw $t0, -12($fp)
	lw $8, _static_17
	lw $t1, -12($fp)
	mul $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $8, -16($fp)
	div $t0, $t0, 2
	sw $t0, -24($fp)
	lw $8, 0($fp)
	lw $t1, -24($fp)
	seq $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	beqz $t0, _end_if_43
	li $v0, 1
	b _end_func_pd
_end_if_43:
	nop
_continue_loop34:
	lw $8, _static_17
	add $t0, $t0, 1
	sw $t0, _static_17
	b _begin_loop_34
_end_loop_34:
	nop
	li $v0, 0
	b _end_func_pd
_end_func_pd:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -148($fp)
	jr $ra

_func_show:
	sw $fp, -160($sp)
	add $fp, $sp, -4
	add $sp, $fp, -164
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_35:
	lw $8, 0($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _end_loop_35
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	lw $8, _static_19
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -24($fp)
	la $t0, _static_25
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -4($sp)
	lw $t0, -28($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -32($fp)
	li $v0, 4
	lw $a0, -32($fp)
	syscall
_continue_loop35:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_35
_end_loop_35:
	nop
	la $t0, _static_26
	sw $t0, -36($fp)
	li $v0, 4
	lw $a0, -36($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
_end_func_show:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -156($fp)
	jr $ra

_func_win:
	sw $fp, -316($sp)
	add $fp, $sp, -4
	add $sp, $fp, -320
	sw $ra, 0($sp)
	li $8, 100
	add $t0, $t0, 1
	sw $t0, -20($fp)
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -24($fp)
	li $v0, 9
	lw $a0, -24($fp)
	syscall
	sw $v0, -28($fp)
	li $t0, 100
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $8, -28($fp)
	add $t0, $t0, 4
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -8($fp)
	lw $8, _static_18
	lw $t1, _static_17
	sne $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	beqz $t0, _end_if_44
	li $v0, 0
	b _end_func_win
_end_if_44:
	nop
	li $t0, 0
	sw $t0, -4($fp)
_begin_loop_36:
	lw $8, -4($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	beqz $t0, _end_loop_36
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -56($fp)
	lw $8, _static_19
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	lw $t0, 0($t0)
	sw $t0, -64($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	lw $8, -8($fp)
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -64($fp)
	lw $t1, -52($fp)
	sw $t0, 0($t1)
_continue_loop36:
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	b _begin_loop_36
_end_loop_36:
	nop
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_37:
	lw $8, _static_18
	sub $t0, $t0, 1
	sw $t0, -76($fp)
	lw $8, 0($fp)
	lw $t1, -76($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	beqz $t0, _end_loop_37
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -4($fp)
_begin_loop_38:
	lw $8, -4($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	beqz $t0, _end_loop_38
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	lw $8, -8($fp)
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t0, 0($t0)
	sw $t0, -112($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -104($fp)
	lw $8, -8($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t0, 0($t0)
	sw $t0, -116($fp)
	lw $8, -112($fp)
	lw $t1, -116($fp)
	sgt $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	beqz $t0, _end_if_45
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -124($fp)
	lw $8, -8($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t0, 0($t0)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -12($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -144($fp)
	lw $8, -8($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t0, 0($t0)
	sw $t0, -152($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -136($fp)
	lw $8, -8($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -152($fp)
	lw $t1, -140($fp)
	sw $t0, 0($t1)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -156($fp)
	lw $8, -8($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -12($fp)
	lw $t1, -160($fp)
	sw $t0, 0($t1)
_end_if_45:
	nop
_continue_loop38:
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	b _begin_loop_38
_end_loop_38:
	nop
_continue_loop37:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_37
_end_loop_37:
	nop
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_39:
	lw $8, 0($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	beqz $t0, _end_loop_39
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -172($fp)
	lw $8, -8($fp)
	lw $t1, -172($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t0, 0($t0)
	sw $t0, -188($fp)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -184($fp)
	lw $8, -188($fp)
	lw $t1, -184($fp)
	sne $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	beqz $t0, _end_if_46
	li $v0, 0
	b _end_func_win
_end_if_46:
	nop
_continue_loop39:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_39
_end_loop_39:
	nop
	li $v0, 1
	b _end_func_win
_end_func_win:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -312($fp)
	jr $ra

_func_merge:
	sw $fp, -216($sp)
	add $fp, $sp, -4
	add $sp, $fp, -220
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_40:
	lw $8, 0($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	beqz $t0, _end_loop_40
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -16($fp)
	lw $8, _static_19
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	lw $t0, 0($t0)
	sw $t0, -28($fp)
	lw $8, -28($fp)
	seq $t0, $t0, 0
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	beqz $t0, _end_if_47
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -4($fp)
_begin_loop_41:
	lw $8, -4($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	beqz $t0, _end_loop_41
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -48($fp)
	lw $8, _static_19
	lw $t1, -48($fp)
	add $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	lw $t0, 0($t0)
	sw $t0, -60($fp)
	lw $8, -60($fp)
	sne $t0, $t0, 0
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	beqz $t0, _end_if_48
	lw $t0, 0($fp)
	sw $t0, -4($sp)
	lw $t0, -4($fp)
	sw $t0, -8($sp)
jal _func_swap
	b _end_loop_41
_end_if_48:
	nop
_continue_loop41:
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -4($fp)
	b _begin_loop_41
_end_loop_41:
	nop
_end_if_47:
	nop
_continue_loop40:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_40
_end_loop_40:
	nop
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_42:
	lw $8, 0($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	beqz $t0, _end_loop_42
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -76($fp)
	lw $8, _static_19
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t0, 0($t0)
	sw $t0, -88($fp)
	lw $8, -88($fp)
	seq $t0, $t0, 0
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	beqz $t0, _end_if_49
	lw $t0, 0($fp)
	sw $t0, _static_18
	b _end_loop_42
_end_if_49:
	nop
_continue_loop42:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_42
_end_loop_42:
	nop
_end_func_merge:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -212($fp)
	jr $ra

_func_move:
	sw $fp, -164($sp)
	add $fp, $sp, -4
	add $sp, $fp, -168
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
_begin_loop_43:
	lw $8, 0($fp)
	lw $t1, _static_18
	slt $t0, $t0, $t1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _end_loop_43
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -12($fp)
	lw $8, _static_19
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	lw $t0, 0($t0)
	sw $t0, -20($fp)
	lw $8, -20($fp)
	sub $t0, $t0, 1
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	lw $t1, -16($fp)
	sw $t0, 0($t1)
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, 0($fp)
_continue_loop43:
	b _begin_loop_43
_end_loop_43:
	nop
	lw $8, _static_18
	mul $t0, $t0, 4
	sw $t0, -32($fp)
	lw $8, _static_19
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t0, _static_18
	lw $t1, -36($fp)
	sw $t0, 0($t1)
	lw $t0, _static_18
	sw $t0, -40($fp)
	lw $8, _static_18
	add $t0, $t0, 1
	sw $t0, _static_18
	lw $t0, _static_18
	sw $t0, _static_18
_end_func_move:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -160($fp)
	jr $ra

_func_main:
	sw $fp, -404($sp)
	add $fp, $sp, -4
	add $sp, $fp, -408
	sw $ra, 0($sp)
	li $t0, 0
	sw $t0, 0($fp)
	li $t0, 0
	sw $t0, -4($fp)
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 210
	sw $t0, _static_16
	li $t0, 0
	sw $t0, _static_17
	li $8, 100
	add $t0, $t0, 1
	sw $t0, -36($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -40($fp)
	li $v0, 9
	lw $a0, -40($fp)
	syscall
	sw $v0, -44($fp)
	li $t0, 100
	lw $t1, -44($fp)
	sw $t0, 0($t1)
	lw $8, -44($fp)
	add $t0, $t0, 4
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, _static_19
	lw $8, _static_21
	lw $t1, _static_20
	div $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, _static_22
	lw $8, _static_21
	lw $t1, _static_20
	rem $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, _static_23
	lw $t0, _static_16
	sw $t0, -4($sp)
jal _func_pd
	sw $v0, -60($fp)
	lw $8, -60($fp)
	xor $t0, $t0, 1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	beqz $t0, _end_if_50
	la $t0, _static_27
	sw $t0, -68($fp)
	li $v0, 4
	lw $a0, -68($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
	li $v0, 1
	b _end_func_main
_end_if_50:
	nop
	la $t0, _static_28
	sw $t0, -76($fp)
	li $v0, 4
	lw $a0, -76($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
	li $t0, 3654898
	sw $t0, -4($sp)
jal _func_initialize
jal _func_random
	sw $v0, -84($fp)
	lw $8, -84($fp)
	rem $t0, $t0, 10
	sw $t0, -92($fp)
	lw $8, -92($fp)
	add $t0, $t0, 1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, _static_18
	lw $t0, _static_18
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -104($fp)
	li $v0, 4
	lw $a0, -104($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
_begin_loop_44:
	lw $8, _static_18
	sub $t0, $t0, 1
	sw $t0, -112($fp)
	lw $8, 0($fp)
	lw $t1, -112($fp)
	slt $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	beqz $t0, _end_loop_44
jal _func_random
	sw $v0, -128($fp)
	lw $8, -128($fp)
	rem $t0, $t0, 10
	sw $t0, -136($fp)
	lw $8, -136($fp)
	add $t0, $t0, 1
	sw $t0, -144($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -120($fp)
	lw $8, _static_19
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -144($fp)
	lw $t1, -124($fp)
	sw $t0, 0($t1)
_continue_loop45:
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -148($fp)
	lw $8, _static_19
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t0, 0($t0)
	sw $t0, -156($fp)
	lw $8, -156($fp)
	lw $t1, -4($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $8, -160($fp)
	lw $t1, _static_16
	sgt $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	beqz $t0, _end_loop_45
jal _func_random
	sw $v0, -176($fp)
	lw $8, -176($fp)
	rem $t0, $t0, 10
	sw $t0, -184($fp)
	lw $8, -184($fp)
	add $t0, $t0, 1
	sw $t0, -192($fp)
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -168($fp)
	lw $8, _static_19
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -192($fp)
	lw $t1, -172($fp)
	sw $t0, 0($t1)
	b _continue_loop45
_end_loop_45:
	nop
	lw $8, 0($fp)
	mul $t0, $t0, 4
	sw $t0, -196($fp)
	lw $8, _static_19
	lw $t1, -196($fp)
	add $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t0, 0($t0)
	sw $t0, -204($fp)
	lw $8, -4($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -4($fp)
_continue_loop44:
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, 0($fp)
	b _begin_loop_44
_end_loop_44:
	nop
	lw $8, _static_16
	lw $t1, -4($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $8, _static_18
	sub $t0, $t0, 1
	sw $t0, -216($fp)
	lw $8, -216($fp)
	mul $t0, $t0, 4
	sw $t0, -220($fp)
	lw $8, _static_19
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -228($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
jal _func_show
jal _func_merge
_continue_loop46:
jal _func_win
	sw $v0, -232($fp)
	lw $8, -232($fp)
	xor $t0, $t0, 1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	beqz $t0, _end_loop_46
	la $t0, _static_29
	sw $t0, -244($fp)
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -240($fp)
	lw $t0, -244($fp)
	sw $t0, -4($sp)
	lw $t0, -240($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -248($fp)
	la $t0, _static_30
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	sw $t0, -4($sp)
	lw $t0, -252($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -256($fp)
	li $v0, 4
	lw $a0, -256($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
jal _func_move
jal _func_merge
jal _func_show
	b _continue_loop46
_end_loop_46:
	nop
	la $t0, _static_31
	sw $t0, -264($fp)
	lw $t0, -8($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -260($fp)
	lw $t0, -264($fp)
	sw $t0, -4($sp)
	lw $t0, -260($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -268($fp)
	la $t0, _static_32
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	sw $t0, -4($sp)
	lw $t0, -272($fp)
	sw $t0, -8($sp)
jal _func_____built_in_string_concatenate
	sw $v0, -276($fp)
	li $v0, 4
	lw $a0, -276($fp)
	syscall
	li $v0, 4
	la $a0, _static_15
	syscall
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -400($fp)
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
