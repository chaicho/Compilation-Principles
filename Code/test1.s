.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"

.text
.globl main

read:
  li $v0, 4
  la $a0, _prompt
  syscall
  li $v0, 5
  syscall
  jr $ra

write:
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  move $v0, $0
  jr $ra

id_G_ixTjdl:
  subu  $sp, $sp, 60
  sw  $ra  56($sp) 
  sw  $fp  52($sp) 
  addi  $fp, $sp , 60
  li $t1, 0
  sw  $t1, -12($fp)
  li $t2, 0
  sw  $t2, -16($fp)
  li $t3, 0
  sw  $t3, -20($fp)
  li  $t4, 0
  lw  $t5, 0($fp)
  bgt  $t5, $t4, label10
  j label11
  label10 :
  li $t6, 1
  sw  $t6, -20($fp)
  label11 :
  li  $t7, 0
  lw  $t0, -20($fp)
  bne  $t0, $t7, label9
  j label7
  label9 :
  li $t1, 0
  sw  $t1, -24($fp)
  li  $t2, 0
  lw  $t3, 4($fp)
  bgt  $t3, $t2, label12
  j label13
  label12 :
  li $t4, 1
  sw  $t4, -24($fp)
  label13 :
  li  $t5, 0
  lw  $t6, -24($fp)
  bne  $t6, $t5, label8
  j label7
  label8 :
  li $t7, 0
  sw  $t7, -28($fp)
  lw  $t1, 4($fp)
  sub $t0, $t1, 2147483647
  lw  $t2, 4($fp)
  li  $t3, 2147483647
  sub $t0, $t3, $t2
  sw  $t0, -32($fp)
  lw  $t4, -32($fp)
  lw  $t5, 0($fp)
  bgt  $t5, $t4, label14
  j label15
  label14 :
  li $t6, 1
  sw  $t6, -28($fp)
  label15 :
  li  $t7, 0
  lw  $t0, -28($fp)
  bne  $t0, $t7, label6
  j label7
  label6 :
  li $t1, 1
  sw  $t1, -16($fp)
  label7 :
  li  $t2, 0
  lw  $t3, -16($fp)
  bne  $t3, $t2, label3
  j label5
  label5 :
  li $t4, 0
  sw  $t4, -36($fp)
  li $t5, 0
  sw  $t5, -40($fp)
  li  $t6, 0
  lw  $t7, 0($fp)
  blt  $t7, $t6, label20
  j label21
  label20 :
  li $t0, 1
  sw  $t0, -40($fp)
  label21 :
  li  $t1, 0
  lw  $t2, -40($fp)
  bne  $t2, $t1, label19
  j label17
  label19 :
  li $t3, 0
  sw  $t3, -44($fp)
  li  $t4, 0
  lw  $t5, 4($fp)
  blt  $t5, $t4, label22
  j label23
  label22 :
  li $t6, 1
  sw  $t6, -44($fp)
  label23 :
  li  $t7, 0
  lw  $t0, -44($fp)
  bne  $t0, $t7, label18
  j label17
  label18 :
  li $t1, 0
  sw  $t1, -48($fp)
  lw  $t3, 4($fp)
  sub $t2, $t3, -2147483648
  lw  $t4, 4($fp)
  li  $t5, -2147483648
  sub $t2, $t5, $t4
  sw  $t2, -52($fp)
  lw  $t6, -52($fp)
  lw  $t7, 0($fp)
  blt  $t7, $t6, label24
  j label25
  label24 :
  li $t0, 1
  sw  $t0, -48($fp)
  label25 :
  li  $t1, 0
  lw  $t2, -48($fp)
  bne  $t2, $t1, label16
  j label17
  label16 :
  li $t3, 1
  sw  $t3, -36($fp)
  label17 :
  li  $t4, 0
  lw  $t5, -36($fp)
  bne  $t5, $t4, label3
  j label4
  label3 :
  li $t6, 1
  sw  $t6, -12($fp)
  label4 :
  li  $t7, 0
  lw  $t0, -12($fp)
  bne  $t0, $t7, label1
  j label2
  label1 :
  lw  $t1, 0($fp)
  move  $v0, $t1
  lw  $ra  56($sp) 
  lw  $fp  52($sp) 
  addi $sp, $sp, 60
  jr  $ra
  label2 :
  lw  $t3, 4($fp)
  lw  $t4, 0($fp)
  add $t2, $t4, $t3
  sw  $t2, -56($fp)
  lw  $t5, -56($fp)
  move  $v0, $t5
  lw  $ra  56($sp) 
  lw  $fp  52($sp) 
  addi $sp, $sp, 60
  jr  $ra
id_q:
  subu  $sp, $sp, 56
  sw  $ra  52($sp) 
  sw  $fp  48($sp) 
  addi  $fp, $sp , 56
  li $t6, 0
  sw  $t6, -12($fp)
  li $t7, 0
  sw  $t7, -16($fp)
  li  $t0, 0
  lw  $t1, 0($fp)
  bgt  $t1, $t0, label33
  j label34
  label33 :
  li $t2, 1
  sw  $t2, -16($fp)
  label34 :
  li  $t3, 0
  lw  $t4, -16($fp)
  bne  $t4, $t3, label32
  j label30
  label32 :
  li $t5, 0
  sw  $t5, -20($fp)
  li  $t6, 0
  lw  $t7, 4($fp)
  blt  $t7, $t6, label35
  j label36
  label35 :
  li $t0, 1
  sw  $t0, -20($fp)
  label36 :
  li  $t1, 0
  lw  $t2, -20($fp)
  bne  $t2, $t1, label31
  j label30
  label31 :
  li $t3, 0
  sw  $t3, -24($fp)
  lw  $t5, 4($fp)
  add $t4, $t5, 2147483647
  lw  $t6, 4($fp)
  li  $t7, 2147483647
  add $t4, $t7, $t6
  sw  $t4, -28($fp)
  lw  $t0, -28($fp)
  lw  $t1, 0($fp)
  bgt  $t1, $t0, label37
  j label38
  label37 :
  li $t2, 1
  sw  $t2, -24($fp)
  label38 :
  li  $t3, 0
  lw  $t4, -24($fp)
  bne  $t4, $t3, label29
  j label30
  label29 :
  li $t5, 1
  sw  $t5, -12($fp)
  label30 :
  li  $t6, 0
  lw  $t7, -12($fp)
  bne  $t7, $t6, label26
  j label28
  label28 :
  li $t0, 0
  sw  $t0, -32($fp)
  li $t1, 0
  sw  $t1, -36($fp)
  li  $t2, 0
  lw  $t3, 0($fp)
  blt  $t3, $t2, label43
  j label44
  label43 :
  li $t4, 1
  sw  $t4, -36($fp)
  label44 :
  li  $t5, 0
  lw  $t6, -36($fp)
  bne  $t6, $t5, label42
  j label40
  label42 :
  li $t7, 0
  sw  $t7, -40($fp)
  li  $t0, 0
  lw  $t1, 4($fp)
  bgt  $t1, $t0, label45
  j label46
  label45 :
  li $t2, 1
  sw  $t2, -40($fp)
  label46 :
  li  $t3, 0
  lw  $t4, -40($fp)
  bne  $t4, $t3, label41
  j label40
  label41 :
  li $t5, 0
  sw  $t5, -44($fp)
  lw  $t7, 4($fp)
  add $t6, $t7, -2147483648
  lw  $t0, 4($fp)
  li  $t1, -2147483648
  add $t6, $t1, $t0
  sw  $t6, -48($fp)
  lw  $t2, -48($fp)
  lw  $t3, 0($fp)
  blt  $t3, $t2, label47
  j label48
  label47 :
  li $t4, 1
  sw  $t4, -44($fp)
  label48 :
  li  $t5, 0
  lw  $t6, -44($fp)
  bne  $t6, $t5, label39
  j label40
  label39 :
  li $t7, 1
  sw  $t7, -32($fp)
  label40 :
  li  $t0, 0
  lw  $t1, -32($fp)
  bne  $t1, $t0, label26
  j label27
  label26 :
  lw  $t2, 0($fp)
  move  $v0, $t2
  lw  $ra  52($sp) 
  lw  $fp  48($sp) 
  addi $sp, $sp, 56
  jr  $ra
  label27 :
  lw  $t4, 4($fp)
  lw  $t5, 0($fp)
  sub $t3, $t5, $t4
  sw  $t3, -52($fp)
  lw  $t6, -52($fp)
  move  $v0, $t6
  lw  $ra  52($sp) 
  lw  $fp  48($sp) 
  addi $sp, $sp, 56
  jr  $ra
id_a1ZS4Ci:
  subu  $sp, $sp, 104
  sw  $ra  100($sp) 
  sw  $fp  96($sp) 
  addi  $fp, $sp , 104
  li $t7, 0
  sw  $t7, -12($fp)
  li $t0, 0
  sw  $t0, -16($fp)
  li $t1, 0
  sw  $t1, -20($fp)
  li  $t2, 0
  lw  $t3, 0($fp)
  bgt  $t3, $t2, label60
  j label61
  label60 :
  li $t4, 1
  sw  $t4, -20($fp)
  label61 :
  li  $t5, 0
  lw  $t6, -20($fp)
  bne  $t6, $t5, label59
  j label57
  label59 :
  li $t7, 0
  sw  $t7, -24($fp)
  li  $t0, 0
  lw  $t1, 4($fp)
  bgt  $t1, $t0, label62
  j label63
  label62 :
  li $t2, 1
  sw  $t2, -24($fp)
  label63 :
  li  $t3, 0
  lw  $t4, -24($fp)
  bne  $t4, $t3, label58
  j label57
  label58 :
  li $t5, 0
  sw  $t5, -28($fp)
  lw  $t7, 4($fp)
  li  $t0, 2147483647
  div $t0, $t7
  mflo $t6
  sw  $t6, -32($fp)
  lw  $t1, -32($fp)
  lw  $t2, 0($fp)
  bgt  $t2, $t1, label64
  j label65
  label64 :
  li $t3, 1
  sw  $t3, -28($fp)
  label65 :
  li  $t4, 0
  lw  $t5, -28($fp)
  bne  $t5, $t4, label56
  j label57
  label56 :
  li $t6, 1
  sw  $t6, -16($fp)
  label57 :
  li  $t7, 0
  lw  $t0, -16($fp)
  bne  $t0, $t7, label51
  j label55
  label55 :
  li $t1, 0
  sw  $t1, -36($fp)
  li $t2, 0
  sw  $t2, -40($fp)
  li  $t3, 0
  lw  $t4, 0($fp)
  bgt  $t4, $t3, label70
  j label71
  label70 :
  li $t5, 1
  sw  $t5, -40($fp)
  label71 :
  li  $t6, 0
  lw  $t7, -40($fp)
  bne  $t7, $t6, label69
  j label67
  label69 :
  li $t0, 0
  sw  $t0, -44($fp)
  li  $t1, 0
  lw  $t2, 4($fp)
  ble  $t2, $t1, label72
  j label73
  label72 :
  li $t3, 1
  sw  $t3, -44($fp)
  label73 :
  li  $t4, 0
  lw  $t5, -44($fp)
  bne  $t5, $t4, label68
  j label67
  label68 :
  li $t6, 0
  sw  $t6, -48($fp)
  lw  $t0, 0($fp)
  li  $t1, -2147483648
  div $t1, $t0
  mflo $t7
  sw  $t7, -52($fp)
  lw  $t2, -52($fp)
  lw  $t3, 4($fp)
  blt  $t3, $t2, label74
  j label75
  label74 :
  li $t4, 1
  sw  $t4, -48($fp)
  label75 :
  li  $t5, 0
  lw  $t6, -48($fp)
  bne  $t6, $t5, label66
  j label67
  label66 :
  li $t7, 1
  sw  $t7, -36($fp)
  label67 :
  li  $t0, 0
  lw  $t1, -36($fp)
  bne  $t1, $t0, label51
  j label54
  label54 :
  li $t2, 0
  sw  $t2, -56($fp)
  li $t3, 0
  sw  $t3, -60($fp)
  li  $t4, 0
  lw  $t5, 0($fp)
  ble  $t5, $t4, label80
  j label81
  label80 :
  li $t6, 1
  sw  $t6, -60($fp)
  label81 :
  li  $t7, 0
  lw  $t0, -60($fp)
  bne  $t0, $t7, label79
  j label77
  label79 :
  li $t1, 0
  sw  $t1, -64($fp)
  li  $t2, 0
  lw  $t3, 4($fp)
  bgt  $t3, $t2, label82
  j label83
  label82 :
  li $t4, 1
  sw  $t4, -64($fp)
  label83 :
  li  $t5, 0
  lw  $t6, -64($fp)
  bne  $t6, $t5, label78
  j label77
  label78 :
  li $t7, 0
  sw  $t7, -68($fp)
  lw  $t1, 4($fp)
  li  $t2, -2147483648
  div $t2, $t1
  mflo $t0
  sw  $t0, -72($fp)
  lw  $t3, -72($fp)
  lw  $t4, 0($fp)
  blt  $t4, $t3, label84
  j label85
  label84 :
  li $t5, 1
  sw  $t5, -68($fp)
  label85 :
  li  $t6, 0
  lw  $t7, -68($fp)
  bne  $t7, $t6, label76
  j label77
  label76 :
  li $t0, 1
  sw  $t0, -56($fp)
  label77 :
  li  $t1, 0
  lw  $t2, -56($fp)
  bne  $t2, $t1, label51
  j label53
  label53 :
  li $t3, 0
  sw  $t3, -76($fp)
  li $t4, 0
  sw  $t4, -80($fp)
  li  $t5, 0
  lw  $t6, 0($fp)
  ble  $t6, $t5, label91
  j label92
  label91 :
  li $t7, 1
  sw  $t7, -80($fp)
  label92 :
  li  $t0, 0
  lw  $t1, -80($fp)
  bne  $t1, $t0, label90
  j label87
  label90 :
  li $t2, 0
  sw  $t2, -84($fp)
  li  $t3, 0
  lw  $t4, 4($fp)
  ble  $t4, $t3, label93
  j label94
  label93 :
  li $t5, 1
  sw  $t5, -84($fp)
  label94 :
  li  $t6, 0
  lw  $t7, -84($fp)
  bne  $t7, $t6, label89
  j label87
  label89 :
  li $t0, 0
  sw  $t0, -88($fp)
  li  $t1, 0
  lw  $t2, 0($fp)
  bne  $t2, $t1, label95
  j label96
  label95 :
  li $t3, 1
  sw  $t3, -88($fp)
  label96 :
  li  $t4, 0
  lw  $t5, -88($fp)
  bne  $t5, $t4, label88
  j label87
  label88 :
  li $t6, 0
  sw  $t6, -92($fp)
  lw  $t0, 0($fp)
  li  $t1, 2147483647
  div $t1, $t0
  mflo $t7
  sw  $t7, -96($fp)
  lw  $t2, -96($fp)
  lw  $t3, 4($fp)
  blt  $t3, $t2, label97
  j label98
  label97 :
  li $t4, 1
  sw  $t4, -92($fp)
  label98 :
  li  $t5, 0
  lw  $t6, -92($fp)
  bne  $t6, $t5, label86
  j label87
  label86 :
  li $t7, 1
  sw  $t7, -76($fp)
  label87 :
  li  $t0, 0
  lw  $t1, -76($fp)
  bne  $t1, $t0, label51
  j label52
  label51 :
  li $t2, 1
  sw  $t2, -12($fp)
  label52 :
  li  $t3, 0
  lw  $t4, -12($fp)
  bne  $t4, $t3, label49
  j label50
  label49 :
  lw  $t5, 0($fp)
  move  $v0, $t5
  lw  $ra  100($sp) 
  lw  $fp  96($sp) 
  addi $sp, $sp, 104
  jr  $ra
  label50 :
  lw  $t7, 4($fp)
  lw  $t0, 0($fp)
  mul $t6, $t0, $t7
  sw  $t6, -100($fp)
  lw  $t1, -100($fp)
  move  $v0, $t1
  lw  $ra  100($sp) 
  lw  $fp  96($sp) 
  addi $sp, $sp, 104
  jr  $ra
