.global h
.global g
.global main
.global f
.section .bss
array:
.space 80

.section .data

sum:
.word 0x00000000
.section .text
h:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  SLT s1, s0, zero
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s1, zero, 1
  JAL zero, bb3
bb2:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb3
bb3:
  ADD s2, s1, zero
  BNE s2, zero, bb4
  JAL zero, bb5
bb4:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
g:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, sum
  SW s2, 0(s3)
  SLT s2, s0, s1
  XORI s1, s2, 1
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s1, zero, 1
  JAL zero, bb9
bb8:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb9
bb9:
  ADD s2, s1, zero
  BNE s2, zero, bb10
  JAL zero, bb11
bb10:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  SW zero, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb12
  JAL zero, bb13
bb12:
  LA s2, array
  LW s3, 0(s2)
  ADD a0, s3, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb13:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, array
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -272
  SD s1, 168(sp)
  SD ra, 176(sp)
  SD s0, 184(sp)
  SD s5, 192(sp)
  SD s10, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s6, 232(sp)
  SD s7, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  SD s11, 264(sp)
  ADD s0, zero, zero
  JAL zero, bb15
bb15:
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb16
  JAL zero, bb18
bb16:
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, sum
  SW s2, 0(s3)
  LW t4, 0(sp)
  SLT s2, zero, t4
  XORI s3, s2, 1
  BNE s3, zero, bb421
  JAL zero, bb422
bb17:
  LW t4, 8(sp)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb19
  JAL zero, bb21
bb18:
  ADD s0, zero, zero
  JAL zero, bb93
