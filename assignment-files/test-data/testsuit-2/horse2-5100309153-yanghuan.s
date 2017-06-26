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
	beqz $t0, _end_if_131
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_131:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_99:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_99
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
	beqz $t0, _end_if_132
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less
_end_if_132:
	nop
_continue_loop99:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_99
_end_loop_99:
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
	beqz $t0, _end_if_133
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_133:
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
_begin_loop_100:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_100
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
	beqz $t0, _end_if_134
	li $v0, 0
	b _end_func_____built_in_string_equal
_end_if_134:
	nop
_continue_loop100:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_100
_end_loop_100:
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
	beqz $t0, _end_if_135
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_135:
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
_begin_loop_101:
	lw $8, -8($fp)
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	beqz $t0, _end_loop_101
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
	beqz $t0, _end_if_136
	li $v0, 1
	b _end_func_____built_in_string_inequal
_end_if_136:
	nop
_continue_loop101:
	lw $8, -8($fp)
	add $t0, $t0, 1
	sw $t0, -8($fp)
	b _begin_loop_101
_end_loop_101:
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
	beqz $t0, _end_if_137
	lw $8, -4($fp)
	sub $t0, $t0, 4
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t0, 0($t0)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -8($fp)
_end_if_137:
	nop
	li $t0, 0
	sw $t0, -12($fp)
_begin_loop_102:
	lw $8, -12($fp)
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	beqz $t0, _end_loop_102
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
	beqz $t0, _end_if_138
	lw $8, -16($fp)
	lw $t1, -20($fp)
	slt $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $v0, -80($fp)
	b _end_func_____built_in_string_less_equal
_end_if_138:
	nop
_continue_loop102:
	lw $8, -12($fp)
	add $t0, $t0, 1
	sw $t0, -12($fp)
	b _begin_loop_102
_end_loop_102:
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

_func_check:
	sw $fp, -144($sp)
	add $fp, $sp, -4
	add $sp, $fp, -148
	sw $ra, 0($sp)
	lw $8, 0($fp)
	lw $t1, -4($fp)
	slt $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _short_evaluate_8
	lw $8, 0($fp)
	sge $t0, $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	beqz $t0, _short_evaluate_8
_short_evaluate_8:
	nop
	lw $v0, -8($fp)
	b _end_func_check
_end_func_check:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -140($fp)
	jr $ra

