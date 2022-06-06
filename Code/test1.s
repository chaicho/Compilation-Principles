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

Ks3ddgAOR:
  move  $fp, $sp
  subu  $sp, $sp, 52
  li $t1, 0
  sw  $t1, -4($fp)
  li $t2, 0
  sw  $t2, -8($fp)
  li $t3, 0
  sw  $t3, -12($fp)
  bgt  $t5, $t4, label10
  j label11
  label10 :
  li $t6, 1
  sw  $t6, -12($fp)
  label11 :
  bne  $t0, $t7, label9
  j label7
  label9 :
  li $t1, 0
  sw  $t1, -16($fp)
  bgt  $t3, $t2, label12
  j label13
  label12 :
  li $t4, 1
  sw  $t4, -16($fp)
  label13 :
  bne  $t6, $t5, label8
  j label7
  label8 :
  li $t7, 0
  sw  $t7, -20($fp)
  sub $t0, $t1, 2147483647
  sub $t0, $t3, $t2
  sw  $t0, -24($fp)
  bgt  $t5, $t4, label14
  j label15
  label14 :
  li $t6, 1
  sw  $t6, -20($fp)
  label15 :
  bne  $t0, $t7, label6
  j label7
  label6 :
  li $t1, 1
  sw  $t1, -8($fp)
  label7 :
  bne  $t3, $t2, label3
  j label5
  label5 :
  li $t4, 0
  sw  $t4, -28($fp)
  li $t5, 0
  sw  $t5, -32($fp)
  blt  $t7, $t6, label20
  j label21
  label20 :
  li $t0, 1
  sw  $t0, -32($fp)
  label21 :
  bne  $t2, $t1, label19
  j label17
  label19 :
  li $t3, 0
  sw  $t3, -36($fp)
  blt  $t5, $t4, label22
  j label23
  label22 :
  li $t6, 1
  sw  $t6, -36($fp)
  label23 :
  bne  $t0, $t7, label18
  j label17
  label18 :
  li $t1, 0
  sw  $t1, -40($fp)
  sub $t2, $t3, -2147483648
  sub $t2, $t5, $t4
  sw  $t2, -44($fp)
  blt  $t7, $t6, label24
  j label25
  label24 :
  li $t0, 1
  sw  $t0, -40($fp)
  label25 :
  bne  $t2, $t1, label16
  j label17
  label16 :
  li $t3, 1
  sw  $t3, -28($fp)
  label17 :
  bne  $t5, $t4, label3
  j label4
  label3 :
  li $t6, 1
  sw  $t6, -4($fp)
  label4 :
  bne  $t0, $t7, label1
  j label2
  label1 :
  move  $v0, $t1
  addiu  $sp, $sp, 52
  jr  $ra
  label2 :
  add $t2, $t4, $t3
  sw  $t2, -48($fp)
  move  $v0, $t5
  addiu  $sp, $sp, 52
  jr  $ra
id_qwVpn:
  move  $fp, $sp
  subu  $sp, $sp, 48
  li $t6, 0
  sw  $t6, -4($fp)
  li $t7, 0
  sw  $t7, -8($fp)
  bgt  $t1, $t0, label33
  j label34
  label33 :
  li $t2, 1
  sw  $t2, -8($fp)
  label34 :
  bne  $t4, $t3, label32
  j label30
  label32 :
  li $t5, 0
  sw  $t5, -12($fp)
  blt  $t7, $t6, label35
  j label36
  label35 :
  li $t0, 1
  sw  $t0, -12($fp)
  label36 :
  bne  $t2, $t1, label31
  j label30
  label31 :
  li $t3, 0
  sw  $t3, -16($fp)
  add $t4, $t5, 2147483647
  add $t4, $t7, $t6
  sw  $t4, -20($fp)
  bgt  $t1, $t0, label37
  j label38
  label37 :
  li $t2, 1
  sw  $t2, -16($fp)
  label38 :
  bne  $t4, $t3, label29
  j label30
  label29 :
  li $t5, 1
  sw  $t5, -4($fp)
  label30 :
  bne  $t7, $t6, label26
  j label28
  label28 :
  li $t0, 0
  sw  $t0, -24($fp)
  li $t1, 0
  sw  $t1, -28($fp)
  blt  $t3, $t2, label43
  j label44
  label43 :
  li $t4, 1
  sw  $t4, -28($fp)
  label44 :
  bne  $t6, $t5, label42
  j label40
  label42 :
  li $t7, 0
  sw  $t7, -32($fp)
  bgt  $t1, $t0, label45
  j label46
  label45 :
  li $t2, 1
  sw  $t2, -32($fp)
  label46 :
  bne  $t4, $t3, label41
  j label40
  label41 :
  li $t5, 0
  sw  $t5, -36($fp)
  add $t6, $t7, -2147483648
  add $t6, $t1, $t0
  sw  $t6, -40($fp)
  blt  $t3, $t2, label47
  j label48
  label47 :
  li $t4, 1
  sw  $t4, -36($fp)
  label48 :
  bne  $t6, $t5, label39
  j label40
  label39 :
  li $t7, 1
  sw  $t7, -24($fp)
  label40 :
  bne  $t1, $t0, label26
  j label27
  label26 :
  move  $v0, $t2
  addiu  $sp, $sp, 48
  jr  $ra
  label27 :
  sub $t3, $t5, $t4
  sw  $t3, -44($fp)
  move  $v0, $t6
  addiu  $sp, $sp, 48
  jr  $ra
