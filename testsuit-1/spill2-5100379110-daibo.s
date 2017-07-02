	.data
	.word 1
_static_163:
	.asciiz "\n"
	.align 2
	.word 1
_static_165:
	.asciiz " "
	.align 2
	.word 0
_static_166:
	.asciiz ""
	.align 2
_static_164:
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
	ble $10, $13, _end_if_266
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_266:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_201:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_201
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_267
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less
_end_if_267:
_continue_loop201:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_201
_end_loop_201:
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
	beq $10, $13, _end_if_268
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_268:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_202:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_202
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_269
	move $v0, $zero
	b _end_func_____built_in_string_equal
_end_if_269:
_continue_loop202:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_202
_end_loop_202:
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
	beq $10, $13, _end_if_270
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_270:
	lw $8, 0($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	li $11, 0
	sw $10, -12($fp)
	sw $11, -8($fp)
_begin_loop_203:
	lw $8, -8($fp)
	lw $9, -12($fp)
	bge $8, $9, _end_loop_203
	lw $8, 0($fp)
	lw $9, -8($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	beq $11, $14, _end_if_271
	li $8, 1
	move $v0, $8
	b _end_func_____built_in_string_inequal
_end_if_271:
_continue_loop203:
	lw $8, -8($fp)
	add $8, $8, 1
	sw $8, -8($fp)
	b _begin_loop_203
_end_loop_203:
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
	ble $10, $13, _end_if_272
	lw $8, -4($fp)
	sub $9, $8, 4
	lw $10, 0($9)
	sw $10, -8($fp)
_end_if_272:
	li $8, 0
	sw $8, -12($fp)
_begin_loop_204:
	lw $8, -12($fp)
	lw $9, -8($fp)
	bge $8, $9, _end_loop_204
	lw $8, 0($fp)
	lw $9, -12($fp)
	add $10, $8, $9
	lb $11, 0($10)
	lw $12, -4($fp)
	add $13, $12, $9
	lb $14, 0($13)
	sw $11, -16($fp)
	sw $14, -20($fp)
	beq $11, $14, _end_if_273
	lw $8, -16($fp)
	lw $9, -20($fp)
	slt $10, $8, $9
	move $v0, $10
	sw $10, -76($fp)
	b _end_func_____built_in_string_less_equal
_end_if_273:
_continue_loop204:
	lw $8, -12($fp)
	add $8, $8, 1
	sw $8, -12($fp)
	b _begin_loop_204
_end_loop_204:
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
	la $8, _static_163
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
_end_func_____built_in_println:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -124($fp)
	jr $ra

_func_getcount:
	sw $fp, -136($sp)
	add $fp, $sp, -4
	add $sp, $fp, -140
	sw $ra, 0($sp)
	mul $8, $zero, 4
	lw $9, 0($fp)
	add $10, $9, $8
	lw $11, 0($10)
	add $11, $11, 1
	sw $11, 0($10)
	move $v0, $11
	sw $11, -12($fp)
	b _end_func_getcount
_end_func_getcount:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -132($fp)
	jr $ra

_func_main:
	sw $fp, -6300($sp)
	add $fp, $sp, -4
	add $sp, $fp, -6304
	sw $ra, 0($sp)
	li $8, 1
	add $9, $8, 1
	mul $10, $9, 4
	li $v0, 9
	move $a0, $10

	syscall
	sw $v0, -1036($fp)
	li $8, 1
	lw $9, -1036($fp)
	sw $8, 0($9)
	add $10, $9, 4
	mul $11, $zero, 4
	add $12, $10, $11
	sw $zero, 0($12)
	sw $10, -4($sp)
	sw $10, _static_164
jal _func_getcount
	sw $v0, -1052($fp)
	lw $8, -1052($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, 0($fp)
jal _func_getcount
	sw $v0, -1056($fp)
	lw $8, -1056($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -4($fp)
jal _func_getcount
	sw $v0, -1060($fp)
	lw $8, -1060($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -8($fp)
jal _func_getcount
	sw $v0, -1064($fp)
	lw $8, -1064($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -12($fp)
jal _func_getcount
	sw $v0, -1068($fp)
	lw $8, -1068($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -16($fp)
jal _func_getcount
	sw $v0, -1072($fp)
	lw $8, -1072($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -20($fp)
jal _func_getcount
	sw $v0, -1076($fp)
	lw $8, -1076($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -24($fp)
jal _func_getcount
	sw $v0, -1080($fp)
	lw $8, -1080($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -28($fp)
jal _func_getcount
	sw $v0, -1084($fp)
	lw $8, -1084($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -32($fp)
jal _func_getcount
	sw $v0, -1088($fp)
	lw $8, -1088($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -36($fp)
jal _func_getcount
	sw $v0, -1092($fp)
	lw $8, -1092($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -40($fp)
jal _func_getcount
	sw $v0, -1096($fp)
	lw $8, -1096($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -44($fp)
jal _func_getcount
	sw $v0, -1100($fp)
	lw $8, -1100($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -48($fp)
jal _func_getcount
	sw $v0, -1104($fp)
	lw $8, -1104($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -52($fp)
jal _func_getcount
	sw $v0, -1108($fp)
	lw $8, -1108($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -56($fp)
jal _func_getcount
	sw $v0, -1112($fp)
	lw $8, -1112($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -60($fp)
jal _func_getcount
	sw $v0, -1116($fp)
	lw $8, -1116($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -64($fp)
jal _func_getcount
	sw $v0, -1120($fp)
	lw $8, -1120($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -68($fp)
jal _func_getcount
	sw $v0, -1124($fp)
	lw $8, -1124($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -72($fp)
jal _func_getcount
	sw $v0, -1128($fp)
	lw $8, -1128($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -76($fp)
jal _func_getcount
	sw $v0, -1132($fp)
	lw $8, -1132($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -80($fp)
jal _func_getcount
	sw $v0, -1136($fp)
	lw $8, -1136($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -84($fp)
jal _func_getcount
	sw $v0, -1140($fp)
	lw $8, -1140($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -88($fp)
jal _func_getcount
	sw $v0, -1144($fp)
	lw $8, -1144($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -92($fp)
jal _func_getcount
	sw $v0, -1148($fp)
	lw $8, -1148($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -96($fp)
jal _func_getcount
	sw $v0, -1152($fp)
	lw $8, -1152($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -100($fp)
jal _func_getcount
	sw $v0, -1156($fp)
	lw $8, -1156($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -104($fp)
jal _func_getcount
	sw $v0, -1160($fp)
	lw $8, -1160($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -108($fp)
jal _func_getcount
	sw $v0, -1164($fp)
	lw $8, -1164($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -112($fp)
jal _func_getcount
	sw $v0, -1168($fp)
	lw $8, -1168($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -116($fp)
jal _func_getcount
	sw $v0, -1172($fp)
	lw $8, -1172($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -120($fp)
jal _func_getcount
	sw $v0, -1176($fp)
	lw $8, -1176($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -124($fp)
jal _func_getcount
	sw $v0, -1180($fp)
	lw $8, -1180($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -128($fp)
jal _func_getcount
	sw $v0, -1184($fp)
	lw $8, -1184($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -132($fp)
jal _func_getcount
	sw $v0, -1188($fp)
	lw $8, -1188($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -136($fp)
jal _func_getcount
	sw $v0, -1192($fp)
	lw $8, -1192($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -140($fp)
jal _func_getcount
	sw $v0, -1196($fp)
	lw $8, -1196($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -144($fp)
jal _func_getcount
	sw $v0, -1200($fp)
	lw $8, -1200($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -148($fp)
jal _func_getcount
	sw $v0, -1204($fp)
	lw $8, -1204($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -152($fp)
jal _func_getcount
	sw $v0, -1208($fp)
	lw $8, -1208($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -156($fp)
jal _func_getcount
	sw $v0, -1212($fp)
	lw $8, -1212($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -160($fp)
jal _func_getcount
	sw $v0, -1216($fp)
	lw $8, -1216($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -164($fp)
jal _func_getcount
	sw $v0, -1220($fp)
	lw $8, -1220($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -168($fp)
jal _func_getcount
	sw $v0, -1224($fp)
	lw $8, -1224($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -172($fp)
jal _func_getcount
	sw $v0, -1228($fp)
	lw $8, -1228($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -176($fp)
jal _func_getcount
	sw $v0, -1232($fp)
	lw $8, -1232($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -180($fp)
jal _func_getcount
	sw $v0, -1236($fp)
	lw $8, -1236($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -184($fp)
jal _func_getcount
	sw $v0, -1240($fp)
	lw $8, -1240($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -188($fp)
jal _func_getcount
	sw $v0, -1244($fp)
	lw $8, -1244($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -192($fp)
jal _func_getcount
	sw $v0, -1248($fp)
	lw $8, -1248($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -196($fp)
jal _func_getcount
	sw $v0, -1252($fp)
	lw $8, -1252($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -200($fp)
jal _func_getcount
	sw $v0, -1256($fp)
	lw $8, -1256($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -204($fp)
jal _func_getcount
	sw $v0, -1260($fp)
	lw $8, -1260($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -208($fp)
jal _func_getcount
	sw $v0, -1264($fp)
	lw $8, -1264($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -212($fp)
jal _func_getcount
	sw $v0, -1268($fp)
	lw $8, -1268($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -216($fp)
jal _func_getcount
	sw $v0, -1272($fp)
	lw $8, -1272($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -220($fp)
jal _func_getcount
	sw $v0, -1276($fp)
	lw $8, -1276($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -224($fp)
jal _func_getcount
	sw $v0, -1280($fp)
	lw $8, -1280($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -228($fp)
jal _func_getcount
	sw $v0, -1284($fp)
	lw $8, -1284($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -232($fp)
jal _func_getcount
	sw $v0, -1288($fp)
	lw $8, -1288($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -236($fp)
jal _func_getcount
	sw $v0, -1292($fp)
	lw $8, -1292($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -240($fp)
jal _func_getcount
	sw $v0, -1296($fp)
	lw $8, -1296($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -244($fp)
jal _func_getcount
	sw $v0, -1300($fp)
	lw $8, -1300($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -248($fp)
jal _func_getcount
	sw $v0, -1304($fp)
	lw $8, -1304($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -252($fp)
jal _func_getcount
	sw $v0, -1308($fp)
	lw $8, -1308($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -256($fp)
jal _func_getcount
	sw $v0, -1312($fp)
	lw $8, -1312($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -260($fp)
jal _func_getcount
	sw $v0, -1316($fp)
	lw $8, -1316($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -264($fp)
jal _func_getcount
	sw $v0, -1320($fp)
	lw $8, -1320($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -268($fp)
jal _func_getcount
	sw $v0, -1324($fp)
	lw $8, -1324($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -272($fp)
jal _func_getcount
	sw $v0, -1328($fp)
	lw $8, -1328($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -276($fp)
jal _func_getcount
	sw $v0, -1332($fp)
	lw $8, -1332($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -280($fp)
jal _func_getcount
	sw $v0, -1336($fp)
	lw $8, -1336($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -284($fp)
jal _func_getcount
	sw $v0, -1340($fp)
	lw $8, -1340($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -288($fp)
jal _func_getcount
	sw $v0, -1344($fp)
	lw $8, -1344($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -292($fp)
jal _func_getcount
	sw $v0, -1348($fp)
	lw $8, -1348($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -296($fp)
jal _func_getcount
	sw $v0, -1352($fp)
	lw $8, -1352($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -300($fp)
jal _func_getcount
	sw $v0, -1356($fp)
	lw $8, -1356($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -304($fp)
jal _func_getcount
	sw $v0, -1360($fp)
	lw $8, -1360($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -308($fp)
jal _func_getcount
	sw $v0, -1364($fp)
	lw $8, -1364($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -312($fp)
jal _func_getcount
	sw $v0, -1368($fp)
	lw $8, -1368($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -316($fp)
jal _func_getcount
	sw $v0, -1372($fp)
	lw $8, -1372($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -320($fp)
jal _func_getcount
	sw $v0, -1376($fp)
	lw $8, -1376($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -324($fp)
jal _func_getcount
	sw $v0, -1380($fp)
	lw $8, -1380($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -328($fp)
jal _func_getcount
	sw $v0, -1384($fp)
	lw $8, -1384($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -332($fp)
jal _func_getcount
	sw $v0, -1388($fp)
	lw $8, -1388($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -336($fp)
jal _func_getcount
	sw $v0, -1392($fp)
	lw $8, -1392($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -340($fp)
jal _func_getcount
	sw $v0, -1396($fp)
	lw $8, -1396($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -344($fp)
jal _func_getcount
	sw $v0, -1400($fp)
	lw $8, -1400($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -348($fp)
jal _func_getcount
	sw $v0, -1404($fp)
	lw $8, -1404($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -352($fp)
jal _func_getcount
	sw $v0, -1408($fp)
	lw $8, -1408($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -356($fp)
jal _func_getcount
	sw $v0, -1412($fp)
	lw $8, -1412($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -360($fp)
jal _func_getcount
	sw $v0, -1416($fp)
	lw $8, -1416($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -364($fp)
jal _func_getcount
	sw $v0, -1420($fp)
	lw $8, -1420($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -368($fp)
jal _func_getcount
	sw $v0, -1424($fp)
	lw $8, -1424($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -372($fp)
jal _func_getcount
	sw $v0, -1428($fp)
	lw $8, -1428($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -376($fp)
jal _func_getcount
	sw $v0, -1432($fp)
	lw $8, -1432($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -380($fp)
jal _func_getcount
	sw $v0, -1436($fp)
	lw $8, -1436($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -384($fp)
jal _func_getcount
	sw $v0, -1440($fp)
	lw $8, -1440($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -388($fp)
jal _func_getcount
	sw $v0, -1444($fp)
	lw $8, -1444($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -392($fp)
jal _func_getcount
	sw $v0, -1448($fp)
	lw $8, -1448($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -396($fp)
jal _func_getcount
	sw $v0, -1452($fp)
	lw $8, -1452($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -400($fp)
jal _func_getcount
	sw $v0, -1456($fp)
	lw $8, -1456($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -404($fp)
jal _func_getcount
	sw $v0, -1460($fp)
	lw $8, -1460($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -408($fp)
jal _func_getcount
	sw $v0, -1464($fp)
	lw $8, -1464($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -412($fp)
jal _func_getcount
	sw $v0, -1468($fp)
	lw $8, -1468($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -416($fp)
jal _func_getcount
	sw $v0, -1472($fp)
	lw $8, -1472($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -420($fp)
jal _func_getcount
	sw $v0, -1476($fp)
	lw $8, -1476($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -424($fp)
jal _func_getcount
	sw $v0, -1480($fp)
	lw $8, -1480($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -428($fp)
jal _func_getcount
	sw $v0, -1484($fp)
	lw $8, -1484($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -432($fp)
jal _func_getcount
	sw $v0, -1488($fp)
	lw $8, -1488($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -436($fp)
jal _func_getcount
	sw $v0, -1492($fp)
	lw $8, -1492($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -440($fp)
jal _func_getcount
	sw $v0, -1496($fp)
	lw $8, -1496($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -444($fp)
jal _func_getcount
	sw $v0, -1500($fp)
	lw $8, -1500($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -448($fp)
jal _func_getcount
	sw $v0, -1504($fp)
	lw $8, -1504($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -452($fp)
jal _func_getcount
	sw $v0, -1508($fp)
	lw $8, -1508($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -456($fp)
jal _func_getcount
	sw $v0, -1512($fp)
	lw $8, -1512($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -460($fp)
jal _func_getcount
	sw $v0, -1516($fp)
	lw $8, -1516($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -464($fp)
jal _func_getcount
	sw $v0, -1520($fp)
	lw $8, -1520($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -468($fp)
jal _func_getcount
	sw $v0, -1524($fp)
	lw $8, -1524($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -472($fp)
jal _func_getcount
	sw $v0, -1528($fp)
	lw $8, -1528($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -476($fp)
jal _func_getcount
	sw $v0, -1532($fp)
	lw $8, -1532($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -480($fp)
jal _func_getcount
	sw $v0, -1536($fp)
	lw $8, -1536($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -484($fp)
jal _func_getcount
	sw $v0, -1540($fp)
	lw $8, -1540($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -488($fp)
jal _func_getcount
	sw $v0, -1544($fp)
	lw $8, -1544($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -492($fp)
jal _func_getcount
	sw $v0, -1548($fp)
	lw $8, -1548($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -496($fp)
jal _func_getcount
	sw $v0, -1552($fp)
	lw $8, -1552($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -500($fp)
jal _func_getcount
	sw $v0, -1556($fp)
	lw $8, -1556($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -504($fp)
jal _func_getcount
	sw $v0, -1560($fp)
	lw $8, -1560($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -508($fp)
jal _func_getcount
	sw $v0, -1564($fp)
	lw $8, -1564($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -512($fp)
jal _func_getcount
	sw $v0, -1568($fp)
	lw $8, -1568($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -516($fp)
jal _func_getcount
	sw $v0, -1572($fp)
	lw $8, -1572($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -520($fp)
jal _func_getcount
	sw $v0, -1576($fp)
	lw $8, -1576($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -524($fp)
jal _func_getcount
	sw $v0, -1580($fp)
	lw $8, -1580($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -528($fp)
jal _func_getcount
	sw $v0, -1584($fp)
	lw $8, -1584($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -532($fp)
jal _func_getcount
	sw $v0, -1588($fp)
	lw $8, -1588($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -536($fp)
jal _func_getcount
	sw $v0, -1592($fp)
	lw $8, -1592($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -540($fp)
jal _func_getcount
	sw $v0, -1596($fp)
	lw $8, -1596($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -544($fp)
jal _func_getcount
	sw $v0, -1600($fp)
	lw $8, -1600($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -548($fp)
jal _func_getcount
	sw $v0, -1604($fp)
	lw $8, -1604($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -552($fp)
jal _func_getcount
	sw $v0, -1608($fp)
	lw $8, -1608($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -556($fp)
jal _func_getcount
	sw $v0, -1612($fp)
	lw $8, -1612($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -560($fp)
jal _func_getcount
	sw $v0, -1616($fp)
	lw $8, -1616($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -564($fp)
jal _func_getcount
	sw $v0, -1620($fp)
	lw $8, -1620($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -568($fp)
jal _func_getcount
	sw $v0, -1624($fp)
	lw $8, -1624($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -572($fp)
jal _func_getcount
	sw $v0, -1628($fp)
	lw $8, -1628($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -576($fp)
jal _func_getcount
	sw $v0, -1632($fp)
	lw $8, -1632($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -580($fp)
jal _func_getcount
	sw $v0, -1636($fp)
	lw $8, -1636($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -584($fp)
jal _func_getcount
	sw $v0, -1640($fp)
	lw $8, -1640($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -588($fp)
jal _func_getcount
	sw $v0, -1644($fp)
	lw $8, -1644($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -592($fp)
jal _func_getcount
	sw $v0, -1648($fp)
	lw $8, -1648($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -596($fp)
jal _func_getcount
	sw $v0, -1652($fp)
	lw $8, -1652($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -600($fp)
jal _func_getcount
	sw $v0, -1656($fp)
	lw $8, -1656($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -604($fp)
jal _func_getcount
	sw $v0, -1660($fp)
	lw $8, -1660($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -608($fp)
jal _func_getcount
	sw $v0, -1664($fp)
	lw $8, -1664($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -612($fp)
jal _func_getcount
	sw $v0, -1668($fp)
	lw $8, -1668($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -616($fp)
jal _func_getcount
	sw $v0, -1672($fp)
	lw $8, -1672($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -620($fp)
jal _func_getcount
	sw $v0, -1676($fp)
	lw $8, -1676($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -624($fp)
jal _func_getcount
	sw $v0, -1680($fp)
	lw $8, -1680($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -628($fp)
jal _func_getcount
	sw $v0, -1684($fp)
	lw $8, -1684($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -632($fp)
jal _func_getcount
	sw $v0, -1688($fp)
	lw $8, -1688($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -636($fp)
jal _func_getcount
	sw $v0, -1692($fp)
	lw $8, -1692($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -640($fp)
jal _func_getcount
	sw $v0, -1696($fp)
	lw $8, -1696($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -644($fp)
jal _func_getcount
	sw $v0, -1700($fp)
	lw $8, -1700($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -648($fp)
jal _func_getcount
	sw $v0, -1704($fp)
	lw $8, -1704($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -652($fp)
jal _func_getcount
	sw $v0, -1708($fp)
	lw $8, -1708($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -656($fp)
jal _func_getcount
	sw $v0, -1712($fp)
	lw $8, -1712($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -660($fp)
jal _func_getcount
	sw $v0, -1716($fp)
	lw $8, -1716($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -664($fp)
jal _func_getcount
	sw $v0, -1720($fp)
	lw $8, -1720($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -668($fp)
jal _func_getcount
	sw $v0, -1724($fp)
	lw $8, -1724($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -672($fp)
jal _func_getcount
	sw $v0, -1728($fp)
	lw $8, -1728($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -676($fp)
jal _func_getcount
	sw $v0, -1732($fp)
	lw $8, -1732($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -680($fp)
jal _func_getcount
	sw $v0, -1736($fp)
	lw $8, -1736($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -684($fp)
jal _func_getcount
	sw $v0, -1740($fp)
	lw $8, -1740($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -688($fp)
jal _func_getcount
	sw $v0, -1744($fp)
	lw $8, -1744($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -692($fp)
jal _func_getcount
	sw $v0, -1748($fp)
	lw $8, -1748($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -696($fp)
jal _func_getcount
	sw $v0, -1752($fp)
	lw $8, -1752($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -700($fp)
jal _func_getcount
	sw $v0, -1756($fp)
	lw $8, -1756($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -704($fp)
jal _func_getcount
	sw $v0, -1760($fp)
	lw $8, -1760($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -708($fp)
jal _func_getcount
	sw $v0, -1764($fp)
	lw $8, -1764($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -712($fp)
jal _func_getcount
	sw $v0, -1768($fp)
	lw $8, -1768($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -716($fp)
jal _func_getcount
	sw $v0, -1772($fp)
	lw $8, -1772($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -720($fp)
jal _func_getcount
	sw $v0, -1776($fp)
	lw $8, -1776($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -724($fp)
jal _func_getcount
	sw $v0, -1780($fp)
	lw $8, -1780($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -728($fp)
jal _func_getcount
	sw $v0, -1784($fp)
	lw $8, -1784($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -732($fp)
jal _func_getcount
	sw $v0, -1788($fp)
	lw $8, -1788($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -736($fp)
jal _func_getcount
	sw $v0, -1792($fp)
	lw $8, -1792($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -740($fp)
jal _func_getcount
	sw $v0, -1796($fp)
	lw $8, -1796($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -744($fp)
jal _func_getcount
	sw $v0, -1800($fp)
	lw $8, -1800($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -748($fp)
jal _func_getcount
	sw $v0, -1804($fp)
	lw $8, -1804($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -752($fp)
jal _func_getcount
	sw $v0, -1808($fp)
	lw $8, -1808($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -756($fp)
jal _func_getcount
	sw $v0, -1812($fp)
	lw $8, -1812($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -760($fp)
jal _func_getcount
	sw $v0, -1816($fp)
	lw $8, -1816($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -764($fp)
jal _func_getcount
	sw $v0, -1820($fp)
	lw $8, -1820($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -768($fp)
jal _func_getcount
	sw $v0, -1824($fp)
	lw $8, -1824($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -772($fp)
jal _func_getcount
	sw $v0, -1828($fp)
	lw $8, -1828($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -776($fp)
jal _func_getcount
	sw $v0, -1832($fp)
	lw $8, -1832($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -780($fp)
jal _func_getcount
	sw $v0, -1836($fp)
	lw $8, -1836($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -784($fp)
jal _func_getcount
	sw $v0, -1840($fp)
	lw $8, -1840($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -788($fp)
jal _func_getcount
	sw $v0, -1844($fp)
	lw $8, -1844($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -792($fp)
jal _func_getcount
	sw $v0, -1848($fp)
	lw $8, -1848($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -796($fp)
jal _func_getcount
	sw $v0, -1852($fp)
	lw $8, -1852($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -800($fp)
jal _func_getcount
	sw $v0, -1856($fp)
	lw $8, -1856($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -804($fp)
jal _func_getcount
	sw $v0, -1860($fp)
	lw $8, -1860($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -808($fp)
jal _func_getcount
	sw $v0, -1864($fp)
	lw $8, -1864($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -812($fp)
jal _func_getcount
	sw $v0, -1868($fp)
	lw $8, -1868($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -816($fp)
jal _func_getcount
	sw $v0, -1872($fp)
	lw $8, -1872($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -820($fp)
jal _func_getcount
	sw $v0, -1876($fp)
	lw $8, -1876($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -824($fp)
jal _func_getcount
	sw $v0, -1880($fp)
	lw $8, -1880($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -828($fp)
jal _func_getcount
	sw $v0, -1884($fp)
	lw $8, -1884($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -832($fp)
jal _func_getcount
	sw $v0, -1888($fp)
	lw $8, -1888($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -836($fp)
jal _func_getcount
	sw $v0, -1892($fp)
	lw $8, -1892($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -840($fp)
jal _func_getcount
	sw $v0, -1896($fp)
	lw $8, -1896($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -844($fp)
jal _func_getcount
	sw $v0, -1900($fp)
	lw $8, -1900($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -848($fp)
jal _func_getcount
	sw $v0, -1904($fp)
	lw $8, -1904($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -852($fp)
jal _func_getcount
	sw $v0, -1908($fp)
	lw $8, -1908($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -856($fp)
jal _func_getcount
	sw $v0, -1912($fp)
	lw $8, -1912($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -860($fp)
jal _func_getcount
	sw $v0, -1916($fp)
	lw $8, -1916($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -864($fp)
jal _func_getcount
	sw $v0, -1920($fp)
	lw $8, -1920($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -868($fp)
jal _func_getcount
	sw $v0, -1924($fp)
	lw $8, -1924($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -872($fp)
jal _func_getcount
	sw $v0, -1928($fp)
	lw $8, -1928($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -876($fp)
jal _func_getcount
	sw $v0, -1932($fp)
	lw $8, -1932($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -880($fp)
jal _func_getcount
	sw $v0, -1936($fp)
	lw $8, -1936($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -884($fp)
jal _func_getcount
	sw $v0, -1940($fp)
	lw $8, -1940($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -888($fp)
jal _func_getcount
	sw $v0, -1944($fp)
	lw $8, -1944($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -892($fp)
jal _func_getcount
	sw $v0, -1948($fp)
	lw $8, -1948($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -896($fp)
jal _func_getcount
	sw $v0, -1952($fp)
	lw $8, -1952($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -900($fp)
jal _func_getcount
	sw $v0, -1956($fp)
	lw $8, -1956($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -904($fp)
jal _func_getcount
	sw $v0, -1960($fp)
	lw $8, -1960($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -908($fp)
jal _func_getcount
	sw $v0, -1964($fp)
	lw $8, -1964($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -912($fp)
jal _func_getcount
	sw $v0, -1968($fp)
	lw $8, -1968($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -916($fp)
jal _func_getcount
	sw $v0, -1972($fp)
	lw $8, -1972($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -920($fp)
jal _func_getcount
	sw $v0, -1976($fp)
	lw $8, -1976($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -924($fp)
jal _func_getcount
	sw $v0, -1980($fp)
	lw $8, -1980($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -928($fp)
jal _func_getcount
	sw $v0, -1984($fp)
	lw $8, -1984($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -932($fp)
jal _func_getcount
	sw $v0, -1988($fp)
	lw $8, -1988($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -936($fp)
jal _func_getcount
	sw $v0, -1992($fp)
	lw $8, -1992($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -940($fp)
jal _func_getcount
	sw $v0, -1996($fp)
	lw $8, -1996($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -944($fp)
jal _func_getcount
	sw $v0, -2000($fp)
	lw $8, -2000($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -948($fp)
jal _func_getcount
	sw $v0, -2004($fp)
	lw $8, -2004($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -952($fp)
jal _func_getcount
	sw $v0, -2008($fp)
	lw $8, -2008($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -956($fp)
jal _func_getcount
	sw $v0, -2012($fp)
	lw $8, -2012($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -960($fp)
jal _func_getcount
	sw $v0, -2016($fp)
	lw $8, -2016($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -964($fp)
jal _func_getcount
	sw $v0, -2020($fp)
	lw $8, -2020($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -968($fp)
jal _func_getcount
	sw $v0, -2024($fp)
	lw $8, -2024($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -972($fp)
jal _func_getcount
	sw $v0, -2028($fp)
	lw $8, -2028($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -976($fp)
jal _func_getcount
	sw $v0, -2032($fp)
	lw $8, -2032($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -980($fp)
jal _func_getcount
	sw $v0, -2036($fp)
	lw $8, -2036($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -984($fp)
jal _func_getcount
	sw $v0, -2040($fp)
	lw $8, -2040($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -988($fp)
jal _func_getcount
	sw $v0, -2044($fp)
	lw $8, -2044($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -992($fp)
jal _func_getcount
	sw $v0, -2048($fp)
	lw $8, -2048($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -996($fp)
jal _func_getcount
	sw $v0, -2052($fp)
	lw $8, -2052($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -1000($fp)
jal _func_getcount
	sw $v0, -2056($fp)
	lw $8, -2056($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -1004($fp)
jal _func_getcount
	sw $v0, -2060($fp)
	lw $8, -2060($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -1008($fp)
jal _func_getcount
	sw $v0, -2064($fp)
	lw $8, -2064($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -1012($fp)
jal _func_getcount
	sw $v0, -2068($fp)
	lw $8, -2068($fp)

	lw $9, _static_164
	sw $9, -4($sp)
	sw $8, -1016($fp)
jal _func_getcount
	sw $v0, -2072($fp)
	lw $8, -2072($fp)

	lw $9, 0($fp)
	sw $9, -4($sp)
	sw $8, -1020($fp)
jal _func_____built_in_toString
	sw $v0, -2076($fp)

	lw $8, -2076($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -4($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2084($fp)

	lw $8, -2084($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -8($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2092($fp)

	lw $8, -2092($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -12($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2100($fp)

	lw $8, -2100($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -16($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2108($fp)

	lw $8, -2108($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -20($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2116($fp)

	lw $8, -2116($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -24($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2124($fp)

	lw $8, -2124($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -28($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2132($fp)

	lw $8, -2132($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -32($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2140($fp)

	lw $8, -2140($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -36($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2148($fp)

	lw $8, -2148($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -40($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2156($fp)

	lw $8, -2156($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -44($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2164($fp)

	lw $8, -2164($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -48($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2172($fp)

	lw $8, -2172($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -52($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2180($fp)

	lw $8, -2180($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -56($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2188($fp)

	lw $8, -2188($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -60($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2196($fp)

	lw $8, -2196($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -64($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2204($fp)

	lw $8, -2204($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -68($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2212($fp)

	lw $8, -2212($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -72($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2220($fp)

	lw $8, -2220($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -76($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2228($fp)

	lw $8, -2228($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -80($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2236($fp)

	lw $8, -2236($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -84($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2244($fp)

	lw $8, -2244($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -88($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2252($fp)

	lw $8, -2252($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -92($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2260($fp)

	lw $8, -2260($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -96($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2268($fp)

	lw $8, -2268($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -100($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2276($fp)

	lw $8, -2276($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -104($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2284($fp)

	lw $8, -2284($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -108($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2292($fp)

	lw $8, -2292($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -112($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2300($fp)

	lw $8, -2300($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -116($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2308($fp)

	lw $8, -2308($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -120($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2316($fp)

	lw $8, -2316($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -124($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2324($fp)

	lw $8, -2324($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -128($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2332($fp)

	lw $8, -2332($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -132($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2340($fp)

	lw $8, -2340($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -136($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2348($fp)

	lw $8, -2348($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -140($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2356($fp)

	lw $8, -2356($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -144($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2364($fp)

	lw $8, -2364($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -148($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2372($fp)

	lw $8, -2372($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -152($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2380($fp)

	lw $8, -2380($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -156($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2388($fp)

	lw $8, -2388($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -160($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2396($fp)

	lw $8, -2396($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -164($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2404($fp)

	lw $8, -2404($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -168($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2412($fp)

	lw $8, -2412($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -172($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2420($fp)

	lw $8, -2420($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -176($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2428($fp)

	lw $8, -2428($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -180($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2436($fp)

	lw $8, -2436($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -184($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2444($fp)

	lw $8, -2444($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -188($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2452($fp)

	lw $8, -2452($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -192($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2460($fp)

	lw $8, -2460($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -196($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2468($fp)

	lw $8, -2468($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -200($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2476($fp)

	lw $8, -2476($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -204($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2484($fp)

	lw $8, -2484($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -208($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2492($fp)

	lw $8, -2492($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -212($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2500($fp)

	lw $8, -2500($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -216($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2508($fp)

	lw $8, -2508($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -220($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2516($fp)

	lw $8, -2516($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -224($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2524($fp)

	lw $8, -2524($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -228($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2532($fp)

	lw $8, -2532($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -232($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2540($fp)

	lw $8, -2540($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -236($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2548($fp)

	lw $8, -2548($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -240($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2556($fp)

	lw $8, -2556($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -244($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2564($fp)

	lw $8, -2564($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -248($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2572($fp)

	lw $8, -2572($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -252($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2580($fp)

	lw $8, -2580($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -256($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2588($fp)

	lw $8, -2588($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -260($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2596($fp)

	lw $8, -2596($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -264($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2604($fp)

	lw $8, -2604($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -268($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2612($fp)

	lw $8, -2612($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -272($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2620($fp)

	lw $8, -2620($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -276($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2628($fp)

	lw $8, -2628($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -280($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2636($fp)

	lw $8, -2636($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -284($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2644($fp)

	lw $8, -2644($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -288($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2652($fp)

	lw $8, -2652($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -292($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2660($fp)

	lw $8, -2660($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -296($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2668($fp)

	lw $8, -2668($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -300($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2676($fp)

	lw $8, -2676($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -304($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2684($fp)

	lw $8, -2684($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -308($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2692($fp)

	lw $8, -2692($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -312($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2700($fp)

	lw $8, -2700($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -316($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2708($fp)

	lw $8, -2708($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -320($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2716($fp)

	lw $8, -2716($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -324($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2724($fp)

	lw $8, -2724($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -328($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2732($fp)

	lw $8, -2732($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -332($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2740($fp)

	lw $8, -2740($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -336($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2748($fp)

	lw $8, -2748($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -340($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2756($fp)

	lw $8, -2756($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -344($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2764($fp)

	lw $8, -2764($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -348($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2772($fp)

	lw $8, -2772($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -352($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2780($fp)

	lw $8, -2780($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -356($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2788($fp)

	lw $8, -2788($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -360($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2796($fp)

	lw $8, -2796($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -364($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2804($fp)

	lw $8, -2804($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -368($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2812($fp)

	lw $8, -2812($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -372($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2820($fp)

	lw $8, -2820($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -376($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2828($fp)

	lw $8, -2828($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -380($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2836($fp)

	lw $8, -2836($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -384($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2844($fp)

	lw $8, -2844($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -388($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2852($fp)

	lw $8, -2852($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -392($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2860($fp)

	lw $8, -2860($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -396($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2868($fp)

	lw $8, -2868($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -400($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2876($fp)

	lw $8, -2876($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -404($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2884($fp)

	lw $8, -2884($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -408($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2892($fp)

	lw $8, -2892($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -412($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2900($fp)

	lw $8, -2900($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -416($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2908($fp)

	lw $8, -2908($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -420($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2916($fp)

	lw $8, -2916($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -424($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2924($fp)

	lw $8, -2924($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -428($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2932($fp)

	lw $8, -2932($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -432($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2940($fp)

	lw $8, -2940($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -436($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2948($fp)

	lw $8, -2948($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -440($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2956($fp)

	lw $8, -2956($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -444($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2964($fp)

	lw $8, -2964($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -448($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2972($fp)

	lw $8, -2972($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -452($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2980($fp)

	lw $8, -2980($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -456($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2988($fp)

	lw $8, -2988($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -460($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -2996($fp)

	lw $8, -2996($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -464($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3004($fp)

	lw $8, -3004($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -468($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3012($fp)

	lw $8, -3012($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -472($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3020($fp)

	lw $8, -3020($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -476($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3028($fp)

	lw $8, -3028($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -480($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3036($fp)

	lw $8, -3036($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -484($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3044($fp)

	lw $8, -3044($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -488($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3052($fp)

	lw $8, -3052($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -492($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3060($fp)

	lw $8, -3060($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -496($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3068($fp)

	lw $8, -3068($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -500($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3076($fp)

	lw $8, -3076($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -504($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3084($fp)

	lw $8, -3084($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -508($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3092($fp)

	lw $8, -3092($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -512($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3100($fp)

	lw $8, -3100($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -516($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3108($fp)

	lw $8, -3108($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -520($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3116($fp)

	lw $8, -3116($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -524($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3124($fp)

	lw $8, -3124($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -528($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3132($fp)

	lw $8, -3132($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -532($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3140($fp)

	lw $8, -3140($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -536($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3148($fp)

	lw $8, -3148($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -540($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3156($fp)

	lw $8, -3156($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -544($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3164($fp)

	lw $8, -3164($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -548($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3172($fp)

	lw $8, -3172($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -552($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3180($fp)

	lw $8, -3180($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -556($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3188($fp)

	lw $8, -3188($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -560($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3196($fp)

	lw $8, -3196($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -564($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3204($fp)

	lw $8, -3204($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -568($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3212($fp)

	lw $8, -3212($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -572($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3220($fp)

	lw $8, -3220($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -576($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3228($fp)

	lw $8, -3228($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -580($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3236($fp)

	lw $8, -3236($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -584($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3244($fp)

	lw $8, -3244($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -588($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3252($fp)

	lw $8, -3252($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -592($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3260($fp)

	lw $8, -3260($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -596($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3268($fp)

	lw $8, -3268($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -600($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3276($fp)

	lw $8, -3276($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -604($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3284($fp)

	lw $8, -3284($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -608($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3292($fp)

	lw $8, -3292($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -612($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3300($fp)

	lw $8, -3300($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -616($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3308($fp)

	lw $8, -3308($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -620($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3316($fp)

	lw $8, -3316($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -624($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3324($fp)

	lw $8, -3324($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -628($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3332($fp)

	lw $8, -3332($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -632($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3340($fp)

	lw $8, -3340($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -636($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3348($fp)

	lw $8, -3348($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -640($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3356($fp)

	lw $8, -3356($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -644($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3364($fp)

	lw $8, -3364($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -648($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3372($fp)

	lw $8, -3372($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -652($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3380($fp)

	lw $8, -3380($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -656($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3388($fp)

	lw $8, -3388($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -660($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3396($fp)

	lw $8, -3396($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -664($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3404($fp)

	lw $8, -3404($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -668($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3412($fp)

	lw $8, -3412($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -672($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3420($fp)

	lw $8, -3420($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -676($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3428($fp)

	lw $8, -3428($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -680($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3436($fp)

	lw $8, -3436($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -684($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3444($fp)

	lw $8, -3444($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -688($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3452($fp)

	lw $8, -3452($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -692($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3460($fp)

	lw $8, -3460($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -696($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3468($fp)

	lw $8, -3468($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -700($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3476($fp)

	lw $8, -3476($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -704($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3484($fp)

	lw $8, -3484($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -708($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3492($fp)

	lw $8, -3492($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -712($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3500($fp)

	lw $8, -3500($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -716($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3508($fp)

	lw $8, -3508($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -720($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3516($fp)

	lw $8, -3516($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -724($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3524($fp)

	lw $8, -3524($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -728($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3532($fp)

	lw $8, -3532($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -732($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3540($fp)

	lw $8, -3540($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -736($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3548($fp)

	lw $8, -3548($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -740($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3556($fp)

	lw $8, -3556($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -744($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3564($fp)

	lw $8, -3564($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -748($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3572($fp)

	lw $8, -3572($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -752($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3580($fp)

	lw $8, -3580($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -756($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3588($fp)

	lw $8, -3588($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -760($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3596($fp)

	lw $8, -3596($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -764($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3604($fp)

	lw $8, -3604($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -768($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3612($fp)

	lw $8, -3612($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -772($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3620($fp)

	lw $8, -3620($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -776($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3628($fp)

	lw $8, -3628($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -780($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3636($fp)

	lw $8, -3636($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -784($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3644($fp)

	lw $8, -3644($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -788($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3652($fp)

	lw $8, -3652($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -792($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3660($fp)

	lw $8, -3660($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -796($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3668($fp)

	lw $8, -3668($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -800($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3676($fp)

	lw $8, -3676($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -804($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3684($fp)

	lw $8, -3684($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -808($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3692($fp)

	lw $8, -3692($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -812($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3700($fp)

	lw $8, -3700($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -816($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3708($fp)

	lw $8, -3708($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -820($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3716($fp)

	lw $8, -3716($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -824($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3724($fp)

	lw $8, -3724($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -828($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3732($fp)

	lw $8, -3732($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -832($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3740($fp)

	lw $8, -3740($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -836($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3748($fp)

	lw $8, -3748($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -840($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3756($fp)

	lw $8, -3756($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -844($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3764($fp)

	lw $8, -3764($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -848($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3772($fp)

	lw $8, -3772($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -852($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3780($fp)

	lw $8, -3780($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -856($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3788($fp)

	lw $8, -3788($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -860($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3796($fp)

	lw $8, -3796($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -864($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3804($fp)

	lw $8, -3804($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -868($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3812($fp)

	lw $8, -3812($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -872($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3820($fp)

	lw $8, -3820($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -876($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3828($fp)

	lw $8, -3828($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -880($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3836($fp)

	lw $8, -3836($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -884($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3844($fp)

	lw $8, -3844($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -888($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3852($fp)

	lw $8, -3852($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -892($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3860($fp)

	lw $8, -3860($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -896($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3868($fp)

	lw $8, -3868($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -900($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3876($fp)

	lw $8, -3876($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -904($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3884($fp)

	lw $8, -3884($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -908($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3892($fp)

	lw $8, -3892($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -912($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3900($fp)

	lw $8, -3900($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -916($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3908($fp)

	lw $8, -3908($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -920($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3916($fp)

	lw $8, -3916($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -924($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3924($fp)

	lw $8, -3924($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -928($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3932($fp)

	lw $8, -3932($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -932($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3940($fp)

	lw $8, -3940($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -936($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3948($fp)

	lw $8, -3948($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -940($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3956($fp)

	lw $8, -3956($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -944($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3964($fp)

	lw $8, -3964($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -948($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3972($fp)

	lw $8, -3972($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -952($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3980($fp)

	lw $8, -3980($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -956($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3988($fp)

	lw $8, -3988($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -960($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -3996($fp)

	lw $8, -3996($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -964($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4004($fp)

	lw $8, -4004($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -968($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4012($fp)

	lw $8, -4012($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -972($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4020($fp)

	lw $8, -4020($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -976($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4028($fp)

	lw $8, -4028($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -980($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4036($fp)

	lw $8, -4036($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -984($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4044($fp)

	lw $8, -4044($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -988($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4052($fp)

	lw $8, -4052($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -992($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4060($fp)

	lw $8, -4060($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -996($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4068($fp)

	lw $8, -4068($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1000($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4076($fp)

	lw $8, -4076($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1004($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4084($fp)

	lw $8, -4084($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1008($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4092($fp)

	lw $8, -4092($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1012($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4100($fp)

	lw $8, -4100($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1016($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4108($fp)

	lw $8, -4108($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1020($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4116($fp)

	lw $8, -4116($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
	la $8, _static_166
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_163
	li $v0, 4
	move $a0, $8

	syscall

	lw $8, 0($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4128($fp)

	lw $8, -4128($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -4($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4136($fp)

	lw $8, -4136($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -8($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4144($fp)

	lw $8, -4144($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -12($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4152($fp)

	lw $8, -4152($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -16($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4160($fp)

	lw $8, -4160($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -20($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4168($fp)

	lw $8, -4168($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -24($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4176($fp)

	lw $8, -4176($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -28($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4184($fp)

	lw $8, -4184($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -32($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4192($fp)

	lw $8, -4192($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -36($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4200($fp)

	lw $8, -4200($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -40($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4208($fp)

	lw $8, -4208($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -44($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4216($fp)

	lw $8, -4216($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -48($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4224($fp)

	lw $8, -4224($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -52($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4232($fp)

	lw $8, -4232($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -56($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4240($fp)

	lw $8, -4240($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -60($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4248($fp)

	lw $8, -4248($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -64($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4256($fp)

	lw $8, -4256($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -68($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4264($fp)

	lw $8, -4264($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -72($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4272($fp)

	lw $8, -4272($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -76($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4280($fp)

	lw $8, -4280($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -80($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4288($fp)

	lw $8, -4288($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -84($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4296($fp)

	lw $8, -4296($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -88($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4304($fp)

	lw $8, -4304($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -92($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4312($fp)

	lw $8, -4312($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -96($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4320($fp)

	lw $8, -4320($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -100($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4328($fp)

	lw $8, -4328($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -104($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4336($fp)

	lw $8, -4336($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -108($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4344($fp)

	lw $8, -4344($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -112($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4352($fp)

	lw $8, -4352($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -116($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4360($fp)

	lw $8, -4360($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -120($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4368($fp)

	lw $8, -4368($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -124($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4376($fp)

	lw $8, -4376($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -128($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4384($fp)

	lw $8, -4384($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -132($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4392($fp)

	lw $8, -4392($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -136($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4400($fp)

	lw $8, -4400($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -140($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4408($fp)

	lw $8, -4408($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -144($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4416($fp)

	lw $8, -4416($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -148($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4424($fp)

	lw $8, -4424($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -152($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4432($fp)

	lw $8, -4432($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -156($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4440($fp)

	lw $8, -4440($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -160($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4448($fp)

	lw $8, -4448($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -164($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4456($fp)

	lw $8, -4456($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -168($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4464($fp)

	lw $8, -4464($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -172($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4472($fp)

	lw $8, -4472($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -176($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4480($fp)

	lw $8, -4480($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -180($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4488($fp)

	lw $8, -4488($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -184($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4496($fp)

	lw $8, -4496($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -188($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4504($fp)

	lw $8, -4504($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -192($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4512($fp)

	lw $8, -4512($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -196($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4520($fp)

	lw $8, -4520($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -200($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4528($fp)

	lw $8, -4528($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -204($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4536($fp)

	lw $8, -4536($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -208($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4544($fp)

	lw $8, -4544($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -212($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4552($fp)

	lw $8, -4552($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -216($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4560($fp)

	lw $8, -4560($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -220($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4568($fp)

	lw $8, -4568($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -224($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4576($fp)

	lw $8, -4576($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -228($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4584($fp)

	lw $8, -4584($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -232($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4592($fp)

	lw $8, -4592($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -236($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4600($fp)

	lw $8, -4600($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -240($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4608($fp)

	lw $8, -4608($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -244($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4616($fp)

	lw $8, -4616($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -248($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4624($fp)

	lw $8, -4624($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -252($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4632($fp)

	lw $8, -4632($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -256($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4640($fp)

	lw $8, -4640($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -260($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4648($fp)

	lw $8, -4648($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -264($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4656($fp)

	lw $8, -4656($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -268($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4664($fp)

	lw $8, -4664($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -272($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4672($fp)

	lw $8, -4672($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -276($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4680($fp)

	lw $8, -4680($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -280($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4688($fp)

	lw $8, -4688($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -284($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4696($fp)

	lw $8, -4696($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -288($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4704($fp)

	lw $8, -4704($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -292($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4712($fp)

	lw $8, -4712($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -296($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4720($fp)

	lw $8, -4720($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -300($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4728($fp)

	lw $8, -4728($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -304($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4736($fp)

	lw $8, -4736($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -308($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4744($fp)

	lw $8, -4744($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -312($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4752($fp)

	lw $8, -4752($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -316($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4760($fp)

	lw $8, -4760($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -320($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4768($fp)

	lw $8, -4768($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -324($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4776($fp)

	lw $8, -4776($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -328($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4784($fp)

	lw $8, -4784($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -332($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4792($fp)

	lw $8, -4792($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -336($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4800($fp)

	lw $8, -4800($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -340($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4808($fp)

	lw $8, -4808($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -344($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4816($fp)

	lw $8, -4816($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -348($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4824($fp)

	lw $8, -4824($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -352($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4832($fp)

	lw $8, -4832($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -356($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4840($fp)

	lw $8, -4840($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -360($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4848($fp)

	lw $8, -4848($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -364($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4856($fp)

	lw $8, -4856($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -368($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4864($fp)

	lw $8, -4864($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -372($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4872($fp)

	lw $8, -4872($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -376($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4880($fp)

	lw $8, -4880($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -380($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4888($fp)

	lw $8, -4888($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -384($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4896($fp)

	lw $8, -4896($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -388($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4904($fp)

	lw $8, -4904($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -392($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4912($fp)

	lw $8, -4912($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -396($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4920($fp)

	lw $8, -4920($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -400($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4928($fp)

	lw $8, -4928($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -404($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4936($fp)

	lw $8, -4936($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -408($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4944($fp)

	lw $8, -4944($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -412($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4952($fp)

	lw $8, -4952($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -416($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4960($fp)

	lw $8, -4960($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -420($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4968($fp)

	lw $8, -4968($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -424($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4976($fp)

	lw $8, -4976($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -428($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4984($fp)

	lw $8, -4984($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -432($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -4992($fp)

	lw $8, -4992($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -436($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5000($fp)

	lw $8, -5000($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -440($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5008($fp)

	lw $8, -5008($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -444($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5016($fp)

	lw $8, -5016($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -448($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5024($fp)

	lw $8, -5024($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -452($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5032($fp)

	lw $8, -5032($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -456($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5040($fp)

	lw $8, -5040($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -460($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5048($fp)

	lw $8, -5048($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -464($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5056($fp)

	lw $8, -5056($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -468($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5064($fp)

	lw $8, -5064($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -472($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5072($fp)

	lw $8, -5072($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -476($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5080($fp)

	lw $8, -5080($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -480($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5088($fp)

	lw $8, -5088($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -484($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5096($fp)

	lw $8, -5096($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -488($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5104($fp)

	lw $8, -5104($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -492($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5112($fp)

	lw $8, -5112($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -496($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5120($fp)

	lw $8, -5120($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -500($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5128($fp)

	lw $8, -5128($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -504($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5136($fp)

	lw $8, -5136($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -508($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5144($fp)

	lw $8, -5144($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -512($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5152($fp)

	lw $8, -5152($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -516($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5160($fp)

	lw $8, -5160($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -520($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5168($fp)

	lw $8, -5168($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -524($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5176($fp)

	lw $8, -5176($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -528($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5184($fp)

	lw $8, -5184($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -532($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5192($fp)

	lw $8, -5192($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -536($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5200($fp)

	lw $8, -5200($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -540($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5208($fp)

	lw $8, -5208($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -544($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5216($fp)

	lw $8, -5216($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -548($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5224($fp)

	lw $8, -5224($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -552($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5232($fp)

	lw $8, -5232($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -556($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5240($fp)

	lw $8, -5240($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -560($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5248($fp)

	lw $8, -5248($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -564($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5256($fp)

	lw $8, -5256($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -568($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5264($fp)

	lw $8, -5264($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -572($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5272($fp)

	lw $8, -5272($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -576($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5280($fp)

	lw $8, -5280($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -580($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5288($fp)

	lw $8, -5288($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -584($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5296($fp)

	lw $8, -5296($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -588($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5304($fp)

	lw $8, -5304($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -592($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5312($fp)

	lw $8, -5312($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -596($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5320($fp)

	lw $8, -5320($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -600($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5328($fp)

	lw $8, -5328($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -604($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5336($fp)

	lw $8, -5336($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -608($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5344($fp)

	lw $8, -5344($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -612($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5352($fp)

	lw $8, -5352($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -616($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5360($fp)

	lw $8, -5360($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -620($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5368($fp)

	lw $8, -5368($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -624($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5376($fp)

	lw $8, -5376($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -628($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5384($fp)

	lw $8, -5384($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -632($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5392($fp)

	lw $8, -5392($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -636($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5400($fp)

	lw $8, -5400($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -640($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5408($fp)

	lw $8, -5408($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -644($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5416($fp)

	lw $8, -5416($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -648($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5424($fp)

	lw $8, -5424($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -652($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5432($fp)

	lw $8, -5432($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -656($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5440($fp)

	lw $8, -5440($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -660($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5448($fp)

	lw $8, -5448($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -664($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5456($fp)

	lw $8, -5456($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -668($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5464($fp)

	lw $8, -5464($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -672($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5472($fp)

	lw $8, -5472($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -676($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5480($fp)

	lw $8, -5480($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -680($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5488($fp)

	lw $8, -5488($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -684($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5496($fp)

	lw $8, -5496($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -688($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5504($fp)

	lw $8, -5504($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -692($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5512($fp)

	lw $8, -5512($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -696($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5520($fp)

	lw $8, -5520($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -700($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5528($fp)

	lw $8, -5528($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -704($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5536($fp)

	lw $8, -5536($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -708($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5544($fp)

	lw $8, -5544($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -712($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5552($fp)

	lw $8, -5552($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -716($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5560($fp)

	lw $8, -5560($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -720($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5568($fp)

	lw $8, -5568($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -724($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5576($fp)

	lw $8, -5576($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -728($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5584($fp)

	lw $8, -5584($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -732($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5592($fp)

	lw $8, -5592($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -736($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5600($fp)

	lw $8, -5600($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -740($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5608($fp)

	lw $8, -5608($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -744($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5616($fp)

	lw $8, -5616($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -748($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5624($fp)

	lw $8, -5624($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -752($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5632($fp)

	lw $8, -5632($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -756($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5640($fp)

	lw $8, -5640($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -760($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5648($fp)

	lw $8, -5648($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -764($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5656($fp)

	lw $8, -5656($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -768($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5664($fp)

	lw $8, -5664($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -772($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5672($fp)

	lw $8, -5672($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -776($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5680($fp)

	lw $8, -5680($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -780($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5688($fp)

	lw $8, -5688($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -784($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5696($fp)

	lw $8, -5696($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -788($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5704($fp)

	lw $8, -5704($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -792($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5712($fp)

	lw $8, -5712($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -796($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5720($fp)

	lw $8, -5720($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -800($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5728($fp)

	lw $8, -5728($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -804($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5736($fp)

	lw $8, -5736($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -808($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5744($fp)

	lw $8, -5744($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -812($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5752($fp)

	lw $8, -5752($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -816($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5760($fp)

	lw $8, -5760($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -820($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5768($fp)

	lw $8, -5768($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -824($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5776($fp)

	lw $8, -5776($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -828($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5784($fp)

	lw $8, -5784($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -832($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5792($fp)

	lw $8, -5792($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -836($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5800($fp)

	lw $8, -5800($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -840($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5808($fp)

	lw $8, -5808($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -844($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5816($fp)

	lw $8, -5816($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -848($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5824($fp)

	lw $8, -5824($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -852($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5832($fp)

	lw $8, -5832($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -856($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5840($fp)

	lw $8, -5840($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -860($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5848($fp)

	lw $8, -5848($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -864($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5856($fp)

	lw $8, -5856($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -868($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5864($fp)

	lw $8, -5864($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -872($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5872($fp)

	lw $8, -5872($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -876($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5880($fp)

	lw $8, -5880($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -880($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5888($fp)

	lw $8, -5888($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -884($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5896($fp)

	lw $8, -5896($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -888($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5904($fp)

	lw $8, -5904($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -892($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5912($fp)

	lw $8, -5912($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -896($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5920($fp)

	lw $8, -5920($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -900($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5928($fp)

	lw $8, -5928($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -904($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5936($fp)

	lw $8, -5936($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -908($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5944($fp)

	lw $8, -5944($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -912($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5952($fp)

	lw $8, -5952($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -916($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5960($fp)

	lw $8, -5960($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -920($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5968($fp)

	lw $8, -5968($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -924($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5976($fp)

	lw $8, -5976($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -928($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5984($fp)

	lw $8, -5984($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -932($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -5992($fp)

	lw $8, -5992($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -936($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6000($fp)

	lw $8, -6000($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -940($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6008($fp)

	lw $8, -6008($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -944($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6016($fp)

	lw $8, -6016($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -948($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6024($fp)

	lw $8, -6024($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -952($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6032($fp)

	lw $8, -6032($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -956($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6040($fp)

	lw $8, -6040($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -960($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6048($fp)

	lw $8, -6048($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -964($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6056($fp)

	lw $8, -6056($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -968($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6064($fp)

	lw $8, -6064($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -972($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6072($fp)

	lw $8, -6072($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -976($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6080($fp)

	lw $8, -6080($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -980($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6088($fp)

	lw $8, -6088($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -984($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6096($fp)

	lw $8, -6096($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -988($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6104($fp)

	lw $8, -6104($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -992($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6112($fp)

	lw $8, -6112($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -996($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6120($fp)

	lw $8, -6120($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1000($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6128($fp)

	lw $8, -6128($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1004($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6136($fp)

	lw $8, -6136($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1008($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6144($fp)

	lw $8, -6144($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1012($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6152($fp)

	lw $8, -6152($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1016($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6160($fp)

	lw $8, -6160($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	lw $8, -1020($fp)
	sw $8, -4($sp)

jal _func_____built_in_toString
	sw $v0, -6168($fp)

	lw $8, -6168($fp)
	li $v0, 4
	move $a0, $8

	syscall
	la $8, _static_165
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall
	la $8, _static_166
	move $9, $8
	li $v0, 4
	move $a0, $9

	syscall

	la $8, _static_163
	li $v0, 4
	move $a0, $8

	syscall
	move $v0, $zero
	b _end_func_main
_end_func_main:
	lw $ra, 0($sp)
	add $sp, $fp, 4
	lw $fp, -6296($fp)
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
