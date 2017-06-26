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
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -12($fp)
	li $8, 1001
	lw $9, -12($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_144
	li $8, 170
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -32($fp)
	li $8, 170
	lw $9, -32($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_145
	li $8, 1001
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -52($fp)
	li $8, 1001
	lw $9, -52($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_146
	li $8, 1
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -72($fp)
	li $8, 1
	lw $9, -72($fp)
	sw $8, 0($9)
	add $10, $9, 4
	sw $10, _static_147
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
	ble $10, $13, _end_if_229
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_229:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_169:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_169
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_230
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_230:
_continue_loop169:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_169
_end_loop_169:
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
	beq $10, $13, _end_if_231
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_231:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_170:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_170
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_232
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_232:
_continue_loop170:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_170
_end_loop_170:
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
	beq $10, $13, _end_if_233
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_233:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_171:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_171
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_234
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_234:
_continue_loop171:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_171
_end_loop_171:
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
	ble $10, $13, _end_if_235
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_235:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_172:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_172
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_236
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_236:
_continue_loop172:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_172
_end_loop_172:
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
	la $8, _static_137
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
	sw $10, _static_148
	sw $11, _static_140
_begin_loop_173:
	lw $8, _static_140
	lw $9, 0($fp)
	bge $8, $9, _end_loop_173
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
	lw $11, _static_140
	mul $12, $11, 4
	lw $13, _static_148
	add $14, $13, $12
	sw $10, 0($14)
	li $15, 0
	sw $15, _static_141
_begin_loop_174:
	lw $8, _static_141
	lw $9, 0($fp)
	bge $8, $9, _end_loop_174
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_141
	mul $14, $13, 4
	add $15, $12, $14
	sw $zero, 0($15)
_continue_loop174:
	lw $8, _static_141
	add $8, $8, 1
	move $8, $8
	sw $8, _static_141
	b _begin_loop_174
_end_loop_174:
_continue_loop173:
	lw $8, _static_140
	add $8, $8, 1
	move $8, $8
	sw $8, _static_140
	b _begin_loop_173
_end_loop_173:
_end_func_origin:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -196($fp)
	jr $ra

_func_getPrime:
	sw $fp, -272($sp)
	add $fp, $sp, -4
	add $sp, $fp, -276
	sw $ra, 0($sp)
	li $8, 2
	li $9, 2
	sw $8, -4($fp)
	sw $9, -8($fp)
_begin_loop_175:
	lw $8, -8($fp)
	lw $9, 0($fp)
	bgt $8, $9, _end_loop_175
	lw $8, -8($fp)
	mul $9, $8, 4
	lw $10, _static_144
	add $11, $10, $9
	lw $12, 0($11)
	bne $12, 1, _end_if_237
	mul $8, $zero, 4
	lw $9, _static_147
	add $10, $9, $8
	lw $11, 0($10)
	add $12, $11, 1
	mul $13, $zero, 4
	add $14, $9, $13
	sw $12, 0($14)
	mul $15, $zero, 4
	add $16, $9, $15
	lw $17, 0($16)
	mul $18, $17, 4
	lw $19, _static_145
	add $20, $19, $18
	lw $21, -8($fp)
	sw $21, 0($20)
	mul $22, $zero, 4
	add $23, $9, $22
	lw $24, 0($23)
	mul $25, $21, 4
	lw $8, _static_146
	add $10, $8, $25
	sw $24, 0($10)
_end_if_237:
_continue_loop176:
	lw $8, -8($fp)
	lw $9, -4($fp)
	mul $10, $8, $9
	lw $11, 0($fp)
	bgt $10, $11, _end_loop_176
	lw $8, -8($fp)
	lw $9, -4($fp)
	mul $10, $8, $9
	mul $11, $10, 4
	lw $12, _static_144
	add $13, $12, $11
	sw $zero, 0($13)
	add $14, $9, 1
	sw $14, -4($fp)
	b _continue_loop176
_end_loop_176:
	li $8, 2
	sw $8, -4($fp)
_continue_loop175:
	lw $8, -8($fp)
	add $9, $8, 1
	sw $9, -8($fp)
	b _begin_loop_175
_end_loop_175:
_end_func_getPrime:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -268($fp)
	jr $ra

_func_getResult:
	sw $fp, -416($sp)
	add $fp, $sp, -4
	add $sp, $fp, -420
	sw $ra, 0($sp)
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -8($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	bne $16, -1, _end_if_238
	lw $8, -8($fp)
	mul $9, $8, 4
	lw $10, _static_145
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $12, 2
	lw $14, -4($fp)
	mul $15, $14, 4
	add $16, $10, $15
	lw $17, 0($16)
	sub $18, $13, $17
	lw $19, 0($fp)
	bgt $18, $19, _end_if_239
	lw $8, -8($fp)
	mul $9, $8, 4
	lw $10, _static_145
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $12, 2
	lw $14, -4($fp)
	mul $15, $14, 4
	add $16, $10, $15
	lw $17, 0($16)
	sub $18, $13, $17
	mul $19, $18, 4
	lw $20, _static_144
	add $21, $20, $19
	lw $22, 0($21)
	beq $22, 0, _end_if_240
	lw $8, -8($fp)
	mul $9, $8, 4
	lw $10, _static_145
	add $11, $10, $9
	lw $12, 0($11)
	mul $13, $12, 2
	lw $14, -4($fp)
	mul $15, $14, 4
	add $16, $10, $15
	lw $17, 0($16)
	sub $18, $13, $17
	mul $19, $18, 4
	lw $20, _static_146
	add $21, $20, $19
	lw $22, 0($21)

	lw $23, 0($fp)
	sw $23, -4($sp)
	sw $8, -8($sp)
	sw $22, -12($sp)

jal _func_getResult
	sw $v0, -156($fp)
	lw $8, -156($fp)
	add $9, $8, 1
	lw $10, -4($fp)
	mul $11, $10, 4
	lw $12, _static_148
	add $13, $12, $11
	lw $14, 0($13)
	lw $15, -8($fp)
	mul $16, $15, 4
	add $17, $14, $16
	sw $9, 0($17)
_end_if_240:
_end_if_239:
_end_if_238:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -8($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	bne $16, -1, _end_if_241
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -8($fp)
	mul $14, $13, 4
	add $15, $12, $14
	li $16, 1
	sw $16, 0($15)
_end_if_241:
	lw $8, -4($fp)
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, -8($fp)
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	move $v0, $16
	sw $16, -292($fp)
	b _end_func_getResult
_end_func_getResult:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -412($fp)
	jr $ra

_func_printF:
	sw $fp, -184($sp)
	add $fp, $sp, -4
	add $sp, $fp, -188
	sw $ra, 0($sp)

	lw $8, 0($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -12($fp)

	lw $8, -12($fp)
	li $v0, 4
	move $a0, $8

	syscall
_continue_loop177:
	lw $8, -8($fp)
	ble $8, 0, _end_loop_177
	la $8, _static_149
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -4($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -24($fp)

	lw $8, -24($fp)
	li $v0, 4
	move $a0, $8

	syscall
	lw $8, -4($fp)
	mul $9, $8, 2
	lw $10, 0($fp)
	sub $11, $9, $10
	add $8, $10, $11
	div $12, $8, 2
	lw $10, -8($fp)
	sub $13, $10, 1
	sw $11, -4($fp)
	sw $12, 0($fp)
	sw $13, -8($fp)
	b _continue_loop177
_end_loop_177:
	la $8, _static_137
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_printF:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -180($fp)
	jr $ra

_func_main:
	sw $fp, -464($sp)
	add $fp, $sp, -4
	add $sp, $fp, -468
	sw $ra, 0($sp)

	li $8, 170
	sw $8, -4($sp)

jal _func_origin
	li $8, 1000
	sw $8, _static_138
	li $v0, 5
	syscall
	sw $v0, -8($fp)
	lw $8, -8($fp)
	li $9, 0
	li $10, 0
	mul $11, $zero, 4
	lw $12, _static_147
	add $13, $12, $11
	sw $zero, 0($13)
	li $14, 0
	sw $8, _static_139
	sw $9, _static_142
	sw $10, _static_143
	sw $14, _static_140
_begin_loop_178:
	lw $8, _static_138
	add $9, $8, 1
	lw $10, _static_140
	bge $10, $9, _end_loop_178
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_144
	add $11, $10, $9
	li $12, 1
	sw $12, 0($11)
	mul $13, $8, 4
	lw $14, _static_146
	add $15, $14, $13
	sw $zero, 0($15)
_continue_loop178:
	lw $8, _static_140
	add $9, $8, 1
	sw $9, _static_140
	b _begin_loop_178
_end_loop_178:
	li $8, 0
	sw $8, _static_140
_begin_loop_179:
	lw $8, _static_139
	add $9, $8, 1
	lw $10, _static_140
	bge $10, $9, _end_loop_179
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_145
	add $11, $10, $9
	sw $zero, 0($11)
_continue_loop179:
	lw $8, _static_140
	add $9, $8, 1
	sw $9, _static_140
	b _begin_loop_179
_end_loop_179:
	li $8, 0
	sw $8, _static_140
_begin_loop_180:
	lw $8, _static_140
	lw $9, _static_139
	bgt $8, $9, _end_loop_180
	li $8, 0
	sw $8, _static_141
_begin_loop_181:
	lw $8, _static_141
	lw $9, _static_139
	bgt $8, $9, _end_loop_181
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_141
	mul $14, $13, 4
	add $15, $12, $14
	li $16, -1
	sw $16, 0($15)
_continue_loop181:
	lw $8, _static_141
	add $9, $8, 1
	sw $9, _static_141
	b _begin_loop_181
_end_loop_181:
_continue_loop180:
	lw $8, _static_140
	add $9, $8, 1
	sw $9, _static_140
	b _begin_loop_180
_end_loop_180:

	lw $8, _static_138
	sw $8, -4($sp)

jal _func_getPrime
	sw $v0, -136($fp)
	mul $8, $zero, 4
	lw $9, _static_147
	add $10, $9, $8
	lw $11, 0($10)
	li $12, 1
	sw $11, _static_142
	sw $12, _static_140
_begin_loop_182:
	lw $8, _static_140
	lw $9, _static_142
	bge $8, $9, _end_loop_182
	lw $8, _static_140
	add $9, $8, 1
	sw $9, _static_141
_begin_loop_183:
	lw $8, _static_141
	lw $9, _static_142
	bgt $8, $9, _end_loop_183
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_141
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, 0($15)
	bne $16, -1, _end_if_242

	lw $8, _static_138
	sw $8, -4($sp)

	lw $9, _static_140
	sw $9, -8($sp)

	lw $10, _static_141
	sw $10, -12($sp)

jal _func_getResult
	sw $v0, -224($fp)
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_148
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_141
	mul $14, $13, 4
	add $15, $12, $14
	lw $16, -224($fp)
	sw $16, 0($15)
	mul $17, $8, 4
	add $18, $10, $17
	lw $19, 0($18)
	mul $20, $13, 4
	add $21, $19, $20
	lw $22, 0($21)
	ble $22, 1, _end_if_243
	lw $8, _static_140
	mul $9, $8, 4
	lw $10, _static_145
	add $11, $10, $9
	lw $12, 0($11)
	lw $13, _static_141
	mul $14, $13, 4
	add $15, $10, $14
	lw $16, 0($15)
	mul $17, $8, 4
	lw $18, _static_148
	add $19, $18, $17
	lw $20, 0($19)
	mul $21, $13, 4
	add $22, $20, $21
	lw $23, 0($22)
	sw $12, -4($sp)
	sw $16, -8($sp)
	sw $23, -12($sp)

jal _func_printF
	sw $v0, -260($fp)
	lw $8, _static_143
	add $9, $8, 1
	sw $9, _static_143
_end_if_243:
_end_if_242:
_continue_loop183:
	lw $8, _static_141
	add $9, $8, 1
	sw $9, _static_141
	b _begin_loop_183
_end_loop_183:
_continue_loop182:
	lw $8, _static_140
	add $9, $8, 1
	sw $9, _static_140
	b _begin_loop_182
_end_loop_182:
	la $8, _static_150
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, _static_143
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -340($fp)

	lw $8, -340($fp)
	li $v0, 4
	move $a0, $8

	syscall

	la $8, _static_137
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -460($fp)
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