id_DVt:
  move  $fp, $sp
  subu  $sp, $sp, 96
  li $t7, 0
  sw  $t7, -4($fp)
  li $t0, 0
  sw  $t0, -8($fp)
  li $t1, 0
  sw  $t1, -12($fp)
  bgt  $t3, $t2, label60
  j label61
  label60 :
  li $t4, 1
  sw  $t4, -12($fp)
  label61 :
  bne  $t6, $t5, label59
  j label57
  label59 :
  li $t7, 0
  sw  $t7, -16($fp)
  bgt  $t1, $t0, label62
  j label63
  label62 :
  li $t2, 1
  sw  $t2, -16($fp)
  label63 :
  bne  $t4, $t3, label58
  j label57
  label58 :
  li $t5, 0
  sw  $t5, -20($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -24($fp)
  bgt  $t2, $t1, label64
  j label65
  label64 :
  li $t3, 1
  sw  $t3, -20($fp)
  label65 :
  bne  $t5, $t4, label56
  j label57
  label56 :
  li $t6, 1
  sw  $t6, -8($fp)
  label57 :
  bne  $t0, $t7, label51
  j label55
  label55 :
  li $t1, 0
  sw  $t1, -28($fp)
  li $t2, 0
  sw  $t2, -32($fp)
  bgt  $t4, $t3, label70
  j label71
  label70 :
  li $t5, 1
  sw  $t5, -32($fp)
  label71 :
  bne  $t7, $t6, label69
  j label67
  label69 :
  li $t0, 0
  sw  $t0, -36($fp)
  ble  $t2, $t1, label72
  j label73
  label72 :
  li $t3, 1
  sw  $t3, -36($fp)
  label73 :
  bne  $t5, $t4, label68
  j label67
  label68 :
  li $t6, 0
  sw  $t6, -40($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -44($fp)
  blt  $t3, $t2, label74
  j label75
  label74 :
  li $t4, 1
  sw  $t4, -40($fp)
  label75 :
  bne  $t6, $t5, label66
  j label67
  label66 :
  li $t7, 1
  sw  $t7, -28($fp)
  label67 :
  bne  $t1, $t0, label51
  j label54
  label54 :
  li $t2, 0
  sw  $t2, -48($fp)
  li $t3, 0
  sw  $t3, -52($fp)
  ble  $t5, $t4, label80
  j label81
  label80 :
  li $t6, 1
  sw  $t6, -52($fp)
  label81 :
  bne  $t0, $t7, label79
  j label77
  label79 :
  li $t1, 0
  sw  $t1, -56($fp)
  bgt  $t3, $t2, label82
  j label83
  label82 :
  li $t4, 1
  sw  $t4, -56($fp)
  label83 :
  bne  $t6, $t5, label78
  j label77
  label78 :
  li $t7, 0
  sw  $t7, -60($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -64($fp)
  blt  $t4, $t3, label84
  j label85
  label84 :
  li $t5, 1
  sw  $t5, -60($fp)
  label85 :
  bne  $t7, $t6, label76
  j label77
  label76 :
  li $t0, 1
  sw  $t0, -48($fp)
  label77 :
  bne  $t2, $t1, label51
  j label53
  label53 :
  li $t3, 0
  sw  $t3, -68($fp)
  li $t4, 0
  sw  $t4, -72($fp)
  ble  $t6, $t5, label91
  j label92
  label91 :
  li $t7, 1
  sw  $t7, -72($fp)
  label92 :
  bne  $t1, $t0, label90
  j label87
  label90 :
  li $t2, 0
  sw  $t2, -76($fp)
  ble  $t4, $t3, label93
  j label94
  label93 :
  li $t5, 1
  sw  $t5, -76($fp)
  label94 :
  bne  $t7, $t6, label89
  j label87
  label89 :
  li $t0, 0
  sw  $t0, -80($fp)
  bne  $t2, $t1, label95
  j label96
  label95 :
  li $t3, 1
  sw  $t3, -80($fp)
  label96 :
  bne  $t5, $t4, label88
  j label87
  label88 :
  li $t6, 0
  sw  $t6, -84($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -88($fp)
  blt  $t3, $t2, label97
  j label98
  label97 :
  li $t4, 1
  sw  $t4, -84($fp)
  label98 :
  bne  $t6, $t5, label86
  j label87
  label86 :
  li $t7, 1
  sw  $t7, -68($fp)
  label87 :
  bne  $t1, $t0, label51
  j label52
  label51 :
  li $t2, 1
  sw  $t2, -4($fp)
  label52 :
  bne  $t4, $t3, label49
  j label50
  label49 :
  move  $v0, $t5
  addiu  $sp, $sp, 96
  jr  $ra
  label50 :
  mul $t6, $t0, $t7
  sw  $t6, -92($fp)
  move  $v0, $t1
  addiu  $sp, $sp, 96
  jr  $ra
id_memmO_5s:
  move  $fp, $sp
  subu  $sp, $sp, 28
  li $t2, 0
  sw  $t2, -4($fp)
  li $t3, 0
  sw  $t3, -8($fp)
  beq  $t5, $t4, label104
  j label105
  label104 :
  li $t6, 1
  sw  $t6, -8($fp)
  label105 :
  bne  $t0, $t7, label101
  j label103
  label103 :
  li $t1, 0
  sw  $t1, -12($fp)
  li $t2, 0
  sw  $t2, -16($fp)
  beq  $t4, $t3, label109
  j label110
  label109 :
  li $t5, 1
  sw  $t5, -16($fp)
  label110 :
  bne  $t7, $t6, label108
  j label107
  label108 :
  li $t0, 0
  sw  $t0, -20($fp)
  beq  $t2, $t1, label111
  j label112
  label111 :
  li $t3, 1
  sw  $t3, -20($fp)
  label112 :
  bne  $t5, $t4, label106
  j label107
  label106 :
  li $t6, 1
  sw  $t6, -12($fp)
  label107 :
  bne  $t0, $t7, label101
  j label102
  label101 :
  li $t1, 1
  sw  $t1, -4($fp)
  label102 :
  bne  $t3, $t2, label99
  j label100
  label99 :
  move  $v0, $t4
  addiu  $sp, $sp, 28
  jr  $ra
  label100 :
  div $t7, $t6
  mflo $t5
  sw  $t5, -24($fp)
  move  $v0, $t0
  addiu  $sp, $sp, 28
  jr  $ra
id_rT:
  move  $fp, $sp
  subu  $sp, $sp, 4
  blt  $t2, $t1, label113
  j label115
  label115 :
  bge  $t4, $t3, label113
  j label114
  label113 :
  move  $v0, $t5
  addiu  $sp, $sp, 4
  jr  $ra
  label114 :
  move  $v0, $t6
  addiu  $sp, $sp, 4
  jr  $ra
id_Mdvzosjy:
  move  $fp, $sp
  subu  $sp, $sp, 28
  li $t7, 14135
  sw  $t7, -4($fp)
  li $t0, 5291
  sw  $t0, -8($fp)
  li $t1, 0
  sw  $t1, -12($fp)
  bne  $t3, $t2, label118
  j label119
  label119 :
  mul $t4, $t6, $t5
  sw  $t4, -16($fp)
  ble  $t0, $t7, label116
  j label118
  label118 :
  bge  $t2, $t1, label116
  j label117
  label116 :
  li $t3, 1
  sw  $t3, -12($fp)
  label117 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t6, 0
  sw  $t6, -20($fp)
  bne  $t0, $t7, label121
  j label120
  label120 :
  li $t1, 1
  sw  $t1, -20($fp)
  label121 :
  div $t4, $t3
  mflo $t2
  sw  $t2, -24($fp)
  move  $v0, $t5
  addiu  $sp, $sp, 28
  jr  $ra
id_eZzKtHKigb:
  move  $fp, $sp
  subu  $sp, $sp, 28
  li $t6, 0
  sw  $t6, -4($fp)
  bne  $t0, $t7, label122
  j label124
  label124 :
  add $t1, $t3, $t2
  sw  $t1, -8($fp)
  sub $t4, $t5, 54995
  sw  $t4, -12($fp)
  li $t6, 0
  sw  $t6, -16($fp)
  bne  $t0, $t7, label126
  j label125
  label125 :
  li $t1, 1
  sw  $t1, -16($fp)
  label126 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -20($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -24($fp)
  addi  $sp, $sp, 8
  bne  $t2, $t1, label122
  j label123
  label122 :
  li $t3, 1
  sw  $t3, -4($fp)
  label123 :
  move  $v0, $t4
  addiu  $sp, $sp, 28
  jr  $ra
id_v1:
  move  $fp, $sp
  subu  $sp, $sp, 3236
  sub  $t5, $t7, $t6
  sw  $t5, -180($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -184($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -188($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -192($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -196($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -200($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -204($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -208($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -212($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -216($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -220($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -224($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -228($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -232($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -236($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -240($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -244($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -248($fp)
  sw $t6, 0($t5)
  li $t7, 63940
  sw  $t7, -252($fp)
  li $t0, 10485
  sw  $t0, -256($fp)
  li $t1, 8658
  sw  $t1, -260($fp)
  li $t2, 3695
  sw  $t2, -264($fp)
  li $t3, 7157
  sw  $t3, -268($fp)
  li $t4, 57972
  sw  $t4, -272($fp)
  li $t5, 26496
  sw  $t5, -276($fp)
  li $t6, 26182
  sw  $t6, -280($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -284($fp)
  sw $t3, 0($t2)
  li $t4, 58958
  sw  $t4, -288($fp)
  li $t5, 1191
  sw  $t5, -292($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -296($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -300($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -304($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -308($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -312($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -316($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -320($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -324($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -328($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -332($fp)
  sw $t7, 0($t6)
  li $t0, 27986
  sw  $t0, -336($fp)
  li $t1, 29360
  sw  $t1, -340($fp)
  li $t2, 44362
  sw  $t2, -344($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -348($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -352($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -356($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -360($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -364($fp)
  sw $t3, 0($t2)
  li $t4, 57239
  sw  $t4, -368($fp)
  li $t5, 36689
  sw  $t5, -372($fp)
  li $t6, 27724
  sw  $t6, -376($fp)
  li $t7, 2188
  sw  $t7, -380($fp)
  li $t0, 45347
  sw  $t0, -384($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -388($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -392($fp)
  sw $t2, 0($t1)
  li $t3, 37783
  sw  $t3, -396($fp)
  li $t4, 57915
  sw  $t4, -400($fp)
  li $t5, 35528
  sw  $t5, -404($fp)
  li $t6, 25715
  sw  $t6, -408($fp)
  li $t7, 51337
  sw  $t7, -412($fp)
  li $t0, 36719
  sw  $t0, -416($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -420($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -424($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -428($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -432($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -436($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -440($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -444($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -448($fp)
  sw $t0, 0($t7)
  li $t1, 28104
  sw  $t1, -452($fp)
  li $t2, 2084
  sw  $t2, -456($fp)
  li $t3, 15381
  sw  $t3, -460($fp)
  li $t4, 57464
  sw  $t4, -464($fp)
  li $t5, 46446
  sw  $t5, -260($fp)
  li $t6, 0
  sw  $t6, -468($fp)
  bne  $t0, $t7, label131
  j label130
  label130 :
  li $t1, 1
  sw  $t1, -468($fp)
  label131 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -472($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -476($fp)
  addi  $sp, $sp, 8
  sub  $t1, $t3, $t2
  sw  $t1, -480($fp)
  lw $t4, 0($t5)
  sw  $t4, -484($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -488($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -492($fp)
  lw $t4, 0($t5)
  sw  $t4, -496($fp)
  mul $t6, $t0, $t7
  sw  $t6, -500($fp)
  li $t1, 0
  sw  $t1, -504($fp)
  bne  $t3, $t2, label133
  j label132
  label132 :
  li $t4, 1
  sw  $t4, -504($fp)
  label133 :
  mul $t5, $t7, $t6
  sw  $t5, -508($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -512($fp)
  lw $t3, 0($t4)
  sw  $t3, -516($fp)
  mul $t5, $t7, $t6
  sw  $t5, -520($fp)
  bne  $t1, $t0, label127
  j label128
  label127 :
  li $t2, 51585
  sw  $t2, -560($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -564($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -568($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -572($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -576($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -580($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -584($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -588($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -592($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -596($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -600($fp)
  lw $t3, 0($t4)
  sw  $t3, -604($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -608($fp)
  lw $t0, 0($t1)
  sw  $t0, -612($fp)
  mul $t2, $t4, $t3
  sw  $t2, -616($fp)
  li $t5, 0
  sw  $t5, -620($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -624($fp)
  addi  $sp, $sp, 0
  bne  $t0, $t7, label139
  j label138
  label138 :
  li $t1, 1
  sw  $t1, -620($fp)
  label139 :
  beq  $t3, $t2, label137
  j label135
  label137 :
  li $t4, 0
  sw  $t4, -628($fp)
  bne  $t6, $t5, label141
  j label140
  label140 :
  li $t7, 1
  sw  $t7, -628($fp)
  label141 :
  mul $t0, $t2, $t1
  sw  $t0, -632($fp)
  bne  $t4, $t3, label134
  j label135
  label134 :
  sub  $t5, $t7, $t6
  sw  $t5, -636($fp)
  lw $t0, 0($t1)
  sw  $t0, -640($fp)
  bge  $t3, $t2, label142
  j label145
  label145 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -644($fp)
  addi  $sp, $sp, 0
  div $t7, $t6
  mflo $t5
  sw  $t5, -648($fp)
  li $t0, 0
  sw  $t0, -652($fp)
  bne  $t2, $t1, label147
  j label146
  label146 :
  li $t3, 1
  sw  $t3, -652($fp)
  label147 :
  mul $t4, $t6, $t5
  sw  $t4, -656($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -660($fp)
  add $t2, $t4, $t3
  sw  $t2, -664($fp)
  li $t5, 0
  sw  $t5, -668($fp)
  bne  $t7, $t6, label149
  j label148
  label148 :
  li $t0, 1
  sw  $t0, -668($fp)
  label149 :
  sub $t1, $t3, $t2
  sw  $t1, -672($fp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -676($fp)
  addi  $sp, $sp, 20
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -680($fp)
  bne  $t7, $t6, label142
  j label143
  label142 :
  li $t0, 0
  sw  $t0, -684($fp)
  li $t1, 0
  sw  $t1, -688($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -692($fp)
  bne  $t6, $t5, label153
  j label155
  label155 :
  bne  $t0, $t7, label153
  j label154
  label153 :
  li $t1, 1
  sw  $t1, -688($fp)
  label154 :
  mul $t2, $t4, $t3
  sw  $t2, -696($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -700($fp)
  lw $t0, 0($t1)
  sw  $t0, -704($fp)
  bne  $t3, $t2, label152
  j label151
  label152 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -708($fp)
  addi  $sp, $sp, 0
  sub $t5, $t6, 65285
  sub $t5, $t0, $t7
  sw  $t5, -712($fp)
  bne  $t2, $t1, label150
  j label151
  label150 :
  li $t3, 1
  sw  $t3, -684($fp)
  label151 :
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
  j label144
  label143 :
  li $t5, 0
  sw  $t5, -716($fp)
  li $t6, 0
  sw  $t6, -720($fp)
  bne  $t0, $t7, label158
  j label159
  label158 :
  li $t1, 1
  sw  $t1, -720($fp)
  label159 :
  li $t2, 0
  sw  $t2, -724($fp)
  li $t3, 0
  sw  $t3, -728($fp)
  ble  $t5, $t4, label162
  j label163
  label162 :
  li $t6, 1
  sw  $t6, -728($fp)
  label163 :
  blt  $t0, $t7, label160
  j label161
  label160 :
  li $t1, 1
  sw  $t1, -724($fp)
  label161 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -732($fp)
  addi  $sp, $sp, 8
  mul $t5, $t7, $t6
  sw  $t5, -736($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -740($fp)
  lw $t3, 0($t4)
  sw  $t3, -744($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -748($fp)
  sub $t0, $t2, $t1
  sw  $t0, -752($fp)
  beq  $t4, $t3, label156
  j label157
  label156 :
  li $t5, 1
  sw  $t5, -716($fp)
  label157 :
  label144 :
  j label136
  label135 :
  label164 :
  mul $t6, $t0, $t7
  sw  $t6, -756($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -760($fp)
  lw $t4, 0($t5)
  sw  $t4, -764($fp)
  li $t6, 0
  sw  $t6, -768($fp)
  blt  $t0, $t7, label167
  j label169
  label169 :
  bne  $t2, $t1, label167
  j label168
  label167 :
  li $t3, 1
  sw  $t3, -768($fp)
  label168 :
  sub  $t4, $t6, $t5
  sw  $t4, -772($fp)
  lw $t7, 0($t0)
  sw  $t7, -776($fp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -780($fp)
  addi  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -784($fp)
  addi  $sp, $sp, 8
  bne  $t0, $t7, label165
  j label166
  label165 :
  li $t1, 0
  sw  $t1, -788($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -792($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -796($fp)
  bne  $t2, $t1, label170
  j label172
  label172 :
  li $t3, 0
  sw  $t3, -800($fp)
  bne  $t5, $t4, label174
  j label173
  label173 :
  li $t6, 1
  sw  $t6, -800($fp)
  label174 :
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -804($fp)
  bne  $t4, $t3, label170
  j label171
  label170 :
  li $t5, 1
  sw  $t5, -788($fp)
  label171 :
  j label164
  label166 :
  label136 :
  j label129
  label128 :
  li $t6, 52284
  sw  $t6, -808($fp)
  li $t7, 29861
  sw  $t7, -812($fp)
  li $t0, 13766
  sw  $t0, -816($fp)
  li $t1, 27366
  sw  $t1, -820($fp)
  li $t2, 0
  sw  $t2, -824($fp)
  li $t3, 0
  sw  $t3, -828($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -832($fp)
  addi  $sp, $sp, 0
  bne  $t6, $t5, label178
  j label177
  label177 :
  li $t7, 1
  sw  $t7, -828($fp)
  label178 :
  blt  $t1, $t0, label175
  j label176
  label175 :
  li $t2, 1
  sw  $t2, -824($fp)
  label176 :
  li $t3, 0
  sw  $t3, -836($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -840($fp)
  addi  $sp, $sp, 0
  div $t7, $t6
  mflo $t5
  sw  $t5, -844($fp)
  beq  $t1, $t0, label179
  j label180
  label179 :
  li $t2, 1
  sw  $t2, -836($fp)
  label180 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t6, 0
  sw  $t6, -848($fp)
  li $t7, 0
  sw  $t7, -852($fp)
  bne  $t1, $t0, label185
  j label184
  label184 :
  li $t2, 1
  sw  $t2, -852($fp)
  label185 :
  sub $t3, $t4, 11794
  sw  $t3, -856($fp)
  bge  $t6, $t5, label183
  j label182
  label183 :
  li $t7, 0
  sw  $t7, -860($fp)
  bge  $t1, $t0, label186
  j label187
  label186 :
  li $t2, 1
  sw  $t2, -860($fp)
  label187 :
  mul $t3, $t5, $t4
  sw  $t3, -864($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -868($fp)
  lw $t1, 0($t2)
  sw  $t1, -872($fp)
  bne  $t4, $t3, label181
  j label182
  label181 :
  li $t5, 1
  sw  $t5, -848($fp)
  label182 :
  move  $v0, $t6
  addiu  $sp, $sp, 3236
  jr  $ra
  sub $t7, $t1, $t0
  sw  $t7, -876($fp)
  mul $t2, $t4, $t3
  sw  $t2, -880($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -884($fp)
  lw $t0, 0($t1)
  sw  $t0, -888($fp)
  li $t2, 30994
  sw  $t2, -400($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -892($fp)
  addi  $sp, $sp, 8
  mul $t6, $t0, $t7
  sw  $t6, -896($fp)
  li $t1, 0
  sw  $t1, -900($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -904($fp)
  addi  $sp, $sp, 0
  bne  $t4, $t3, label192
  j label191
  label191 :
  li $t5, 1
  sw  $t5, -900($fp)
  label192 :
  sub $t6, $t0, $t7
  sw  $t6, -908($fp)
  bne  $t2, $t1, label188
  j label189
  label188 :
  sub  $t3, $t5, $t4
  sw  $t3, -912($fp)
  lw $t6, 0($t7)
  sw  $t6, -916($fp)
  add $t0, $t2, $t1
  sw  $t0, -920($fp)
  li $t3, 0
  sw  $t3, -924($fp)
  beq  $t5, $t4, label193
  j label194
  label193 :
  li $t6, 1
  sw  $t6, -924($fp)
  label194 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -928($fp)
  addi  $sp, $sp, 8
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -932($fp)
  sub $t6, $t0, $t7
  sw  $t6, -936($fp)
  move  $v0, $t1
  addiu  $sp, $sp, 3236
  jr  $ra
  j label190
  label189 :
  li $t2, 0
  sw  $t2, -940($fp)
  mul $t3, $t5, $t4
  sw  $t3, -944($fp)
  bne  $t7, $t6, label195
  j label196
  label195 :
  li $t0, 1
  sw  $t0, -940($fp)
  label196 :
  label190 :
  add $t1, $t2, 16820
  sw  $t1, -948($fp)
  bne  $t4, $t3, label197
  j label200
  label200 :
  sub  $t5, $t7, $t6
  sw  $t5, -952($fp)
  lw $t0, 0($t1)
  sw  $t0, -956($fp)
  bne  $t3, $t2, label197
  j label198
  label197 :
  li $t4, 0
  sw  $t4, -960($fp)
  li $t5, 0
  sw  $t5, -964($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -968($fp)
  lw $t1, 0($t2)
  sw  $t1, -972($fp)
  beq  $t4, $t3, label203
  j label204
  label203 :
  li $t5, 1
  sw  $t5, -964($fp)
  label204 :
  li $t6, 0
  sw  $t6, -976($fp)
  bne  $t0, $t7, label206
  j label205
  label205 :
  li $t1, 1
  sw  $t1, -976($fp)
  label206 :
  bne  $t3, $t2, label201
  j label202
  label201 :
  li $t4, 1
  sw  $t4, -960($fp)
  label202 :
  move $t5, $t6
  sw  $t5, -464($fp)
  j label199
  label198 :
  li $t7, 0
  sw  $t7, -980($fp)
  mul $t0, $t2, $t1
  sw  $t0, -984($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -988($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -992($fp)
  lw $t1, 0($t2)
  sw  $t1, -996($fp)
  sub $t3, $t5, $t4
  sw  $t3, -1000($fp)
  li $t6, 0
  sw  $t6, -1004($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1008($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1012($fp)
  lw $t5, 0($t6)
  sw  $t5, -1016($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -1020($fp)
  bne  $t4, $t3, label216
  j label215
  label215 :
  li $t5, 1
  sw  $t5, -1004($fp)
  label216 :
  ble  $t7, $t6, label213
  j label214
  label213 :
  li $t0, 1
  sw  $t0, -980($fp)
  label214 :
  label199 :
  label217 :
  mul $t1, $t3, $t2
  sw  $t1, -1024($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1028($fp)
  lw $t7, 0($t0)
  sw  $t7, -1032($fp)
  move $t1, $t2
  sw  $t1, -376($fp)
  move $t3, $t4
  sw  $t3, -400($fp)
  bne  $t6, $t5, label218
  j label219
  label218 :
  li $t7, 0
  sw  $t7, -1036($fp)
  ble  $t1, $t0, label220
  j label221
  label220 :
  li $t2, 1
  sw  $t2, -1036($fp)
  label221 :
  li $t3, 0
  sw  $t3, -1040($fp)
  bne  $t5, $t4, label224
  j label222
  label224 :
  bne  $t7, $t6, label222
  j label223
  label222 :
  li $t0, 1
  sw  $t0, -1040($fp)
  label223 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -1044($fp)
  addi  $sp, $sp, 8
  j label217
  label219 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t7, 0
  sw  $t7, -1048($fp)
  bne  $t1, $t0, label225
  j label228
  label228 :
  bne  $t3, $t2, label225
  j label227
  label227 :
  div $t6, $t5
  mflo $t4
  sw  $t4, -1052($fp)
  bne  $t0, $t7, label225
  j label226
  label225 :
  li $t1, 1
  sw  $t1, -1048($fp)
  label226 :
  mul $t2, $t4, $t3
  sw  $t2, -1056($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1060($fp)
  lw $t0, 0($t1)
  sw  $t0, -1064($fp)
  move  $v0, $t2
  addiu  $sp, $sp, 3236
  jr  $ra
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t4, 0
  sw  $t4, -1068($fp)
  bne  $t6, $t5, label230
  j label229
  label229 :
  li $t7, 1
  sw  $t7, -1068($fp)
  label230 :
  add $t0, $t2, $t1
  sw  $t0, -1072($fp)
  li $t3, 0
  sw  $t3, -1076($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -1080($fp)
  addi  $sp, $sp, 0
  ble  $t6, $t5, label231
  j label232
  label231 :
  li $t7, 1
  sw  $t7, -1076($fp)
  label232 :
  sub  $t0, $t2, $t1
  sw  $t0, -1084($fp)
  lw $t3, 0($t4)
  sw  $t3, -1088($fp)
  li $t5, 0
  sw  $t5, -1092($fp)
  bne  $t7, $t6, label233
  j label235
  label235 :
  bne  $t1, $t0, label233
  j label234
  label233 :
  li $t2, 1
  sw  $t2, -1092($fp)
  label234 :
  sub  $t3, $t5, $t4
  sw  $t3, -1096($fp)
  lw $t6, 0($t7)
  sw  $t6, -1100($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1104($fp)
  addi  $sp, $sp, 20
  move  $v0, $t6
  addiu  $sp, $sp, 3236
  jr  $ra
  label236 :
  li $t7, 36566
  sw  $t7, -372($fp)
  bne  $t1, $t0, label237
  j label238
  label237 :
  li $t2, 0
  sw  $t2, -1108($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -1112($fp)
  mul $t7, $t1, $t0
  sw  $t7, -1116($fp)
  blt  $t3, $t2, label239
  j label241
  label241 :
  bne  $t5, $t4, label239
  j label240
  label239 :
  li $t6, 1
  sw  $t6, -1108($fp)
  label240 :
  move  $v0, $t7
  addiu  $sp, $sp, 3236
  jr  $ra
  j label236
  label238 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t1, 0
  sw  $t1, -1120($fp)
  li $t2, 0
  sw  $t2, -1124($fp)
  sub $t3, $t4, 26838
  sub $t3, $t6, $t5
  sw  $t3, -1128($fp)
  beq  $t0, $t7, label244
  j label245
  label244 :
  li $t1, 1
  sw  $t1, -1124($fp)
  label245 :
  add $t2, $t3, 63932
  sw  $t2, -1132($fp)
  beq  $t5, $t4, label242
  j label243
  label242 :
  li $t6, 1
  sw  $t6, -1120($fp)
  label243 :
  move $t7, $t0
  sw  $t7, -400($fp)
  move  $v0, $t1
  addiu  $sp, $sp, 3236
  jr  $ra
  label129 :
  sub  $t2, $t4, $t3
  sw  $t2, -1136($fp)
  lw $t5, 0($t6)
  sw  $t5, -1140($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1144($fp)
  lw $t3, 0($t4)
  sw  $t3, -1148($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1152($fp)
  lw $t1, 0($t2)
  sw  $t1, -1156($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1160($fp)
  lw $t7, 0($t0)
  sw  $t7, -1164($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1168($fp)
  lw $t5, 0($t6)
  sw  $t5, -1172($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1176($fp)
  lw $t3, 0($t4)
  sw  $t3, -1180($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1184($fp)
  lw $t1, 0($t2)
  sw  $t1, -1188($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1192($fp)
  lw $t7, 0($t0)
  sw  $t7, -1196($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1200($fp)
  lw $t5, 0($t6)
  sw  $t5, -1204($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1208($fp)
  lw $t3, 0($t4)
  sw  $t3, -1212($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1216($fp)
  lw $t1, 0($t2)
  sw  $t1, -1220($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1224($fp)
  lw $t7, 0($t0)
  sw  $t7, -1228($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1232($fp)
  lw $t5, 0($t6)
  sw  $t5, -1236($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1240($fp)
  lw $t3, 0($t4)
  sw  $t3, -1244($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1248($fp)
  lw $t1, 0($t2)
  sw  $t1, -1252($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1256($fp)
  lw $t7, 0($t0)
  sw  $t7, -1260($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1264($fp)
  lw $t5, 0($t6)
  sw  $t5, -1268($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1272($fp)
  lw $t3, 0($t4)
  sw  $t3, -1276($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1280($fp)
  lw $t1, 0($t2)
  sw  $t1, -1284($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1288($fp)
  lw $t1, 0($t2)
  sw  $t1, -1292($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1296($fp)
  lw $t7, 0($t0)
  sw  $t7, -1300($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1304($fp)
  lw $t5, 0($t6)
  sw  $t5, -1308($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1312($fp)
  lw $t3, 0($t4)
  sw  $t3, -1316($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1320($fp)
  lw $t1, 0($t2)
  sw  $t1, -1324($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1328($fp)
  lw $t7, 0($t0)
  sw  $t7, -1332($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1336($fp)
  lw $t5, 0($t6)
  sw  $t5, -1340($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1344($fp)
  lw $t3, 0($t4)
  sw  $t3, -1348($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1352($fp)
  lw $t1, 0($t2)
  sw  $t1, -1356($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1360($fp)
  lw $t7, 0($t0)
  sw  $t7, -1364($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -1368($fp)
  lw $t0, 0($t1)
  sw  $t0, -1372($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -1376($fp)
  lw $t6, 0($t7)
  sw  $t6, -1380($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -1384($fp)
  lw $t4, 0($t5)
  sw  $t4, -1388($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -1392($fp)
  lw $t2, 0($t3)
  sw  $t2, -1396($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -1400($fp)
  lw $t0, 0($t1)
  sw  $t0, -1404($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1408($fp)
  lw $t3, 0($t4)
  sw  $t3, -1412($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1416($fp)
  lw $t1, 0($t2)
  sw  $t1, -1420($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1424($fp)
  lw $t5, 0($t6)
  sw  $t5, -1428($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1432($fp)
  lw $t3, 0($t4)
  sw  $t3, -1436($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1440($fp)
  lw $t1, 0($t2)
  sw  $t1, -1444($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1448($fp)
  lw $t7, 0($t0)
  sw  $t7, -1452($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1456($fp)
  lw $t5, 0($t6)
  sw  $t5, -1460($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1464($fp)
  lw $t3, 0($t4)
  sw  $t3, -1468($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1472($fp)
  lw $t1, 0($t2)
  sw  $t1, -1476($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1480($fp)
  lw $t7, 0($t0)
  sw  $t7, -1484($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t6, 0
  sw  $t6, -1488($fp)
  li $t7, 0
  sw  $t7, -1492($fp)
  li $t0, 0
  sw  $t0, -1496($fp)
  blt  $t2, $t1, label255
  j label256
  label255 :
  li $t3, 1
  sw  $t3, -1496($fp)
  label256 :
  beq  $t5, $t4, label253
  j label254
  label253 :
  li $t6, 1
  sw  $t6, -1492($fp)
  label254 :
  mul $t7, $t1, $t0
  sw  $t7, -1500($fp)
  mul $t2, $t4, $t3
  sw  $t2, -1504($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1508($fp)
  addi  $sp, $sp, 8
  li $t0, 0
  sw  $t0, -1512($fp)
  bne  $t2, $t1, label258
  j label257
  label257 :
  li $t3, 1
  sw  $t3, -1512($fp)
  label258 :
  add $t4, $t6, $t5
  sw  $t4, -1516($fp)
  bne  $t0, $t7, label252
  j label251
  label252 :
  li $t1, 0
  sw  $t1, -1520($fp)
  bne  $t3, $t2, label259
  j label260
  label259 :
  li $t4, 1
  sw  $t4, -1520($fp)
  label260 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -1524($fp)
  bne  $t2, $t1, label250
  j label251
  label250 :
  li $t3, 1
  sw  $t3, -1488($fp)
  label251 :
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
  label261 :
  li $t5, 0
  sw  $t5, -1528($fp)
  bne  $t7, $t6, label265
  j label264
  label264 :
  li $t0, 1
  sw  $t0, -1528($fp)
  label265 :
  mul $t1, $t3, $t2
  sw  $t1, -1532($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1536($fp)
  lw $t7, 0($t0)
  sw  $t7, -1540($fp)
  mul $t1, $t3, $t2
  sw  $t1, -1544($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1548($fp)
  lw $t7, 0($t0)
  sw  $t7, -1552($fp)
  bne  $t2, $t1, label262
  j label263
  label262 :
  li $t3, 0
  sw  $t3, -1556($fp)
  li $t4, 0
  sw  $t4, -1560($fp)
  li $t5, 0
  sw  $t5, -1564($fp)
  ble  $t7, $t6, label271
  j label272
  label271 :
  li $t0, 1
  sw  $t0, -1564($fp)
  label272 :
  bgt  $t2, $t1, label269
  j label270
  label269 :
  li $t3, 1
  sw  $t3, -1560($fp)
  label270 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -1568($fp)
  addi  $sp, $sp, 0
  mul $t5, $t7, $t6
  sw  $t5, -1572($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1576($fp)
  lw $t3, 0($t4)
  sw  $t3, -1580($fp)
  li $t5, 0
  sw  $t5, -1584($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -1588($fp)
  bne  $t3, $t2, label273
  j label275
  label275 :
  bne  $t5, $t4, label273
  j label274
  label273 :
  li $t6, 1
  sw  $t6, -1584($fp)
  label274 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -1592($fp)
  addi  $sp, $sp, 20
  div $t7, $t6
  mflo $t5
  sw  $t5, -1596($fp)
  sub $t0, $t2, $t1
  sw  $t0, -1600($fp)
  li $t3, 0
  sw  $t3, -1604($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1608($fp)
  lw $t7, 0($t0)
  sw  $t7, -1612($fp)
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -1616($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1620($fp)
  addi  $sp, $sp, 8
  bne  $t1, $t0, label277
  j label276
  label276 :
  li $t2, 1
  sw  $t2, -1604($fp)
  label277 :
  ble  $t4, $t3, label266
  j label268
  label268 :
  sub $t5, $t7, $t6
  sw  $t5, -1624($fp)
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -1628($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -1632($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -1636($fp)
  addi  $sp, $sp, 8
  bne  $t4, $t3, label266
  j label267
  label266 :
  li $t5, 1
  sw  $t5, -1556($fp)
  label267 :
  move  $v0, $t6
  addiu  $sp, $sp, 3236
  jr  $ra
  j label261
  label263 :
  li $t7, 0
  sw  $t7, -1640($fp)
  bne  $t1, $t0, label283
  j label282
  label283 :
  bne  $t3, $t2, label281
  j label282
  label281 :
  li $t4, 1
  sw  $t4, -1640($fp)
  label282 :
  li $t5, 0
  sw  $t5, -1644($fp)
  bne  $t7, $t6, label286
  j label285
  label286 :
  bne  $t1, $t0, label284
  j label285
  label284 :
  li $t2, 1
  sw  $t2, -1644($fp)
  label285 :
  li $t3, 0
  sw  $t3, -1648($fp)
  li $t4, 0
  sw  $t4, -1652($fp)
  bne  $t6, $t5, label290
  j label289
  label289 :
  li $t7, 1
  sw  $t7, -1652($fp)
  label290 :
  ble  $t1, $t0, label287
  j label288
  label287 :
  li $t2, 1
  sw  $t2, -1648($fp)
  label288 :
  add $t3, $t5, $t4
  sw  $t3, -1656($fp)
  add $t6, $t0, $t7
  sw  $t6, -1660($fp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -1664($fp)
  addi  $sp, $sp, 20
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -1668($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1672($fp)
  add $t6, $t7, 50529
  sw  $t6, -1676($fp)
  beq  $t1, $t0, label278
  j label279
  label278 :
  li $t2, 616
  sw  $t2, -1680($fp)
  li $t3, 49665
  sw  $t3, -1684($fp)
  li $t4, 20261
  sw  $t4, -1688($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1692($fp)
  addi  $sp, $sp, 0
  add $t6, $t7, 36581
  sw  $t6, -1696($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -1700($fp)
  lw $t3, 0($t4)
  sw  $t3, -1704($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -1708($fp)
  add $t1, $t3, $t2
  sw  $t1, -1712($fp)
  bne  $t5, $t4, label291
  j label292
  label291 :
  sub  $t6, $t0, $t7
  sw  $t6, -1800($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -1804($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -1808($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -1812($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -1816($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -1820($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -1824($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -1828($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -1832($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -1836($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -1840($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -1844($fp)
  sw $t1, 0($t0)
  li $t2, 22545
  sw  $t2, -1848($fp)
  li $t3, 17649
  sw  $t3, -1852($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1856($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -1860($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -1864($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -1868($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -1872($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -1876($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -1880($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -1884($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -1888($fp)
  sw $t0, 0($t7)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -1892($fp)
  addi  $sp, $sp, 0
  move $t2, $t3
  sw  $t2, -368($fp)
  li $t4, 0
  sw  $t4, -1896($fp)
  li $t5, 0
  sw  $t5, -1900($fp)
  bne  $t7, $t6, label296
  j label297
  label296 :
  li $t0, 1
  sw  $t0, -1900($fp)
  label297 :
  beq  $t2, $t1, label294
  j label295
  label294 :
  li $t3, 1
  sw  $t3, -1896($fp)
  label295 :
  li $t4, 0
  sw  $t4, -1904($fp)
  bne  $t6, $t5, label298
  j label300
  label300 :
  bne  $t0, $t7, label298
  j label299
  label298 :
  li $t1, 1
  sw  $t1, -1904($fp)
  label299 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1908($fp)
  addi  $sp, $sp, 20
  sub  $t0, $t2, $t1
  sw  $t0, -1912($fp)
  lw $t3, 0($t4)
  sw  $t3, -1916($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1920($fp)
  lw $t1, 0($t2)
  sw  $t1, -1924($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1928($fp)
  lw $t7, 0($t0)
  sw  $t7, -1932($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1936($fp)
  lw $t5, 0($t6)
  sw  $t5, -1940($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1944($fp)
  lw $t3, 0($t4)
  sw  $t3, -1948($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1952($fp)
  lw $t1, 0($t2)
  sw  $t1, -1956($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1960($fp)
  lw $t7, 0($t0)
  sw  $t7, -1964($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1968($fp)
  lw $t5, 0($t6)
  sw  $t5, -1972($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1976($fp)
  lw $t3, 0($t4)
  sw  $t3, -1980($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1984($fp)
  lw $t1, 0($t2)
  sw  $t1, -1988($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1992($fp)
  lw $t7, 0($t0)
  sw  $t7, -1996($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -2000($fp)
  lw $t5, 0($t6)
  sw  $t5, -2004($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -2008($fp)
  lw $t5, 0($t6)
  sw  $t5, -2012($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -2016($fp)
  lw $t3, 0($t4)
  sw  $t3, -2020($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -2024($fp)
  lw $t1, 0($t2)
  sw  $t1, -2028($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -2032($fp)
  lw $t7, 0($t0)
  sw  $t7, -2036($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -2040($fp)
  lw $t5, 0($t6)
  sw  $t5, -2044($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -2048($fp)
  lw $t3, 0($t4)
  sw  $t3, -2052($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -2056($fp)
  lw $t1, 0($t2)
  sw  $t1, -2060($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -2064($fp)
  lw $t7, 0($t0)
  sw  $t7, -2068($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -2072($fp)
  lw $t5, 0($t6)
  sw  $t5, -2076($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t0, 0
  sw  $t0, -2080($fp)
  li $t1, 0
  sw  $t1, -2084($fp)
  blt  $t3, $t2, label304
  j label305
  label304 :
  li $t4, 1
  sw  $t4, -2084($fp)
  label305 :
  mul $t5, $t7, $t6
  sw  $t5, -2088($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2092($fp)
  lw $t3, 0($t4)
  sw  $t3, -2096($fp)
  bne  $t6, $t5, label303
  j label301
  label303 :
  li $t7, 0
  sw  $t7, -2100($fp)
  blt  $t1, $t0, label306
  j label307
  label306 :
  li $t2, 1
  sw  $t2, -2100($fp)
  label307 :
  div $t5, $t4
  mflo $t3
  sw  $t3, -2104($fp)
  bgt  $t7, $t6, label301
  j label302
  label301 :
  li $t0, 1
  sw  $t0, -2080($fp)
  label302 :
  move  $v0, $t1
  addiu  $sp, $sp, 3236
  jr  $ra
  label308 :
  li $t2, 0
  sw  $t2, -2108($fp)
  li $t3, 0
  sw  $t3, -2112($fp)
  li $t4, 0
  sw  $t4, -2116($fp)
  bne  $t6, $t5, label316
  j label315
  label315 :
  li $t7, 1
  sw  $t7, -2116($fp)
  label316 :
  ble  $t1, $t0, label313
  j label314
  label313 :
  li $t2, 1
  sw  $t2, -2112($fp)
  label314 :
  li $t3, 0
  sw  $t3, -2120($fp)
  bgt  $t5, $t4, label319
  j label318
  label319 :
  bne  $t7, $t6, label317
  j label318
  label317 :
  li $t0, 1
  sw  $t0, -2120($fp)
  label318 :
  sub  $t1, $t3, $t2
  sw  $t1, -2124($fp)
  lw $t4, 0($t5)
  sw  $t4, -2128($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2132($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2136($fp)
  lw $t4, 0($t5)
  sw  $t4, -2140($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -2144($fp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2148($fp)
  addi  $sp, $sp, 20
  bne  $t0, $t7, label312
  j label311
  label311 :
  li $t1, 1
  sw  $t1, -2108($fp)
  label312 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -2152($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -2156($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2160($fp)
  bne  $t6, $t5, label309
  j label310
  label309 :
  li $t7, 0
  sw  $t7, -2164($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2168($fp)
  lw $t3, 0($t4)
  sw  $t3, -2172($fp)
  add $t5, $t6, 23800
  sw  $t5, -2176($fp)
  bne  $t0, $t7, label322
  j label321
  label322 :
  bne  $t2, $t1, label320
  j label321
  label320 :
  li $t3, 1
  sw  $t3, -2164($fp)
  label321 :
  j label308
  label310 :
  label323 :
  li $t4, 0
  sw  $t4, -2180($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2184($fp)
  lw $t0, 0($t1)
  sw  $t0, -2188($fp)
  bne  $t3, $t2, label327
  j label326
  label326 :
  li $t4, 1
  sw  $t4, -2180($fp)
  label327 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -2192($fp)
  bne  $t2, $t1, label324
  j label325
  label324 :
  li $t3, 8595
  sw  $t3, -272($fp)
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
  j label323
  label325 :
  sub  $t5, $t7, $t6
  sw  $t5, -2196($fp)
  lw $t0, 0($t1)
  sw  $t0, -2200($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2204($fp)
  lw $t6, 0($t7)
  sw  $t6, -2208($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2212($fp)
  lw $t4, 0($t5)
  sw  $t4, -2216($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2220($fp)
  lw $t2, 0($t3)
  sw  $t2, -2224($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2228($fp)
  lw $t0, 0($t1)
  sw  $t0, -2232($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2236($fp)
  lw $t6, 0($t7)
  sw  $t6, -2240($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2244($fp)
  lw $t4, 0($t5)
  sw  $t4, -2248($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2252($fp)
  lw $t2, 0($t3)
  sw  $t2, -2256($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2260($fp)
  lw $t0, 0($t1)
  sw  $t0, -2264($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2268($fp)
  lw $t6, 0($t7)
  sw  $t6, -2272($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2276($fp)
  lw $t4, 0($t5)
  sw  $t4, -2280($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2284($fp)
  lw $t2, 0($t3)
  sw  $t2, -2288($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2292($fp)
  lw $t2, 0($t3)
  sw  $t2, -2296($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2300($fp)
  lw $t0, 0($t1)
  sw  $t0, -2304($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2308($fp)
  lw $t6, 0($t7)
  sw  $t6, -2312($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2316($fp)
  lw $t4, 0($t5)
  sw  $t4, -2320($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2324($fp)
  lw $t2, 0($t3)
  sw  $t2, -2328($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2332($fp)
  lw $t0, 0($t1)
  sw  $t0, -2336($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2340($fp)
  lw $t6, 0($t7)
  sw  $t6, -2344($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2348($fp)
  lw $t4, 0($t5)
  sw  $t4, -2352($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2356($fp)
  lw $t2, 0($t3)
  sw  $t2, -2360($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t5, 0
  sw  $t5, -2364($fp)
  li $t6, 0
  sw  $t6, -2368($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -2372($fp)
  bne  $t4, $t3, label332
  j label331
  label331 :
  li $t5, 1
  sw  $t5, -2368($fp)
  label332 :
  mul $t6, $t0, $t7
  sw  $t6, -2376($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2380($fp)
  lw $t4, 0($t5)
  sw  $t4, -2384($fp)
  beq  $t7, $t6, label330
  j label329
  label330 :
  li $t0, 0
  sw  $t0, -2388($fp)
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -2392($fp)
  bne  $t6, $t5, label333
  j label334
  label333 :
  li $t7, 1
  sw  $t7, -2388($fp)
  label334 :
  div $t2, $t1
  mflo $t0
  sw  $t0, -2396($fp)
  li $t3, 0
  sw  $t3, -2400($fp)
  beq  $t5, $t4, label335
  j label336
  label335 :
  li $t6, 1
  sw  $t6, -2400($fp)
  label336 :
  li $t7, 0
  sw  $t7, -2404($fp)
  li $t0, 0
  sw  $t0, -2408($fp)
  bne  $t2, $t1, label340
  j label339
  label339 :
  li $t3, 1
  sw  $t3, -2408($fp)
  label340 :
  bge  $t5, $t4, label337
  j label338
  label337 :
  li $t6, 1
  sw  $t6, -2404($fp)
  label338 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -2412($fp)
  addi  $sp, $sp, 20
  bgt  $t6, $t5, label328
  j label329
  label328 :
  li $t7, 1
  sw  $t7, -2364($fp)
  label329 :
  move  $v0, $t0
  addiu  $sp, $sp, 3236
  jr  $ra
  li $t1, 0
  sw  $t1, -2416($fp)
  bne  $t3, $t2, label346
  j label345
  label346 :
  bne  $t5, $t4, label344
  j label345
  label344 :
  li $t6, 1
  sw  $t6, -2416($fp)
  label345 :
  mul $t7, $t1, $t0
  sw  $t7, -2420($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2424($fp)
  lw $t5, 0($t6)
  sw  $t5, -2428($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -2432($fp)
  bne  $t4, $t3, label341
  j label342
  label341 :
  label347 :
  li $t5, 0
  sw  $t5, -2436($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2440($fp)
  lw $t1, 0($t2)
  sw  $t1, -2444($fp)
  bne  $t4, $t3, label351
  j label350
  label350 :
  li $t5, 1
  sw  $t5, -2436($fp)
  label351 :
  div $t0, $t7
  mflo $t6
  sw  $t6, -2448($fp)
  sub $t1, $t2, 22466
  sw  $t1, -2452($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2456($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2460($fp)
  lw $t1, 0($t2)
  sw  $t1, -2464($fp)
  sub $t3, $t5, $t4
  sw  $t3, -2468($fp)
  bne  $t7, $t6, label348
  j label349
  label348 :
  label352 :
  bne  $t1, $t0, label353
  j label354
  label353 :
  li $t2, 0
  sw  $t2, -2472($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2476($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2480($fp)
  bne  $t3, $t2, label355
  j label356
  label355 :
  li $t4, 1
  sw  $t4, -2472($fp)
  label356 :
  j label352
  label354 :
  j label347
  label349 :
  j label343
  label342 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -2484($fp)
  addi  $sp, $sp, 0
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -2488($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -2492($fp)
  addi  $sp, $sp, 0
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2496($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2500($fp)
  label343 :
  j label293
  label292 :
  li $t2, 0
  sw  $t2, -2504($fp)
  li $t3, 0
  sw  $t3, -2508($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -2512($fp)
  bne  $t1, $t0, label360
  j label359
  label359 :
  li $t2, 1
  sw  $t2, -2508($fp)
  label360 :
  mul $t3, $t5, $t4
  sw  $t3, -2516($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2520($fp)
  addi  $sp, $sp, 0
  bgt  $t0, $t7, label357
  j label358
  label357 :
  li $t1, 1
  sw  $t1, -2504($fp)
  label358 :
  move  $v0, $t2
  addiu  $sp, $sp, 3236
  jr  $ra
  label293 :
  label361 :
  li $t3, 0
  sw  $t3, -2524($fp)
  mul $t4, $t6, $t5
  sw  $t4, -2528($fp)
  add $t7, $t0, 59020
  sw  $t7, -2532($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -2536($fp)
  beq  $t5, $t4, label364
  j label365
  label364 :
  li $t6, 1
  sw  $t6, -2524($fp)
  label365 :
  move $t7, $t0
  sw  $t7, -256($fp)
  bne  $t2, $t1, label362
  j label363
  label362 :
  li $t3, 0
  sw  $t3, -2540($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -2544($fp)
  add $t7, $t0, 7660
  sw  $t7, -2548($fp)
  li $t1, 0
  sw  $t1, -2552($fp)
  bne  $t3, $t2, label371
  j label370
  label370 :
  li $t4, 1
  sw  $t4, -2552($fp)
  label371 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -2556($fp)
  addi  $sp, $sp, 8
  bne  $t1, $t0, label369
  j label368
  label368 :
  li $t2, 1
  sw  $t2, -2540($fp)
  label369 :
  div $t5, $t4
  mflo $t3
  sw  $t3, -2560($fp)
  move  $v0, $t6
  addiu  $sp, $sp, 3236
  jr  $ra
  j label361
  label363 :
  li $t7, 34602
  sw  $t7, -2564($fp)
  li $t0, 28472
  sw  $t0, -2568($fp)
  li $t1, 61342
  sw  $t1, -2572($fp)
  li $t2, 41312
  sw  $t2, -2576($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -2580($fp)
  addi  $sp, $sp, 0
  move  $v0, $t0
  addiu  $sp, $sp, 3236
  jr  $ra
  label372 :
  li $t1, 0
  sw  $t1, -2584($fp)
  li $t2, 0
  sw  $t2, -2588($fp)
  bne  $t4, $t3, label378
  j label377
  label377 :
  li $t5, 1
  sw  $t5, -2588($fp)
  label378 :
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -2592($fp)
  bne  $t3, $t2, label376
  j label375
  label375 :
  li $t4, 1
  sw  $t4, -2584($fp)
  label376 :
  mul $t5, $t7, $t6
  sw  $t5, -2596($fp)
  bne  $t1, $t0, label373
  j label374
  label373 :
  label379 :
  li $t2, 0
  sw  $t2, -2600($fp)
  bne  $t4, $t3, label383
  j label382
  label382 :
  li $t5, 1
  sw  $t5, -2600($fp)
  label383 :
  mul $t6, $t0, $t7
  sw  $t6, -2604($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2608($fp)
  lw $t4, 0($t5)
  sw  $t4, -2612($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2616($fp)
  add $t1, $t3, $t2
  sw  $t1, -2620($fp)
  bne  $t5, $t4, label380
  j label381
  label380 :
  li $t6, 0
  sw  $t6, -2624($fp)
  li $t7, 0
  sw  $t7, -2628($fp)
  mul $t0, $t2, $t1
  sw  $t0, -2632($fp)
  beq  $t4, $t3, label389
  j label390
  label389 :
  li $t5, 1
  sw  $t5, -2628($fp)
  label390 :
  li $t6, 0
  sw  $t6, -2636($fp)
  bne  $t0, $t7, label394
  j label393
  label394 :
  bne  $t2, $t1, label391
  j label393
  label393 :
  bne  $t4, $t3, label391
  j label392
  label391 :
  li $t5, 1
  sw  $t5, -2636($fp)
  label392 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -2640($fp)
  addi  $sp, $sp, 8
  div $t3, $t2
  mflo $t1
  sw  $t1, -2644($fp)
  mul $t4, $t6, $t5
  sw  $t4, -2648($fp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -2652($fp)
  addi  $sp, $sp, 8
  bne  $t3, $t2, label388
  j label387
  label387 :
  li $t4, 1
  sw  $t4, -2624($fp)
  label388 :
  li $t5, 0
  sw  $t5, -2656($fp)
  bne  $t7, $t6, label397
  j label396
  label397 :
  bne  $t1, $t0, label395
  j label396
  label395 :
  li $t2, 1
  sw  $t2, -2656($fp)
  label396 :
  li $t3, 0
  sw  $t3, -2660($fp)
  ble  $t5, $t4, label398
  j label399
  label398 :
  li $t6, 1
  sw  $t6, -2660($fp)
  label399 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -2664($fp)
  addi  $sp, $sp, 8
  li $t2, 0
  sw  $t2, -2668($fp)
  bge  $t4, $t3, label400
  j label401
  label400 :
  li $t5, 1
  sw  $t5, -2668($fp)
  label401 :
  li $t6, 0
  sw  $t6, -2672($fp)
  blt  $t0, $t7, label402
  j label403
  label402 :
  li $t1, 1
  sw  $t1, -2672($fp)
  label403 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -2676($fp)
  addi  $sp, $sp, 8
  mul $t5, $t7, $t6
  sw  $t5, -2680($fp)
  add $t0, $t2, $t1
  sw  $t0, -2684($fp)
  bne  $t4, $t3, label384
  j label385
  label384 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -2688($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2692($fp)
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
  j label386
  label385 :
  li $t5, 0
  sw  $t5, -2696($fp)
  li $t6, 0
  sw  $t6, -2700($fp)
  bne  $t0, $t7, label409
  j label408
  label409 :
  bne  $t2, $t1, label407
  j label408
  label407 :
  li $t3, 1
  sw  $t3, -2700($fp)
  label408 :
  mul $t4, $t6, $t5
  sw  $t4, -2704($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2708($fp)
  lw $t2, 0($t3)
  sw  $t2, -2712($fp)
  add $t4, $t5, 16164
  sw  $t4, -2716($fp)
  bne  $t7, $t6, label404
  j label406
  label406 :
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -2720($fp)
  beq  $t5, $t4, label404
  j label405
  label404 :
  li $t6, 1
  sw  $t6, -2696($fp)
  label405 :
  move  $v0, $t7
  addiu  $sp, $sp, 3236
  jr  $ra
  label386 :
  j label379
  label381 :
  j label372
  label374 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t4, 38630
  sw  $t4, -292($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -2724($fp)
  add $t0, $t2, $t1
  sw  $t0, -2728($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -2732($fp)
  addi  $sp, $sp, 8
  mul $t6, $t0, $t7
  sw  $t6, -2736($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2740($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -2744($fp)
  lw $t7, 0($t0)
  sw  $t7, -2748($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -2752($fp)
  li $t4, 0
  sw  $t4, -2756($fp)
  blt  $t6, $t5, label410
  j label411
  label410 :
  li $t7, 1
  sw  $t7, -2756($fp)
  label411 :
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -2760($fp)
  sub $t4, $t5, 46632
  sw  $t4, -2764($fp)
  li $t6, 0
  sw  $t6, -2768($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2772($fp)
  lw $t2, 0($t3)
  sw  $t2, -2776($fp)
  bne  $t5, $t4, label412
  j label414
  label414 :
  bne  $t7, $t6, label412
  j label413
  label412 :
  li $t0, 1
  sw  $t0, -2768($fp)
  label413 :
  mul $t1, $t3, $t2
  sw  $t1, -2780($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -2784($fp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -2788($fp)
  addi  $sp, $sp, 20
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -2792($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2796($fp)
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
  li $t5, 0
  sw  $t5, -2800($fp)
  li $t6, 0
  sw  $t6, -2804($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -2808($fp)
  addi  $sp, $sp, 0
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -2812($fp)
  bge  $t5, $t4, label417
  j label418
  label417 :
  li $t6, 1
  sw  $t6, -2804($fp)
  label418 :
  blt  $t0, $t7, label415
  j label416
  label415 :
  li $t1, 1
  sw  $t1, -2800($fp)
  label416 :
  li $t2, 0
  sw  $t2, -2816($fp)
  ble  $t4, $t3, label419
  j label420
  label419 :
  li $t5, 1
  sw  $t5, -2816($fp)
  label420 :
  li $t6, 0
  sw  $t6, -2820($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2824($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2828($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -2832($fp)
  bgt  $t2, $t1, label421
  j label422
  label421 :
  li $t3, 1
  sw  $t3, -2820($fp)
  label422 :
  li $t4, 0
  sw  $t4, -2836($fp)
  bne  $t6, $t5, label424
  j label423
  label423 :
  li $t7, 1
  sw  $t7, -2836($fp)
  label424 :
  li $t0, 0
  sw  $t0, -2840($fp)
  li $t1, 0
  sw  $t1, -2844($fp)
  bne  $t3, $t2, label427
  j label428
  label427 :
  li $t4, 1
  sw  $t4, -2844($fp)
  label428 :
  mul $t5, $t7, $t6
  sw  $t5, -2848($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2852($fp)
  lw $t3, 0($t4)
  sw  $t3, -2856($fp)
  blt  $t6, $t5, label425
  j label426
  label425 :
  li $t7, 1
  sw  $t7, -2840($fp)
  label426 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -2860($fp)
  addi  $sp, $sp, 0
  move  $v0, $t5
  addiu  $sp, $sp, 3236
  jr  $ra
  j label280
  label279 :
  li $t6, 0
  sw  $t6, -2864($fp)
  li $t7, 0
  sw  $t7, -2868($fp)
  bne  $t1, $t0, label432
  j label431
  label431 :
  li $t2, 1
  sw  $t2, -2868($fp)
  label432 :
  li $t3, 0
  sw  $t3, -2872($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -2876($fp)
  bne  $t1, $t0, label434
  j label433
  label433 :
  li $t2, 1
  sw  $t2, -2872($fp)
  label434 :
  bge  $t4, $t3, label429
  j label430
  label429 :
  li $t5, 1
  sw  $t5, -2864($fp)
  label430 :
  move  $v0, $t6
  addiu  $sp, $sp, 3236
  jr  $ra
  label280 :
  sub  $t7, $t1, $t0
  sw  $t7, -2880($fp)
  lw $t2, 0($t3)
  sw  $t2, -2884($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2888($fp)
  lw $t0, 0($t1)
  sw  $t0, -2892($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2896($fp)
  lw $t6, 0($t7)
  sw  $t6, -2900($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2904($fp)
  lw $t4, 0($t5)
  sw  $t4, -2908($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2912($fp)
  lw $t2, 0($t3)
  sw  $t2, -2916($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2920($fp)
  lw $t0, 0($t1)
  sw  $t0, -2924($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2928($fp)
  lw $t6, 0($t7)
  sw  $t6, -2932($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2936($fp)
  lw $t4, 0($t5)
  sw  $t4, -2940($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2944($fp)
  lw $t2, 0($t3)
  sw  $t2, -2948($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2952($fp)
  lw $t0, 0($t1)
  sw  $t0, -2956($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2960($fp)
  lw $t6, 0($t7)
  sw  $t6, -2964($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -2968($fp)
  lw $t4, 0($t5)
  sw  $t4, -2972($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -2976($fp)
  lw $t2, 0($t3)
  sw  $t2, -2980($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -2984($fp)
  lw $t0, 0($t1)
  sw  $t0, -2988($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -2992($fp)
  lw $t6, 0($t7)
  sw  $t6, -2996($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3000($fp)
  lw $t4, 0($t5)
  sw  $t4, -3004($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3008($fp)
  lw $t2, 0($t3)
  sw  $t2, -3012($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3016($fp)
  lw $t0, 0($t1)
  sw  $t0, -3020($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3024($fp)
  lw $t6, 0($t7)
  sw  $t6, -3028($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3032($fp)
  lw $t6, 0($t7)
  sw  $t6, -3036($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3040($fp)
  lw $t4, 0($t5)
  sw  $t4, -3044($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3048($fp)
  lw $t2, 0($t3)
  sw  $t2, -3052($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3056($fp)
  lw $t0, 0($t1)
  sw  $t0, -3060($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3064($fp)
  lw $t6, 0($t7)
  sw  $t6, -3068($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3072($fp)
  lw $t4, 0($t5)
  sw  $t4, -3076($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3080($fp)
  lw $t2, 0($t3)
  sw  $t2, -3084($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3088($fp)
  lw $t0, 0($t1)
  sw  $t0, -3092($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3096($fp)
  lw $t6, 0($t7)
  sw  $t6, -3100($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3104($fp)
  lw $t4, 0($t5)
  sw  $t4, -3108($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -3112($fp)
  lw $t5, 0($t6)
  sw  $t5, -3116($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -3120($fp)
  lw $t3, 0($t4)
  sw  $t3, -3124($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -3128($fp)
  lw $t1, 0($t2)
  sw  $t1, -3132($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -3136($fp)
  lw $t7, 0($t0)
  sw  $t7, -3140($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -3144($fp)
  lw $t5, 0($t6)
  sw  $t5, -3148($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3152($fp)
  lw $t0, 0($t1)
  sw  $t0, -3156($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3160($fp)
  lw $t6, 0($t7)
  sw  $t6, -3164($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3168($fp)
  lw $t2, 0($t3)
  sw  $t2, -3172($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3176($fp)
  lw $t0, 0($t1)
  sw  $t0, -3180($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3184($fp)
  lw $t6, 0($t7)
  sw  $t6, -3188($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3192($fp)
  lw $t4, 0($t5)
  sw  $t4, -3196($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3200($fp)
  lw $t2, 0($t3)
  sw  $t2, -3204($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3208($fp)
  lw $t0, 0($t1)
  sw  $t0, -3212($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3216($fp)
  lw $t6, 0($t7)
  sw  $t6, -3220($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3224($fp)
  lw $t4, 0($t5)
  sw  $t4, -3228($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -3232($fp)
  addi  $sp, $sp, 0
  move  $v0, $t4
  addiu  $sp, $sp, 3236
  jr  $ra
id_HusWF:
  move  $fp, $sp
  subu  $sp, $sp, 184
  sub  $t5, $t7, $t6
  sw  $t5, -40($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -44($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -48($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -52($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -56($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -60($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -64($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -68($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -72($fp)
  sw $t1, 0($t0)
  li $t2, 46533
  sw  $t2, -76($fp)
  li $t3, 0
  sw  $t3, -80($fp)
  bne  $t5, $t4, label436
  j label435
  label435 :
  li $t6, 1
  sw  $t6, -80($fp)
  label436 :
  li $t7, 0
  sw  $t7, -84($fp)
  li $t0, 0
  sw  $t0, -88($fp)
  bne  $t2, $t1, label440
  j label439
  label439 :
  li $t3, 1
  sw  $t3, -88($fp)
  label440 :
  bge  $t5, $t4, label437
  j label438
  label437 :
  li $t6, 1
  sw  $t6, -84($fp)
  label438 :
  move $t7, $t0
  sw  $t7, 8($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -92($fp)
  lw $t4, 0($t5)
  sw  $t4, -96($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -100($fp)
  lw $t2, 0($t3)
  sw  $t2, -104($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -108($fp)
  lw $t0, 0($t1)
  sw  $t0, -112($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -116($fp)
  lw $t6, 0($t7)
  sw  $t6, -120($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -124($fp)
  lw $t4, 0($t5)
  sw  $t4, -128($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -132($fp)
  lw $t2, 0($t3)
  sw  $t2, -136($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -140($fp)
  lw $t0, 0($t1)
  sw  $t0, -144($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -148($fp)
  lw $t6, 0($t7)
  sw  $t6, -152($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -156($fp)
  lw $t4, 0($t5)
  sw  $t4, -160($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t0, 0
  sw  $t0, -164($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -168($fp)
  addi  $sp, $sp, 0
  bgt  $t3, $t2, label447
  j label446
  label447 :
  blt  $t5, $t4, label445
  j label446
  label445 :
  li $t6, 1
  sw  $t6, -164($fp)
  label446 :
  mul $t7, $t1, $t0
  sw  $t7, -172($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -176($fp)
  lw $t5, 0($t6)
  sw  $t5, -180($fp)
  move  $v0, $t7
  addiu  $sp, $sp, 184
  jr  $ra
id_OAYxiBjEU:
  move  $fp, $sp
  subu  $sp, $sp, 736
  sub  $t0, $t2, $t1
  sw  $t0, -76($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -80($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -84($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -88($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -92($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -96($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -100($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -104($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -108($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -112($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -116($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -120($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -124($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -128($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -132($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -136($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -140($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -144($fp)
  sw $t1, 0($t0)
  li $t2, 28314
  sw  $t2, -148($fp)
  li $t3, 16378
  sw  $t3, -152($fp)
  li $t4, 45793
  sw  $t4, -156($fp)
  li $t5, 0
  sw  $t5, -160($fp)
  li $t6, 0
  sw  $t6, -164($fp)
  bne  $t0, $t7, label451
  j label450
  label450 :
  li $t1, 1
  sw  $t1, -164($fp)
  label451 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -168($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -172($fp)
  lw $t1, 0($t2)
  sw  $t1, -176($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -180($fp)
  lw $t6, 0($t7)
  sw  $t6, -184($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -188($fp)
  addi  $sp, $sp, 8
  add $t3, $t5, $t4
  sw  $t3, -192($fp)
  ble  $t7, $t6, label448
  j label449
  label448 :
  li $t0, 1
  sw  $t0, -160($fp)
  label449 :
  sub  $t1, $t3, $t2
  sw  $t1, -196($fp)
  lw $t4, 0($t5)
  sw  $t4, -200($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -204($fp)
  lw $t2, 0($t3)
  sw  $t2, -208($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -212($fp)
  lw $t0, 0($t1)
  sw  $t0, -216($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -220($fp)
  lw $t6, 0($t7)
  sw  $t6, -224($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -228($fp)
  lw $t4, 0($t5)
  sw  $t4, -232($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -236($fp)
  lw $t2, 0($t3)
  sw  $t2, -240($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -244($fp)
  lw $t0, 0($t1)
  sw  $t0, -248($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -252($fp)
  lw $t6, 0($t7)
  sw  $t6, -256($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -260($fp)
  lw $t4, 0($t5)
  sw  $t4, -264($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -268($fp)
  lw $t2, 0($t3)
  sw  $t2, -272($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -276($fp)
  lw $t0, 0($t1)
  sw  $t0, -280($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -284($fp)
  lw $t6, 0($t7)
  sw  $t6, -288($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -292($fp)
  lw $t4, 0($t5)
  sw  $t4, -296($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -300($fp)
  lw $t2, 0($t3)
  sw  $t2, -304($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -308($fp)
  lw $t0, 0($t1)
  sw  $t0, -312($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -316($fp)
  lw $t6, 0($t7)
  sw  $t6, -320($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -324($fp)
  lw $t4, 0($t5)
  sw  $t4, -328($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -332($fp)
  lw $t2, 0($t3)
  sw  $t2, -336($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t0, 0
  sw  $t0, -340($fp)
  li $t1, 0
  sw  $t1, -344($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -348($fp)
  bne  $t7, $t6, label456
  j label455
  label455 :
  li $t0, 1
  sw  $t0, -344($fp)
  label456 :
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -352($fp)
  bne  $t6, $t5, label452
  j label454
  label454 :
  blt  $t0, $t7, label457
  j label453
  label457 :
  bne  $t2, $t1, label452
  j label453
  label452 :
  li $t3, 1
  sw  $t3, -340($fp)
  label453 :
  move  $v0, $t4
  addiu  $sp, $sp, 736
  jr  $ra
  li $t5, 0
  sw  $t5, -356($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -360($fp)
  lw $t1, 0($t2)
  sw  $t1, -364($fp)
  bne  $t4, $t3, label458
  j label460
  label460 :
  mul $t5, $t7, $t6
  sw  $t5, -368($fp)
  mul $t0, $t2, $t1
  sw  $t0, -372($fp)
  sub $t3, $t4, 39643
  sw  $t3, -376($fp)
  bne  $t6, $t5, label458
  j label459
  label458 :
  li $t7, 1
  sw  $t7, -356($fp)
  label459 :
  li $t0, 0
  sw  $t0, -380($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -384($fp)
  lw $t4, 0($t5)
  sw  $t4, -388($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -392($fp)
  addi  $sp, $sp, 0
  mul $t7, $t1, $t0
  sw  $t7, -396($fp)
  mul $t2, $t4, $t3
  sw  $t2, -400($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -404($fp)
  lw $t0, 0($t1)
  sw  $t0, -408($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -412($fp)
  bne  $t7, $t6, label461
  j label462
  label461 :
  li $t0, 1
  sw  $t0, -380($fp)
  label462 :
  sub  $t1, $t3, $t2
  sw  $t1, -424($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -428($fp)
  sw $t2, 0($t1)
  li $t3, 61570
  sw  $t3, -432($fp)
  li $t4, 2439
  sw  $t4, -436($fp)
  li $t5, 0
  sw  $t5, -440($fp)
  bne  $t7, $t6, label467
  j label466
  label466 :
  li $t0, 1
  sw  $t0, -440($fp)
  label467 :
  li $t1, 0
  sw  $t1, -444($fp)
  bne  $t3, $t2, label471
  j label469
  label471 :
  bne  $t5, $t4, label470
  j label469
  label470 :
  bne  $t7, $t6, label468
  j label469
  label468 :
  li $t0, 1
  sw  $t0, -444($fp)
  label469 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -448($fp)
  addi  $sp, $sp, 4
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -452($fp)
  bgt  $t0, $t7, label463
  j label464
  label463 :
  li $t1, 0
  sw  $t1, -456($fp)
  move $t2, $t3
  sw  $t2, -148($fp)
  mul $t4, $t6, $t5
  sw  $t4, -460($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -464($fp)
  lw $t2, 0($t3)
  sw  $t2, -468($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -472($fp)
  lw $t7, 0($t0)
  sw  $t7, -476($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -480($fp)
  bne  $t5, $t4, label472
  j label474
  label474 :
  div $t0, $t7
  mflo $t6
  sw  $t6, -484($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -488($fp)
  bne  $t5, $t4, label472
  j label473
  label472 :
  li $t6, 1
  sw  $t6, -456($fp)
  label473 :
  j label465
  label464 :
  li $t7, 0
  sw  $t7, -492($fp)
  sub $t0, $t1, 62820
  sub $t0, $t3, $t2
  sw  $t0, -496($fp)
  li $t4, 0
  sw  $t4, -500($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -504($fp)
  bne  $t2, $t1, label479
  j label478
  label479 :
  bne  $t4, $t3, label477
  j label478
  label477 :
  li $t5, 1
  sw  $t5, -500($fp)
  label478 :
  move $t6, $t7
  sw  $t6, 12($fp)
  li $t0, 0
  sw  $t0, -508($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -512($fp)
  lw $t4, 0($t5)
  sw  $t4, -516($fp)
  beq  $t7, $t6, label480
  j label481
  label480 :
  li $t0, 1
  sw  $t0, -508($fp)
  label481 :
  li $t1, 0
  sw  $t1, -520($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -524($fp)
  bne  $t6, $t5, label484
  j label483
  label484 :
  bne  $t0, $t7, label482
  j label483
  label482 :
  li $t1, 1
  sw  $t1, -520($fp)
  label483 :
  mul $t2, $t4, $t3
  sw  $t2, -528($fp)
  mul $t5, $t7, $t6
  sw  $t5, -532($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -536($fp)
  addi  $sp, $sp, 20
  li $t6, 0
  sw  $t6, -540($fp)
  li $t7, 0
  sw  $t7, -544($fp)
  blt  $t1, $t0, label487
  j label488
  label487 :
  li $t2, 1
  sw  $t2, -544($fp)
  label488 :
  bge  $t4, $t3, label485
  j label486
  label485 :
  li $t5, 1
  sw  $t5, -540($fp)
  label486 :
  li $t6, 0
  sw  $t6, -548($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -552($fp)
  lw $t2, 0($t3)
  sw  $t2, -556($fp)
  beq  $t5, $t4, label489
  j label490
  label489 :
  li $t6, 1
  sw  $t6, -548($fp)
  label490 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -560($fp)
  addi  $sp, $sp, 20
  bne  $t6, $t5, label476
  j label475
  label475 :
  li $t7, 1
  sw  $t7, -492($fp)
  label476 :
  mul $t0, $t2, $t1
  sw  $t0, -564($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -568($fp)
  lw $t6, 0($t7)
  sw  $t6, -572($fp)
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -576($fp)
  move  $v0, $t4
  addiu  $sp, $sp, 736
  jr  $ra
  label465 :
  sub  $t5, $t7, $t6
  sw  $t5, -580($fp)
  lw $t0, 0($t1)
  sw  $t0, -584($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -588($fp)
  lw $t6, 0($t7)
  sw  $t6, -592($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -596($fp)
  lw $t4, 0($t5)
  sw  $t4, -600($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -604($fp)
  lw $t2, 0($t3)
  sw  $t2, -608($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -612($fp)
  lw $t0, 0($t1)
  sw  $t0, -616($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -620($fp)
  lw $t6, 0($t7)
  sw  $t6, -624($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -628($fp)
  lw $t4, 0($t5)
  sw  $t4, -632($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -636($fp)
  lw $t2, 0($t3)
  sw  $t2, -640($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -644($fp)
  lw $t0, 0($t1)
  sw  $t0, -648($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -652($fp)
  lw $t6, 0($t7)
  sw  $t6, -656($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -660($fp)
  lw $t4, 0($t5)
  sw  $t4, -664($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -668($fp)
  lw $t2, 0($t3)
  sw  $t2, -672($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -676($fp)
  lw $t0, 0($t1)
  sw  $t0, -680($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -684($fp)
  lw $t6, 0($t7)
  sw  $t6, -688($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -692($fp)
  lw $t4, 0($t5)
  sw  $t4, -696($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -700($fp)
  lw $t2, 0($t3)
  sw  $t2, -704($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -708($fp)
  lw $t0, 0($t1)
  sw  $t0, -712($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -716($fp)
  lw $t6, 0($t7)
  sw  $t6, -720($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t4, 0
  sw  $t4, -724($fp)
  li $t5, 0
  sw  $t5, -728($fp)
  bne  $t7, $t6, label494
  j label493
  label493 :
  li $t0, 1
  sw  $t0, -728($fp)
  label494 :
  mul $t1, $t3, $t2
  sw  $t1, -732($fp)
  beq  $t5, $t4, label491
  j label492
  label491 :
  li $t6, 1
  sw  $t6, -724($fp)
  label492 :
  move  $v0, $t7
  addiu  $sp, $sp, 736
  jr  $ra
id_B:
  move  $fp, $sp
  subu  $sp, $sp, 964
  li $t0, 14736
  sw  $t0, -24($fp)
  li $t1, 40213
  sw  $t1, -28($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -32($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -36($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -40($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -44($fp)
  sw $t5, 0($t4)
  li $t6, 17693
  sw  $t6, -48($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -52($fp)
  sw $t3, 0($t2)
  li $t4, 46988
  sw  $t4, -56($fp)
  li $t5, 20132
  sw  $t5, -60($fp)
  li $t6, 55100
  sw  $t6, -64($fp)
  li $t7, 48956
  sw  $t7, -68($fp)
  li $t0, 23622
  sw  $t0, -72($fp)
  li $t1, 42544
  sw  $t1, -76($fp)
  li $t2, 6500
  sw  $t2, -80($fp)
  li $t3, 4528
  sw  $t3, -84($fp)
  li $t4, 33521
  sw  $t4, -88($fp)
  li $t5, 57894
  sw  $t5, -92($fp)
  li $t6, 1812
  sw  $t6, -96($fp)
  li $t7, 4756
  sw  $t7, -100($fp)
  li $t0, 14349
  sw  $t0, -104($fp)
  li $t1, 25055
  sw  $t1, -108($fp)
  li $t2, 65155
  sw  $t2, -112($fp)
  li $t3, 53471
  sw  $t3, -116($fp)
  li $t4, 22020
  sw  $t4, -120($fp)
  li $t5, 12107
  sw  $t5, -124($fp)
  li $t6, 50256
  sw  $t6, -128($fp)
  li $t7, 37454
  sw  $t7, -132($fp)
  li $t0, 9315
  sw  $t0, -136($fp)
  li $t1, 56259
  sw  $t1, -140($fp)
  li $t2, 9879
  sw  $t2, -144($fp)
  li $t3, 24051
  sw  $t3, -156($fp)
  li $t4, 30936
  sw  $t4, -160($fp)
  li $t5, 21946
  sw  $t5, -164($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -168($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -172($fp)
  sw $t7, 0($t6)
  li $t0, 7365
  sw  $t0, -176($fp)
  label495 :
  li $t1, 0
  sw  $t1, -180($fp)
  bne  $t3, $t2, label499
  j label498
  label498 :
  li $t4, 1
  sw  $t4, -180($fp)
  label499 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -184($fp)
  li $t1, 0
  sw  $t1, -188($fp)
  bne  $t3, $t2, label502
  j label501
  label502 :
  bne  $t5, $t4, label500
  j label501
  label500 :
  li $t6, 1
  sw  $t6, -188($fp)
  label501 :
  mul $t7, $t1, $t0
  sw  $t7, -192($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -196($fp)
  lw $t5, 0($t6)
  sw  $t5, -200($fp)
  li $t7, 0
  sw  $t7, -204($fp)
  mul $t0, $t2, $t1
  sw  $t0, -208($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -212($fp)
  lw $t6, 0($t7)
  sw  $t6, -216($fp)
  bne  $t1, $t0, label505
  j label504
  label505 :
  bne  $t3, $t2, label503
  j label504
  label503 :
  li $t4, 1
  sw  $t4, -204($fp)
  label504 :
  li $t5, 0
  sw  $t5, -220($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -224($fp)
  beq  $t2, $t1, label506
  j label507
  label506 :
  li $t3, 1
  sw  $t3, -220($fp)
  label507 :
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -228($fp)
  addi  $sp, $sp, 8
  li $t7, 0
  sw  $t7, -232($fp)
  li $t0, 0
  sw  $t0, -236($fp)
  bne  $t2, $t1, label511
  j label514
  label514 :
  bne  $t4, $t3, label511
  j label513
  label513 :
  bne  $t6, $t5, label511
  j label512
  label511 :
  li $t7, 1
  sw  $t7, -236($fp)
  label512 :
  sub  $t0, $t2, $t1
  sw  $t0, -240($fp)
  lw $t3, 0($t4)
  sw  $t3, -244($fp)
  add $t5, $t6, 18737
  sw  $t5, -248($fp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -252($fp)
  addi  $sp, $sp, 8
  add $t2, $t4, $t3
  sw  $t2, -256($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -260($fp)
  addi  $sp, $sp, 8
  bne  $t1, $t0, label510
  j label509
  label510 :
  bne  $t3, $t2, label508
  j label509
  label508 :
  li $t4, 1
  sw  $t4, -232($fp)
  label509 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -264($fp)
  addi  $sp, $sp, 20
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -268($fp)
  sub $t7, $t0, 36631
  sw  $t7, -272($fp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -276($fp)
  addi  $sp, $sp, 20
  mul $t7, $t1, $t0
  sw  $t7, -280($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -284($fp)
  mul $t5, $t7, $t6
  sw  $t5, -288($fp)
  add $t0, $t2, $t1
  sw  $t0, -292($fp)
  li $t3, 0
  sw  $t3, -296($fp)
  bne  $t5, $t4, label516
  j label515
  label515 :
  li $t6, 1
  sw  $t6, -296($fp)
  label516 :
  ble  $t0, $t7, label496
  j label497
  label496 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -300($fp)
  addi  $sp, $sp, 0
  add $t2, $t4, $t3
  sw  $t2, -304($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -308($fp)
  addi  $sp, $sp, 8
  j label495
  label497 :
  li $t0, 0
  sw  $t0, -312($fp)
  bne  $t2, $t1, label521
  j label520
  label520 :
  li $t3, 1
  sw  $t3, -312($fp)
  label521 :
  li $t4, 0
  sw  $t4, -316($fp)
  bgt  $t6, $t5, label522
  j label523
  label522 :
  li $t7, 1
  sw  $t7, -316($fp)
  label523 :
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -320($fp)
  addi  $sp, $sp, 8
  li $t3, 0
  sw  $t3, -324($fp)
  li $t4, 0
  sw  $t4, -328($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -332($fp)
  blt  $t1, $t0, label526
  j label527
  label526 :
  li $t2, 1
  sw  $t2, -328($fp)
  label527 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -336($fp)
  addi  $sp, $sp, 8
  bne  $t7, $t6, label525
  j label524
  label524 :
  li $t0, 1
  sw  $t0, -324($fp)
  label525 :
  sub $t1, $t3, $t2
  sw  $t1, -340($fp)
  bne  $t5, $t4, label517
  j label518
  label517 :
  j label519
  label518 :
  li $t6, 0
  sw  $t6, -344($fp)
  li $t7, 0
  sw  $t7, -348($fp)
  bne  $t1, $t0, label531
  j label530
  label530 :
  li $t2, 1
  sw  $t2, -348($fp)
  label531 :
  bgt  $t4, $t3, label528
  j label529
  label528 :
  li $t5, 1
  sw  $t5, -344($fp)
  label529 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -352($fp)
  addi  $sp, $sp, 8
  sub $t1, $t3, $t2
  sw  $t1, -356($fp)
  li $t4, 0
  sw  $t4, -360($fp)
  bne  $t6, $t5, label533
  j label532
  label532 :
  li $t7, 1
  sw  $t7, -360($fp)
  label533 :
  add $t0, $t2, $t1
  sw  $t0, -364($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -368($fp)
  addi  $sp, $sp, 8
  label519 :
  li $t6, 0
  sw  $t6, -372($fp)
  li $t7, 0
  sw  $t7, -376($fp)
  bne  $t1, $t0, label537
  j label536
  label536 :
  li $t2, 1
  sw  $t2, -376($fp)
  label537 :
  mul $t3, $t5, $t4
  sw  $t3, -380($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -384($fp)
  lw $t1, 0($t2)
  sw  $t1, -388($fp)
  bne  $t4, $t3, label535
  j label534
  label534 :
  li $t5, 1
  sw  $t5, -372($fp)
  label535 :
  div $t0, $t7
  mflo $t6
  sw  $t6, -392($fp)
  label538 :
  li $t1, 0
  sw  $t1, -396($fp)
  li $t2, 0
  sw  $t2, -400($fp)
  bne  $t4, $t3, label544
  j label543
  label543 :
  li $t5, 1
  sw  $t5, -400($fp)
  label544 :
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -404($fp)
  bne  $t3, $t2, label542
  j label541
  label541 :
  li $t4, 1
  sw  $t4, -396($fp)
  label542 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -408($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -412($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -416($fp)
  mul $t0, $t2, $t1
  sw  $t0, -420($fp)
  bne  $t4, $t3, label539
  j label540
  label539 :
  li $t5, 0
  sw  $t5, -424($fp)
  li $t6, 0
  sw  $t6, -428($fp)
  bne  $t0, $t7, label549
  j label548
  label548 :
  li $t1, 1
  sw  $t1, -428($fp)
  label549 :
  mul $t2, $t4, $t3
  sw  $t2, -432($fp)
  bne  $t6, $t5, label547
  j label546
  label547 :
  bgt  $t0, $t7, label545
  j label546
  label545 :
  li $t1, 1
  sw  $t1, -424($fp)
  label546 :
  j label538
  label540 :
  div $t4, $t3
  mflo $t2
  sw  $t2, -436($fp)
  sub $t5, $t6, -174541125
  sw  $t5, -440($fp)
  mul $t7, $t1, $t0
  sw  $t7, -444($fp)
  ble  $t3, $t2, label550
  j label551
  label550 :
  li $t4, 0
  sw  $t4, -448($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -452($fp)
  sub $t0, $t1, -60660
  sub $t0, $t3, $t2
  sw  $t0, -456($fp)
  bge  $t5, $t4, label552
  j label553
  label552 :
  li $t6, 1
  sw  $t6, -448($fp)
  label553 :
  label551 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -460($fp)
  lw $t5, 0($t6)
  sw  $t5, -464($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -468($fp)
  lw $t3, 0($t4)
  sw  $t3, -472($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -476($fp)
  lw $t2, 0($t3)
  sw  $t2, -480($fp)
  mul $t4, $t6, $t5
  sw  $t4, -484($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -488($fp)
  mul $t2, $t4, $t3
  sw  $t2, -492($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -496($fp)
  lw $t0, 0($t1)
  sw  $t0, -500($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -504($fp)
  add $t5, $t7, $t6
  sw  $t5, -508($fp)
  move  $v0, $t0
  addiu  $sp, $sp, 964
  jr  $ra
  bne  $t2, $t1, label554
  j label555
  label554 :
  li $t3, 0
  sw  $t3, -512($fp)
  bne  $t5, $t4, label561
  j label563
  label563 :
  bne  $t7, $t6, label561
  j label562
  label561 :
  li $t0, 1
  sw  $t0, -512($fp)
  label562 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -516($fp)
  addi  $sp, $sp, 8
  ble  $t5, $t4, label557
  j label560
  label560 :
  bne  $t7, $t6, label557
  j label558
  label557 :
  label564 :
  bne  $t1, $t0, label565
  j label566
  label565 :
  li $t2, 0
  sw  $t2, -520($fp)
  bne  $t4, $t3, label567
  j label569
  label569 :
  li $t5, 0
  sw  $t5, -524($fp)
  bne  $t7, $t6, label571
  j label570
  label570 :
  li $t0, 1
  sw  $t0, -524($fp)
  label571 :
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -528($fp)
  bne  $t6, $t5, label567
  j label568
  label567 :
  li $t7, 1
  sw  $t7, -520($fp)
  label568 :
  move  $v0, $t0
  addiu  $sp, $sp, 964
  jr  $ra
  j label564
  label566 :
  j label559
  label558 :
  sub $t1, $t2, 453
  sw  $t1, -532($fp)
  add $t3, $t5, $t4
  sw  $t3, -536($fp)
  li $t6, 0
  sw  $t6, -540($fp)
  add $t7, $t1, $t0
  sw  $t7, -544($fp)
  bne  $t3, $t2, label575
  j label577
  label577 :
  bne  $t5, $t4, label575
  j label576
  label575 :
  li $t6, 1
  sw  $t6, -540($fp)
  label576 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -548($fp)
  addi  $sp, $sp, 8
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -552($fp)
  bne  $t7, $t6, label573
  j label572
  label572 :
  label578 :
  li $t0, 0
  sw  $t0, -556($fp)
  move $t1, $t2
  sw  $t1, -140($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -560($fp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -564($fp)
  addi  $sp, $sp, 0
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -568($fp)
  addi  $sp, $sp, 8
  add $t1, $t2, 56040
  add $t1, $t4, $t3
  sw  $t1, -572($fp)
  bne  $t6, $t5, label581
  j label582
  label581 :
  li $t7, 1
  sw  $t7, -556($fp)
  label582 :
  mul $t0, $t2, $t1
  sw  $t0, -576($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -580($fp)
  lw $t6, 0($t7)
  sw  $t6, -584($fp)
  bgt  $t1, $t0, label579
  j label580
  label579 :
  li $t2, 0
  sw  $t2, -588($fp)
  li $t3, 0
  sw  $t3, -592($fp)
  bne  $t5, $t4, label586
  j label585
  label585 :
  li $t6, 1
  sw  $t6, -592($fp)
  label586 :
  mul $t7, $t1, $t0
  sw  $t7, -596($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -600($fp)
  lw $t5, 0($t6)
  sw  $t5, -604($fp)
  bne  $t0, $t7, label583
  j label584
  label583 :
  li $t1, 1
  sw  $t1, -588($fp)
  label584 :
  move  $v0, $t2
  addiu  $sp, $sp, 964
  jr  $ra
  j label578
  label580 :
  j label574
  label573 :
  li $t3, 0
  sw  $t3, -608($fp)
  bne  $t5, $t4, label588
  j label590
  label590 :
  li $t6, 0
  sw  $t6, -612($fp)
  blt  $t0, $t7, label591
  j label592
  label591 :
  li $t1, 1
  sw  $t1, -612($fp)
  label592 :
  bge  $t3, $t2, label589
  j label588
  label589 :
  bne  $t5, $t4, label587
  j label588
  label587 :
  li $t6, 1
  sw  $t6, -608($fp)
  label588 :
  label574 :
  label559 :
  j label556
  label555 :
  li $t7, 0
  sw  $t7, -616($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -620($fp)
  lw $t3, 0($t4)
  sw  $t3, -624($fp)
  add $t5, $t7, $t6
  sw  $t5, -628($fp)
  bne  $t1, $t0, label593
  j label594
  label593 :
  li $t2, 1
  sw  $t2, -616($fp)
  label594 :
  move $t3, $t4
  sw  $t3, -56($fp)
  move  $v0, $t5
  addiu  $sp, $sp, 964
  jr  $ra
  label556 :
  li $t6, 0
  sw  $t6, -632($fp)
  bne  $t0, $t7, label600
  j label599
  label599 :
  li $t1, 1
  sw  $t1, -632($fp)
  label600 :
  mul $t2, $t4, $t3
  sw  $t2, -636($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -640($fp)
  lw $t0, 0($t1)
  sw  $t0, -644($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -648($fp)
  bne  $t7, $t6, label597
  j label598
  label597 :
  div $t2, $t1
  mflo $t0
  sw  $t0, -652($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -656($fp)
  lw $t6, 0($t7)
  sw  $t6, -660($fp)
  mul $t0, $t2, $t1
  sw  $t0, -664($fp)
  add $t3, $t4, 22529
  add $t3, $t6, $t5
  sw  $t3, -668($fp)
  bne  $t0, $t7, label601
  j label602
  label601 :
  li $t1, 0
  sw  $t1, -672($fp)
  li $t2, 0
  sw  $t2, -676($fp)
  li $t3, 0
  sw  $t3, -680($fp)
  li $t4, 0
  sw  $t4, -684($fp)
  li $t5, 0
  sw  $t5, -688($fp)
  add $t6, $t0, $t7
  sw  $t6, -692($fp)
  bne  $t2, $t1, label611
  j label613
  label613 :
  bne  $t4, $t3, label611
  j label612
  label611 :
  li $t5, 1
  sw  $t5, -688($fp)
  label612 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -696($fp)
  addi  $sp, $sp, 8
  beq  $t2, $t1, label609
  j label610
  label609 :
  li $t3, 1
  sw  $t3, -684($fp)
  label610 :
  ble  $t5, $t4, label607
  j label608
  label607 :
  li $t6, 1
  sw  $t6, -680($fp)
  label608 :
  beq  $t0, $t7, label605
  j label606
  label605 :
  li $t1, 1
  sw  $t1, -676($fp)
  label606 :
  bne  $t3, $t2, label603
  j label604
  label603 :
  li $t4, 1
  sw  $t4, -672($fp)
  label604 :
  label602 :
  label598 :
  bne  $t6, $t5, label618
  j label614
  label618 :
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -700($fp)
  bgt  $t4, $t3, label614
  j label617
  label617 :
  blt  $t6, $t5, label614
  j label615
  label614 :
  li $t7, 0
  sw  $t7, -704($fp)
  bne  $t1, $t0, label621
  j label620
  label621 :
  bne  $t3, $t2, label619
  j label620
  label619 :
  li $t4, 1
  sw  $t4, -704($fp)
  label620 :
  mul $t5, $t7, $t6
  sw  $t5, -708($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -712($fp)
  lw $t3, 0($t4)
  sw  $t3, -716($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -720($fp)
  li $t1, 0
  sw  $t1, -724($fp)
  li $t2, 0
  sw  $t2, -728($fp)
  bne  $t4, $t3, label625
  j label627
  label627 :
  bne  $t6, $t5, label625
  j label626
  label625 :
  li $t7, 1
  sw  $t7, -728($fp)
  label626 :
  move $t0, $t1
  sw  $t0, -128($fp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -732($fp)
  addi  $sp, $sp, 8
  bne  $t6, $t5, label624
  j label623
  label624 :
  bne  $t0, $t7, label622
  j label623
  label622 :
  li $t1, 1
  sw  $t1, -724($fp)
  label623 :
  li $t2, 0
  sw  $t2, -736($fp)
  bne  $t4, $t3, label628
  j label629
  label628 :
  li $t5, 1
  sw  $t5, -736($fp)
  label629 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -740($fp)
  addi  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -744($fp)
  addi  $sp, $sp, 20
  move  $v0, $t7
  addiu  $sp, $sp, 964
  jr  $ra
  j label616
  label615 :
  li $t0, 5109
  sw  $t0, -760($fp)
  li $t1, 45888
  sw  $t1, -764($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -768($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -772($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -776($fp)
  sw $t0, 0($t7)
  li $t1, 0
  sw  $t1, -780($fp)
  mul $t2, $t4, $t3
  sw  $t2, -784($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -788($fp)
  lw $t0, 0($t1)
  sw  $t0, -792($fp)
  bgt  $t3, $t2, label630
  j label631
  label630 :
  li $t4, 1
  sw  $t4, -780($fp)
  label631 :
  sub  $t5, $t7, $t6
  sw  $t5, -796($fp)
  lw $t0, 0($t1)
  sw  $t0, -800($fp)
  sub $t2, $t3, 17890
  sw  $t2, -804($fp)
  li $t4, 0
  sw  $t4, -808($fp)
  beq  $t6, $t5, label632
  j label633
  label632 :
  li $t7, 1
  sw  $t7, -808($fp)
  label633 :
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -812($fp)
  addi  $sp, $sp, 8
  li $t3, 0
  sw  $t3, -816($fp)
  bne  $t5, $t4, label634
  j label635
  label634 :
  li $t6, 1
  sw  $t6, -816($fp)
  label635 :
  div $t1, $t0
  mflo $t7
  sw  $t7, -820($fp)
  li $t2, 20242
  sw  $t2, -132($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -824($fp)
  addi  $sp, $sp, 20
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -828($fp)
  li $t5, 0
  sw  $t5, -832($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -836($fp)
  bne  $t3, $t2, label637
  j label636
  label636 :
  li $t4, 1
  sw  $t4, -832($fp)
  label637 :
  sub $t5, $t7, $t6
  sw  $t5, -840($fp)
  move $t0, $t1
  sw  $t0, -760($fp)
  move $t2, $t3
  sw  $t2, -144($fp)
  label616 :
  bne  $t5, $t4, label639
  j label638
  label638 :
  li $t6, 0
  sw  $t6, -844($fp)
  li $t7, 0
  sw  $t7, -848($fp)
  li $t0, 0
  sw  $t0, -852($fp)
  bne  $t2, $t1, label647
  j label646
  label646 :
  li $t3, 1
  sw  $t3, -852($fp)
  label647 :
  div $t6, $t5
  mflo $t4
  sw  $t4, -856($fp)
  bgt  $t0, $t7, label644
  j label645
  label644 :
  li $t1, 1
  sw  $t1, -848($fp)
  label645 :
  li $t2, 0
  sw  $t2, -860($fp)
  bne  $t4, $t3, label649
  j label648
  label648 :
  li $t5, 1
  sw  $t5, -860($fp)
  label649 :
  bne  $t7, $t6, label643
  j label642
  label643 :
  move $t0, $t1
  sw  $t0, -84($fp)
  li $t2, 0
  sw  $t2, -864($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -868($fp)
  beq  $t0, $t7, label650
  j label651
  label650 :
  li $t1, 1
  sw  $t1, -864($fp)
  label651 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -872($fp)
  addi  $sp, $sp, 8
  bne  $t6, $t5, label642
  j label641
  label641 :
  li $t7, 1
  sw  $t7, -844($fp)
  label642 :
  move  $v0, $t0
  addiu  $sp, $sp, 964
  jr  $ra
  j label640
  label639 :
  move  $v0, $t1
  addiu  $sp, $sp, 964
  jr  $ra
  label640 :
  li $t2, 0
  sw  $t2, -876($fp)
  mul $t3, $t5, $t4
  sw  $t3, -880($fp)
  ble  $t7, $t6, label657
  j label656
  label657 :
  bne  $t1, $t0, label655
  j label656
  label655 :
  li $t2, 1
  sw  $t2, -876($fp)
  label656 :
  move $t3, $t4
  sw  $t3, -108($fp)
  bne  $t6, $t5, label652
  j label653
  label652 :
  add $t7, $t1, $t0
  sw  $t7, -884($fp)
  move  $v0, $t2
  addiu  $sp, $sp, 964
  jr  $ra
  j label654
  label653 :
  move  $v0, $t3
  addiu  $sp, $sp, 964
  jr  $ra
  label654 :
  mul $t4, $t6, $t5
  sw  $t4, -888($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -892($fp)
  lw $t2, 0($t3)
  sw  $t2, -896($fp)
  li $t4, 0
  sw  $t4, -900($fp)
  blt  $t6, $t5, label661
  j label662
  label661 :
  li $t7, 1
  sw  $t7, -900($fp)
  label662 :
  mul $t0, $t2, $t1
  sw  $t0, -904($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -908($fp)
  lw $t6, 0($t7)
  sw  $t6, -912($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -916($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -920($fp)
  lw $t0, 0($t1)
  sw  $t0, -924($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -928($fp)
  lw $t6, 0($t7)
  sw  $t6, -932($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -936($fp)
  lw $t4, 0($t5)
  sw  $t4, -940($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -944($fp)
  lw $t2, 0($t3)
  sw  $t2, -948($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -952($fp)
  lw $t1, 0($t2)
  sw  $t1, -956($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t4, 0
  sw  $t4, -960($fp)
  bgt  $t6, $t5, label663
  j label664
  label663 :
  li $t7, 1
  sw  $t7, -960($fp)
  label664 :
  move  $v0, $t0
  addiu  $sp, $sp, 964
  jr  $ra
id_cr3Ra:
  move  $fp, $sp
  subu  $sp, $sp, 344
  sub  $t1, $t3, $t2
  sw  $t1, -64($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -68($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -72($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -76($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -80($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -84($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -88($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -92($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -96($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -100($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -104($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -108($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -112($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -116($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -120($fp)
  sw $t3, 0($t2)
  li $t4, 0
  sw  $t4, -124($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -128($fp)
  bne  $t2, $t1, label666
  j label665
  label665 :
  li $t3, 1
  sw  $t3, -124($fp)
  label666 :
  li $t4, 0
  sw  $t4, -132($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -136($fp)
  add $t0, $t1, 0
  add $t0, $t3, $t2
  sw  $t0, -140($fp)
  bne  $t5, $t4, label669
  j label668
  label669 :
  li $t6, 0
  sw  $t6, -144($fp)
  ble  $t0, $t7, label670
  j label671
  label670 :
  li $t1, 1
  sw  $t1, -144($fp)
  label671 :
  mul $t2, $t4, $t3
  sw  $t2, -148($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -152($fp)
  lw $t0, 0($t1)
  sw  $t0, -156($fp)
  bne  $t3, $t2, label667
  j label668
  label667 :
  li $t4, 1
  sw  $t4, -132($fp)
  label668 :
  sub  $t5, $t7, $t6
  sw  $t5, -160($fp)
  lw $t0, 0($t1)
  sw  $t0, -164($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -168($fp)
  lw $t6, 0($t7)
  sw  $t6, -172($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -176($fp)
  lw $t4, 0($t5)
  sw  $t4, -180($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -184($fp)
  lw $t2, 0($t3)
  sw  $t2, -188($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -192($fp)
  lw $t0, 0($t1)
  sw  $t0, -196($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -200($fp)
  lw $t6, 0($t7)
  sw  $t6, -204($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -208($fp)
  lw $t4, 0($t5)
  sw  $t4, -212($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -216($fp)
  lw $t2, 0($t3)
  sw  $t2, -220($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -224($fp)
  lw $t0, 0($t1)
  sw  $t0, -228($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -232($fp)
  lw $t6, 0($t7)
  sw  $t6, -236($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -240($fp)
  lw $t4, 0($t5)
  sw  $t4, -244($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -248($fp)
  lw $t2, 0($t3)
  sw  $t2, -252($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -256($fp)
  lw $t0, 0($t1)
  sw  $t0, -260($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -264($fp)
  lw $t6, 0($t7)
  sw  $t6, -268($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -272($fp)
  lw $t4, 0($t5)
  sw  $t4, -276($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t7, 0
  sw  $t7, -280($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -284($fp)
  lw $t3, 0($t4)
  sw  $t3, -288($fp)
  li $t5, 0
  sw  $t5, -292($fp)
  li $t6, 0
  sw  $t6, -296($fp)
  bne  $t0, $t7, label677
  j label678
  label677 :
  li $t1, 1
  sw  $t1, -296($fp)
  label678 :
  li $t2, 21582
  sw  $t2, 8($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -300($fp)
  addi  $sp, $sp, 8
  ble  $t7, $t6, label675
  j label676
  label675 :
  li $t0, 1
  sw  $t0, -292($fp)
  label676 :
  div $t3, $t2
  mflo $t1
  sw  $t1, -304($fp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -308($fp)
  addi  $sp, $sp, 8
  mul $t7, $t1, $t0
  sw  $t7, -312($fp)
  add $t2, $t3, 1122524960
  add $t2, $t5, $t4
  sw  $t2, -316($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -320($fp)
  addi  $sp, $sp, 20
  bne  $t5, $t4, label674
  j label673
  label674 :
  li $t6, 0
  sw  $t6, -324($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -328($fp)
  lw $t2, 0($t3)
  sw  $t2, -332($fp)
  bgt  $t5, $t4, label679
  j label680
  label679 :
  li $t6, 1
  sw  $t6, -324($fp)
  label680 :
  sub  $t7, $t1, $t0
  sw  $t7, -336($fp)
  lw $t2, 0($t3)
  sw  $t2, -340($fp)
  blt  $t5, $t4, label672
  j label673
  label672 :
  li $t6, 1
  sw  $t6, -280($fp)
  label673 :
  move  $v0, $t7
  addiu  $sp, $sp, 344
  jr  $ra
id_i2EeIQ2lAh:
  move  $fp, $sp
  subu  $sp, $sp, 4436
  li $t0, 28384
  sw  $t0, -240($fp)
  li $t1, 49252
  sw  $t1, -244($fp)
  li $t2, 55787
  sw  $t2, -248($fp)
  li $t3, 10807
  sw  $t3, -252($fp)
  li $t4, 63311
  sw  $t4, -256($fp)
  li $t5, 2509
  sw  $t5, -260($fp)
  li $t6, 39572
  sw  $t6, -264($fp)
  li $t7, 65172
  sw  $t7, -268($fp)
  li $t0, 48560
  sw  $t0, -272($fp)
  li $t1, 20690
  sw  $t1, -276($fp)
  li $t2, 47815
  sw  $t2, -280($fp)
  li $t3, 11767
  sw  $t3, -284($fp)
  li $t4, 42228
  sw  $t4, -288($fp)
  li $t5, 31753
  sw  $t5, -292($fp)
  li $t6, 60753
  sw  $t6, -296($fp)
  li $t7, 34560
  sw  $t7, -300($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -304($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -308($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -312($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -316($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -320($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -324($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -328($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -332($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -336($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -340($fp)
  sw $t1, 0($t0)
  li $t2, 16060
  sw  $t2, -344($fp)
  li $t3, 59987
  sw  $t3, -348($fp)
  li $t4, 31968
  sw  $t4, -352($fp)
  li $t5, 48551
  sw  $t5, -356($fp)
  li $t6, 15294
  sw  $t6, -360($fp)
  li $t7, 60353
  sw  $t7, -364($fp)
  li $t0, 32267
  sw  $t0, -368($fp)
  li $t1, 5546
  sw  $t1, -372($fp)
  li $t2, 5624
  sw  $t2, -376($fp)
  li $t3, 30043
  sw  $t3, -380($fp)
  li $t4, 8055
  sw  $t4, -384($fp)
  li $t5, 45196
  sw  $t5, -388($fp)
  li $t6, 29679
  sw  $t6, -392($fp)
  li $t7, 56615
  sw  $t7, -396($fp)
  li $t0, 351
  sw  $t0, -400($fp)
  li $t1, 11958
  sw  $t1, -404($fp)
  li $t2, 2847
  sw  $t2, -408($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -412($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -416($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -420($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -424($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -428($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -432($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -436($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -440($fp)
  sw $t2, 0($t1)
  li $t3, 34989
  sw  $t3, -444($fp)
  li $t4, 52984
  sw  $t4, -448($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -452($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -456($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -460($fp)
  sw $t3, 0($t2)
  li $t4, 5677
  sw  $t4, -464($fp)
  li $t5, 43925
  sw  $t5, -468($fp)
  li $t6, 50877
  sw  $t6, -472($fp)
  li $t7, 37646
  sw  $t7, -476($fp)
  li $t0, 26940
  sw  $t0, -480($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -484($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -488($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -492($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -496($fp)
  sw $t4, 0($t3)
  li $t5, 38087
  sw  $t5, -500($fp)
  li $t6, 23714
  sw  $t6, -504($fp)
  li $t7, 14237
  sw  $t7, -508($fp)
  li $t0, 17748
  sw  $t0, -512($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -516($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -520($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -524($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -528($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -532($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -536($fp)
  sw $t6, 0($t5)
  li $t7, 43526
  sw  $t7, -540($fp)
  li $t0, 6228
  sw  $t0, -544($fp)
  li $t1, 6746
  sw  $t1, -548($fp)
  li $t2, 43215
  sw  $t2, -552($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -556($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -560($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -564($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -568($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -572($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -576($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -580($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -584($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -588($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -592($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -596($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -600($fp)
  sw $t6, 0($t5)
  li $t7, 13083
  sw  $t7, -604($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -608($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -612($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -616($fp)
  sw $t6, 0($t5)
  li $t7, 6079
  sw  $t7, -620($fp)
  li $t0, 3289
  sw  $t0, -624($fp)
  li $t1, 30469
  sw  $t1, -628($fp)
  li $t2, 20316
  sw  $t2, -632($fp)
  li $t3, 21037
  sw  $t3, -636($fp)
  li $t4, 18327
  sw  $t4, -640($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -644($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -648($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -652($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -656($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -660($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -664($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -668($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -672($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -676($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -680($fp)
  sw $t6, 0($t5)
  li $t7, 11070
  sw  $t7, -684($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -688($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -692($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -696($fp)
  sw $t6, 0($t5)
  li $t7, 14764
  sw  $t7, -700($fp)
  li $t0, 38107
  sw  $t0, -704($fp)
  li $t1, 48018
  sw  $t1, -708($fp)
  li $t2, 40929
  sw  $t2, -712($fp)
  li $t3, 24251
  sw  $t3, -716($fp)
  li $t4, 47279
  sw  $t4, -720($fp)
  li $t5, 39204
  sw  $t5, -724($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -728($fp)
  lw $t1, 0($t2)
  sw  $t1, -732($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -736($fp)
  lw $t7, 0($t0)
  sw  $t7, -740($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -744($fp)
  lw $t5, 0($t6)
  sw  $t5, -748($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -752($fp)
  lw $t3, 0($t4)
  sw  $t3, -756($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -760($fp)
  lw $t1, 0($t2)
  sw  $t1, -764($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -768($fp)
  lw $t7, 0($t0)
  sw  $t7, -772($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -776($fp)
  lw $t5, 0($t6)
  sw  $t5, -780($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -784($fp)
  lw $t3, 0($t4)
  sw  $t3, -788($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -792($fp)
  lw $t1, 0($t2)
  sw  $t1, -796($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -800($fp)
  lw $t7, 0($t0)
  sw  $t7, -804($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -808($fp)
  lw $t6, 0($t7)
  sw  $t6, -812($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -816($fp)
  lw $t4, 0($t5)
  sw  $t4, -820($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -824($fp)
  lw $t2, 0($t3)
  sw  $t2, -828($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -832($fp)
  lw $t0, 0($t1)
  sw  $t0, -836($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -840($fp)
  lw $t6, 0($t7)
  sw  $t6, -844($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -848($fp)
  lw $t4, 0($t5)
  sw  $t4, -852($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -856($fp)
  lw $t2, 0($t3)
  sw  $t2, -860($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -864($fp)
  lw $t0, 0($t1)
  sw  $t0, -868($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -872($fp)
  lw $t0, 0($t1)
  sw  $t0, -876($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -880($fp)
  lw $t6, 0($t7)
  sw  $t6, -884($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -888($fp)
  lw $t4, 0($t5)
  sw  $t4, -892($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -896($fp)
  lw $t7, 0($t0)
  sw  $t7, -900($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -904($fp)
  lw $t5, 0($t6)
  sw  $t5, -908($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -912($fp)
  lw $t3, 0($t4)
  sw  $t3, -916($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -920($fp)
  lw $t1, 0($t2)
  sw  $t1, -924($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -928($fp)
  lw $t3, 0($t4)
  sw  $t3, -932($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -936($fp)
  lw $t1, 0($t2)
  sw  $t1, -940($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -944($fp)
  lw $t7, 0($t0)
  sw  $t7, -948($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -952($fp)
  lw $t5, 0($t6)
  sw  $t5, -956($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -960($fp)
  lw $t3, 0($t4)
  sw  $t3, -964($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -968($fp)
  lw $t1, 0($t2)
  sw  $t1, -972($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -976($fp)
  lw $t3, 0($t4)
  sw  $t3, -980($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -984($fp)
  lw $t1, 0($t2)
  sw  $t1, -988($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -992($fp)
  lw $t7, 0($t0)
  sw  $t7, -996($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1000($fp)
  lw $t5, 0($t6)
  sw  $t5, -1004($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1008($fp)
  lw $t3, 0($t4)
  sw  $t3, -1012($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1016($fp)
  lw $t1, 0($t2)
  sw  $t1, -1020($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1024($fp)
  lw $t7, 0($t0)
  sw  $t7, -1028($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1032($fp)
  lw $t5, 0($t6)
  sw  $t5, -1036($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -1040($fp)
  lw $t3, 0($t4)
  sw  $t3, -1044($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1048($fp)
  lw $t1, 0($t2)
  sw  $t1, -1052($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1056($fp)
  lw $t7, 0($t0)
  sw  $t7, -1060($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1064($fp)
  lw $t5, 0($t6)
  sw  $t5, -1068($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -1072($fp)
  lw $t4, 0($t5)
  sw  $t4, -1076($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -1080($fp)
  lw $t2, 0($t3)
  sw  $t2, -1084($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -1088($fp)
  lw $t0, 0($t1)
  sw  $t0, -1092($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -1096($fp)
  lw $t4, 0($t5)
  sw  $t4, -1100($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -1104($fp)
  lw $t2, 0($t3)
  sw  $t2, -1108($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -1112($fp)
  lw $t0, 0($t1)
  sw  $t0, -1116($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -1120($fp)
  lw $t6, 0($t7)
  sw  $t6, -1124($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -1128($fp)
  lw $t4, 0($t5)
  sw  $t4, -1132($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -1136($fp)
  lw $t2, 0($t3)
  sw  $t2, -1140($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -1144($fp)
  lw $t0, 0($t1)
  sw  $t0, -1148($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -1152($fp)
  lw $t6, 0($t7)
  sw  $t6, -1156($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -1160($fp)
  lw $t4, 0($t5)
  sw  $t4, -1164($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -1168($fp)
  lw $t2, 0($t3)
  sw  $t2, -1172($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -1176($fp)
  lw $t1, 0($t2)
  sw  $t1, -1180($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -1184($fp)
  lw $t7, 0($t0)
  sw  $t7, -1188($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -1192($fp)
  lw $t5, 0($t6)
  sw  $t5, -1196($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t7, 0
  sw  $t7, -1200($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -1204($fp)
  addi  $sp, $sp, 8
  bne  $t4, $t3, label682
  j label681
  label681 :
  li $t5, 1
  sw  $t5, -1200($fp)
  label682 :
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -1208($fp)
  move  $v0, $t2
  addiu  $sp, $sp, 4436
  jr  $ra
  li $t3, 0
  sw  $t3, -1212($fp)
  ble  $t5, $t4, label687
  j label688
  label687 :
  li $t6, 1
  sw  $t6, -1212($fp)
  label688 :
  li $t7, 0
  sw  $t7, -1216($fp)
  add $t0, $t1, 7696
  add $t0, $t3, $t2
  sw  $t0, -1220($fp)
  bge  $t5, $t4, label689
  j label690
  label689 :
  li $t6, 1
  sw  $t6, -1216($fp)
  label690 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -1224($fp)
  addi  $sp, $sp, 8
  bne  $t3, $t2, label686
  j label683
  label686 :
  li $t4, 0
  sw  $t4, -1228($fp)
  sub $t5, $t6, 8036
  sw  $t5, -1232($fp)
  beq  $t0, $t7, label691
  j label692
  label691 :
  li $t1, 1
  sw  $t1, -1228($fp)
  label692 :
  li $t2, 0
  sw  $t2, -1236($fp)
  bne  $t4, $t3, label694
  j label693
  label693 :
  li $t5, 1
  sw  $t5, -1236($fp)
  label694 :
  add $t6, $t0, $t7
  sw  $t6, -1240($fp)
  move $t1, $t2
  sw  $t1, -464($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -1244($fp)
  addi  $sp, $sp, 12
  bne  $t0, $t7, label683
  j label684
  label683 :
  li $t1, 2334
  sw  $t1, -1248($fp)
  li $t2, 45492
  sw  $t2, -1252($fp)
  label695 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -1256($fp)
  addi  $sp, $sp, 0
  move $t4, $t5
  sw  $t4, -448($fp)
  bne  $t7, $t6, label696
  j label697
  label696 :
  label698 :
  li $t0, 0
  sw  $t0, -1260($fp)
  bne  $t2, $t1, label703
  j label704
  label704 :
  bne  $t4, $t3, label702
  j label703
  label702 :
  li $t5, 1
  sw  $t5, -1260($fp)
  label703 :
  mul $t6, $t0, $t7
  sw  $t6, -1264($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1268($fp)
  lw $t4, 0($t5)
  sw  $t4, -1272($fp)
  bne  $t7, $t6, label701
  j label700
  label701 :
  sub  $t0, $t2, $t1
  sw  $t0, -1276($fp)
  lw $t3, 0($t4)
  sw  $t3, -1280($fp)
  mul $t5, $t7, $t6
  sw  $t5, -1284($fp)
  bne  $t1, $t0, label699
  j label700
  label699 :
  label705 :
  bne  $t3, $t2, label706
  j label707
  label706 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -1288($fp)
  addi  $sp, $sp, 0
  mul $t5, $t7, $t6
  sw  $t5, -1292($fp)
  bne  $t1, $t0, label711
  j label709
  label711 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -1296($fp)
  addi  $sp, $sp, 0
  div $t5, $t4
  mflo $t3
  sw  $t3, -1300($fp)
  bne  $t7, $t6, label708
  j label709
  label708 :
  li $t0, 0
  sw  $t0, -1304($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1308($fp)
  lw $t4, 0($t5)
  sw  $t4, -1312($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -1316($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -1320($fp)
  li $t5, 0
  sw  $t5, -1324($fp)
  bne  $t7, $t6, label716
  j label715
  label715 :
  li $t0, 1
  sw  $t0, -1324($fp)
  label716 :
  add $t1, $t3, $t2
  sw  $t1, -1328($fp)
  bne  $t5, $t4, label712
  j label714
  label714 :
  add $t6, $t0, $t7
  sw  $t6, -1332($fp)
  bgt  $t2, $t1, label712
  j label713
  label712 :
  li $t3, 1
  sw  $t3, -1304($fp)
  label713 :
  j label710
  label709 :
  li $t4, 0
  sw  $t4, -1336($fp)
  bne  $t6, $t5, label719
  j label718
  label719 :
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -1340($fp)
  bne  $t4, $t3, label717
  j label718
  label717 :
  li $t5, 1
  sw  $t5, -1336($fp)
  label718 :
  label710 :
  j label705
  label707 :
  j label698
  label700 :
  j label695
  label697 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t0, 0
  sw  $t0, -1344($fp)
  bne  $t2, $t1, label722
  j label720
  label722 :
  li $t3, 0
  sw  $t3, -1348($fp)
  bne  $t5, $t4, label723
  j label724
  label723 :
  li $t6, 1
  sw  $t6, -1348($fp)
  label724 :
  mul $t7, $t1, $t0
  sw  $t7, -1352($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -1356($fp)
  lw $t5, 0($t6)
  sw  $t5, -1360($fp)
  bne  $t0, $t7, label720
  j label721
  label720 :
  li $t1, 1
  sw  $t1, -1344($fp)
  label721 :
  move  $v0, $t2
  addiu  $sp, $sp, 4436
  jr  $ra
  li $t3, 39753
  sw  $t3, -1416($fp)
  li $t4, 65409
  sw  $t4, -1420($fp)
  li $t5, 54059
  sw  $t5, -1424($fp)
  li $t6, 21497
  sw  $t6, -1428($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1432($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -1436($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -1440($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -1444($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -1448($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -1452($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -1456($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -1460($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -1464($fp)
  sw $t3, 0($t2)
  li $t4, 14377
  sw  $t4, -1468($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1472($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -1476($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -1480($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -1484($fp)
  sw $t0, 0($t7)
  li $t1, 34493
  sw  $t1, -1488($fp)
  label725 :
  li $t2, 0
  sw  $t2, -1492($fp)
  bne  $t4, $t3, label728
  j label730
  label730 :
  bne  $t6, $t5, label728
  j label729
  label728 :
  li $t7, 1
  sw  $t7, -1492($fp)
  label729 :
  mul $t0, $t2, $t1
  sw  $t0, -1496($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1500($fp)
  lw $t6, 0($t7)
  sw  $t6, -1504($fp)
  mul $t0, $t2, $t1
  sw  $t0, -1508($fp)
  bgt  $t4, $t3, label726
  j label727
  label726 :
  li $t5, 0
  sw  $t5, -1512($fp)
  beq  $t7, $t6, label731
  j label732
  label731 :
  li $t0, 1
  sw  $t0, -1512($fp)
  label732 :
  move  $v0, $t1
  addiu  $sp, $sp, 4436
  jr  $ra
  j label725
  label727 :
  label733 :
  li $t2, 0
  sw  $t2, -1516($fp)
  bne  $t4, $t3, label738
  j label737
  label738 :
  bne  $t6, $t5, label736
  j label737
  label736 :
  li $t7, 1
  sw  $t7, -1516($fp)
  label737 :
  li $t0, 0
  sw  $t0, -1520($fp)
  beq  $t2, $t1, label741
  j label740
  label741 :
  bne  $t4, $t3, label739
  j label740
  label739 :
  li $t5, 1
  sw  $t5, -1520($fp)
  label740 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -1524($fp)
  addi  $sp, $sp, 8
  move $t1, $t2
  sw  $t1, -288($fp)
  bne  $t4, $t3, label734
  j label735
  label734 :
  li $t5, 0
  sw  $t5, -1528($fp)
  li $t6, 0
  sw  $t6, -1532($fp)
  li $t7, 0
  sw  $t7, -1536($fp)
  bgt  $t1, $t0, label752
  j label754
  label754 :
  bne  $t3, $t2, label752
  j label753
  label752 :
  li $t4, 1
  sw  $t4, -1536($fp)
  label753 :
  li $t5, 0
  sw  $t5, -1540($fp)
  beq  $t7, $t6, label755
  j label757
  label757 :
  bne  $t1, $t0, label755
  j label756
  label755 :
  li $t2, 1
  sw  $t2, -1540($fp)
  label756 :
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -1544($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1548($fp)
  lw $t2, 0($t3)
  sw  $t2, -1552($fp)
  li $t4, 0
  sw  $t4, -1556($fp)
  li $t5, 0
  sw  $t5, -1560($fp)
  li $t6, 0
  sw  $t6, -1564($fp)
  bgt  $t0, $t7, label762
  j label763
  label762 :
  li $t1, 1
  sw  $t1, -1564($fp)
  label763 :
  ble  $t3, $t2, label760
  j label761
  label760 :
  li $t4, 1
  sw  $t4, -1560($fp)
  label761 :
  li $t5, 0
  sw  $t5, -1568($fp)
  bne  $t7, $t6, label764
  j label766
  label766 :
  bne  $t1, $t0, label764
  j label765
  label764 :
  li $t2, 1
  sw  $t2, -1568($fp)
  label765 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1572($fp)
  addi  $sp, $sp, 8
  beq  $t7, $t6, label758
  j label759
  label758 :
  li $t0, 1
  sw  $t0, -1556($fp)
  label759 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -1576($fp)
  addi  $sp, $sp, 20
  bne  $t0, $t7, label750
  j label751
  label750 :
  li $t1, 1
  sw  $t1, -1532($fp)
  label751 :
  add $t2, $t3, 8153
  add $t2, $t5, $t4
  sw  $t2, -1580($fp)
  mul $t6, $t0, $t7
  sw  $t6, -1584($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1588($fp)
  lw $t4, 0($t5)
  sw  $t4, -1592($fp)
  beq  $t7, $t6, label748
  j label749
  label748 :
  li $t0, 1
  sw  $t0, -1528($fp)
  label749 :
  li $t1, 0
  sw  $t1, -1596($fp)
  li $t2, 0
  sw  $t2, -1600($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1604($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1608($fp)
  lw $t1, 0($t2)
  sw  $t1, -1612($fp)
  li $t3, 0
  sw  $t3, -1616($fp)
  li $t4, 0
  sw  $t4, -1620($fp)
  bgt  $t6, $t5, label774
  j label775
  label774 :
  li $t7, 1
  sw  $t7, -1620($fp)
  label775 :
  bne  $t1, $t0, label772
  j label773
  label772 :
  li $t2, 1
  sw  $t2, -1616($fp)
  label773 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -1624($fp)
  addi  $sp, $sp, 12
  bne  $t0, $t7, label771
  j label770
  label771 :
  bne  $t2, $t1, label769
  j label770
  label769 :
  li $t3, 1
  sw  $t3, -1600($fp)
  label770 :
  li $t4, 0
  sw  $t4, -1628($fp)
  li $t5, 0
  sw  $t5, -1632($fp)
  bne  $t7, $t6, label778
  j label779
  label778 :
  li $t0, 1
  sw  $t0, -1632($fp)
  label779 :
  bne  $t2, $t1, label776
  j label777
  label776 :
  li $t3, 1
  sw  $t3, -1628($fp)
  label777 :
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1636($fp)
  addi  $sp, $sp, 12
  bne  $t1, $t0, label768
  j label767
  label767 :
  li $t2, 1
  sw  $t2, -1596($fp)
  label768 :
  add $t3, $t5, $t4
  sw  $t3, -1640($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -1644($fp)
  addi  $sp, $sp, 8
  mul $t1, $t3, $t2
  sw  $t1, -1648($fp)
  j label733
  label735 :
  move $t4, $t5
  sw  $t4, -1416($fp)
  bne  $t7, $t6, label780
  j label781
  label780 :
  label783 :
  mul $t0, $t2, $t1
  sw  $t0, -1652($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -1656($fp)
  lw $t6, 0($t7)
  sw  $t6, -1660($fp)
  sub $t0, $t1, 320115862
  sw  $t0, -1664($fp)
  move $t2, $t3
  sw  $t2, -352($fp)
  bne  $t5, $t4, label784
  j label785
  label784 :
  j label783
  label785 :
  j label782
  label781 :
  li $t6, 0
  sw  $t6, -1668($fp)
  li $t7, 0
  sw  $t7, -1672($fp)
  ble  $t1, $t0, label791
  j label792
  label791 :
  li $t2, 1
  sw  $t2, -1672($fp)
  label792 :
  bgt  $t4, $t3, label789
  j label790
  label789 :
  li $t5, 1
  sw  $t5, -1668($fp)
  label790 :
  mul $t6, $t0, $t7
  sw  $t6, -1676($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1680($fp)
  lw $t4, 0($t5)
  sw  $t4, -1684($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1688($fp)
  lw $t1, 0($t2)
  sw  $t1, -1692($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1696($fp)
  bge  $t7, $t6, label786
  j label787
  label786 :
  li $t0, 0
  sw  $t0, -1700($fp)
  li $t1, 0
  sw  $t1, -1704($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -1708($fp)
  bne  $t6, $t5, label798
  j label797
  label798 :
  bne  $t0, $t7, label796
  j label797
  label796 :
  li $t1, 1
  sw  $t1, -1704($fp)
  label797 :
  li $t2, 0
  sw  $t2, -1712($fp)
  bne  $t4, $t3, label799
  j label802
  label802 :
  bne  $t6, $t5, label799
  j label801
  label801 :
  bne  $t0, $t7, label799
  j label800
  label799 :
  li $t1, 1
  sw  $t1, -1712($fp)
  label800 :
  mul $t2, $t4, $t3
  sw  $t2, -1716($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1720($fp)
  lw $t0, 0($t1)
  sw  $t0, -1724($fp)
  li $t2, 0
  sw  $t2, -1728($fp)
  bne  $t4, $t3, label804
  j label805
  label805 :
  bne  $t6, $t5, label803
  j label804
  label803 :
  li $t7, 1
  sw  $t7, -1728($fp)
  label804 :
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1732($fp)
  addi  $sp, $sp, 20
  mul $t6, $t0, $t7
  sw  $t6, -1736($fp)
  bne  $t2, $t1, label795
  j label794
  label795 :
  bne  $t4, $t3, label793
  j label794
  label793 :
  li $t5, 1
  sw  $t5, -1700($fp)
  label794 :
  j label788
  label787 :
  move $t6, $t7
  sw  $t6, -508($fp)
  li $t0, 0
  sw  $t0, -1740($fp)
  bne  $t2, $t1, label808
  j label807
  label808 :
  bne  $t4, $t3, label806
  j label807
  label806 :
  li $t5, 1
  sw  $t5, -1740($fp)
  label807 :
  li $t6, 0
  sw  $t6, -1744($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -1748($fp)
  lw $t2, 0($t3)
  sw  $t2, -1752($fp)
  bne  $t5, $t4, label809
  j label811
  label811 :
  bne  $t7, $t6, label809
  j label810
  label809 :
  li $t0, 1
  sw  $t0, -1744($fp)
  label810 :
  li $t1, 0
  sw  $t1, -1756($fp)
  li $t2, 0
  sw  $t2, -1760($fp)
  mul $t3, $t5, $t4
  sw  $t3, -1764($fp)
  bge  $t7, $t6, label814
  j label815
  label814 :
  li $t0, 1
  sw  $t0, -1760($fp)
  label815 :
  move $t1, $t2
  sw  $t1, -720($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1768($fp)
  addi  $sp, $sp, 8
  bgt  $t7, $t6, label812
  j label813
  label812 :
  li $t0, 1
  sw  $t0, -1756($fp)
  label813 :
  li $t1, 0
  sw  $t1, -1772($fp)
  beq  $t3, $t2, label816
  j label817
  label816 :
  li $t4, 1
  sw  $t4, -1772($fp)
  label817 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -1776($fp)
  addi  $sp, $sp, 20
  mul $t3, $t5, $t4
  sw  $t3, -1780($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -1784($fp)
  lw $t1, 0($t2)
  sw  $t1, -1788($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -1792($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -1796($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -1800($fp)
  add $t6, $t0, $t7
  sw  $t6, -1804($fp)
  label788 :
  label782 :
  move $t1, $t2
  sw  $t1, -392($fp)
  li $t3, 0
  sw  $t3, -1808($fp)
  bne  $t5, $t4, label821
  j label820
  label820 :
  li $t6, 1
  sw  $t6, -1808($fp)
  label821 :
  add $t7, $t0, 57780
  sw  $t7, -1812($fp)
  li $t1, 0
  sw  $t1, -1816($fp)
  bne  $t3, $t2, label824
  j label823
  label824 :
  bne  $t5, $t4, label822
  j label823
  label822 :
  li $t6, 1
  sw  $t6, -1816($fp)
  label823 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -1820($fp)
  addi  $sp, $sp, 12
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -1824($fp)
  addi  $sp, $sp, 4
  bne  $t6, $t5, label819
  j label818
  label818 :
  div $t1, $t0
  mflo $t7
  sw  $t7, -1828($fp)
  sub $t2, $t3, 13818
  sw  $t2, -1832($fp)
  li $t4, 0
  sw  $t4, -1836($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1840($fp)
  lw $t0, 0($t1)
  sw  $t0, -1844($fp)
  move $t2, $t3
  sw  $t2, -388($fp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -1848($fp)
  addi  $sp, $sp, 8
  bge  $t0, $t7, label828
  j label829
  label828 :
  li $t1, 1
  sw  $t1, -1836($fp)
  label829 :
  sub $t2, $t4, $t3
  sw  $t2, -1852($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -1856($fp)
  addi  $sp, $sp, 12
  li $t1, 0
  sw  $t1, -1860($fp)
  li $t2, 0
  sw  $t2, -1864($fp)
  bne  $t4, $t3, label833
  j label832
  label832 :
  li $t5, 1
  sw  $t5, -1864($fp)
  label833 :
  blt  $t7, $t6, label830
  j label831
  label830 :
  li $t0, 1
  sw  $t0, -1860($fp)
  label831 :
  li $t1, 52359
  sw  $t1, -544($fp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1868($fp)
  addi  $sp, $sp, 20
  move $t0, $t1
  sw  $t0, -1424($fp)
  bne  $t3, $t2, label825
  j label826
  label825 :
  li $t4, 0
  sw  $t4, -1872($fp)
  bne  $t6, $t5, label842
  j label841
  label842 :
  bne  $t0, $t7, label840
  j label841
  label840 :
  li $t1, 1
  sw  $t1, -1872($fp)
  label841 :
  j label827
  label826 :
  label843 :
  li $t2, 0
  sw  $t2, -1876($fp)
  li $t3, 0
  sw  $t3, -1880($fp)
  move $t4, $t5
  sw  $t4, -256($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -1884($fp)
  addi  $sp, $sp, 4
  bgt  $t1, $t0, label848
  j label849
  label848 :
  li $t2, 1
  sw  $t2, -1880($fp)
  label849 :
  ble  $t4, $t3, label846
  j label847
  label846 :
  li $t5, 1
  sw  $t5, -1876($fp)
  label847 :
  mul $t6, $t0, $t7
  sw  $t6, -1888($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -1892($fp)
  lw $t4, 0($t5)
  sw  $t4, -1896($fp)
  bne  $t7, $t6, label844
  j label845
  label844 :
  li $t0, 0
  sw  $t0, -1900($fp)
  li $t1, 0
  sw  $t1, -1904($fp)
  li $t2, 0
  sw  $t2, -1908($fp)
  add $t3, $t5, $t4
  sw  $t3, -1912($fp)
  bne  $t7, $t6, label856
  j label855
  label856 :
  bne  $t1, $t0, label854
  j label855
  label854 :
  li $t2, 1
  sw  $t2, -1908($fp)
  label855 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -1916($fp)
  addi  $sp, $sp, 8
  li $t6, 0
  sw  $t6, -1920($fp)
  bne  $t0, $t7, label858
  j label857
  label857 :
  li $t1, 1
  sw  $t1, -1920($fp)
  label858 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -1924($fp)
  beq  $t7, $t6, label852
  j label853
  label852 :
  li $t0, 1
  sw  $t0, -1904($fp)
  label853 :
  mul $t1, $t3, $t2
  sw  $t1, -1928($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -1932($fp)
  lw $t7, 0($t0)
  sw  $t7, -1936($fp)
  ble  $t2, $t1, label850
  j label851
  label850 :
  li $t3, 1
  sw  $t3, -1900($fp)
  label851 :
  j label843
  label845 :
  label827 :
  label819 :
  li $t4, 0
  sw  $t4, -1940($fp)
  bne  $t6, $t5, label862
  j label861
  label862 :
  bne  $t0, $t7, label859
  j label861
  label861 :
  bne  $t2, $t1, label859
  j label860
  label859 :
  li $t3, 1
  sw  $t3, -1940($fp)
  label860 :
  li $t4, 0
  sw  $t4, -1944($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -1948($fp)
  lw $t0, 0($t1)
  sw  $t0, -1952($fp)
  bne  $t3, $t2, label863
  j label865
  label865 :
  bne  $t5, $t4, label863
  j label864
  label863 :
  li $t6, 1
  sw  $t6, -1944($fp)
  label864 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -1956($fp)
  addi  $sp, $sp, 8
  j label685
  label684 :
  label866 :
  li $t2, 0
  sw  $t2, -1960($fp)
  blt  $t4, $t3, label869
  j label870
  label869 :
  li $t5, 1
  sw  $t5, -1960($fp)
  label870 :
  move $t6, $t7
  sw  $t6, -720($fp)
  move $t0, $t1
  sw  $t0, -476($fp)
  bne  $t3, $t2, label867
  j label868
  label867 :
  sub  $t4, $t6, $t5
  sw  $t4, -1984($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -1988($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -1992($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -1996($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -2000($fp)
  sw $t4, 0($t3)
  li $t5, 23761
  sw  $t5, -2004($fp)
  li $t6, 20428
  sw  $t6, -2008($fp)
  li $t7, 13746
  sw  $t7, -2012($fp)
  li $t0, 16006
  sw  $t0, -2016($fp)
  li $t1, 36399
  sw  $t1, -2020($fp)
  li $t2, 54128
  sw  $t2, -2024($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -2028($fp)
  addi  $sp, $sp, 0
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -2032($fp)
  bne  $t1, $t0, label877
  j label878
  label877 :
  sub  $t2, $t4, $t3
  sw  $t2, -2108($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -2112($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -2116($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -2120($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -2124($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -2128($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -2132($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -2136($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -2140($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -2144($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -2148($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -2152($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -2156($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -2160($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -2164($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -2168($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -2172($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -2176($fp)
  sw $t3, 0($t2)
  li $t4, 0
  sw  $t4, -2180($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2184($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2188($fp)
  lw $t3, 0($t4)
  sw  $t3, -2192($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -2196($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2200($fp)
  bne  $t4, $t3, label880
  j label882
  label882 :
  bne  $t6, $t5, label883
  j label881
  label883 :
  bne  $t0, $t7, label880
  j label881
  label880 :
  li $t1, 1
  sw  $t1, -2180($fp)
  label881 :
  li $t2, 0
  sw  $t2, -2204($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -2208($fp)
  addi  $sp, $sp, 0
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -2212($fp)
  mul $t0, $t2, $t1
  sw  $t0, -2216($fp)
  sub $t3, $t5, $t4
  sw  $t3, -2220($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2224($fp)
  sub $t1, $t3, $t2
  sw  $t1, -2228($fp)
  bne  $t5, $t4, label886
  j label885
  label886 :
  bne  $t7, $t6, label884
  j label885
  label884 :
  li $t0, 1
  sw  $t0, -2204($fp)
  label885 :
  li $t1, 0
  sw  $t1, -2232($fp)
  bne  $t3, $t2, label889
  j label888
  label889 :
  div $t6, $t5
  mflo $t4
  sw  $t4, -2236($fp)
  add $t7, $t0, 65177
  sw  $t7, -2240($fp)
  move $t1, $t2
  sw  $t1, -444($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2244($fp)
  lw $t6, 0($t7)
  sw  $t6, -2248($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -2252($fp)
  li $t3, 0
  sw  $t3, -2256($fp)
  bgt  $t5, $t4, label892
  j label891
  label892 :
  bne  $t7, $t6, label890
  j label891
  label890 :
  li $t0, 1
  sw  $t0, -2256($fp)
  label891 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2260($fp)
  addi  $sp, $sp, 20
  mul $t7, $t1, $t0
  sw  $t7, -2264($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2268($fp)
  lw $t5, 0($t6)
  sw  $t5, -2272($fp)
  bne  $t0, $t7, label887
  j label888
  label887 :
  li $t1, 1
  sw  $t1, -2232($fp)
  label888 :
  j label879
  label878 :
  div $t4, $t3
  mflo $t2
  sw  $t2, -2276($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2280($fp)
  addi  $sp, $sp, 4
  sub $t7, $t1, $t0
  sw  $t7, -2284($fp)
  bne  $t3, $t2, label893
  j label894
  label893 :
  label896 :
  li $t4, 0
  sw  $t4, -2288($fp)
  bne  $t6, $t5, label899
  j label901
  label901 :
  bne  $t0, $t7, label899
  j label900
  label899 :
  li $t1, 1
  sw  $t1, -2288($fp)
  label900 :
  move $t2, $t3
  sw  $t2, -348($fp)
  bne  $t5, $t4, label897
  j label898
  label897 :
  li $t6, 0
  sw  $t6, -2292($fp)
  li $t7, 0
  sw  $t7, -2296($fp)
  mul $t0, $t2, $t1
  sw  $t0, -2300($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2304($fp)
  lw $t6, 0($t7)
  sw  $t6, -2308($fp)
  add $t0, $t2, $t1
  sw  $t0, -2312($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2316($fp)
  add $t6, $t0, $t7
  sw  $t6, -2320($fp)
  ble  $t2, $t1, label907
  j label908
  label907 :
  li $t3, 1
  sw  $t3, -2296($fp)
  label908 :
  bne  $t5, $t4, label905
  j label906
  label905 :
  li $t6, 1
  sw  $t6, -2292($fp)
  label906 :
  j label896
  label898 :
  j label895
  label894 :
  li $t7, 0
  sw  $t7, -2324($fp)
  li $t0, 0
  sw  $t0, -2328($fp)
  li $t1, 0
  sw  $t1, -2332($fp)
  li $t2, 0
  sw  $t2, -2336($fp)
  beq  $t4, $t3, label915
  j label916
  label915 :
  li $t5, 1
  sw  $t5, -2336($fp)
  label916 :
  bne  $t7, $t6, label913
  j label914
  label913 :
  li $t0, 1
  sw  $t0, -2332($fp)
  label914 :
  li $t1, 0
  sw  $t1, -2340($fp)
  li $t2, 0
  sw  $t2, -2344($fp)
  bne  $t4, $t3, label919
  j label920
  label919 :
  li $t5, 1
  sw  $t5, -2344($fp)
  label920 :
  beq  $t7, $t6, label917
  j label918
  label917 :
  li $t0, 1
  sw  $t0, -2340($fp)
  label918 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -2348($fp)
  addi  $sp, $sp, 8
  blt  $t5, $t4, label911
  j label912
  label911 :
  li $t6, 1
  sw  $t6, -2328($fp)
  label912 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -2352($fp)
  addi  $sp, $sp, 4
  add $t1, $t2, 48092
  sw  $t1, -2356($fp)
  blt  $t4, $t3, label909
  j label910
  label909 :
  li $t5, 1
  sw  $t5, -2324($fp)
  label910 :
  label895 :
  label879 :
  li $t6, 0
  sw  $t6, -2360($fp)
  li $t7, 0
  sw  $t7, -2364($fp)
  bne  $t1, $t0, label926
  j label924
  label926 :
  bne  $t3, $t2, label924
  j label925
  label924 :
  li $t4, 1
  sw  $t4, -2364($fp)
  label925 :
  mul $t5, $t7, $t6
  sw  $t5, -2368($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2372($fp)
  lw $t3, 0($t4)
  sw  $t3, -2376($fp)
  bne  $t6, $t5, label923
  j label922
  label923 :
  bne  $t0, $t7, label921
  j label922
  label921 :
  li $t1, 1
  sw  $t1, -2360($fp)
  label922 :
  label927 :
  bne  $t3, $t2, label928
  j label929
  label928 :
  li $t4, 0
  sw  $t4, -2380($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2384($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2388($fp)
  lw $t3, 0($t4)
  sw  $t3, -2392($fp)
  add $t5, $t6, 27515
  sw  $t5, -2396($fp)
  add $t7, $t0, 36782
  sw  $t7, -2400($fp)
  ble  $t2, $t1, label930
  j label931
  label930 :
  li $t3, 1
  sw  $t3, -2380($fp)
  label931 :
  move $t4, $t5
  sw  $t4, -276($fp)
  j label927
  label929 :
  label934 :
  sub $t6, $t0, $t7
  sw  $t6, -2404($fp)
  li $t1, 0
  sw  $t1, -2408($fp)
  mul $t2, $t4, $t3
  sw  $t2, -2412($fp)
  beq  $t6, $t5, label937
  j label938
  label937 :
  li $t7, 1
  sw  $t7, -2408($fp)
  label938 :
  li $t0, 0
  sw  $t0, -2416($fp)
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -2420($fp)
  bne  $t6, $t5, label941
  j label940
  label941 :
  bne  $t0, $t7, label939
  j label940
  label939 :
  li $t1, 1
  sw  $t1, -2416($fp)
  label940 :
  div $t4, $t3
  mflo $t2
  sw  $t2, -2424($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2428($fp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -2432($fp)
  addi  $sp, $sp, 20
  mul $t6, $t0, $t7
  sw  $t6, -2436($fp)
  mul $t1, $t3, $t2
  sw  $t1, -2440($fp)
  bne  $t5, $t4, label935
  j label936
  label935 :
  label942 :
  li $t6, 0
  sw  $t6, -2444($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2448($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2452($fp)
  lw $t5, 0($t6)
  sw  $t5, -2456($fp)
  beq  $t0, $t7, label946
  j label947
  label946 :
  li $t1, 1
  sw  $t1, -2444($fp)
  label947 :
  li $t2, 28799
  sw  $t2, -476($fp)
  move $t3, $t4
  sw  $t3, -708($fp)
  li $t5, 0
  sw  $t5, -2460($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -2464($fp)
  bne  $t3, $t2, label949
  j label948
  label948 :
  li $t4, 1
  sw  $t4, -2460($fp)
  label949 :
  li $t5, 0
  sw  $t5, -2468($fp)
  bge  $t7, $t6, label952
  j label951
  label952 :
  bne  $t1, $t0, label950
  j label951
  label950 :
  li $t2, 1
  sw  $t2, -2468($fp)
  label951 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -2472($fp)
  addi  $sp, $sp, 20
  mul $t1, $t3, $t2
  sw  $t1, -2476($fp)
  li $t4, 0
  sw  $t4, -2480($fp)
  bne  $t6, $t5, label953
  j label954
  label953 :
  li $t7, 1
  sw  $t7, -2480($fp)
  label954 :
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -2484($fp)
  addi  $sp, $sp, 20
  bne  $t7, $t6, label943
  j label945
  label945 :
  bne  $t1, $t0, label943
  j label944
  label943 :
  li $t2, 0
  sw  $t2, -2488($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2492($fp)
  bne  $t0, $t7, label956
  j label955
  label955 :
  li $t1, 1
  sw  $t1, -2488($fp)
  label956 :
  li $t2, 26344
  sw  $t2, -2016($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -2496($fp)
  addi  $sp, $sp, 8
  li $t6, 0
  sw  $t6, -2500($fp)
  li $t7, 0
  sw  $t7, -2504($fp)
  bne  $t1, $t0, label962
  j label961
  label961 :
  li $t2, 1
  sw  $t2, -2504($fp)
  label962 :
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2508($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2512($fp)
  li $t2, 0
  sw  $t2, -2516($fp)
  bne  $t4, $t3, label963
  j label964
  label963 :
  li $t5, 1
  sw  $t5, -2516($fp)
  label964 :
  mul $t6, $t0, $t7
  sw  $t6, -2520($fp)
  add $t1, $t2, 51304
  sw  $t1, -2524($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2528($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -2532($fp)
  lw $t1, 0($t2)
  sw  $t1, -2536($fp)
  li $t3, 0
  sw  $t3, -2540($fp)
  li $t4, 0
  sw  $t4, -2544($fp)
  bne  $t6, $t5, label967
  j label969
  label969 :
  bne  $t0, $t7, label967
  j label968
  label967 :
  li $t1, 1
  sw  $t1, -2544($fp)
  label968 :
  li $t2, 0
  sw  $t2, -2548($fp)
  bge  $t4, $t3, label970
  j label971
  label970 :
  li $t5, 1
  sw  $t5, -2548($fp)
  label971 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -2552($fp)
  addi  $sp, $sp, 8
  beq  $t2, $t1, label965
  j label966
  label965 :
  li $t3, 1
  sw  $t3, -2540($fp)
  label966 :
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -2556($fp)
  addi  $sp, $sp, 20
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -2560($fp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -2564($fp)
  addi  $sp, $sp, 12
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -2568($fp)
  bne  $t7, $t6, label960
  j label959
  label960 :
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -2572($fp)
  sub $t4, $t6, $t5
  sw  $t4, -2576($fp)
  bne  $t0, $t7, label957
  j label959
  label959 :
  li $t1, 0
  sw  $t1, -2580($fp)
  bne  $t3, $t2, label974
  j label973
  label974 :
  bne  $t5, $t4, label972
  j label973
  label972 :
  li $t6, 1
  sw  $t6, -2580($fp)
  label973 :
  li $t7, 0
  sw  $t7, -2584($fp)
  bne  $t1, $t0, label976
  j label975
  label975 :
  li $t2, 1
  sw  $t2, -2584($fp)
  label976 :
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2588($fp)
  li $t7, 0
  sw  $t7, -2592($fp)
  sub $t0, $t1, 7054
  sw  $t0, -2596($fp)
  bne  $t3, $t2, label979
  j label978
  label979 :
  bne  $t5, $t4, label977
  j label978
  label977 :
  li $t6, 1
  sw  $t6, -2592($fp)
  label978 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -2600($fp)
  addi  $sp, $sp, 12
  sub $t3, $t5, $t4
  sw  $t3, -2604($fp)
  beq  $t7, $t6, label957
  j label958
  label957 :
  li $t0, 1
  sw  $t0, -2500($fp)
  label958 :
  j label942
  label944 :
  j label934
  label936 :
  li $t1, 0
  sw  $t1, -2608($fp)
  bne  $t3, $t2, label981
  j label980
  label980 :
  li $t4, 1
  sw  $t4, -2608($fp)
  label981 :
  li $t5, 0
  sw  $t5, -2612($fp)
  li $t6, 0
  sw  $t6, -2616($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -2620($fp)
  bne  $t4, $t3, label988
  j label987
  label987 :
  li $t5, 1
  sw  $t5, -2616($fp)
  label988 :
  sub $t6, $t7, 37565
  sub $t6, $t1, $t0
  sw  $t6, -2624($fp)
  beq  $t3, $t2, label985
  j label986
  label985 :
  li $t4, 1
  sw  $t4, -2612($fp)
  label986 :
  bge  $t6, $t5, label982
  j label983
  label982 :
  li $t7, 0
  sw  $t7, -2628($fp)
  bne  $t1, $t0, label994
  j label993
  label994 :
  bne  $t3, $t2, label992
  j label993
  label992 :
  li $t4, 1
  sw  $t4, -2628($fp)
  label993 :
  mul $t5, $t7, $t6
  sw  $t5, -2632($fp)
  mul $t0, $t2, $t1
  sw  $t0, -2636($fp)
  mul $t3, $t5, $t4
  sw  $t3, -2640($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2644($fp)
  li $t1, 0
  sw  $t1, -2648($fp)
  beq  $t3, $t2, label995
  j label997
  label997 :
  bne  $t5, $t4, label995
  j label996
  label995 :
  li $t6, 1
  sw  $t6, -2648($fp)
  label996 :
  mul $t7, $t1, $t0
  sw  $t7, -2652($fp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -2656($fp)
  addi  $sp, $sp, 20
  li $t0, 0
  sw  $t0, -2660($fp)
  bne  $t2, $t1, label999
  j label998
  label998 :
  li $t3, 1
  sw  $t3, -2660($fp)
  label999 :
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2664($fp)
  addi  $sp, $sp, 8
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -2668($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2672($fp)
  li $t7, 0
  sw  $t7, -2676($fp)
  bne  $t1, $t0, label1000
  j label1001
  label1000 :
  li $t2, 1
  sw  $t2, -2676($fp)
  label1001 :
  li $t3, 0
  sw  $t3, -2680($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -2684($fp)
  bne  $t1, $t0, label1002
  j label1004
  label1004 :
  bne  $t3, $t2, label1002
  j label1003
  label1002 :
  li $t4, 1
  sw  $t4, -2680($fp)
  label1003 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -2688($fp)
  addi  $sp, $sp, 8
  mul $t0, $t2, $t1
  sw  $t0, -2692($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -2696($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -2700($fp)
  add $t2, $t4, $t3
  sw  $t2, -2704($fp)
  bne  $t6, $t5, label989
  j label990
  label989 :
  li $t7, 0
  sw  $t7, -2708($fp)
  li $t0, 0
  sw  $t0, -2712($fp)
  sub $t1, $t3, $t2
  sw  $t1, -2716($fp)
  add $t4, $t5, -6339
  sw  $t4, -2720($fp)
  mul $t6, $t0, $t7
  sw  $t6, -2724($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -2728($fp)
  lw $t4, 0($t5)
  sw  $t4, -2732($fp)
  beq  $t7, $t6, label1007
  j label1008
  label1007 :
  li $t0, 1
  sw  $t0, -2712($fp)
  label1008 :
  beq  $t2, $t1, label1005
  j label1006
  label1005 :
  li $t3, 1
  sw  $t3, -2708($fp)
  label1006 :
  j label991
  label990 :
  li $t4, 0
  sw  $t4, -2736($fp)
  mul $t5, $t7, $t6
  sw  $t5, -2740($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2744($fp)
  lw $t3, 0($t4)
  sw  $t3, -2748($fp)
  bne  $t6, $t5, label1010
  j label1009
  label1009 :
  li $t7, 1
  sw  $t7, -2736($fp)
  label1010 :
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -2752($fp)
  label991 :
  j label984
  label983 :
  li $t4, 0
  sw  $t4, -2756($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2760($fp)
  lw $t0, 0($t1)
  sw  $t0, -2764($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -2768($fp)
  bne  $t7, $t6, label1013
  j label1012
  label1013 :
  li $t0, 0
  sw  $t0, -2772($fp)
  beq  $t2, $t1, label1016
  j label1015
  label1016 :
  bne  $t4, $t3, label1014
  j label1015
  label1014 :
  li $t5, 1
  sw  $t5, -2772($fp)
  label1015 :
  li $t6, 0
  sw  $t6, -2776($fp)
  bne  $t0, $t7, label1017
  j label1020
  label1020 :
  bne  $t2, $t1, label1017
  j label1019
  label1019 :
  bne  $t4, $t3, label1017
  j label1018
  label1017 :
  li $t5, 1
  sw  $t5, -2776($fp)
  label1018 :
  li $t6, 0
  sw  $t6, -2780($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2784($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2788($fp)
  lw $t5, 0($t6)
  sw  $t5, -2792($fp)
  bne  $t0, $t7, label1021
  j label1023
  label1023 :
  bne  $t2, $t1, label1021
  j label1022
  label1021 :
  li $t3, 1
  sw  $t3, -2780($fp)
  label1022 :
  sub  $t4, $t6, $t5
  sw  $t4, -2796($fp)
  lw $t7, 0($t0)
  sw  $t7, -2800($fp)
  li $t1, 0
  sw  $t1, -2804($fp)
  beq  $t3, $t2, label1024
  j label1025
  label1024 :
  li $t4, 1
  sw  $t4, -2804($fp)
  label1025 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -2808($fp)
  addi  $sp, $sp, 20
  mul $t3, $t5, $t4
  sw  $t3, -2812($fp)
  bne  $t7, $t6, label1011
  j label1012
  label1011 :
  li $t0, 1
  sw  $t0, -2756($fp)
  label1012 :
  li $t1, 0
  sw  $t1, -2816($fp)
  bne  $t3, $t2, label1028
  j label1027
  label1028 :
  li $t4, 0
  sw  $t4, -2820($fp)
  bne  $t6, $t5, label1030
  j label1029
  label1029 :
  li $t7, 1
  sw  $t7, -2820($fp)
  label1030 :
  bge  $t1, $t0, label1026
  j label1027
  label1026 :
  li $t2, 1
  sw  $t2, -2816($fp)
  label1027 :
  label984 :
  add $t3, $t4, 46167
  add $t3, $t6, $t5
  sw  $t3, -2824($fp)
  mul $t7, $t1, $t0
  sw  $t7, -2828($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -2832($fp)
  lw $t5, 0($t6)
  sw  $t5, -2836($fp)
  li $t7, 0
  sw  $t7, -2840($fp)
  bne  $t1, $t0, label1033
  j label1032
  label1033 :
  bne  $t3, $t2, label1031
  j label1032
  label1031 :
  li $t4, 1
  sw  $t4, -2840($fp)
  label1032 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2844($fp)
  addi  $sp, $sp, 4
  add $t7, $t1, $t0
  sw  $t7, -2848($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -2852($fp)
  addi  $sp, $sp, 0
  add $t3, $t5, $t4
  sw  $t3, -2856($fp)
  j label866
  label868 :
  label685 :
  li $t6, 0
  sw  $t6, -2860($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -2864($fp)
  lw $t2, 0($t3)
  sw  $t2, -2868($fp)
  bne  $t5, $t4, label1039
  j label1038
  label1038 :
  li $t6, 1
  sw  $t6, -2860($fp)
  label1039 :
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -2872($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -2876($fp)
  lw $t6, 0($t7)
  sw  $t6, -2880($fp)
  add $t0, $t2, $t1
  sw  $t0, -2884($fp)
  bne  $t4, $t3, label1037
  j label1035
  label1037 :
  sub  $t5, $t7, $t6
  sw  $t5, -2888($fp)
  lw $t0, 0($t1)
  sw  $t0, -2892($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -2896($fp)
  ble  $t6, $t5, label1034
  j label1035
  label1034 :
  label1040 :
  sub  $t7, $t1, $t0
  sw  $t7, -2900($fp)
  lw $t2, 0($t3)
  sw  $t2, -2904($fp)
  bne  $t5, $t4, label1041
  j label1042
  label1041 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2908($fp)
  addi  $sp, $sp, 0
  move  $v0, $t7
  addiu  $sp, $sp, 4436
  jr  $ra
  j label1040
  label1042 :
  j label1036
  label1035 :
  bne  $t1, $t0, label1043
  j label1044
  label1043 :
  li $t2, 0
  sw  $t2, -2912($fp)
  li $t3, 0
  sw  $t3, -2916($fp)
  li $t4, 0
  sw  $t4, -2920($fp)
  li $t5, 0
  sw  $t5, -2924($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -2928($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -2932($fp)
  mul $t4, $t6, $t5
  sw  $t4, -2936($fp)
  bgt  $t0, $t7, label1052
  j label1053
  label1052 :
  li $t1, 1
  sw  $t1, -2924($fp)
  label1053 :
  mul $t2, $t4, $t3
  sw  $t2, -2940($fp)
  bne  $t6, $t5, label1050
  j label1051
  label1050 :
  li $t7, 1
  sw  $t7, -2920($fp)
  label1051 :
  li $t0, 0
  sw  $t0, -2944($fp)
  add $t1, $t2, 34839
  add $t1, $t4, $t3
  sw  $t1, -2948($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -2952($fp)
  addi  $sp, $sp, 4
  bne  $t0, $t7, label1055
  j label1054
  label1054 :
  li $t1, 1
  sw  $t1, -2944($fp)
  label1055 :
  bne  $t3, $t2, label1048
  j label1049
  label1048 :
  li $t4, 1
  sw  $t4, -2916($fp)
  label1049 :
  blt  $t6, $t5, label1046
  j label1047
  label1046 :
  li $t7, 1
  sw  $t7, -2912($fp)
  label1047 :
  move  $v0, $t0
  addiu  $sp, $sp, 4436
  jr  $ra
  j label1045
  label1044 :
  li $t1, 0
  sw  $t1, -2956($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -2960($fp)
  bne  $t7, $t6, label1057
  j label1056
  label1056 :
  li $t0, 1
  sw  $t0, -2956($fp)
  label1057 :
  label1045 :
  label1036 :
  label1058 :
  li $t1, 0
  sw  $t1, -2964($fp)
  beq  $t3, $t2, label1061
  j label1062
  label1061 :
  li $t4, 1
  sw  $t4, -2964($fp)
  label1062 :
  mul $t5, $t7, $t6
  sw  $t5, -2968($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -2972($fp)
  lw $t3, 0($t4)
  sw  $t3, -2976($fp)
  bne  $t6, $t5, label1059
  j label1060
  label1059 :
  mul $t7, $t1, $t0
  sw  $t7, -2980($fp)
  mul $t2, $t4, $t3
  sw  $t2, -2984($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -2988($fp)
  lw $t0, 0($t1)
  sw  $t0, -2992($fp)
  mul $t2, $t4, $t3
  sw  $t2, -2996($fp)
  add $t5, $t7, $t6
  sw  $t5, -3000($fp)
  li $t0, 0
  sw  $t0, -3004($fp)
  bne  $t2, $t1, label1064
  j label1063
  label1063 :
  li $t3, 1
  sw  $t3, -3004($fp)
  label1064 :
  add $t4, $t6, $t5
  sw  $t4, -3008($fp)
  j label1058
  label1060 :
  ble  $t0, $t7, label1065
  j label1066
  label1065 :
  li $t1, 17502
  sw  $t1, -3032($fp)
  li $t2, 27231
  sw  $t2, -3036($fp)
  li $t3, 15202
  sw  $t3, -3040($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3044($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -3048($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -3052($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -3056($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -3060($fp)
  sw $t4, 0($t3)
  li $t5, 55992
  sw  $t5, -3064($fp)
  li $t6, 25402
  sw  $t6, -3068($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -3072($fp)
  lw $t5, 0($t6)
  sw  $t5, -3076($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -3080($fp)
  lw $t3, 0($t4)
  sw  $t3, -3084($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -3088($fp)
  lw $t1, 0($t2)
  sw  $t1, -3092($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -3096($fp)
  lw $t7, 0($t0)
  sw  $t7, -3100($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -3104($fp)
  lw $t5, 0($t6)
  sw  $t5, -3108($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t2, 0
  sw  $t2, -3112($fp)
  mul $t3, $t5, $t4
  sw  $t3, -3116($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -3120($fp)
  lw $t1, 0($t2)
  sw  $t1, -3124($fp)
  mul $t3, $t5, $t4
  sw  $t3, -3128($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -3132($fp)
  div $t4, $t3
  mflo $t2
  sw  $t2, -3136($fp)
  blt  $t6, $t5, label1070
  j label1069
  label1070 :
  add $t7, $t1, $t0
  sw  $t7, -3140($fp)
  mul $t2, $t4, $t3
  sw  $t2, -3144($fp)
  mul $t5, $t7, $t6
  sw  $t5, -3148($fp)
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -3152($fp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -3156($fp)
  addi  $sp, $sp, 8
  beq  $t0, $t7, label1068
  j label1069
  label1068 :
  li $t1, 1
  sw  $t1, -3112($fp)
  label1069 :
  move  $v0, $t2
  addiu  $sp, $sp, 4436
  jr  $ra
  li $t3, 0
  sw  $t3, -3160($fp)
  li $t4, 0
  sw  $t4, -3164($fp)
  bne  $t6, $t5, label1076
  j label1075
  label1075 :
  li $t7, 1
  sw  $t7, -3164($fp)
  label1076 :
  mul $t0, $t2, $t1
  sw  $t0, -3168($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -3172($fp)
  addi  $sp, $sp, 8
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -3176($fp)
  bne  $t3, $t2, label1074
  j label1073
  label1073 :
  li $t4, 1
  sw  $t4, -3160($fp)
  label1074 :
  sub $t5, $t6, -16567
  sw  $t5, -3180($fp)
  bne  $t0, $t7, label1071
  j label1072
  label1071 :
  li $t1, 54669
  sw  $t1, -3184($fp)
  li $t2, 42188
  sw  $t2, -3188($fp)
  li $t3, 104
  sw  $t3, -3192($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t7, 0
  sw  $t7, -3196($fp)
  li $t0, 0
  sw  $t0, -3200($fp)
  bne  $t2, $t1, label1080
  j label1079
  label1079 :
  li $t3, 1
  sw  $t3, -3200($fp)
  label1080 :
  div $t6, $t5
  mflo $t4
  sw  $t4, -3204($fp)
  mul $t7, $t1, $t0
  sw  $t7, -3208($fp)
  li $t2, 0
  sw  $t2, -3212($fp)
  bne  $t4, $t3, label1082
  j label1081
  label1081 :
  li $t5, 1
  sw  $t5, -3212($fp)
  label1082 :
  sub $t6, $t7, 57075
  sw  $t6, -3216($fp)
  mul $t0, $t2, $t1
  sw  $t0, -3220($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3224($fp)
  lw $t6, 0($t7)
  sw  $t6, -3228($fp)
  add $t0, $t1, 23903
  sw  $t0, -3232($fp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -3236($fp)
  addi  $sp, $sp, 20
  div $t2, $t1
  mflo $t0
  sw  $t0, -3240($fp)
  bgt  $t4, $t3, label1077
  j label1078
  label1077 :
  li $t5, 1
  sw  $t5, -3196($fp)
  label1078 :
  move  $v0, $t6
  addiu  $sp, $sp, 4436
  jr  $ra
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $v0, $t2
  addiu  $sp, $sp, 4436
  jr  $ra
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t6, 0
  sw  $t6, -3244($fp)
  li $t7, 0
  sw  $t7, -3248($fp)
  ble  $t1, $t0, label1085
  j label1086
  label1085 :
  li $t2, 1
  sw  $t2, -3248($fp)
  label1086 :
  li $t3, 0
  sw  $t3, -3252($fp)
  bgt  $t5, $t4, label1089
  j label1088
  label1089 :
  bne  $t7, $t6, label1087
  j label1088
  label1087 :
  li $t0, 1
  sw  $t0, -3252($fp)
  label1088 :
  li $t1, 0
  sw  $t1, -3256($fp)
  mul $t2, $t4, $t3
  sw  $t2, -3260($fp)
  beq  $t6, $t5, label1090
  j label1091
  label1090 :
  li $t7, 1
  sw  $t7, -3256($fp)
  label1091 :
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t1, $v0
  sw  $t1, -3264($fp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -3268($fp)
  addi  $sp, $sp, 12
  beq  $t7, $t6, label1083
  j label1084
  label1083 :
  li $t0, 1
  sw  $t0, -3244($fp)
  label1084 :
  move  $v0, $t1
  addiu  $sp, $sp, 4436
  jr  $ra
  label1092 :
  bne  $t3, $t2, label1094
  j label1093
  label1093 :
  j label1092
  label1094 :
  label1095 :
  li $t4, 0
  sw  $t4, -3272($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -3276($fp)
  mul $t1, $t3, $t2
  sw  $t1, -3280($fp)
  li $t4, 0
  sw  $t4, -3284($fp)
  bne  $t6, $t5, label1102
  j label1101
  label1102 :
  bne  $t0, $t7, label1100
  j label1101
  label1100 :
  li $t1, 1
  sw  $t1, -3284($fp)
  label1101 :
  li $t2, 0
  sw  $t2, -3288($fp)
  li $t3, 0
  sw  $t3, -3292($fp)
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -3296($fp)
  bne  $t1, $t0, label1105
  j label1107
  label1107 :
  bne  $t3, $t2, label1105
  j label1106
  label1105 :
  li $t4, 1
  sw  $t4, -3292($fp)
  label1106 :
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -3300($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -3304($fp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -3308($fp)
  addi  $sp, $sp, 8
  bne  $t0, $t7, label1104
  j label1103
  label1103 :
  li $t1, 1
  sw  $t1, -3288($fp)
  label1104 :
  li $t2, 36440
  sw  $t2, -264($fp)
  li $t3, 13225
  sw  $t3, -288($fp)
  mul $t4, $t6, $t5
  sw  $t4, -3312($fp)
  li $t7, 0
  sw  $t7, -3316($fp)
  bne  $t1, $t0, label1111
  j label1110
  label1111 :
  bne  $t3, $t2, label1108
  j label1110
  label1110 :
  bne  $t5, $t4, label1108
  j label1109
  label1108 :
  li $t6, 1
  sw  $t6, -3316($fp)
  label1109 :
  li $t7, 0
  sw  $t7, -3320($fp)
  bne  $t1, $t0, label1112
  j label1115
  label1115 :
  bne  $t3, $t2, label1112
  j label1114
  label1114 :
  bne  $t5, $t4, label1112
  j label1113
  label1112 :
  li $t6, 1
  sw  $t6, -3320($fp)
  label1113 :
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -3324($fp)
  addi  $sp, $sp, 20
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -3328($fp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -3332($fp)
  addi  $sp, $sp, 20
  mul $t7, $t1, $t0
  sw  $t7, -3336($fp)
  bne  $t3, $t2, label1098
  j label1099
  label1098 :
  li $t4, 1
  sw  $t4, -3272($fp)
  label1099 :
  ble  $t6, $t5, label1096
  j label1097
  label1096 :
  li $t7, 0
  sw  $t7, -3340($fp)
  li $t0, 0
  sw  $t0, -3344($fp)
  li $t1, 0
  sw  $t1, -3348($fp)
  li $t2, 0
  sw  $t2, -3352($fp)
  add $t3, $t5, $t4
  sw  $t3, -3356($fp)
  bgt  $t7, $t6, label1123
  j label1124
  label1123 :
  li $t0, 1
  sw  $t0, -3352($fp)
  label1124 :
  beq  $t2, $t1, label1121
  j label1122
  label1121 :
  li $t3, 1
  sw  $t3, -3348($fp)
  label1122 :
  bgt  $t5, $t4, label1119
  j label1120
  label1119 :
  li $t6, 1
  sw  $t6, -3344($fp)
  label1120 :
  beq  $t0, $t7, label1116
  j label1118
  label1118 :
  li $t1, 0
  sw  $t1, -3360($fp)
  bne  $t3, $t2, label1127
  j label1126
  label1126 :
  li $t4, 1
  sw  $t4, -3360($fp)
  label1127 :
  div $t7, $t6
  mflo $t5
  sw  $t5, -3364($fp)
  bne  $t1, $t0, label1125
  j label1117
  label1125 :
  div $t4, $t3
  mflo $t2
  sw  $t2, -3368($fp)
  bne  $t6, $t5, label1116
  j label1117
  label1116 :
  li $t7, 1
  sw  $t7, -3340($fp)
  label1117 :
  j label1095
  label1097 :
  label1072 :
  li $t0, 0
  sw  $t0, -3372($fp)
  bne  $t2, $t1, label1128
  j label1131
  label1131 :
  bne  $t4, $t3, label1128
  j label1130
  label1130 :
  bne  $t6, $t5, label1128
  j label1129
  label1128 :
  li $t7, 1
  sw  $t7, -3372($fp)
  label1129 :
  li $t0, 0
  sw  $t0, -3376($fp)
  mul $t1, $t3, $t2
  sw  $t1, -3380($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3384($fp)
  lw $t7, 0($t0)
  sw  $t7, -3388($fp)
  bne  $t2, $t1, label1134
  j label1133
  label1134 :
  bne  $t4, $t3, label1132
  j label1133
  label1132 :
  li $t5, 1
  sw  $t5, -3376($fp)
  label1133 :
  li $t6, 0
  sw  $t6, -3392($fp)
  li $t7, 0
  sw  $t7, -3396($fp)
  bne  $t1, $t0, label1138
  j label1140
  label1140 :
  bne  $t3, $t2, label1138
  j label1139
  label1138 :
  li $t4, 1
  sw  $t4, -3396($fp)
  label1139 :
  li $t5, 0
  sw  $t5, -3400($fp)
  add $t6, $t7, 17923
  sw  $t6, -3404($fp)
  beq  $t1, $t0, label1141
  j label1142
  label1141 :
  li $t2, 1
  sw  $t2, -3400($fp)
  label1142 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -3408($fp)
  addi  $sp, $sp, 8
  bne  $t7, $t6, label1137
  j label1136
  label1137 :
  bne  $t1, $t0, label1135
  j label1136
  label1135 :
  li $t2, 1
  sw  $t2, -3392($fp)
  label1136 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -3412($fp)
  addi  $sp, $sp, 20
  add $t1, $t2, 13516
  add $t1, $t4, $t3
  sw  $t1, -3416($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -3420($fp)
  lw $t3, 0($t4)
  sw  $t3, -3424($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -3428($fp)
  lw $t1, 0($t2)
  sw  $t1, -3432($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -3436($fp)
  lw $t7, 0($t0)
  sw  $t7, -3440($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -3444($fp)
  lw $t5, 0($t6)
  sw  $t5, -3448($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -3452($fp)
  lw $t3, 0($t4)
  sw  $t3, -3456($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t0, 0
  sw  $t0, -3460($fp)
  bne  $t2, $t1, label1145
  j label1144
  label1145 :
  bne  $t4, $t3, label1143
  j label1144
  label1143 :
  li $t5, 1
  sw  $t5, -3460($fp)
  label1144 :
  move $t6, $t7
  sw  $t6, -296($fp)
  mul $t0, $t2, $t1
  sw  $t0, -3464($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -3468($fp)
  lw $t6, 0($t7)
  sw  $t6, -3472($fp)
  move  $v0, $t0
  addiu  $sp, $sp, 4436
  jr  $ra
  li $t1, 0
  sw  $t1, -3476($fp)
  bne  $t3, $t2, label1153
  j label1152
  label1152 :
  li $t4, 1
  sw  $t4, -3476($fp)
  label1153 :
  mul $t5, $t7, $t6
  sw  $t5, -3480($fp)
  li $t0, 0
  sw  $t0, -3484($fp)
  bne  $t2, $t1, label1154
  j label1156
  label1156 :
  bne  $t4, $t3, label1154
  j label1155
  label1154 :
  li $t5, 1
  sw  $t5, -3484($fp)
  label1155 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -3488($fp)
  addi  $sp, $sp, 8
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -3492($fp)
  bne  $t6, $t5, label1149
  j label1150
  label1149 :
  sub  $t7, $t1, $t0
  sw  $t7, -3496($fp)
  lw $t2, 0($t3)
  sw  $t2, -3500($fp)
  sub $t4, $t5, 11440
  sw  $t4, -3504($fp)
  li $t6, 0
  sw  $t6, -3508($fp)
  bne  $t0, $t7, label1161
  j label1160
  label1160 :
  li $t1, 1
  sw  $t1, -3508($fp)
  label1161 :
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -3512($fp)
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -3516($fp)
  add $t2, $t4, $t3
  sw  $t2, -3520($fp)
  bne  $t6, $t5, label1157
  j label1158
  label1157 :
  label1162 :
  sub $t7, $t0, 3905
  sub $t7, $t2, $t1
  sw  $t7, -3524($fp)
  add $t3, $t4, 128508994
  sw  $t3, -3528($fp)
  bne  $t6, $t5, label1163
  j label1165
  label1165 :
  li $t7, 0
  sw  $t7, -3532($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -3536($fp)
  bne  $t4, $t3, label1166
  j label1167
  label1166 :
  li $t5, 1
  sw  $t5, -3532($fp)
  label1167 :
  mul $t6, $t0, $t7
  sw  $t6, -3540($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3544($fp)
  lw $t4, 0($t5)
  sw  $t4, -3548($fp)
  beq  $t7, $t6, label1163
  j label1164
  label1163 :
  add $t0, $t1, 41707
  add $t0, $t3, $t2
  sw  $t0, -3552($fp)
  mul $t4, $t6, $t5
  sw  $t4, -3556($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -3560($fp)
  lw $t2, 0($t3)
  sw  $t2, -3564($fp)
  li $t4, 0
  sw  $t4, -3568($fp)
  sub  $t5, $t7, $t6
  sw  $t5, -3572($fp)
  lw $t0, 0($t1)
  sw  $t0, -3576($fp)
  bne  $t3, $t2, label1169
  j label1168
  label1168 :
  li $t4, 1
  sw  $t4, -3568($fp)
  label1169 :
  div $t7, $t6
  mflo $t5
  sw  $t5, -3580($fp)
  add $t0, $t2, $t1
  sw  $t0, -3584($fp)
  j label1162
  label1164 :
  j label1159
  label1158 :
  li $t3, 0
  sw  $t3, -3588($fp)
  li $t4, 0
  sw  $t4, -3592($fp)
  beq  $t6, $t5, label1172
  j label1173
  label1172 :
  li $t7, 1
  sw  $t7, -3592($fp)
  label1173 :
  sub  $t0, $t2, $t1
  sw  $t0, -3596($fp)
  lw $t3, 0($t4)
  sw  $t3, -3600($fp)
  li $t5, 0
  sw  $t5, -3604($fp)
  mul $t6, $t0, $t7
  sw  $t6, -3608($fp)
  beq  $t2, $t1, label1174
  j label1175
  label1174 :
  li $t3, 1
  sw  $t3, -3604($fp)
  label1175 :
  li $t4, 0
  sw  $t4, -3612($fp)
  li $t5, 0
  sw  $t5, -3616($fp)
  bne  $t7, $t6, label1179
  j label1178
  label1178 :
  li $t0, 1
  sw  $t0, -3616($fp)
  label1179 :
  blt  $t2, $t1, label1176
  j label1177
  label1176 :
  li $t3, 1
  sw  $t3, -3612($fp)
  label1177 :
  li $t4, 0
  sw  $t4, -3620($fp)
  bne  $t6, $t5, label1181
  j label1180
  label1180 :
  li $t7, 1
  sw  $t7, -3620($fp)
  label1181 :
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -3624($fp)
  li $t4, 0
  sw  $t4, -3628($fp)
  ble  $t6, $t5, label1184
  j label1183
  label1184 :
  bne  $t0, $t7, label1182
  j label1183
  label1182 :
  li $t1, 1
  sw  $t1, -3628($fp)
  label1183 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -3632($fp)
  addi  $sp, $sp, 20
  li $t0, 0
  sw  $t0, -3636($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -3640($fp)
  lw $t4, 0($t5)
  sw  $t4, -3644($fp)
  bne  $t7, $t6, label1186
  j label1185
  label1185 :
  li $t0, 1
  sw  $t0, -3636($fp)
  label1186 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -3648($fp)
  addi  $sp, $sp, 12
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -3652($fp)
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -3656($fp)
  li $t5, 0
  sw  $t5, -3660($fp)
  bne  $t7, $t6, label1188
  j label1187
  label1187 :
  li $t0, 1
  sw  $t0, -3660($fp)
  label1188 :
  mul $t1, $t3, $t2
  sw  $t1, -3664($fp)
  bge  $t5, $t4, label1170
  j label1171
  label1170 :
  li $t6, 1
  sw  $t6, -3588($fp)
  label1171 :
  move  $v0, $t7
  addiu  $sp, $sp, 4436
  jr  $ra
  label1159 :
  j label1151
  label1150 :
  li $t0, 0
  sw  $t0, -3668($fp)
  mul $t1, $t3, $t2
  sw  $t1, -3672($fp)
  bne  $t5, $t4, label1192
  j label1193
  label1192 :
  li $t6, 1
  sw  $t6, -3668($fp)
  label1193 :
  move $t7, $t0
  sw  $t7, -508($fp)
  bne  $t2, $t1, label1189
  j label1190
  label1189 :
  li $t3, 18287
  sw  $t3, -3676($fp)
  li $t4, 57682
  sw  $t4, -3680($fp)
  li $t5, 55169
  sw  $t5, -3684($fp)
  li $t6, 36210
  sw  $t6, -3688($fp)
  li $t7, 10726
  sw  $t7, -3692($fp)
  label1196 :
  li $t0, 0
  sw  $t0, -3696($fp)
  li $t1, 0
  sw  $t1, -3700($fp)
  sub $t2, $t3, 0
  sub $t2, $t5, $t4
  sw  $t2, -3704($fp)
  bne  $t7, $t6, label1202
  j label1201
  label1201 :
  li $t0, 1
  sw  $t0, -3700($fp)
  label1202 :
  li $t1, 0
  sw  $t1, -3708($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -3712($fp)
  addi  $sp, $sp, 0
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -3716($fp)
  li $t7, 6088
  sw  $t7, -296($fp)
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -3720($fp)
  div $t6, $t5
  mflo $t4
  sw  $t4, -3724($fp)
  li $t7, 0
  sw  $t7, -3728($fp)
  sub $t0, $t2, $t1
  sw  $t0, -3732($fp)
  bne  $t4, $t3, label1205
  j label1206
  label1205 :
  li $t5, 1
  sw  $t5, -3728($fp)
  label1206 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -3736($fp)
  addi  $sp, $sp, 20
  bne  $t5, $t4, label1204
  j label1203
  label1203 :
  li $t6, 1
  sw  $t6, -3708($fp)
  label1204 :
  li $t7, 0
  sw  $t7, -3740($fp)
  bne  $t1, $t0, label1207
  j label1208
  label1207 :
  li $t2, 1
  sw  $t2, -3740($fp)
  label1208 :
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -3744($fp)
  addi  $sp, $sp, 8
  bge  $t7, $t6, label1199
  j label1200
  label1199 :
  li $t0, 1
  sw  $t0, -3696($fp)
  label1200 :
  mul $t1, $t3, $t2
  sw  $t1, -3748($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3752($fp)
  lw $t7, 0($t0)
  sw  $t7, -3756($fp)
  bne  $t2, $t1, label1197
  j label1198
  label1197 :
  li $t3, 0
  sw  $t3, -3760($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -3764($fp)
  lw $t7, 0($t0)
  sw  $t7, -3768($fp)
  bne  $t2, $t1, label1209
  j label1211
  label1211 :
  blt  $t4, $t3, label1209
  j label1210
  label1209 :
  li $t5, 1
  sw  $t5, -3760($fp)
  label1210 :
  move $t6, $t7
  sw  $t6, 16($fp)
  j label1196
  label1198 :
  li $t0, 0
  sw  $t0, -3772($fp)
  bne  $t2, $t1, label1220
  j label1219
  label1219 :
  li $t3, 1
  sw  $t3, -3772($fp)
  label1220 :
  div $t6, $t5
  mflo $t4
  sw  $t4, -3776($fp)
  bne  $t0, $t7, label1218
  j label1217
  label1218 :
  li $t1, 0
  sw  $t1, -3780($fp)
  ble  $t3, $t2, label1221
  j label1222
  label1221 :
  li $t4, 1
  sw  $t4, -3780($fp)
  label1222 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -3784($fp)
  addi  $sp, $sp, 4
  sub $t7, $t0, 48290
  sw  $t7, -3788($fp)
  bne  $t2, $t1, label1215
  j label1217
  label1217 :
  bne  $t4, $t3, label1216
  j label1215
  label1215 :
  li $t5, 0
  sw  $t5, -3792($fp)
  li $t6, 0
  sw  $t6, -3796($fp)
  bge  $t0, $t7, label1225
  j label1226
  label1225 :
  li $t1, 1
  sw  $t1, -3796($fp)
  label1226 :
  bne  $t3, $t2, label1223
  j label1224
  label1223 :
  li $t4, 1
  sw  $t4, -3792($fp)
  label1224 :
  move $t5, $t6
  sw  $t5, -3692($fp)
  label1216 :
  li $t7, 0
  sw  $t7, -3800($fp)
  sub $t0, $t1, 0
  sub $t0, $t3, $t2
  sw  $t0, -3804($fp)
  bne  $t5, $t4, label1234
  j label1235
  label1234 :
  li $t6, 1
  sw  $t6, -3800($fp)
  label1235 :
  mul $t7, $t1, $t0
  sw  $t7, -3808($fp)
  mul $t2, $t4, $t3
  sw  $t2, -3812($fp)
  add $t5, $t7, $t6
  sw  $t5, -3816($fp)
  li $t0, 0
  sw  $t0, -3820($fp)
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -3824($fp)
  bne  $t6, $t5, label1237
  j label1236
  label1236 :
  li $t7, 1
  sw  $t7, -3820($fp)
  label1237 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -3828($fp)
  addi  $sp, $sp, 0
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -3832($fp)
  li $t5, 0
  sw  $t5, -3836($fp)
  beq  $t7, $t6, label1238
  j label1239
  label1238 :
  li $t0, 1
  sw  $t0, -3836($fp)
  label1239 :
  li $t1, 0
  sw  $t1, -3840($fp)
  beq  $t3, $t2, label1240
  j label1241
  label1240 :
  li $t4, 1
  sw  $t4, -3840($fp)
  label1241 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -3844($fp)
  addi  $sp, $sp, 20
  bne  $t4, $t3, label1231
  j label1232
  label1231 :
  move $t5, $t6
  sw  $t5, -3688($fp)
  j label1233
  label1232 :
  li $t7, 0
  sw  $t7, -3848($fp)
  li $t0, 5378
  sw  $t0, -624($fp)
  li $t1, 0
  sw  $t1, -3852($fp)
  sub $t2, $t4, $t3
  sw  $t2, -3856($fp)
  bne  $t6, $t5, label1246
  j label1245
  label1246 :
  bne  $t0, $t7, label1244
  j label1245
  label1244 :
  li $t1, 1
  sw  $t1, -3852($fp)
  label1245 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -3860($fp)
  addi  $sp, $sp, 12
  div $t0, $t7
  mflo $t6
  sw  $t6, -3864($fp)
  ble  $t2, $t1, label1242
  j label1243
  label1242 :
  li $t3, 1
  sw  $t3, -3848($fp)
  label1243 :
  label1233 :
  j label1191
  label1190 :
  bne  $t5, $t4, label1247
  j label1248
  label1247 :
  li $t6, 0
  sw  $t6, -3868($fp)
  bne  $t0, $t7, label1250
  j label1254
  label1254 :
  bge  $t2, $t1, label1250
  j label1253
  label1253 :
  li $t3, 0
  sw  $t3, -3872($fp)
  bne  $t5, $t4, label1256
  j label1255
  label1255 :
  li $t6, 1
  sw  $t6, -3872($fp)
  label1256 :
  div $t1, $t0
  mflo $t7
  sw  $t7, -3876($fp)
  bne  $t3, $t2, label1250
  j label1252
  label1252 :
  sub $t4, $t5, 49265
  sw  $t4, -3880($fp)
  sub $t6, $t0, $t7
  sw  $t6, -3884($fp)
  mul $t1, $t3, $t2
  sw  $t1, -3888($fp)
  bgt  $t5, $t4, label1250
  j label1251
  label1250 :
  li $t6, 1
  sw  $t6, -3868($fp)
  label1251 :
  j label1249
  label1248 :
  li $t7, 0
  sw  $t7, -3892($fp)
  li $t0, 0
  sw  $t0, -3896($fp)
  bne  $t2, $t1, label1261
  j label1260
  label1260 :
  li $t3, 1
  sw  $t3, -3896($fp)
  label1261 :
  beq  $t5, $t4, label1257
  j label1259
  label1259 :
  bne  $t7, $t6, label1258
  j label1257
  label1257 :
  li $t0, 1
  sw  $t0, -3892($fp)
  label1258 :
  move $t1, $t2
  sw  $t1, -544($fp)
  move  $v0, $t3
  addiu  $sp, $sp, 4436
  jr  $ra
  label1249 :
  label1191 :
  label1151 :
  j label1067
  label1066 :
  li $t4, 0
  sw  $t4, -3900($fp)
  li $t5, 0
  sw  $t5, -3904($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t6, $v0
  sw  $t6, -3908($fp)
  addi  $sp, $sp, 0
  blt  $t0, $t7, label1269
  j label1270
  label1269 :
  li $t1, 1
  sw  $t1, -3904($fp)
  label1270 :
  li $t2, 0
  sw  $t2, -3912($fp)
  beq  $t4, $t3, label1271
  j label1272
  label1271 :
  li $t5, 1
  sw  $t5, -3912($fp)
  label1272 :
  li $t6, 53447
  sw  $t6, -636($fp)
  li $t7, 0
  sw  $t7, -3916($fp)
  bne  $t1, $t0, label1274
  j label1273
  label1273 :
  li $t2, 1
  sw  $t2, -3916($fp)
  label1274 :
  mul $t3, $t5, $t4
  sw  $t3, -3920($fp)
  li $t6, 0
  sw  $t6, -3924($fp)
  bne  $t0, $t7, label1278
  j label1277
  label1278 :
  bne  $t2, $t1, label1275
  j label1277
  label1277 :
  bne  $t4, $t3, label1275
  j label1276
  label1275 :
  li $t5, 1
  sw  $t5, -3924($fp)
  label1276 :
  li $t6, 0
  sw  $t6, -3928($fp)
  bne  $t0, $t7, label1279
  j label1282
  label1282 :
  bne  $t2, $t1, label1279
  j label1281
  label1281 :
  bne  $t4, $t3, label1279
  j label1280
  label1279 :
  li $t5, 1
  sw  $t5, -3928($fp)
  label1280 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -3932($fp)
  addi  $sp, $sp, 20
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -3936($fp)
  li $t0, 0
  sw  $t0, -3940($fp)
  bne  $t2, $t1, label1284
  j label1283
  label1283 :
  li $t3, 1
  sw  $t3, -3940($fp)
  label1284 :
  sub $t4, $t6, $t5
  sw  $t4, -3944($fp)
  blt  $t0, $t7, label1267
  j label1268
  label1267 :
  li $t1, 1
  sw  $t1, -3900($fp)
  label1268 :
  move  $v0, $t2
  addiu  $sp, $sp, 4436
  jr  $ra
  label1067 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3948($fp)
  lw $t6, 0($t7)
  sw  $t6, -3952($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3956($fp)
  lw $t4, 0($t5)
  sw  $t4, -3960($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3964($fp)
  lw $t2, 0($t3)
  sw  $t2, -3968($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -3972($fp)
  lw $t0, 0($t1)
  sw  $t0, -3976($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -3980($fp)
  lw $t6, 0($t7)
  sw  $t6, -3984($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -3988($fp)
  lw $t4, 0($t5)
  sw  $t4, -3992($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -3996($fp)
  lw $t2, 0($t3)
  sw  $t2, -4000($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4004($fp)
  lw $t0, 0($t1)
  sw  $t0, -4008($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4012($fp)
  lw $t6, 0($t7)
  sw  $t6, -4016($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4020($fp)
  lw $t4, 0($t5)
  sw  $t4, -4024($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -4028($fp)
  lw $t3, 0($t4)
  sw  $t3, -4032($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4036($fp)
  lw $t1, 0($t2)
  sw  $t1, -4040($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4044($fp)
  lw $t7, 0($t0)
  sw  $t7, -4048($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4052($fp)
  lw $t5, 0($t6)
  sw  $t5, -4056($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -4060($fp)
  lw $t3, 0($t4)
  sw  $t3, -4064($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4068($fp)
  lw $t1, 0($t2)
  sw  $t1, -4072($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4076($fp)
  lw $t7, 0($t0)
  sw  $t7, -4080($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4084($fp)
  lw $t5, 0($t6)
  sw  $t5, -4088($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4092($fp)
  lw $t5, 0($t6)
  sw  $t5, -4096($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -4100($fp)
  lw $t3, 0($t4)
  sw  $t3, -4104($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4108($fp)
  lw $t1, 0($t2)
  sw  $t1, -4112($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4116($fp)
  lw $t4, 0($t5)
  sw  $t4, -4120($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4124($fp)
  lw $t2, 0($t3)
  sw  $t2, -4128($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4132($fp)
  lw $t0, 0($t1)
  sw  $t0, -4136($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4140($fp)
  lw $t6, 0($t7)
  sw  $t6, -4144($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4148($fp)
  lw $t0, 0($t1)
  sw  $t0, -4152($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4156($fp)
  lw $t6, 0($t7)
  sw  $t6, -4160($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4164($fp)
  lw $t4, 0($t5)
  sw  $t4, -4168($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4172($fp)
  lw $t2, 0($t3)
  sw  $t2, -4176($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4180($fp)
  lw $t0, 0($t1)
  sw  $t0, -4184($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4188($fp)
  lw $t6, 0($t7)
  sw  $t6, -4192($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4196($fp)
  lw $t0, 0($t1)
  sw  $t0, -4200($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4204($fp)
  lw $t6, 0($t7)
  sw  $t6, -4208($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4212($fp)
  lw $t4, 0($t5)
  sw  $t4, -4216($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4220($fp)
  lw $t2, 0($t3)
  sw  $t2, -4224($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4228($fp)
  lw $t0, 0($t1)
  sw  $t0, -4232($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4236($fp)
  lw $t6, 0($t7)
  sw  $t6, -4240($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4244($fp)
  lw $t4, 0($t5)
  sw  $t4, -4248($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4252($fp)
  lw $t2, 0($t3)
  sw  $t2, -4256($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -4260($fp)
  lw $t0, 0($t1)
  sw  $t0, -4264($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4268($fp)
  lw $t6, 0($t7)
  sw  $t6, -4272($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4276($fp)
  lw $t4, 0($t5)
  sw  $t4, -4280($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4284($fp)
  lw $t2, 0($t3)
  sw  $t2, -4288($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4292($fp)
  lw $t1, 0($t2)
  sw  $t1, -4296($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4300($fp)
  lw $t7, 0($t0)
  sw  $t7, -4304($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4308($fp)
  lw $t5, 0($t6)
  sw  $t5, -4312($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4316($fp)
  lw $t1, 0($t2)
  sw  $t1, -4320($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4324($fp)
  lw $t7, 0($t0)
  sw  $t7, -4328($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4332($fp)
  lw $t5, 0($t6)
  sw  $t5, -4336($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -4340($fp)
  lw $t3, 0($t4)
  sw  $t3, -4344($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4348($fp)
  lw $t1, 0($t2)
  sw  $t1, -4352($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4356($fp)
  lw $t7, 0($t0)
  sw  $t7, -4360($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -4364($fp)
  lw $t5, 0($t6)
  sw  $t5, -4368($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -4372($fp)
  lw $t3, 0($t4)
  sw  $t3, -4376($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -4380($fp)
  lw $t1, 0($t2)
  sw  $t1, -4384($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -4388($fp)
  lw $t7, 0($t0)
  sw  $t7, -4392($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -4396($fp)
  lw $t6, 0($t7)
  sw  $t6, -4400($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -4404($fp)
  lw $t4, 0($t5)
  sw  $t4, -4408($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -4412($fp)
  lw $t2, 0($t3)
  sw  $t2, -4416($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t4, 0
  sw  $t4, -4420($fp)
  li $t5, 0
  sw  $t5, -4424($fp)
  bgt  $t7, $t6, label1287
  j label1288
  label1287 :
  li $t0, 1
  sw  $t0, -4424($fp)
  label1288 :
  bne  $t2, $t1, label1285
  j label1286
  label1285 :
  li $t3, 1
  sw  $t3, -4420($fp)
  label1286 :
  li $t4, 58379
  sw  $t4, -472($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -4428($fp)
  addi  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $t0, 0($sp)
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -4432($fp)
  addi  $sp, $sp, 8
  move  $v0, $t3
  addiu  $sp, $sp, 4436
  jr  $ra
id_ran3t4V_:
  move  $fp, $sp
  subu  $sp, $sp, 664
  li $t4, 48348
  sw  $t4, -44($fp)
  li $t5, 62929
  sw  $t5, -48($fp)
  li $t6, 43793
  sw  $t6, -52($fp)
  li $t7, 61671
  sw  $t7, -56($fp)
  li $t0, 17524
  sw  $t0, -60($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -64($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -68($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -72($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -76($fp)
  sw $t4, 0($t3)
  li $t5, 35442
  sw  $t5, -80($fp)
  li $t6, 37795
  sw  $t6, -84($fp)
  li $t7, 10487
  sw  $t7, -88($fp)
  li $t0, 14463
  sw  $t0, -92($fp)
  li $t1, 44833
  sw  $t1, -96($fp)
  li $t2, 53665
  sw  $t2, -100($fp)
  li $t3, 29694
  sw  $t3, -104($fp)
  li $t4, 62598
  sw  $t4, -108($fp)
  li $t5, 37394
  sw  $t5, -112($fp)
  li $t6, 63911
  sw  $t6, -116($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -120($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -124($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -128($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -132($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -136($fp)
  sw $t7, 0($t6)
  li $t0, 23062
  sw  $t0, -140($fp)
  li $t1, 31393
  sw  $t1, -144($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -148($fp)
  sw $t6, 0($t5)
  li $t7, 34569
  sw  $t7, -152($fp)
  li $t0, 52721
  sw  $t0, -156($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -160($fp)
  sub $t4, $t6, $t5
  sw  $t4, -164($fp)
  mul $t7, $t1, $t0
  sw  $t7, -168($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -172($fp)
  lw $t5, 0($t6)
  sw  $t5, -176($fp)
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -180($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -184($fp)
  addi  $sp, $sp, 8
  li $t6, 0
  sw  $t6, -188($fp)
  bgt  $t0, $t7, label1289
  j label1290
  label1289 :
  li $t1, 1
  sw  $t1, -188($fp)
  label1290 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -192($fp)
  addi  $sp, $sp, 20
  sub $t0, $t1, 61234
  sw  $t0, -196($fp)
  li $t2, 27313
  sw  $t2, 12($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -200($fp)
  lw $t6, 0($t7)
  sw  $t6, -204($fp)
  div $t2, $t1
  mflo $t0
  sw  $t0, -208($fp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_B
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -212($fp)
  addi  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -216($fp)
  addi  $sp, $sp, 8
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -220($fp)
  div $t7, $t6
  mflo $t5
  sw  $t5, -224($fp)
  li $t0, 0
  sw  $t0, -228($fp)
  sub  $t1, $t3, $t2
  sw  $t1, -232($fp)
  lw $t4, 0($t5)
  sw  $t4, -236($fp)
  bne  $t7, $t6, label1292
  j label1291
  label1291 :
  li $t0, 1
  sw  $t0, -228($fp)
  label1292 :
  move $t1, $t2
  sw  $t1, 8($fp)
  move $t3, $t4
  sw  $t3, -48($fp)
  mul $t5, $t7, $t6
  sw  $t5, -240($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -244($fp)
  lw $t3, 0($t4)
  sw  $t3, -248($fp)
  mul $t5, $t7, $t6
  sw  $t5, -252($fp)
  li $t0, 0
  sw  $t0, -256($fp)
  mul $t1, $t3, $t2
  sw  $t1, -260($fp)
  bne  $t5, $t4, label1298
  j label1296
  label1298 :
  li $t6, 48409
  sw  $t6, -60($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -264($fp)
  li $t2, 0
  sw  $t2, -268($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -272($fp)
  bne  $t0, $t7, label1299
  j label1301
  label1301 :
  bne  $t2, $t1, label1299
  j label1300
  label1299 :
  li $t3, 1
  sw  $t3, -268($fp)
  label1300 :
  sub  $t4, $t6, $t5
  sw  $t4, -276($fp)
  lw $t7, 0($t0)
  sw  $t7, -280($fp)
  sub $t1, $t3, $t2
  sw  $t1, -284($fp)
  li $t4, 0
  sw  $t4, -288($fp)
  ble  $t6, $t5, label1302
  j label1304
  label1304 :
  bne  $t0, $t7, label1302
  j label1303
  label1302 :
  li $t1, 1
  sw  $t1, -288($fp)
  label1303 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_cr3Ra
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -292($fp)
  addi  $sp, $sp, 20
  bne  $t1, $t0, label1297
  j label1296
  label1297 :
  mul $t2, $t4, $t3
  sw  $t2, -296($fp)
  bne  $t6, $t5, label1295
  j label1296
  label1295 :
  li $t7, 1
  sw  $t7, -256($fp)
  label1296 :
  mul $t0, $t2, $t1
  sw  $t0, -300($fp)
  div $t5, $t4
  mflo $t3
  sw  $t3, -304($fp)
  div $t0, $t7
  mflo $t6
  sw  $t6, -308($fp)
  sub $t1, $t2, 9811
  sub $t1, $t4, $t3
  sw  $t1, -312($fp)
  add $t5, $t7, $t6
  sw  $t5, -316($fp)
  bge  $t1, $t0, label1307
  j label1306
  label1307 :
  li $t2, 0
  sw  $t2, -320($fp)
  bne  $t4, $t3, label1309
  j label1308
  label1308 :
  li $t5, 1
  sw  $t5, -320($fp)
  label1309 :
  sub $t6, $t7, 0
  sub $t6, $t1, $t0
  sw  $t6, -324($fp)
  bne  $t3, $t2, label1305
  j label1306
  label1305 :
  li $t4, 0
  sw  $t4, -328($fp)
  li $t5, 0
  sw  $t5, -332($fp)
  mul $t6, $t0, $t7
  sw  $t6, -336($fp)
  sub $t1, $t2, 0
  sw  $t1, -340($fp)
  bne  $t4, $t3, label1312
  j label1313
  label1312 :
  li $t5, 1
  sw  $t5, -332($fp)
  label1313 :
  li $t6, 0
  sw  $t6, -344($fp)
  bne  $t0, $t7, label1315
  j label1314
  label1314 :
  li $t1, 1
  sw  $t1, -344($fp)
  label1315 :
  bge  $t3, $t2, label1310
  j label1311
  label1310 :
  li $t4, 1
  sw  $t4, -328($fp)
  label1311 :
  move  $v0, $t5
  addiu  $sp, $sp, 664
  jr  $ra
  li $t6, 0
  sw  $t6, -348($fp)
  mul $t7, $t1, $t0
  sw  $t7, -352($fp)
  sub  $t2, $t4, $t3
  sw  $t2, -356($fp)
  lw $t5, 0($t6)
  sw  $t5, -360($fp)
  li $t7, 0
  sw  $t7, -364($fp)
  bne  $t1, $t0, label1319
  j label1320
  label1320 :
  bne  $t3, $t2, label1318
  j label1319
  label1318 :
  li $t4, 1
  sw  $t4, -364($fp)
  label1319 :
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -368($fp)
  addi  $sp, $sp, 8
  bne  $t1, $t0, label1317
  j label1316
  label1316 :
  li $t2, 1
  sw  $t2, -348($fp)
  label1317 :
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -372($fp)
  label1306 :
  li $t7, 0
  sw  $t7, -376($fp)
  li $t0, 0
  sw  $t0, -380($fp)
  li $t1, 0
  sw  $t1, -384($fp)
  ble  $t3, $t2, label1325
  j label1326
  label1325 :
  li $t4, 1
  sw  $t4, -384($fp)
  label1326 :
  bge  $t6, $t5, label1323
  j label1324
  label1323 :
  li $t7, 1
  sw  $t7, -380($fp)
  label1324 :
  li $t0, 0
  sw  $t0, -388($fp)
  bne  $t2, $t1, label1328
  j label1327
  label1327 :
  li $t3, 1
  sw  $t3, -388($fp)
  label1328 :
  sub $t4, $t5, 0
  sub $t4, $t7, $t6
  sw  $t4, -392($fp)
  li $t0, 0
  sw  $t0, -396($fp)
  sub $t1, $t2, 52368
  sw  $t1, -400($fp)
  blt  $t4, $t3, label1329
  j label1330
  label1329 :
  li $t5, 1
  sw  $t5, -396($fp)
  label1330 :
  li $t6, 0
  sw  $t6, -404($fp)
  beq  $t0, $t7, label1331
  j label1332
  label1331 :
  li $t1, 1
  sw  $t1, -404($fp)
  label1332 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_v1
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -408($fp)
  addi  $sp, $sp, 20
  bne  $t1, $t0, label1322
  j label1321
  label1321 :
  li $t2, 1
  sw  $t2, -376($fp)
  label1322 :
  mul $t3, $t5, $t4
  sw  $t3, -412($fp)
  sub  $t6, $t0, $t7
  sw  $t6, -416($fp)
  lw $t1, 0($t2)
  sw  $t1, -420($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -424($fp)
  li $t7, 0
  sw  $t7, -428($fp)
  bne  $t1, $t0, label1333
  j label1334
  label1333 :
  li $t2, 1
  sw  $t2, -428($fp)
  label1334 :
  move $t3, $t4
  sw  $t3, -144($fp)
  move $t5, $t6
  sw  $t5, -60($fp)
  li $t7, 0
  sw  $t7, -432($fp)
  li $t0, 0
  sw  $t0, -436($fp)
  bne  $t2, $t1, label1344
  j label1343
  label1343 :
  li $t3, 1
  sw  $t3, -436($fp)
  label1344 :
  mul $t4, $t6, $t5
  sw  $t4, -440($fp)
  sub  $t7, $t1, $t0
  sw  $t7, -444($fp)
  lw $t2, 0($t3)
  sw  $t2, -448($fp)
  mul $t4, $t6, $t5
  sw  $t4, -452($fp)
  div $t1, $t0
  mflo $t7
  sw  $t7, -456($fp)
  mul $t2, $t4, $t3
  sw  $t2, -460($fp)
  add $t5, $t7, $t6
  sw  $t5, -464($fp)
  beq  $t1, $t0, label1341
  j label1342
  label1341 :
  li $t2, 1
  sw  $t2, -432($fp)
  label1342 :
  add $t3, $t5, $t4
  sw  $t3, -468($fp)
  li $t6, 0
  sw  $t6, -472($fp)
  li $t7, 0
  sw  $t7, -476($fp)
  bge  $t1, $t0, label1350
  j label1351
  label1350 :
  li $t2, 1
  sw  $t2, -476($fp)
  label1351 :
  move $t3, $t4
  sw  $t3, -60($fp)
  addi  $sp, $sp, -4
  sw  $t5, 0($sp)
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_OAYxiBjEU
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t7, $v0
  sw  $t7, -480($fp)
  addi  $sp, $sp, 8
  bne  $t1, $t0, label1349
  j label1348
  label1348 :
  li $t2, 1
  sw  $t2, -472($fp)
  label1349 :
  beq  $t4, $t3, label1345
  j label1346
  label1345 :
  li $t5, 0
  sw  $t5, -484($fp)
  blt  $t7, $t6, label1355
  j label1356
  label1355 :
  li $t0, 1
  sw  $t0, -484($fp)
  label1356 :
  mul $t1, $t3, $t2
  sw  $t1, -488($fp)
  sub  $t4, $t6, $t5
  sw  $t4, -492($fp)
  lw $t7, 0($t0)
  sw  $t7, -496($fp)
  bne  $t2, $t1, label1352
  j label1353
  label1352 :
  label1357 :
  li $t3, 0
  sw  $t3, -500($fp)
  li $t4, 0
  sw  $t4, -504($fp)
  bne  $t6, $t5, label1362
  j label1364
  label1364 :
  bne  $t0, $t7, label1362
  j label1363
  label1362 :
  li $t1, 1
  sw  $t1, -504($fp)
  label1363 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_HusWF
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -508($fp)
  addi  $sp, $sp, 4
  bne  $t5, $t4, label1361
  j label1360
  label1360 :
  li $t6, 1
  sw  $t6, -500($fp)
  label1361 :
  sub $t7, $t0, 0
  sub $t7, $t2, $t1
  sw  $t7, -512($fp)
  sub $t3, $t4, 0
  sub $t3, $t6, $t5
  sw  $t3, -516($fp)
  bne  $t0, $t7, label1358
  j label1359
  label1358 :
  li $t1, 0
  sw  $t1, -520($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_Mdvzosjy
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t2, $v0
  sw  $t2, -524($fp)
  addi  $sp, $sp, 0
  bne  $t4, $t3, label1367
  j label1365
  label1367 :
  add $t5, $t7, $t6
  sw  $t5, -528($fp)
  bne  $t1, $t0, label1369
  j label1366
  label1369 :
  bne  $t3, $t2, label1368
  j label1366
  label1368 :
  beq  $t5, $t4, label1365
  j label1366
  label1365 :
  li $t6, 1
  sw  $t6, -520($fp)
  label1366 :
  j label1357
  label1359 :
  j label1354
  label1353 :
  li $t7, 0
  sw  $t7, -532($fp)
  bne  $t1, $t0, label1370
  j label1372
  label1372 :
  bne  $t3, $t2, label1370
  j label1371
  label1370 :
  li $t4, 1
  sw  $t4, -532($fp)
  label1371 :
  mul $t5, $t7, $t6
  sw  $t5, -536($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -540($fp)
  lw $t3, 0($t4)
  sw  $t3, -544($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -548($fp)
  div $t3, $t2
  mflo $t1
  sw  $t1, -552($fp)
  label1354 :
  j label1347
  label1346 :
  li $t4, 0
  sw  $t4, -556($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -560($fp)
  ble  $t2, $t1, label1373
  j label1374
  label1373 :
  li $t3, 1
  sw  $t3, -556($fp)
  label1374 :
  move  $v0, $t4
  addiu  $sp, $sp, 664
  jr  $ra
  label1347 :
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -564($fp)
  lw $t5, 0($t6)
  sw  $t5, -568($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -572($fp)
  lw $t3, 0($t4)
  sw  $t3, -576($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -580($fp)
  lw $t1, 0($t2)
  sw  $t1, -584($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -588($fp)
  lw $t7, 0($t0)
  sw  $t7, -592($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -596($fp)
  lw $t7, 0($t0)
  sw  $t7, -600($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t2, $t4, $t3
  sw  $t2, -604($fp)
  lw $t5, 0($t6)
  sw  $t5, -608($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t7
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t0, $t2, $t1
  sw  $t0, -612($fp)
  lw $t3, 0($t4)
  sw  $t3, -616($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t5
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t6, $t0, $t7
  sw  $t6, -620($fp)
  lw $t1, 0($t2)
  sw  $t1, -624($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -628($fp)
  lw $t7, 0($t0)
  sw  $t7, -632($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t3
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t4, $t6, $t5
  sw  $t4, -636($fp)
  lw $t7, 0($t0)
  sw  $t7, -640($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  li $t3, 0
  sw  $t3, -644($fp)
  li $t4, 0
  sw  $t4, -648($fp)
  bne  $t6, $t5, label1378
  j label1377
  label1377 :
  li $t7, 1
  sw  $t7, -648($fp)
  label1378 :
  move $t0, $t1
  sw  $t0, -152($fp)
  li $t2, 0
  sw  $t2, -652($fp)
  li $t3, 0
  sw  $t3, -656($fp)
  bne  $t5, $t4, label1381
  j label1382
  label1381 :
  li $t6, 1
  sw  $t6, -656($fp)
  label1382 :
  beq  $t0, $t7, label1379
  j label1380
  label1379 :
  li $t1, 1
  sw  $t1, -652($fp)
  label1380 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -660($fp)
  addi  $sp, $sp, 8
  blt  $t6, $t5, label1375
  j label1376
  label1375 :
  li $t7, 1
  sw  $t7, -644($fp)
  label1376 :
  move  $v0, $t0
  addiu  $sp, $sp, 664
  jr  $ra
id_ay01NA2qrB:
  move  $fp, $sp
  subu  $sp, $sp, 332
  sub  $t1, $t3, $t2
  sw  $t1, -44($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -48($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -52($fp)
  sw $t7, 0($t6)
  sub  $t0, $t2, $t1
  sw  $t0, -56($fp)
  sw $t4, 0($t3)
  sub  $t5, $t7, $t6
  sw  $t5, -60($fp)
  sw $t1, 0($t0)
  sub  $t2, $t4, $t3
  sw  $t2, -64($fp)
  sw $t6, 0($t5)
  sub  $t7, $t1, $t0
  sw  $t7, -68($fp)
  sw $t3, 0($t2)
  sub  $t4, $t6, $t5
  sw  $t4, -72($fp)
  sw $t0, 0($t7)
  sub  $t1, $t3, $t2
  sw  $t1, -76($fp)
  sw $t5, 0($t4)
  sub  $t6, $t0, $t7
  sw  $t6, -80($fp)
  sw $t2, 0($t1)
  sub  $t3, $t5, $t4
  sw  $t3, -84($fp)
  lw $t6, 0($t7)
  sw  $t6, -88($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -92($fp)
  lw $t4, 0($t5)
  sw  $t4, -96($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -100($fp)
  lw $t2, 0($t3)
  sw  $t2, -104($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -108($fp)
  lw $t0, 0($t1)
  sw  $t0, -112($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -116($fp)
  lw $t6, 0($t7)
  sw  $t6, -120($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -124($fp)
  lw $t4, 0($t5)
  sw  $t4, -128($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -132($fp)
  lw $t2, 0($t3)
  sw  $t2, -136($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -140($fp)
  lw $t0, 0($t1)
  sw  $t0, -144($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -148($fp)
  lw $t6, 0($t7)
  sw  $t6, -152($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -156($fp)
  lw $t4, 0($t5)
  sw  $t4, -160($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move $t7, $t0
  sw  $t7, 12($fp)
  move  $v0, $t1
  addiu  $sp, $sp, 332
  jr  $ra
  label1383 :
  li $t2, 0
  sw  $t2, -164($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -168($fp)
  lw $t6, 0($t7)
  sw  $t6, -172($fp)
  bne  $t1, $t0, label1386
  j label1388
  label1388 :
  li $t2, 0
  sw  $t2, -176($fp)
  bne  $t4, $t3, label1390
  j label1389
  label1389 :
  li $t5, 1
  sw  $t5, -176($fp)
  label1390 :
  sub $t6, $t7, 33361
  sw  $t6, -180($fp)
  mul $t0, $t2, $t1
  sw  $t0, -184($fp)
  sub  $t3, $t5, $t4
  sw  $t3, -188($fp)
  lw $t6, 0($t7)
  sw  $t6, -192($fp)
  mul $t0, $t2, $t1
  sw  $t0, -196($fp)
  li $t3, 0
  sw  $t3, -200($fp)
  li $t4, 0
  sw  $t4, -204($fp)
  beq  $t6, $t5, label1395
  j label1394
  label1395 :
  bne  $t0, $t7, label1393
  j label1394
  label1393 :
  li $t1, 1
  sw  $t1, -204($fp)
  label1394 :
  li $t2, 0
  sw  $t2, -208($fp)
  li $t3, 0
  sw  $t3, -212($fp)
  blt  $t5, $t4, label1398
  j label1399
  label1398 :
  li $t6, 1
  sw  $t6, -212($fp)
  label1399 :
  blt  $t0, $t7, label1396
  j label1397
  label1396 :
  li $t1, 1
  sw  $t1, -208($fp)
  label1397 :
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $t4, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_i2EeIQ2lAh
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t5, $v0
  sw  $t5, -216($fp)
  addi  $sp, $sp, 12
  beq  $t7, $t6, label1391
  j label1392
  label1391 :
  li $t0, 1
  sw  $t0, -200($fp)
  label1392 :
  addi  $sp, $sp, -4
  sw  $t1, 0($sp)
  addi  $sp, $sp, -4
  sw  $t2, 0($sp)
  addi  $sp, $sp, -4
  sw  $t3, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_ran3t4V_
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t4, $v0
  sw  $t4, -220($fp)
  addi  $sp, $sp, 12
  bne  $t6, $t5, label1386
  j label1387
  label1386 :
  li $t7, 1
  sw  $t7, -164($fp)
  label1387 :
  move $t0, $t1
  sw  $t0, 8($fp)
  bne  $t3, $t2, label1384
  j label1385
  label1384 :
  move  $v0, $t4
  addiu  $sp, $sp, 332
  jr  $ra
  j label1383
  label1385 :
  sub  $t5, $t7, $t6
  sw  $t5, -224($fp)
  lw $t0, 0($t1)
  sw  $t0, -228($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -232($fp)
  lw $t6, 0($t7)
  sw  $t6, -236($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -240($fp)
  lw $t4, 0($t5)
  sw  $t4, -244($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -248($fp)
  lw $t2, 0($t3)
  sw  $t2, -252($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -256($fp)
  lw $t0, 0($t1)
  sw  $t0, -260($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -264($fp)
  lw $t6, 0($t7)
  sw  $t6, -268($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t1, $t3, $t2
  sw  $t1, -272($fp)
  lw $t4, 0($t5)
  sw  $t4, -276($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t6
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t7, $t1, $t0
  sw  $t7, -280($fp)
  lw $t2, 0($t3)
  sw  $t2, -284($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t5, $t7, $t6
  sw  $t5, -288($fp)
  lw $t0, 0($t1)
  sw  $t0, -292($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t2
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub  $t3, $t5, $t4
  sw  $t3, -296($fp)
  lw $t6, 0($t7)
  sw  $t6, -300($fp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t0
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  sub $t1, $t2, 0
  sub $t1, $t4, $t3
  sw  $t1, -304($fp)
  sub $t5, $t6, 0
  sub $t5, $t0, $t7
  sw  $t5, -308($fp)
  li $t1, 0
  sw  $t1, -312($fp)
  bne  $t3, $t2, label1415
  j label1414
  label1414 :
  li $t4, 1
  sw  $t4, -312($fp)
  label1415 :
  mul $t5, $t7, $t6
  sw  $t5, -316($fp)
  sub  $t0, $t2, $t1
  sw  $t0, -320($fp)
  lw $t3, 0($t4)
  sw  $t3, -324($fp)
  mul $t5, $t7, $t6
  sw  $t5, -328($fp)
  move  $v0, $t0
  addiu  $sp, $sp, 332
  jr  $ra
id_pwxl1M593c:
  move  $fp, $sp
  subu  $sp, $sp, 20
  li $t1, 57272
  sw  $t1, -4($fp)
  li $t2, 0
  sw  $t2, -8($fp)
  bne  $t4, $t3, label1417
  j label1418
  label1418 :
  bne  $t6, $t5, label1416
  j label1417
  label1416 :
  li $t7, 1
  sw  $t7, -8($fp)
  label1417 :
  li $t0, 0
  sw  $t0, -12($fp)
  bne  $t2, $t1, label1419
  j label1421
  label1421 :
  bne  $t4, $t3, label1419
  j label1420
  label1419 :
  li $t5, 1
  sw  $t5, -12($fp)
  label1420 :
  addi  $sp, $sp, -4
  sw  $t6, 0($sp)
  addi  $sp, $sp, -4
  sw  $t7, 0($sp)
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_eZzKtHKigb
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t0, $v0
  sw  $t0, -16($fp)
  addi  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t1
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $v0, $t2
  addiu  $sp, $sp, 20
  jr  $ra
main:
  move  $fp, $sp
  subu  $sp, $sp, 8
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  jal  id_pwxl1M593c
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $t3, $v0
  sw  $t3, -4($fp)
  addi  $sp, $sp, 0
  addi  $sp, $sp, -4
  sw  $fp, 0($sp)
  addi  $sp, $sp, -4
  sw  $ra, 0($sp)
  move $a0, $t4
  jal  write
  lw  $ra, 0($sp)
  addi  $sp, $sp, 4
  lw  $fp, 0($sp)
  addi  $sp, $sp, 4
  move  $v0, $t5
  addiu  $sp, $sp, 8
  jr  $ra