bb19:
  LA s4, sum
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 1
  LW t4, 0(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb426
  JAL zero, bb427
bb20:
  LW t4, 16(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD t4, s6, zero
  SB t4, 12(sp)
  JAL zero, bb22
bb21:
  ADD t4, zero, zero
  SB t4, 12(sp)
  JAL zero, bb22
bb22:
  LB t4, 12(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb23
  JAL zero, bb25
bb23:
  LA s6, sum
  LW s8, 0(s6)
  ADDIW s6, s8, 1
  LA s8, sum
  SW s6, 0(s8)
  ADDI s6, zero, 2
  LW t4, 0(sp)
  SLT s8, s6, t4
  XORI s6, s8, 1
  BNE s6, zero, bb431
  JAL zero, bb432
bb24:
  LW t4, 24(sp)
  ADD s9, t4, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD t4, s9, zero
  SB t4, 20(sp)
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  SB t4, 20(sp)
  JAL zero, bb26
bb26:
  LB t4, 20(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb27
  JAL zero, bb29
bb27:
  LA s9, sum
  LW s11, 0(s9)
  ADDIW s9, s11, 1
  LA s11, sum
  SW s9, 0(s11)
  ADDI s9, zero, 3
  LW t4, 0(sp)
  SLT s11, s9, t4
  XORI s9, s11, 1
  BNE s9, zero, bb436
  JAL zero, bb437
bb28:
  LW t4, 32(sp)
  ADD ra, t4, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  ADD t4, ra, zero
  SB t4, 28(sp)
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SB t4, 28(sp)
  JAL zero, bb30
bb30:
  LB t4, 28(sp)
  ADD ra, t4, zero
  BNE ra, zero, bb31
  JAL zero, bb33
bb31:
  LA ra, sum
  LW t1, 0(ra)
  ADDIW ra, t1, 1
  LA t1, sum
  SW ra, 0(t1)
  ADDI ra, zero, 4
  LW t4, 0(sp)
  SLT t1, ra, t4
  XORI ra, t1, 1
  BNE ra, zero, bb441
  JAL zero, bb442
bb32:
  LW t4, 40(sp)
  ADD t2, t4, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  ADD t4, t2, zero
  SB t4, 36(sp)
  JAL zero, bb34
bb33:
  ADD t4, zero, zero
  SB t4, 36(sp)
  JAL zero, bb34
bb34:
  LB t4, 36(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb35
  JAL zero, bb37
bb35:
  LA t2, sum
  LW a1, 0(t2)
  ADDIW t2, a1, 1
  LA a1, sum
  SW t2, 0(a1)
  ADDI t2, zero, 5
  LW t4, 0(sp)
  SLT a1, t2, t4
  XORI t2, a1, 1
  BNE t2, zero, bb446
  JAL zero, bb447
bb36:
  LW t4, 48(sp)
  ADD a2, t4, zero
  XOR a3, a2, zero
  SLTU a2, zero, a3
  ADD t4, a2, zero
  SB t4, 44(sp)
  JAL zero, bb38
bb37:
  ADD t4, zero, zero
  SB t4, 44(sp)
  JAL zero, bb38
bb38:
  LB t4, 44(sp)
  ADD a2, t4, zero
  BNE a2, zero, bb39
  JAL zero, bb41
bb39:
  LA a2, sum
  LW a4, 0(a2)
  ADDIW a2, a4, 1
  LA a4, sum
  SW a2, 0(a4)
  ADDI a2, zero, 6
  LW t4, 0(sp)
  SLT a4, a2, t4
  XORI a2, a4, 1
  BNE a2, zero, bb451
  JAL zero, bb452
bb40:
  LW t4, 56(sp)
  ADD a5, t4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD t4, a5, zero
  SB t4, 52(sp)
  JAL zero, bb42
bb41:
  ADD t4, zero, zero
  SB t4, 52(sp)
  JAL zero, bb42
bb42:
  LB t4, 52(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb43
  JAL zero, bb45
bb43:
  LA a5, sum
  LW a7, 0(a5)
  ADDIW a5, a7, 1
  LA a7, sum
  SW a5, 0(a7)
  ADDI a5, zero, 7
  LW t4, 0(sp)
  SLT a7, a5, t4
  XORI a5, a7, 1
  BNE a5, zero, bb456
  JAL zero, bb457
bb44:
  LW t4, 64(sp)
  ADD t6, t4, zero
  XOR s1, t6, zero
  SLTU t6, zero, s1
  ADD t4, t6, zero
  SB t4, 60(sp)
  JAL zero, bb46
bb45:
  ADD t4, zero, zero
  SB t4, 60(sp)
  JAL zero, bb46
bb46:
  LB t4, 60(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb47
  JAL zero, bb49
bb47:
  LA t6, sum
  LW s2, 0(t6)
  ADDIW t6, s2, 1
  LA s2, sum
  SW t6, 0(s2)
  ADDI s2, zero, 8
  LW t4, 0(sp)
  SLT t6, s2, t4
  XORI s2, t6, 1
  BNE s2, zero, bb461
  JAL zero, bb462
bb48:
  LW t4, 72(sp)
  ADD s3, t4, zero
  XOR s7, s3, zero
  SLTU s3, zero, s7
  ADD t4, s3, zero
  SB t4, 68(sp)
  JAL zero, bb50
bb49:
  ADD t4, zero, zero
  SB t4, 68(sp)
  JAL zero, bb50
bb50:
  LB t4, 68(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb51
  JAL zero, bb53
bb51:
  LA s3, sum
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 9
  LW t4, 0(sp)
  SLT s4, s3, t4
  XORI s3, s4, 1
  BNE s3, zero, bb466
  JAL zero, bb467
bb52:
  LW t4, 80(sp)
  ADD s5, t4, zero
  XOR s10, s5, zero
  SLTU s5, zero, s10
  ADD t4, s5, zero
  SB t4, 76(sp)
  JAL zero, bb54
bb53:
  ADD t4, zero, zero
  SB t4, 76(sp)
  JAL zero, bb54
bb54:
  LB t4, 76(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb55
  JAL zero, bb57
bb55:
  LA s5, sum
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 10
  LW t4, 0(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  BNE s5, zero, bb471
  JAL zero, bb472
bb56:
  LW t4, 88(sp)
  ADD s8, t4, zero
  XOR t0, s8, zero
  SLTU s8, zero, t0
  ADD t4, s8, zero
  SB t4, 84(sp)
  JAL zero, bb58
bb57:
  ADD t4, zero, zero
  SB t4, 84(sp)
  JAL zero, bb58
bb58:
  LB t4, 84(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb59
  JAL zero, bb61
bb59:
  LA s8, sum
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 11
  LW t4, 0(sp)
  SLT s9, s8, t4
  XORI s8, s9, 1
  BNE s8, zero, bb476
  JAL zero, bb477
bb60:
  ADD s11, s9, zero
  XOR a0, s11, zero
  SLTU s11, zero, a0
  ADD t4, s11, zero
  SB t4, 92(sp)
  JAL zero, bb62
bb61:
  ADD t4, zero, zero
  SB t4, 92(sp)
  JAL zero, bb62
bb62:
  LB t4, 92(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb63
  JAL zero, bb65
bb63:
  LA s11, sum
  LW ra, 0(s11)
  ADDIW s11, ra, 1
  LA ra, sum
  SW s11, 0(ra)
  ADDI s11, zero, 12
  LW t4, 0(sp)
  SLT ra, s11, t4
  XORI s11, ra, 1
  BNE s11, zero, bb481
  JAL zero, bb482
bb64:
  ADD t1, ra, zero
  XOR a3, t1, zero
  SLTU t1, zero, a3
  ADD a3, t1, zero
  JAL zero, bb66
bb65:
  ADD a3, zero, zero
  JAL zero, bb66
bb66:
  ADD t1, a3, zero
  BNE t1, zero, bb67
  JAL zero, bb69
bb67:
  LA t1, sum
  LW t2, 0(t1)
  ADDIW t1, t2, 1
  LA t2, sum
  SW t1, 0(t2)
  ADDI t1, zero, 13
  LW t4, 0(sp)
  SLT t2, t1, t4
  XORI t1, t2, 1
  BNE t1, zero, bb486
  JAL zero, bb487
bb68:
  ADD a1, t2, zero
  XOR a6, a1, zero
  SLTU a1, zero, a6
  ADD a6, a1, zero
  JAL zero, bb70
bb69:
  ADD a6, zero, zero
  JAL zero, bb70
bb70:
  ADD a1, a6, zero
  BNE a1, zero, bb71
  JAL zero, bb73
bb71:
  LA a1, sum
  LW a2, 0(a1)
  ADDIW a1, a2, 1
  LA a2, sum
  SW a1, 0(a2)
  ADDI a1, zero, 14
  LW t4, 0(sp)
  SLT a2, a1, t4
  XORI a1, a2, 1
  BNE a1, zero, bb491
  JAL zero, bb492
bb72:
  ADD a4, a2, zero
  XOR s1, a4, zero
  SLTU a4, zero, s1
  ADD s1, a4, zero
  JAL zero, bb74
bb73:
  ADD s1, zero, zero
  JAL zero, bb74
bb74:
  ADD a4, s1, zero
  BNE a4, zero, bb75
  JAL zero, bb77
bb75:
  LA a4, sum
  LW a5, 0(a4)
  ADDIW a4, a5, 1
  LA a5, sum
  SW a4, 0(a5)
  ADDI a4, zero, 15
  LW t4, 0(sp)
  SLT a5, a4, t4
  XORI a4, a5, 1
  BNE a4, zero, bb496
  JAL zero, bb497
bb76:
  ADD a7, a5, zero
  XOR s7, a7, zero
  SLTU a7, zero, s7
  ADD s7, a7, zero
  JAL zero, bb78
bb77:
  ADD s7, zero, zero
  JAL zero, bb78
bb78:
  ADD a7, s7, zero
  BNE a7, zero, bb79
  JAL zero, bb81
bb79:
  LA a7, sum
  LW s2, 0(a7)
  ADDIW a7, s2, 1
  LA s2, sum
  SW a7, 0(s2)
  ADDI s2, zero, 16
  LW t4, 0(sp)
  SLT a7, s2, t4
  XORI s2, a7, 1
  BNE s2, zero, bb501
  JAL zero, bb502
bb80:
  ADD t6, a7, zero
  XOR s10, t6, zero
  SLTU t6, zero, s10
  ADD s10, t6, zero
  JAL zero, bb82
bb81:
  ADD s10, zero, zero
  JAL zero, bb82
bb82:
  ADD t6, s10, zero
  BNE t6, zero, bb83
  JAL zero, bb85
bb83:
  LA t6, sum
  LW s3, 0(t6)
  ADDIW t6, s3, 1
  LA s3, sum
  SW t6, 0(s3)
  ADDI s3, zero, 17
  LW t4, 0(sp)
  SLT t6, s3, t4
  XORI s3, t6, 1
  BNE s3, zero, bb506
  JAL zero, bb507
bb84:
  ADD s4, t6, zero
  XOR t0, s4, zero
  SLTU s4, zero, t0
  ADD t0, s4, zero
  JAL zero, bb86
bb85:
  ADD t0, zero, zero
  JAL zero, bb86
bb86:
  ADD s4, t0, zero
  BNE s4, zero, bb87
  JAL zero, bb89
bb87:
  LA s4, sum
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 18
  LW t4, 0(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb511
  JAL zero, bb512
bb88:
  ADD s6, s5, zero
  XOR a0, s6, zero
  SLTU s6, zero, a0
  ADD a0, s6, zero
  JAL zero, bb90
bb89:
  ADD a0, zero, zero
  JAL zero, bb90
bb90:
  ADD s6, a0, zero
  BNE s6, zero, bb91
  JAL zero, bb92
bb91:
  LA s6, sum
  LW s8, 0(s6)
  ADDIW s6, s8, 1
  LA s8, sum
  SW s6, 0(s8)
  ADDI s6, zero, 19
  LW t4, 0(sp)
  SLT s8, s6, t4
  XORI s6, s8, 1
  BNE s6, zero, bb516
  JAL zero, bb517
bb92:
  LW t4, 0(sp)
  ADDIW s8, t4, 1
  ADD s0, s8, zero
  JAL zero, bb15
bb93:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb94
  JAL zero, bb96
bb94:
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, sum
  SW s2, 0(s3)
  SLT s2, zero, s1
  XORI s3, s2, 1
  BNE s3, zero, bb322
  JAL zero, bb323
bb95:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb97
  JAL zero, bb98
bb96:
  ADDI s0, zero, 1
  JAL zero, bb171
bb97:
  ADDI s4, zero, 1
  JAL zero, bb100
bb98:
  LA s0, sum
  LW s5, 0(s0)
  ADDIW s0, s5, 2
  LA s5, sum
  SW s0, 0(s5)
  ADDI s0, zero, 1
  SLT s5, s0, s1
  XORI s0, s5, 1
  BNE s0, zero, bb327
  JAL zero, bb328
bb99:
  ADD s6, s5, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s4, s6, zero
  JAL zero, bb100
bb100:
  ADD s5, s4, zero
  BNE s5, zero, bb101
  JAL zero, bb102
bb101:
  ADDI s5, zero, 1
  JAL zero, bb104
bb102:
  LA s0, sum
  LW s6, 0(s0)
  ADDIW s0, s6, 2
  LA s6, sum
  SW s0, 0(s6)
  ADDI s0, zero, 2
  SLT s6, s0, s1
  XORI s0, s6, 1
  BNE s0, zero, bb332
  JAL zero, bb333
bb103:
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD s5, s7, zero
  JAL zero, bb104
bb104:
  ADD s6, s5, zero
  BNE s6, zero, bb105
  JAL zero, bb106
bb105:
  ADDI s6, zero, 1
  JAL zero, bb108
bb106:
  LA s0, sum
  LW s7, 0(s0)
  ADDIW s0, s7, 2
  LA s7, sum
  SW s0, 0(s7)
  ADDI s0, zero, 3
  SLT s7, s0, s1
  XORI s0, s7, 1
  BNE s0, zero, bb337
  JAL zero, bb338
bb107:
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD s6, s8, zero
  JAL zero, bb108
bb108:
  ADD s7, s6, zero
  BNE s7, zero, bb109
  JAL zero, bb110
bb109:
  ADDI s7, zero, 1
  JAL zero, bb112
bb110:
  LA s0, sum
  LW s8, 0(s0)
  ADDIW s0, s8, 2
  LA s8, sum
  SW s0, 0(s8)
  ADDI s0, zero, 4
  SLT s8, s0, s1
  XORI s0, s8, 1
  BNE s0, zero, bb342
  JAL zero, bb343
bb111:
  ADD s9, s8, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD s7, s9, zero
  JAL zero, bb112
bb112:
  ADD s8, s7, zero
  BNE s8, zero, bb113
  JAL zero, bb114
bb113:
  ADDI s8, zero, 1
  JAL zero, bb116
bb114:
  LA s0, sum
  LW s9, 0(s0)
  ADDIW s0, s9, 2
  LA s9, sum
  SW s0, 0(s9)
  ADDI s0, zero, 5
  SLT s9, s0, s1
  XORI s0, s9, 1
  BNE s0, zero, bb347
  JAL zero, bb348
bb115:
  ADD s10, s9, zero
  XOR s11, s10, zero
  SLTU s10, zero, s11
  ADD s8, s10, zero
  JAL zero, bb116
bb116:
  ADD s9, s8, zero
  BNE s9, zero, bb117
  JAL zero, bb118
bb117:
  ADDI s9, zero, 1
  JAL zero, bb120
bb118:
  LA s0, sum
  LW s10, 0(s0)
  ADDIW s0, s10, 2
  LA s10, sum
  SW s0, 0(s10)
  ADDI s0, zero, 6
  SLT s10, s0, s1
  XORI s0, s10, 1
  BNE s0, zero, bb352
  JAL zero, bb353
bb119:
  ADD s11, s10, zero
  XOR ra, s11, zero
  SLTU s11, zero, ra
  ADD s9, s11, zero
  JAL zero, bb120
bb120:
  ADD s10, s9, zero
  BNE s10, zero, bb121
  JAL zero, bb122
bb121:
  ADDI s10, zero, 1
  JAL zero, bb124
bb122:
  LA s0, sum
  LW s11, 0(s0)
  ADDIW s0, s11, 2
  LA s11, sum
  SW s0, 0(s11)
  ADDI s0, zero, 7
  SLT s11, s0, s1
  XORI s0, s11, 1
  BNE s0, zero, bb357
  JAL zero, bb358
bb123:
  ADD ra, s11, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  ADD s10, ra, zero
  JAL zero, bb124
bb124:
  ADD s11, s10, zero
  BNE s11, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s11, zero, 1
  JAL zero, bb128
bb126:
  LA s0, sum
  LW ra, 0(s0)
  ADDIW s0, ra, 2
  LA ra, sum
  SW s0, 0(ra)
  ADDI s0, zero, 8
  SLT ra, s0, s1
  XORI s0, ra, 1
  BNE s0, zero, bb362
  JAL zero, bb363
bb127:
  ADD t0, ra, zero
  XOR t1, t0, zero
  SLTU t0, zero, t1
  ADD s11, t0, zero
  JAL zero, bb128
bb128:
  ADD ra, s11, zero
  BNE ra, zero, bb129
  JAL zero, bb130
bb129:
  ADDI ra, zero, 1
  JAL zero, bb132
bb130:
  LA s0, sum
  LW t0, 0(s0)
  ADDIW s0, t0, 2
  LA t0, sum
  SW s0, 0(t0)
  ADDI s0, zero, 9
  SLT t0, s0, s1
  XORI s0, t0, 1
  BNE s0, zero, bb367
  JAL zero, bb368
bb131:
  ADD t1, t0, zero
  XOR t2, t1, zero
  SLTU t1, zero, t2
  ADD ra, t1, zero
  JAL zero, bb132
bb132:
  ADD t0, ra, zero
  BNE t0, zero, bb133
  JAL zero, bb134
bb133:
  ADDI t0, zero, 1
  JAL zero, bb136
bb134:
  LA s0, sum
  LW t1, 0(s0)
  ADDIW s0, t1, 2
  LA t1, sum
  SW s0, 0(t1)
  ADDI s0, zero, 10
  SLT t1, s0, s1
  XORI s0, t1, 1
  BNE s0, zero, bb372
  JAL zero, bb373
bb135:
  ADD t2, t1, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  ADD t0, t2, zero
  JAL zero, bb136
bb136:
  ADD t1, t0, zero
  BNE t1, zero, bb137
  JAL zero, bb138
bb137:
  ADDI t1, zero, 1
  JAL zero, bb140
bb138:
  LA s0, sum
  LW t2, 0(s0)
  ADDIW s0, t2, 2
  LA t2, sum
  SW s0, 0(t2)
  ADDI s0, zero, 11
  SLT t2, s0, s1
  XORI s0, t2, 1
  BNE s0, zero, bb377
  JAL zero, bb378
bb139:
  ADD a0, t2, zero
  XOR a1, a0, zero
  SLTU a0, zero, a1
  ADD t1, a0, zero
  JAL zero, bb140
bb140:
  ADD t2, t1, zero
  BNE t2, zero, bb141
  JAL zero, bb142
bb141:
  ADDI t2, zero, 1
  JAL zero, bb144
bb142:
  LA s0, sum
  LW a0, 0(s0)
  ADDIW s0, a0, 2
  LA a0, sum
  SW s0, 0(a0)
  ADDI s0, zero, 12
  SLT a0, s0, s1
  XORI s0, a0, 1
  BNE s0, zero, bb382
  JAL zero, bb383
bb143:
  ADD a1, a0, zero
  XOR a2, a1, zero
  SLTU a1, zero, a2
  ADD t2, a1, zero
  JAL zero, bb144
bb144:
  ADD a0, t2, zero
  BNE a0, zero, bb145
  JAL zero, bb146
bb145:
  ADDI a0, zero, 1
  JAL zero, bb148
bb146:
  LA s0, sum
  LW a1, 0(s0)
  ADDIW s0, a1, 2
  LA a1, sum
  SW s0, 0(a1)
  ADDI s0, zero, 13
  SLT a1, s0, s1
  XORI s0, a1, 1
  BNE s0, zero, bb387
  JAL zero, bb388
bb147:
  ADD a2, a1, zero
  XOR a3, a2, zero
  SLTU a2, zero, a3
  ADD a0, a2, zero
  JAL zero, bb148
bb148:
  ADD a1, a0, zero
  BNE a1, zero, bb149
  JAL zero, bb150
bb149:
  ADDI a1, zero, 1
  JAL zero, bb152
bb150:
  LA s0, sum
  LW a2, 0(s0)
  ADDIW s0, a2, 2
  LA a2, sum
  SW s0, 0(a2)
  ADDI s0, zero, 14
  SLT a2, s0, s1
  XORI s0, a2, 1
  BNE s0, zero, bb392
  JAL zero, bb393
bb151:
  ADD a3, a2, zero
  XOR a4, a3, zero
  SLTU a3, zero, a4
  ADD a1, a3, zero
  JAL zero, bb152
bb152:
  ADD a2, a1, zero
  BNE a2, zero, bb153
  JAL zero, bb154
bb153:
  ADDI a2, zero, 1
  JAL zero, bb156
bb154:
  LA s0, sum
  LW a3, 0(s0)
  ADDIW s0, a3, 2
  LA a3, sum
  SW s0, 0(a3)
  ADDI s0, zero, 15
  SLT a3, s0, s1
  XORI s0, a3, 1
  BNE s0, zero, bb397
  JAL zero, bb398
bb155:
  ADD a4, a3, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  ADD a2, a4, zero
  JAL zero, bb156
bb156:
  ADD a3, a2, zero
  BNE a3, zero, bb157
  JAL zero, bb158
bb157:
  ADDI a3, zero, 1
  JAL zero, bb160
bb158:
  LA s0, sum
  LW a4, 0(s0)
  ADDIW s0, a4, 2
  LA a4, sum
  SW s0, 0(a4)
  ADDI s0, zero, 16
  SLT a4, s0, s1
  XORI s0, a4, 1
  BNE s0, zero, bb402
  JAL zero, bb403
bb159:
  ADD a5, a4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD a3, a5, zero
  JAL zero, bb160
bb160:
  ADD a4, a3, zero
  BNE a4, zero, bb161
  JAL zero, bb162
bb161:
  ADDI a4, zero, 1
  JAL zero, bb164
bb162:
  LA s0, sum
  LW a5, 0(s0)
  ADDIW s0, a5, 2
  LA a5, sum
  SW s0, 0(a5)
  ADDI s0, zero, 17
  SLT a5, s0, s1
  XORI s0, a5, 1
  BNE s0, zero, bb407
  JAL zero, bb408
bb163:
  ADD a6, a5, zero
  XOR a7, a6, zero
  SLTU a6, zero, a7
  ADD a4, a6, zero
  JAL zero, bb164
bb164:
  ADD a5, a4, zero
  BNE a5, zero, bb165
  JAL zero, bb166
bb165:
  ADDI a5, zero, 1
  JAL zero, bb168
bb166:
  LA s0, sum
  LW a6, 0(s0)
  ADDIW s0, a6, 2
  LA a6, sum
  SW s0, 0(a6)
  ADDI s0, zero, 18
  SLT a6, s0, s1
  XORI s0, a6, 1
  BNE s0, zero, bb412
  JAL zero, bb413
bb167:
  ADD a7, a6, zero
  XOR t6, a7, zero
  SLTU a7, zero, t6
  ADD a5, a7, zero
  JAL zero, bb168
bb168:
  ADD a6, a5, zero
  BNE a6, zero, bb170
  JAL zero, bb169
bb169:
  LA s0, sum
  LW a6, 0(s0)
  ADDIW s0, a6, 2
  LA a6, sum
  SW s0, 0(a6)
  ADDI s0, zero, 19
  SLT a6, s0, s1
  XORI s0, a6, 1
  BNE s0, zero, bb417
  JAL zero, bb418
bb170:
  ADDIW a6, s1, 1
  ADD s0, a6, zero
  JAL zero, bb93
bb171:
  ADD t4, s0, zero
  SW t4, 96(sp)
  LW t4, 96(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb175
  JAL zero, bb177
bb172:
  LW t4, 96(sp)
  ADDIW s5, t4, 1
  ADD s0, s5, zero
  JAL zero, bb171
bb173:
  LA s0, sum
  LW s5, 0(s0)
  ADDIW s0, s5, 3
  LA s5, sum
  SW s0, 0(s5)
  SLTI s0, zero, 20
  XORI t4, s0, 1
  SB t4, 116(sp)
  JAL zero, bb256
bb174:
  LW t4, 120(sp)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb179
  JAL zero, bb181
bb175:
  ADDI s2, zero, 1
  LW t3, 96(sp)
  SUBW t4, t3, s2
  SW t4, 104(sp)
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, sum
  SW s2, 0(s4)
  LW t4, 104(sp)
  LW t3, 96(sp)
  SLT s2, t4, t3
  XORI s4, s2, 1
  BNE s4, zero, bb520
  JAL zero, bb521
bb176:
  LW t4, 112(sp)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  ADD t4, s5, zero
  SB t4, 100(sp)
  JAL zero, bb178
bb177:
  ADD t4, zero, zero
  SB t4, 100(sp)
  JAL zero, bb178
bb178:
  LB t4, 100(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb172
  JAL zero, bb173
bb179:
  LA s7, sum
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 1
  SLTI s8, s7, 20
  XORI s7, s8, 1
  JAL zero, bb259
bb180:
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD t4, s8, zero
  SB t4, 124(sp)
  JAL zero, bb182
bb181:
  ADD t4, zero, zero
  SB t4, 124(sp)
  JAL zero, bb182
bb182:
  LB t4, 124(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s8, zero, 1
  JAL zero, bb186
bb184:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb262
bb185:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s8, s2, zero
  JAL zero, bb186
bb186:
  ADD s10, s8, zero
  BNE s10, zero, bb188
  JAL zero, bb187
bb187:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  JAL zero, bb265
bb188:
  LA s10, sum
  LW s11, 0(s10)
  ADDIW s10, s11, 3
  LA s11, sum
  SW s10, 0(s11)
  ADDI s10, zero, 4
  SLTI s11, s10, 20
  XORI s10, s11, 1
  JAL zero, bb266
bb189:
  ADD ra, s11, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  XORI t0, ra, 1
  XOR ra, t0, zero
  SLTU t0, zero, ra
  BNE t0, zero, bb190
  JAL zero, bb191
bb190:
  ADDI t4, zero, 1
  SB t4, 132(sp)
  JAL zero, bb193
bb191:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb269
bb192:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb194
  JAL zero, bb196
bb193:
  LB t4, 132(sp)
  ADD t0, t4, zero
  BNE t0, zero, bb203
  JAL zero, bb202
bb194:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  ADDI s1, zero, 6
  SLTI s2, s1, 20
  XORI s1, s2, 1
  JAL zero, bb272
bb195:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb197
bb196:
  ADD s2, zero, zero
  JAL zero, bb197
bb197:
  ADD s3, s2, zero
  BNE s3, zero, bb198
  JAL zero, bb200
bb198:
  LA s3, sum
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 7
  SLTI s4, s3, 20
  XORI s3, s4, 1
  JAL zero, bb275
bb199:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb201
bb200:
  ADD s5, zero, zero
  JAL zero, bb201
bb201:
  ADD s4, s5, zero
  ADD t4, s4, zero
  SB t4, 132(sp)
  JAL zero, bb193
bb202:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  JAL zero, bb278
bb203:
  LA t0, sum
  LW t1, 0(t0)
  ADDIW t0, t1, 3
  LA t1, sum
  SW t0, 0(t1)
  ADDI t0, zero, 9
  SLTI t1, t0, 20
  XORI t0, t1, 1
  JAL zero, bb279
bb204:
  LW t4, 128(sp)
  ADD t1, t4, zero
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb205
  JAL zero, bb207
bb205:
  LA t1, sum
  LW t2, 0(t1)
  ADDIW t1, t2, 3
  LA t2, sum
  SW t1, 0(t2)
  ADDI t1, zero, 10
  SLTI t2, t1, 20
  XORI t1, t2, 1
  JAL zero, bb282
bb206:
  LW t4, 144(sp)
  ADD t2, t4, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  XORI a0, t2, 1
  XOR t2, a0, zero
  SLTU a0, zero, t2
  ADD t4, a0, zero
  SB t4, 142(sp)
  JAL zero, bb208
bb207:
  ADD t4, zero, zero
  SB t4, 142(sp)
  JAL zero, bb208
bb208:
  LB t4, 142(sp)
  ADD a0, t4, zero
  BNE a0, zero, bb209
  JAL zero, bb210
bb209:
  ADDI t4, zero, 1
  SB t4, 125(sp)
  JAL zero, bb212
bb210:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb285
bb211:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 125(sp)
  JAL zero, bb212
bb212:
  LB t4, 125(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb213
  JAL zero, bb214
bb213:
  ADDI t4, zero, 1
  SB t4, 141(sp)
  JAL zero, bb216
bb214:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb288
bb215:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 141(sp)
  JAL zero, bb216
bb216:
  LB t4, 141(sp)
  ADD a2, t4, zero
  BNE a2, zero, bb217
  JAL zero, bb218
bb217:
  ADDI t4, zero, 1
  SB t4, 148(sp)
  JAL zero, bb220
bb218:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb291
bb219:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 148(sp)
  JAL zero, bb220
bb220:
  LB t4, 148(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb223
  JAL zero, bb221
bb221:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 14
  SLTI s1, s0, 20
  XORI s0, s1, 1
  JAL zero, bb294
bb222:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb225
  JAL zero, bb223
bb223:
  LA a3, sum
  LW a4, 0(a3)
  ADDIW a3, a4, 3
  LA a4, sum
  SW a3, 0(a4)
  JAL zero, bb298
bb224:
  LW t4, 152(sp)
  ADD a4, t4, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb226
  JAL zero, bb228
bb225:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  JAL zero, bb297
bb226:
  LA a4, sum
  LW a5, 0(a4)
  ADDIW a4, a5, 3
  LA a5, sum
  SW a4, 0(a5)
  ADDI a4, zero, 2
  SLTI a5, a4, 20
  XORI a4, a5, 1
  JAL zero, bb301
bb227:
  LW t4, 156(sp)
  ADD a5, t4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD t4, a5, zero
  SB t4, 140(sp)
  JAL zero, bb229
bb228:
  ADD t4, zero, zero
  SB t4, 140(sp)
  JAL zero, bb229
bb229:
  LB t4, 140(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb230
  JAL zero, bb232
bb230:
  LA a5, sum
  LW a7, 0(a5)
  ADDIW a5, a7, 3
  LA a7, sum
  SW a5, 0(a7)
  ADDI a5, zero, 3
  SLTI a7, a5, 20
  XORI a5, a7, 1
  JAL zero, bb304
bb231:
  LW t4, 136(sp)
  ADD a7, t4, zero
  XOR t6, a7, zero
  SLTU a7, zero, t6
  XORI t6, a7, 1
  XOR a7, t6, zero
  SLTU t6, zero, a7
  ADD t4, t6, zero
  SB t4, 160(sp)
  JAL zero, bb233
bb232:
  ADD t4, zero, zero
  SB t4, 160(sp)
  JAL zero, bb233
bb233:
  LB t4, 160(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb234
  JAL zero, bb236
bb234:
  LA t6, sum
  LW s1, 0(t6)
  ADDIW t6, s1, 3
  LA s1, sum
  SW t6, 0(s1)
  JAL zero, bb307
bb235:
  ADD t6, s1, zero
  XOR s6, t6, zero
  SLTU t6, zero, s6
  XORI s6, t6, 1
  XOR t6, s6, zero
  SLTU s6, zero, t6
  ADD t4, s6, zero
  SB t4, 161(sp)
  JAL zero, bb237
bb236:
  ADD t4, zero, zero
  SB t4, 161(sp)
  JAL zero, bb237
bb237:
  LB t4, 161(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb238
  JAL zero, bb239
bb238:
  ADDI s6, zero, 1
  JAL zero, bb241
bb239:
  LA s0, sum
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LA s2, sum
  SW s0, 0(s2)
  ADDI s0, zero, 5
  SLTI s2, s0, 20
  XORI s0, s2, 1
  JAL zero, bb310
bb240:
  ADD s2, s0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s6, s2, zero
  JAL zero, bb241
bb241:
  ADD s3, s6, zero
  BNE s3, zero, bb242
  JAL zero, bb243
bb242:
  ADDI s3, zero, 1
  JAL zero, bb245
bb243:
  LA s0, sum
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LA s2, sum
  SW s0, 0(s2)
  ADDI s0, zero, 6
  SLTI s2, s0, 20
  XORI s0, s2, 1
  JAL zero, bb313
bb244:
  ADD s2, s0, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb246
  JAL zero, bb248
bb245:
  ADD s2, s3, zero
  BNE s2, zero, bb250
  JAL zero, bb251
bb246:
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 3
  LA s4, sum
  SW s2, 0(s4)
  ADDI s2, zero, 7
  SLTI s4, s2, 20
  XORI s2, s4, 1
  JAL zero, bb316
bb247:
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb249
bb248:
  ADD s4, zero, zero
  JAL zero, bb249
bb249:
  ADD s5, s4, zero
  ADD s3, s5, zero
  JAL zero, bb245
bb250:
  ADDI s2, zero, 1
  JAL zero, bb253
bb251:
  LA s0, sum
  LW s4, 0(s0)
  ADDIW s0, s4, 3
  LA s4, sum
  SW s0, 0(s4)
  ADDI s0, zero, 8
  SLTI s4, s0, 20
  XORI s0, s4, 1
  JAL zero, bb319
bb252:
  ADD s4, s0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s2, s4, zero
  JAL zero, bb253
bb253:
  ADD s4, s2, zero
  BNE s4, zero, bb254
  JAL zero, bb527
bb254:
  ADDI s4, zero, 1
  JAL zero, bb255
bb255:
  ADD s5, s4, zero
  LA s0, sum
  LW s9, 0(s0)
  ADDW s0, s9, s5
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD s1, 168(sp)
  LD ra, 176(sp)
  LD s0, 184(sp)
  LD s5, 192(sp)
  LD s10, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s6, 232(sp)
  LD s7, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  LD s11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb256:
  LB t4, 116(sp)
  BNE t4, zero, bb257
  JAL zero, bb258
bb257:
  ADD t4, zero, zero
  SW t4, 120(sp)
  JAL zero, bb174
bb258:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 120(sp)
  JAL zero, bb174
bb259:
  BNE s7, zero, bb260
  JAL zero, bb261
bb260:
  ADD s7, zero, zero
  JAL zero, bb180
bb261:
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD s7, s0, zero
  JAL zero, bb180
bb262:
  BNE s0, zero, bb263
  JAL zero, bb264
bb263:
  ADD s0, zero, zero
  JAL zero, bb185
bb264:
  LA s1, array
  ADDI s2, s1, 8
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb185
bb265:
  JAL zero, bb188
bb266:
  BNE s10, zero, bb267
  JAL zero, bb268
bb267:
  ADD s11, zero, zero
  JAL zero, bb189
bb268:
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD s11, s0, zero
  JAL zero, bb189
bb269:
  BNE s0, zero, bb270
  JAL zero, bb271
bb270:
  ADD s0, zero, zero
  JAL zero, bb192
bb271:
  LA s1, array
  ADDI s2, s1, 20
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb192
bb272:
  BNE s1, zero, bb273
  JAL zero, bb274
bb273:
  ADD s1, zero, zero
  JAL zero, bb195
bb274:
  LA s3, array
  ADDI s4, s3, 24
  LW s3, 0(s4)
  ADD s1, s3, zero
  JAL zero, bb195
bb275:
  BNE s3, zero, bb276
  JAL zero, bb277
bb276:
  ADD s3, zero, zero
  JAL zero, bb199
bb277:
  LA s4, array
  ADDI s6, s4, 28
  LW s4, 0(s6)
  ADD s3, s4, zero
  JAL zero, bb199
bb278:
  JAL zero, bb203
bb279:
  BNE t0, zero, bb280
  JAL zero, bb281
bb280:
  ADD t4, zero, zero
  SW t4, 128(sp)
  JAL zero, bb204
bb281:
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 128(sp)
  JAL zero, bb204
bb282:
  BNE t1, zero, bb283
  JAL zero, bb284
bb283:
  ADD t4, zero, zero
  SW t4, 144(sp)
  JAL zero, bb206
bb284:
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 144(sp)
  JAL zero, bb206
bb285:
  BNE s0, zero, bb286
  JAL zero, bb287
bb286:
  ADD s0, zero, zero
  JAL zero, bb211
bb287:
  LA s1, array
  ADDI s2, s1, 44
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb211
bb288:
  BNE s0, zero, bb289
  JAL zero, bb290
bb289:
  ADD s0, zero, zero
  JAL zero, bb215
bb290:
  LA s1, array
  ADDI s2, s1, 48
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb215
bb291:
  BNE s0, zero, bb292
  JAL zero, bb293
bb292:
  ADD s0, zero, zero
  JAL zero, bb219
bb293:
  LA s1, array
  ADDI s2, s1, 52
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb219
bb294:
  BNE s0, zero, bb295
  JAL zero, bb296
bb295:
  ADD s0, zero, zero
  JAL zero, bb222
bb296:
  LA s1, array
  ADDI s2, s1, 56
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb222
bb297:
  JAL zero, bb223
bb298:
  LB t4, 116(sp)
  BNE t4, zero, bb299
  JAL zero, bb300
bb299:
  ADD t4, zero, zero
  SW t4, 152(sp)
  JAL zero, bb224
bb300:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 152(sp)
  JAL zero, bb224
bb301:
  BNE a4, zero, bb302
  JAL zero, bb303
bb302:
  ADD t4, zero, zero
  SW t4, 156(sp)
  JAL zero, bb227
bb303:
  LA s0, array
  ADDI s1, s0, 8
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 156(sp)
  JAL zero, bb227
bb304:
  BNE a5, zero, bb305
  JAL zero, bb306
bb305:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb231
bb306:
  LA s0, array
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 136(sp)
  JAL zero, bb231
bb307:
  BNE s10, zero, bb308
  JAL zero, bb309
bb308:
  ADD s1, zero, zero
  JAL zero, bb235
bb309:
  LA s0, array
  ADDI s2, s0, 16
  LW s0, 0(s2)
  ADD s1, s0, zero
  JAL zero, bb235
bb310:
  BNE s0, zero, bb311
  JAL zero, bb312
bb311:
  ADD s0, zero, zero
  JAL zero, bb240
bb312:
  LA s2, array
  ADDI s3, s2, 20
  LW s2, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb240
bb313:
  BNE s0, zero, bb314
  JAL zero, bb315
bb314:
  ADD s0, zero, zero
  JAL zero, bb244
bb315:
  LA s2, array
  ADDI s3, s2, 24
  LW s2, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb244
bb316:
  BNE s2, zero, bb317
  JAL zero, bb318
bb317:
  ADD s2, zero, zero
  JAL zero, bb247
bb318:
  LA s3, array
  ADDI s5, s3, 28
  LW s3, 0(s5)
  ADD s2, s3, zero
  JAL zero, bb247
bb319:
  BNE s0, zero, bb320
  JAL zero, bb321
bb320:
  ADD s0, zero, zero
  JAL zero, bb252
bb321:
  LA s2, array
  ADDI s4, s2, 32
  LW s2, 0(s4)
  ADD s0, s2, zero
  JAL zero, bb252
bb322:
  ADDI s2, zero, 1
  JAL zero, bb324
bb323:
  SLTI s0, zero, 20
  XORI s3, s0, 1
  ADD s2, s3, zero
  JAL zero, bb324
bb324:
  ADD s3, s2, zero
  BNE s3, zero, bb325
  JAL zero, bb326
bb325:
  ADDI s3, zero, 1
  JAL zero, bb95
bb326:
  LA s0, array
  SW zero, 0(s0)
  LA s0, array
  LW s4, 0(s0)
  ADD s3, s4, zero
  JAL zero, bb95
bb327:
  ADDI s0, zero, 1
  JAL zero, bb329
bb328:
  ADDI s4, zero, 1
  SLTI s5, s4, 20
  XORI s4, s5, 1
  ADD s0, s4, zero
  JAL zero, bb329
bb329:
  ADD s5, s0, zero
  BNE s5, zero, bb330
  JAL zero, bb331
bb330:
  ADDI s5, zero, 1
  JAL zero, bb99
bb331:
  LA s4, array
  ADDI s6, s4, 4
  SW zero, 0(s6)
  LA s4, array
  LW s6, 0(s4)
  ADD s5, s6, zero
  JAL zero, bb99
bb332:
  ADDI s0, zero, 1
  JAL zero, bb334
bb333:
  ADDI s5, zero, 2
  SLTI s6, s5, 20
  XORI s5, s6, 1
  ADD s0, s5, zero
  JAL zero, bb334
bb334:
  ADD s6, s0, zero
  BNE s6, zero, bb335
  JAL zero, bb336
bb335:
  ADDI s6, zero, 1
  JAL zero, bb103
bb336:
  LA s5, array
  ADDI s7, s5, 8
  SW zero, 0(s7)
  LA s5, array
  ADDI s7, s5, 4
  LW s5, 0(s7)
  ADD s6, s5, zero
  JAL zero, bb103
bb337:
  ADDI s0, zero, 1
  JAL zero, bb339
bb338:
  ADDI s6, zero, 3
  SLTI s7, s6, 20
  XORI s6, s7, 1
  ADD s0, s6, zero
  JAL zero, bb339
bb339:
  ADD s7, s0, zero
  BNE s7, zero, bb340
  JAL zero, bb341
bb340:
  ADDI s7, zero, 1
  JAL zero, bb107
bb341:
  LA s6, array
  ADDI s8, s6, 12
  SW zero, 0(s8)
  LA s6, array
  ADDI s8, s6, 8
  LW s6, 0(s8)
  ADD s7, s6, zero
  JAL zero, bb107
bb342:
  ADDI s0, zero, 1
  JAL zero, bb344
bb343:
  ADDI s7, zero, 4
  SLTI s8, s7, 20
  XORI s7, s8, 1
  ADD s0, s7, zero
  JAL zero, bb344
bb344:
  ADD s8, s0, zero
  BNE s8, zero, bb345
  JAL zero, bb346
bb345:
  ADDI s8, zero, 1
  JAL zero, bb111
bb346:
  LA s7, array
  ADDI s9, s7, 16
  SW zero, 0(s9)
  LA s7, array
  ADDI s9, s7, 12
  LW s7, 0(s9)
  ADD s8, s7, zero
  JAL zero, bb111
bb347:
  ADDI s0, zero, 1
  JAL zero, bb349
bb348:
  ADDI s8, zero, 5
  SLTI s9, s8, 20
  XORI s8, s9, 1
  ADD s0, s8, zero
  JAL zero, bb349
bb349:
  ADD s9, s0, zero
  BNE s9, zero, bb350
  JAL zero, bb351
bb350:
  ADDI s9, zero, 1
  JAL zero, bb115
bb351:
  LA s8, array
  ADDI s10, s8, 20
  SW zero, 0(s10)
  LA s8, array
  ADDI s10, s8, 16
  LW s8, 0(s10)
  ADD s9, s8, zero
  JAL zero, bb115
bb352:
  ADDI s0, zero, 1
  JAL zero, bb354
bb353:
  ADDI s9, zero, 6
  SLTI s10, s9, 20
  XORI s9, s10, 1
  ADD s0, s9, zero
  JAL zero, bb354
bb354:
  ADD s10, s0, zero
  BNE s10, zero, bb355
  JAL zero, bb356
bb355:
  ADDI s10, zero, 1
  JAL zero, bb119
bb356:
  LA s9, array
  ADDI s11, s9, 24
  SW zero, 0(s11)
  LA s9, array
  ADDI s11, s9, 20
  LW s9, 0(s11)
  ADD s10, s9, zero
  JAL zero, bb119
bb357:
  ADDI s0, zero, 1
  JAL zero, bb359
bb358:
  ADDI s10, zero, 7
  SLTI s11, s10, 20
  XORI s10, s11, 1
  ADD s0, s10, zero
  JAL zero, bb359
bb359:
  ADD s11, s0, zero
  BNE s11, zero, bb360
  JAL zero, bb361
bb360:
  ADDI s11, zero, 1
  JAL zero, bb123
bb361:
  LA s10, array
  ADDI ra, s10, 28
  SW zero, 0(ra)
  LA s10, array
  ADDI ra, s10, 24
  LW s10, 0(ra)
  ADD s11, s10, zero
  JAL zero, bb123
bb362:
  ADDI s0, zero, 1
  JAL zero, bb364
bb363:
  ADDI s11, zero, 8
  SLTI ra, s11, 20
  XORI s11, ra, 1
  ADD s0, s11, zero
  JAL zero, bb364
bb364:
  ADD ra, s0, zero
  BNE ra, zero, bb365
  JAL zero, bb366
bb365:
  ADDI ra, zero, 1
  JAL zero, bb127
bb366:
  LA s11, array
  ADDI t0, s11, 32
  SW zero, 0(t0)
  LA s11, array
  ADDI t0, s11, 28
  LW s11, 0(t0)
  ADD ra, s11, zero
  JAL zero, bb127
bb367:
  ADDI s0, zero, 1
  JAL zero, bb369
bb368:
  ADDI ra, zero, 9
  SLTI t0, ra, 20
  XORI ra, t0, 1
  ADD s0, ra, zero
  JAL zero, bb369
bb369:
  ADD t0, s0, zero
  BNE t0, zero, bb370
  JAL zero, bb371
bb370:
  ADDI t0, zero, 1
  JAL zero, bb131
bb371:
  LA ra, array
  ADDI t1, ra, 36
  SW zero, 0(t1)
  LA ra, array
  ADDI t1, ra, 32
  LW ra, 0(t1)
  ADD t0, ra, zero
  JAL zero, bb131
bb372:
  ADDI s0, zero, 1
  JAL zero, bb374
bb373:
  ADDI t0, zero, 10
  SLTI t1, t0, 20
  XORI t0, t1, 1
  ADD s0, t0, zero
  JAL zero, bb374
bb374:
  ADD t1, s0, zero
  BNE t1, zero, bb375
  JAL zero, bb376
bb375:
  ADDI t1, zero, 1
  JAL zero, bb135
bb376:
  LA t0, array
  ADDI t2, t0, 40
  SW zero, 0(t2)
  LA t0, array
  ADDI t2, t0, 36
  LW t0, 0(t2)
  ADD t1, t0, zero
  JAL zero, bb135
bb377:
  ADDI s0, zero, 1
  JAL zero, bb379
bb378:
  ADDI t1, zero, 11
  SLTI t2, t1, 20
  XORI t1, t2, 1
  ADD s0, t1, zero
  JAL zero, bb379
bb379:
  ADD t2, s0, zero
  BNE t2, zero, bb380
  JAL zero, bb381
bb380:
  ADDI t2, zero, 1
  JAL zero, bb139
bb381:
  LA t1, array
  ADDI a0, t1, 44
  SW zero, 0(a0)
  LA t1, array
  ADDI a0, t1, 40
  LW t1, 0(a0)
  ADD t2, t1, zero
  JAL zero, bb139
bb382:
  ADDI s0, zero, 1
  JAL zero, bb384
bb383:
  ADDI t2, zero, 12
  SLTI a0, t2, 20
  XORI t2, a0, 1
  ADD s0, t2, zero
  JAL zero, bb384
bb384:
  ADD a0, s0, zero
  BNE a0, zero, bb385
  JAL zero, bb386
bb385:
  ADDI a0, zero, 1
  JAL zero, bb143
bb386:
  LA t2, array
  ADDI a1, t2, 48
  SW zero, 0(a1)
  LA t2, array
  ADDI a1, t2, 44
  LW t2, 0(a1)
  ADD a0, t2, zero
  JAL zero, bb143
bb387:
  ADDI s0, zero, 1
  JAL zero, bb389
bb388:
  ADDI a0, zero, 13
  SLTI a1, a0, 20
  XORI a0, a1, 1
  ADD s0, a0, zero
  JAL zero, bb389
bb389:
  ADD a1, s0, zero
  BNE a1, zero, bb390
  JAL zero, bb391
bb390:
  ADDI a1, zero, 1
  JAL zero, bb147
bb391:
  LA a0, array
  ADDI a2, a0, 52
  SW zero, 0(a2)
  LA a0, array
  ADDI a2, a0, 48
  LW a0, 0(a2)
  ADD a1, a0, zero
  JAL zero, bb147
bb392:
  ADDI s0, zero, 1
  JAL zero, bb394
bb393:
  ADDI a1, zero, 14
  SLTI a2, a1, 20
  XORI a1, a2, 1
  ADD s0, a1, zero
  JAL zero, bb394
bb394:
  ADD a2, s0, zero
  BNE a2, zero, bb395
  JAL zero, bb396
bb395:
  ADDI a2, zero, 1
  JAL zero, bb151
bb396:
  LA a1, array
  ADDI a3, a1, 56
  SW zero, 0(a3)
  LA a1, array
  ADDI a3, a1, 52
  LW a1, 0(a3)
  ADD a2, a1, zero
  JAL zero, bb151
bb397:
  ADDI s0, zero, 1
  JAL zero, bb399
bb398:
  ADDI a2, zero, 15
  SLTI a3, a2, 20
  XORI a2, a3, 1
  ADD s0, a2, zero
  JAL zero, bb399
bb399:
  ADD a3, s0, zero
  BNE a3, zero, bb400
  JAL zero, bb401
bb400:
  ADDI a3, zero, 1
  JAL zero, bb155
bb401:
  LA a2, array
  ADDI a4, a2, 60
  SW zero, 0(a4)
  LA a2, array
  ADDI a4, a2, 56
  LW a2, 0(a4)
  ADD a3, a2, zero
  JAL zero, bb155
bb402:
  ADDI s0, zero, 1
  JAL zero, bb404
bb403:
  ADDI a3, zero, 16
  SLTI a4, a3, 20
  XORI a3, a4, 1
  ADD s0, a3, zero
  JAL zero, bb404
bb404:
  ADD a4, s0, zero
  BNE a4, zero, bb405
  JAL zero, bb406
bb405:
  ADDI a4, zero, 1
  JAL zero, bb159
bb406:
  LA a3, array
  ADDI a5, a3, 64
  SW zero, 0(a5)
  LA a3, array
  ADDI a5, a3, 60
  LW a3, 0(a5)
  ADD a4, a3, zero
  JAL zero, bb159
bb407:
  ADDI s0, zero, 1
  JAL zero, bb409
bb408:
  ADDI a4, zero, 17
  SLTI a5, a4, 20
  XORI a4, a5, 1
  ADD s0, a4, zero
  JAL zero, bb409
bb409:
  ADD a5, s0, zero
  BNE a5, zero, bb410
  JAL zero, bb411
bb410:
  ADDI a5, zero, 1
  JAL zero, bb163
bb411:
  LA a4, array
  ADDI a6, a4, 68
  SW zero, 0(a6)
  LA a4, array
  ADDI a6, a4, 64
  LW a4, 0(a6)
  ADD a5, a4, zero
  JAL zero, bb163
bb412:
  ADDI s0, zero, 1
  JAL zero, bb414
bb413:
  ADDI a5, zero, 18
  SLTI a6, a5, 20
  XORI a5, a6, 1
  ADD s0, a5, zero
  JAL zero, bb414
bb414:
  ADD a6, s0, zero
  BNE a6, zero, bb415
  JAL zero, bb416
bb415:
  ADDI a6, zero, 1
  JAL zero, bb167
bb416:
  LA a5, array
  ADDI a7, a5, 72
  SW zero, 0(a7)
  LA a5, array
  ADDI a7, a5, 68
  LW a5, 0(a7)
  ADD a6, a5, zero
  JAL zero, bb167
bb417:
  ADDI s0, zero, 1
  JAL zero, bb419
bb418:
  ADDI a6, zero, 19
  SLTI a7, a6, 20
  XORI a6, a7, 1
  ADD s0, a6, zero
  JAL zero, bb419
bb419:
  ADD a6, s0, zero
  BNE a6, zero, bb170
  JAL zero, bb420
bb420:
  LA a6, array
  ADDI a7, a6, 76
  SW zero, 0(a7)
  JAL zero, bb170
bb421:
  ADDI t4, zero, 1
  SB t4, 4(sp)
  JAL zero, bb423
bb422:
  SLTI s0, zero, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 4(sp)
  JAL zero, bb423
bb423:
  LB t4, 4(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb424
  JAL zero, bb425
bb424:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb17
bb425:
  LA s0, array
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb17
bb426:
  ADDI t4, zero, 1
  SB t4, 13(sp)
  JAL zero, bb428
bb427:
  ADDI s0, zero, 1
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 13(sp)
  JAL zero, bb428
bb428:
  LB t4, 13(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb429
  JAL zero, bb430
bb429:
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb20
bb430:
  LA s0, array
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 16(sp)
  JAL zero, bb20
bb431:
  ADDI t4, zero, 1
  SB t4, 21(sp)
  JAL zero, bb433
bb432:
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 21(sp)
  JAL zero, bb433
bb433:
  LB t4, 21(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb434
  JAL zero, bb435
bb434:
  ADD t4, zero, zero
  SW t4, 24(sp)
  JAL zero, bb24
bb435:
  LA s0, array
  ADDI s1, s0, 8
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb24
bb436:
  ADDI t4, zero, 1
  SB t4, 29(sp)
  JAL zero, bb438
bb437:
  ADDI s0, zero, 3
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 29(sp)
  JAL zero, bb438
bb438:
  LB t4, 29(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb439
  JAL zero, bb440
bb439:
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb28
bb440:
  LA s0, array
  ADDI s1, s0, 12
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 8
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb28
bb441:
  ADDI t4, zero, 1
  SB t4, 37(sp)
  JAL zero, bb443
bb442:
  ADDI s0, zero, 4
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 37(sp)
  JAL zero, bb443
bb443:
  LB t4, 37(sp)
  ADD t1, t4, zero
  BNE t1, zero, bb444
  JAL zero, bb445
bb444:
  ADD t4, zero, zero
  SW t4, 40(sp)
  JAL zero, bb32
bb445:
  LA s0, array
  ADDI s1, s0, 16
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb32
bb446:
  ADDI t4, zero, 1
  SB t4, 45(sp)
  JAL zero, bb448
bb447:
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 45(sp)
  JAL zero, bb448
bb448:
  LB t4, 45(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb449
  JAL zero, bb450
bb449:
  ADD t4, zero, zero
  SW t4, 48(sp)
  JAL zero, bb36
bb450:
  LA s0, array
  ADDI s1, s0, 20
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb36
bb451:
  ADDI t4, zero, 1
  SB t4, 53(sp)
  JAL zero, bb453
bb452:
  ADDI s0, zero, 6
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 53(sp)
  JAL zero, bb453
bb453:
  LB t4, 53(sp)
  ADD a4, t4, zero
  BNE a4, zero, bb454
  JAL zero, bb455
bb454:
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb40
bb455:
  LA s0, array
  ADDI s1, s0, 24
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 20
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb40
bb456:
  ADDI t4, zero, 1
  SB t4, 61(sp)
  JAL zero, bb458
bb457:
  ADDI s0, zero, 7
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 61(sp)
  JAL zero, bb458
bb458:
  LB t4, 61(sp)
  ADD a7, t4, zero
  BNE a7, zero, bb459
  JAL zero, bb460
bb459:
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb44
bb460:
  LA s0, array
  ADDI s1, s0, 28
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 24
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb44
bb461:
  ADDI t4, zero, 1
  SB t4, 69(sp)
  JAL zero, bb463
bb462:
  ADDI s0, zero, 8
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 69(sp)
  JAL zero, bb463
bb463:
  LB t4, 69(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb464
  JAL zero, bb465
bb464:
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb48
bb465:
  LA s0, array
  ADDI s1, s0, 32
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 28
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb48
bb466:
  ADDI t4, zero, 1
  SB t4, 77(sp)
  JAL zero, bb468
bb467:
  ADDI s0, zero, 9
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 77(sp)
  JAL zero, bb468
bb468:
  LB t4, 77(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb469
  JAL zero, bb470
bb469:
  ADD t4, zero, zero
  SW t4, 80(sp)
  JAL zero, bb52
bb470:
  LA s0, array
  ADDI s1, s0, 36
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 32
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb52
bb471:
  ADDI t4, zero, 1
  SB t4, 85(sp)
  JAL zero, bb473
bb472:
  ADDI s0, zero, 10
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 85(sp)
  JAL zero, bb473
bb473:
  LB t4, 85(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb474
  JAL zero, bb475
bb474:
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb56
bb475:
  LA s0, array
  ADDI s1, s0, 40
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb56
bb476:
  ADDI t4, zero, 1
  SB t4, 93(sp)
  JAL zero, bb478
bb477:
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 93(sp)
  JAL zero, bb478
bb478:
  LB t4, 93(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb479
  JAL zero, bb480
bb479:
  ADD s9, zero, zero
  JAL zero, bb60
bb480:
  LA s0, array
  ADDI s1, s0, 44
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD s9, s0, zero
  JAL zero, bb60
bb481:
  ADDI s11, zero, 1
  JAL zero, bb483
bb482:
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s11, s0, zero
  JAL zero, bb483
bb483:
  ADD ra, s11, zero
  BNE ra, zero, bb484
  JAL zero, bb485
bb484:
  ADD ra, zero, zero
  JAL zero, bb64
bb485:
  LA s0, array
  ADDI s1, s0, 48
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 44
  LW s0, 0(s1)
  ADD ra, s0, zero
  JAL zero, bb64
bb486:
  ADDI t1, zero, 1
  JAL zero, bb488
bb487:
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t1, s0, zero
  JAL zero, bb488
bb488:
  ADD t2, t1, zero
  BNE t2, zero, bb489
  JAL zero, bb490
bb489:
  ADD t2, zero, zero
  JAL zero, bb68
bb490:
  LA s0, array
  ADDI s1, s0, 52
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 48
  LW s0, 0(s1)
  ADD t2, s0, zero
  JAL zero, bb68
bb491:
  ADDI a1, zero, 1
  JAL zero, bb493
bb492:
  ADDI s0, zero, 14
  SLTI s2, s0, 20
  XORI s0, s2, 1
  ADD a1, s0, zero
  JAL zero, bb493
bb493:
  ADD a2, a1, zero
  BNE a2, zero, bb494
  JAL zero, bb495
bb494:
  ADD a2, zero, zero
  JAL zero, bb72
bb495:
  LA s0, array
  ADDI s2, s0, 56
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LA s0, array
  ADDI s2, s0, 52
  LW s0, 0(s2)
  ADD a2, s0, zero
  JAL zero, bb72
bb496:
  ADDI a4, zero, 1
  JAL zero, bb498
bb497:
  ADDI s0, zero, 15
  SLTI s2, s0, 20
  XORI s0, s2, 1
  ADD a4, s0, zero
  JAL zero, bb498
bb498:
  ADD a5, a4, zero
  BNE a5, zero, bb499
  JAL zero, bb500
bb499:
  ADD a5, zero, zero
  JAL zero, bb76
bb500:
  LA s0, array
  ADDI s2, s0, 60
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LA s0, array
  ADDI s2, s0, 56
  LW s0, 0(s2)
  ADD a5, s0, zero
  JAL zero, bb76
bb501:
  ADDI s2, zero, 1
  JAL zero, bb503
bb502:
  ADDI s0, zero, 16
  SLTI s3, s0, 20
  XORI s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb503
bb503:
  ADD a7, s2, zero
  BNE a7, zero, bb504
  JAL zero, bb505
bb504:
  ADD a7, zero, zero
  JAL zero, bb80
bb505:
  LA s0, array
  ADDI s3, s0, 64
  ADDI s0, zero, 1
  SW s0, 0(s3)
  LA s0, array
  ADDI s3, s0, 60
  LW s0, 0(s3)
  ADD a7, s0, zero
  JAL zero, bb80
bb506:
  ADDI s3, zero, 1
  JAL zero, bb508
bb507:
  ADDI s0, zero, 17
  SLTI s4, s0, 20
  XORI s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb508
bb508:
  ADD t6, s3, zero
  BNE t6, zero, bb509
  JAL zero, bb510
bb509:
  ADD t6, zero, zero
  JAL zero, bb84
bb510:
  LA s0, array
  ADDI s4, s0, 68
  ADDI s0, zero, 1
  SW s0, 0(s4)
  LA s0, array
  ADDI s4, s0, 64
  LW s0, 0(s4)
  ADD t6, s0, zero
  JAL zero, bb84
bb511:
  ADDI s4, zero, 1
  JAL zero, bb513
bb512:
  ADDI s0, zero, 18
  SLTI s5, s0, 20
  XORI s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb513
bb513:
  ADD s5, s4, zero
  BNE s5, zero, bb514
  JAL zero, bb515
bb514:
  ADD s5, zero, zero
  JAL zero, bb88
bb515:
  LA s0, array
  ADDI s6, s0, 72
  ADDI s0, zero, 1
  SW s0, 0(s6)
  LA s0, array
  ADDI s6, s0, 68
  LW s0, 0(s6)
  ADD s5, s0, zero
  JAL zero, bb88
bb516:
  ADDI s6, zero, 1
  JAL zero, bb518
bb517:
  ADDI s0, zero, 19
  SLTI s8, s0, 20
  XORI s0, s8, 1
  ADD s6, s0, zero
  JAL zero, bb518
bb518:
  ADD s8, s6, zero
  BNE s8, zero, bb92
  JAL zero, bb519
bb519:
  LA s0, array
  ADDI s8, s0, 76
  ADDI s0, zero, 1
  SW s0, 0(s8)
  JAL zero, bb92
bb520:
  ADDI t4, zero, 1
  SB t4, 108(sp)
  JAL zero, bb522
bb521:
  LW t4, 104(sp)
  SLTI s0, t4, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 108(sp)
  JAL zero, bb522
bb522:
  LB t4, 108(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb523
  JAL zero, bb524
bb523:
  ADD t4, zero, zero
  SW t4, 112(sp)
  JAL zero, bb176
bb524:
  ADDI s0, zero, 4
  LW t4, 104(sp)
  MULW s1, t4, s0
  LA s0, array
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LW t4, 104(sp)
  XOR s0, t4, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb525
  JAL zero, bb526
bb525:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 112(sp)
  JAL zero, bb176
bb526:
  ADDI s0, zero, 2
  LW t4, 96(sp)
  SUBW s1, t4, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 112(sp)
  JAL zero, bb176
bb527:
  ADD s4, zero, zero
  JAL zero, bb255
f:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, sum
  SW s2, 0(s3)
  SLT s2, s0, s1
  XORI s1, s2, 1
  BNE s1, zero, bb529
  JAL zero, bb530
bb529:
  ADDI s1, zero, 1
  JAL zero, bb531
bb530:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb531
bb531:
  ADD s2, s1, zero
  BNE s2, zero, bb532
  JAL zero, bb533
bb532:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb533:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb534
  JAL zero, bb535
bb534:
  LA s2, array
  LW s3, 0(s2)
  ADD a0, s3, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb535:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, array
  ADD s3, s2, s4
  LW s2, 0(s3)
  ADD a0, s2, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