_func_main:
	sw $fp, -1776($sp)
	add $fp, $sp, -4
	add $sp, $fp, -1780
	sw $ra, 0($sp)
	li $v0, 5
	syscall
	sw $v0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, 0($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -4($fp)
	lw $8, 0($fp)
	sub $t0, $t0, 1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $8, 0($fp)
	lw $t1, 0($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $8, -88($fp)
	add $t0, $t0, 1
	sw $t0, -92($fp)
	lw $8, -92($fp)
	mul $t0, $t0, 4
	sw $t0, -96($fp)
	li $v0, 9
	lw $a0, -96($fp)
	syscall
	sw $v0, -100($fp)
	lw $t0, -88($fp)
	lw $t1, -100($fp)
	sw $t0, 0($t1)
	lw $8, -100($fp)
	add $t0, $t0, 4
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -56($fp)
_begin_loop_103:
	lw $8, 0($fp)
	lw $t1, 0($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $8, -56($fp)
	lw $t1, -112($fp)
	slt $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	beqz $t0, _end_loop_103
	lw $8, -56($fp)
	mul $t0, $t0, 4
	sw $t0, -120($fp)
	lw $8, -44($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	li $t0, 0
	lw $t1, -124($fp)
	sw $t0, 0($t1)
_continue_loop103:
	lw $t0, -56($fp)
	sw $t0, -132($fp)
	lw $8, -56($fp)
	add $t0, $t0, 1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -56($fp)
	b _begin_loop_103
_end_loop_103:
	nop
	lw $8, 0($fp)
	lw $t1, 0($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $8, -136($fp)
	add $t0, $t0, 1
	sw $t0, -140($fp)
	lw $8, -140($fp)
	mul $t0, $t0, 4
	sw $t0, -144($fp)
	li $v0, 9
	lw $a0, -144($fp)
	syscall
	sw $v0, -148($fp)
	lw $t0, -136($fp)
	lw $t1, -148($fp)
	sw $t0, 0($t1)
	lw $8, -148($fp)
	add $t0, $t0, 4
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -56($fp)
_begin_loop_104:
	lw $8, 0($fp)
	lw $t1, 0($fp)
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $8, -56($fp)
	lw $t1, -160($fp)
	slt $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	beqz $t0, _end_loop_104
	lw $8, -56($fp)
	mul $t0, $t0, 4
	sw $t0, -168($fp)
	lw $8, -48($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 0
	lw $t1, -172($fp)
	sw $t0, 0($t1)
_continue_loop104:
	lw $t0, -56($fp)
	sw $t0, -180($fp)
	lw $8, -56($fp)
	add $t0, $t0, 1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -56($fp)
	b _begin_loop_104
_end_loop_104:
	nop
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -184($fp)
	lw $8, -184($fp)
	mul $t0, $t0, 4
	sw $t0, -188($fp)
	li $v0, 9
	lw $a0, -188($fp)
	syscall
	sw $v0, -192($fp)
	lw $t0, 0($fp)
	lw $t1, -192($fp)
	sw $t0, 0($t1)
	lw $8, -192($fp)
	add $t0, $t0, 4
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
_begin_loop_105:
	lw $8, -56($fp)
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	beqz $t0, _end_loop_105
	lw $8, 0($fp)
	add $t0, $t0, 1
	sw $t0, -216($fp)
	lw $8, -216($fp)
	mul $t0, $t0, 4
	sw $t0, -220($fp)
	li $v0, 9
	lw $a0, -220($fp)
	syscall
	sw $v0, -224($fp)
	lw $t0, 0($fp)
	lw $t1, -224($fp)
	sw $t0, 0($t1)
	lw $8, -224($fp)
	add $t0, $t0, 4
	sw $t0, -228($fp)
	lw $8, -56($fp)
	mul $t0, $t0, 4
	sw $t0, -208($fp)
	lw $8, -52($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -228($fp)
	lw $t1, -212($fp)
	sw $t0, 0($t1)
	li $t0, 0
	sw $t0, -60($fp)
_begin_loop_106:
	lw $8, -60($fp)
	lw $t1, 0($fp)
	slt $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	beqz $t0, _end_loop_106
	lw $8, -56($fp)
	mul $t0, $t0, 4
	sw $t0, -240($fp)
	lw $8, -52($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t0, 0($t0)
	sw $t0, -248($fp)
	lw $8, -60($fp)
	mul $t0, $t0, 4
	sw $t0, -252($fp)
	lw $8, -248($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, -1
	lw $t1, -256($fp)
	sw $t0, 0($t1)
_continue_loop106:
	lw $t0, -60($fp)
	sw $t0, -264($fp)
	lw $8, -60($fp)
	add $t0, $t0, 1
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -60($fp)
	b _begin_loop_106
_end_loop_106:
	nop
_continue_loop105:
	lw $t0, -56($fp)
	sw $t0, -268($fp)
	lw $8, -56($fp)
	add $t0, $t0, 1
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -56($fp)
	b _begin_loop_105
_end_loop_105:
	nop
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -276($fp)
	lw $8, -44($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -8($fp)
	lw $t1, -280($fp)
	sw $t0, 0($t1)
	li $8, 0
	mul $t0, $t0, 4
	sw $t0, -288($fp)
	lw $8, -48($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -12($fp)
	lw $t1, -292($fp)
	sw $t0, 0($t1)
	lw $8, -8($fp)
	mul $t0, $t0, 4
	sw $t0, -296($fp)
	lw $8, -52($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t0, 0($t0)
	sw $t0, -304($fp)
	lw $8, -12($fp)
	mul $t0, $t0, 4
	sw $t0, -308($fp)
	lw $8, -304($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t0, 0($t0)
	sw $t0, -320($fp)
	lw $8, -320($fp)
	seq $t0, $t0, 0
	sw $t0, -324($fp)
_continue_loop107:
	lw $8, -4($fp)
	lw $t1, -24($fp)
	sle $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	beqz $t0, _end_loop_107
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -332($fp)
	lw $8, -44($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t0, 0($t0)
	sw $t0, -340($fp)
	lw $8, -340($fp)
	mul $t0, $t0, 4
	sw $t0, -344($fp)
	lw $8, -52($fp)
	lw $t1, -344($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t0, 0($t0)
	sw $t0, -360($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -352($fp)
	lw $8, -48($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t0, 0($t0)
	sw $t0, -364($fp)
	lw $8, -364($fp)
	mul $t0, $t0, 4
	sw $t0, -368($fp)
	lw $8, -360($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t0, 0($t0)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -32($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -380($fp)
	lw $8, -44($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t0, 0($t0)
	sw $t0, -392($fp)
	lw $8, -392($fp)
	sub $t0, $t0, 1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -400($fp)
	lw $8, -48($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	lw $t0, 0($t0)
	sw $t0, -412($fp)
	lw $8, -412($fp)
	sub $t0, $t0, 2
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	beqz $t0, _short_evaluate_9
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	beqz $t0, _short_evaluate_9
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -432($fp)
	lw $8, -52($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t0, 0($t0)
	sw $t0, -440($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -444($fp)
	lw $8, -440($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t0, 0($t0)
	sw $t0, -456($fp)
	lw $8, -456($fp)
	seq $t0, $t0, -1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	beqz $t0, _short_evaluate_9
_short_evaluate_9:
	nop
	lw $t0, -420($fp)
	beqz $t0, _end_if_139
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -472($fp)
	lw $8, -44($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -36($fp)
	lw $t1, -476($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -480($fp)
	lw $8, -48($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -40($fp)
	lw $t1, -484($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -512($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -488($fp)
	lw $8, -52($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t0, 0($t0)
	sw $t0, -496($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -500($fp)
	lw $8, -496($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -512($fp)
	lw $t1, -504($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	beqz $t0, _short_evaluate_10
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	beqz $t0, _short_evaluate_10
_short_evaluate_10:
	nop
	lw $t0, -516($fp)
	beqz $t0, _end_if_140
	li $t0, 1
	sw $t0, -28($fp)
_end_if_140:
	nop
_end_if_139:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -532($fp)
	lw $8, -44($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t0, 0($t0)
	sw $t0, -544($fp)
	lw $8, -544($fp)
	sub $t0, $t0, 1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -552($fp)
	lw $8, -48($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t0, 0($t0)
	sw $t0, -564($fp)
	lw $8, -564($fp)
	add $t0, $t0, 2
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	beqz $t0, _short_evaluate_11
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	beqz $t0, _short_evaluate_11
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -584($fp)
	lw $8, -52($fp)
	lw $t1, -584($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t0, 0($t0)
	sw $t0, -592($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -596($fp)
	lw $8, -592($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t0, 0($t0)
	sw $t0, -608($fp)
	lw $8, -608($fp)
	seq $t0, $t0, -1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	beqz $t0, _short_evaluate_11
_short_evaluate_11:
	nop
	lw $t0, -572($fp)
	beqz $t0, _end_if_141
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -624($fp)
	lw $8, -44($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -36($fp)
	lw $t1, -628($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -632($fp)
	lw $8, -48($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -40($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -664($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -640($fp)
	lw $8, -52($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t0, 0($t0)
	sw $t0, -648($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -652($fp)
	lw $8, -648($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -664($fp)
	lw $t1, -656($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	beqz $t0, _short_evaluate_12
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	beqz $t0, _short_evaluate_12
_short_evaluate_12:
	nop
	lw $t0, -668($fp)
	beqz $t0, _end_if_142
	li $t0, 1
	sw $t0, -28($fp)
_end_if_142:
	nop
_end_if_141:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -684($fp)
	lw $8, -44($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t0, 0($t0)
	sw $t0, -696($fp)
	lw $8, -696($fp)
	add $t0, $t0, 1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -704($fp)
	lw $8, -48($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	lw $t0, 0($t0)
	sw $t0, -716($fp)
	lw $8, -716($fp)
	sub $t0, $t0, 2
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	beqz $t0, _short_evaluate_13
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	beqz $t0, _short_evaluate_13
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -736($fp)
	lw $8, -52($fp)
	lw $t1, -736($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t0, 0($t0)
	sw $t0, -744($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -748($fp)
	lw $8, -744($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t0, 0($t0)
	sw $t0, -760($fp)
	lw $8, -760($fp)
	seq $t0, $t0, -1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	beqz $t0, _short_evaluate_13
_short_evaluate_13:
	nop
	lw $t0, -724($fp)
	beqz $t0, _end_if_143
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -776($fp)
	lw $8, -44($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -36($fp)
	lw $t1, -780($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -784($fp)
	lw $8, -48($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -40($fp)
	lw $t1, -788($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -816($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -792($fp)
	lw $8, -52($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t0, 0($t0)
	sw $t0, -800($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -804($fp)
	lw $8, -800($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -816($fp)
	lw $t1, -808($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	beqz $t0, _short_evaluate_14
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	beqz $t0, _short_evaluate_14
_short_evaluate_14:
	nop
	lw $t0, -820($fp)
	beqz $t0, _end_if_144
	li $t0, 1
	sw $t0, -28($fp)
_end_if_144:
	nop
_end_if_143:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -836($fp)
	lw $8, -44($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t0, 0($t0)
	sw $t0, -848($fp)
	lw $8, -848($fp)
	add $t0, $t0, 1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -856($fp)
	lw $8, -48($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t0, 0($t0)
	sw $t0, -868($fp)
	lw $8, -868($fp)
	add $t0, $t0, 2
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	beqz $t0, _short_evaluate_15
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	beqz $t0, _short_evaluate_15
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -888($fp)
	lw $8, -52($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t0, 0($t0)
	sw $t0, -896($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -900($fp)
	lw $8, -896($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t0, 0($t0)
	sw $t0, -912($fp)
	lw $8, -912($fp)
	seq $t0, $t0, -1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	beqz $t0, _short_evaluate_15
_short_evaluate_15:
	nop
	lw $t0, -876($fp)
	beqz $t0, _end_if_145
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -928($fp)
	lw $8, -44($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -36($fp)
	lw $t1, -932($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -936($fp)
	lw $8, -48($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -40($fp)
	lw $t1, -940($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -968($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -944($fp)
	lw $8, -52($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t0, 0($t0)
	sw $t0, -952($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -956($fp)
	lw $8, -952($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -968($fp)
	lw $t1, -960($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	beqz $t0, _short_evaluate_16
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	beqz $t0, _short_evaluate_16
_short_evaluate_16:
	nop
	lw $t0, -972($fp)
	beqz $t0, _end_if_146
	li $t0, 1
	sw $t0, -28($fp)
_end_if_146:
	nop
_end_if_145:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -988($fp)
	lw $8, -44($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t0, 0($t0)
	sw $t0, -1000($fp)
	lw $8, -1000($fp)
	sub $t0, $t0, 2
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1008($fp)
	lw $8, -48($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t0, 0($t0)
	sw $t0, -1020($fp)
	lw $8, -1020($fp)
	sub $t0, $t0, 1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	beqz $t0, _short_evaluate_17
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	beqz $t0, _short_evaluate_17
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1040($fp)
	lw $8, -52($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t0, 0($t0)
	sw $t0, -1048($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1052($fp)
	lw $8, -1048($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t0, 0($t0)
	sw $t0, -1064($fp)
	lw $8, -1064($fp)
	seq $t0, $t0, -1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	beqz $t0, _short_evaluate_17
_short_evaluate_17:
	nop
	lw $t0, -1028($fp)
	beqz $t0, _end_if_147
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1080($fp)
	lw $8, -44($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -36($fp)
	lw $t1, -1084($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1088($fp)
	lw $8, -48($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -40($fp)
	lw $t1, -1092($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -1120($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1096($fp)
	lw $8, -52($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t0, 0($t0)
	sw $t0, -1104($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1108($fp)
	lw $8, -1104($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1120($fp)
	lw $t1, -1112($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	beqz $t0, _short_evaluate_18
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	beqz $t0, _short_evaluate_18
_short_evaluate_18:
	nop
	lw $t0, -1124($fp)
	beqz $t0, _end_if_148
	li $t0, 1
	sw $t0, -28($fp)
_end_if_148:
	nop
_end_if_147:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1140($fp)
	lw $8, -44($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	lw $t0, 0($t0)
	sw $t0, -1152($fp)
	lw $8, -1152($fp)
	sub $t0, $t0, 2
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1160($fp)
	lw $8, -48($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t0, 0($t0)
	sw $t0, -1172($fp)
	lw $8, -1172($fp)
	add $t0, $t0, 1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	beqz $t0, _short_evaluate_19
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	beqz $t0, _short_evaluate_19
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1192($fp)
	lw $8, -52($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t0, 0($t0)
	sw $t0, -1200($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1204($fp)
	lw $8, -1200($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t0, 0($t0)
	sw $t0, -1216($fp)
	lw $8, -1216($fp)
	seq $t0, $t0, -1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	beqz $t0, _short_evaluate_19
_short_evaluate_19:
	nop
	lw $t0, -1180($fp)
	beqz $t0, _end_if_149
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1232($fp)
	lw $8, -44($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -36($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1240($fp)
	lw $8, -48($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -40($fp)
	lw $t1, -1244($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -1272($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1248($fp)
	lw $8, -52($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t0, 0($t0)
	sw $t0, -1256($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1260($fp)
	lw $8, -1256($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1272($fp)
	lw $t1, -1264($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	beqz $t0, _short_evaluate_20
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	beqz $t0, _short_evaluate_20
_short_evaluate_20:
	nop
	lw $t0, -1276($fp)
	beqz $t0, _end_if_150
	li $t0, 1
	sw $t0, -28($fp)
_end_if_150:
	nop
_end_if_149:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1292($fp)
	lw $8, -44($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t0, 0($t0)
	sw $t0, -1304($fp)
	lw $8, -1304($fp)
	add $t0, $t0, 2
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1312($fp)
	lw $8, -48($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t0, 0($t0)
	sw $t0, -1324($fp)
	lw $8, -1324($fp)
	sub $t0, $t0, 1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	beqz $t0, _short_evaluate_21
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	beqz $t0, _short_evaluate_21
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1344($fp)
	lw $8, -52($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t0, 0($t0)
	sw $t0, -1352($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1356($fp)
	lw $8, -1352($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t0, 0($t0)
	sw $t0, -1368($fp)
	lw $8, -1368($fp)
	seq $t0, $t0, -1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	beqz $t0, _short_evaluate_21
_short_evaluate_21:
	nop
	lw $t0, -1332($fp)
	beqz $t0, _end_if_151
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1384($fp)
	lw $8, -44($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -36($fp)
	lw $t1, -1388($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1392($fp)
	lw $8, -48($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -40($fp)
	lw $t1, -1396($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -1424($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1400($fp)
	lw $8, -52($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t0, 0($t0)
	sw $t0, -1408($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1412($fp)
	lw $8, -1408($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1424($fp)
	lw $t1, -1416($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	beqz $t0, _short_evaluate_22
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	beqz $t0, _short_evaluate_22
_short_evaluate_22:
	nop
	lw $t0, -1428($fp)
	beqz $t0, _end_if_152
	li $t0, 1
	sw $t0, -28($fp)
_end_if_152:
	nop
_end_if_151:
	nop
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1444($fp)
	lw $8, -44($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t0, 0($t0)
	sw $t0, -1456($fp)
	lw $8, -1456($fp)
	add $t0, $t0, 2
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -36($fp)
	lw $8, -4($fp)
	mul $t0, $t0, 4
	sw $t0, -1464($fp)
	lw $8, -48($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t0, 0($t0)
	sw $t0, -1476($fp)
	lw $8, -1476($fp)
	add $t0, $t0, 1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	beqz $t0, _short_evaluate_23
	lw $t0, -40($fp)
	sw $t0, -4($sp)
	lw $t0, 0($fp)
	sw $t0, -8($sp)
jal _func_check
	sw $v0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	beqz $t0, _short_evaluate_23
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1496($fp)
	lw $8, -52($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t0, 0($t0)
	sw $t0, -1504($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1508($fp)
	lw $8, -1504($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t0, 0($t0)
	sw $t0, -1520($fp)
	lw $8, -1520($fp)
	seq $t0, $t0, -1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	beqz $t0, _short_evaluate_23
_short_evaluate_23:
	nop
	lw $t0, -1484($fp)
	beqz $t0, _end_if_153
	lw $8, -24($fp)
	add $t0, $t0, 1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -24($fp)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1536($fp)
	lw $8, -44($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -36($fp)
	lw $t1, -1540($fp)
	sw $t0, 0($t1)
	lw $8, -24($fp)
	mul $t0, $t0, 4
	sw $t0, -1544($fp)
	lw $8, -48($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -40($fp)
	lw $t1, -1548($fp)
	sw $t0, 0($t1)
	lw $8, -32($fp)
	add $t0, $t0, 1
	sw $t0, -1576($fp)
	lw $8, -36($fp)
	mul $t0, $t0, 4
	sw $t0, -1552($fp)
	lw $8, -52($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t0, 0($t0)
	sw $t0, -1560($fp)
	lw $8, -40($fp)
	mul $t0, $t0, 4
	sw $t0, -1564($fp)
	lw $8, -1560($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1576($fp)
	lw $t1, -1568($fp)
	sw $t0, 0($t1)
	lw $8, -36($fp)
	lw $t1, -16($fp)
	seq $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	beqz $t0, _short_evaluate_24
	lw $8, -40($fp)
	lw $t1, -20($fp)
	seq $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	beqz $t0, _short_evaluate_24
_short_evaluate_24:
	nop
	lw $t0, -1580($fp)
	beqz $t0, _end_if_154
	li $t0, 1
	sw $t0, -28($fp)
_end_if_154:
	nop
_end_if_153:
	nop
	lw $8, -28($fp)
	seq $t0, $t0, 1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	beqz $t0, _end_if_155
	b _end_loop_107
_end_if_155:
	nop
	lw $8, -4($fp)
	add $t0, $t0, 1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -4($fp)
	b _continue_loop107
_end_loop_107:
	nop
	lw $8, -28($fp)
	seq $t0, $t0, 1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	beqz $t0, _else_156
	lw $8, -16($fp)
	mul $t0, $t0, 4
	sw $t0, -1624($fp)
	lw $8, -52($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t0, 0($t0)
	sw $t0, -1632($fp)
	lw $8, -20($fp)
	mul $t0, $t0, 4
	sw $t0, -1636($fp)
	lw $8, -1632($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t0, 0($t0)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -4($sp)
jal _func_____built_in_toString
	sw $v0, -1648($fp)
	li $v0, 4
	lw $a0, -1648($fp)
	syscall
	li $v0, 4
	la $a0, _static_89
	syscall
	b _end_if_156
_else_156:
	la $t0, _static_90
	sw $t0, -1620($fp)
	li $v0, 4
	lw $a0, -1620($fp)
	syscall
_end_if_156:
	nop
	li $v0, 0
	b _end_func_main
_end_func_main:
	nop
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -1772($fp)
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