id_Slmo81iyap:
  subu  $sp, $sp, 36
  sw  $ra  32($sp) 
  sw  $fp  28($sp) 
  addi  $fp, $sp , 36
  li $t2, 0
  sw  $t2, -12($fp)
  li $t3, 0
  sw  $t3, -16($fp)
  li  $t4, 0
  lw  $t5, 4($fp)
  beq  $t5, $t4, label104
  j label105
  label104 :
  li $t6, 1
  sw  $t6, -16($fp)
  label105 :
  li  $t7, 0
  lw  $t0, -16($fp)
  bne  $t0, $t7, label101
  j label103
  label103 :
  li $t1, 0
  sw  $t1, -20($fp)
  li $t2, 0
  sw  $t2, -24($fp)
  li  $t3, -2147483648
  lw  $t4, 0($fp)
  beq  $t4, $t3, label109
  j label110
  label109 :
  li $t5, 1
  sw  $t5, -24($fp)
  label110 :
  li  $t6, 0
  lw  $t7, -24($fp)
  bne  $t7, $t6, label108
  j label107
  label108 :
  li $t0, 0
  sw  $t0, -28($fp)
  li  $t1, -1
  lw  $t2, 4($fp)
  beq  $t2, $t1, label111
  j label112
  label111 :
  li $t3, 1
  sw  $t3, -28($fp)
  label112 :
  li  $t4, 0
  lw  $t5, -28($fp)
  bne  $t5, $t4, label106
  j label107
  label106 :
  li $t6, 1
  sw  $t6, -20($fp)
  label107 :
  li  $t7, 0
  lw  $t0, -20($fp)
  bne  $t0, $t7, label101
  j label102
  label101 :
  li $t1, 1
  sw  $t1, -12($fp)
  label102 :
  li  $t2, 0
  lw  $t3, -12($fp)
  bne  $t3, $t2, label99
  j label100
  label99 :
  lw  $t4, 0($fp)
  move  $v0, $t4
  lw  $ra  32($sp) 
  lw  $fp  28($sp) 
  addi $sp, $sp, 36
  jr  $ra
  label100 :
  lw  $t6, 4($fp)
  lw  $t7, 0($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -32($fp)
  lw  $t0, -32($fp)
  move  $v0, $t0
  lw  $ra  32($sp) 
  lw  $fp  28($sp) 
  addi $sp, $sp, 36
  jr  $ra
id_jhDK9J6:
  subu  $sp, $sp, 12
  sw  $ra  8($sp) 
  sw  $fp  4($sp) 
  addi  $fp, $sp , 12
  li  $t1, 0
  lw  $t2, 0($fp)
  blt  $t2, $t1, label113
  j label115
  label115 :
  lw  $t3, 4($fp)
  lw  $t4, 0($fp)
  bge  $t4, $t3, label113
  j label114
  label113 :
  li  $t5, 0
  move  $v0, $t5
  lw  $ra  8($sp) 
  lw  $fp  4($sp) 
  addi $sp, $sp, 12
  jr  $ra
  label114 :
  lw  $t6, 0($fp)
  move  $v0, $t6
  lw  $ra  8($sp) 
  lw  $fp  4($sp) 
  addi $sp, $sp, 12
  jr  $ra
id_nI:
  subu  $sp, $sp, 312
  sw  $ra  308($sp) 
  sw  $fp  304($sp) 
  addi  $fp, $sp , 312
  li  $t0, 0
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -32($fp)
  lw  $t2, -32($fp)
  li  $t3, 13233
  sw $t3, 0($t2)
  li  $t5, 4
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -36($fp)
  lw  $t7, -36($fp)
  li  $t0, 64502
  sw $t0, 0($t7)
  li  $t2, 8
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -40($fp)
  lw  $t4, -40($fp)
  li  $t5, 38847
  sw $t5, 0($t4)
  li  $t7, 12
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -44($fp)
  lw  $t1, -44($fp)
  li  $t2, 59187
  sw $t2, 0($t1)
  li  $t4, 16
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -48($fp)
  lw  $t6, -48($fp)
  li  $t7, 14318
  sw $t7, 0($t6)
  li $t0, 26034
  sw  $t0, -52($fp)
  li $t1, 19547
  sw  $t1, -56($fp)
  li $t2, 62776
  sw  $t2, -60($fp)
  li $t3, 10239
  sw  $t3, -64($fp)
  li $t4, 44731
  sw  $t4, -68($fp)
  li $t5, 19968
  sw  $t5, -72($fp)
  li $t6, 0
  sw  $t6, -76($fp)
  li  $t0, 51900
  lw  $t1, 0($fp)
  mul $t7, $t1, $t0
  sw  $t7, -80($fp)
  li  $t3, 4
  lw  $t4, 16($fp)
  mul $t2, $t4, $t3
  sw  $t2, -84($fp)
  lw  $t6, -84($fp)
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -88($fp)
  lw  $t1, -88($fp)
  lw $t0, 0($t1)
  sw  $t0, -92($fp)
  li $t2, 0
  sw  $t2, -96($fp)
  li  $t3, 0
  li  $t4, 12927
  bne  $t4, $t3, label119
  j label118
  label118 :
  li $t5, 1
  sw  $t5, -96($fp)
  label119 :
  lw  $t7, -96($fp)
  lw  $t0, -92($fp)
  sub $t6, $t0, $t7
  sw  $t6, -100($fp)
  lw  $t1, -100($fp)
  lw  $t2, -80($fp)
  bgt  $t2, $t1, label116
  j label117
  label116 :
  li $t3, 1
  sw  $t3, -76($fp)
  label117 :
  li $t4, 0
  sw  $t4, -104($fp)
  lw  $t6, 16($fp)
  sub $t5, $t6, 0
  lw  $t7, 16($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -108($fp)
  lw  $t1, -64($fp)
  lw  $t2, -108($fp)
  bge  $t2, $t1, label120
  j label121
  label120 :
  li $t3, 1
  sw  $t3, -104($fp)
  label121 :
  lw  $t5, 4($fp)
  move $t4, $t5
  sw  $t4, -60($fp)
  lw  $t7, -52($fp)
  add $t6, $t7, 41954
  sw  $t6, -112($fp)
  li $t0, 0
  sw  $t0, -116($fp)
  li  $t1, 63418
  lw  $t2, 12($fp)
  bge  $t2, $t1, label124
  j label123
  label124 :
  li  $t3, 0
  li  $t4, 11992
  bne  $t4, $t3, label122
  j label123
  label122 :
  li $t5, 1
  sw  $t5, -116($fp)
  label123 :
  addi  $sp, $sp, -4
  lw  $t6, -52($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -116($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -112($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, 4($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -104($fp)
  sw  $t2, 0($sp)
  jal  id_nI
  move  $t3, $v0
  sw  $t3, -120($fp)
  addi  $sp, $sp, 20
  li  $t5, 49292
  lw  $t6, -120($fp)
  mul $t4, $t6, $t5
  sw  $t4, -124($fp)
  li $t7, 0
  sw  $t7, -128($fp)
  li $t0, 0
  sw  $t0, -132($fp)
  li $t1, 0
  sw  $t1, -136($fp)
  li  $t3, 4
  lw  $t4, 12($fp)
  mul $t2, $t4, $t3
  sw  $t2, -140($fp)
  lw  $t6, -140($fp)
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -144($fp)
  lw  $t1, -144($fp)
  lw $t0, 0($t1)
  sw  $t0, -148($fp)
  lw  $t2, -148($fp)
  li  $t3, 55451
  bgt  $t3, $t2, label129
  j label130
  label129 :
  li $t4, 1
  sw  $t4, -136($fp)
  label130 :
  li  $t6, 61170
  lw  $t7, 12($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -152($fp)
  lw  $t1, -72($fp)
  lw  $t2, -152($fp)
  mul $t0, $t2, $t1
  sw  $t0, -156($fp)
  lw  $t4, -64($fp)
  lw  $t5, 12($fp)
  add $t3, $t5, $t4
  sw  $t3, -160($fp)
  li $t6, 0
  sw  $t6, -164($fp)
  lw  $t0, -56($fp)
  sub $t7, $t0, 0
  lw  $t1, -56($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -168($fp)
  lw  $t3, 16($fp)
  lw  $t4, -168($fp)
  blt  $t4, $t3, label131
  j label132
  label131 :
  li $t5, 1
  sw  $t5, -164($fp)
  label132 :
  lw  $t7, 12($fp)
  move $t6, $t7
  sw  $t6, 0($fp)
  addi  $sp, $sp, -4
  lw  $t0, 12($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -164($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -160($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -64($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -156($fp)
  sw  $t4, 0($sp)
  jal  id_nI
  move  $t5, $v0
  sw  $t5, -172($fp)
  addi  $sp, $sp, 20
  lw  $t7, -172($fp)
  sub $t6, $t7, 0
  lw  $t0, -172($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -176($fp)
  lw  $t2, -176($fp)
  lw  $t3, -136($fp)
  blt  $t3, $t2, label127
  j label128
  label127 :
  li $t4, 1
  sw  $t4, -132($fp)
  label128 :
  li $t5, 0
  sw  $t5, -180($fp)
  lw  $t7, -64($fp)
  sub $t6, $t7, 0
  lw  $t0, -64($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -184($fp)
  lw  $t2, 12($fp)
  lw  $t3, -184($fp)
  blt  $t3, $t2, label133
  j label134
  label133 :
  li $t4, 1
  sw  $t4, -180($fp)
  label134 :
  li $t5, 0
  sw  $t5, -188($fp)
  li $t6, 0
  sw  $t6, -192($fp)
  li  $t7, 0
  lw  $t0, -64($fp)
  bne  $t0, $t7, label138
  j label137
  label137 :
  li $t1, 1
  sw  $t1, -192($fp)
  label138 :
  li  $t2, 28975
  lw  $t3, -192($fp)
  blt  $t3, $t2, label135
  j label136
  label135 :
  li $t4, 1
  sw  $t4, -188($fp)
  label136 :
  li $t5, 0
  sw  $t5, -196($fp)
  li  $t6, 0
  li  $t7, 36134
  bne  $t7, $t6, label140
  j label139
  label139 :
  li $t0, 1
  sw  $t0, -196($fp)
  label140 :
  li $t1, 0
  sw  $t1, -200($fp)
  li  $t2, 0
  li  $t3, 31708
  bne  $t3, $t2, label143
  j label142
  label143 :
  li  $t4, 0
  li  $t5, 15985
  bne  $t5, $t4, label141
  j label142
  label141 :
  li $t6, 1
  sw  $t6, -200($fp)
  label142 :
  li  $t0, 4
  lw  $t1, -56($fp)
  mul $t7, $t1, $t0
  sw  $t7, -204($fp)
  lw  $t3, -204($fp)
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -208($fp)
  lw  $t6, -208($fp)
  lw $t5, 0($t6)
  sw  $t5, -212($fp)
  addi  $sp, $sp, -4
  lw  $t7, -212($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -200($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -196($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -188($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -180($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -216($fp)
  addi  $sp, $sp, 20
  lw  $t5, -216($fp)
  lw  $t6, -132($fp)
  bge  $t6, $t5, label125
  j label126
  label125 :
  li $t7, 1
  sw  $t7, -128($fp)
  label126 :
  li $t0, 0
  sw  $t0, -220($fp)
  li  $t1, 0
  li  $t2, 9871
  bne  $t2, $t1, label147
  j label145
  label147 :
  li  $t3, 0
  lw  $t4, 12($fp)
  bne  $t4, $t3, label146
  j label145
  label146 :
  li  $t5, 0
  lw  $t6, 12($fp)
  bne  $t6, $t5, label144
  j label145
  label144 :
  li $t7, 1
  sw  $t7, -220($fp)
  label145 :
  li $t0, 0
  sw  $t0, -224($fp)
  li  $t1, 0
  lw  $t2, 8($fp)
  bne  $t2, $t1, label148
  j label151
  label151 :
  li  $t3, 0
  li  $t4, 14782
  bne  $t4, $t3, label148
  j label150
  label150 :
  li  $t5, 0
  li  $t6, 64538
  bne  $t6, $t5, label148
  j label149
  label148 :
  li $t7, 1
  sw  $t7, -224($fp)
  label149 :
  li $t0, 0
  sw  $t0, -228($fp)
  lw  $t2, -60($fp)
  sub $t1, $t2, 51749
  lw  $t3, -60($fp)
  li  $t4, 51749
  sub $t1, $t4, $t3
  sw  $t1, -232($fp)
  li  $t5, 11663
  lw  $t6, -232($fp)
  bne  $t6, $t5, label152
  j label153
  label152 :
  li $t7, 1
  sw  $t7, -228($fp)
  label153 :
  li $t0, 0
  sw  $t0, -236($fp)
  lw  $t2, -68($fp)
  lw  $t3, 8($fp)
  sub $t1, $t3, $t2
  sw  $t1, -240($fp)
  li  $t4, 42861
  lw  $t5, -240($fp)
  ble  $t5, $t4, label154
  j label155
  label154 :
  li $t6, 1
  sw  $t6, -236($fp)
  label155 :
  addi  $sp, $sp, -4
  lw  $t7, 12($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -236($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -228($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -224($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -220($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -244($fp)
  addi  $sp, $sp, 20
  lw  $t6, -244($fp)
  sub $t5, $t6, 0
  lw  $t7, -244($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -248($fp)
  lw  $t2, -248($fp)
  sub $t1, $t2, 0
  lw  $t3, -248($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -252($fp)
  li  $t6, 0
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -256($fp)
  lw  $t1, -256($fp)
  lw $t0, 0($t1)
  sw  $t0, -260($fp)
  lw  $t2, -260($fp)
  move $a0, $t2
  jal  write
  li  $t4, 4
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -264($fp)
  lw  $t7, -264($fp)
  lw $t6, 0($t7)
  sw  $t6, -268($fp)
  lw  $t0, -268($fp)
  move $a0, $t0
  jal  write
  li  $t2, 8
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -272($fp)
  lw  $t5, -272($fp)
  lw $t4, 0($t5)
  sw  $t4, -276($fp)
  lw  $t6, -276($fp)
  move $a0, $t6
  jal  write
  li  $t0, 12
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -280($fp)
  lw  $t3, -280($fp)
  lw $t2, 0($t3)
  sw  $t2, -284($fp)
  lw  $t4, -284($fp)
  move $a0, $t4
  jal  write
  li  $t6, 16
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -288($fp)
  lw  $t1, -288($fp)
  lw $t0, 0($t1)
  sw  $t0, -292($fp)
  lw  $t2, -292($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -52($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -56($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -60($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -64($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -68($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -72($fp)
  move $a0, $t0
  jal  write
  li $t1, 0
  sw  $t1, -296($fp)
  li  $t2, 24897
  li  $t3, 44818
  bgt  $t3, $t2, label156
  j label157
  label156 :
  li $t4, 1
  sw  $t4, -296($fp)
  label157 :
  li  $t6, 4
  lw  $t7, -296($fp)
  mul $t5, $t7, $t6
  sw  $t5, -300($fp)
  lw  $t1, -300($fp)
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -304($fp)
  lw  $t4, -304($fp)
  lw $t3, 0($t4)
  sw  $t3, -308($fp)
  lw  $t6, -308($fp)
  move $t5, $t6
  sw  $t5, -64($fp)
  lw  $t7, -308($fp)
  move  $v0, $t7
  lw  $ra  308($sp) 
  lw  $fp  304($sp) 
  addi $sp, $sp, 312
  jr  $ra
id_IBvdWNifc:
  subu  $sp, $sp, 2196
  sw  $ra  2192($sp) 
  sw  $fp  2188($sp) 
  addi  $fp, $sp , 2196
  li $t0, 41828
  sw  $t0, -12($fp)
  li $t1, 18130
  sw  $t1, -204($fp)
  li $t2, 18548
  sw  $t2, -208($fp)
  li $t3, 56146
  sw  $t3, -212($fp)
  li $t4, 44164
  sw  $t4, -216($fp)
  li  $t6, 0
  la  $t7, -16($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -220($fp)
  lw  $t0, -220($fp)
  li  $t1, 38095
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -16($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -224($fp)
  lw  $t5, -224($fp)
  li  $t6, 53386
  sw $t6, 0($t5)
  li $t7, 54403
  sw  $t7, -228($fp)
  li $t0, 17290
  sw  $t0, -232($fp)
  li $t1, 7819
  sw  $t1, -236($fp)
  li $t2, 40768
  sw  $t2, -240($fp)
  li $t3, 30217
  sw  $t3, -244($fp)
  li $t4, 49773
  sw  $t4, -248($fp)
  li $t5, 38650
  sw  $t5, -252($fp)
  li $t6, 42209
  sw  $t6, -256($fp)
  li $t7, 33530
  sw  $t7, -260($fp)
  li $t0, 10330
  sw  $t0, -264($fp)
  li  $t2, 0
  la  $t3, -24($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -268($fp)
  lw  $t4, -268($fp)
  li  $t5, 32124
  sw $t5, 0($t4)
  li  $t7, 4
  la  $t0, -24($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -272($fp)
  lw  $t1, -272($fp)
  li  $t2, 29164
  sw $t2, 0($t1)
  li  $t4, 8
  la  $t5, -24($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -276($fp)
  lw  $t6, -276($fp)
  li  $t7, 39305
  sw $t7, 0($t6)
  li  $t1, 0
  la  $t2, -36($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -280($fp)
  lw  $t3, -280($fp)
  li  $t4, 2722
  sw $t4, 0($t3)
  li  $t6, 4
  la  $t7, -36($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -284($fp)
  lw  $t0, -284($fp)
  li  $t1, 60872
  sw $t1, 0($t0)
  li  $t3, 0
  la  $t4, -44($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -288($fp)
  lw  $t5, -288($fp)
  li  $t6, 55290
  sw $t6, 0($t5)
  li $t7, 12594
  sw  $t7, -292($fp)
  li $t0, 10119
  sw  $t0, -296($fp)
  li $t1, 54292
  sw  $t1, -300($fp)
  li  $t3, 0
  la  $t4, -48($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -304($fp)
  lw  $t5, -304($fp)
  li  $t6, 64343
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -48($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -308($fp)
  lw  $t2, -308($fp)
  li  $t3, 21782
  sw $t3, 0($t2)
  li  $t5, 8
  la  $t6, -48($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -312($fp)
  lw  $t7, -312($fp)
  li  $t0, 31618
  sw $t0, 0($t7)
  li  $t2, 12
  la  $t3, -48($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -316($fp)
  lw  $t4, -316($fp)
  li  $t5, 43625
  sw $t5, 0($t4)
  li  $t7, 16
  la  $t0, -48($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -320($fp)
  lw  $t1, -320($fp)
  li  $t2, 46679
  sw $t2, 0($t1)
  li  $t4, 20
  la  $t5, -48($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -324($fp)
  lw  $t6, -324($fp)
  li  $t7, 7910
  sw $t7, 0($t6)
  li  $t1, 24
  la  $t2, -48($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -328($fp)
  lw  $t3, -328($fp)
  li  $t4, 61755
  sw $t4, 0($t3)
  li  $t6, 28
  la  $t7, -48($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -332($fp)
  lw  $t0, -332($fp)
  li  $t1, 65227
  sw $t1, 0($t0)
  li  $t3, 32
  la  $t4, -48($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -336($fp)
  lw  $t5, -336($fp)
  li  $t6, 64056
  sw $t6, 0($t5)
  li  $t0, 0
  la  $t1, -84($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -340($fp)
  lw  $t2, -340($fp)
  li  $t3, 40384
  sw $t3, 0($t2)
  li  $t5, 4
  la  $t6, -84($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -344($fp)
  lw  $t7, -344($fp)
  li  $t0, 37786
  sw $t0, 0($t7)
  li  $t2, 8
  la  $t3, -84($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -348($fp)
  lw  $t4, -348($fp)
  li  $t5, 51907
  sw $t5, 0($t4)
  li  $t7, 12
  la  $t0, -84($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -352($fp)
  lw  $t1, -352($fp)
  li  $t2, 29251
  sw $t2, 0($t1)
  li  $t4, 16
  la  $t5, -84($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -356($fp)
  lw  $t6, -356($fp)
  li  $t7, 55076
  sw $t7, 0($t6)
  li  $t1, 20
  la  $t2, -84($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -360($fp)
  lw  $t3, -360($fp)
  li  $t4, 59726
  sw $t4, 0($t3)
  li  $t6, 24
  la  $t7, -84($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -364($fp)
  lw  $t0, -364($fp)
  li  $t1, 4483
  sw $t1, 0($t0)
  li  $t3, 28
  la  $t4, -84($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -368($fp)
  lw  $t5, -368($fp)
  li  $t6, 19757
  sw $t6, 0($t5)
  li  $t0, 32
  la  $t1, -84($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -372($fp)
  lw  $t2, -372($fp)
  li  $t3, 43963
  sw $t3, 0($t2)
  li $t4, 43133
  sw  $t4, -376($fp)
  li $t5, 61966
  sw  $t5, -380($fp)
  li $t6, 11957
  sw  $t6, -384($fp)
  li $t7, 53463
  sw  $t7, -388($fp)
  li $t0, 28554
  sw  $t0, -392($fp)
  li $t1, 41122
  sw  $t1, -396($fp)
  li  $t3, 0
  la  $t4, -120($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -400($fp)
  lw  $t5, -400($fp)
  li  $t6, 27232
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -120($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -404($fp)
  lw  $t2, -404($fp)
  li  $t3, 31277
  sw $t3, 0($t2)
  li  $t5, 8
  la  $t6, -120($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -408($fp)
  lw  $t7, -408($fp)
  li  $t0, 36458
  sw $t0, 0($t7)
  li  $t2, 12
  la  $t3, -120($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -412($fp)
  lw  $t4, -412($fp)
  li  $t5, 16987
  sw $t5, 0($t4)
  li  $t7, 16
  la  $t0, -120($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -416($fp)
  lw  $t1, -416($fp)
  li  $t2, 43871
  sw $t2, 0($t1)
  li $t3, 46577
  sw  $t3, -420($fp)
  li $t4, 5743
  sw  $t4, -424($fp)
  li $t5, 42678
  sw  $t5, -428($fp)
  li $t6, 2824
  sw  $t6, -432($fp)
  li $t7, 37361
  sw  $t7, -436($fp)
  li $t0, 20767
  sw  $t0, -440($fp)
  li $t1, 49503
  sw  $t1, -444($fp)
  li  $t3, 0
  la  $t4, -140($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -448($fp)
  lw  $t5, -448($fp)
  li  $t6, 45271
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -140($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -452($fp)
  lw  $t2, -452($fp)
  li  $t3, 16987
  sw $t3, 0($t2)
  li  $t5, 8
  la  $t6, -140($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -456($fp)
  lw  $t7, -456($fp)
  li  $t0, 49195
  sw $t0, 0($t7)
  li  $t2, 12
  la  $t3, -140($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -460($fp)
  lw  $t4, -460($fp)
  li  $t5, 43792
  sw $t5, 0($t4)
  li  $t7, 16
  la  $t0, -140($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -464($fp)
  lw  $t1, -464($fp)
  li  $t2, 57371
  sw $t2, 0($t1)
  li $t3, 21445
  sw  $t3, -468($fp)
  li $t4, 30163
  sw  $t4, -472($fp)
  li $t5, 21086
  sw  $t5, -476($fp)
  li  $t7, 0
  la  $t0, -160($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -480($fp)
  lw  $t1, -480($fp)
  li  $t2, 10986
  sw $t2, 0($t1)
  li  $t4, 4
  la  $t5, -160($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -484($fp)
  lw  $t6, -484($fp)
  li  $t7, 24353
  sw $t7, 0($t6)
  li  $t1, 8
  la  $t2, -160($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -488($fp)
  lw  $t3, -488($fp)
  li  $t4, 25570
  sw $t4, 0($t3)
  li  $t6, 12
  la  $t7, -160($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -492($fp)
  lw  $t0, -492($fp)
  li  $t1, 30743
  sw $t1, 0($t0)
  li  $t3, 16
  la  $t4, -160($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -496($fp)
  lw  $t5, -496($fp)
  li  $t6, 2780
  sw $t6, 0($t5)
  li  $t0, 20
  la  $t1, -160($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -500($fp)
  lw  $t2, -500($fp)
  li  $t3, 3167
  sw $t3, 0($t2)
  li  $t5, 24
  la  $t6, -160($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -504($fp)
  lw  $t7, -504($fp)
  li  $t0, 27174
  sw $t0, 0($t7)
  li  $t2, 28
  la  $t3, -160($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -508($fp)
  lw  $t4, -508($fp)
  li  $t5, 14738
  sw $t5, 0($t4)
  li  $t7, 32
  la  $t0, -160($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -512($fp)
  lw  $t1, -512($fp)
  li  $t2, 56631
  sw $t2, 0($t1)
  li $t3, 55728
  sw  $t3, -516($fp)
  li $t4, 55860
  sw  $t4, -520($fp)
  li $t5, 18327
  sw  $t5, -524($fp)
  li  $t7, 0
  la  $t0, -196($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -528($fp)
  lw  $t1, -528($fp)
  li  $t2, 21469
  sw $t2, 0($t1)
  li  $t4, 4
  la  $t5, -196($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -532($fp)
  lw  $t6, -532($fp)
  li  $t7, 26782
  sw $t7, 0($t6)
  li $t0, 35314
  sw  $t0, -536($fp)
  li $t1, 65340
  sw  $t1, -540($fp)
  li $t2, 7824
  sw  $t2, -544($fp)
  li $t3, 41058
  sw  $t3, -548($fp)
  li $t4, 42482
  sw  $t4, -552($fp)
  li $t5, 10648
  sw  $t5, -556($fp)
  li $t6, 12883
  sw  $t6, -560($fp)
  lw  $t0, -384($fp)
  add $t7, $t0, 63250
  sw  $t7, -564($fp)
  li  $t1, 0
  li  $t2, 60151
  bne  $t2, $t1, label160
  j label161
  label160 :
  li  $t3, 0
  li  $t4, -58155
  bne  $t4, $t3, label163
  j label164
  label163 :
  li  $t6, 0
  la  $t7, -568($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -640($fp)
  lw  $t0, -640($fp)
  li  $t1, 14701
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -568($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -644($fp)
  lw  $t5, -644($fp)
  li  $t6, 43810
  sw $t6, 0($t5)
  li  $t0, 8
  la  $t1, -568($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -648($fp)
  lw  $t2, -648($fp)
  li  $t3, 36411
  sw $t3, 0($t2)
  li  $t5, 12
  la  $t6, -568($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -652($fp)
  lw  $t7, -652($fp)
  li  $t0, 6536
  sw $t0, 0($t7)
  li  $t2, 16
  la  $t3, -568($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -656($fp)
  lw  $t4, -656($fp)
  li  $t5, 65256
  sw $t5, 0($t4)
  li  $t7, 20
  la  $t0, -568($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -660($fp)
  lw  $t1, -660($fp)
  li  $t2, 1038
  sw $t2, 0($t1)
  li  $t4, 24
  la  $t5, -568($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -664($fp)
  lw  $t6, -664($fp)
  li  $t7, 27622
  sw $t7, 0($t6)
  li  $t1, 28
  la  $t2, -568($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -668($fp)
  lw  $t3, -668($fp)
  li  $t4, 10706
  sw $t4, 0($t3)
  li  $t6, 0
  la  $t7, -600($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -672($fp)
  lw  $t0, -672($fp)
  li  $t1, 25391
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -600($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -676($fp)
  lw  $t5, -676($fp)
  li  $t6, 53192
  sw $t6, 0($t5)
  li  $t0, 8
  la  $t1, -600($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -680($fp)
  lw  $t2, -680($fp)
  li  $t3, 41449
  sw $t3, 0($t2)
  li  $t5, 12
  la  $t6, -600($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -684($fp)
  lw  $t7, -684($fp)
  li  $t0, 28171
  sw $t0, 0($t7)
  li  $t2, 16
  la  $t3, -600($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -688($fp)
  lw  $t4, -688($fp)
  li  $t5, 56360
  sw $t5, 0($t4)
  li  $t7, 20
  la  $t0, -600($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -692($fp)
  lw  $t1, -692($fp)
  li  $t2, 3087
  sw $t2, 0($t1)
  li  $t4, 24
  la  $t5, -600($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -696($fp)
  lw  $t6, -696($fp)
  li  $t7, 42909
  sw $t7, 0($t6)
  li  $t1, 28
  la  $t2, -600($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -700($fp)
  lw  $t3, -700($fp)
  li  $t4, 47455
  sw $t4, 0($t3)
  li  $t6, 32
  la  $t7, -600($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -704($fp)
  lw  $t0, -704($fp)
  li  $t1, 58816
  sw $t1, 0($t0)
  li  $t3, 36
  la  $t4, -600($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -708($fp)
  lw  $t5, -708($fp)
  li  $t6, 33233
  sw $t6, 0($t5)
  li $t7, 246
  sw  $t7, -712($fp)
  li  $t1, 16
  la  $t2, -48($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -716($fp)
  lw  $t4, -716($fp)
  lw $t3, 0($t4)
  sw  $t3, -720($fp)
  li $t5, 0
  sw  $t5, -724($fp)
  li  $t7, 8
  la  $t0, -600($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -728($fp)
  lw  $t2, -728($fp)
  lw $t1, 0($t2)
  sw  $t1, -732($fp)
  lw  $t3, -384($fp)
  lw  $t4, -732($fp)
  blt  $t4, $t3, label166
  j label167
  label166 :
  li $t5, 1
  sw  $t5, -724($fp)
  label167 :
  li $t6, 0
  sw  $t6, -736($fp)
  li $t7, 0
  sw  $t7, -740($fp)
  li $t0, 0
  sw  $t0, -744($fp)
  lw  $t2, -264($fp)
  move $t1, $t2
  sw  $t1, -388($fp)
  li $t3, 0
  sw  $t3, -748($fp)
  lw  $t4, -384($fp)
  lw  $t5, -444($fp)
  bgt  $t5, $t4, label177
  j label176
  label177 :
  li  $t6, 0
  li  $t7, 2304
  bne  $t7, $t6, label175
  j label176
  label175 :
  li $t0, 1
  sw  $t0, -748($fp)
  label176 :
  li $t1, 0
  sw  $t1, -752($fp)
  li  $t2, 0
  li  $t3, 11083
  bne  $t3, $t2, label179
  j label178
  label178 :
  li $t4, 1
  sw  $t4, -752($fp)
  label179 :
  lw  $t6, -752($fp)
  sub $t5, $t6, 0
  lw  $t7, -752($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -756($fp)
  addi  $sp, $sp, -4
  lw  $t1, -756($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -748($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -264($fp)
  sw  $t3, 0($sp)
  jal  id_IBvdWNifc
  move  $t4, $v0
  sw  $t4, -760($fp)
  addi  $sp, $sp, 12
  li  $t5, 0
  lw  $t6, -760($fp)
  bne  $t6, $t5, label174
  j label173
  label173 :
  li $t7, 1
  sw  $t7, -744($fp)
  label174 :
  li $t0, 0
  sw  $t0, -764($fp)
  li  $t1, 0
  lw  $t2, -244($fp)
  bne  $t2, $t1, label180
  j label183
  label183 :
  li  $t3, 0
  li  $t4, 57036
  bne  $t4, $t3, label180
  j label182
  label182 :
  li  $t5, 0
  li  $t6, 12952
  bne  $t6, $t5, label180
  j label181
  label180 :
  li $t7, 1
  sw  $t7, -764($fp)
  label181 :
  lw  $t1, -260($fp)
  add $t0, $t1, 23966
  lw  $t2, -260($fp)
  li  $t3, 23966
  add $t0, $t3, $t2
  sw  $t0, -768($fp)
  li $t4, 0
  sw  $t4, -772($fp)
  li  $t6, 8
  la  $t7, -140($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -776($fp)
  lw  $t1, -776($fp)
  lw $t0, 0($t1)
  sw  $t0, -780($fp)
  lw  $t2, -244($fp)
  lw  $t3, -780($fp)
  bge  $t3, $t2, label184
  j label185
  label184 :
  li $t4, 1
  sw  $t4, -772($fp)
  label185 :
  addi  $sp, $sp, -4
  li  $t5, 16585
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -772($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -768($fp)
  sw  $t7, 0($sp)
  jal  id_IBvdWNifc
  move  $t0, $v0
  sw  $t0, -784($fp)
  addi  $sp, $sp, 12
  li  $t2, 0
  la  $t3, -16($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -788($fp)
  lw  $t5, -788($fp)
  lw $t4, 0($t5)
  sw  $t4, -792($fp)
  lw  $t7, -792($fp)
  sub $t6, $t7, 0
  lw  $t0, -792($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -796($fp)
  li $t2, 0
  sw  $t2, -800($fp)
  li  $t4, 0
  la  $t5, -44($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -804($fp)
  lw  $t7, -804($fp)
  lw $t6, 0($t7)
  sw  $t6, -808($fp)
  li  $t0, 0
  lw  $t1, -808($fp)
  bne  $t1, $t0, label187
  j label186
  label186 :
  li $t2, 1
  sw  $t2, -800($fp)
  label187 :
  addi  $sp, $sp, -4
  lw  $t3, -800($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -796($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -784($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -764($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -744($fp)
  sw  $t7, 0($sp)
  jal  id_nI
  move  $t0, $v0
  sw  $t0, -812($fp)
  addi  $sp, $sp, 20
  li $t1, 0
  sw  $t1, -816($fp)
  li  $t2, 54034
  li  $t3, 51098
  blt  $t3, $t2, label188
  j label189
  label188 :
  li $t4, 1
  sw  $t4, -816($fp)
  label189 :
  li $t5, 0
  sw  $t5, -820($fp)
  li  $t6, 0
  li  $t7, 38074
  bne  $t7, $t6, label191
  j label190
  label190 :
  li $t0, 1
  sw  $t0, -820($fp)
  label191 :
  lw  $t2, -820($fp)
  sub $t1, $t2, 0
  lw  $t3, -820($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -824($fp)
  li $t5, 0
  sw  $t5, -828($fp)
  li  $t6, 0
  li  $t7, 61804
  bne  $t7, $t6, label194
  j label193
  label194 :
  li  $t0, 0
  li  $t1, 13889
  bne  $t1, $t0, label192
  j label193
  label192 :
  li $t2, 1
  sw  $t2, -828($fp)
  label193 :
  addi  $sp, $sp, -4
  lw  $t3, -828($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -824($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -816($fp)
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -832($fp)
  addi  $sp, $sp, 12
  lw  $t0, -832($fp)
  lw  $t1, -812($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -836($fp)
  lw  $t2, -392($fp)
  lw  $t3, -836($fp)
  bne  $t3, $t2, label171
  j label172
  label171 :
  li $t4, 1
  sw  $t4, -740($fp)
  label172 :
  lw  $t5, 8($fp)
  lw  $t6, -740($fp)
  ble  $t6, $t5, label168
  j label170
  label170 :
  li  $t7, 0
  li  $t0, 25730
  bne  $t0, $t7, label168
  j label169
  label168 :
  li $t1, 1
  sw  $t1, -736($fp)
  label169 :
  lw  $t3, -236($fp)
  sub $t2, $t3, 0
  lw  $t4, -236($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -840($fp)
  lw  $t7, -840($fp)
  add $t6, $t7, 1586414737
  lw  $t0, -840($fp)
  li  $t1, 1586414737
  add $t6, $t1, $t0
  sw  $t6, -844($fp)
  lw  $t3, -248($fp)
  lw  $t4, -468($fp)
  sub $t2, $t4, $t3
  sw  $t2, -848($fp)
  lw  $t6, -236($fp)
  lw  $t7, -848($fp)
  sub $t5, $t7, $t6
  sw  $t5, -852($fp)
  li  $t1, 20
  la  $t2, -568($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -856($fp)
  lw  $t4, -856($fp)
  lw $t3, 0($t4)
  sw  $t3, -860($fp)
  lw  $t6, -860($fp)
  lw  $t7, -852($fp)
  add $t5, $t7, $t6
  sw  $t5, -864($fp)
  li  $t1, 4
  lw  $t2, -864($fp)
  mul $t0, $t2, $t1
  sw  $t0, -868($fp)
  lw  $t4, -868($fp)
  la  $t5, -48($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -872($fp)
  lw  $t7, -872($fp)
  lw $t6, 0($t7)
  sw  $t6, -876($fp)
  li $t0, 0
  sw  $t0, -880($fp)
  lw  $t2, -420($fp)
  li  $t3, 19434
  div $t3, $t2
  mflo $t1
  sw  $t1, -884($fp)
  lw  $t5, -256($fp)
  lw  $t6, -884($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -888($fp)
  li $t7, 0
  sw  $t7, -892($fp)
  li  $t0, 34085
  li  $t1, 64009
  ble  $t1, $t0, label198
  j label199
  label198 :
  li $t2, 1
  sw  $t2, -892($fp)
  label199 :
  li $t3, 0
  sw  $t3, -896($fp)
  lw  $t4, -376($fp)
  lw  $t5, -548($fp)
  beq  $t5, $t4, label200
  j label202
  label202 :
  li  $t6, 0
  lw  $t7, -384($fp)
  bne  $t7, $t6, label200
  j label201
  label200 :
  li $t0, 1
  sw  $t0, -896($fp)
  label201 :
  addi  $sp, $sp, -4
  li  $t1, 52668
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -896($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -892($fp)
  sw  $t3, 0($sp)
  jal  id_IBvdWNifc
  move  $t4, $v0
  sw  $t4, -900($fp)
  addi  $sp, $sp, 12
  li $t5, 0
  sw  $t5, -904($fp)
  li  $t6, 0
  li  $t7, 64256
  bne  $t7, $t6, label205
  j label203
  label205 :
  li  $t0, 0
  li  $t1, 48834
  bne  $t1, $t0, label203
  j label204
  label203 :
  li $t2, 1
  sw  $t2, -904($fp)
  label204 :
  addi  $sp, $sp, -4
  lw  $t3, -904($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -900($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -888($fp)
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -908($fp)
  addi  $sp, $sp, 12
  li  $t0, 47148
  lw  $t1, -908($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -912($fp)
  li  $t2, 0
  lw  $t3, -912($fp)
  bne  $t3, $t2, label197
  j label196
  label197 :
  li $t4, 0
  sw  $t4, -916($fp)
  li $t5, 0
  sw  $t5, -920($fp)
  li  $t6, 0
  lw  $t7, -296($fp)
  bne  $t7, $t6, label208
  j label211
  label211 :
  li  $t0, 0
  lw  $t1, -556($fp)
  bne  $t1, $t0, label208
  j label210
  label210 :
  li  $t2, 0
  li  $t3, 34281
  bne  $t3, $t2, label208
  j label209
  label208 :
  li $t4, 1
  sw  $t4, -920($fp)
  label209 :
  li $t5, 0
  sw  $t5, -924($fp)
  li  $t6, 0
  lw  $t7, -544($fp)
  bne  $t7, $t6, label213
  j label214
  label214 :
  li  $t0, 0
  lw  $t1, -560($fp)
  bne  $t1, $t0, label212
  j label213
  label212 :
  li $t2, 1
  sw  $t2, -924($fp)
  label213 :
  li $t3, 0
  sw  $t3, -928($fp)
  lw  $t4, -524($fp)
  li  $t5, 63388
  beq  $t5, $t4, label215
  j label216
  label215 :
  li $t6, 1
  sw  $t6, -928($fp)
  label216 :
  li $t7, 45364
  sw  $t7, -212($fp)
  lw  $t1, -392($fp)
  lw  $t2, -712($fp)
  add $t0, $t2, $t1
  sw  $t0, -932($fp)
  lw  $t4, -712($fp)
  lw  $t5, -932($fp)
  sub $t3, $t5, $t4
  sw  $t3, -936($fp)
  addi  $sp, $sp, -4
  lw  $t6, -936($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 45364
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -928($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -924($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -920($fp)
  sw  $t2, 0($sp)
  jal  id_nI
  move  $t3, $v0
  sw  $t3, -940($fp)
  addi  $sp, $sp, 20
  li  $t4, 54889
  lw  $t5, -940($fp)
  bne  $t5, $t4, label206
  j label207
  label206 :
  li $t6, 1
  sw  $t6, -916($fp)
  label207 :
  li  $t7, 62404
  lw  $t0, -916($fp)
  bge  $t0, $t7, label195
  j label196
  label195 :
  li $t1, 1
  sw  $t1, -880($fp)
  label196 :
  j label165
  label164 :
  li $t2, 0
  sw  $t2, -944($fp)
  lw  $t4, -376($fp)
  lw  $t5, -216($fp)
  mul $t3, $t5, $t4
  sw  $t3, -948($fp)
  li $t6, 0
  sw  $t6, -952($fp)
  lw  $t0, -244($fp)
  lw  $t1, -476($fp)
  mul $t7, $t1, $t0
  sw  $t7, -956($fp)
  li  $t2, 0
  lw  $t3, -956($fp)
  bne  $t3, $t2, label221
  j label220
  label221 :
  li  $t4, 0
  li  $t5, 3794
  bne  $t5, $t4, label219
  j label220
  label219 :
  li $t6, 1
  sw  $t6, -952($fp)
  label220 :
  lw  $t0, -204($fp)
  add $t7, $t0, 4435
  sw  $t7, -960($fp)
  li $t1, 0
  sw  $t1, -964($fp)
  li  $t2, 48019
  li  $t3, 20380
  bge  $t3, $t2, label224
  j label223
  label224 :
  li  $t4, 0
  lw  $t5, 0($fp)
  bne  $t5, $t4, label222
  j label223
  label222 :
  li $t6, 1
  sw  $t6, -964($fp)
  label223 :
  addi  $sp, $sp, -4
  lw  $t7, -964($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -960($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 44103
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -540($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -952($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -968($fp)
  addi  $sp, $sp, 20
  li $t5, 0
  sw  $t5, -972($fp)
  li  $t6, 58470
  li  $t7, 7840
  beq  $t7, $t6, label225
  j label226
  label225 :
  li $t0, 1
  sw  $t0, -972($fp)
  label226 :
  lw  $t2, -392($fp)
  move $t1, $t2
  sw  $t1, -444($fp)
  addi  $sp, $sp, -4
  lw  $t3, -392($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -972($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, -55813
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -968($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -948($fp)
  sw  $t7, 0($sp)
  jal  id_nI
  move  $t0, $v0
  sw  $t0, -976($fp)
  addi  $sp, $sp, 20
  li  $t1, 0
  lw  $t2, -976($fp)
  bne  $t2, $t1, label217
  j label218
  label217 :
  li $t3, 1
  sw  $t3, -944($fp)
  label218 :
  lw  $t5, -944($fp)
  sub $t4, $t5, 0
  lw  $t6, -944($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -980($fp)
  lw  $t0, -980($fp)
  move  $v0, $t0
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
  label165 :
  j label162
  label161 :
  li $t1, 0
  sw  $t1, -984($fp)
  lw  $t3, 4($fp)
  lw  $t4, -248($fp)
  add $t2, $t4, $t3
  sw  $t2, -988($fp)
  li  $t5, 0
  lw  $t6, -988($fp)
  bne  $t6, $t5, label227
  j label229
  label229 :
  lw  $t0, -468($fp)
  lw  $t1, 8($fp)
  mul $t7, $t1, $t0
  sw  $t7, -992($fp)
  lw  $t3, -992($fp)
  add $t2, $t3, 1282956000
  lw  $t4, -992($fp)
  li  $t5, 1282956000
  add $t2, $t5, $t4
  sw  $t2, -996($fp)
  li  $t6, 0
  lw  $t7, -996($fp)
  bne  $t7, $t6, label227
  j label228
  label227 :
  li $t0, 1
  sw  $t0, -984($fp)
  label228 :
  lw  $t1, -984($fp)
  move  $v0, $t1
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
  li $t2, 37643
  sw  $t2, -12($fp)
  li $t3, 37643
  sw  $t3, -440($fp)
  li  $t4, 0
  li  $t5, 37643
  bne  $t5, $t4, label230
  j label231
  label230 :
  li $t6, 0
  sw  $t6, -1000($fp)
  li $t7, 0
  sw  $t7, -1004($fp)
  li  $t0, 0
  li  $t1, -10228
  bne  $t1, $t0, label236
  j label235
  label235 :
  li $t2, 1
  sw  $t2, -1004($fp)
  label236 :
  li $t3, 0
  sw  $t3, -1008($fp)
  li  $t4, 0
  lw  $t5, -472($fp)
  bne  $t5, $t4, label237
  j label238
  label237 :
  li $t6, 1
  sw  $t6, -1008($fp)
  label238 :
  li $t7, 0
  sw  $t7, -1012($fp)
  li  $t0, 56739
  lw  $t1, -472($fp)
  beq  $t1, $t0, label239
  j label240
  label239 :
  li $t2, 1
  sw  $t2, -1012($fp)
  label240 :
  addi  $sp, $sp, -4
  lw  $t3, -1012($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1008($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1004($fp)
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -1016($fp)
  addi  $sp, $sp, 12
  li  $t7, 0
  lw  $t0, -1016($fp)
  bne  $t0, $t7, label234
  j label233
  label233 :
  li $t1, 1
  sw  $t1, -1000($fp)
  label234 :
  lw  $t3, -1000($fp)
  sub $t2, $t3, 0
  lw  $t4, -1000($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -1020($fp)
  li $t6, 0
  sw  $t6, -1024($fp)
  li  $t7, 0
  li  $t0, 9825
  bne  $t0, $t7, label241
  j label243
  label243 :
  li  $t1, 0
  li  $t2, 52289
  bne  $t2, $t1, label241
  j label242
  label241 :
  li $t3, 1
  sw  $t3, -1024($fp)
  label242 :
  li  $t5, 4
  lw  $t6, -1024($fp)
  mul $t4, $t6, $t5
  sw  $t4, -1028($fp)
  lw  $t0, -1028($fp)
  la  $t1, -24($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1032($fp)
  lw  $t3, -1032($fp)
  lw $t2, 0($t3)
  sw  $t2, -1036($fp)
  lw  $t5, -1036($fp)
  lw  $t6, -1020($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -1040($fp)
  lw  $t7, -1040($fp)
  move  $v0, $t7
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
  j label232
  label231 :
  li $t0, 0
  sw  $t0, -1044($fp)
  lw  $t1, -204($fp)
  li  $t2, 7757
  bgt  $t2, $t1, label244
  j label245
  label244 :
  li $t3, 1
  sw  $t3, -1044($fp)
  label245 :
  li  $t5, 4
  lw  $t6, -1044($fp)
  mul $t4, $t6, $t5
  sw  $t4, -1048($fp)
  lw  $t0, -1048($fp)
  la  $t1, -140($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1052($fp)
  lw  $t3, -1052($fp)
  lw $t2, 0($t3)
  sw  $t2, -1056($fp)
  lw  $t5, -1056($fp)
  sub $t4, $t5, 0
  lw  $t6, -1056($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -1060($fp)
  li  $t1, 50630
  lw  $t2, -1060($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1064($fp)
  lw  $t3, -1064($fp)
  move  $v0, $t3
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
  label232 :
  label162 :
  li $t4, 0
  sw  $t4, -1068($fp)
  li $t5, 0
  sw  $t5, -1072($fp)
  li $t6, 0
  sw  $t6, -1076($fp)
  li $t7, 0
  sw  $t7, -1080($fp)
  li  $t1, 4
  la  $t2, -196($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1084($fp)
  lw  $t4, -1084($fp)
  lw $t3, 0($t4)
  sw  $t3, -1088($fp)
  li  $t5, 0
  lw  $t6, -1088($fp)
  bne  $t6, $t5, label253
  j label252
  label252 :
  li $t7, 1
  sw  $t7, -1080($fp)
  label253 :
  lw  $t1, -208($fp)
  sub $t0, $t1, 0
  lw  $t2, -208($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -1092($fp)
  lw  $t4, -1092($fp)
  lw  $t5, -1080($fp)
  bge  $t5, $t4, label250
  j label251
  label250 :
  li $t6, 1
  sw  $t6, -1076($fp)
  label251 :
  li $t7, 0
  sw  $t7, -1096($fp)
  li $t0, 19179
  sw  $t0, -232($fp)
  li $t1, 0
  sw  $t1, -1100($fp)
  li  $t2, 0
  li  $t3, 58856
  bne  $t3, $t2, label257
  j label258
  label257 :
  li $t4, 1
  sw  $t4, -1100($fp)
  label258 :
  lw  $t6, -420($fp)
  li  $t7, 4951
  div $t7, $t6
  mflo $t5
  sw  $t5, -1104($fp)
  lw  $t1, -296($fp)
  sub $t0, $t1, 2477
  sw  $t0, -1108($fp)
  addi  $sp, $sp, -4
  lw  $t2, -1108($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1104($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1100($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, 19179
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -544($fp)
  sw  $t6, 0($sp)
  jal  id_nI
  move  $t7, $v0
  sw  $t7, -1112($fp)
  addi  $sp, $sp, 20
  li  $t0, 0
  lw  $t1, -1112($fp)
  bne  $t1, $t0, label256
  j label255
  label256 :
  li  $t2, 0
  lw  $t3, -380($fp)
  bne  $t3, $t2, label254
  j label255
  label254 :
  li $t4, 1
  sw  $t4, -1096($fp)
  label255 :
  li $t5, 0
  sw  $t5, -1116($fp)
  lw  $t6, -248($fp)
  lw  $t7, -384($fp)
  bge  $t7, $t6, label259
  j label260
  label259 :
  li $t0, 1
  sw  $t0, -1116($fp)
  label260 :
  lw  $t2, -296($fp)
  li  $t3, 0
  mul $t1, $t3, $t2
  sw  $t1, -1120($fp)
  li $t4, 0
  sw  $t4, -1124($fp)
  lw  $t6, -256($fp)
  sub $t5, $t6, 0
  lw  $t7, -256($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1128($fp)
  li  $t1, 19060
  lw  $t2, -1128($fp)
  bne  $t2, $t1, label261
  j label262
  label261 :
  li $t3, 1
  sw  $t3, -1124($fp)
  label262 :
  li $t4, 0
  sw  $t4, -1132($fp)
  li  $t5, 0
  lw  $t6, -540($fp)
  bne  $t6, $t5, label266
  j label265
  label266 :
  li  $t7, 0
  li  $t0, 55219
  bne  $t0, $t7, label263
  j label265
  label265 :
  li  $t1, 0
  lw  $t2, -292($fp)
  bne  $t2, $t1, label263
  j label264
  label263 :
  li $t3, 1
  sw  $t3, -1132($fp)
  label264 :
  lw  $t5, -424($fp)
  add $t4, $t5, 22854
  sw  $t4, -1136($fp)
  lw  $t7, -300($fp)
  lw  $t0, -1136($fp)
  add $t6, $t0, $t7
  sw  $t6, -1140($fp)
  li $t1, 0
  sw  $t1, -1144($fp)
  li  $t2, 43234
  li  $t3, 1
  bgt  $t3, $t2, label267
  j label268
  label267 :
  li $t4, 1
  sw  $t4, -1144($fp)
  label268 :
  addi  $sp, $sp, -4
  lw  $t5, -1144($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1140($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, -21252
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1132($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1124($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -1148($fp)
  addi  $sp, $sp, 20
  addi  $sp, $sp, -4
  lw  $t3, -1148($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1120($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, 1236
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1116($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1096($fp)
  sw  $t7, 0($sp)
  jal  id_nI
  move  $t0, $v0
  sw  $t0, -1152($fp)
  addi  $sp, $sp, 20
  lw  $t2, -1152($fp)
  sub $t1, $t2, 0
  lw  $t3, -1152($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -1156($fp)
  lw  $t5, -1156($fp)
  lw  $t6, -1076($fp)
  bne  $t6, $t5, label248
  j label249
  label248 :
  li $t7, 1
  sw  $t7, -1072($fp)
  label249 :
  lw  $t1, -392($fp)
  lw  $t2, -444($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1160($fp)
  lw  $t3, -1160($fp)
  lw  $t4, -1072($fp)
  blt  $t4, $t3, label246
  j label247
  label246 :
  li $t5, 1
  sw  $t5, -1068($fp)
  label247 :
  label269 :
  li $t6, 0
  sw  $t6, -1164($fp)
  li  $t7, 0
  li  $t0, 16269
  bne  $t0, $t7, label272
  j label274
  label274 :
  li  $t1, 51075
  li  $t2, 15965
  bne  $t2, $t1, label272
  j label273
  label272 :
  li $t3, 1
  sw  $t3, -1164($fp)
  label273 :
  lw  $t5, -1164($fp)
  move $t4, $t5
  sw  $t4, -396($fp)
  li  $t6, 0
  lw  $t7, -1164($fp)
  bne  $t7, $t6, label270
  j label271
  label270 :
  li $t0, 9204
  sw  $t0, -1192($fp)
  li $t1, 57340
  sw  $t1, -1196($fp)
  li $t2, 47414
  sw  $t2, -1200($fp)
  li $t3, 40212
  sw  $t3, -1204($fp)
  li $t4, 29448
  sw  $t4, -1208($fp)
  li $t5, 57642
  sw  $t5, -1212($fp)
  li $t6, 31415
  sw  $t6, -1216($fp)
  li  $t0, 0
  la  $t1, -1168($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1220($fp)
  lw  $t2, -1220($fp)
  li  $t3, 39273
  sw $t3, 0($t2)
  li  $t5, 4
  la  $t6, -1168($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1224($fp)
  lw  $t7, -1224($fp)
  li  $t0, 44396
  sw $t0, 0($t7)
  li  $t2, 8
  la  $t3, -1168($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1228($fp)
  lw  $t4, -1228($fp)
  li  $t5, 39173
  sw $t5, 0($t4)
  li $t6, 24367
  sw  $t6, -1232($fp)
  li $t7, 50584
  sw  $t7, -1236($fp)
  li  $t1, 0
  la  $t2, -1180($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1240($fp)
  lw  $t3, -1240($fp)
  li  $t4, 45404
  sw $t4, 0($t3)
  li  $t6, 4
  la  $t7, -1180($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1244($fp)
  lw  $t0, -1244($fp)
  li  $t1, 43546
  sw $t1, 0($t0)
  li  $t3, 8
  la  $t4, -1180($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1248($fp)
  lw  $t5, -1248($fp)
  li  $t6, 43904
  sw $t6, 0($t5)
  li $t7, 0
  sw  $t7, -1252($fp)
  li $t0, 0
  sw  $t0, -1256($fp)
  li  $t2, 4
  lw  $t3, -396($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1260($fp)
  lw  $t5, -1260($fp)
  la  $t6, -120($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1264($fp)
  lw  $t0, -1264($fp)
  lw $t7, 0($t0)
  sw  $t7, -1268($fp)
  li  $t1, 0
  lw  $t2, -1268($fp)
  bne  $t2, $t1, label283
  j label282
  label282 :
  li $t3, 1
  sw  $t3, -1256($fp)
  label283 :
  li  $t4, 50355
  lw  $t5, -1256($fp)
  beq  $t5, $t4, label281
  j label279
  label281 :
  li $t6, 0
  sw  $t6, -1272($fp)
  lw  $t0, -1216($fp)
  sub $t7, $t0, 0
  lw  $t1, -1216($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -1276($fp)
  lw  $t4, -208($fp)
  lw  $t5, -440($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1280($fp)
  addi  $sp, $sp, -4
  li  $t6, -18836
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1280($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1276($fp)
  sw  $t0, 0($sp)
  jal  id_IBvdWNifc
  move  $t1, $v0
  sw  $t1, -1284($fp)
  addi  $sp, $sp, 12
  li  $t2, 0
  lw  $t3, -1284($fp)
  bne  $t3, $t2, label285
  j label284
  label284 :
  li $t4, 1
  sw  $t4, -1272($fp)
  label285 :
  li $t5, 0
  sw  $t5, -1288($fp)
  lw  $t7, -544($fp)
  sub $t6, $t7, 46353
  sw  $t6, -1292($fp)
  lw  $t0, -548($fp)
  lw  $t1, -1292($fp)
  bge  $t1, $t0, label286
  j label287
  label286 :
  li $t2, 1
  sw  $t2, -1288($fp)
  label287 :
  addi  $sp, $sp, -4
  lw  $t3, -1288($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 24051
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1272($fp)
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -1296($fp)
  addi  $sp, $sp, 12
  li  $t7, 0
  lw  $t0, -1296($fp)
  bne  $t0, $t7, label280
  j label279
  label280 :
  li $t1, 0
  sw  $t1, -1300($fp)
  li  $t2, 0
  li  $t3, 43220
  bne  $t3, $t2, label289
  j label288
  label288 :
  li $t4, 1
  sw  $t4, -1300($fp)
  label289 :
  li  $t6, 43111
  lw  $t7, -1300($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1304($fp)
  lw  $t1, -552($fp)
  lw  $t2, -1304($fp)
  sub $t0, $t2, $t1
  sw  $t0, -1308($fp)
  li  $t3, 0
  lw  $t4, -1308($fp)
  bne  $t4, $t3, label278
  j label279
  label278 :
  li $t5, 1
  sw  $t5, -1252($fp)
  label279 :
  lw  $t6, -1192($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -1196($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -1200($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -1204($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -1208($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -1212($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -1216($fp)
  move $a0, $t4
  jal  write
  li  $t6, 0
  la  $t7, -1168($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1312($fp)
  lw  $t1, -1312($fp)
  lw $t0, 0($t1)
  sw  $t0, -1316($fp)
  lw  $t2, -1316($fp)
  move $a0, $t2
  jal  write
  li  $t4, 4
  la  $t5, -1168($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1320($fp)
  lw  $t7, -1320($fp)
  lw $t6, 0($t7)
  sw  $t6, -1324($fp)
  lw  $t0, -1324($fp)
  move $a0, $t0
  jal  write
  li  $t2, 8
  la  $t3, -1168($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1328($fp)
  lw  $t5, -1328($fp)
  lw $t4, 0($t5)
  sw  $t4, -1332($fp)
  lw  $t6, -1332($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -1232($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -1236($fp)
  move $a0, $t0
  jal  write
  li  $t2, 0
  la  $t3, -1180($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1336($fp)
  lw  $t5, -1336($fp)
  lw $t4, 0($t5)
  sw  $t4, -1340($fp)
  lw  $t6, -1340($fp)
  move $a0, $t6
  jal  write
  li  $t0, 4
  la  $t1, -1180($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1344($fp)
  lw  $t3, -1344($fp)
  lw $t2, 0($t3)
  sw  $t2, -1348($fp)
  lw  $t4, -1348($fp)
  move $a0, $t4
  jal  write
  li  $t6, 8
  la  $t7, -1180($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1352($fp)
  lw  $t1, -1352($fp)
  lw $t0, 0($t1)
  sw  $t0, -1356($fp)
  lw  $t2, -1356($fp)
  move $a0, $t2
  jal  write
  lw  $t4, -392($fp)
  sub $t3, $t4, 0
  lw  $t5, -392($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -1360($fp)
  lw  $t0, -1360($fp)
  move $t7, $t0
  sw  $t7, -264($fp)
  lw  $t1, -1360($fp)
  move  $v0, $t1
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
  label290 :
  li  $t3, 4
  lw  $t4, -376($fp)
  mul $t2, $t4, $t3
  sw  $t2, -1364($fp)
  lw  $t6, -1364($fp)
  la  $t7, -196($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1368($fp)
  lw  $t1, -1368($fp)
  lw $t0, 0($t1)
  sw  $t0, -1372($fp)
  lw  $t3, -1372($fp)
  add $t2, $t3, 36036
  lw  $t4, -1372($fp)
  li  $t5, 36036
  add $t2, $t5, $t4
  sw  $t2, -1376($fp)
  li  $t6, 0
  lw  $t7, -1376($fp)
  bne  $t7, $t6, label291
  j label293
  label293 :
  li $t0, 0
  sw  $t0, -1380($fp)
  li  $t1, 0
  li  $t2, -64472
  bne  $t2, $t1, label295
  j label294
  label294 :
  li $t3, 1
  sw  $t3, -1380($fp)
  label295 :
  li  $t5, 4
  lw  $t6, -524($fp)
  mul $t4, $t6, $t5
  sw  $t4, -1384($fp)
  lw  $t0, -1384($fp)
  la  $t1, -84($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1388($fp)
  lw  $t3, -1388($fp)
  lw $t2, 0($t3)
  sw  $t2, -1392($fp)
  lw  $t5, -1392($fp)
  lw  $t6, -1380($fp)
  add $t4, $t6, $t5
  sw  $t4, -1396($fp)
  li  $t7, 0
  lw  $t0, -1396($fp)
  bne  $t0, $t7, label291
  j label292
  label291 :
  li $t1, 0
  sw  $t1, -1400($fp)
  li $t2, 0
  sw  $t2, -1404($fp)
  li $t3, 0
  sw  $t3, -1408($fp)
  li  $t4, 1839123
  lw  $t5, -540($fp)
  blt  $t5, $t4, label300
  j label301
  label300 :
  li $t6, 1
  sw  $t6, -1408($fp)
  label301 :
  li  $t0, 4
  lw  $t1, -1212($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1412($fp)
  lw  $t3, -1412($fp)
  la  $t4, -84($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1416($fp)
  lw  $t6, -1416($fp)
  lw $t5, 0($t6)
  sw  $t5, -1420($fp)
  lw  $t7, -1420($fp)
  lw  $t0, -1408($fp)
  blt  $t0, $t7, label298
  j label299
  label298 :
  li $t1, 1
  sw  $t1, -1404($fp)
  label299 :
  li $t2, 0
  sw  $t2, -1424($fp)
  li  $t3, 24623
  lw  $t4, 4($fp)
  beq  $t4, $t3, label302
  j label303
  label302 :
  li $t5, 1
  sw  $t5, -1424($fp)
  label303 :
  li  $t7, 4
  lw  $t0, -1424($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1428($fp)
  lw  $t2, -1428($fp)
  la  $t3, -1168($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1432($fp)
  lw  $t5, -1432($fp)
  lw $t4, 0($t5)
  sw  $t4, -1436($fp)
  lw  $t6, -1436($fp)
  lw  $t7, -1404($fp)
  bge  $t7, $t6, label296
  j label297
  label296 :
  li $t0, 1
  sw  $t0, -1400($fp)
  label297 :
  j label290
  label292 :
  li $t1, 0
  sw  $t1, -1440($fp)
  li $t2, 0
  sw  $t2, -1444($fp)
  li  $t3, 834326928
  li  $t4, -43664
  blt  $t4, $t3, label306
  j label307
  label306 :
  li $t5, 1
  sw  $t5, -1444($fp)
  label307 :
  li  $t7, 4
  la  $t0, -36($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1448($fp)
  lw  $t2, -1448($fp)
  lw $t1, 0($t2)
  sw  $t1, -1452($fp)
  li $t3, 0
  sw  $t3, -1456($fp)
  li  $t4, 0
  lw  $t5, -444($fp)
  bne  $t5, $t4, label309
  j label308
  label308 :
  li $t6, 1
  sw  $t6, -1456($fp)
  label309 :
  lw  $t0, -1456($fp)
  lw  $t1, -1452($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1460($fp)
  lw  $t2, -1460($fp)
  lw  $t3, -1444($fp)
  bge  $t3, $t2, label304
  j label305
  label304 :
  li $t4, 1
  sw  $t4, -1440($fp)
  label305 :
  li $t5, 0
  sw  $t5, -1464($fp)
  li $t6, 0
  sw  $t6, -1468($fp)
  li  $t7, 0
  li  $t0, 11081
  bne  $t0, $t7, label314
  j label313
  label314 :
  li  $t1, 0
  lw  $t2, -396($fp)
  bne  $t2, $t1, label312
  j label313
  label312 :
  li $t3, 1
  sw  $t3, -1468($fp)
  label313 :
  li $t4, 0
  sw  $t4, -1472($fp)
  li  $t5, 0
  li  $t6, 4437
  bne  $t6, $t5, label318
  j label316
  label318 :
  li  $t7, 0
  li  $t0, 61841
  bne  $t0, $t7, label317
  j label316
  label317 :
  li  $t1, 0
  li  $t2, 3187
  bne  $t2, $t1, label315
  j label316
  label315 :
  li $t3, 1
  sw  $t3, -1472($fp)
  label316 :
  li $t4, 0
  sw  $t4, -1476($fp)
  li  $t6, 4
  lw  $t7, -444($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1480($fp)
  lw  $t1, -1480($fp)
  la  $t2, -36($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1484($fp)
  lw  $t4, -1484($fp)
  lw $t3, 0($t4)
  sw  $t3, -1488($fp)
  li  $t5, 0
  lw  $t6, -1488($fp)
  bne  $t6, $t5, label320
  j label319
  label319 :
  li $t7, 1
  sw  $t7, -1476($fp)
  label320 :
  li $t0, 0
  sw  $t0, -1492($fp)
  li  $t2, 0
  la  $t3, -24($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1496($fp)
  lw  $t5, -1496($fp)
  lw $t4, 0($t5)
  sw  $t4, -1500($fp)
  li  $t7, 47583
  lw  $t0, -524($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1504($fp)
  li $t1, 0
  sw  $t1, -1508($fp)
  li  $t2, 0
  lw  $t3, -544($fp)
  bne  $t3, $t2, label324
  j label327
  label327 :
  li  $t4, 0
  li  $t5, 9489
  bne  $t5, $t4, label324
  j label326
  label326 :
  li  $t6, 0
  li  $t7, 59945
  bne  $t7, $t6, label324
  j label325
  label324 :
  li $t0, 1
  sw  $t0, -1508($fp)
  label325 :
  li $t1, 0
  sw  $t1, -1512($fp)
  li  $t2, 0
  li  $t3, 54893
  bne  $t3, $t2, label329
  j label328
  label328 :
  li $t4, 1
  sw  $t4, -1512($fp)
  label329 :
  li  $t6, 4
  lw  $t7, -392($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1516($fp)
  lw  $t1, -1516($fp)
  la  $t2, -48($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1520($fp)
  lw  $t4, -1520($fp)
  lw $t3, 0($t4)
  sw  $t3, -1524($fp)
  lw  $t6, -1208($fp)
  move $t5, $t6
  sw  $t5, -296($fp)
  lw  $t0, -524($fp)
  move $t7, $t0
  sw  $t7, -552($fp)
  li $t1, 0
  sw  $t1, -1528($fp)
  lw  $t2, -256($fp)
  lw  $t3, -428($fp)
  ble  $t3, $t2, label330
  j label332
  label332 :
  li  $t4, 0
  li  $t5, 37955
  bne  $t5, $t4, label330
  j label331
  label330 :
  li $t6, 1
  sw  $t6, -1528($fp)
  label331 :
  addi  $sp, $sp, -4
  lw  $t7, -1528($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -524($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1208($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1524($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1512($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -1532($fp)
  addi  $sp, $sp, 20
  lw  $t6, -392($fp)
  lw  $t7, -1532($fp)
  sub $t5, $t7, $t6
  sw  $t5, -1536($fp)
  addi  $sp, $sp, -4
  lw  $t0, -1536($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 32631
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1508($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1504($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1500($fp)
  sw  $t4, 0($sp)
  jal  id_nI
  move  $t5, $v0
  sw  $t5, -1540($fp)
  addi  $sp, $sp, 20
  li  $t6, 0
  lw  $t7, -1540($fp)
  bne  $t7, $t6, label323
  j label322
  label323 :
  li  $t0, 0
  lw  $t1, -1208($fp)
  bne  $t1, $t0, label321
  j label322
  label321 :
  li $t2, 1
  sw  $t2, -1492($fp)
  label322 :
  li $t3, 0
  sw  $t3, -1544($fp)
  lw  $t4, -212($fp)
  li  $t5, 10999
  bne  $t5, $t4, label333
  j label334
  label333 :
  li $t6, 1
  sw  $t6, -1544($fp)
  label334 :
  li $t7, 0
  sw  $t7, -1548($fp)
  lw  $t1, -1232($fp)
  sub $t0, $t1, 0
  lw  $t2, -1232($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -1552($fp)
  li  $t4, 0
  lw  $t5, -1552($fp)
  bne  $t5, $t4, label337
  j label336
  label337 :
  li  $t6, 0
  li  $t7, 18442
  bne  $t7, $t6, label335
  j label336
  label335 :
  li $t0, 1
  sw  $t0, -1548($fp)
  label336 :
  li $t1, 0
  sw  $t1, -1556($fp)
  li  $t3, 4
  lw  $t4, -1236($fp)
  mul $t2, $t4, $t3
  sw  $t2, -1560($fp)
  lw  $t6, -1560($fp)
  la  $t7, -196($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1564($fp)
  lw  $t1, -1564($fp)
  lw $t0, 0($t1)
  sw  $t0, -1568($fp)
  li  $t2, 0
  lw  $t3, -1568($fp)
  bne  $t3, $t2, label339
  j label338
  label338 :
  li $t4, 1
  sw  $t4, -1556($fp)
  label339 :
  lw  $t6, -248($fp)
  lw  $t7, -300($fp)
  add $t5, $t7, $t6
  sw  $t5, -1572($fp)
  addi  $sp, $sp, -4
  lw  $t0, -1572($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1556($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1548($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  li  $t3, 39712
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1544($fp)
  sw  $t4, 0($sp)
  jal  id_nI
  move  $t5, $v0
  sw  $t5, -1576($fp)
  addi  $sp, $sp, 20
  li  $t7, 8
  la  $t0, -48($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1580($fp)
  lw  $t2, -1580($fp)
  lw $t1, 0($t2)
  sw  $t1, -1584($fp)
  li $t3, 0
  sw  $t3, -1588($fp)
  li $t4, 0
  sw  $t4, -1592($fp)
  lw  $t6, -256($fp)
  add $t5, $t6, 64796
  lw  $t7, -256($fp)
  li  $t0, 64796
  add $t5, $t0, $t7
  sw  $t5, -1596($fp)
  li  $t1, 7519
  lw  $t2, -1596($fp)
  bge  $t2, $t1, label342
  j label343
  label342 :
  li $t3, 1
  sw  $t3, -1592($fp)
  label343 :
  li  $t5, 4
  lw  $t6, -1232($fp)
  mul $t4, $t6, $t5
  sw  $t4, -1600($fp)
  lw  $t0, -1600($fp)
  la  $t1, -84($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1604($fp)
  lw  $t3, -1604($fp)
  lw $t2, 0($t3)
  sw  $t2, -1608($fp)
  li  $t5, 41338
  lw  $t6, -1608($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -1612($fp)
  lw  $t0, -468($fp)
  lw  $t1, -376($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -1616($fp)
  lw  $t3, -1616($fp)
  sub $t2, $t3, 35296
  sw  $t2, -1620($fp)
  lw  $t5, -212($fp)
  move $t4, $t5
  sw  $t4, -208($fp)
  addi  $sp, $sp, -4
  lw  $t6, -212($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1620($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1612($fp)
  sw  $t0, 0($sp)
  jal  id_IBvdWNifc
  move  $t1, $v0
  sw  $t1, -1624($fp)
  addi  $sp, $sp, 12
  li $t2, 0
  sw  $t2, -1628($fp)
  lw  $t4, 0($fp)
  add $t3, $t4, 6455
  lw  $t5, 0($fp)
  li  $t6, 6455
  add $t3, $t6, $t5
  sw  $t3, -1632($fp)
  li  $t7, 41768
  lw  $t0, -1632($fp)
  blt  $t0, $t7, label344
  j label345
  label344 :
  li $t1, 1
  sw  $t1, -1628($fp)
  label345 :
  addi  $sp, $sp, -4
  lw  $t2, -1628($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1624($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1592($fp)
  sw  $t4, 0($sp)
  jal  id_IBvdWNifc
  move  $t5, $v0
  sw  $t5, -1636($fp)
  addi  $sp, $sp, 12
  li  $t6, 39583
  lw  $t7, -1636($fp)
  ble  $t7, $t6, label340
  j label341
  label340 :
  li $t0, 1
  sw  $t0, -1588($fp)
  label341 :
  li $t1, 0
  sw  $t1, -1640($fp)
  li  $t2, 0
  li  $t3, 19896
  bne  $t3, $t2, label346
  j label348
  label348 :
  li  $t4, 0
  lw  $t5, -1192($fp)
  bne  $t5, $t4, label346
  j label347
  label346 :
  li $t6, 1
  sw  $t6, -1640($fp)
  label347 :
  addi  $sp, $sp, -4
  li  $t7, 368669241
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1640($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 31079
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1588($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1584($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -1644($fp)
  addi  $sp, $sp, 20
  lw  $t6, -216($fp)
  move $t5, $t6
  sw  $t5, -264($fp)
  li  $t0, 4
  lw  $t1, -1196($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1648($fp)
  lw  $t3, -1648($fp)
  la  $t4, -16($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1652($fp)
  lw  $t6, -1652($fp)
  lw $t5, 0($t6)
  sw  $t5, -1656($fp)
  lw  $t0, -300($fp)
  lw  $t1, -1656($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -1660($fp)
  li $t2, 0
  sw  $t2, -1664($fp)
  lw  $t4, -212($fp)
  sub $t3, $t4, 0
  lw  $t5, -212($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -1668($fp)
  li  $t7, 0
  lw  $t0, -1668($fp)
  bne  $t0, $t7, label350
  j label349
  label349 :
  li $t1, 1
  sw  $t1, -1664($fp)
  label350 :
  li $t2, 0
  sw  $t2, -1672($fp)
  li $t3, 0
  sw  $t3, -1676($fp)
  li  $t4, 24364
  lw  $t5, -240($fp)
  bge  $t5, $t4, label353
  j label354
  label353 :
  li $t6, 1
  sw  $t6, -1676($fp)
  label354 :
  li  $t7, 38524
  lw  $t0, -1676($fp)
  ble  $t0, $t7, label351
  j label352
  label351 :
  li $t1, 1
  sw  $t1, -1672($fp)
  label352 :
  addi  $sp, $sp, -4
  lw  $t2, -1672($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1664($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1660($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -216($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1644($fp)
  sw  $t6, 0($sp)
  jal  id_nI
  move  $t7, $v0
  sw  $t7, -1680($fp)
  addi  $sp, $sp, 20
  li  $t1, 60180
  lw  $t2, -540($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -1684($fp)
  li  $t4, 28801
  lw  $t5, -1684($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1688($fp)
  addi  $sp, $sp, -4
  lw  $t6, -1688($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1680($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1576($fp)
  sw  $t0, 0($sp)
  jal  id_IBvdWNifc
  move  $t1, $v0
  sw  $t1, -1692($fp)
  addi  $sp, $sp, 12
  lw  $t3, -1692($fp)
  sub $t2, $t3, 0
  lw  $t4, -1692($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -1696($fp)
  addi  $sp, $sp, -4
  li  $t6, 0
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1696($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1492($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1476($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1472($fp)
  sw  $t2, 0($sp)
  jal  id_nI
  move  $t3, $v0
  sw  $t3, -1700($fp)
  addi  $sp, $sp, 20
  lw  $t5, -544($fp)
  move $t4, $t5
  sw  $t4, -472($fp)
  li $t6, 0
  sw  $t6, -1704($fp)
  li  $t0, 0
  la  $t1, -1180($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1708($fp)
  lw  $t3, -1708($fp)
  lw $t2, 0($t3)
  sw  $t2, -1712($fp)
  lw  $t4, -536($fp)
  lw  $t5, -1712($fp)
  blt  $t5, $t4, label355
  j label356
  label355 :
  li $t6, 1
  sw  $t6, -1704($fp)
  label356 :
  li $t7, 0
  sw  $t7, -1716($fp)
  li $t0, 0
  sw  $t0, -1720($fp)
  li  $t1, 45415
  lw  $t2, -540($fp)
  ble  $t2, $t1, label359
  j label360
  label359 :
  li $t3, 1
  sw  $t3, -1720($fp)
  label360 :
  lw  $t4, -556($fp)
  lw  $t5, -1720($fp)
  bne  $t5, $t4, label357
  j label358
  label357 :
  li $t6, 1
  sw  $t6, -1716($fp)
  label358 :
  addi  $sp, $sp, -4
  lw  $t7, -1716($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1704($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -544($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1700($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1468($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -1724($fp)
  addi  $sp, $sp, 20
  lw  $t6, -1724($fp)
  sub $t5, $t6, 0
  lw  $t7, -1724($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1728($fp)
  li  $t2, 4
  lw  $t3, -1728($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1732($fp)
  lw  $t5, -1732($fp)
  la  $t6, -16($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1736($fp)
  lw  $t0, -1736($fp)
  lw $t7, 0($t0)
  sw  $t7, -1740($fp)
  li  $t2, 4
  lw  $t3, -432($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1744($fp)
  lw  $t5, -1744($fp)
  la  $t6, -24($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1748($fp)
  lw  $t0, -1748($fp)
  lw $t7, 0($t0)
  sw  $t7, -1752($fp)
  lw  $t2, -1200($fp)
  lw  $t3, -1752($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -1756($fp)
  lw  $t4, -1756($fp)
  lw  $t5, -1740($fp)
  bgt  $t5, $t4, label310
  j label311
  label310 :
  li $t6, 1
  sw  $t6, -1464($fp)
  label311 :
  li  $t0, 0
  la  $t1, -36($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1760($fp)
  lw  $t3, -1760($fp)
  lw $t2, 0($t3)
  sw  $t2, -1764($fp)
  lw  $t5, -1764($fp)
  move $t4, $t5
  sw  $t4, -384($fp)
  lw  $t7, -1764($fp)
  move $t6, $t7
  sw  $t6, -1204($fp)
  j label269
  label271 :
  li $t0, 0
  sw  $t0, -1768($fp)
  li  $t2, 4
  la  $t3, -16($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1772($fp)
  lw  $t5, -1772($fp)
  lw $t4, 0($t5)
  sw  $t4, -1776($fp)
  li  $t7, 37235
  lw  $t0, -1776($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -1780($fp)
  li $t1, 0
  sw  $t1, -1784($fp)
  lw  $t3, -440($fp)
  sub $t2, $t3, 0
  lw  $t4, -440($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -1788($fp)
  li  $t6, 0
  lw  $t7, -1788($fp)
  bne  $t7, $t6, label366
  j label365
  label366 :
  li  $t0, 0
  lw  $t1, -444($fp)
  bne  $t1, $t0, label364
  j label365
  label364 :
  li $t2, 1
  sw  $t2, -1784($fp)
  label365 :
  li $t3, 0
  sw  $t3, -1792($fp)
  li $t4, 0
  sw  $t4, -1796($fp)
  li  $t5, 37677
  li  $t6, 23510
  bne  $t6, $t5, label369
  j label370
  label369 :
  li $t7, 1
  sw  $t7, -1796($fp)
  label370 :
  li  $t0, 55678
  lw  $t1, -1796($fp)
  beq  $t1, $t0, label367
  j label368
  label367 :
  li $t2, 1
  sw  $t2, -1792($fp)
  label368 :
  li $t3, 0
  sw  $t3, -1800($fp)
  li  $t4, 0
  li  $t5, 53345
  bne  $t5, $t4, label374
  j label372
  label374 :
  li  $t6, 0
  lw  $t7, -228($fp)
  bne  $t7, $t6, label373
  j label372
  label373 :
  li  $t0, 0
  lw  $t1, -232($fp)
  bne  $t1, $t0, label371
  j label372
  label371 :
  li $t2, 1
  sw  $t2, -1800($fp)
  label372 :
  lw  $t4, -472($fp)
  sub $t3, $t4, 35905
  lw  $t5, -472($fp)
  li  $t6, 35905
  sub $t3, $t6, $t5
  sw  $t3, -1804($fp)
  lw  $t0, -392($fp)
  lw  $t1, -1804($fp)
  add $t7, $t1, $t0
  sw  $t7, -1808($fp)
  addi  $sp, $sp, -4
  lw  $t2, -1808($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1800($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1792($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1784($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1780($fp)
  sw  $t6, 0($sp)
  jal  id_nI
  move  $t7, $v0
  sw  $t7, -1812($fp)
  addi  $sp, $sp, 20
  lw  $t1, -1812($fp)
  sub $t0, $t1, 0
  lw  $t2, -1812($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -1816($fp)
  li  $t5, 54938
  lw  $t6, -1816($fp)
  mul $t4, $t6, $t5
  sw  $t4, -1820($fp)
  li  $t7, 0
  lw  $t0, -1820($fp)
  bne  $t0, $t7, label363
  j label362
  label363 :
  li $t1, 60865
  sw  $t1, -236($fp)
  lw  $t3, -240($fp)
  add $t2, $t3, 11707
  lw  $t4, -240($fp)
  li  $t5, 11707
  add $t2, $t5, $t4
  sw  $t2, -1824($fp)
  li $t6, 24698
  sw  $t6, -244($fp)
  li $t7, 1784
  sw  $t7, -396($fp)
  lw  $t1, -552($fp)
  li  $t2, 53475
  div $t2, $t1
  mflo $t0
  sw  $t0, -1828($fp)
  lw  $t4, -1828($fp)
  add $t3, $t4, 64282
  sw  $t3, -1832($fp)
  li $t5, 0
  sw  $t5, -1836($fp)
  li  $t6, 0
  li  $t7, 32863
  bne  $t7, $t6, label378
  j label376
  label378 :
  li  $t0, 0
  li  $t1, 7835
  bne  $t1, $t0, label377
  j label376
  label377 :
  li  $t2, 0
  lw  $t3, -216($fp)
  bne  $t3, $t2, label375
  j label376
  label375 :
  li $t4, 1
  sw  $t4, -1836($fp)
  label376 :
  li $t5, 0
  sw  $t5, -1840($fp)
  li $t6, 0
  sw  $t6, -1844($fp)
  li $t7, 0
  sw  $t7, -1848($fp)
  lw  $t0, -248($fp)
  lw  $t1, -468($fp)
  bne  $t1, $t0, label383
  j label385
  label385 :
  li  $t2, 0
  lw  $t3, -252($fp)
  bne  $t3, $t2, label383
  j label384
  label383 :
  li $t4, 1
  sw  $t4, -1848($fp)
  label384 :
  lw  $t6, -260($fp)
  move $t5, $t6
  sw  $t5, -256($fp)
  li  $t0, 4
  lw  $t1, -544($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1852($fp)
  lw  $t3, -1852($fp)
  la  $t4, -84($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1856($fp)
  lw  $t6, -1856($fp)
  lw $t5, 0($t6)
  sw  $t5, -1860($fp)
  addi  $sp, $sp, -4
  lw  $t7, -1860($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -260($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1848($fp)
  sw  $t1, 0($sp)
  jal  id_IBvdWNifc
  move  $t2, $v0
  sw  $t2, -1864($fp)
  addi  $sp, $sp, 12
  li  $t3, 58886
  lw  $t4, -1864($fp)
  beq  $t4, $t3, label381
  j label382
  label381 :
  li $t5, 1
  sw  $t5, -1844($fp)
  label382 :
  li $t6, 0
  sw  $t6, -1868($fp)
  li  $t7, 0
  li  $t0, 38995
  bne  $t0, $t7, label388
  j label387
  label388 :
  li  $t1, 0
  li  $t2, 17714
  bne  $t2, $t1, label386
  j label387
  label386 :
  li $t3, 1
  sw  $t3, -1868($fp)
  label387 :
  addi  $sp, $sp, -4
  lw  $t4, -1868($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -388($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1844($fp)
  sw  $t6, 0($sp)
  jal  id_IBvdWNifc
  move  $t7, $v0
  sw  $t7, -1872($fp)
  addi  $sp, $sp, 12
  lw  $t0, -468($fp)
  lw  $t1, -1872($fp)
  blt  $t1, $t0, label379
  j label380
  label379 :
  li $t2, 1
  sw  $t2, -1840($fp)
  label380 :
  lw  $t4, -384($fp)
  move $t3, $t4
  sw  $t3, 8($fp)
  addi  $sp, $sp, -4
  lw  $t5, -384($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1840($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1836($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1832($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 1784
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -1876($fp)
  addi  $sp, $sp, 20
  lw  $t4, -436($fp)
  lw  $t5, -1876($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1880($fp)
  lw  $t7, -440($fp)
  move $t6, $t7
  sw  $t6, -204($fp)
  addi  $sp, $sp, -4
  lw  $t0, -440($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1880($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  li  $t2, 24698
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1824($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 60865
  sw  $t4, 0($sp)
  jal  id_nI
  move  $t5, $v0
  sw  $t5, -1884($fp)
  addi  $sp, $sp, 20
  li  $t7, 0
  la  $t0, -44($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1888($fp)
  lw  $t2, -1888($fp)
  lw $t1, 0($t2)
  sw  $t1, -1892($fp)
  lw  $t4, -1892($fp)
  lw  $t5, -1884($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1896($fp)
  li  $t6, 0
  lw  $t7, -1896($fp)
  bne  $t7, $t6, label361
  j label362
  label361 :
  li $t0, 1
  sw  $t0, -1768($fp)
  label362 :
  lw  $t2, -12($fp)
  sub $t1, $t2, 46516
  lw  $t3, -12($fp)
  li  $t4, 46516
  sub $t1, $t4, $t3
  sw  $t1, -1900($fp)
  lw  $t6, 8($fp)
  lw  $t7, -1900($fp)
  add $t5, $t7, $t6
  sw  $t5, -1904($fp)
  lw  $t1, -248($fp)
  li  $t2, 46813
  div $t2, $t1
  mflo $t0
  sw  $t0, -1908($fp)
  lw  $t4, -1908($fp)
  lw  $t5, -1904($fp)
  add $t3, $t5, $t4
  sw  $t3, -1912($fp)
  li $t6, 0
  sw  $t6, -1916($fp)
  li  $t0, 32
  la  $t1, -160($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1920($fp)
  lw  $t3, -1920($fp)
  lw $t2, 0($t3)
  sw  $t2, -1924($fp)
  li  $t4, 51684
  lw  $t5, -1924($fp)
  beq  $t5, $t4, label391
  j label392
  label391 :
  li $t6, 1
  sw  $t6, -1916($fp)
  label392 :
  li $t7, 0
  sw  $t7, -1928($fp)
  li  $t0, 0
  lw  $t1, -264($fp)
  bne  $t1, $t0, label396
  j label394
  label396 :
  li  $t2, 0
  li  $t3, 54241
  bne  $t3, $t2, label395
  j label394
  label395 :
  li  $t4, 0
  li  $t5, 50965
  bne  $t5, $t4, label393
  j label394
  label393 :
  li $t6, 1
  sw  $t6, -1928($fp)
  label394 :
  addi  $sp, $sp, -4
  lw  $t7, -1928($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  li  $t0, 29289
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1916($fp)
  sw  $t1, 0($sp)
  jal  id_IBvdWNifc
  move  $t2, $v0
  sw  $t2, -1932($fp)
  addi  $sp, $sp, 12
  li  $t4, 41799
  lw  $t5, -1932($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1936($fp)
  lw  $t7, -1936($fp)
  lw  $t0, -1912($fp)
  add $t6, $t0, $t7
  sw  $t6, -1940($fp)
  li $t1, 0
  sw  $t1, -1944($fp)
  li $t2, 0
  sw  $t2, -1948($fp)
  li  $t3, 0
  li  $t4, 52206
  bne  $t4, $t3, label400
  j label399
  label399 :
  li $t5, 1
  sw  $t5, -1948($fp)
  label400 :
  li  $t6, 22664
  lw  $t7, -1948($fp)
  bgt  $t7, $t6, label397
  j label398
  label397 :
  li $t0, 1
  sw  $t0, -1944($fp)
  label398 :
  li $t1, 0
  sw  $t1, -1952($fp)
  li  $t2, 0
  lw  $t3, -544($fp)
  bne  $t3, $t2, label402
  j label403
  label403 :
  li  $t4, 0
  li  $t5, 65309
  bne  $t5, $t4, label401
  j label402
  label401 :
  li $t6, 1
  sw  $t6, -1952($fp)
  label402 :
  lw  $t0, -516($fp)
  move $t7, $t0
  sw  $t7, -552($fp)
  lw  $t2, -520($fp)
  add $t1, $t2, 24348
  lw  $t3, -520($fp)
  li  $t4, 24348
  add $t1, $t4, $t3
  sw  $t1, -1956($fp)
  lw  $t6, -1956($fp)
  sub $t5, $t6, 12806
  sw  $t5, -1960($fp)
  addi  $sp, $sp, -4
  lw  $t7, -1960($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -516($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1952($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -296($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1944($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -1964($fp)
  addi  $sp, $sp, 20
  lw  $t6, 8($fp)
  lw  $t7, 8($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1968($fp)
  lw  $t1, -1968($fp)
  lw  $t2, -1964($fp)
  sub $t0, $t2, $t1
  sw  $t0, -1972($fp)
  lw  $t3, -1972($fp)
  lw  $t4, -1940($fp)
  bge  $t4, $t3, label389
  j label390
  label389 :
  li $t5, 53119
  sw  $t5, -1976($fp)
  li $t6, 60253
  sw  $t6, -1980($fp)
  label404 :
  lw  $t0, -292($fp)
  sub $t7, $t0, 0
  lw  $t1, -292($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -1984($fp)
  li  $t3, 0
  lw  $t4, -1984($fp)
  bne  $t4, $t3, label405
  j label406
  label405 :
  li $t5, 0
  sw  $t5, -1988($fp)
  li $t6, 0
  sw  $t6, -1992($fp)
  li  $t7, 0
  li  $t0, 48448
  bne  $t0, $t7, label411
  j label410
  label410 :
  li $t1, 1
  sw  $t1, -1992($fp)
  label411 :
  lw  $t3, -1992($fp)
  add $t2, $t3, 2208
  lw  $t4, -1992($fp)
  li  $t5, 2208
  add $t2, $t5, $t4
  sw  $t2, -1996($fp)
  lw  $t7, -208($fp)
  li  $t0, 6424
  mul $t6, $t0, $t7
  sw  $t6, -2000($fp)
  lw  $t2, -1980($fp)
  lw  $t3, -2000($fp)
  sub $t1, $t3, $t2
  sw  $t1, -2004($fp)
  lw  $t4, -2004($fp)
  lw  $t5, -1996($fp)
  ble  $t5, $t4, label407
  j label409
  label409 :
  li  $t7, 50232
  lw  $t0, 8($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2008($fp)
  lw  $t2, -2008($fp)
  sub $t1, $t2, 26907
  lw  $t3, -2008($fp)
  li  $t4, 26907
  sub $t1, $t4, $t3
  sw  $t1, -2012($fp)
  li  $t5, 0
  lw  $t6, -2012($fp)
  bne  $t6, $t5, label407
  j label408
  label407 :
  li $t7, 1
  sw  $t7, -1988($fp)
  label408 :
  j label404
  label406 :
  li $t0, 25653
  sw  $t0, -2016($fp)
  li $t1, 0
  sw  $t1, -2020($fp)
  li  $t2, 0
  lw  $t3, -552($fp)
  bne  $t3, $t2, label412
  j label413
  label412 :
  li $t4, 1
  sw  $t4, -2020($fp)
  label413 :
  lw  $t6, -560($fp)
  lw  $t7, -2020($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -2024($fp)
  li $t0, 0
  sw  $t0, -2028($fp)
  lw  $t2, -536($fp)
  add $t1, $t2, 17560
  lw  $t3, -536($fp)
  li  $t4, 17560
  add $t1, $t4, $t3
  sw  $t1, -2032($fp)
  li  $t5, 2199
  lw  $t6, -2032($fp)
  ble  $t6, $t5, label414
  j label415
  label414 :
  li $t7, 1
  sw  $t7, -2028($fp)
  label415 :
  li $t0, 0
  sw  $t0, -2036($fp)
  lw  $t1, -296($fp)
  lw  $t2, -2016($fp)
  bgt  $t2, $t1, label418
  j label417
  label418 :
  li  $t3, 0
  lw  $t4, -204($fp)
  bne  $t4, $t3, label416
  j label417
  label416 :
  li $t5, 1
  sw  $t5, -2036($fp)
  label417 :
  li $t6, 0
  sw  $t6, -2040($fp)
  li  $t7, 56555
  li  $t0, 19003
  beq  $t0, $t7, label421
  j label420
  label421 :
  li  $t1, 0
  lw  $t2, -292($fp)
  bne  $t2, $t1, label419
  j label420
  label419 :
  li $t3, 1
  sw  $t3, -2040($fp)
  label420 :
  addi  $sp, $sp, -4
  lw  $t4, -2040($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2036($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2028($fp)
  sw  $t6, 0($sp)
  jal  id_IBvdWNifc
  move  $t7, $v0
  sw  $t7, -2044($fp)
  addi  $sp, $sp, 12
  lw  $t1, -2044($fp)
  sub $t0, $t1, 0
  lw  $t2, -2044($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -2048($fp)
  lw  $t5, -2048($fp)
  lw  $t6, -2024($fp)
  sub $t4, $t6, $t5
  sw  $t4, -2052($fp)
  li $t7, 0
  sw  $t7, -2056($fp)
  li $t0, 0
  sw  $t0, -2060($fp)
  li $t1, 0
  sw  $t1, -2064($fp)
  li  $t3, 4
  lw  $t4, -300($fp)
  mul $t2, $t4, $t3
  sw  $t2, -2068($fp)
  lw  $t6, -2068($fp)
  la  $t7, -160($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2072($fp)
  lw  $t1, -2072($fp)
  lw $t0, 0($t1)
  sw  $t0, -2076($fp)
  li  $t3, 4
  lw  $t4, -248($fp)
  mul $t2, $t4, $t3
  sw  $t2, -2080($fp)
  lw  $t6, -2080($fp)
  la  $t7, -24($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2084($fp)
  lw  $t1, -2084($fp)
  lw $t0, 0($t1)
  sw  $t0, -2088($fp)
  lw  $t3, -2088($fp)
  sub $t2, $t3, 0
  lw  $t4, -2088($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -2092($fp)
  lw  $t6, -2092($fp)
  lw  $t7, -2076($fp)
  blt  $t7, $t6, label426
  j label427
  label426 :
  li $t0, 1
  sw  $t0, -2064($fp)
  label427 :
  li  $t1, 19
  lw  $t2, -2064($fp)
  beq  $t2, $t1, label424
  j label425
  label424 :
  li $t3, 1
  sw  $t3, -2060($fp)
  label425 :
  li  $t4, 45176
  lw  $t5, -2060($fp)
  bgt  $t5, $t4, label422
  j label423
  label422 :
  li $t6, 1
  sw  $t6, -2056($fp)
  label423 :
  lw  $t0, -1976($fp)
  move $t7, $t0
  sw  $t7, -524($fp)
  li  $t2, 4
  lw  $t3, -432($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2096($fp)
  lw  $t5, -2096($fp)
  la  $t6, -120($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2100($fp)
  lw  $t0, -2100($fp)
  lw $t7, 0($t0)
  sw  $t7, -2104($fp)
  li  $t2, 49815
  lw  $t3, -2104($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2108($fp)
  li $t4, 0
  sw  $t4, -2112($fp)
  lw  $t6, -536($fp)
  lw  $t7, 0($fp)
  add $t5, $t7, $t6
  sw  $t5, -2116($fp)
  li  $t0, 0
  lw  $t1, -2116($fp)
  bne  $t1, $t0, label430
  j label429
  label430 :
  li  $t2, 0
  li  $t3, 29050
  bne  $t3, $t2, label428
  j label429
  label428 :
  li $t4, 1
  sw  $t4, -2112($fp)
  label429 :
  li $t5, 0
  sw  $t5, -2120($fp)
  li  $t7, 63331
  lw  $t0, -236($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -2124($fp)
  lw  $t2, -2124($fp)
  sub $t1, $t2, 35964
  sw  $t1, -2128($fp)
  lw  $t4, -204($fp)
  move $t3, $t4
  sw  $t3, -420($fp)
  li $t5, 0
  sw  $t5, -2132($fp)
  lw  $t7, -296($fp)
  sub $t6, $t7, 58339
  lw  $t0, -296($fp)
  li  $t1, 58339
  sub $t6, $t1, $t0
  sw  $t6, -2136($fp)
  lw  $t2, 0($fp)
  lw  $t3, -2136($fp)
  beq  $t3, $t2, label433
  j label434
  label433 :
  li $t4, 1
  sw  $t4, -2132($fp)
  label434 :
  li $t5, 0
  sw  $t5, -2140($fp)
  li  $t6, 0
  li  $t7, 73430
  bne  $t7, $t6, label437
  j label436
  label437 :
  li  $t0, 0
  li  $t1, 34603
  bne  $t1, $t0, label435
  j label436
  label435 :
  li $t2, 1
  sw  $t2, -2140($fp)
  label436 :
  li  $t4, 4
  lw  $t5, -424($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2144($fp)
  lw  $t7, -2144($fp)
  la  $t0, -36($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2148($fp)
  lw  $t2, -2148($fp)
  lw $t1, 0($t2)
  sw  $t1, -2152($fp)
  lw  $t4, -2152($fp)
  sub $t3, $t4, 0
  lw  $t5, -2152($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -2156($fp)
  addi  $sp, $sp, -4
  lw  $t7, -2156($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2140($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2132($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -204($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -2128($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -2160($fp)
  addi  $sp, $sp, 20
  li  $t6, 38707
  lw  $t7, -2160($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2164($fp)
  li $t0, 0
  sw  $t0, -2168($fp)
  lw  $t2, -428($fp)
  li  $t3, 44057
  div $t3, $t2
  mflo $t1
  sw  $t1, -2172($fp)
  li  $t4, 0
  lw  $t5, -2172($fp)
  bne  $t5, $t4, label440
  j label439
  label440 :
  li  $t6, 0
  lw  $t7, 4($fp)
  bne  $t7, $t6, label438
  j label439
  label438 :
  li $t0, 1
  sw  $t0, -2168($fp)
  label439 :
  li $t1, 34376
  sw  $t1, -244($fp)
  addi  $sp, $sp, -4
  li  $t2, 34376
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -2168($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2164($fp)
  sw  $t4, 0($sp)
  jal  id_IBvdWNifc
  move  $t5, $v0
  sw  $t5, -2176($fp)
  addi  $sp, $sp, 12
  li  $t6, 0
  lw  $t7, -2176($fp)
  bne  $t7, $t6, label432
  j label431
  label431 :
  li $t0, 1
  sw  $t0, -2120($fp)
  label432 :
  li $t1, 0
  sw  $t1, -2180($fp)
  li  $t2, 0
  li  $t3, -63055
  bne  $t3, $t2, label443
  j label442
  label443 :
  li  $t4, 0
  li  $t5, 56864
  bne  $t5, $t4, label441
  j label442
  label441 :
  li $t6, 1
  sw  $t6, -2180($fp)
  label442 :
  addi  $sp, $sp, -4
  lw  $t7, -2180($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2120($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2112($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -2108($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1976($fp)
  sw  $t3, 0($sp)
  jal  id_nI
  move  $t4, $v0
  sw  $t4, -2184($fp)
  addi  $sp, $sp, 20
  lw  $t6, -2184($fp)
  li  $t7, 17697
  div $t7, $t6
  mflo $t5
  sw  $t5, -2188($fp)
  lw  $t1, -2188($fp)
  move $t0, $t1
  sw  $t0, -248($fp)
  label390 :
  lw  $t2, -12($fp)
  move $a0, $t2
  jal  write
  lw  $t4, -12($fp)
  sub $t3, $t4, 21959
  lw  $t5, -12($fp)
  li  $t6, 21959
  sub $t3, $t6, $t5
  sw  $t3, -2192($fp)
  lw  $t7, -2192($fp)
  move  $v0, $t7
  lw  $ra  2192($sp) 
  lw  $fp  2188($sp) 
  addi $sp, $sp, 2196
  jr  $ra
id_oB_SYT:
  subu  $sp, $sp, 12
  sw  $ra  8($sp) 
  sw  $fp  4($sp) 
  addi  $fp, $sp , 12
  lw  $t0, 0($fp)
  move  $v0, $t0
  lw  $ra  8($sp) 
  lw  $fp  4($sp) 
  addi $sp, $sp, 12
  jr  $ra
id_zA90b:
  subu  $sp, $sp, 268
  sw  $ra  264($sp) 
  sw  $fp  260($sp) 
  addi  $fp, $sp , 268
  li  $t2, 0
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -44($fp)
  lw  $t4, -44($fp)
  li  $t5, 57772
  sw $t5, 0($t4)
  li  $t7, 4
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -48($fp)
  lw  $t1, -48($fp)
  li  $t2, 59072
  sw $t2, 0($t1)
  li  $t4, 8
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -52($fp)
  lw  $t6, -52($fp)
  li  $t7, 4871
  sw $t7, 0($t6)
  li  $t1, 12
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -56($fp)
  lw  $t3, -56($fp)
  li  $t4, 64197
  sw $t4, 0($t3)
  li  $t6, 16
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -60($fp)
  lw  $t0, -60($fp)
  li  $t1, 20443
  sw $t1, 0($t0)
  li  $t3, 20
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -64($fp)
  lw  $t5, -64($fp)
  li  $t6, 55104
  sw $t6, 0($t5)
  li  $t0, 24
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -68($fp)
  lw  $t2, -68($fp)
  li  $t3, 58561
  sw $t3, 0($t2)
  li  $t5, 28
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -72($fp)
  lw  $t7, -72($fp)
  li  $t0, 46096
  sw $t0, 0($t7)
  li  $t2, 0
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -76($fp)
  lw  $t5, -76($fp)
  lw $t4, 0($t5)
  sw  $t4, -80($fp)
  lw  $t6, -80($fp)
  move $a0, $t6
  jal  write
  li  $t0, 4
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -84($fp)
  lw  $t3, -84($fp)
  lw $t2, 0($t3)
  sw  $t2, -88($fp)
  lw  $t4, -88($fp)
  move $a0, $t4
  jal  write
  li  $t6, 8
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -92($fp)
  lw  $t1, -92($fp)
  lw $t0, 0($t1)
  sw  $t0, -96($fp)
  lw  $t2, -96($fp)
  move $a0, $t2
  jal  write
  li  $t4, 12
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -100($fp)
  lw  $t7, -100($fp)
  lw $t6, 0($t7)
  sw  $t6, -104($fp)
  lw  $t0, -104($fp)
  move $a0, $t0
  jal  write
  li  $t2, 16
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -108($fp)
  lw  $t5, -108($fp)
  lw $t4, 0($t5)
  sw  $t4, -112($fp)
  lw  $t6, -112($fp)
  move $a0, $t6
  jal  write
  li  $t0, 20
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -116($fp)
  lw  $t3, -116($fp)
  lw $t2, 0($t3)
  sw  $t2, -120($fp)
  lw  $t4, -120($fp)
  move $a0, $t4
  jal  write
  li  $t6, 24
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -124($fp)
  lw  $t1, -124($fp)
  lw $t0, 0($t1)
  sw  $t0, -128($fp)
  lw  $t2, -128($fp)
  move $a0, $t2
  jal  write
  li  $t4, 28
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -132($fp)
  lw  $t7, -132($fp)
  lw $t6, 0($t7)
  sw  $t6, -136($fp)
  lw  $t0, -136($fp)
  move $a0, $t0
  jal  write
  li $t1, 0
  sw  $t1, -140($fp)
  li  $t2, 0
  li  $t3, 7128
  bne  $t3, $t2, label464
  j label461
  label464 :
  li  $t4, 0
  lw  $t5, 0($fp)
  bne  $t5, $t4, label463
  j label461
  label463 :
  li  $t6, 0
  li  $t7, 60760
  bne  $t7, $t6, label462
  j label461
  label462 :
  lw  $t1, 4($fp)
  lw  $t2, 0($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -144($fp)
  li  $t3, 0
  lw  $t4, -144($fp)
  bne  $t4, $t3, label460
  j label461
  label460 :
  li $t5, 1
  sw  $t5, -140($fp)
  label461 :
  li  $t7, 4
  lw  $t0, -140($fp)
  mul $t6, $t0, $t7
  sw  $t6, -148($fp)
  lw  $t2, -148($fp)
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -152($fp)
  lw  $t5, -152($fp)
  lw $t4, 0($t5)
  sw  $t4, -156($fp)
  lw  $t6, -156($fp)
  move  $v0, $t6
  lw  $ra  264($sp) 
  lw  $fp  260($sp) 
  addi $sp, $sp, 268
  jr  $ra
  li $t7, 0
  sw  $t7, -160($fp)
  lw  $t1, 0($fp)
  li  $t2, 65099
  div $t2, $t1
  mflo $t0
  sw  $t0, -164($fp)
  lw  $t4, -164($fp)
  add $t3, $t4, 63683
  sw  $t3, -168($fp)
  lw  $t5, 0($fp)
  lw  $t6, -168($fp)
  beq  $t6, $t5, label465
  j label466
  label465 :
  li $t7, 1
  sw  $t7, -160($fp)
  label466 :
  li  $t1, 4
  lw  $t2, -160($fp)
  mul $t0, $t2, $t1
  sw  $t0, -172($fp)
  lw  $t4, -172($fp)
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -176($fp)
  lw  $t7, -176($fp)
  lw $t6, 0($t7)
  sw  $t6, -180($fp)
  li  $t1, 0
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -184($fp)
  lw  $t4, -184($fp)
  lw $t3, 0($t4)
  sw  $t3, -188($fp)
  lw  $t5, -188($fp)
  move $a0, $t5
  jal  write
  li  $t7, 4
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -192($fp)
  lw  $t2, -192($fp)
  lw $t1, 0($t2)
  sw  $t1, -196($fp)
  lw  $t3, -196($fp)
  move $a0, $t3
  jal  write
  li  $t5, 8
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -200($fp)
  lw  $t0, -200($fp)
  lw $t7, 0($t0)
  sw  $t7, -204($fp)
  lw  $t1, -204($fp)
  move $a0, $t1
  jal  write
  li  $t3, 12
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -208($fp)
  lw  $t6, -208($fp)
  lw $t5, 0($t6)
  sw  $t5, -212($fp)
  lw  $t7, -212($fp)
  move $a0, $t7
  jal  write
  li  $t1, 16
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -216($fp)
  lw  $t4, -216($fp)
  lw $t3, 0($t4)
  sw  $t3, -220($fp)
  lw  $t5, -220($fp)
  move $a0, $t5
  jal  write
  li  $t7, 20
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -224($fp)
  lw  $t2, -224($fp)
  lw $t1, 0($t2)
  sw  $t1, -228($fp)
  lw  $t3, -228($fp)
  move $a0, $t3
  jal  write
  li  $t5, 24
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -232($fp)
  lw  $t0, -232($fp)
  lw $t7, 0($t0)
  sw  $t7, -236($fp)
  lw  $t1, -236($fp)
  move $a0, $t1
  jal  write
  li  $t3, 28
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -240($fp)
  lw  $t6, -240($fp)
  lw $t5, 0($t6)
  sw  $t5, -244($fp)
  lw  $t7, -244($fp)
  move $a0, $t7
  jal  write
  li $t0, 0
  sw  $t0, -248($fp)
  li $t1, 0
  sw  $t1, -252($fp)
  li  $t3, 20
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -256($fp)
  lw  $t6, -256($fp)
  lw $t5, 0($t6)
  sw  $t5, -260($fp)
  li  $t7, 0
  lw  $t0, -260($fp)
  bne  $t0, $t7, label470
  j label469
  label469 :
  li $t1, 1
  sw  $t1, -252($fp)
  label470 :
  lw  $t3, -252($fp)
  sub $t2, $t3, 0
  lw  $t4, -252($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -264($fp)
  lw  $t6, -264($fp)
  li  $t7, 54358
  beq  $t7, $t6, label467
  j label468
  label467 :
  li $t0, 1
  sw  $t0, -248($fp)
  label468 :
  lw  $t1, -248($fp)
  move  $v0, $t1
  lw  $ra  264($sp) 
  lw  $fp  260($sp) 
  addi $sp, $sp, 268
  jr  $ra
id_Cd_GQ36oAi:
  subu  $sp, $sp, 3472
  sw  $ra  3468($sp) 
  sw  $fp  3464($sp) 
  addi  $fp, $sp , 3472
  li  $t3, 0
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -316($fp)
  lw  $t5, -316($fp)
  li  $t6, 33999
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -320($fp)
  lw  $t2, -320($fp)
  li  $t3, 53978
  sw $t3, 0($t2)
  li  $t5, 8
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -324($fp)
  lw  $t7, -324($fp)
  li  $t0, 50965
  sw $t0, 0($t7)
  li  $t2, 12
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -328($fp)
  lw  $t4, -328($fp)
  li  $t5, 63049
  sw $t5, 0($t4)
  li  $t7, 16
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -332($fp)
  lw  $t1, -332($fp)
  li  $t2, 51774
  sw $t2, 0($t1)
  li  $t4, 20
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -336($fp)
  lw  $t6, -336($fp)
  li  $t7, 21393
  sw $t7, 0($t6)
  li  $t1, 24
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -340($fp)
  lw  $t3, -340($fp)
  li  $t4, 55853
  sw $t4, 0($t3)
  li $t5, 38275
  sw  $t5, -344($fp)
  li $t6, 42786
  sw  $t6, -348($fp)
  li $t7, 24920
  sw  $t7, -352($fp)
  li  $t1, 0
  la  $t2, -40($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -356($fp)
  lw  $t3, -356($fp)
  li  $t4, 11446
  sw $t4, 0($t3)
  li  $t6, 4
  la  $t7, -40($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -360($fp)
  lw  $t0, -360($fp)
  li  $t1, 21307
  sw $t1, 0($t0)
  li  $t3, 8
  la  $t4, -40($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -364($fp)
  lw  $t5, -364($fp)
  li  $t6, 59296
  sw $t6, 0($t5)
  li  $t0, 12
  la  $t1, -40($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -368($fp)
  lw  $t2, -368($fp)
  li  $t3, 8966
  sw $t3, 0($t2)
  li  $t5, 16
  la  $t6, -40($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -372($fp)
  lw  $t7, -372($fp)
  li  $t0, 12635
  sw $t0, 0($t7)
  li $t1, 15720
  sw  $t1, -376($fp)
  li $t2, 1202
  sw  $t2, -380($fp)
  li $t3, 6172
  sw  $t3, -384($fp)
  li $t4, 20591
  sw  $t4, -388($fp)
  li $t5, 65399
  sw  $t5, -392($fp)
  li $t6, 26615
  sw  $t6, -396($fp)
  li  $t0, 0
  la  $t1, -60($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -400($fp)
  lw  $t2, -400($fp)
  li  $t3, 10159
  sw $t3, 0($t2)
  li  $t5, 4
  la  $t6, -60($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -404($fp)
  lw  $t7, -404($fp)
  li  $t0, 58424
  sw $t0, 0($t7)
  li  $t2, 8
  la  $t3, -60($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -408($fp)
  lw  $t4, -408($fp)
  li  $t5, 7176
  sw $t5, 0($t4)
  li  $t7, 12
  la  $t0, -60($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -412($fp)
  lw  $t1, -412($fp)
  li  $t2, 17287
  sw $t2, 0($t1)
  li  $t4, 16
  la  $t5, -60($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -416($fp)
  lw  $t6, -416($fp)
  li  $t7, 53649
  sw $t7, 0($t6)
  li  $t1, 20
  la  $t2, -60($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -420($fp)
  lw  $t3, -420($fp)
  li  $t4, 6739
  sw $t4, 0($t3)
  li  $t6, 24
  la  $t7, -60($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -424($fp)
  lw  $t0, -424($fp)
  li  $t1, 15434
  sw $t1, 0($t0)
  li  $t3, 28
  la  $t4, -60($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -428($fp)
  lw  $t5, -428($fp)
  li  $t6, 42471
  sw $t6, 0($t5)
  li  $t0, 32
  la  $t1, -60($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -432($fp)
  lw  $t2, -432($fp)
  li  $t3, 43020
  sw $t3, 0($t2)
  li  $t5, 36
  la  $t6, -60($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -436($fp)
  lw  $t7, -436($fp)
  li  $t0, 16584
  sw $t0, 0($t7)
  li $t1, 10934
  sw  $t1, -440($fp)
  li $t2, 31463
  sw  $t2, -444($fp)
  li $t3, 2013
  sw  $t3, -448($fp)
  li $t4, 8448
  sw  $t4, -452($fp)
  li $t5, 17701
  sw  $t5, -456($fp)
  li $t6, 23406
  sw  $t6, -460($fp)
  li $t7, 64301
  sw  $t7, -464($fp)
  li $t0, 55976
  sw  $t0, -468($fp)
  li $t1, 656
  sw  $t1, -472($fp)
  li $t2, 23685
  sw  $t2, -476($fp)
  li $t3, 1886
  sw  $t3, -480($fp)
  li $t4, 21963
  sw  $t4, -484($fp)
  li $t5, 17445
  sw  $t5, -488($fp)
  li  $t7, 0
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -492($fp)
  lw  $t1, -492($fp)
  li  $t2, 10852
  sw $t2, 0($t1)
  li  $t4, 4
  la  $t5, -100($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -496($fp)
  lw  $t6, -496($fp)
  li  $t7, 34599
  sw $t7, 0($t6)
  li  $t1, 8
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -500($fp)
  lw  $t3, -500($fp)
  li  $t4, 33165
  sw $t4, 0($t3)
  li  $t6, 12
  la  $t7, -100($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -504($fp)
  lw  $t0, -504($fp)
  li  $t1, 12055
  sw $t1, 0($t0)
  li  $t3, 16
  la  $t4, -100($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -508($fp)
  lw  $t5, -508($fp)
  li  $t6, 40771
  sw $t6, 0($t5)
  li  $t0, 20
  la  $t1, -100($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -512($fp)
  lw  $t2, -512($fp)
  li  $t3, 53757
  sw $t3, 0($t2)
  li  $t5, 24
  la  $t6, -100($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -516($fp)
  lw  $t7, -516($fp)
  li  $t0, 11918
  sw $t0, 0($t7)
  li  $t2, 28
  la  $t3, -100($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -520($fp)
  lw  $t4, -520($fp)
  li  $t5, 1850
  sw $t5, 0($t4)
  li  $t7, 32
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -524($fp)
  lw  $t1, -524($fp)
  li  $t2, 63916
  sw $t2, 0($t1)
  li  $t4, 36
  la  $t5, -100($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -528($fp)
  lw  $t6, -528($fp)
  li  $t7, 4807
  sw $t7, 0($t6)
  li $t0, 9026
  sw  $t0, -532($fp)
  li $t1, 15668
  sw  $t1, -536($fp)
  li $t2, 58456
  sw  $t2, -540($fp)
  li  $t4, 0
  la  $t5, -140($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -544($fp)
  lw  $t6, -544($fp)
  li  $t7, 15766
  sw $t7, 0($t6)
  li  $t1, 4
  la  $t2, -140($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -548($fp)
  lw  $t3, -548($fp)
  li  $t4, 31102
  sw $t4, 0($t3)
  li  $t6, 0
  la  $t7, -148($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -552($fp)
  lw  $t0, -552($fp)
  li  $t1, 35391
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -148($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -556($fp)
  lw  $t5, -556($fp)
  li  $t6, 58786
  sw $t6, 0($t5)
  li $t7, 47686
  sw  $t7, -560($fp)
  li $t0, 46326
  sw  $t0, -564($fp)
  li $t1, 24713
  sw  $t1, -568($fp)
  li $t2, 49699
  sw  $t2, -572($fp)
  li $t3, 54774
  sw  $t3, -576($fp)
  li $t4, 42414
  sw  $t4, -580($fp)
  li  $t6, 0
  la  $t7, -156($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -584($fp)
  lw  $t0, -584($fp)
  li  $t1, 7569
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -156($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -588($fp)
  lw  $t5, -588($fp)
  li  $t6, 53539
  sw $t6, 0($t5)
  li  $t0, 8
  la  $t1, -156($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -592($fp)
  lw  $t2, -592($fp)
  li  $t3, 32854
  sw $t3, 0($t2)
  li  $t5, 12
  la  $t6, -156($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -596($fp)
  lw  $t7, -596($fp)
  li  $t0, 8225
  sw $t0, 0($t7)
  li  $t2, 16
  la  $t3, -156($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -600($fp)
  lw  $t4, -600($fp)
  li  $t5, 11688
  sw $t5, 0($t4)
  li $t6, 34741
  sw  $t6, -604($fp)
  li $t7, 30189
  sw  $t7, -608($fp)
  li $t0, 29133
  sw  $t0, -612($fp)
  li $t1, 45593
  sw  $t1, -616($fp)
  li $t2, 64788
  sw  $t2, -620($fp)
  li $t3, 62299
  sw  $t3, -624($fp)
  li $t4, 57648
  sw  $t4, -628($fp)
  li  $t6, 0
  la  $t7, -176($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -632($fp)
  lw  $t0, -632($fp)
  li  $t1, 40023
  sw $t1, 0($t0)
  li  $t3, 0
  la  $t4, -180($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -636($fp)
  lw  $t5, -636($fp)
  li  $t6, 50520
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -180($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -640($fp)
  lw  $t2, -640($fp)
  li  $t3, 4031
  sw $t3, 0($t2)
  li  $t5, 8
  la  $t6, -180($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -644($fp)
  lw  $t7, -644($fp)
  li  $t0, 41873
  sw $t0, 0($t7)
  li  $t2, 12
  la  $t3, -180($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -648($fp)
  lw  $t4, -648($fp)
  li  $t5, 48900
  sw $t5, 0($t4)
  li $t6, 8838
  sw  $t6, -652($fp)
  li $t7, 50900
  sw  $t7, -656($fp)
  li $t0, 64568
  sw  $t0, -660($fp)
  li $t1, 1758
  sw  $t1, -664($fp)
  li $t2, 1130
  sw  $t2, -668($fp)
  li $t3, 30135
  sw  $t3, -672($fp)
  li $t4, 37149
  sw  $t4, -676($fp)
  li  $t6, 0
  la  $t7, -196($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -680($fp)
  lw  $t0, -680($fp)
  li  $t1, 59916
  sw $t1, 0($t0)
  li  $t3, 4
  la  $t4, -196($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -684($fp)
  lw  $t5, -684($fp)
  li  $t6, 12285
  sw $t6, 0($t5)
  li  $t0, 8
  la  $t1, -196($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -688($fp)
  lw  $t2, -688($fp)
  li  $t3, 17939
  sw $t3, 0($t2)
  li  $t5, 12
  la  $t6, -196($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -692($fp)
  lw  $t7, -692($fp)
  li  $t0, 19094
  sw $t0, 0($t7)
  li $t1, 61985
  sw  $t1, -696($fp)
  li $t2, 7177
  sw  $t2, -700($fp)
  li $t3, 61508
  sw  $t3, -704($fp)
  li $t4, 4018
  sw  $t4, -708($fp)
  li $t5, 60716
  sw  $t5, -712($fp)
  li $t6, 28827
  sw  $t6, -716($fp)
  li $t7, 12244
  sw  $t7, -720($fp)
  li $t0, 6868
  sw  $t0, -724($fp)
  li $t1, 63568
  sw  $t1, -728($fp)
  li $t2, 42433
  sw  $t2, -732($fp)
  li $t3, 36002
  sw  $t3, -736($fp)
  li $t4, 43625
  sw  $t4, -740($fp)
  li $t5, 41685
  sw  $t5, -744($fp)
  li $t6, 32765
  sw  $t6, -748($fp)
  li $t7, 35738
  sw  $t7, -752($fp)
  li $t0, 16172
  sw  $t0, -756($fp)
  li $t1, 17749
  sw  $t1, -760($fp)
  li $t2, 39769
  sw  $t2, -764($fp)
  li  $t4, 0
  la  $t5, -212($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -768($fp)
  lw  $t6, -768($fp)
  li  $t7, 58045
  sw $t7, 0($t6)
  li  $t1, 4
  la  $t2, -212($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -772($fp)
  lw  $t3, -772($fp)
  li  $t4, 1113
  sw $t4, 0($t3)
  li  $t6, 8
  la  $t7, -212($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -776($fp)
  lw  $t0, -776($fp)
  li  $t1, 48607
  sw $t1, 0($t0)
  li  $t3, 12
  la  $t4, -212($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -780($fp)
  lw  $t5, -780($fp)
  li  $t6, 43409
  sw $t6, 0($t5)
  li  $t0, 16
  la  $t1, -212($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -784($fp)
  lw  $t2, -784($fp)
  li  $t3, 146
  sw $t3, 0($t2)
  li  $t5, 20
  la  $t6, -212($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -788($fp)
  lw  $t7, -788($fp)
  li  $t0, 50365
  sw $t0, 0($t7)
  li  $t2, 24
  la  $t3, -212($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -792($fp)
  lw  $t4, -792($fp)
  li  $t5, 44539
  sw $t5, 0($t4)
  li  $t7, 28
  la  $t0, -212($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -796($fp)
  lw  $t1, -796($fp)
  li  $t2, 30281
  sw $t2, 0($t1)
  li  $t4, 32
  la  $t5, -212($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -800($fp)
  lw  $t6, -800($fp)
  li  $t7, 21978
  sw $t7, 0($t6)
  li $t0, 38920
  sw  $t0, -804($fp)
  li $t1, 42566
  sw  $t1, -808($fp)
  li $t2, 39918
  sw  $t2, -812($fp)
  li  $t4, 0
  la  $t5, -248($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -816($fp)
  lw  $t6, -816($fp)
  li  $t7, 58014
  sw $t7, 0($t6)
  li  $t1, 4
  la  $t2, -248($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -820($fp)
  lw  $t3, -820($fp)
  li  $t4, 39015
  sw $t4, 0($t3)
  li  $t6, 8
  la  $t7, -248($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -824($fp)
  lw  $t0, -824($fp)
  li  $t1, 47095
  sw $t1, 0($t0)
  li  $t3, 12
  la  $t4, -248($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -828($fp)
  lw  $t5, -828($fp)
  li  $t6, 53986
  sw $t6, 0($t5)
  li  $t0, 16
  la  $t1, -248($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -832($fp)
  lw  $t2, -832($fp)
  li  $t3, 43034
  sw $t3, 0($t2)
  li  $t5, 20
  la  $t6, -248($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -836($fp)
  lw  $t7, -836($fp)
  li  $t0, 42276
  sw $t0, 0($t7)
  li  $t2, 24
  la  $t3, -248($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -840($fp)
  lw  $t4, -840($fp)
  li  $t5, 17277
  sw $t5, 0($t4)
  li  $t7, 28
  la  $t0, -248($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -844($fp)
  lw  $t1, -844($fp)
  li  $t2, 55278
  sw $t2, 0($t1)
  li  $t4, 32
  la  $t5, -248($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -848($fp)
  lw  $t6, -848($fp)
  li  $t7, 49144
  sw $t7, 0($t6)
  li $t0, 15309
  sw  $t0, -852($fp)
  li  $t2, 0
  la  $t3, -284($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -856($fp)
  lw  $t4, -856($fp)
  li  $t5, 32175
  sw $t5, 0($t4)
  li  $t7, 4
  la  $t0, -284($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -860($fp)
  lw  $t1, -860($fp)
  li  $t2, 19610
  sw $t2, 0($t1)
  li  $t4, 8
  la  $t5, -284($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -864($fp)
  lw  $t6, -864($fp)
  li  $t7, 58935
  sw $t7, 0($t6)
  li  $t1, 12
  la  $t2, -284($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -868($fp)
  lw  $t3, -868($fp)
  li  $t4, 8324
  sw $t4, 0($t3)
  li  $t6, 16
  la  $t7, -284($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -872($fp)
  lw  $t0, -872($fp)
  li  $t1, 52375
  sw $t1, 0($t0)
  li  $t3, 20
  la  $t4, -284($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -876($fp)
  lw  $t5, -876($fp)
  li  $t6, 29137
  sw $t6, 0($t5)
  li  $t0, 24
  la  $t1, -284($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -880($fp)
  lw  $t2, -880($fp)
  li  $t3, 24496
  sw $t3, 0($t2)
  li  $t5, 28
  la  $t6, -284($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -884($fp)
  lw  $t7, -884($fp)
  li  $t0, 4588
  sw $t0, 0($t7)
  li $t1, 3370
  sw  $t1, -888($fp)
  li $t2, 17005
  sw  $t2, -892($fp)
  li $t3, 5702
  sw  $t3, -896($fp)
  li $t4, 51977
  sw  $t4, -900($fp)
  li $t5, 60415
  sw  $t5, -904($fp)
  li $t6, 5848
  sw  $t6, -908($fp)
  li $t7, 36806
  sw  $t7, -912($fp)
  li $t0, 39418
  sw  $t0, -916($fp)
  lw  $t2, -756($fp)
  sub $t1, $t2, 0
  lw  $t3, -756($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -920($fp)
  lw  $t6, -920($fp)
  add $t5, $t6, 36129
  sw  $t5, -924($fp)
  lw  $t0, -900($fp)
  move $t7, $t0
  sw  $t7, -452($fp)
  li $t1, 0
  sw  $t1, -928($fp)
  li  $t2, 0
  lw  $t3, -440($fp)
  bne  $t3, $t2, label475
  j label476
  label475 :
  li $t4, 1
  sw  $t4, -928($fp)
  label476 :
  li $t5, 0
  sw  $t5, -932($fp)
  lw  $t7, -916($fp)
  sub $t6, $t7, 0
  lw  $t0, -916($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -936($fp)
  li  $t2, 0
  lw  $t3, -936($fp)
  bne  $t3, $t2, label478
  j label477
  label477 :
  li $t4, 1
  sw  $t4, -932($fp)
  label478 :
  li $t5, 0
  sw  $t5, -940($fp)
  li  $t6, 12802
  li  $t7, -58784
  blt  $t7, $t6, label479
  j label480
  label479 :
  li $t0, 1
  sw  $t0, -940($fp)
  label480 :
  addi  $sp, $sp, -4
  lw  $t1, -940($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -932($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -928($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -900($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -924($fp)
  sw  $t5, 0($sp)
  jal  id_nI
  move  $t6, $v0
  sw  $t6, -944($fp)
  addi  $sp, $sp, 20
  li  $t7, 0
  lw  $t0, -944($fp)
  bne  $t0, $t7, label471
  j label474
  label474 :
  li  $t1, 0
  li  $t2, 13159
  bne  $t2, $t1, label472
  j label471
  label471 :
  label481 :
  lw  $t4, -760($fp)
  sub $t3, $t4, 0
  lw  $t5, -760($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -948($fp)
  li  $t7, 0
  lw  $t0, -948($fp)
  bne  $t0, $t7, label482
  j label483
  label482 :
  li $t1, 0
  sw  $t1, -952($fp)
  li  $t3, 4
  lw  $t4, 4($fp)
  mul $t2, $t4, $t3
  sw  $t2, -956($fp)
  lw  $t6, -956($fp)
  la  $t7, -40($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -960($fp)
  lw  $t1, -960($fp)
  lw $t0, 0($t1)
  sw  $t0, -964($fp)
  li  $t3, 5280
  lw  $t4, -564($fp)
  mul $t2, $t4, $t3
  sw  $t2, -968($fp)
  li $t5, 0
  sw  $t5, -972($fp)
  li $t6, 0
  sw  $t6, -976($fp)
  lw  $t0, -908($fp)
  add $t7, $t0, 52175
  sw  $t7, -980($fp)
  li  $t1, 0
  lw  $t2, -980($fp)
  bne  $t2, $t1, label491
  j label490
  label491 :
  li  $t3, 0
  li  $t4, 14726
  bne  $t4, $t3, label489
  j label490
  label489 :
  li $t5, 1
  sw  $t5, -976($fp)
  label490 :
  li  $t7, 4
  lw  $t0, -896($fp)
  mul $t6, $t0, $t7
  sw  $t6, -984($fp)
  lw  $t2, -984($fp)
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -988($fp)
  lw  $t5, -988($fp)
  lw $t4, 0($t5)
  sw  $t4, -992($fp)
  li $t6, 59267
  sw  $t6, -488($fp)
  li $t7, 0
  sw  $t7, -996($fp)
  li  $t0, 11008
  li  $t1, -27329
  ble  $t1, $t0, label492
  j label493
  label492 :
  li $t2, 1
  sw  $t2, -996($fp)
  label493 :
  lw  $t4, -532($fp)
  move $t3, $t4
  sw  $t3, -460($fp)
  addi  $sp, $sp, -4
  lw  $t5, -532($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -996($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 59267
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -992($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -976($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -1000($fp)
  addi  $sp, $sp, 20
  lw  $t3, -620($fp)
  lw  $t4, -1000($fp)
  beq  $t4, $t3, label487
  j label488
  label487 :
  li $t5, 1
  sw  $t5, -972($fp)
  label488 :
  addi  $sp, $sp, -4
  lw  $t6, -972($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -968($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  li  $t0, 33166
  sw  $t0, 0($sp)
  jal  id_IBvdWNifc
  move  $t1, $v0
  sw  $t1, -1004($fp)
  addi  $sp, $sp, 12
  li $t2, 0
  sw  $t2, -1008($fp)
  li $t3, 0
  sw  $t3, -1012($fp)
  li  $t4, 26318
  li  $t5, 60025
  bne  $t5, $t4, label496
  j label497
  label496 :
  li $t6, 1
  sw  $t6, -1012($fp)
  label497 :
  li $t7, 0
  sw  $t7, -1016($fp)
  lw  $t1, -712($fp)
  sub $t0, $t1, 0
  lw  $t2, -712($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -1020($fp)
  li  $t4, 0
  lw  $t5, -1020($fp)
  bne  $t5, $t4, label500
  j label499
  label500 :
  li  $t6, 0
  lw  $t7, -628($fp)
  bne  $t7, $t6, label498
  j label499
  label498 :
  li $t0, 1
  sw  $t0, -1016($fp)
  label499 :
  li $t1, 0
  sw  $t1, -1024($fp)
  li $t2, 0
  sw  $t2, -1028($fp)
  li  $t3, 60221
  li  $t4, 51590
  bge  $t4, $t3, label503
  j label504
  label503 :
  li $t5, 1
  sw  $t5, -1028($fp)
  label504 :
  lw  $t6, -532($fp)
  lw  $t7, -1028($fp)
  bge  $t7, $t6, label501
  j label502
  label501 :
  li $t0, 1
  sw  $t0, -1024($fp)
  label502 :
  li  $t2, 4
  lw  $t3, -532($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1032($fp)
  lw  $t5, -1032($fp)
  la  $t6, -196($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1036($fp)
  lw  $t0, -1036($fp)
  lw $t7, 0($t0)
  sw  $t7, -1040($fp)
  lw  $t2, -1040($fp)
  sub $t1, $t2, 0
  lw  $t3, -1040($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -1044($fp)
  li $t5, 0
  sw  $t5, -1048($fp)
  li  $t6, 19717
  lw  $t7, -744($fp)
  bgt  $t7, $t6, label507
  j label506
  label507 :
  li  $t0, 0
  li  $t1, 59914
  bne  $t1, $t0, label505
  j label506
  label505 :
  li $t2, 1
  sw  $t2, -1048($fp)
  label506 :
  addi  $sp, $sp, -4
  lw  $t3, -1048($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1044($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1024($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1016($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1012($fp)
  sw  $t7, 0($sp)
  jal  id_oB_SYT
  move  $t0, $v0
  sw  $t0, -1052($fp)
  addi  $sp, $sp, 20
  li  $t1, 0
  lw  $t2, -1052($fp)
  bne  $t2, $t1, label495
  j label494
  label494 :
  li $t3, 1
  sw  $t3, -1008($fp)
  label495 :
  li $t4, 0
  sw  $t4, -1056($fp)
  li $t5, 0
  sw  $t5, -1060($fp)
  li  $t7, 4
  lw  $t0, -388($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1064($fp)
  lw  $t2, -1064($fp)
  la  $t3, -176($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1068($fp)
  lw  $t5, -1068($fp)
  lw $t4, 0($t5)
  sw  $t4, -1072($fp)
  li $t6, 0
  sw  $t6, -1076($fp)
  li  $t7, 0
  li  $t0, -48854
  bne  $t0, $t7, label513
  j label512
  label512 :
  li $t1, 1
  sw  $t1, -1076($fp)
  label513 :
  addi  $sp, $sp, -4
  lw  $t2, -1076($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1072($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 47060
  sw  $t4, 0($sp)
  jal  id_IBvdWNifc
  move  $t5, $v0
  sw  $t5, -1080($fp)
  addi  $sp, $sp, 12
  lw  $t6, -348($fp)
  lw  $t7, -1080($fp)
  bne  $t7, $t6, label510
  j label511
  label510 :
  li $t0, 1
  sw  $t0, -1060($fp)
  label511 :
  li $t1, 0
  sw  $t1, -1084($fp)
  li $t2, 0
  sw  $t2, -1088($fp)
  li  $t3, 51649
  li  $t4, 18874
  beq  $t4, $t3, label516
  j label517
  label516 :
  li $t5, 1
  sw  $t5, -1088($fp)
  label517 :
  li  $t6, 52224
  lw  $t7, -1088($fp)
  bne  $t7, $t6, label514
  j label515
  label514 :
  li $t0, 1
  sw  $t0, -1084($fp)
  label515 :
  li $t1, 0
  sw  $t1, -1092($fp)
  lw  $t2, -560($fp)
  lw  $t3, -616($fp)
  ble  $t3, $t2, label520
  j label519
  label520 :
  li  $t4, 0
  lw  $t5, -852($fp)
  bne  $t5, $t4, label518
  j label519
  label518 :
  li $t6, 1
  sw  $t6, -1092($fp)
  label519 :
  li $t7, 0
  sw  $t7, -1096($fp)
  lw  $t1, -344($fp)
  sub $t0, $t1, 35879
  lw  $t2, -344($fp)
  li  $t3, 35879
  sub $t0, $t3, $t2
  sw  $t0, -1100($fp)
  li  $t4, 0
  lw  $t5, -1100($fp)
  bne  $t5, $t4, label521
  j label523
  label523 :
  li  $t6, 0
  lw  $t7, -744($fp)
  bne  $t7, $t6, label521
  j label522
  label521 :
  li $t0, 1
  sw  $t0, -1096($fp)
  label522 :
  addi  $sp, $sp, -4
  lw  $t1, -1096($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1092($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -708($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1084($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1060($fp)
  sw  $t5, 0($sp)
  jal  id_nI
  move  $t6, $v0
  sw  $t6, -1104($fp)
  addi  $sp, $sp, 20
  li  $t7, 57351
  lw  $t0, -1104($fp)
  bgt  $t0, $t7, label508
  j label509
  label508 :
  li $t1, 1
  sw  $t1, -1056($fp)
  label509 :
  lw  $t3, -608($fp)
  sub $t2, $t3, 69423
  lw  $t4, -608($fp)
  li  $t5, 69423
  sub $t2, $t5, $t4
  sw  $t2, -1108($fp)
  addi  $sp, $sp, -4
  lw  $t6, -1108($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1056($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1008($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1004($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -964($fp)
  sw  $t2, 0($sp)
  jal  id_nI
  move  $t3, $v0
  sw  $t3, -1112($fp)
  addi  $sp, $sp, 20
  li  $t4, 0
  lw  $t5, -1112($fp)
  bne  $t5, $t4, label484
  j label486
  label486 :
  li  $t6, 9935
  li  $t7, 63199
  bge  $t7, $t6, label484
  j label485
  label484 :
  li $t0, 1
  sw  $t0, -952($fp)
  label485 :
  li  $t2, 4
  lw  $t3, -952($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1116($fp)
  lw  $t5, -1116($fp)
  la  $t6, -284($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1120($fp)
  lw  $t0, -1120($fp)
  lw $t7, 0($t0)
  sw  $t7, -1124($fp)
  lw  $t1, -1124($fp)
  move  $v0, $t1
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  j label481
  label483 :
  j label473
  label472 :
  lw  $t2, -388($fp)
  lw  $t3, -488($fp)
  beq  $t3, $t2, label524
  j label525
  label524 :
  li  $t4, 0
  li  $t5, 4641
  bne  $t5, $t4, label527
  j label528
  label527 :
  label530 :
  lw  $t7, -672($fp)
  li  $t0, 10
  mul $t6, $t0, $t7
  sw  $t6, -1128($fp)
  li $t1, 17443
  sw  $t1, -576($fp)
  lw  $t3, -532($fp)
  sub $t2, $t3, 0
  lw  $t4, -532($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -1132($fp)
  lw  $t7, -1132($fp)
  add $t6, $t7, 46951
  sw  $t6, -1136($fp)
  addi  $sp, $sp, -4
  lw  $t0, -1136($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 17443
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1128($fp)
  sw  $t2, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t3, $v0
  sw  $t3, -1140($fp)
  addi  $sp, $sp, 12
  li  $t4, 0
  lw  $t5, -1140($fp)
  bne  $t5, $t4, label531
  j label532
  label531 :
  label533 :
  li $t6, 0
  sw  $t6, -1144($fp)
  lw  $t7, -708($fp)
  li  $t0, 34621
  bne  $t0, $t7, label536
  j label537
  label536 :
  li $t1, 1
  sw  $t1, -1144($fp)
  label537 :
  li $t2, 0
  sw  $t2, -1148($fp)
  lw  $t3, -912($fp)
  lw  $t4, -764($fp)
  bne  $t4, $t3, label540
  j label539
  label540 :
  li  $t5, 0
  lw  $t6, -352($fp)
  bne  $t6, $t5, label538
  j label539
  label538 :
  li $t7, 1
  sw  $t7, -1148($fp)
  label539 :
  li $t0, 0
  sw  $t0, -1152($fp)
  lw  $t2, -700($fp)
  li  $t3, 63263
  mul $t1, $t3, $t2
  sw  $t1, -1156($fp)
  li  $t4, 42542
  lw  $t5, -1156($fp)
  blt  $t5, $t4, label541
  j label542
  label541 :
  li $t6, 1
  sw  $t6, -1152($fp)
  label542 :
  li $t7, 0
  sw  $t7, -1160($fp)
  li  $t0, 0
  lw  $t1, -696($fp)
  bne  $t1, $t0, label545
  j label544
  label545 :
  li  $t2, 0
  lw  $t3, -908($fp)
  bne  $t3, $t2, label543
  j label544
  label543 :
  li $t4, 1
  sw  $t4, -1160($fp)
  label544 :
  li $t5, 0
  sw  $t5, -1164($fp)
  li $t6, 0
  sw  $t6, -1168($fp)
  lw  $t7, -380($fp)
  li  $t0, 27463
  bgt  $t0, $t7, label548
  j label549
  label548 :
  li $t1, 1
  sw  $t1, -1168($fp)
  label549 :
  li  $t2, 17142
  lw  $t3, -1168($fp)
  ble  $t3, $t2, label546
  j label547
  label546 :
  li $t4, 1
  sw  $t4, -1164($fp)
  label547 :
  li $t5, 0
  sw  $t5, -1172($fp)
  lw  $t7, -700($fp)
  sub $t6, $t7, 17616
  lw  $t0, -700($fp)
  li  $t1, 17616
  sub $t6, $t1, $t0
  sw  $t6, -1176($fp)
  li  $t2, 53781
  lw  $t3, -1176($fp)
  ble  $t3, $t2, label550
  j label551
  label550 :
  li $t4, 1
  sw  $t4, -1172($fp)
  label551 :
  li $t5, 0
  sw  $t5, -1180($fp)
  lw  $t7, -564($fp)
  sub $t6, $t7, 0
  lw  $t0, -564($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -1184($fp)
  li  $t2, 0
  lw  $t3, -1184($fp)
  bne  $t3, $t2, label554
  j label553
  label554 :
  li  $t4, 0
  lw  $t5, -704($fp)
  bne  $t5, $t4, label552
  j label553
  label552 :
  li $t6, 1
  sw  $t6, -1180($fp)
  label553 :
  addi  $sp, $sp, -4
  lw  $t7, -1180($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1172($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1164($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1160($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1152($fp)
  sw  $t3, 0($sp)
  jal  id_oB_SYT
  move  $t4, $v0
  sw  $t4, -1188($fp)
  addi  $sp, $sp, 20
  li  $t6, 3196
  lw  $t7, -1188($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -1192($fp)
  li $t0, 0
  sw  $t0, -1196($fp)
  li $t1, 0
  sw  $t1, -1200($fp)
  lw  $t2, -576($fp)
  li  $t3, 12301
  bgt  $t3, $t2, label557
  j label558
  label557 :
  li $t4, 1
  sw  $t4, -1200($fp)
  label558 :
  li  $t5, 7962
  lw  $t6, -1200($fp)
  ble  $t6, $t5, label555
  j label556
  label555 :
  li $t7, 1
  sw  $t7, -1196($fp)
  label556 :
  addi  $sp, $sp, -4
  lw  $t0, -1196($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1192($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1148($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1144($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 826017400
  sw  $t4, 0($sp)
  jal  id_oB_SYT
  move  $t5, $v0
  sw  $t5, -1204($fp)
  addi  $sp, $sp, 20
  lw  $t7, -1204($fp)
  sub $t6, $t7, 0
  lw  $t0, -1204($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -1208($fp)
  lw  $t2, -628($fp)
  lw  $t3, -1208($fp)
  bgt  $t3, $t2, label534
  j label535
  label534 :
  label559 :
  li $t4, 0
  sw  $t4, -1212($fp)
  li $t5, 0
  sw  $t5, -1216($fp)
  li  $t7, 4
  lw  $t0, -456($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1220($fp)
  lw  $t2, -1220($fp)
  la  $t3, -176($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1224($fp)
  lw  $t5, -1224($fp)
  lw $t4, 0($t5)
  sw  $t4, -1228($fp)
  li  $t6, 63110
  lw  $t7, -1228($fp)
  beq  $t7, $t6, label564
  j label565
  label564 :
  li $t0, 1
  sw  $t0, -1216($fp)
  label565 :
  lw  $t2, -540($fp)
  lw  $t3, -708($fp)
  sub $t1, $t3, $t2
  sw  $t1, -1232($fp)
  lw  $t4, -1232($fp)
  lw  $t5, -1216($fp)
  bne  $t5, $t4, label562
  j label563
  label562 :
  li $t6, 1
  sw  $t6, -1212($fp)
  label563 :
  lw  $t0, -1212($fp)
  move $t7, $t0
  sw  $t7, -388($fp)
  li  $t1, 0
  lw  $t2, -1212($fp)
  bne  $t2, $t1, label560
  j label561
  label560 :
  li $t3, 59362
  sw  $t3, -1236($fp)
  label570 :
  li $t4, 0
  sw  $t4, -1240($fp)
  lw  $t6, -376($fp)
  sub $t5, $t6, 56816
  lw  $t7, -376($fp)
  li  $t0, 56816
  sub $t5, $t0, $t7
  sw  $t5, -1244($fp)
  li  $t1, 0
  lw  $t2, -1244($fp)
  bne  $t2, $t1, label573
  j label575
  label575 :
  li  $t3, 0
  lw  $t4, 0($fp)
  bne  $t4, $t3, label573
  j label574
  label573 :
  li $t5, 1
  sw  $t5, -1240($fp)
  label574 :
  li $t6, 16448
  sw  $t6, -696($fp)
  li $t7, 0
  sw  $t7, -1248($fp)
  lw  $t0, -564($fp)
  li  $t1, 45475
  blt  $t1, $t0, label576
  j label577
  label576 :
  li $t2, 1
  sw  $t2, -1248($fp)
  label577 :
  lw  $t4, -376($fp)
  move $t3, $t4
  sw  $t3, -576($fp)
  lw  $t6, -376($fp)
  add $t5, $t6, 43504
  lw  $t7, -376($fp)
  li  $t0, 43504
  add $t5, $t0, $t7
  sw  $t5, -1252($fp)
  lw  $t2, -1252($fp)
  sub $t1, $t2, 52328
  sw  $t1, -1256($fp)
  lw  $t4, -1236($fp)
  move $t3, $t4
  sw  $t3, -444($fp)
  li $t5, 0
  sw  $t5, -1260($fp)
  li $t6, 0
  sw  $t6, -1264($fp)
  li  $t7, 37290
  lw  $t0, -904($fp)
  bne  $t0, $t7, label580
  j label581
  label580 :
  li $t1, 1
  sw  $t1, -1264($fp)
  label581 :
  lw  $t2, -724($fp)
  lw  $t3, -1264($fp)
  beq  $t3, $t2, label578
  j label579
  label578 :
  li $t4, 1
  sw  $t4, -1260($fp)
  label579 :
  lw  $t6, -724($fp)
  sub $t5, $t6, 0
  lw  $t7, -724($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1268($fp)
  li  $t2, 4
  la  $t3, -40($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1272($fp)
  lw  $t5, -1272($fp)
  lw $t4, 0($t5)
  sw  $t4, -1276($fp)
  addi  $sp, $sp, -4
  lw  $t6, -1276($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1268($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1260($fp)
  sw  $t0, 0($sp)
  jal  id_zA90b
  move  $t1, $v0
  sw  $t1, -1280($fp)
  addi  $sp, $sp, 12
  addi  $sp, $sp, -4
  lw  $t2, -1280($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1236($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1256($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -376($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1248($fp)
  sw  $t6, 0($sp)
  jal  id_oB_SYT
  move  $t7, $v0
  sw  $t7, -1284($fp)
  addi  $sp, $sp, 20
  li $t0, 0
  sw  $t0, -1288($fp)
  li  $t1, 29752
  li  $t2, 25400
  bge  $t2, $t1, label582
  j label583
  label582 :
  li $t3, 1
  sw  $t3, -1288($fp)
  label583 :
  addi  $sp, $sp, -4
  lw  $t4, -1288($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, 928631304
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1284($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 16448
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1240($fp)
  sw  $t0, 0($sp)
  jal  id_nI
  move  $t1, $v0
  sw  $t1, -1292($fp)
  addi  $sp, $sp, 20
  li  $t2, 0
  lw  $t3, -1292($fp)
  bne  $t3, $t2, label572
  j label571
  label571 :
  li $t4, 0
  sw  $t4, -1296($fp)
  li $t5, 0
  sw  $t5, -1300($fp)
  li  $t6, 0
  lw  $t7, -608($fp)
  bne  $t7, $t6, label587
  j label586
  label586 :
  li $t0, 1
  sw  $t0, -1300($fp)
  label587 :
  lw  $t2, -1300($fp)
  sub $t1, $t2, 0
  lw  $t3, -1300($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -1304($fp)
  li  $t5, 39635
  lw  $t6, -1304($fp)
  beq  $t6, $t5, label584
  j label585
  label584 :
  li $t7, 1
  sw  $t7, -1296($fp)
  label585 :
  li $t0, 0
  sw  $t0, -1308($fp)
  li  $t2, 8
  la  $t3, -180($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1312($fp)
  lw  $t5, -1312($fp)
  lw $t4, 0($t5)
  sw  $t4, -1316($fp)
  lw  $t6, -392($fp)
  lw  $t7, -1316($fp)
  bne  $t7, $t6, label588
  j label589
  label588 :
  li $t0, 1
  sw  $t0, -1308($fp)
  label589 :
  li $t1, 0
  sw  $t1, -1320($fp)
  li $t2, 0
  sw  $t2, -1324($fp)
  li  $t3, 18215
  li  $t4, 62359
  ble  $t4, $t3, label592
  j label593
  label592 :
  li $t5, 1
  sw  $t5, -1324($fp)
  label593 :
  lw  $t6, 4($fp)
  lw  $t7, -1324($fp)
  beq  $t7, $t6, label590
  j label591
  label590 :
  li $t0, 1
  sw  $t0, -1320($fp)
  label591 :
  li $t1, 0
  sw  $t1, -1328($fp)
  li  $t2, 13278
  li  $t3, 51642
  bgt  $t3, $t2, label594
  j label595
  label594 :
  li $t4, 1
  sw  $t4, -1328($fp)
  label595 :
  addi  $sp, $sp, -4
  lw  $t5, -1328($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1320($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1308($fp)
  sw  $t7, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t0, $v0
  sw  $t0, -1332($fp)
  addi  $sp, $sp, 12
  li $t1, 0
  sw  $t1, -1336($fp)
  li  $t2, 40741
  li  $t3, -44590
  ble  $t3, $t2, label599
  j label597
  label599 :
  lw  $t5, -396($fp)
  sub $t4, $t5, 0
  lw  $t6, -396($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -1340($fp)
  lw  $t1, -620($fp)
  lw  $t2, -1340($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1344($fp)
  li  $t3, 0
  lw  $t4, -1344($fp)
  bne  $t4, $t3, label598
  j label597
  label598 :
  li $t5, 0
  sw  $t5, -1348($fp)
  li  $t6, 46264
  li  $t7, 33085
  blt  $t7, $t6, label600
  j label601
  label600 :
  li $t0, 1
  sw  $t0, -1348($fp)
  label601 :
  li  $t1, -28987
  lw  $t2, -1348($fp)
  bge  $t2, $t1, label596
  j label597
  label596 :
  li $t3, 1
  sw  $t3, -1336($fp)
  label597 :
  li $t4, 0
  sw  $t4, -1352($fp)
  lw  $t5, -812($fp)
  lw  $t6, -484($fp)
  bne  $t6, $t5, label602
  j label603
  label602 :
  li $t7, 1
  sw  $t7, -1352($fp)
  label603 :
  lw  $t1, -1352($fp)
  move $t0, $t1
  sw  $t0, -804($fp)
  lw  $t3, -1352($fp)
  move $t2, $t3
  sw  $t2, -728($fp)
  j label570
  label572 :
  j label559
  label561 :
  j label533
  label535 :
  j label530
  label532 :
  j label529
  label528 :
  label610 :
  li $t4, 0
  sw  $t4, -1356($fp)
  lw  $t6, -700($fp)
  sub $t5, $t6, 0
  lw  $t7, -700($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1360($fp)
  li $t1, 0
  sw  $t1, -1364($fp)
  li  $t3, 16
  la  $t4, -100($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1368($fp)
  lw  $t6, -1368($fp)
  lw $t5, 0($t6)
  sw  $t5, -1372($fp)
  li  $t7, 36949
  lw  $t0, -1372($fp)
  beq  $t0, $t7, label615
  j label616
  label615 :
  li $t1, 1
  sw  $t1, -1364($fp)
  label616 :
  li $t2, 0
  sw  $t2, -1376($fp)
  li  $t3, 0
  lw  $t4, -888($fp)
  bne  $t4, $t3, label619
  j label618
  label619 :
  li  $t5, 0
  li  $t6, 33856
  bne  $t6, $t5, label617
  j label618
  label617 :
  li $t7, 1
  sw  $t7, -1376($fp)
  label618 :
  addi  $sp, $sp, -4
  lw  $t0, -1376($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1364($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1360($fp)
  sw  $t2, 0($sp)
  jal  id_IBvdWNifc
  move  $t3, $v0
  sw  $t3, -1380($fp)
  addi  $sp, $sp, 12
  li  $t4, 0
  lw  $t5, -1380($fp)
  bne  $t5, $t4, label614
  j label613
  label613 :
  li $t6, 1
  sw  $t6, -1356($fp)
  label614 :
  lw  $t0, -1356($fp)
  sub $t7, $t0, 0
  lw  $t1, -1356($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -1384($fp)
  lw  $t4, -624($fp)
  add $t3, $t4, 52392
  lw  $t5, -624($fp)
  li  $t6, 52392
  add $t3, $t6, $t5
  sw  $t3, -1388($fp)
  li $t7, 50304
  sw  $t7, -720($fp)
  addi  $sp, $sp, -4
  li  $t0, 50304
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, 28230
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1388($fp)
  sw  $t2, 0($sp)
  jal  id_IBvdWNifc
  move  $t3, $v0
  sw  $t3, -1392($fp)
  addi  $sp, $sp, 12
  li  $t5, 0
  la  $t6, -176($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1396($fp)
  lw  $t0, -1396($fp)
  lw $t7, 0($t0)
  sw  $t7, -1400($fp)
  li $t1, 0
  sw  $t1, -1404($fp)
  lw  $t3, -888($fp)
  li  $t4, 37096
  div $t4, $t3
  mflo $t2
  sw  $t2, -1408($fp)
  li  $t5, 4085
  lw  $t6, -1408($fp)
  bgt  $t6, $t5, label620
  j label621
  label620 :
  li $t7, 1
  sw  $t7, -1404($fp)
  label621 :
  li $t0, 0
  sw  $t0, -1412($fp)
  li  $t1, 0
  li  $t2, 22832
  bne  $t2, $t1, label623
  j label622
  label622 :
  li $t3, 1
  sw  $t3, -1412($fp)
  label623 :
  lw  $t5, -812($fp)
  lw  $t6, -1412($fp)
  add $t4, $t6, $t5
  sw  $t4, -1416($fp)
  li $t7, 0
  sw  $t7, -1420($fp)
  lw  $t0, -808($fp)
  li  $t1, 54647
  blt  $t1, $t0, label626
  j label625
  label626 :
  li  $t2, 0
  li  $t3, 39038
  bne  $t3, $t2, label624
  j label625
  label624 :
  li $t4, 1
  sw  $t4, -1420($fp)
  label625 :
  addi  $sp, $sp, -4
  lw  $t5, -1420($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1416($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1404($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1400($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1392($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -1424($fp)
  addi  $sp, $sp, 20
  lw  $t4, -1424($fp)
  lw  $t5, -1384($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1428($fp)
  li  $t6, 49400
  lw  $t7, -1428($fp)
  bge  $t7, $t6, label611
  j label612
  label611 :
  j label610
  label612 :
  label529 :
  j label526
  label525 :
  li $t0, 0
  sw  $t0, -1432($fp)
  li $t1, 42247
  sw  $t1, -720($fp)
  li $t2, 0
  sw  $t2, -1436($fp)
  lw  $t4, -700($fp)
  sub $t3, $t4, 13616
  sw  $t3, -1440($fp)
  li  $t5, 0
  lw  $t6, -1440($fp)
  bne  $t6, $t5, label634
  j label633
  label634 :
  li  $t7, 0
  lw  $t0, -764($fp)
  bne  $t0, $t7, label632
  j label633
  label632 :
  li $t1, 1
  sw  $t1, -1436($fp)
  label633 :
  li $t2, 0
  sw  $t2, -1444($fp)
  lw  $t4, -676($fp)
  lw  $t5, -376($fp)
  sub $t3, $t5, $t4
  sw  $t3, -1448($fp)
  li  $t6, 0
  lw  $t7, -1448($fp)
  bne  $t7, $t6, label635
  j label637
  label637 :
  li  $t0, 0
  lw  $t1, -444($fp)
  bne  $t1, $t0, label635
  j label636
  label635 :
  li $t2, 1
  sw  $t2, -1444($fp)
  label636 :
  addi  $sp, $sp, -4
  lw  $t3, -1444($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1436($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, 42247
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -1452($fp)
  addi  $sp, $sp, 12
  lw  $t7, -388($fp)
  lw  $t0, -1452($fp)
  bge  $t0, $t7, label630
  j label631
  label630 :
  li $t1, 1
  sw  $t1, -1432($fp)
  label631 :
  li $t2, 0
  sw  $t2, -1456($fp)
  li  $t4, 4
  lw  $t5, -696($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1460($fp)
  lw  $t7, -1460($fp)
  la  $t0, -140($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1464($fp)
  lw  $t2, -1464($fp)
  lw $t1, 0($t2)
  sw  $t1, -1468($fp)
  li  $t3, 50937
  lw  $t4, -1468($fp)
  bgt  $t4, $t3, label638
  j label639
  label638 :
  li $t5, 1
  sw  $t5, -1456($fp)
  label639 :
  li $t6, 0
  sw  $t6, -1472($fp)
  li  $t7, 0
  li  $t0, 26871
  bne  $t0, $t7, label643
  j label641
  label643 :
  li  $t1, 0
  li  $t2, 14182
  bne  $t2, $t1, label642
  j label641
  label642 :
  li  $t3, 0
  li  $t4, 47760
  bne  $t4, $t3, label640
  j label641
  label640 :
  li $t5, 1
  sw  $t5, -1472($fp)
  label641 :
  li $t6, 0
  sw  $t6, -1476($fp)
  lw  $t0, -568($fp)
  add $t7, $t0, 45086
  sw  $t7, -1480($fp)
  lw  $t1, -748($fp)
  lw  $t2, -1480($fp)
  beq  $t2, $t1, label644
  j label645
  label644 :
  li $t3, 1
  sw  $t3, -1476($fp)
  label645 :
  addi  $sp, $sp, -4
  lw  $t4, -1476($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -344($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1472($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1456($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1432($fp)
  sw  $t0, 0($sp)
  jal  id_oB_SYT
  move  $t1, $v0
  sw  $t1, -1484($fp)
  addi  $sp, $sp, 20
  li  $t2, 0
  lw  $t3, -1484($fp)
  bne  $t3, $t2, label627
  j label628
  label627 :
  label646 :
  li  $t4, 0
  li  $t5, 288
  bne  $t5, $t4, label647
  j label648
  label647 :
  j label646
  label648 :
  j label629
  label628 :
  label649 :
  li $t6, 0
  sw  $t6, -1488($fp)
  li $t7, 0
  sw  $t7, -1492($fp)
  lw  $t0, -452($fp)
  lw  $t1, -700($fp)
  bne  $t1, $t0, label655
  j label657
  label657 :
  li  $t2, 0
  li  $t3, 61038
  bne  $t3, $t2, label655
  j label656
  label655 :
  li $t4, 1
  sw  $t4, -1492($fp)
  label656 :
  li $t5, 61029
  sw  $t5, -900($fp)
  lw  $t7, -560($fp)
  move $t6, $t7
  sw  $t6, 4($fp)
  li $t0, 0
  sw  $t0, -1496($fp)
  li  $t1, 0
  li  $t2, 28936
  bne  $t2, $t1, label660
  j label658
  label660 :
  li  $t3, 0
  li  $t4, 36244
  bne  $t4, $t3, label658
  j label659
  label658 :
  li $t5, 1
  sw  $t5, -1496($fp)
  label659 :
  li  $t7, 4
  la  $t0, -196($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1500($fp)
  lw  $t2, -1500($fp)
  lw $t1, 0($t2)
  sw  $t1, -1504($fp)
  addi  $sp, $sp, -4
  lw  $t3, -896($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, 0($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1504($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1496($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -560($fp)
  sw  $t7, 0($sp)
  jal  id_oB_SYT
  move  $t0, $v0
  sw  $t0, -1508($fp)
  addi  $sp, $sp, 20
  li $t1, 0
  sw  $t1, -1512($fp)
  li $t2, 0
  sw  $t2, -1516($fp)
  lw  $t3, -756($fp)
  lw  $t4, -348($fp)
  beq  $t4, $t3, label663
  j label664
  label663 :
  li $t5, 1
  sw  $t5, -1516($fp)
  label664 :
  lw  $t6, -728($fp)
  lw  $t7, -1516($fp)
  bne  $t7, $t6, label661
  j label662
  label661 :
  li $t0, 1
  sw  $t0, -1512($fp)
  label662 :
  addi  $sp, $sp, -4
  lw  $t1, -1512($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  li  $t2, 67926
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1508($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 61029
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1492($fp)
  sw  $t5, 0($sp)
  jal  id_oB_SYT
  move  $t6, $v0
  sw  $t6, -1520($fp)
  addi  $sp, $sp, 20
  li  $t0, 33179
  lw  $t1, -604($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1524($fp)
  lw  $t3, -1524($fp)
  add $t2, $t3, 55087
  sw  $t2, -1528($fp)
  lw  $t5, -444($fp)
  lw  $t6, -668($fp)
  add $t4, $t6, $t5
  sw  $t4, -1532($fp)
  lw  $t0, -1532($fp)
  sub $t7, $t0, 64874
  sw  $t7, -1536($fp)
  addi  $sp, $sp, -4
  lw  $t1, -1536($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1528($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  li  $t3, 36644
  sw  $t3, 0($sp)
  jal  id_zA90b
  move  $t4, $v0
  sw  $t4, -1540($fp)
  addi  $sp, $sp, 12
  lw  $t5, -1540($fp)
  lw  $t6, -1520($fp)
  bgt  $t6, $t5, label653
  j label654
  label653 :
  li $t7, 1
  sw  $t7, -1488($fp)
  label654 :
  li $t0, 0
  sw  $t0, -1544($fp)
  li $t1, 0
  sw  $t1, -1548($fp)
  li  $t2, 0
  li  $t3, 17948
  bne  $t3, $t2, label669
  j label668
  label669 :
  li  $t4, 0
  lw  $t5, -392($fp)
  bne  $t5, $t4, label667
  j label668
  label667 :
  li $t6, 1
  sw  $t6, -1548($fp)
  label668 :
  li $t7, 0
  sw  $t7, -1552($fp)
  li  $t0, 0
  lw  $t1, -728($fp)
  bne  $t1, $t0, label672
  j label671
  label672 :
  li  $t2, 0
  lw  $t3, -764($fp)
  bne  $t3, $t2, label670
  j label671
  label670 :
  li $t4, 1
  sw  $t4, -1552($fp)
  label671 :
  li $t5, 0
  sw  $t5, -1556($fp)
  li $t6, 0
  sw  $t6, -1560($fp)
  li  $t7, 0
  lw  $t0, -704($fp)
  bne  $t0, $t7, label676
  j label675
  label675 :
  li $t1, 1
  sw  $t1, -1560($fp)
  label676 :
  li  $t2, 21882
  lw  $t3, -1560($fp)
  ble  $t3, $t2, label673
  j label674
  label673 :
  li $t4, 1
  sw  $t4, -1556($fp)
  label674 :
  addi  $sp, $sp, -4
  lw  $t5, -1556($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1552($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1548($fp)
  sw  $t7, 0($sp)
  jal  id_IBvdWNifc
  move  $t0, $v0
  sw  $t0, -1564($fp)
  addi  $sp, $sp, 12
  li  $t1, 0
  lw  $t2, -1564($fp)
  bne  $t2, $t1, label666
  j label665
  label665 :
  li $t3, 1
  sw  $t3, -1544($fp)
  label666 :
  li $t4, 0
  sw  $t4, -1568($fp)
  lw  $t6, -456($fp)
  sub $t5, $t6, 55044
  lw  $t7, -456($fp)
  li  $t0, 55044
  sub $t5, $t0, $t7
  sw  $t5, -1572($fp)
  li  $t1, 0
  lw  $t2, -1572($fp)
  bne  $t2, $t1, label677
  j label679
  label679 :
  li  $t3, 0
  li  $t4, 25967
  bne  $t4, $t3, label677
  j label678
  label677 :
  li $t5, 1
  sw  $t5, -1568($fp)
  label678 :
  li  $t7, 28
  la  $t0, -248($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1576($fp)
  lw  $t2, -1576($fp)
  lw $t1, 0($t2)
  sw  $t1, -1580($fp)
  li  $t4, 65005
  lw  $t5, -1580($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1584($fp)
  addi  $sp, $sp, -4
  lw  $t6, -1584($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -652($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -1568($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  li  $t1, -5537
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1544($fp)
  sw  $t2, 0($sp)
  jal  id_oB_SYT
  move  $t3, $v0
  sw  $t3, -1588($fp)
  addi  $sp, $sp, 20
  lw  $t4, -1588($fp)
  lw  $t5, -1488($fp)
  beq  $t5, $t4, label652
  j label651
  label652 :
  lw  $t7, -452($fp)
  li  $t0, 55458
  div $t0, $t7
  mflo $t6
  sw  $t6, -1592($fp)
  lw  $t2, -1592($fp)
  sub $t1, $t2, 12233
  lw  $t3, -1592($fp)
  li  $t4, 12233
  sub $t1, $t4, $t3
  sw  $t1, -1596($fp)
  li  $t5, 0
  lw  $t6, -1596($fp)
  bne  $t6, $t5, label650
  j label651
  label650 :
  li $t7, 0
  sw  $t7, -1600($fp)
  li  $t0, 0
  lw  $t1, -568($fp)
  bne  $t1, $t0, label684
  j label683
  label683 :
  li $t2, 1
  sw  $t2, -1600($fp)
  label684 :
  lw  $t4, -1600($fp)
  sub $t3, $t4, 0
  lw  $t5, -1600($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -1604($fp)
  lw  $t0, -1604($fp)
  lw  $t1, -572($fp)
  sub $t7, $t1, $t0
  sw  $t7, -1608($fp)
  li  $t2, 0
  lw  $t3, -1608($fp)
  bne  $t3, $t2, label680
  j label681
  label680 :
  li $t4, 0
  sw  $t4, -1612($fp)
  lw  $t6, -720($fp)
  li  $t7, 41716
  div $t7, $t6
  mflo $t5
  sw  $t5, -1616($fp)
  lw  $t0, -444($fp)
  lw  $t1, -1616($fp)
  bne  $t1, $t0, label690
  j label689
  label690 :
  li  $t2, 40859
  li  $t3, 25850
  ble  $t3, $t2, label688
  j label689
  label688 :
  li $t4, 1
  sw  $t4, -1612($fp)
  label689 :
  lw  $t6, -1612($fp)
  move $t5, $t6
  sw  $t5, -612($fp)
  li  $t7, 0
  lw  $t0, -1612($fp)
  bne  $t0, $t7, label685
  j label686
  label685 :
  li $t1, 0
  sw  $t1, -1620($fp)
  li $t2, 0
  sw  $t2, -1624($fp)
  li  $t3, 23084
  li  $t4, 122137632
  bge  $t4, $t3, label696
  j label697
  label696 :
  li $t5, 1
  sw  $t5, -1624($fp)
  label697 :
  li  $t7, 4
  lw  $t0, -1624($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1628($fp)
  lw  $t2, -1628($fp)
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1632($fp)
  lw  $t5, -1632($fp)
  lw $t4, 0($t5)
  sw  $t4, -1636($fp)
  li  $t6, 0
  lw  $t7, -1636($fp)
  bne  $t7, $t6, label695
  j label694
  label694 :
  li $t0, 1
  sw  $t0, -1620($fp)
  label695 :
  lw  $t1, -1620($fp)
  move  $v0, $t1
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  j label687
  label686 :
  li $t2, 48138
  sw  $t2, -1640($fp)
  li $t3, 0
  sw  $t3, -1644($fp)
  li  $t4, 0
  lw  $t5, -712($fp)
  bgt  $t5, $t4, label701
  j label702
  label701 :
  li $t6, 1
  sw  $t6, -1644($fp)
  label702 :
  lw  $t0, -344($fp)
  sub $t7, $t0, 0
  sw  $t7, -1648($fp)
  lw  $t1, -1648($fp)
  lw  $t2, -1644($fp)
  blt  $t2, $t1, label698
  j label699
  label698 :
  li  $t3, 0
  lw  $t4, -456($fp)
  bne  $t4, $t3, label703
  j label706
  label706 :
  li $t5, 0
  sw  $t5, -1652($fp)
  li  $t6, 0
  lw  $t7, -616($fp)
  bne  $t7, $t6, label708
  j label707
  label707 :
  li $t0, 1
  sw  $t0, -1652($fp)
  label708 :
  lw  $t2, -892($fp)
  lw  $t3, -1652($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -1656($fp)
  li $t4, 0
  sw  $t4, -1660($fp)
  li  $t5, 0
  li  $t6, 6673
  bne  $t6, $t5, label710
  j label709
  label709 :
  li $t7, 1
  sw  $t7, -1660($fp)
  label710 :
  lw  $t0, -1660($fp)
  lw  $t1, -1656($fp)
  bne  $t1, $t0, label703
  j label704
  label703 :
  j label705
  label704 :
  li $t2, 0
  sw  $t2, -1664($fp)
  li  $t3, 0
  li  $t4, 54525
  bne  $t4, $t3, label712
  j label711
  label711 :
  li $t5, 1
  sw  $t5, -1664($fp)
  label712 :
  li $t6, 0
  sw  $t6, -1668($fp)
  li  $t7, 0
  lw  $t0, -484($fp)
  bne  $t0, $t7, label713
  j label716
  label716 :
  li  $t1, 0
  li  $t2, 5996
  bne  $t2, $t1, label713
  j label715
  label715 :
  li  $t3, 0
  li  $t4, 16081
  bne  $t4, $t3, label713
  j label714
  label713 :
  li $t5, 1
  sw  $t5, -1668($fp)
  label714 :
  li $t6, 0
  sw  $t6, -1672($fp)
  li  $t7, 0
  li  $t0, 25634
  bne  $t0, $t7, label718
  j label717
  label717 :
  li $t1, 1
  sw  $t1, -1672($fp)
  label718 :
  lw  $t3, -1672($fp)
  sub $t2, $t3, 0
  lw  $t4, -1672($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -1676($fp)
  li $t6, 0
  sw  $t6, -1680($fp)
  li  $t7, 0
  li  $t0, 39176
  bne  $t0, $t7, label719
  j label722
  label722 :
  li  $t1, 0
  li  $t2, 5632
  bne  $t2, $t1, label719
  j label721
  label721 :
  li  $t3, 0
  li  $t4, 24972
  bne  $t4, $t3, label719
  j label720
  label719 :
  li $t5, 1
  sw  $t5, -1680($fp)
  label720 :
  lw  $t7, -720($fp)
  move $t6, $t7
  sw  $t6, -1640($fp)
  li  $t1, 57124
  lw  $t2, -568($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1684($fp)
  addi  $sp, $sp, -4
  lw  $t3, -1684($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -720($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -1680($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -1676($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -1668($fp)
  sw  $t7, 0($sp)
  jal  id_nI
  move  $t0, $v0
  sw  $t0, -1688($fp)
  addi  $sp, $sp, 20
  lw  $t2, -656($fp)
  sub $t1, $t2, 0
  lw  $t3, -656($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -1692($fp)
  lw  $t6, -1692($fp)
  add $t5, $t6, 27514
  sw  $t5, -1696($fp)
  li $t7, 0
  sw  $t7, -1700($fp)
  lw  $t1, -764($fp)
  add $t0, $t1, 30509
  lw  $t2, -764($fp)
  li  $t3, 30509
  add $t0, $t3, $t2
  sw  $t0, -1704($fp)
  li  $t4, 0
  lw  $t5, -1704($fp)
  bne  $t5, $t4, label725
  j label724
  label725 :
  li  $t6, 0
  lw  $t7, -620($fp)
  bne  $t7, $t6, label723
  j label724
  label723 :
  li $t0, 1
  sw  $t0, -1700($fp)
  label724 :
  addi  $sp, $sp, -4
  lw  $t1, -1700($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1696($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1688($fp)
  sw  $t3, 0($sp)
  jal  id_zA90b
  move  $t4, $v0
  sw  $t4, -1708($fp)
  addi  $sp, $sp, 12
  lw  $t6, -1708($fp)
  lw  $t7, -1664($fp)
  add $t5, $t7, $t6
  sw  $t5, -1712($fp)
  label705 :
  j label700
  label699 :
  label700 :
  label687 :
  j label682
  label681 :
  li $t0, 46632
  sw  $t0, -1716($fp)
  li $t1, 0
  sw  $t1, -1720($fp)
  li $t2, 0
  sw  $t2, -1724($fp)
  li $t3, 0
  sw  $t3, -1728($fp)
  li $t4, 0
  sw  $t4, -1732($fp)
  li  $t6, 0
  la  $t7, -176($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1736($fp)
  lw  $t1, -1736($fp)
  lw $t0, 0($t1)
  sw  $t0, -1740($fp)
  li  $t2, 0
  lw  $t3, -1740($fp)
  bne  $t3, $t2, label733
  j label732
  label732 :
  li $t4, 1
  sw  $t4, -1732($fp)
  label733 :
  lw  $t6, -700($fp)
  sub $t5, $t6, 0
  lw  $t7, -700($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1744($fp)
  lw  $t1, -1744($fp)
  lw  $t2, -1732($fp)
  ble  $t2, $t1, label730
  j label731
  label730 :
  li $t3, 1
  sw  $t3, -1728($fp)
  label731 :
  li  $t5, 25252
  lw  $t6, -712($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -1748($fp)
  lw  $t7, -1748($fp)
  lw  $t0, -1728($fp)
  bgt  $t0, $t7, label728
  j label729
  label728 :
  li $t1, 1
  sw  $t1, -1724($fp)
  label729 :
  li  $t3, 4
  lw  $t4, -388($fp)
  mul $t2, $t4, $t3
  sw  $t2, -1752($fp)
  lw  $t6, -1752($fp)
  la  $t7, -196($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1756($fp)
  lw  $t1, -1756($fp)
  lw $t0, 0($t1)
  sw  $t0, -1760($fp)
  li  $t3, 5577
  lw  $t4, -1760($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -1764($fp)
  lw  $t5, -1764($fp)
  lw  $t6, -1724($fp)
  beq  $t6, $t5, label726
  j label727
  label726 :
  li $t7, 1
  sw  $t7, -1720($fp)
  label727 :
  li $t0, 0
  sw  $t0, -1768($fp)
  li  $t1, 0
  li  $t2, 15174
  bne  $t2, $t1, label734
  j label736
  label736 :
  li  $t4, 4
  lw  $t5, -448($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1772($fp)
  lw  $t7, -1772($fp)
  la  $t0, -140($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1776($fp)
  lw  $t2, -1776($fp)
  lw $t1, 0($t2)
  sw  $t1, -1780($fp)
  li  $t3, 0
  lw  $t4, -1780($fp)
  bne  $t4, $t3, label735
  j label734
  label734 :
  li $t5, 1
  sw  $t5, -1768($fp)
  label735 :
  li $t6, 0
  sw  $t6, -1784($fp)
  lw  $t0, -904($fp)
  add $t7, $t0, -29130
  lw  $t1, -904($fp)
  li  $t2, -29130
  add $t7, $t2, $t1
  sw  $t7, -1788($fp)
  li  $t4, 4
  lw  $t5, 4($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1792($fp)
  lw  $t7, -1792($fp)
  la  $t0, -180($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1796($fp)
  lw  $t2, -1796($fp)
  lw $t1, 0($t2)
  sw  $t1, -1800($fp)
  lw  $t4, -1800($fp)
  lw  $t5, -1788($fp)
  sub $t3, $t5, $t4
  sw  $t3, -1804($fp)
  li  $t6, 0
  lw  $t7, -1804($fp)
  bne  $t7, $t6, label737
  j label739
  label739 :
  li  $t1, 4
  lw  $t2, -892($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1808($fp)
  lw  $t4, -1808($fp)
  la  $t5, -100($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1812($fp)
  lw  $t7, -1812($fp)
  lw $t6, 0($t7)
  sw  $t6, -1816($fp)
  lw  $t1, -1816($fp)
  sub $t0, $t1, 5
  sw  $t0, -1820($fp)
  li  $t2, 0
  lw  $t3, -1820($fp)
  bne  $t3, $t2, label737
  j label738
  label737 :
  li $t4, 1
  sw  $t4, -1784($fp)
  label738 :
  li $t5, 0
  sw  $t5, -1824($fp)
  li  $t6, 0
  lw  $t7, -1716($fp)
  bne  $t7, $t6, label741
  j label740
  label740 :
  li $t0, 1
  sw  $t0, -1824($fp)
  label741 :
  lw  $t2, -1824($fp)
  add $t1, $t2, 13581
  sw  $t1, -1828($fp)
  label682 :
  j label649
  label651 :
  label629 :
  label526 :
  label473 :
  li $t3, 0
  sw  $t3, -1832($fp)
  lw  $t5, -748($fp)
  li  $t6, 14784
  mul $t4, $t6, $t5
  sw  $t4, -1836($fp)
  li  $t7, 46243
  lw  $t0, -1836($fp)
  bge  $t0, $t7, label745
  j label746
  label745 :
  li $t1, 1
  sw  $t1, -1832($fp)
  label746 :
  li $t2, 0
  sw  $t2, -1840($fp)
  lw  $t4, -752($fp)
  li  $t5, 32168
  div $t5, $t4
  mflo $t3
  sw  $t3, -1844($fp)
  li  $t6, 0
  lw  $t7, -1844($fp)
  bne  $t7, $t6, label747
  j label749
  label749 :
  li  $t0, 0
  li  $t1, 58415
  bne  $t1, $t0, label747
  j label748
  label747 :
  li $t2, 1
  sw  $t2, -1840($fp)
  label748 :
  li  $t4, 0
  la  $t5, -148($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1848($fp)
  lw  $t7, -1848($fp)
  lw $t6, 0($t7)
  sw  $t6, -1852($fp)
  li $t0, 0
  sw  $t0, -1856($fp)
  li  $t1, 0
  li  $t2, 128439
  bne  $t2, $t1, label750
  j label752
  label752 :
  li  $t3, 0
  lw  $t4, -560($fp)
  bne  $t4, $t3, label750
  j label751
  label750 :
  li $t5, 1
  sw  $t5, -1856($fp)
  label751 :
  lw  $t7, -656($fp)
  move $t6, $t7
  sw  $t6, -724($fp)
  addi  $sp, $sp, -4
  lw  $t0, -656($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1856($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1852($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1840($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -1832($fp)
  sw  $t4, 0($sp)
  jal  id_nI
  move  $t5, $v0
  sw  $t5, -1860($fp)
  addi  $sp, $sp, 20
  li  $t6, 0
  lw  $t7, -1860($fp)
  bne  $t7, $t6, label742
  j label743
  label742 :
  li  $t1, 12
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1864($fp)
  lw  $t4, -1864($fp)
  lw $t3, 0($t4)
  sw  $t3, -1868($fp)
  lw  $t6, -1868($fp)
  lw  $t7, -580($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -1872($fp)
  li  $t1, 4
  lw  $t2, -604($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1876($fp)
  lw  $t4, -1876($fp)
  la  $t5, -212($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1880($fp)
  lw  $t7, -1880($fp)
  lw $t6, 0($t7)
  sw  $t6, -1884($fp)
  li  $t1, 4
  lw  $t2, -1884($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1888($fp)
  lw  $t4, -1888($fp)
  la  $t5, -156($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1892($fp)
  lw  $t7, -1892($fp)
  lw $t6, 0($t7)
  sw  $t6, -1896($fp)
  lw  $t1, -1896($fp)
  lw  $t2, -1872($fp)
  sub $t0, $t2, $t1
  sw  $t0, -1900($fp)
  lw  $t3, -1900($fp)
  move  $v0, $t3
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  j label744
  label743 :
  li $t4, 0
  sw  $t4, -1904($fp)
  li  $t5, 0
  li  $t6, 13897
  bne  $t6, $t5, label757
  j label756
  label756 :
  li $t7, 1
  sw  $t7, -1904($fp)
  label757 :
  li $t0, 0
  sw  $t0, -1908($fp)
  li $t1, 0
  sw  $t1, -1912($fp)
  lw  $t2, -700($fp)
  li  $t3, 36086
  bne  $t3, $t2, label760
  j label761
  label760 :
  li $t4, 1
  sw  $t4, -1912($fp)
  label761 :
  lw  $t5, -344($fp)
  lw  $t6, -1912($fp)
  beq  $t6, $t5, label758
  j label759
  label758 :
  li $t7, 1
  sw  $t7, -1908($fp)
  label759 :
  li $t0, 44724
  sw  $t0, -476($fp)
  addi  $sp, $sp, -4
  li  $t1, 44724
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1908($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -1904($fp)
  sw  $t3, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t4, $v0
  sw  $t4, -1916($fp)
  addi  $sp, $sp, 12
  li  $t5, 0
  lw  $t6, -1916($fp)
  bne  $t6, $t5, label753
  j label754
  label753 :
  lw  $t0, -608($fp)
  lw  $t1, -532($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -1920($fp)
  lw  $t3, -612($fp)
  lw  $t4, -1920($fp)
  mul $t2, $t4, $t3
  sw  $t2, -1924($fp)
  li  $t6, 4
  lw  $t7, -1924($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1928($fp)
  lw  $t1, -1928($fp)
  la  $t2, -40($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1932($fp)
  lw  $t4, -1932($fp)
  lw $t3, 0($t4)
  sw  $t3, -1936($fp)
  lw  $t6, -1936($fp)
  sub $t5, $t6, 0
  lw  $t7, -1936($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -1940($fp)
  j label755
  label754 :
  label762 :
  lw  $t2, -616($fp)
  sub $t1, $t2, 0
  lw  $t3, -616($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -1944($fp)
  li $t5, 0
  sw  $t5, -1948($fp)
  lw  $t6, -916($fp)
  li  $t7, 19529
  ble  $t7, $t6, label765
  j label766
  label765 :
  li $t0, 1
  sw  $t0, -1948($fp)
  label766 :
  li  $t2, 4
  lw  $t3, -1948($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1952($fp)
  lw  $t5, -1952($fp)
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1956($fp)
  lw  $t0, -1956($fp)
  lw $t7, 0($t0)
  sw  $t7, -1960($fp)
  lw  $t2, -1960($fp)
  lw  $t3, -1944($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1964($fp)
  li  $t4, 0
  lw  $t5, -1964($fp)
  bne  $t5, $t4, label763
  j label764
  label763 :
  li  $t7, 24
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1968($fp)
  lw  $t2, -1968($fp)
  lw $t1, 0($t2)
  sw  $t1, -1972($fp)
  li  $t4, 47044
  lw  $t5, -1972($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1976($fp)
  li $t6, 0
  sw  $t6, -1980($fp)
  li  $t7, 0
  li  $t0, 26032
  bne  $t0, $t7, label767
  j label768
  label767 :
  li $t1, 1
  sw  $t1, -1980($fp)
  label768 :
  li $t2, 0
  sw  $t2, -1984($fp)
  li  $t3, 0
  lw  $t4, -476($fp)
  bne  $t4, $t3, label770
  j label771
  label771 :
  li  $t5, 0
  li  $t6, 17409
  bne  $t6, $t5, label769
  j label770
  label769 :
  li $t7, 1
  sw  $t7, -1984($fp)
  label770 :
  addi  $sp, $sp, -4
  lw  $t0, -1984($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -1980($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -1976($fp)
  sw  $t2, 0($sp)
  jal  id_IBvdWNifc
  move  $t3, $v0
  sw  $t3, -1988($fp)
  addi  $sp, $sp, 12
  lw  $t4, -1988($fp)
  move  $v0, $t4
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  j label762
  label764 :
  label755 :
  label744 :
  li $t5, 0
  sw  $t5, -1992($fp)
  li $t6, 0
  sw  $t6, -1996($fp)
  li $t7, 0
  sw  $t7, -2000($fp)
  li  $t0, 0
  li  $t1, 34989
  bne  $t1, $t0, label778
  j label777
  label778 :
  li  $t2, 0
  li  $t3, 19374
  bne  $t3, $t2, label776
  j label777
  label776 :
  li $t4, 1
  sw  $t4, -2000($fp)
  label777 :
  lw  $t6, -740($fp)
  move $t5, $t6
  sw  $t5, -812($fp)
  addi  $sp, $sp, -4
  li  $t7, 42661
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -740($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2000($fp)
  sw  $t1, 0($sp)
  jal  id_IBvdWNifc
  move  $t2, $v0
  sw  $t2, -2004($fp)
  addi  $sp, $sp, 12
  lw  $t4, -656($fp)
  lw  $t5, -660($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -2008($fp)
  lw  $t7, -2008($fp)
  lw  $t0, -2004($fp)
  sub $t6, $t0, $t7
  sw  $t6, -2012($fp)
  lw  $t2, -696($fp)
  li  $t3, -22404
  div $t3, $t2
  mflo $t1
  sw  $t1, -2016($fp)
  lw  $t4, -2016($fp)
  lw  $t5, -2012($fp)
  ble  $t5, $t4, label774
  j label775
  label774 :
  li $t6, 1
  sw  $t6, -1996($fp)
  label775 :
  li $t7, 0
  sw  $t7, -2020($fp)
  lw  $t0, -480($fp)
  li  $t1, 24950
  bne  $t1, $t0, label779
  j label780
  label779 :
  li $t2, 1
  sw  $t2, -2020($fp)
  label780 :
  li $t3, 0
  sw  $t3, -2024($fp)
  li  $t4, 0
  li  $t5, 57835
  bne  $t5, $t4, label782
  j label781
  label781 :
  li $t6, 1
  sw  $t6, -2024($fp)
  label782 :
  lw  $t0, -2024($fp)
  sub $t7, $t0, 0
  lw  $t1, -2024($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -2028($fp)
  li $t3, 0
  sw  $t3, -2032($fp)
  li  $t4, 0
  lw  $t5, -652($fp)
  bne  $t5, $t4, label783
  j label785
  label785 :
  li  $t6, 0
  li  $t7, 51534
  bne  $t7, $t6, label783
  j label784
  label783 :
  li $t0, 1
  sw  $t0, -2032($fp)
  label784 :
  addi  $sp, $sp, -4
  lw  $t1, -2032($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -2028($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -2020($fp)
  sw  $t3, 0($sp)
  jal  id_zA90b
  move  $t4, $v0
  sw  $t4, -2036($fp)
  addi  $sp, $sp, 12
  li  $t6, 4
  lw  $t7, -2036($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2040($fp)
  lw  $t1, -2040($fp)
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2044($fp)
  lw  $t4, -2044($fp)
  lw $t3, 0($t4)
  sw  $t3, -2048($fp)
  lw  $t5, -2048($fp)
  lw  $t6, -1996($fp)
  bgt  $t6, $t5, label772
  j label773
  label772 :
  li $t7, 1
  sw  $t7, -1992($fp)
  label773 :
  label786 :
  li  $t1, 48332
  lw  $t2, -664($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2052($fp)
  lw  $t3, -2052($fp)
  li  $t4, 56376
  ble  $t4, $t3, label787
  j label788
  label787 :
  li $t5, 0
  sw  $t5, -2056($fp)
  lw  $t7, -668($fp)
  sub $t6, $t7, 0
  lw  $t0, -668($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -2060($fp)
  lw  $t2, -380($fp)
  lw  $t3, -2060($fp)
  bgt  $t3, $t2, label792
  j label793
  label792 :
  li $t4, 1
  sw  $t4, -2056($fp)
  label793 :
  li $t5, 0
  sw  $t5, -2064($fp)
  lw  $t7, -396($fp)
  lw  $t0, -740($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2068($fp)
  li  $t1, 0
  lw  $t2, -2068($fp)
  bne  $t2, $t1, label796
  j label795
  label796 :
  li  $t3, 0
  li  $t4, 18180
  bne  $t4, $t3, label794
  j label795
  label794 :
  li $t5, 1
  sw  $t5, -2064($fp)
  label795 :
  li  $t7, 4
  lw  $t0, -440($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2072($fp)
  lw  $t2, -2072($fp)
  la  $t3, -60($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2076($fp)
  lw  $t5, -2076($fp)
  lw $t4, 0($t5)
  sw  $t4, -2080($fp)
  addi  $sp, $sp, -4
  lw  $t6, -2080($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2064($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2056($fp)
  sw  $t0, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t1, $v0
  sw  $t1, -2084($fp)
  addi  $sp, $sp, 12
  lw  $t3, -708($fp)
  lw  $t4, -2084($fp)
  sub $t2, $t4, $t3
  sw  $t2, -2088($fp)
  li  $t5, 0
  lw  $t6, -2088($fp)
  bne  $t6, $t5, label789
  j label790
  label789 :
  li $t7, 0
  sw  $t7, -2092($fp)
  li  $t0, 0
  lw  $t1, -392($fp)
  bne  $t1, $t0, label801
  j label800
  label800 :
  li $t2, 1
  sw  $t2, -2092($fp)
  label801 :
  lw  $t4, -2092($fp)
  lw  $t5, -892($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2096($fp)
  lw  $t7, -444($fp)
  sub $t6, $t7, 0
  lw  $t0, -444($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -2100($fp)
  lw  $t3, -2100($fp)
  lw  $t4, -2096($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2104($fp)
  lw  $t6, -448($fp)
  lw  $t7, -2104($fp)
  add $t5, $t7, $t6
  sw  $t5, -2108($fp)
  li  $t0, 0
  lw  $t1, -2108($fp)
  bne  $t1, $t0, label797
  j label798
  label797 :
  li $t2, 62299
  sw  $t2, -2112($fp)
  li $t3, 61914
  sw  $t3, -2116($fp)
  lw  $t4, -2112($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -2116($fp)
  move $a0, $t5
  jal  write
  li $t6, 0
  sw  $t6, -2120($fp)
  lw  $t0, -456($fp)
  sub $t7, $t0, 0
  lw  $t1, -456($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -2124($fp)
  lw  $t3, -2112($fp)
  lw  $t4, -2124($fp)
  ble  $t4, $t3, label802
  j label803
  label802 :
  li $t5, 1
  sw  $t5, -2120($fp)
  label803 :
  lw  $t7, -2116($fp)
  lw  $t0, -812($fp)
  add $t6, $t0, $t7
  sw  $t6, -2128($fp)
  lw  $t2, -628($fp)
  lw  $t3, -2128($fp)
  add $t1, $t3, $t2
  sw  $t1, -2132($fp)
  li $t4, 0
  sw  $t4, -2136($fp)
  lw  $t6, -712($fp)
  lw  $t7, -708($fp)
  add $t5, $t7, $t6
  sw  $t5, -2140($fp)
  li  $t0, 0
  lw  $t1, -2140($fp)
  bne  $t1, $t0, label804
  j label806
  label806 :
  li  $t2, 0
  li  $t3, 32964
  bne  $t3, $t2, label804
  j label805
  label804 :
  li $t4, 1
  sw  $t4, -2136($fp)
  label805 :
  li $t5, 0
  sw  $t5, -2144($fp)
  lw  $t7, -700($fp)
  lw  $t0, -2112($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -2148($fp)
  lw  $t1, -728($fp)
  lw  $t2, -2148($fp)
  blt  $t2, $t1, label807
  j label808
  label807 :
  li $t3, 1
  sw  $t3, -2144($fp)
  label808 :
  li $t4, 0
  sw  $t4, -2152($fp)
  li $t5, 0
  sw  $t5, -2156($fp)
  lw  $t7, -716($fp)
  sub $t6, $t7, 0
  lw  $t0, -716($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -2160($fp)
  li  $t2, 0
  lw  $t3, -2160($fp)
  bne  $t3, $t2, label812
  j label814
  label814 :
  li  $t4, 0
  lw  $t5, -604($fp)
  bne  $t5, $t4, label812
  j label813
  label812 :
  li $t6, 1
  sw  $t6, -2156($fp)
  label813 :
  li $t7, 0
  sw  $t7, -2164($fp)
  lw  $t1, -744($fp)
  sub $t0, $t1, 0
  lw  $t2, -744($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -2168($fp)
  li  $t4, 43006
  lw  $t5, -2168($fp)
  bne  $t5, $t4, label815
  j label816
  label815 :
  li $t6, 1
  sw  $t6, -2164($fp)
  label816 :
  lw  $t0, -344($fp)
  sub $t7, $t0, 25843
  lw  $t1, -344($fp)
  li  $t2, 25843
  sub $t7, $t2, $t1
  sw  $t7, -2172($fp)
  li $t3, 0
  sw  $t3, -2176($fp)
  lw  $t4, -460($fp)
  lw  $t5, -888($fp)
  beq  $t5, $t4, label819
  j label818
  label819 :
  li  $t6, 0
  li  $t7, 27435
  bne  $t7, $t6, label817
  j label818
  label817 :
  li $t0, 1
  sw  $t0, -2176($fp)
  label818 :
  addi  $sp, $sp, -4
  lw  $t1, -2176($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -2172($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  li  $t3, -28546
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2164($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2156($fp)
  sw  $t5, 0($sp)
  jal  id_oB_SYT
  move  $t6, $v0
  sw  $t6, -2180($fp)
  addi  $sp, $sp, 20
  li  $t7, 0
  lw  $t0, -2180($fp)
  bne  $t0, $t7, label809
  j label811
  label811 :
  li  $t1, 0
  li  $t2, 50008
  bne  $t2, $t1, label809
  j label810
  label809 :
  li $t3, 1
  sw  $t3, -2152($fp)
  label810 :
  addi  $sp, $sp, -4
  lw  $t4, -2152($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2144($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2136($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2132($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2120($fp)
  sw  $t0, 0($sp)
  jal  id_nI
  move  $t1, $v0
  sw  $t1, -2184($fp)
  addi  $sp, $sp, 20
  lw  $t3, -2184($fp)
  move $t2, $t3
  sw  $t2, -452($fp)
  lw  $t5, -2184($fp)
  move $t4, $t5
  sw  $t4, -564($fp)
  lw  $t6, -2184($fp)
  move  $v0, $t6
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  j label799
  label798 :
  li  $t0, 4
  la  $t1, -100($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2188($fp)
  lw  $t3, -2188($fp)
  lw $t2, 0($t3)
  sw  $t2, -2192($fp)
  lw  $t5, -2192($fp)
  sub $t4, $t5, 0
  lw  $t6, -2192($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -2196($fp)
  li  $t0, 0
  lw  $t1, -2196($fp)
  bne  $t1, $t0, label874
  j label875
  label874 :
  lw  $t3, -396($fp)
  sub $t2, $t3, 91404
  lw  $t4, -396($fp)
  li  $t5, 91404
  sub $t2, $t5, $t4
  sw  $t2, -2200($fp)
  li $t6, 0
  sw  $t6, -2204($fp)
  lw  $t0, -468($fp)
  lw  $t1, -464($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2208($fp)
  li  $t2, 39148
  lw  $t3, -2208($fp)
  bgt  $t3, $t2, label880
  j label881
  label880 :
  li $t4, 1
  sw  $t4, -2204($fp)
  label881 :
  li $t5, 0
  sw  $t5, -2212($fp)
  li  $t6, 0
  li  $t7, 31010
  bne  $t7, $t6, label882
  j label884
  label884 :
  li  $t0, 0
  lw  $t1, -472($fp)
  bne  $t1, $t0, label882
  j label883
  label882 :
  li $t2, 1
  sw  $t2, -2212($fp)
  label883 :
  addi  $sp, $sp, -4
  lw  $t3, -2212($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2204($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2200($fp)
  sw  $t5, 0($sp)
  jal  id_IBvdWNifc
  move  $t6, $v0
  sw  $t6, -2216($fp)
  addi  $sp, $sp, 12
  li  $t0, 58678
  lw  $t1, -2216($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2220($fp)
  lw  $t3, -476($fp)
  lw  $t4, -2220($fp)
  add $t2, $t4, $t3
  sw  $t2, -2224($fp)
  li  $t5, 0
  lw  $t6, -2224($fp)
  bne  $t6, $t5, label877
  j label878
  label877 :
  li  $t7, 0
  li  $t0, 26533
  bne  $t0, $t7, label886
  j label885
  label885 :
  li $t1, 46445
  sw  $t1, -2244($fp)
  li $t2, 40185
  sw  $t2, -2248($fp)
  li $t3, 52565
  sw  $t3, -2252($fp)
  li  $t5, 0
  la  $t6, -2228($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2256($fp)
  lw  $t7, -2256($fp)
  li  $t0, 63854
  sw $t0, 0($t7)
  li  $t2, 4
  la  $t3, -2228($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2260($fp)
  lw  $t4, -2260($fp)
  li  $t5, 9639
  sw $t5, 0($t4)
  li  $t7, 8
  la  $t0, -2228($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2264($fp)
  lw  $t1, -2264($fp)
  li  $t2, 6403
  sw $t2, 0($t1)
  li  $t4, 12
  la  $t5, -2228($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2268($fp)
  lw  $t6, -2268($fp)
  li  $t7, 40979
  sw $t7, 0($t6)
  li $t0, 0
  sw  $t0, -2272($fp)
  li  $t2, 24
  la  $t3, -212($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2276($fp)
  lw  $t5, -2276($fp)
  lw $t4, 0($t5)
  sw  $t4, -2280($fp)
  lw  $t7, -2248($fp)
  lw  $t0, -2280($fp)
  sub $t6, $t0, $t7
  sw  $t6, -2284($fp)
  lw  $t2, -464($fp)
  sub $t1, $t2, 33278
  sw  $t1, -2288($fp)
  lw  $t3, -2288($fp)
  lw  $t4, -2284($fp)
  blt  $t4, $t3, label890
  j label891
  label890 :
  li $t5, 1
  sw  $t5, -2272($fp)
  label891 :
  li  $t7, 4
  lw  $t0, -2272($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2292($fp)
  lw  $t2, -2292($fp)
  la  $t3, -176($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2296($fp)
  lw  $t5, -2296($fp)
  lw $t4, 0($t5)
  sw  $t4, -2300($fp)
  li  $t6, 0
  lw  $t7, -2300($fp)
  bne  $t7, $t6, label888
  j label889
  label888 :
  li $t0, 0
  sw  $t0, -2304($fp)
  lw  $t2, -2252($fp)
  li  $t3, 18041
  div $t3, $t2
  mflo $t1
  sw  $t1, -2308($fp)
  li  $t4, 22194
  lw  $t5, -2308($fp)
  beq  $t5, $t4, label892
  j label893
  label892 :
  li $t6, 1
  sw  $t6, -2304($fp)
  label893 :
  addi  $sp, $sp, -4
  li  $t7, 16074
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2304($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -728($fp)
  sw  $t1, 0($sp)
  jal  id_zA90b
  move  $t2, $v0
  sw  $t2, -2312($fp)
  addi  $sp, $sp, 12
  li  $t4, 36222
  lw  $t5, -2312($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2316($fp)
  li  $t7, 8
  la  $t0, -212($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2320($fp)
  lw  $t2, -2320($fp)
  lw $t1, 0($t2)
  sw  $t1, -2324($fp)
  lw  $t4, -712($fp)
  sub $t3, $t4, 0
  lw  $t5, -712($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -2328($fp)
  lw  $t0, -2328($fp)
  sub $t7, $t0, 0
  lw  $t1, -2328($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -2332($fp)
  addi  $sp, $sp, -4
  lw  $t3, -2332($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2324($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2316($fp)
  sw  $t5, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t6, $v0
  sw  $t6, -2336($fp)
  addi  $sp, $sp, 12
  label889 :
  lw  $t7, -2244($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -2248($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -2252($fp)
  move $a0, $t1
  jal  write
  li  $t3, 0
  la  $t4, -2228($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2340($fp)
  lw  $t6, -2340($fp)
  lw $t5, 0($t6)
  sw  $t5, -2344($fp)
  lw  $t7, -2344($fp)
  move $a0, $t7
  jal  write
  li  $t1, 4
  la  $t2, -2228($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2348($fp)
  lw  $t4, -2348($fp)
  lw $t3, 0($t4)
  sw  $t3, -2352($fp)
  lw  $t5, -2352($fp)
  move $a0, $t5
  jal  write
  li  $t7, 8
  la  $t0, -2228($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2356($fp)
  lw  $t2, -2356($fp)
  lw $t1, 0($t2)
  sw  $t1, -2360($fp)
  lw  $t3, -2360($fp)
  move $a0, $t3
  jal  write
  li  $t5, 12
  la  $t6, -2228($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2364($fp)
  lw  $t0, -2364($fp)
  lw $t7, 0($t0)
  sw  $t7, -2368($fp)
  lw  $t1, -2368($fp)
  move $a0, $t1
  jal  write
  li $t2, 0
  sw  $t2, -2372($fp)
  li  $t4, 0
  la  $t5, -2228($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2376($fp)
  lw  $t7, -2376($fp)
  lw $t6, 0($t7)
  sw  $t6, -2380($fp)
  lw  $t1, -2380($fp)
  lw  $t2, -740($fp)
  add $t0, $t2, $t1
  sw  $t0, -2384($fp)
  li  $t3, 0
  lw  $t4, -2384($fp)
  bne  $t4, $t3, label894
  j label896
  label896 :
  lw  $t6, -720($fp)
  move $t5, $t6
  sw  $t5, -904($fp)
  li $t7, 0
  sw  $t7, -2388($fp)
  li  $t0, 0
  li  $t1, 29494
  bne  $t1, $t0, label900
  j label899
  label900 :
  li  $t2, 0
  li  $t3, 23863
  bne  $t3, $t2, label897
  j label899
  label899 :
  li  $t4, 0
  li  $t5, 25471
  bne  $t5, $t4, label897
  j label898
  label897 :
  li $t6, 1
  sw  $t6, -2388($fp)
  label898 :
  li $t7, 0
  sw  $t7, -2392($fp)
  li  $t0, 0
  lw  $t1, -616($fp)
  bne  $t1, $t0, label903
  j label902
  label903 :
  li  $t2, 0
  li  $t3, 54889
  bne  $t3, $t2, label901
  j label902
  label901 :
  li $t4, 1
  sw  $t4, -2392($fp)
  label902 :
  addi  $sp, $sp, -4
  lw  $t5, -2392($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2388($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 40998
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -808($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -720($fp)
  sw  $t1, 0($sp)
  jal  id_oB_SYT
  move  $t2, $v0
  sw  $t2, -2396($fp)
  addi  $sp, $sp, 20
  lw  $t4, -2396($fp)
  sub $t3, $t4, 49114
  sw  $t3, -2400($fp)
  li  $t5, 20395
  lw  $t6, -2400($fp)
  bne  $t6, $t5, label894
  j label895
  label894 :
  li $t7, 1
  sw  $t7, -2372($fp)
  label895 :
  lw  $t0, -2372($fp)
  move  $v0, $t0
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  li $t1, 0
  sw  $t1, -2404($fp)
  li  $t3, 20297
  lw  $t4, -380($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2408($fp)
  li $t5, 0
  sw  $t5, -2412($fp)
  li  $t6, 0
  li  $t7, 1168252756
  bne  $t7, $t6, label908
  j label907
  label908 :
  li  $t0, 0
  lw  $t1, -440($fp)
  bne  $t1, $t0, label906
  j label907
  label906 :
  li $t2, 1
  sw  $t2, -2412($fp)
  label907 :
  li  $t4, 12
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2416($fp)
  lw  $t7, -2416($fp)
  lw $t6, 0($t7)
  sw  $t6, -2420($fp)
  lw  $t1, -384($fp)
  lw  $t2, -2420($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2424($fp)
  li $t3, 0
  sw  $t3, -2428($fp)
  li  $t4, 0
  li  $t5, -12403
  bne  $t5, $t4, label910
  j label909
  label909 :
  li $t6, 1
  sw  $t6, -2428($fp)
  label910 :
  li $t7, 0
  sw  $t7, -2432($fp)
  li  $t1, 11339
  lw  $t2, -808($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2436($fp)
  li  $t3, 56053
  lw  $t4, -2436($fp)
  beq  $t4, $t3, label911
  j label912
  label911 :
  li $t5, 1
  sw  $t5, -2432($fp)
  label912 :
  li $t6, 0
  sw  $t6, -2440($fp)
  li $t7, 0
  sw  $t7, -2444($fp)
  lw  $t1, -728($fp)
  lw  $t2, -2244($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2448($fp)
  lw  $t3, -700($fp)
  lw  $t4, -2448($fp)
  beq  $t4, $t3, label915
  j label916
  label915 :
  li $t5, 1
  sw  $t5, -2444($fp)
  label916 :
  lw  $t7, -616($fp)
  move $t6, $t7
  sw  $t6, -904($fp)
  li $t0, 0
  sw  $t0, -2452($fp)
  li  $t1, 9657
  li  $t2, 64968
  bgt  $t2, $t1, label917
  j label918
  label917 :
  li $t3, 1
  sw  $t3, -2452($fp)
  label918 :
  li $t4, 50636
  sw  $t4, -532($fp)
  li $t5, 0
  sw  $t5, -2456($fp)
  lw  $t6, 4($fp)
  li  $t7, 1197448611
  bne  $t7, $t6, label919
  j label920
  label919 :
  li $t0, 1
  sw  $t0, -2456($fp)
  label920 :
  addi  $sp, $sp, -4
  lw  $t1, -2456($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  li  $t2, 50636
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  li  $t3, 910260
  sw  $t3, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t4, $v0
  sw  $t4, -2460($fp)
  addi  $sp, $sp, 12
  li $t5, 0
  sw  $t5, -2464($fp)
  li  $t6, 0
  lw  $t7, -700($fp)
  bne  $t7, $t6, label924
  j label922
  label924 :
  li  $t0, 0
  li  $t1, 18378
  bne  $t1, $t0, label923
  j label922
  label923 :
  li  $t2, 0
  lw  $t3, -488($fp)
  bne  $t3, $t2, label921
  j label922
  label921 :
  li $t4, 1
  sw  $t4, -2464($fp)
  label922 :
  addi  $sp, $sp, -4
  lw  $t5, -2464($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2460($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2452($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -616($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2444($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -2468($fp)
  addi  $sp, $sp, 20
  lw  $t3, -700($fp)
  lw  $t4, -2468($fp)
  blt  $t4, $t3, label913
  j label914
  label913 :
  li $t5, 1
  sw  $t5, -2440($fp)
  label914 :
  li $t6, 0
  sw  $t6, -2472($fp)
  li $t7, 0
  sw  $t7, -2476($fp)
  lw  $t0, -888($fp)
  li  $t1, 50241
  bgt  $t1, $t0, label927
  j label928
  label927 :
  li $t2, 1
  sw  $t2, -2476($fp)
  label928 :
  lw  $t3, -344($fp)
  lw  $t4, -2476($fp)
  bgt  $t4, $t3, label925
  j label926
  label925 :
  li $t5, 1
  sw  $t5, -2472($fp)
  label926 :
  addi  $sp, $sp, -4
  lw  $t6, -2472($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2440($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2432($fp)
  sw  $t0, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t1, $v0
  sw  $t1, -2480($fp)
  addi  $sp, $sp, 12
  li  $t3, 59384
  lw  $t4, -2480($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2484($fp)
  li $t5, 0
  sw  $t5, -2488($fp)
  li  $t6, 0
  li  $t7, 720977004
  bne  $t7, $t6, label931
  j label930
  label931 :
  li  $t0, 0
  li  $t1, 12805
  bne  $t1, $t0, label929
  j label930
  label929 :
  li $t2, 1
  sw  $t2, -2488($fp)
  label930 :
  li $t3, 0
  sw  $t3, -2492($fp)
  lw  $t5, -344($fp)
  add $t4, $t5, 46905
  sw  $t4, -2496($fp)
  li  $t6, 0
  lw  $t7, -2496($fp)
  bne  $t7, $t6, label932
  j label934
  label934 :
  li  $t0, 0
  li  $t1, 24577
  bne  $t1, $t0, label932
  j label933
  label932 :
  li $t2, 1
  sw  $t2, -2492($fp)
  label933 :
  addi  $sp, $sp, -4
  lw  $t3, -2492($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2488($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2484($fp)
  sw  $t5, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t6, $v0
  sw  $t6, -2500($fp)
  addi  $sp, $sp, 12
  addi  $sp, $sp, -4
  lw  $t7, -2500($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2428($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2424($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, -2412($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -2408($fp)
  sw  $t3, 0($sp)
  jal  id_oB_SYT
  move  $t4, $v0
  sw  $t4, -2504($fp)
  addi  $sp, $sp, 20
  li $t5, 0
  sw  $t5, -2508($fp)
  li  $t6, 0
  lw  $t7, -900($fp)
  bne  $t7, $t6, label937
  j label935
  label937 :
  li  $t0, 0
  li  $t1, 9233
  bne  $t1, $t0, label935
  j label936
  label935 :
  li $t2, 1
  sw  $t2, -2508($fp)
  label936 :
  li  $t4, 4
  lw  $t5, -488($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2512($fp)
  lw  $t7, -2512($fp)
  la  $t0, -248($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2516($fp)
  lw  $t2, -2516($fp)
  lw $t1, 0($t2)
  sw  $t1, -2520($fp)
  li $t3, 33097
  sw  $t3, -852($fp)
  li $t4, 47838
  sw  $t4, -712($fp)
  addi  $sp, $sp, -4
  li  $t5, 47838
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  li  $t6, 33097
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 54071
  sw  $t7, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t0, $v0
  sw  $t0, -2524($fp)
  addi  $sp, $sp, 12
  lw  $t2, -2524($fp)
  sub $t1, $t2, 43425
  sw  $t1, -2528($fp)
  addi  $sp, $sp, -4
  lw  $t3, -2528($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  li  $t4, 22367
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2520($fp)
  sw  $t5, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t6, $v0
  sw  $t6, -2532($fp)
  addi  $sp, $sp, 12
  li  $t0, 4
  lw  $t1, -560($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2536($fp)
  lw  $t3, -2536($fp)
  la  $t4, -284($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2540($fp)
  lw  $t6, -2540($fp)
  lw $t5, 0($t6)
  sw  $t5, -2544($fp)
  lw  $t0, -2544($fp)
  sub $t7, $t0, 0
  lw  $t1, -2544($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -2548($fp)
  li $t3, 0
  sw  $t3, -2552($fp)
  li $t4, 0
  sw  $t4, -2556($fp)
  li  $t5, 2698
  li  $t6, 16675
  bgt  $t6, $t5, label940
  j label941
  label940 :
  li $t7, 1
  sw  $t7, -2556($fp)
  label941 :
  lw  $t0, -888($fp)
  lw  $t1, -2556($fp)
  beq  $t1, $t0, label938
  j label939
  label938 :
  li $t2, 1
  sw  $t2, -2552($fp)
  label939 :
  addi  $sp, $sp, -4
  lw  $t3, -2552($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -2548($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2532($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2508($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2504($fp)
  sw  $t7, 0($sp)
  jal  id_oB_SYT
  move  $t0, $v0
  sw  $t0, -2560($fp)
  addi  $sp, $sp, 20
  li  $t1, 0
  lw  $t2, -2560($fp)
  bne  $t2, $t1, label905
  j label904
  label904 :
  li $t3, 1
  sw  $t3, -2404($fp)
  label905 :
  lw  $t5, -2404($fp)
  sub $t4, $t5, 0
  lw  $t6, -2404($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -2564($fp)
  j label887
  label886 :
  li $t0, 63722
  sw  $t0, -2568($fp)
  label942 :
  li $t1, 0
  sw  $t1, -2572($fp)
  lw  $t3, -484($fp)
  sub $t2, $t3, 0
  lw  $t4, -484($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -2576($fp)
  li  $t6, 0
  lw  $t7, -2576($fp)
  bne  $t7, $t6, label948
  j label946
  label948 :
  li  $t0, 0
  li  $t1, 39402
  bne  $t1, $t0, label947
  j label946
  label947 :
  lw  $t3, -560($fp)
  sub $t2, $t3, 0
  lw  $t4, -560($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -2580($fp)
  li  $t6, 0
  lw  $t7, -2580($fp)
  bne  $t7, $t6, label945
  j label946
  label945 :
  li $t0, 1
  sw  $t0, -2572($fp)
  label946 :
  lw  $t2, -2572($fp)
  move $t1, $t2
  sw  $t1, -448($fp)
  li  $t3, 0
  lw  $t4, -2572($fp)
  bne  $t4, $t3, label943
  j label944
  label943 :
  li $t5, 0
  sw  $t5, -2584($fp)
  li  $t6, 0
  li  $t7, -54104
  bne  $t7, $t6, label957
  j label956
  label956 :
  li $t0, 1
  sw  $t0, -2584($fp)
  label957 :
  lw  $t2, -2584($fp)
  sub $t1, $t2, 28616
  sw  $t1, -2588($fp)
  lw  $t4, -2588($fp)
  move $t3, $t4
  sw  $t3, -900($fp)
  li  $t5, 0
  lw  $t6, -2588($fp)
  bne  $t6, $t5, label953
  j label954
  label953 :
  j label955
  label954 :
  li $t7, 0
  sw  $t7, -2592($fp)
  li $t0, 0
  sw  $t0, -2596($fp)
  li $t1, 0
  sw  $t1, -2600($fp)
  lw  $t3, -604($fp)
  sub $t2, $t3, 0
  lw  $t4, -604($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -2604($fp)
  li $t6, 0
  sw  $t6, -2608($fp)
  li  $t7, 0
  li  $t0, 55270
  bne  $t0, $t7, label967
  j label966
  label966 :
  li $t1, 1
  sw  $t1, -2608($fp)
  label967 :
  lw  $t3, -2608($fp)
  sub $t2, $t3, 0
  lw  $t4, -2608($fp)
  li  $t5, 0
  sub $t2, $t5, $t4
  sw  $t2, -2612($fp)
  lw  $t6, -2612($fp)
  lw  $t7, -2604($fp)
  bgt  $t7, $t6, label964
  j label965
  label964 :
  li $t0, 1
  sw  $t0, -2600($fp)
  label965 :
  lw  $t2, -2568($fp)
  li  $t3, 0
  div $t3, $t2
  mflo $t1
  sw  $t1, -2616($fp)
  lw  $t4, -2616($fp)
  lw  $t5, -2600($fp)
  beq  $t5, $t4, label962
  j label963
  label962 :
  li $t6, 1
  sw  $t6, -2596($fp)
  label963 :
  li  $t0, 36
  la  $t1, -100($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2620($fp)
  lw  $t3, -2620($fp)
  lw $t2, 0($t3)
  sw  $t2, -2624($fp)
  lw  $t4, -2624($fp)
  lw  $t5, -2596($fp)
  blt  $t5, $t4, label960
  j label961
  label960 :
  li $t6, 1
  sw  $t6, -2592($fp)
  label961 :
  label955 :
  j label942
  label944 :
  label887 :
  j label879
  label878 :
  li $t7, 0
  sw  $t7, -2628($fp)
  li  $t0, 0
  li  $t1, 49612
  bne  $t1, $t0, label968
  j label970
  label970 :
  lw  $t3, -812($fp)
  sub $t2, $t3, 45944
  sw  $t2, -2632($fp)
  li  $t4, 0
  lw  $t5, -2632($fp)
  bne  $t5, $t4, label968
  j label969
  label968 :
  li $t6, 1
  sw  $t6, -2628($fp)
  label969 :
  label879 :
  j label876
  label875 :
  label971 :
  li  $t7, 0
  li  $t0, 6238
  bne  $t0, $t7, label972
  j label973
  label972 :
  li  $t1, 0
  li  $t2, 34712
  bne  $t2, $t1, label974
  j label977
  label977 :
  li $t3, 0
  sw  $t3, -2636($fp)
  lw  $t5, -532($fp)
  sub $t4, $t5, 0
  lw  $t6, -532($fp)
  li  $t7, 0
  sub $t4, $t7, $t6
  sw  $t4, -2640($fp)
  li  $t0, 0
  lw  $t1, -2640($fp)
  bne  $t1, $t0, label980
  j label979
  label980 :
  li  $t2, 0
  li  $t3, 12607
  bne  $t3, $t2, label978
  j label979
  label978 :
  li $t4, 1
  sw  $t4, -2636($fp)
  label979 :
  li $t5, 0
  sw  $t5, -2644($fp)
  li  $t7, 4
  lw  $t0, -536($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2648($fp)
  lw  $t2, -2648($fp)
  la  $t3, -100($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2652($fp)
  lw  $t5, -2652($fp)
  lw $t4, 0($t5)
  sw  $t4, -2656($fp)
  li  $t6, 43428
  lw  $t7, -2656($fp)
  bgt  $t7, $t6, label981
  j label982
  label981 :
  li $t0, 1
  sw  $t0, -2644($fp)
  label982 :
  lw  $t2, -464($fp)
  add $t1, $t2, 53090
  lw  $t3, -464($fp)
  li  $t4, 53090
  add $t1, $t4, $t3
  sw  $t1, -2660($fp)
  lw  $t6, -2660($fp)
  add $t5, $t6, 62848
  sw  $t5, -2664($fp)
  lw  $t0, -624($fp)
  move $t7, $t0
  sw  $t7, -380($fp)
  lw  $t2, 8($fp)
  move $t1, $t2
  sw  $t1, -440($fp)
  li $t3, 0
  sw  $t3, -2668($fp)
  li  $t4, 22007
  lw  $t5, -344($fp)
  beq  $t5, $t4, label983
  j label985
  label985 :
  li  $t6, 0
  li  $t7, 18239
  bne  $t7, $t6, label983
  j label984
  label983 :
  li $t0, 1
  sw  $t0, -2668($fp)
  label984 :
  addi  $sp, $sp, -4
  lw  $t1, -2668($fp)
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  lw  $t2, 8($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -624($fp)
  sw  $t3, 0($sp)
  jal  id_zA90b
  move  $t4, $v0
  sw  $t4, -2672($fp)
  addi  $sp, $sp, 12
  addi  $sp, $sp, -4
  lw  $t5, -2672($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  li  $t6, 37276
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2664($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -2644($fp)
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2636($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -2676($fp)
  addi  $sp, $sp, 20
  lw  $t4, -2676($fp)
  add $t3, $t4, 50081
  sw  $t3, -2680($fp)
  li  $t5, 0
  lw  $t6, -2680($fp)
  bne  $t6, $t5, label974
  j label975
  label974 :
  li  $t7, 0
  li  $t0, 3376
  bne  $t0, $t7, label986
  j label987
  label986 :
  li $t1, 42817
  sw  $t1, -2684($fp)
  li $t2, 59315
  sw  $t2, -2688($fp)
  li $t3, 0
  sw  $t3, -2692($fp)
  li  $t4, 0
  li  $t5, 31352
  bne  $t5, $t4, label990
  j label991
  label991 :
  li $t6, 0
  sw  $t6, -2696($fp)
  li  $t7, 9241
  li  $t0, 3
  bge  $t0, $t7, label992
  j label993
  label992 :
  li $t1, 1
  sw  $t1, -2696($fp)
  label993 :
  lw  $t2, -460($fp)
  lw  $t3, -2696($fp)
  bne  $t3, $t2, label989
  j label990
  label989 :
  li $t4, 1
  sw  $t4, -2692($fp)
  label990 :
  li $t5, 0
  sw  $t5, -2700($fp)
  lw  $t7, -472($fp)
  sub $t6, $t7, 0
  lw  $t0, -472($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -2704($fp)
  lw  $t3, -2704($fp)
  sub $t2, $t3, 17417
  sw  $t2, -2708($fp)
  li $t4, 64848
  sw  $t4, -760($fp)
  li $t5, 0
  sw  $t5, -2712($fp)
  lw  $t7, -348($fp)
  sub $t6, $t7, 0
  lw  $t0, -348($fp)
  li  $t1, 0
  sub $t6, $t1, $t0
  sw  $t6, -2716($fp)
  li  $t2, 36044
  lw  $t3, -2716($fp)
  beq  $t3, $t2, label996
  j label997
  label996 :
  li $t4, 1
  sw  $t4, -2712($fp)
  label997 :
  addi  $sp, $sp, -4
  lw  $t5, -2712($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  li  $t6, 64848
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2708($fp)
  sw  $t7, 0($sp)
  jal  id_zA90b
  move  $t0, $v0
  sw  $t0, -2720($fp)
  addi  $sp, $sp, 12
  li $t1, 0
  sw  $t1, -2724($fp)
  lw  $t3, -352($fp)
  li  $t4, 7151
  div $t4, $t3
  mflo $t2
  sw  $t2, -2728($fp)
  li  $t5, 0
  lw  $t6, -2728($fp)
  bne  $t6, $t5, label1000
  j label999
  label1000 :
  li  $t7, 0
  li  $t0, 283
  bne  $t0, $t7, label998
  j label999
  label998 :
  li $t1, 1
  sw  $t1, -2724($fp)
  label999 :
  li $t2, 0
  sw  $t2, -2732($fp)
  li  $t3, 10464
  lw  $t4, -2684($fp)
  beq  $t4, $t3, label1003
  j label1002
  label1003 :
  li  $t5, 0
  li  $t6, 52939
  bne  $t6, $t5, label1001
  j label1002
  label1001 :
  li $t7, 1
  sw  $t7, -2732($fp)
  label1002 :
  li $t0, 0
  sw  $t0, -2736($fp)
  li  $t1, 686
  lw  $t2, -2688($fp)
  bgt  $t2, $t1, label1004
  j label1005
  label1004 :
  li $t3, 1
  sw  $t3, -2736($fp)
  label1005 :
  addi  $sp, $sp, -4
  lw  $t4, -2736($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -2732($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2724($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -2720($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  li  $t0, 1
  sw  $t0, 0($sp)
  jal  id_nI
  move  $t1, $v0
  sw  $t1, -2740($fp)
  addi  $sp, $sp, 20
  li  $t2, 0
  lw  $t3, -2740($fp)
  bne  $t3, $t2, label995
  j label994
  label994 :
  li $t4, 1
  sw  $t4, -2700($fp)
  label995 :
  li $t5, 0
  sw  $t5, -2744($fp)
  li  $t7, 0
  la  $t0, -40($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2748($fp)
  lw  $t2, -2748($fp)
  lw $t1, 0($t2)
  sw  $t1, -2752($fp)
  li  $t3, 0
  lw  $t4, -2752($fp)
  bne  $t4, $t3, label1007
  j label1006
  label1006 :
  li $t5, 1
  sw  $t5, -2744($fp)
  label1007 :
  lw  $t7, -2744($fp)
  lw  $t0, -2700($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -2756($fp)
  j label988
  label987 :
  li $t1, 0
  sw  $t1, -2760($fp)
  li  $t2, 0
  li  $t3, 6924
  bne  $t3, $t2, label1009
  j label1008
  label1008 :
  li $t4, 1
  sw  $t4, -2760($fp)
  label1009 :
  lw  $t6, -2760($fp)
  sub $t5, $t6, 0
  lw  $t7, -2760($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -2764($fp)
  lw  $t1, -2764($fp)
  move  $v0, $t1
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  label988 :
  j label976
  label975 :
  li $t2, 0
  sw  $t2, -2768($fp)
  lw  $t4, -384($fp)
  move $t3, $t4
  sw  $t3, -376($fp)
  li  $t6, 4
  lw  $t7, -384($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2772($fp)
  lw  $t1, -2772($fp)
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2776($fp)
  lw  $t4, -2776($fp)
  lw $t3, 0($t4)
  sw  $t3, -2780($fp)
  li  $t5, -29253
  lw  $t6, -2780($fp)
  bge  $t6, $t5, label1010
  j label1011
  label1010 :
  li $t7, 1
  sw  $t7, -2768($fp)
  label1011 :
  li $t0, 0
  sw  $t0, -2784($fp)
  lw  $t2, -764($fp)
  sub $t1, $t2, 96306
  lw  $t3, -764($fp)
  li  $t4, 96306
  sub $t1, $t4, $t3
  sw  $t1, -2788($fp)
  li  $t5, 0
  lw  $t6, -2788($fp)
  bne  $t6, $t5, label1014
  j label1013
  label1014 :
  lw  $t0, -724($fp)
  li  $t1, 16807
  div $t1, $t0
  mflo $t7
  sw  $t7, -2792($fp)
  li  $t2, 0
  lw  $t3, -2792($fp)
  bne  $t3, $t2, label1012
  j label1013
  label1012 :
  li $t4, 1
  sw  $t4, -2784($fp)
  label1013 :
  lw  $t6, -2784($fp)
  move $t5, $t6
  sw  $t5, -900($fp)
  lw  $t7, -2784($fp)
  move  $v0, $t7
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
  label976 :
  j label971
  label973 :
  label876 :
  label799 :
  j label791
  label790 :
  label1018 :
  li $t0, 0
  sw  $t0, -2796($fp)
  li $t1, 0
  sw  $t1, -2800($fp)
  li  $t2, 0
  li  $t3, 22092
  bne  $t3, $t2, label1025
  j label1024
  label1024 :
  li $t4, 1
  sw  $t4, -2800($fp)
  label1025 :
  li  $t5, 38814
  lw  $t6, -2800($fp)
  bne  $t6, $t5, label1022
  j label1023
  label1022 :
  li $t7, 1
  sw  $t7, -2796($fp)
  label1023 :
  li $t0, 61506
  sw  $t0, -728($fp)
  li $t1, 0
  sw  $t1, -2804($fp)
  li  $t2, 0
  li  $t3, 38787
  bne  $t3, $t2, label1028
  j label1026
  label1028 :
  li  $t4, 0
  li  $t5, 417
  bne  $t5, $t4, label1026
  j label1027
  label1026 :
  li $t6, 1
  sw  $t6, -2804($fp)
  label1027 :
  li $t7, 0
  sw  $t7, -2808($fp)
  lw  $t0, -344($fp)
  lw  $t1, -732($fp)
  beq  $t1, $t0, label1031
  j label1030
  label1031 :
  li  $t2, 0
  li  $t3, 2398
  bne  $t3, $t2, label1029
  j label1030
  label1029 :
  li $t4, 1
  sw  $t4, -2808($fp)
  label1030 :
  addi  $sp, $sp, -4
  lw  $t5, -2808($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -2804($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  li  $t7, 0
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  li  $t0, 61506
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  lw  $t1, -2796($fp)
  sw  $t1, 0($sp)
  jal  id_nI
  move  $t2, $v0
  sw  $t2, -2812($fp)
  addi  $sp, $sp, 20
  lw  $t4, -912($fp)
  sub $t3, $t4, 0
  lw  $t5, -912($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -2816($fp)
  lw  $t0, -2816($fp)
  lw  $t1, -2812($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2820($fp)
  li  $t3, 4604
  lw  $t4, -2820($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2824($fp)
  li  $t5, 0
  lw  $t6, -2824($fp)
  bne  $t6, $t5, label1019
  j label1021
  label1021 :
  lw  $t0, -736($fp)
  sub $t7, $t0, 10444
  lw  $t1, -736($fp)
  li  $t2, 10444
  sub $t7, $t2, $t1
  sw  $t7, -2828($fp)
  lw  $t3, -2828($fp)
  li  $t4, 27293
  ble  $t4, $t3, label1019
  j label1020
  label1019 :
  li $t5, 13845
  sw  $t5, 8($fp)
  li $t6, 0
  sw  $t6, -2832($fp)
  li  $t0, 5308
  lw  $t1, 4($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2836($fp)
  li  $t2, 21188
  lw  $t3, -2836($fp)
  ble  $t3, $t2, label1032
  j label1033
  label1032 :
  li $t4, 1
  sw  $t4, -2832($fp)
  label1033 :
  addi  $sp, $sp, -4
  lw  $t5, -2832($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  li  $t6, 13845
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -716($fp)
  sw  $t7, 0($sp)
  jal  id_IBvdWNifc
  move  $t0, $v0
  sw  $t0, -2840($fp)
  addi  $sp, $sp, 12
  lw  $t2, -740($fp)
  add $t1, $t2, 21273
  sw  $t1, -2844($fp)
  li  $t4, 4
  lw  $t5, -2844($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2848($fp)
  lw  $t7, -2848($fp)
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2852($fp)
  lw  $t2, -2852($fp)
  lw $t1, 0($t2)
  sw  $t1, -2856($fp)
  lw  $t4, -2856($fp)
  lw  $t5, -2840($fp)
  sub $t3, $t5, $t4
  sw  $t3, -2860($fp)
  j label1018
  label1020 :
  label791 :
  j label786
  label788 :
  li  $t7, 0
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2864($fp)
  lw  $t2, -2864($fp)
  lw $t1, 0($t2)
  sw  $t1, -2868($fp)
  lw  $t3, -2868($fp)
  move $a0, $t3
  jal  write
  li  $t5, 4
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2872($fp)
  lw  $t0, -2872($fp)
  lw $t7, 0($t0)
  sw  $t7, -2876($fp)
  lw  $t1, -2876($fp)
  move $a0, $t1
  jal  write
  li  $t3, 8
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2880($fp)
  lw  $t6, -2880($fp)
  lw $t5, 0($t6)
  sw  $t5, -2884($fp)
  lw  $t7, -2884($fp)
  move $a0, $t7
  jal  write
  li  $t1, 12
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2888($fp)
  lw  $t4, -2888($fp)
  lw $t3, 0($t4)
  sw  $t3, -2892($fp)
  lw  $t5, -2892($fp)
  move $a0, $t5
  jal  write
  li  $t7, 16
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2896($fp)
  lw  $t2, -2896($fp)
  lw $t1, 0($t2)
  sw  $t1, -2900($fp)
  lw  $t3, -2900($fp)
  move $a0, $t3
  jal  write
  li  $t5, 20
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2904($fp)
  lw  $t0, -2904($fp)
  lw $t7, 0($t0)
  sw  $t7, -2908($fp)
  lw  $t1, -2908($fp)
  move $a0, $t1
  jal  write
  li  $t3, 24
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2912($fp)
  lw  $t6, -2912($fp)
  lw $t5, 0($t6)
  sw  $t5, -2916($fp)
  lw  $t7, -2916($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -344($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -348($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -352($fp)
  move $a0, $t2
  jal  write
  li  $t4, 0
  la  $t5, -40($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2920($fp)
  lw  $t7, -2920($fp)
  lw $t6, 0($t7)
  sw  $t6, -2924($fp)
  lw  $t0, -2924($fp)
  move $a0, $t0
  jal  write
  li  $t2, 4
  la  $t3, -40($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2928($fp)
  lw  $t5, -2928($fp)
  lw $t4, 0($t5)
  sw  $t4, -2932($fp)
  lw  $t6, -2932($fp)
  move $a0, $t6
  jal  write
  li  $t0, 8
  la  $t1, -40($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2936($fp)
  lw  $t3, -2936($fp)
  lw $t2, 0($t3)
  sw  $t2, -2940($fp)
  lw  $t4, -2940($fp)
  move $a0, $t4
  jal  write
  li  $t6, 12
  la  $t7, -40($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2944($fp)
  lw  $t1, -2944($fp)
  lw $t0, 0($t1)
  sw  $t0, -2948($fp)
  lw  $t2, -2948($fp)
  move $a0, $t2
  jal  write
  li  $t4, 16
  la  $t5, -40($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2952($fp)
  lw  $t7, -2952($fp)
  lw $t6, 0($t7)
  sw  $t6, -2956($fp)
  lw  $t0, -2956($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -376($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -380($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -384($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -388($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -392($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -396($fp)
  move $a0, $t6
  jal  write
  li  $t0, 0
  la  $t1, -60($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2960($fp)
  lw  $t3, -2960($fp)
  lw $t2, 0($t3)
  sw  $t2, -2964($fp)
  lw  $t4, -2964($fp)
  move $a0, $t4
  jal  write
  li  $t6, 4
  la  $t7, -60($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2968($fp)
  lw  $t1, -2968($fp)
  lw $t0, 0($t1)
  sw  $t0, -2972($fp)
  lw  $t2, -2972($fp)
  move $a0, $t2
  jal  write
  li  $t4, 8
  la  $t5, -60($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2976($fp)
  lw  $t7, -2976($fp)
  lw $t6, 0($t7)
  sw  $t6, -2980($fp)
  lw  $t0, -2980($fp)
  move $a0, $t0
  jal  write
  li  $t2, 12
  la  $t3, -60($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2984($fp)
  lw  $t5, -2984($fp)
  lw $t4, 0($t5)
  sw  $t4, -2988($fp)
  lw  $t6, -2988($fp)
  move $a0, $t6
  jal  write
  li  $t0, 16
  la  $t1, -60($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2992($fp)
  lw  $t3, -2992($fp)
  lw $t2, 0($t3)
  sw  $t2, -2996($fp)
  lw  $t4, -2996($fp)
  move $a0, $t4
  jal  write
  li  $t6, 20
  la  $t7, -60($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3000($fp)
  lw  $t1, -3000($fp)
  lw $t0, 0($t1)
  sw  $t0, -3004($fp)
  lw  $t2, -3004($fp)
  move $a0, $t2
  jal  write
  li  $t4, 24
  la  $t5, -60($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3008($fp)
  lw  $t7, -3008($fp)
  lw $t6, 0($t7)
  sw  $t6, -3012($fp)
  lw  $t0, -3012($fp)
  move $a0, $t0
  jal  write
  li  $t2, 28
  la  $t3, -60($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3016($fp)
  lw  $t5, -3016($fp)
  lw $t4, 0($t5)
  sw  $t4, -3020($fp)
  lw  $t6, -3020($fp)
  move $a0, $t6
  jal  write
  li  $t0, 32
  la  $t1, -60($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3024($fp)
  lw  $t3, -3024($fp)
  lw $t2, 0($t3)
  sw  $t2, -3028($fp)
  lw  $t4, -3028($fp)
  move $a0, $t4
  jal  write
  li  $t6, 36
  la  $t7, -60($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3032($fp)
  lw  $t1, -3032($fp)
  lw $t0, 0($t1)
  sw  $t0, -3036($fp)
  lw  $t2, -3036($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -440($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -444($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -448($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -452($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -456($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -460($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -464($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -468($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -472($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -476($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -480($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -484($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -488($fp)
  move $a0, $t7
  jal  write
  li  $t1, 0
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3040($fp)
  lw  $t4, -3040($fp)
  lw $t3, 0($t4)
  sw  $t3, -3044($fp)
  lw  $t5, -3044($fp)
  move $a0, $t5
  jal  write
  li  $t7, 4
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3048($fp)
  lw  $t2, -3048($fp)
  lw $t1, 0($t2)
  sw  $t1, -3052($fp)
  lw  $t3, -3052($fp)
  move $a0, $t3
  jal  write
  li  $t5, 8
  la  $t6, -100($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3056($fp)
  lw  $t0, -3056($fp)
  lw $t7, 0($t0)
  sw  $t7, -3060($fp)
  lw  $t1, -3060($fp)
  move $a0, $t1
  jal  write
  li  $t3, 12
  la  $t4, -100($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3064($fp)
  lw  $t6, -3064($fp)
  lw $t5, 0($t6)
  sw  $t5, -3068($fp)
  lw  $t7, -3068($fp)
  move $a0, $t7
  jal  write
  li  $t1, 16
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3072($fp)
  lw  $t4, -3072($fp)
  lw $t3, 0($t4)
  sw  $t3, -3076($fp)
  lw  $t5, -3076($fp)
  move $a0, $t5
  jal  write
  li  $t7, 20
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3080($fp)
  lw  $t2, -3080($fp)
  lw $t1, 0($t2)
  sw  $t1, -3084($fp)
  lw  $t3, -3084($fp)
  move $a0, $t3
  jal  write
  li  $t5, 24
  la  $t6, -100($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3088($fp)
  lw  $t0, -3088($fp)
  lw $t7, 0($t0)
  sw  $t7, -3092($fp)
  lw  $t1, -3092($fp)
  move $a0, $t1
  jal  write
  li  $t3, 28
  la  $t4, -100($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3096($fp)
  lw  $t6, -3096($fp)
  lw $t5, 0($t6)
  sw  $t5, -3100($fp)
  lw  $t7, -3100($fp)
  move $a0, $t7
  jal  write
  li  $t1, 32
  la  $t2, -100($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3104($fp)
  lw  $t4, -3104($fp)
  lw $t3, 0($t4)
  sw  $t3, -3108($fp)
  lw  $t5, -3108($fp)
  move $a0, $t5
  jal  write
  li  $t7, 36
  la  $t0, -100($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3112($fp)
  lw  $t2, -3112($fp)
  lw $t1, 0($t2)
  sw  $t1, -3116($fp)
  lw  $t3, -3116($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -532($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -536($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -540($fp)
  move $a0, $t6
  jal  write
  li  $t0, 0
  la  $t1, -140($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3120($fp)
  lw  $t3, -3120($fp)
  lw $t2, 0($t3)
  sw  $t2, -3124($fp)
  lw  $t4, -3124($fp)
  move $a0, $t4
  jal  write
  li  $t6, 4
  la  $t7, -140($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3128($fp)
  lw  $t1, -3128($fp)
  lw $t0, 0($t1)
  sw  $t0, -3132($fp)
  lw  $t2, -3132($fp)
  move $a0, $t2
  jal  write
  li  $t4, 0
  la  $t5, -148($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3136($fp)
  lw  $t7, -3136($fp)
  lw $t6, 0($t7)
  sw  $t6, -3140($fp)
  lw  $t0, -3140($fp)
  move $a0, $t0
  jal  write
  li  $t2, 4
  la  $t3, -148($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3144($fp)
  lw  $t5, -3144($fp)
  lw $t4, 0($t5)
  sw  $t4, -3148($fp)
  lw  $t6, -3148($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -560($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -564($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -568($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -572($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -576($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -580($fp)
  move $a0, $t4
  jal  write
  li  $t6, 0
  la  $t7, -156($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3152($fp)
  lw  $t1, -3152($fp)
  lw $t0, 0($t1)
  sw  $t0, -3156($fp)
  lw  $t2, -3156($fp)
  move $a0, $t2
  jal  write
  li  $t4, 4
  la  $t5, -156($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3160($fp)
  lw  $t7, -3160($fp)
  lw $t6, 0($t7)
  sw  $t6, -3164($fp)
  lw  $t0, -3164($fp)
  move $a0, $t0
  jal  write
  li  $t2, 8
  la  $t3, -156($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3168($fp)
  lw  $t5, -3168($fp)
  lw $t4, 0($t5)
  sw  $t4, -3172($fp)
  lw  $t6, -3172($fp)
  move $a0, $t6
  jal  write
  li  $t0, 12
  la  $t1, -156($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3176($fp)
  lw  $t3, -3176($fp)
  lw $t2, 0($t3)
  sw  $t2, -3180($fp)
  lw  $t4, -3180($fp)
  move $a0, $t4
  jal  write
  li  $t6, 16
  la  $t7, -156($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3184($fp)
  lw  $t1, -3184($fp)
  lw $t0, 0($t1)
  sw  $t0, -3188($fp)
  lw  $t2, -3188($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -604($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -608($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -612($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -616($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -620($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -624($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -628($fp)
  move $a0, $t1
  jal  write
  li  $t3, 0
  la  $t4, -176($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3192($fp)
  lw  $t6, -3192($fp)
  lw $t5, 0($t6)
  sw  $t5, -3196($fp)
  lw  $t7, -3196($fp)
  move $a0, $t7
  jal  write
  li  $t1, 0
  la  $t2, -180($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3200($fp)
  lw  $t4, -3200($fp)
  lw $t3, 0($t4)
  sw  $t3, -3204($fp)
  lw  $t5, -3204($fp)
  move $a0, $t5
  jal  write
  li  $t7, 4
  la  $t0, -180($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3208($fp)
  lw  $t2, -3208($fp)
  lw $t1, 0($t2)
  sw  $t1, -3212($fp)
  lw  $t3, -3212($fp)
  move $a0, $t3
  jal  write
  li  $t5, 8
  la  $t6, -180($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3216($fp)
  lw  $t0, -3216($fp)
  lw $t7, 0($t0)
  sw  $t7, -3220($fp)
  lw  $t1, -3220($fp)
  move $a0, $t1
  jal  write
  li  $t3, 12
  la  $t4, -180($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3224($fp)
  lw  $t6, -3224($fp)
  lw $t5, 0($t6)
  sw  $t5, -3228($fp)
  lw  $t7, -3228($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -652($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -656($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -660($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -664($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -668($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -672($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -676($fp)
  move $a0, $t6
  jal  write
  li  $t0, 0
  la  $t1, -196($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3232($fp)
  lw  $t3, -3232($fp)
  lw $t2, 0($t3)
  sw  $t2, -3236($fp)
  lw  $t4, -3236($fp)
  move $a0, $t4
  jal  write
  li  $t6, 4
  la  $t7, -196($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3240($fp)
  lw  $t1, -3240($fp)
  lw $t0, 0($t1)
  sw  $t0, -3244($fp)
  lw  $t2, -3244($fp)
  move $a0, $t2
  jal  write
  li  $t4, 8
  la  $t5, -196($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3248($fp)
  lw  $t7, -3248($fp)
  lw $t6, 0($t7)
  sw  $t6, -3252($fp)
  lw  $t0, -3252($fp)
  move $a0, $t0
  jal  write
  li  $t2, 12
  la  $t3, -196($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3256($fp)
  lw  $t5, -3256($fp)
  lw $t4, 0($t5)
  sw  $t4, -3260($fp)
  lw  $t6, -3260($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -696($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -700($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -704($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -708($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -712($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -716($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -720($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -724($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -728($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -732($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -736($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -740($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -744($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -748($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -752($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -756($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -760($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -764($fp)
  move $a0, $t0
  jal  write
  li  $t2, 0
  la  $t3, -212($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3264($fp)
  lw  $t5, -3264($fp)
  lw $t4, 0($t5)
  sw  $t4, -3268($fp)
  lw  $t6, -3268($fp)
  move $a0, $t6
  jal  write
  li  $t0, 4
  la  $t1, -212($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3272($fp)
  lw  $t3, -3272($fp)
  lw $t2, 0($t3)
  sw  $t2, -3276($fp)
  lw  $t4, -3276($fp)
  move $a0, $t4
  jal  write
  li  $t6, 8
  la  $t7, -212($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3280($fp)
  lw  $t1, -3280($fp)
  lw $t0, 0($t1)
  sw  $t0, -3284($fp)
  lw  $t2, -3284($fp)
  move $a0, $t2
  jal  write
  li  $t4, 12
  la  $t5, -212($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3288($fp)
  lw  $t7, -3288($fp)
  lw $t6, 0($t7)
  sw  $t6, -3292($fp)
  lw  $t0, -3292($fp)
  move $a0, $t0
  jal  write
  li  $t2, 16
  la  $t3, -212($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3296($fp)
  lw  $t5, -3296($fp)
  lw $t4, 0($t5)
  sw  $t4, -3300($fp)
  lw  $t6, -3300($fp)
  move $a0, $t6
  jal  write
  li  $t0, 20
  la  $t1, -212($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3304($fp)
  lw  $t3, -3304($fp)
  lw $t2, 0($t3)
  sw  $t2, -3308($fp)
  lw  $t4, -3308($fp)
  move $a0, $t4
  jal  write
  li  $t6, 24
  la  $t7, -212($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3312($fp)
  lw  $t1, -3312($fp)
  lw $t0, 0($t1)
  sw  $t0, -3316($fp)
  lw  $t2, -3316($fp)
  move $a0, $t2
  jal  write
  li  $t4, 28
  la  $t5, -212($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3320($fp)
  lw  $t7, -3320($fp)
  lw $t6, 0($t7)
  sw  $t6, -3324($fp)
  lw  $t0, -3324($fp)
  move $a0, $t0
  jal  write
  li  $t2, 32
  la  $t3, -212($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3328($fp)
  lw  $t5, -3328($fp)
  lw $t4, 0($t5)
  sw  $t4, -3332($fp)
  lw  $t6, -3332($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -804($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -808($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -812($fp)
  move $a0, $t1
  jal  write
  li  $t3, 0
  la  $t4, -248($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3336($fp)
  lw  $t6, -3336($fp)
  lw $t5, 0($t6)
  sw  $t5, -3340($fp)
  lw  $t7, -3340($fp)
  move $a0, $t7
  jal  write
  li  $t1, 4
  la  $t2, -248($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3344($fp)
  lw  $t4, -3344($fp)
  lw $t3, 0($t4)
  sw  $t3, -3348($fp)
  lw  $t5, -3348($fp)
  move $a0, $t5
  jal  write
  li  $t7, 8
  la  $t0, -248($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3352($fp)
  lw  $t2, -3352($fp)
  lw $t1, 0($t2)
  sw  $t1, -3356($fp)
  lw  $t3, -3356($fp)
  move $a0, $t3
  jal  write
  li  $t5, 12
  la  $t6, -248($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3360($fp)
  lw  $t0, -3360($fp)
  lw $t7, 0($t0)
  sw  $t7, -3364($fp)
  lw  $t1, -3364($fp)
  move $a0, $t1
  jal  write
  li  $t3, 16
  la  $t4, -248($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3368($fp)
  lw  $t6, -3368($fp)
  lw $t5, 0($t6)
  sw  $t5, -3372($fp)
  lw  $t7, -3372($fp)
  move $a0, $t7
  jal  write
  li  $t1, 20
  la  $t2, -248($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -3376($fp)
  lw  $t4, -3376($fp)
  lw $t3, 0($t4)
  sw  $t3, -3380($fp)
  lw  $t5, -3380($fp)
  move $a0, $t5
  jal  write
  li  $t7, 24
  la  $t0, -248($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3384($fp)
  lw  $t2, -3384($fp)
  lw $t1, 0($t2)
  sw  $t1, -3388($fp)
  lw  $t3, -3388($fp)
  move $a0, $t3
  jal  write
  li  $t5, 28
  la  $t6, -248($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3392($fp)
  lw  $t0, -3392($fp)
  lw $t7, 0($t0)
  sw  $t7, -3396($fp)
  lw  $t1, -3396($fp)
  move $a0, $t1
  jal  write
  li  $t3, 32
  la  $t4, -248($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -3400($fp)
  lw  $t6, -3400($fp)
  lw $t5, 0($t6)
  sw  $t5, -3404($fp)
  lw  $t7, -3404($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -852($fp)
  move $a0, $t0
  jal  write
  li  $t2, 0
  la  $t3, -284($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3408($fp)
  lw  $t5, -3408($fp)
  lw $t4, 0($t5)
  sw  $t4, -3412($fp)
  lw  $t6, -3412($fp)
  move $a0, $t6
  jal  write
  li  $t0, 4
  la  $t1, -284($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3416($fp)
  lw  $t3, -3416($fp)
  lw $t2, 0($t3)
  sw  $t2, -3420($fp)
  lw  $t4, -3420($fp)
  move $a0, $t4
  jal  write
  li  $t6, 8
  la  $t7, -284($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3424($fp)
  lw  $t1, -3424($fp)
  lw $t0, 0($t1)
  sw  $t0, -3428($fp)
  lw  $t2, -3428($fp)
  move $a0, $t2
  jal  write
  li  $t4, 12
  la  $t5, -284($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3432($fp)
  lw  $t7, -3432($fp)
  lw $t6, 0($t7)
  sw  $t6, -3436($fp)
  lw  $t0, -3436($fp)
  move $a0, $t0
  jal  write
  li  $t2, 16
  la  $t3, -284($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3440($fp)
  lw  $t5, -3440($fp)
  lw $t4, 0($t5)
  sw  $t4, -3444($fp)
  lw  $t6, -3444($fp)
  move $a0, $t6
  jal  write
  li  $t0, 20
  la  $t1, -284($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3448($fp)
  lw  $t3, -3448($fp)
  lw $t2, 0($t3)
  sw  $t2, -3452($fp)
  lw  $t4, -3452($fp)
  move $a0, $t4
  jal  write
  li  $t6, 24
  la  $t7, -284($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3456($fp)
  lw  $t1, -3456($fp)
  lw $t0, 0($t1)
  sw  $t0, -3460($fp)
  lw  $t2, -3460($fp)
  move $a0, $t2
  jal  write
  li  $t4, 28
  la  $t5, -284($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3464($fp)
  lw  $t7, -3464($fp)
  lw $t6, 0($t7)
  sw  $t6, -3468($fp)
  lw  $t0, -3468($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -888($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -892($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -896($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -900($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -904($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -908($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -912($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -916($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -720($fp)
  move  $v0, $t1
  lw  $ra  3468($sp) 
  lw  $fp  3464($sp) 
  addi $sp, $sp, 3472
  jr  $ra
id_qbyM:
  subu  $sp, $sp, 72
  sw  $ra  68($sp) 
  sw  $fp  64($sp) 
  addi  $fp, $sp , 72
  li  $t3, 0
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -20($fp)
  lw  $t5, -20($fp)
  li  $t6, 22726
  sw $t6, 0($t5)
  li  $t0, 4
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -24($fp)
  lw  $t2, -24($fp)
  li  $t3, 20500
  sw $t3, 0($t2)
  li  $t5, 0
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -28($fp)
  lw  $t0, -28($fp)
  lw $t7, 0($t0)
  sw  $t7, -32($fp)
  lw  $t1, -32($fp)
  move $a0, $t1
  jal  write
  li  $t3, 4
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -36($fp)
  lw  $t6, -36($fp)
  lw $t5, 0($t6)
  sw  $t5, -40($fp)
  lw  $t7, -40($fp)
  move $a0, $t7
  jal  write
  li $t0, 0
  sw  $t0, -44($fp)
  lw  $t1, 0($fp)
  lw  $t2, 0($fp)
  beq  $t2, $t1, label1034
  j label1035
  label1034 :
  li $t3, 1
  sw  $t3, -44($fp)
  label1035 :
  li  $t5, 4
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -48($fp)
  lw  $t0, -48($fp)
  lw $t7, 0($t0)
  sw  $t7, -52($fp)
  lw  $t2, -52($fp)
  sub $t1, $t2, 0
  lw  $t3, -52($fp)
  li  $t4, 0
  sub $t1, $t4, $t3
  sw  $t1, -56($fp)
  li $t5, 0
  sw  $t5, -60($fp)
  li  $t6, 0
  li  $t7, 20783
  bne  $t7, $t6, label1037
  j label1036
  label1036 :
  li $t0, 1
  sw  $t0, -60($fp)
  label1037 :
  lw  $t2, 0($fp)
  lw  $t3, -60($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -64($fp)
  addi  $sp, $sp, -4
  lw  $t4, -64($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -56($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -44($fp)
  sw  $t6, 0($sp)
  jal  id_zA90b
  move  $t7, $v0
  sw  $t7, -68($fp)
  addi  $sp, $sp, 12
  lw  $t0, -68($fp)
  move  $v0, $t0
  lw  $ra  68($sp) 
  lw  $fp  64($sp) 
  addi $sp, $sp, 72
  jr  $ra
id_ng:
  subu  $sp, $sp, 520
  sw  $ra  516($sp) 
  sw  $fp  512($sp) 
  addi  $fp, $sp , 520
  li $t1, 2246
  sw  $t1, -36($fp)
  li $t2, 17280
  sw  $t2, -40($fp)
  li $t3, 21469
  sw  $t3, -44($fp)
  li $t4, 62322
  sw  $t4, -48($fp)
  li $t5, 50627
  sw  $t5, -52($fp)
  li $t6, 28393
  sw  $t6, -56($fp)
  li $t7, 26039
  sw  $t7, -60($fp)
  li  $t1, 0
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -64($fp)
  lw  $t3, -64($fp)
  li  $t4, 31046
  sw $t4, 0($t3)
  li  $t6, 4
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -68($fp)
  lw  $t0, -68($fp)
  li  $t1, 13210
  sw $t1, 0($t0)
  li  $t3, 8
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -72($fp)
  lw  $t5, -72($fp)
  li  $t6, 42847
  sw $t6, 0($t5)
  li  $t0, 12
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -76($fp)
  lw  $t2, -76($fp)
  li  $t3, 8777
  sw $t3, 0($t2)
  li  $t5, 16
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -80($fp)
  lw  $t7, -80($fp)
  li  $t0, 35302
  sw $t0, 0($t7)
  li  $t2, 20
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -84($fp)
  lw  $t4, -84($fp)
  li  $t5, 16125
  sw $t5, 0($t4)
  li $t6, 4747
  sw  $t6, -88($fp)
  lw  $t7, -36($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -40($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -44($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -48($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -52($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -56($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -60($fp)
  move $a0, $t5
  jal  write
  li  $t7, 0
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -92($fp)
  lw  $t2, -92($fp)
  lw $t1, 0($t2)
  sw  $t1, -96($fp)
  lw  $t3, -96($fp)
  move $a0, $t3
  jal  write
  li  $t5, 4
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -100($fp)
  lw  $t0, -100($fp)
  lw $t7, 0($t0)
  sw  $t7, -104($fp)
  lw  $t1, -104($fp)
  move $a0, $t1
  jal  write
  li  $t3, 8
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -108($fp)
  lw  $t6, -108($fp)
  lw $t5, 0($t6)
  sw  $t5, -112($fp)
  lw  $t7, -112($fp)
  move $a0, $t7
  jal  write
  li  $t1, 12
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -116($fp)
  lw  $t4, -116($fp)
  lw $t3, 0($t4)
  sw  $t3, -120($fp)
  lw  $t5, -120($fp)
  move $a0, $t5
  jal  write
  li  $t7, 16
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -124($fp)
  lw  $t2, -124($fp)
  lw $t1, 0($t2)
  sw  $t1, -128($fp)
  lw  $t3, -128($fp)
  move $a0, $t3
  jal  write
  li  $t5, 20
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -132($fp)
  lw  $t0, -132($fp)
  lw $t7, 0($t0)
  sw  $t7, -136($fp)
  lw  $t1, -136($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -88($fp)
  move $a0, $t2
  jal  write
  li $t3, 0
  sw  $t3, -140($fp)
  addi  $sp, $sp, -4
  lw  $t4, -44($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, -58316
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  li  $t6, 41940
  sw  $t6, 0($sp)
  jal  id_qbyM
  move  $t7, $v0
  sw  $t7, -144($fp)
  addi  $sp, $sp, 12
  li  $t0, 0
  lw  $t1, -144($fp)
  bne  $t1, $t0, label1038
  j label1039
  label1038 :
  li $t2, 1
  sw  $t2, -140($fp)
  label1039 :
  lw  $t3, -140($fp)
  move  $v0, $t3
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
  li $t4, 43535
  sw  $t4, -148($fp)
  li $t5, 42357
  sw  $t5, -152($fp)
  label1040 :
  li $t6, 0
  sw  $t6, -156($fp)
  lw  $t0, -44($fp)
  sub $t7, $t0, 0
  lw  $t1, -44($fp)
  li  $t2, 0
  sub $t7, $t2, $t1
  sw  $t7, -160($fp)
  lw  $t3, -36($fp)
  lw  $t4, -160($fp)
  bne  $t4, $t3, label1043
  j label1044
  label1043 :
  li $t5, 1
  sw  $t5, -156($fp)
  label1044 :
  li  $t7, 4
  lw  $t0, -156($fp)
  mul $t6, $t0, $t7
  sw  $t6, -164($fp)
  lw  $t2, -164($fp)
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -168($fp)
  lw  $t5, -168($fp)
  lw $t4, 0($t5)
  sw  $t4, -172($fp)
  li $t6, 0
  sw  $t6, -176($fp)
  li  $t7, 0
  lw  $t0, -52($fp)
  bne  $t0, $t7, label1046
  j label1047
  label1047 :
  li  $t1, 0
  li  $t2, 60714
  bne  $t2, $t1, label1045
  j label1046
  label1045 :
  li $t3, 1
  sw  $t3, -176($fp)
  label1046 :
  addi  $sp, $sp, -4
  li  $t4, -4114
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, -48139
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, -176($fp)
  sw  $t6, 0($sp)
  jal  id_IBvdWNifc
  move  $t7, $v0
  sw  $t7, -180($fp)
  addi  $sp, $sp, 12
  lw  $t0, -180($fp)
  lw  $t1, -172($fp)
  ble  $t1, $t0, label1041
  j label1042
  label1041 :
  li $t2, 0
  sw  $t2, -184($fp)
  lw  $t4, -44($fp)
  lw  $t5, 0($fp)
  sub $t3, $t5, $t4
  sw  $t3, -188($fp)
  li  $t6, 0
  lw  $t7, -188($fp)
  bne  $t7, $t6, label1048
  j label1050
  label1050 :
  li $t0, 0
  sw  $t0, -192($fp)
  li  $t1, 0
  lw  $t2, -44($fp)
  bne  $t2, $t1, label1051
  j label1052
  label1051 :
  li $t3, 1
  sw  $t3, -192($fp)
  label1052 :
  lw  $t4, 0($fp)
  lw  $t5, -192($fp)
  blt  $t5, $t4, label1048
  j label1049
  label1048 :
  li $t6, 1
  sw  $t6, -184($fp)
  label1049 :
  lw  $t7, -184($fp)
  move  $v0, $t7
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
  j label1040
  label1042 :
  lw  $t0, -148($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -152($fp)
  move $a0, $t1
  jal  write
  li $t2, 0
  sw  $t2, -196($fp)
  li $t3, 0
  sw  $t3, -200($fp)
  li $t4, 0
  sw  $t4, -204($fp)
  li  $t6, 5622
  lw  $t7, -52($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -208($fp)
  lw  $t0, -148($fp)
  lw  $t1, -208($fp)
  blt  $t1, $t0, label1057
  j label1058
  label1057 :
  li $t2, 1
  sw  $t2, -204($fp)
  label1058 :
  li  $t4, 4
  lw  $t5, -204($fp)
  mul $t3, $t5, $t4
  sw  $t3, -212($fp)
  lw  $t7, -212($fp)
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -216($fp)
  lw  $t2, -216($fp)
  lw $t1, 0($t2)
  sw  $t1, -220($fp)
  lw  $t4, -152($fp)
  lw  $t5, -48($fp)
  mul $t3, $t5, $t4
  sw  $t3, -224($fp)
  lw  $t7, 0($fp)
  lw  $t0, -224($fp)
  add $t6, $t0, $t7
  sw  $t6, -228($fp)
  lw  $t2, 4($fp)
  move $t1, $t2
  sw  $t1, -44($fp)
  lw  $t4, 0($fp)
  move $t3, $t4
  sw  $t3, -56($fp)
  addi  $sp, $sp, -4
  lw  $t5, 0($fp)
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  lw  $t6, 4($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -228($fp)
  sw  $t7, 0($sp)
  jal  id_zA90b
  move  $t0, $v0
  sw  $t0, -232($fp)
  addi  $sp, $sp, 12
  lw  $t2, -232($fp)
  sub $t1, $t2, 61984
  sw  $t1, -236($fp)
  lw  $t3, -236($fp)
  lw  $t4, -220($fp)
  bne  $t4, $t3, label1055
  j label1056
  label1055 :
  li $t5, 1
  sw  $t5, -200($fp)
  label1056 :
  lw  $t7, -152($fp)
  li  $t0, 9423
  div $t0, $t7
  mflo $t6
  sw  $t6, -240($fp)
  lw  $t1, -240($fp)
  lw  $t2, -200($fp)
  bge  $t2, $t1, label1053
  j label1054
  label1053 :
  li $t3, 1
  sw  $t3, -196($fp)
  label1054 :
  lw  $t4, -196($fp)
  move  $v0, $t4
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
  li $t5, 26810
  sw  $t5, -244($fp)
  li $t6, 17722
  sw  $t6, -248($fp)
  li $t7, 32149
  sw  $t7, -252($fp)
  li $t0, 47310
  sw  $t0, -256($fp)
  lw  $t1, -244($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -248($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -252($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -256($fp)
  move $a0, $t4
  jal  write
  lw  $t6, -252($fp)
  sub $t5, $t6, 0
  lw  $t7, -252($fp)
  li  $t0, 0
  sub $t5, $t0, $t7
  sw  $t5, -260($fp)
  lw  $t1, -260($fp)
  move  $v0, $t1
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
  li $t2, 0
  sw  $t2, -264($fp)
  li  $t3, 0
  li  $t4, 9504
  bne  $t4, $t3, label1064
  j label1063
  label1064 :
  li  $t5, 0
  lw  $t6, -148($fp)
  bne  $t6, $t5, label1062
  j label1063
  label1062 :
  li $t7, 1
  sw  $t7, -264($fp)
  label1063 :
  lw  $t1, -264($fp)
  move $t0, $t1
  sw  $t0, -88($fp)
  li  $t2, 0
  lw  $t3, -264($fp)
  bne  $t3, $t2, label1059
  j label1060
  label1059 :
  label1068 :
  li  $t4, 0
  li  $t5, 62026
  bne  $t5, $t4, label1071
  j label1070
  label1071 :
  lw  $t7, -248($fp)
  li  $t0, 2557
  div $t0, $t7
  mflo $t6
  sw  $t6, -268($fp)
  li  $t1, 0
  lw  $t2, -268($fp)
  bne  $t2, $t1, label1069
  j label1070
  label1069 :
  li $t3, 0
  sw  $t3, -272($fp)
  li $t4, 0
  sw  $t4, -276($fp)
  li  $t5, 0
  li  $t6, 11750
  bne  $t6, $t5, label1074
  j label1075
  label1074 :
  li $t7, 1
  sw  $t7, -276($fp)
  label1075 :
  lw  $t1, -276($fp)
  sub $t0, $t1, 0
  lw  $t2, -276($fp)
  li  $t3, 0
  sub $t0, $t3, $t2
  sw  $t0, -280($fp)
  li  $t4, 0
  lw  $t5, -280($fp)
  bne  $t5, $t4, label1073
  j label1072
  label1072 :
  li $t6, 1
  sw  $t6, -272($fp)
  label1073 :
  j label1068
  label1070 :
  j label1061
  label1060 :
  li $t7, 0
  sw  $t7, -284($fp)
  li  $t0, 13771
  lw  $t1, -148($fp)
  bne  $t1, $t0, label1076
  j label1077
  label1076 :
  li $t2, 1
  sw  $t2, -284($fp)
  label1077 :
  li  $t4, 4
  lw  $t5, -284($fp)
  mul $t3, $t5, $t4
  sw  $t3, -288($fp)
  lw  $t7, -288($fp)
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -292($fp)
  lw  $t2, -292($fp)
  lw $t1, 0($t2)
  sw  $t1, -296($fp)
  lw  $t4, -296($fp)
  sub $t3, $t4, 0
  lw  $t5, -296($fp)
  li  $t6, 0
  sub $t3, $t6, $t5
  sw  $t3, -300($fp)
  li $t7, 0
  sw  $t7, -304($fp)
  li  $t0, 0
  li  $t1, -24026
  bne  $t1, $t0, label1080
  j label1079
  label1080 :
  li  $t2, 0
  li  $t3, 8536
  bne  $t3, $t2, label1078
  j label1079
  label1078 :
  li $t4, 1
  sw  $t4, -304($fp)
  label1079 :
  li $t5, 0
  sw  $t5, -308($fp)
  li $t6, 0
  sw  $t6, -312($fp)
  li  $t7, 64398
  lw  $t0, -256($fp)
  bne  $t0, $t7, label1085
  j label1084
  label1085 :
  li  $t1, 0
  li  $t2, 52419
  bne  $t2, $t1, label1083
  j label1084
  label1083 :
  li $t3, 1
  sw  $t3, -312($fp)
  label1084 :
  lw  $t5, -44($fp)
  lw  $t6, -244($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -316($fp)
  li  $t0, 34576
  lw  $t1, -316($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -320($fp)
  addi  $sp, $sp, -4
  lw  $t2, -320($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -312($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -52($fp)
  sw  $t4, 0($sp)
  jal  id_qbyM
  move  $t5, $v0
  sw  $t5, -324($fp)
  addi  $sp, $sp, 12
  li  $t6, 0
  lw  $t7, -324($fp)
  bne  $t7, $t6, label1082
  j label1081
  label1081 :
  li $t0, 1
  sw  $t0, -308($fp)
  label1082 :
  lw  $t2, -44($fp)
  move $t1, $t2
  sw  $t1, -48($fp)
  addi  $sp, $sp, -4
  li  $t3, 93
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -44($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  li  $t5, -29908
  sw  $t5, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t6, $v0
  sw  $t6, -328($fp)
  addi  $sp, $sp, 12
  lw  $t0, 4($fp)
  lw  $t1, -328($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -332($fp)
  addi  $sp, $sp, -4
  lw  $t2, -332($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -308($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -304($fp)
  sw  $t4, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t5, $v0
  sw  $t5, -336($fp)
  addi  $sp, $sp, 12
  lw  $t7, -336($fp)
  lw  $t0, -300($fp)
  add $t6, $t0, $t7
  sw  $t6, -340($fp)
  label1061 :
  li $t1, 11887
  sw  $t1, -344($fp)
  li $t2, 0
  sw  $t2, -348($fp)
  lw  $t4, -344($fp)
  lw  $t5, -48($fp)
  mul $t3, $t5, $t4
  sw  $t3, -352($fp)
  lw  $t7, -252($fp)
  lw  $t0, -352($fp)
  mul $t6, $t0, $t7
  sw  $t6, -356($fp)
  lw  $t2, -60($fp)
  lw  $t3, -48($fp)
  mul $t1, $t3, $t2
  sw  $t1, -360($fp)
  lw  $t4, -360($fp)
  lw  $t5, -356($fp)
  beq  $t5, $t4, label1086
  j label1087
  label1086 :
  li $t6, 1
  sw  $t6, -348($fp)
  label1087 :
  lw  $t0, -348($fp)
  move $t7, $t0
  sw  $t7, -44($fp)
  li $t1, 0
  sw  $t1, -364($fp)
  li  $t2, 0
  lw  $t3, -256($fp)
  bne  $t3, $t2, label1091
  j label1090
  label1090 :
  li $t4, 1
  sw  $t4, -364($fp)
  label1091 :
  lw  $t5, -36($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -40($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -44($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -48($fp)
  move $a0, $t0
  jal  write
  lw  $t1, -52($fp)
  move $a0, $t1
  jal  write
  lw  $t2, -56($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -60($fp)
  move $a0, $t3
  jal  write
  li  $t5, 0
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -368($fp)
  lw  $t0, -368($fp)
  lw $t7, 0($t0)
  sw  $t7, -372($fp)
  lw  $t1, -372($fp)
  move $a0, $t1
  jal  write
  li  $t3, 4
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -376($fp)
  lw  $t6, -376($fp)
  lw $t5, 0($t6)
  sw  $t5, -380($fp)
  lw  $t7, -380($fp)
  move $a0, $t7
  jal  write
  li  $t1, 8
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -384($fp)
  lw  $t4, -384($fp)
  lw $t3, 0($t4)
  sw  $t3, -388($fp)
  lw  $t5, -388($fp)
  move $a0, $t5
  jal  write
  li  $t7, 12
  la  $t0, -12($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -392($fp)
  lw  $t2, -392($fp)
  lw $t1, 0($t2)
  sw  $t1, -396($fp)
  lw  $t3, -396($fp)
  move $a0, $t3
  jal  write
  li  $t5, 16
  la  $t6, -12($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -400($fp)
  lw  $t0, -400($fp)
  lw $t7, 0($t0)
  sw  $t7, -404($fp)
  lw  $t1, -404($fp)
  move $a0, $t1
  jal  write
  li  $t3, 20
  la  $t4, -12($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -408($fp)
  lw  $t6, -408($fp)
  lw $t5, 0($t6)
  sw  $t5, -412($fp)
  lw  $t7, -412($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -88($fp)
  move $a0, $t0
  jal  write
  li  $t1, 38685
  move  $v0, $t1
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
  li $t2, 0
  sw  $t2, -416($fp)
  li  $t3, 0
  lw  $t4, -44($fp)
  bne  $t4, $t3, label1094
  j label1096
  label1096 :
  li  $t5, 0
  lw  $t6, -40($fp)
  bne  $t6, $t5, label1097
  j label1095
  label1097 :
  li  $t7, 0
  li  $t0, 35396
  bne  $t0, $t7, label1094
  j label1095
  label1094 :
  li $t1, 1
  sw  $t1, -416($fp)
  label1095 :
  lw  $t3, -416($fp)
  move $t2, $t3
  sw  $t2, -36($fp)
  li  $t4, 0
  lw  $t5, -416($fp)
  bne  $t5, $t4, label1092
  j label1093
  label1092 :
  li $t6, 0
  sw  $t6, -420($fp)
  li $t7, 0
  sw  $t7, -424($fp)
  li $t0, 0
  sw  $t0, -428($fp)
  li $t1, 0
  sw  $t1, -432($fp)
  lw  $t2, -60($fp)
  li  $t3, 28012
  bge  $t3, $t2, label1108
  j label1109
  label1108 :
  li $t4, 1
  sw  $t4, -432($fp)
  label1109 :
  li  $t5, 43433
  lw  $t6, -432($fp)
  bge  $t6, $t5, label1106
  j label1107
  label1106 :
  li $t7, 1
  sw  $t7, -428($fp)
  label1107 :
  li $t0, 0
  sw  $t0, -436($fp)
  li  $t1, 11800
  lw  $t2, -56($fp)
  bge  $t2, $t1, label1110
  j label1112
  label1112 :
  li  $t3, 0
  li  $t4, 20792
  bne  $t4, $t3, label1110
  j label1111
  label1110 :
  li $t5, 1
  sw  $t5, -436($fp)
  label1111 :
  addi  $sp, $sp, -4
  lw  $t6, -436($fp)
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  lw  $t7, -56($fp)
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  lw  $t0, -428($fp)
  sw  $t0, 0($sp)
  jal  id_zA90b
  move  $t1, $v0
  sw  $t1, -440($fp)
  addi  $sp, $sp, 12
  li  $t2, 0
  lw  $t3, -440($fp)
  bne  $t3, $t2, label1105
  j label1104
  label1104 :
  li $t4, 1
  sw  $t4, -424($fp)
  label1105 :
  li  $t6, 4
  lw  $t7, -48($fp)
  mul $t5, $t7, $t6
  sw  $t5, -444($fp)
  lw  $t1, -444($fp)
  la  $t2, -12($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -448($fp)
  lw  $t4, -448($fp)
  lw $t3, 0($t4)
  sw  $t3, -452($fp)
  lw  $t5, -452($fp)
  lw  $t6, -424($fp)
  bne  $t6, $t5, label1102
  j label1103
  label1102 :
  li $t7, 1
  sw  $t7, -420($fp)
  label1103 :
  lw  $t1, -420($fp)
  move $t0, $t1
  sw  $t0, -44($fp)
  label1093 :
  lw  $t2, -36($fp)
  move $a0, $t2
  jal  write
  lw  $t3, -40($fp)
  move $a0, $t3
  jal  write
  lw  $t4, -44($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -48($fp)
  move $a0, $t5
  jal  write
  lw  $t6, -52($fp)
  move $a0, $t6
  jal  write
  lw  $t7, -56($fp)
  move $a0, $t7
  jal  write
  lw  $t0, -60($fp)
  move $a0, $t0
  jal  write
  li  $t2, 0
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -456($fp)
  lw  $t5, -456($fp)
  lw $t4, 0($t5)
  sw  $t4, -460($fp)
  lw  $t6, -460($fp)
  move $a0, $t6
  jal  write
  li  $t0, 4
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -464($fp)
  lw  $t3, -464($fp)
  lw $t2, 0($t3)
  sw  $t2, -468($fp)
  lw  $t4, -468($fp)
  move $a0, $t4
  jal  write
  li  $t6, 8
  la  $t7, -12($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -472($fp)
  lw  $t1, -472($fp)
  lw $t0, 0($t1)
  sw  $t0, -476($fp)
  lw  $t2, -476($fp)
  move $a0, $t2
  jal  write
  li  $t4, 12
  la  $t5, -12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -480($fp)
  lw  $t7, -480($fp)
  lw $t6, 0($t7)
  sw  $t6, -484($fp)
  lw  $t0, -484($fp)
  move $a0, $t0
  jal  write
  li  $t2, 16
  la  $t3, -12($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -488($fp)
  lw  $t5, -488($fp)
  lw $t4, 0($t5)
  sw  $t4, -492($fp)
  lw  $t6, -492($fp)
  move $a0, $t6
  jal  write
  li  $t0, 20
  la  $t1, -12($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -496($fp)
  lw  $t3, -496($fp)
  lw $t2, 0($t3)
  sw  $t2, -500($fp)
  lw  $t4, -500($fp)
  move $a0, $t4
  jal  write
  lw  $t5, -88($fp)
  move $a0, $t5
  jal  write
  lw  $t7, -52($fp)
  move $t6, $t7
  sw  $t6, -88($fp)
  li $t0, 0
  sw  $t0, -504($fp)
  li  $t1, 0
  li  $t2, 75590
  bne  $t2, $t1, label1126
  j label1125
  label1126 :
  li  $t3, 0
  li  $t4, 15970
  bne  $t4, $t3, label1124
  j label1125
  label1124 :
  li $t5, 1
  sw  $t5, -504($fp)
  label1125 :
  li $t6, 0
  sw  $t6, -508($fp)
  li  $t7, 0
  li  $t0, -4035
  bne  $t0, $t7, label1128
  j label1127
  label1127 :
  li $t1, 1
  sw  $t1, -508($fp)
  label1128 :
  addi  $sp, $sp, -4
  lw  $t2, -508($fp)
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  lw  $t3, -504($fp)
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  lw  $t4, -52($fp)
  sw  $t4, 0($sp)
  jal  id_Cd_GQ36oAi
  move  $t5, $v0
  sw  $t5, -512($fp)
  addi  $sp, $sp, 12
  lw  $t7, -512($fp)
  add $t6, $t7, 58272
  sw  $t6, -516($fp)
  lw  $t0, -516($fp)
  move  $v0, $t0
  lw  $ra  516($sp) 
  lw  $fp  512($sp) 
  addi $sp, $sp, 520
  jr  $ra
id_Vd:
  subu  $sp, $sp, 28
  sw  $ra  24($sp) 
  sw  $fp  20($sp) 
  addi  $fp, $sp , 28
  li $t1, 21592
  sw  $t1, -12($fp)
  li $t2, 0
  sw  $t2, -16($fp)
  li  $t3, 483
  lw  $t4, -12($fp)
  blt  $t4, $t3, label1131
  j label1130
  label1131 :
  li  $t5, 0
  li  $t6, 2159
  bne  $t6, $t5, label1129
  j label1130
  label1129 :
  li $t7, 1
  sw  $t7, -16($fp)
  label1130 :
  li $t0, 0
  sw  $t0, -20($fp)
  li  $t1, 0
  lw  $t2, -12($fp)
  bne  $t2, $t1, label1133
  j label1132
  label1132 :
  li $t3, 1
  sw  $t3, -20($fp)
  label1133 :
  addi  $sp, $sp, -4
  lw  $t4, -20($fp)
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  lw  $t5, -16($fp)
  sw  $t5, 0($sp)
  jal  id_ng
  move  $t6, $v0
  sw  $t6, -24($fp)
  addi  $sp, $sp, 8
  lw  $t7, -12($fp)
  move $a0, $t7
  jal  write
  li  $t0, 48402
  move  $v0, $t0
  lw  $ra  24($sp) 
  lw  $fp  20($sp) 
  addi $sp, $sp, 28
  jr  $ra
main:
  subu  $sp, $sp, 16
  sw  $ra  12($sp) 
  sw  $fp  8($sp) 
  addi  $fp, $sp , 16
  jal  id_Vd
  move  $t1, $v0
  sw  $t1, -12($fp)
  addi  $sp, $sp, 0
  lw  $t2, -12($fp)
  move $a0, $t2
  jal  write
  li  $t3, 0
  move  $v0, $t3
  lw  $ra  12($sp) 
  lw  $fp  8($sp) 
  addi $sp, $sp, 16
  jr  $ra
