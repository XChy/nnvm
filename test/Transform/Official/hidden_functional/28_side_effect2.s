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
  ADDI sp, sp, -624
  SD s1, 512(sp)
  SD ra, 520(sp)
  SD s0, 528(sp)
  SD s5, 536(sp)
  SD s10, 544(sp)
  SD s2, 552(sp)
  SD s3, 560(sp)
  SD s4, 568(sp)
  SD s6, 576(sp)
  SD s7, 584(sp)
  SD s8, 592(sp)
  SD s9, 600(sp)
  SD s11, 608(sp)
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
  BNE s3, zero, bb450
  JAL zero, bb451
bb17:
  LW t4, 16(sp)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb19
  JAL zero, bb21
bb18:
  ADD s0, zero, zero
  JAL zero, bb97
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
  BNE s4, zero, bb455
  JAL zero, bb456
bb20:
  LW t4, 40(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD t4, s6, zero
  SB t4, 24(sp)
  JAL zero, bb22
bb21:
  ADD t4, zero, zero
  SB t4, 24(sp)
  JAL zero, bb22
bb22:
  LB t4, 24(sp)
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
  BNE s6, zero, bb460
  JAL zero, bb461
bb24:
  LW t4, 64(sp)
  ADD s9, t4, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD t4, s9, zero
  SB t4, 48(sp)
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb26
bb26:
  LB t4, 48(sp)
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
  BNE s9, zero, bb465
  JAL zero, bb466
bb28:
  LW t4, 88(sp)
  ADD ra, t4, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  ADD t4, ra, zero
  SB t4, 72(sp)
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SB t4, 72(sp)
  JAL zero, bb30
bb30:
  LB t4, 72(sp)
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
  BNE ra, zero, bb470
  JAL zero, bb471
bb32:
  LW t4, 112(sp)
  ADD t2, t4, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  ADD t4, t2, zero
  SB t4, 96(sp)
  JAL zero, bb34
bb33:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb34
bb34:
  LB t4, 96(sp)
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
  BNE t2, zero, bb475
  JAL zero, bb476
bb36:
  LW t4, 136(sp)
  ADD a2, t4, zero
  XOR a3, a2, zero
  SLTU a2, zero, a3
  ADD t4, a2, zero
  SB t4, 120(sp)
  JAL zero, bb38
bb37:
  ADD t4, zero, zero
  SB t4, 120(sp)
  JAL zero, bb38
bb38:
  LB t4, 120(sp)
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
  BNE a2, zero, bb480
  JAL zero, bb481
bb40:
  LW t4, 160(sp)
  ADD a5, t4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD t4, a5, zero
  SB t4, 144(sp)
  JAL zero, bb42
bb41:
  ADD t4, zero, zero
  SB t4, 144(sp)
  JAL zero, bb42
bb42:
  LB t4, 144(sp)
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
  BNE a5, zero, bb485
  JAL zero, bb486
bb44:
  LW t4, 184(sp)
  ADD s1, t4, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 168(sp)
  JAL zero, bb46
bb45:
  ADD t4, zero, zero
  SB t4, 168(sp)
  JAL zero, bb46
bb46:
  LB t4, 168(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb47
  JAL zero, bb49
bb47:
  LA s1, sum
  LW s3, 0(s1)
  ADDIW s1, s3, 1
  LA s3, sum
  SW s1, 0(s3)
  ADDI s1, zero, 8
  LW t4, 0(sp)
  SLT s3, s1, t4
  XORI s1, s3, 1
  BNE s1, zero, bb490
  JAL zero, bb491
bb48:
  LW t4, 208(sp)
  ADD s7, t4, zero
  XOR s4, s7, zero
  SLTU s7, zero, s4
  ADD t4, s7, zero
  SB t4, 192(sp)
  JAL zero, bb50
bb49:
  ADD t4, zero, zero
  SB t4, 192(sp)
  JAL zero, bb50
bb50:
  LB t4, 192(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb51
  JAL zero, bb53
bb51:
  LA s7, sum
  LW s5, 0(s7)
  ADDIW s7, s5, 1
  LA s5, sum
  SW s7, 0(s5)
  ADDI s5, zero, 9
  LW t4, 0(sp)
  SLT s7, s5, t4
  XORI s5, s7, 1
  BNE s5, zero, bb495
  JAL zero, bb496
bb52:
  LW t4, 232(sp)
  ADD s10, t4, zero
  XOR s6, s10, zero
  SLTU s10, zero, s6
  ADD t4, s10, zero
  SB t4, 216(sp)
  JAL zero, bb54
bb53:
  ADD t4, zero, zero
  SB t4, 216(sp)
  JAL zero, bb54
bb54:
  LB t4, 216(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb55
  JAL zero, bb57
bb55:
  LA s10, sum
  LW s8, 0(s10)
  ADDIW s10, s8, 1
  LA s8, sum
  SW s10, 0(s8)
  ADDI s8, zero, 10
  LW t4, 0(sp)
  SLT s10, s8, t4
  XORI s8, s10, 1
  BNE s8, zero, bb500
  JAL zero, bb501
bb56:
  LW t4, 256(sp)
  ADD t0, t4, zero
  XOR s9, t0, zero
  SLTU t0, zero, s9
  ADD t4, t0, zero
  SB t4, 240(sp)
  JAL zero, bb58
bb57:
  ADD t4, zero, zero
  SB t4, 240(sp)
  JAL zero, bb58
bb58:
  LB t4, 240(sp)
  ADD t0, t4, zero
  BNE t0, zero, bb59
  JAL zero, bb61
bb59:
  LA t0, sum
  LW s11, 0(t0)
  ADDIW t0, s11, 1
  LA s11, sum
  SW t0, 0(s11)
  ADDI s11, zero, 11
  LW t4, 0(sp)
  SLT t0, s11, t4
  XORI s11, t0, 1
  BNE s11, zero, bb505
  JAL zero, bb506
bb60:
  LW t4, 280(sp)
  ADD a0, t4, zero
  XOR ra, a0, zero
  SLTU a0, zero, ra
  ADD t4, a0, zero
  SB t4, 264(sp)
  JAL zero, bb62
bb61:
  ADD t4, zero, zero
  SB t4, 264(sp)
  JAL zero, bb62
bb62:
  LB t4, 264(sp)
  ADD a0, t4, zero
  BNE a0, zero, bb63
  JAL zero, bb65
bb63:
  LA a0, sum
  LW t1, 0(a0)
  ADDIW a0, t1, 1
  LA t1, sum
  SW a0, 0(t1)
  ADDI t1, zero, 12
  LW t4, 0(sp)
  SLT a0, t1, t4
  XORI t1, a0, 1
  BNE t1, zero, bb510
  JAL zero, bb511
bb64:
  ADD a3, a0, zero
  XOR t2, a3, zero
  SLTU a3, zero, t2
  ADD t4, a3, zero
  SB t4, 288(sp)
  JAL zero, bb66
bb65:
  ADD t4, zero, zero
  SB t4, 288(sp)
  JAL zero, bb66
bb66:
  LB t4, 288(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb67
  JAL zero, bb69
bb67:
  LA a3, sum
  LW a1, 0(a3)
  ADDIW a3, a1, 1
  LA a1, sum
  SW a3, 0(a1)
  ADDI a1, zero, 13
  LW t4, 0(sp)
  SLT a3, a1, t4
  XORI a1, a3, 1
  BNE a1, zero, bb515
  JAL zero, bb516
bb68:
  ADD a6, a3, zero
  XOR a2, a6, zero
  SLTU a6, zero, a2
  ADD a2, a6, zero
  JAL zero, bb70
bb69:
  ADD a2, zero, zero
  JAL zero, bb70
bb70:
  ADD a6, a2, zero
  BNE a6, zero, bb71
  JAL zero, bb73
bb71:
  LA a6, sum
  LW a4, 0(a6)
  ADDIW a6, a4, 1
  LA a4, sum
  SW a6, 0(a4)
  ADDI a4, zero, 14
  LW t4, 0(sp)
  SLT a6, a4, t4
  XORI a4, a6, 1
  BNE a4, zero, bb520
  JAL zero, bb521
bb72:
  ADD s2, a6, zero
  XOR a5, s2, zero
  SLTU s2, zero, a5
  ADD a5, s2, zero
  JAL zero, bb74
bb73:
  ADD a5, zero, zero
  JAL zero, bb74
bb74:
  ADD s2, a5, zero
  BNE s2, zero, bb75
  JAL zero, bb77
bb75:
  LA s2, sum
  LW a7, 0(s2)
  ADDIW s2, a7, 1
  LA a7, sum
  SW s2, 0(a7)
  ADDI s2, zero, 15
  LW t4, 0(sp)
  SLT a7, s2, t4
  XORI s2, a7, 1
  BNE s2, zero, bb525
  JAL zero, bb526
bb76:
  ADD s4, a7, zero
  XOR s1, s4, zero
  SLTU s4, zero, s1
  ADD s1, s4, zero
  JAL zero, bb78
bb77:
  ADD s1, zero, zero
  JAL zero, bb78
bb78:
  ADD s4, s1, zero
  BNE s4, zero, bb79
  JAL zero, bb81
bb79:
  LA s4, sum
  LW s3, 0(s4)
  ADDIW s4, s3, 1
  LA s3, sum
  SW s4, 0(s3)
  ADDI s3, zero, 16
  LW t4, 0(sp)
  SLT s4, s3, t4
  XORI s3, s4, 1
  BNE s3, zero, bb530
  JAL zero, bb531
bb80:
  ADD s6, s4, zero
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb82
bb81:
  ADD s5, zero, zero
  JAL zero, bb82
bb82:
  ADD s6, s5, zero
  BNE s6, zero, bb83
  JAL zero, bb85
bb83:
  LA s6, sum
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 17
  LW t4, 0(sp)
  SLT s7, s6, t4
  XORI s6, s7, 1
  BNE s6, zero, bb535
  JAL zero, bb536
bb84:
  ADD s9, s7, zero
  XOR s8, s9, zero
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb86
bb85:
  ADD s8, zero, zero
  JAL zero, bb86
bb86:
  ADD s9, s8, zero
  BNE s9, zero, bb87
  JAL zero, bb89
bb87:
  LA s9, sum
  LW s10, 0(s9)
  ADDIW s9, s10, 1
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 18
  LW t4, 0(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  BNE s9, zero, bb540
  JAL zero, bb541
bb88:
  ADD ra, s10, zero
  XOR s11, ra, zero
  SLTU ra, zero, s11
  ADD s11, ra, zero
  JAL zero, bb90
bb89:
  ADD s11, zero, zero
  JAL zero, bb90
bb90:
  ADD ra, s11, zero
  BNE ra, zero, bb91
  JAL zero, bb93
bb91:
  LA ra, sum
  LW t0, 0(ra)
  ADDIW ra, t0, 1
  LA t0, sum
  SW ra, 0(t0)
  ADDI ra, zero, 19
  LW t4, 0(sp)
  SLT t0, ra, t4
  XORI ra, t0, 1
  BNE ra, zero, bb545
  JAL zero, bb546
bb92:
  ADD t2, t0, zero
  XOR t1, t2, zero
  SLTU t2, zero, t1
  ADD t1, t2, zero
  JAL zero, bb94
bb93:
  ADD t1, zero, zero
  JAL zero, bb94
bb94:
  ADD t2, t1, zero
  BNE t2, zero, bb95
  JAL zero, bb96
bb95:
  JAL zero, bb96
bb96:
  LW t4, 0(sp)
  ADDIW t2, t4, 1
  ADD s0, t2, zero
  JAL zero, bb15
bb97:
  ADD t4, s0, zero
  SW t4, 304(sp)
  LW t4, 304(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb98
  JAL zero, bb100
bb98:
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, sum
  SW s2, 0(s3)
  LW t4, 304(sp)
  SLT s2, zero, t4
  XORI s3, s2, 1
  BNE s3, zero, bb350
  JAL zero, bb351
bb99:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb101
  JAL zero, bb102
bb100:
  ADDI s0, zero, 1
  JAL zero, bb179
bb101:
  ADDI s4, zero, 1
  JAL zero, bb104
bb102:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 1
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb355
  JAL zero, bb356
bb103:
  ADD s2, s1, zero
  XOR s5, s2, zero
  SLTU s2, zero, s5
  ADD s4, s2, zero
  JAL zero, bb104
bb104:
  ADD s5, s4, zero
  BNE s5, zero, bb105
  JAL zero, bb106
bb105:
  ADDI s5, zero, 1
  JAL zero, bb108
bb106:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 2
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb360
  JAL zero, bb361
bb107:
  ADD s2, s1, zero
  XOR s6, s2, zero
  SLTU s2, zero, s6
  ADD s5, s2, zero
  JAL zero, bb108
bb108:
  ADD s6, s5, zero
  BNE s6, zero, bb109
  JAL zero, bb110
bb109:
  ADDI s6, zero, 1
  JAL zero, bb112
bb110:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 3
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb365
  JAL zero, bb366
bb111:
  ADD s2, s1, zero
  XOR s7, s2, zero
  SLTU s2, zero, s7
  ADD s6, s2, zero
  JAL zero, bb112
bb112:
  ADD s7, s6, zero
  BNE s7, zero, bb113
  JAL zero, bb114
bb113:
  ADDI s7, zero, 1
  JAL zero, bb116
bb114:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 4
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb370
  JAL zero, bb371
bb115:
  ADD s2, s1, zero
  XOR s8, s2, zero
  SLTU s2, zero, s8
  ADD s7, s2, zero
  JAL zero, bb116
bb116:
  ADD s8, s7, zero
  BNE s8, zero, bb117
  JAL zero, bb118
bb117:
  ADDI s8, zero, 1
  JAL zero, bb120
bb118:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 5
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb375
  JAL zero, bb376
bb119:
  ADD s2, s1, zero
  XOR s9, s2, zero
  SLTU s2, zero, s9
  ADD s8, s2, zero
  JAL zero, bb120
bb120:
  ADD s9, s8, zero
  BNE s9, zero, bb121
  JAL zero, bb122
bb121:
  ADDI s9, zero, 1
  JAL zero, bb124
bb122:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 6
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb380
  JAL zero, bb381
bb123:
  ADD s2, s1, zero
  XOR s10, s2, zero
  SLTU s2, zero, s10
  ADD s9, s2, zero
  JAL zero, bb124
bb124:
  ADD s10, s9, zero
  BNE s10, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s10, zero, 1
  JAL zero, bb128
bb126:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 7
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb385
  JAL zero, bb386
bb127:
  ADD s2, s1, zero
  XOR s11, s2, zero
  SLTU s2, zero, s11
  ADD s10, s2, zero
  JAL zero, bb128
bb128:
  ADD s11, s10, zero
  BNE s11, zero, bb129
  JAL zero, bb130
bb129:
  ADDI s11, zero, 1
  JAL zero, bb132
bb130:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 8
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb390
  JAL zero, bb391
bb131:
  ADD s2, s1, zero
  XOR ra, s2, zero
  SLTU s2, zero, ra
  ADD s11, s2, zero
  JAL zero, bb132
bb132:
  ADD ra, s11, zero
  BNE ra, zero, bb133
  JAL zero, bb134
bb133:
  ADDI ra, zero, 1
  JAL zero, bb136
bb134:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 9
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb395
  JAL zero, bb396
bb135:
  ADD s2, s1, zero
  XOR t0, s2, zero
  SLTU s2, zero, t0
  ADD ra, s2, zero
  JAL zero, bb136
bb136:
  ADD t0, ra, zero
  BNE t0, zero, bb137
  JAL zero, bb138
bb137:
  ADDI t0, zero, 1
  JAL zero, bb140
bb138:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 10
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb400
  JAL zero, bb401
bb139:
  ADD s2, s1, zero
  XOR t1, s2, zero
  SLTU s2, zero, t1
  ADD t0, s2, zero
  JAL zero, bb140
bb140:
  ADD t1, t0, zero
  BNE t1, zero, bb141
  JAL zero, bb142
bb141:
  ADDI t1, zero, 1
  JAL zero, bb144
bb142:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 11
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb405
  JAL zero, bb406
bb143:
  ADD s2, s1, zero
  XOR t2, s2, zero
  SLTU s2, zero, t2
  ADD t1, s2, zero
  JAL zero, bb144
bb144:
  ADD t2, t1, zero
  BNE t2, zero, bb145
  JAL zero, bb146
bb145:
  ADDI t2, zero, 1
  JAL zero, bb148
bb146:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 12
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb410
  JAL zero, bb411
bb147:
  ADD s2, s1, zero
  XOR a0, s2, zero
  SLTU s2, zero, a0
  ADD t2, s2, zero
  JAL zero, bb148
bb148:
  ADD a0, t2, zero
  BNE a0, zero, bb149
  JAL zero, bb150
bb149:
  ADDI a0, zero, 1
  JAL zero, bb152
bb150:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 13
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb415
  JAL zero, bb416
bb151:
  ADD s2, s1, zero
  XOR a1, s2, zero
  SLTU s2, zero, a1
  ADD a0, s2, zero
  JAL zero, bb152
bb152:
  ADD a1, a0, zero
  BNE a1, zero, bb153
  JAL zero, bb154
bb153:
  ADDI a1, zero, 1
  JAL zero, bb156
bb154:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 14
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb420
  JAL zero, bb421
bb155:
  ADD s2, s1, zero
  XOR a2, s2, zero
  SLTU s2, zero, a2
  ADD a1, s2, zero
  JAL zero, bb156
bb156:
  ADD a2, a1, zero
  BNE a2, zero, bb157
  JAL zero, bb158
bb157:
  ADDI a2, zero, 1
  JAL zero, bb160
bb158:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 15
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb425
  JAL zero, bb426
bb159:
  ADD s2, s1, zero
  XOR a3, s2, zero
  SLTU s2, zero, a3
  ADD a2, s2, zero
  JAL zero, bb160
bb160:
  ADD a3, a2, zero
  BNE a3, zero, bb161
  JAL zero, bb162
bb161:
  ADDI a3, zero, 1
  JAL zero, bb164
bb162:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 16
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb430
  JAL zero, bb431
bb163:
  ADD s2, s1, zero
  XOR a4, s2, zero
  SLTU s2, zero, a4
  ADD a3, s2, zero
  JAL zero, bb164
bb164:
  ADD a4, a3, zero
  BNE a4, zero, bb165
  JAL zero, bb166
bb165:
  ADDI a4, zero, 1
  JAL zero, bb168
bb166:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 17
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb435
  JAL zero, bb436
bb167:
  ADD s2, s1, zero
  XOR a5, s2, zero
  SLTU s2, zero, a5
  ADD a4, s2, zero
  JAL zero, bb168
bb168:
  ADD a5, a4, zero
  BNE a5, zero, bb169
  JAL zero, bb170
bb169:
  ADDI a5, zero, 1
  JAL zero, bb172
bb170:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 18
  LW t4, 304(sp)
  SLT s1, s0, t4
  XORI s0, s1, 1
  BNE s0, zero, bb440
  JAL zero, bb441
bb171:
  ADD s2, s1, zero
  XOR a6, s2, zero
  SLTU s2, zero, a6
  ADD a5, s2, zero
  JAL zero, bb172
bb172:
  ADD a6, a5, zero
  BNE a6, zero, bb173
  JAL zero, bb174
bb173:
  ADDI a6, zero, 1
  JAL zero, bb176
bb174:
  LA s0, sum
  LW a7, 0(s0)
  ADDIW s0, a7, 2
  LA a7, sum
  SW s0, 0(a7)
  ADDI s0, zero, 19
  LW t4, 304(sp)
  SLT a7, s0, t4
  XORI s0, a7, 1
  BNE s0, zero, bb445
  JAL zero, bb446
bb175:
  ADD s1, a7, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD a6, s1, zero
  JAL zero, bb176
bb176:
  ADD a7, a6, zero
  BNE a7, zero, bb177
  JAL zero, bb178
bb177:
  JAL zero, bb178
bb178:
  LW t4, 304(sp)
  ADDIW a7, t4, 1
  ADD s0, a7, zero
  JAL zero, bb97
bb179:
  ADD t4, s0, zero
  SW t4, 320(sp)
  LW t4, 320(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb183
  JAL zero, bb185
bb180:
  LW t4, 320(sp)
  ADDIW s5, t4, 1
  ADD s0, s5, zero
  JAL zero, bb179
bb181:
  LA s0, sum
  LW s5, 0(s0)
  ADDIW s0, s5, 3
  LA s5, sum
  SW s0, 0(s5)
  SLTI s0, zero, 20
  XORI t4, s0, 1
  SB t4, 360(sp)
  LB t4, 360(sp)
  ADD s0, t4, zero
  JAL zero, bb278
bb182:
  LW t4, 368(sp)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb187
  JAL zero, bb189
bb183:
  ADDI s2, zero, 1
  LW t3, 320(sp)
  SUBW t4, t3, s2
  SW t4, 336(sp)
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, sum
  SW s2, 0(s4)
  LW t4, 336(sp)
  LW t3, 320(sp)
  SLT s2, t4, t3
  XORI s4, s2, 1
  BNE s4, zero, bb550
  JAL zero, bb551
bb184:
  LW t4, 352(sp)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  ADD t4, s5, zero
  SB t4, 328(sp)
  JAL zero, bb186
bb185:
  ADD t4, zero, zero
  SB t4, 328(sp)
  JAL zero, bb186
bb186:
  LB t4, 328(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb180
  JAL zero, bb181
bb187:
  LA s7, sum
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 1
  SLTI s8, s7, 20
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb281
bb188:
  LW t4, 384(sp)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD t4, s8, zero
  SB t4, 376(sp)
  JAL zero, bb190
bb189:
  ADD t4, zero, zero
  SB t4, 376(sp)
  JAL zero, bb190
bb190:
  LB t4, 376(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb191
  JAL zero, bb192
bb191:
  ADDI t4, zero, 1
  SB t4, 392(sp)
  JAL zero, bb194
bb192:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb284
bb193:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 392(sp)
  JAL zero, bb194
bb194:
  LB t4, 392(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb195
  JAL zero, bb196
bb195:
  ADDI t4, zero, 1
  SB t4, 400(sp)
  JAL zero, bb198
bb196:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 3
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb287
bb197:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 400(sp)
  JAL zero, bb198
bb198:
  LB t4, 400(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb199
  JAL zero, bb200
bb199:
  JAL zero, bb200
bb200:
  LA s11, sum
  LW ra, 0(s11)
  ADDIW s11, ra, 3
  LA ra, sum
  SW s11, 0(ra)
  ADDI s11, zero, 4
  SLTI ra, s11, 20
  XORI t4, ra, 1
  SB t4, 408(sp)
  LB t4, 408(sp)
  ADD ra, t4, zero
  JAL zero, bb290
bb201:
  LW t4, 464(sp)
  ADD t0, t4, zero
  XOR t1, t0, zero
  SLTU t0, zero, t1
  XORI t1, t0, 1
  ADD t0, t1, zero
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb202
  JAL zero, bb203
bb202:
  ADDI t4, zero, 1
  SB t4, 456(sp)
  JAL zero, bb205
bb203:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb293
bb204:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb206
  JAL zero, bb208
bb205:
  LB t4, 456(sp)
  ADD t1, t4, zero
  BNE t1, zero, bb214
  JAL zero, bb215
bb206:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  ADDI s1, zero, 6
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb296
bb207:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  XORI s3, s2, 1
  ADD s2, s3, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s3, s2, zero
  JAL zero, bb209
bb208:
  ADD s3, zero, zero
  JAL zero, bb209
bb209:
  ADD s2, s3, zero
  BNE s2, zero, bb210
  JAL zero, bb212
bb210:
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 3
  LA s4, sum
  SW s2, 0(s4)
  ADDI s2, zero, 7
  SLTI s4, s2, 20
  XORI s2, s4, 1
  ADD s4, s2, zero
  JAL zero, bb299
bb211:
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb213
bb212:
  ADD s5, zero, zero
  JAL zero, bb213
bb213:
  ADD s4, s5, zero
  ADD t4, s4, zero
  SB t4, 456(sp)
  JAL zero, bb205
bb214:
  ADDI t4, zero, 1
  SB t4, 472(sp)
  JAL zero, bb217
bb215:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 8
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb302
bb216:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 472(sp)
  JAL zero, bb217
bb217:
  LB t4, 472(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb218
  JAL zero, bb219
bb218:
  JAL zero, bb219
bb219:
  LA t2, sum
  LW a0, 0(t2)
  ADDIW t2, a0, 3
  LA a0, sum
  SW t2, 0(a0)
  ADDI t2, zero, 9
  SLTI a0, t2, 20
  XORI t2, a0, 1
  ADD a0, t2, zero
  JAL zero, bb305
bb220:
  LW t4, 480(sp)
  ADD a0, t4, zero
  XOR a1, a0, zero
  SLTU a0, zero, a1
  BNE a0, zero, bb221
  JAL zero, bb223
bb221:
  LA a0, sum
  LW a1, 0(a0)
  ADDIW a0, a1, 3
  LA a1, sum
  SW a0, 0(a1)
  ADDI a0, zero, 10
  SLTI a1, a0, 20
  XORI a0, a1, 1
  ADD a1, a0, zero
  JAL zero, bb308
bb222:
  LW t4, 416(sp)
  ADD a1, t4, zero
  XOR a2, a1, zero
  SLTU a1, zero, a2
  XORI a2, a1, 1
  ADD a1, a2, zero
  XOR a2, a1, zero
  SLTU a1, zero, a2
  ADD t4, a1, zero
  SB t4, 424(sp)
  JAL zero, bb224
bb223:
  ADD t4, zero, zero
  SB t4, 424(sp)
  JAL zero, bb224
bb224:
  LB t4, 424(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb225
  JAL zero, bb226
bb225:
  ADDI t4, zero, 1
  SB t4, 448(sp)
  JAL zero, bb228
bb226:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb311
bb227:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 448(sp)
  JAL zero, bb228
bb228:
  LB t4, 448(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb229
  JAL zero, bb230
bb229:
  ADDI t4, zero, 1
  SB t4, 488(sp)
  JAL zero, bb232
bb230:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb314
bb231:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 488(sp)
  JAL zero, bb232
bb232:
  LB t4, 488(sp)
  ADD a4, t4, zero
  BNE a4, zero, bb233
  JAL zero, bb234
bb233:
  ADDI t4, zero, 1
  SB t4, 496(sp)
  JAL zero, bb236
bb234:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb317
bb235:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 496(sp)
  JAL zero, bb236
bb236:
  LB t4, 496(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb237
  JAL zero, bb238
bb237:
  ADDI t4, zero, 1
  SB t4, 432(sp)
  JAL zero, bb240
bb238:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 14
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb320
bb239:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb241
  JAL zero, bb243
bb240:
  LB t4, 432(sp)
  ADD a6, t4, zero
  BNE a6, zero, bb245
  JAL zero, bb246
bb241:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  ADDI s1, zero, 15
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb323
bb242:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s3, s2, zero
  JAL zero, bb244
bb243:
  ADD s3, zero, zero
  JAL zero, bb244
bb244:
  ADD s2, s3, zero
  ADD t4, s2, zero
  SB t4, 432(sp)
  JAL zero, bb240
bb245:
  JAL zero, bb246
bb246:
  LA a6, sum
  LW a7, 0(a6)
  ADDIW a6, a7, 3
  LA a7, sum
  SW a6, 0(a7)
  LB t4, 360(sp)
  ADD a6, t4, zero
  JAL zero, bb326
bb247:
  LW t4, 440(sp)
  ADD a7, t4, zero
  XOR s1, a7, zero
  SLTU a7, zero, s1
  BNE a7, zero, bb248
  JAL zero, bb250
bb248:
  LA s1, sum
  LW a7, 0(s1)
  ADDIW s1, a7, 3
  LA a7, sum
  SW s1, 0(a7)
  ADDI s1, zero, 2
  SLTI a7, s1, 20
  XORI s1, a7, 1
  ADD a7, s1, zero
  JAL zero, bb329
bb249:
  ADD a7, s1, zero
  XOR s6, a7, zero
  SLTU a7, zero, s6
  ADD s6, a7, zero
  JAL zero, bb251
bb250:
  ADD s6, zero, zero
  JAL zero, bb251
bb251:
  ADD a7, s6, zero
  BNE a7, zero, bb252
  JAL zero, bb254
bb252:
  LA a7, sum
  LW s3, 0(a7)
  ADDIW a7, s3, 3
  LA s3, sum
  SW a7, 0(s3)
  ADDI s3, zero, 3
  SLTI a7, s3, 20
  XORI s3, a7, 1
  ADD a7, s3, zero
  JAL zero, bb332
bb253:
  ADD a7, s3, zero
  XOR s2, a7, zero
  SLTU a7, zero, s2
  XORI s2, a7, 1
  ADD a7, s2, zero
  XOR s2, a7, zero
  SLTU a7, zero, s2
  ADD s2, a7, zero
  JAL zero, bb255
bb254:
  ADD s2, zero, zero
  JAL zero, bb255
bb255:
  ADD a7, s2, zero
  BNE a7, zero, bb256
  JAL zero, bb258
bb256:
  LA a7, sum
  LW s4, 0(a7)
  ADDIW a7, s4, 3
  LA s4, sum
  SW a7, 0(s4)
  LB t4, 408(sp)
  ADD s4, t4, zero
  JAL zero, bb335
bb257:
  ADD a7, s4, zero
  XOR s5, a7, zero
  SLTU a7, zero, s5
  XORI s5, a7, 1
  ADD a7, s5, zero
  XOR s5, a7, zero
  SLTU a7, zero, s5
  ADD s5, a7, zero
  JAL zero, bb259
bb258:
  ADD s5, zero, zero
  JAL zero, bb259
bb259:
  ADD a7, s5, zero
  BNE a7, zero, bb260
  JAL zero, bb261
bb260:
  ADDI t4, zero, 1
  SB t4, 504(sp)
  JAL zero, bb263
bb261:
  LA s0, sum
  LW s7, 0(s0)
  ADDIW s0, s7, 3
  LA s7, sum
  SW s0, 0(s7)
  ADDI s0, zero, 5
  SLTI s7, s0, 20
  XORI s0, s7, 1
  ADD s7, s0, zero
  JAL zero, bb338
bb262:
  ADD s7, s0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD t4, s7, zero
  SB t4, 504(sp)
  JAL zero, bb263
bb263:
  LB t4, 504(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb264
  JAL zero, bb265
bb264:
  ADDI s0, zero, 1
  JAL zero, bb267
bb265:
  LA s7, sum
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 6
  SLTI s8, s7, 20
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb341
bb266:
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb268
  JAL zero, bb270
bb267:
  ADD s9, s0, zero
  BNE s9, zero, bb272
  JAL zero, bb273
bb268:
  LA s8, sum
  LW s9, 0(s8)
  ADDIW s8, s9, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 7
  SLTI s9, s8, 20
  XORI s8, s9, 1
  ADD s9, s8, zero
  JAL zero, bb344
bb269:
  ADD s9, s8, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  XORI s10, s9, 1
  ADD s9, s10, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD s10, s9, zero
  JAL zero, bb271
bb270:
  ADD s10, zero, zero
  JAL zero, bb271
bb271:
  ADD s9, s10, zero
  ADD s0, s9, zero
  JAL zero, bb267
bb272:
  ADDI s9, zero, 1
  JAL zero, bb275
bb273:
  LA s7, sum
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 8
  SLTI s8, s7, 20
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb347
bb274:
  ADD s8, s7, zero
  XOR s10, s8, zero
  SLTU s8, zero, s10
  ADD s9, s8, zero
  JAL zero, bb275
bb275:
  ADD s7, s9, zero
  BNE s7, zero, bb276
  JAL zero, bb557
bb276:
  ADDI s7, zero, 1
  JAL zero, bb277
bb277:
  ADD s8, s7, zero
  LA s10, sum
  LW s11, 0(s10)
  ADDW s10, s11, s8
  ADD a0, s10, zero
  CALL putint
  ADD a0, zero, zero
  LD s1, 512(sp)
  LD ra, 520(sp)
  LD s0, 528(sp)
  LD s5, 536(sp)
  LD s10, 544(sp)
  LD s2, 552(sp)
  LD s3, 560(sp)
  LD s4, 568(sp)
  LD s6, 576(sp)
  LD s7, 584(sp)
  LD s8, 592(sp)
  LD s9, 600(sp)
  LD s11, 608(sp)
  ADDI sp, sp, 624
  JALR zero, 0(ra)
bb278:
  ADD s7, s0, zero
  BNE s7, zero, bb279
  JAL zero, bb280
bb279:
  ADD t4, zero, zero
  SW t4, 368(sp)
  JAL zero, bb182
bb280:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 368(sp)
  JAL zero, bb182
bb281:
  ADD s7, s8, zero
  BNE s7, zero, bb282
  JAL zero, bb283
bb282:
  ADD t4, zero, zero
  SW t4, 384(sp)
  JAL zero, bb188
bb283:
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 384(sp)
  JAL zero, bb188
bb284:
  ADD s0, s1, zero
  BNE s0, zero, bb285
  JAL zero, bb286
bb285:
  ADD s0, zero, zero
  JAL zero, bb193
bb286:
  LA s1, array
  ADDI s2, s1, 8
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb193
bb287:
  ADD s0, s1, zero
  BNE s0, zero, bb288
  JAL zero, bb289
bb288:
  ADD s0, zero, zero
  JAL zero, bb197
bb289:
  LA s1, array
  ADDI s2, s1, 12
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb197
bb290:
  ADD t0, ra, zero
  BNE t0, zero, bb291
  JAL zero, bb292
bb291:
  ADD t4, zero, zero
  SW t4, 464(sp)
  JAL zero, bb201
bb292:
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 464(sp)
  JAL zero, bb201
bb293:
  ADD s0, s1, zero
  BNE s0, zero, bb294
  JAL zero, bb295
bb294:
  ADD s0, zero, zero
  JAL zero, bb204
bb295:
  LA s1, array
  ADDI s2, s1, 20
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb204
bb296:
  ADD s1, s2, zero
  BNE s1, zero, bb297
  JAL zero, bb298
bb297:
  ADD s1, zero, zero
  JAL zero, bb207
bb298:
  LA s2, array
  ADDI s4, s2, 24
  LW s2, 0(s4)
  ADD s1, s2, zero
  JAL zero, bb207
bb299:
  ADD s2, s4, zero
  BNE s2, zero, bb300
  JAL zero, bb301
bb300:
  ADD s2, zero, zero
  JAL zero, bb211
bb301:
  LA s4, array
  ADDI s6, s4, 28
  LW s4, 0(s6)
  ADD s2, s4, zero
  JAL zero, bb211
bb302:
  ADD s0, s1, zero
  BNE s0, zero, bb303
  JAL zero, bb304
bb303:
  ADD s0, zero, zero
  JAL zero, bb216
bb304:
  LA s1, array
  ADDI s2, s1, 32
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb216
bb305:
  ADD t2, a0, zero
  BNE t2, zero, bb306
  JAL zero, bb307
bb306:
  ADD t4, zero, zero
  SW t4, 480(sp)
  JAL zero, bb220
bb307:
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 480(sp)
  JAL zero, bb220
bb308:
  ADD a0, a1, zero
  BNE a0, zero, bb309
  JAL zero, bb310
bb309:
  ADD t4, zero, zero
  SW t4, 416(sp)
  JAL zero, bb222
bb310:
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 416(sp)
  JAL zero, bb222
bb311:
  ADD s0, s1, zero
  BNE s0, zero, bb312
  JAL zero, bb313
bb312:
  ADD s0, zero, zero
  JAL zero, bb227
bb313:
  LA s1, array
  ADDI s2, s1, 44
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb227
bb314:
  ADD s0, s1, zero
  BNE s0, zero, bb315
  JAL zero, bb316
bb315:
  ADD s0, zero, zero
  JAL zero, bb231
bb316:
  LA s1, array
  ADDI s2, s1, 48
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb231
bb317:
  ADD s0, s1, zero
  BNE s0, zero, bb318
  JAL zero, bb319
bb318:
  ADD s0, zero, zero
  JAL zero, bb235
bb319:
  LA s1, array
  ADDI s2, s1, 52
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb235
bb320:
  ADD s0, s1, zero
  BNE s0, zero, bb321
  JAL zero, bb322
bb321:
  ADD s0, zero, zero
  JAL zero, bb239
bb322:
  LA s1, array
  ADDI s2, s1, 56
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb239
bb323:
  ADD s1, s2, zero
  BNE s1, zero, bb324
  JAL zero, bb325
bb324:
  ADD s1, zero, zero
  JAL zero, bb242
bb325:
  LA s2, array
  ADDI s4, s2, 60
  LW s2, 0(s4)
  ADD s1, s2, zero
  JAL zero, bb242
bb326:
  ADD a7, a6, zero
  BNE a7, zero, bb327
  JAL zero, bb328
bb327:
  ADD t4, zero, zero
  SW t4, 440(sp)
  JAL zero, bb247
bb328:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 440(sp)
  JAL zero, bb247
bb329:
  ADD s1, a7, zero
  BNE s1, zero, bb330
  JAL zero, bb331
bb330:
  ADD s1, zero, zero
  JAL zero, bb249
bb331:
  LA s0, array
  ADDI s2, s0, 8
  LW s0, 0(s2)
  ADD s1, s0, zero
  JAL zero, bb249
bb332:
  ADD s3, a7, zero
  BNE s3, zero, bb333
  JAL zero, bb334
bb333:
  ADD s3, zero, zero
  JAL zero, bb253
bb334:
  LA s0, array
  ADDI s4, s0, 12
  LW s0, 0(s4)
  ADD s3, s0, zero
  JAL zero, bb253
bb335:
  ADD a7, s4, zero
  BNE a7, zero, bb336
  JAL zero, bb337
bb336:
  ADD s4, zero, zero
  JAL zero, bb257
bb337:
  LA s0, array
  ADDI s7, s0, 16
  LW s0, 0(s7)
  ADD s4, s0, zero
  JAL zero, bb257
bb338:
  ADD s0, s7, zero
  BNE s0, zero, bb339
  JAL zero, bb340
bb339:
  ADD s0, zero, zero
  JAL zero, bb262
bb340:
  LA s7, array
  ADDI s8, s7, 20
  LW s7, 0(s8)
  ADD s0, s7, zero
  JAL zero, bb262
bb341:
  ADD s7, s8, zero
  BNE s7, zero, bb342
  JAL zero, bb343
bb342:
  ADD s7, zero, zero
  JAL zero, bb266
bb343:
  LA s0, array
  ADDI s8, s0, 24
  LW s0, 0(s8)
  ADD s7, s0, zero
  JAL zero, bb266
bb344:
  ADD s8, s9, zero
  BNE s8, zero, bb345
  JAL zero, bb346
bb345:
  ADD s8, zero, zero
  JAL zero, bb269
bb346:
  LA s0, array
  ADDI s9, s0, 28
  LW s0, 0(s9)
  ADD s8, s0, zero
  JAL zero, bb269
bb347:
  ADD s7, s8, zero
  BNE s7, zero, bb348
  JAL zero, bb349
bb348:
  ADD s7, zero, zero
  JAL zero, bb274
bb349:
  LA s8, array
  ADDI s9, s8, 32
  LW s8, 0(s9)
  ADD s7, s8, zero
  JAL zero, bb274
bb350:
  ADDI t4, zero, 1
  SB t4, 312(sp)
  JAL zero, bb352
bb351:
  SLTI s0, zero, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 312(sp)
  JAL zero, bb352
bb352:
  LB t4, 312(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb353
  JAL zero, bb354
bb353:
  ADDI s3, zero, 1
  JAL zero, bb99
bb354:
  LA s0, array
  SW zero, 0(s0)
  LA s0, array
  LW s1, 0(s0)
  ADD s3, s1, zero
  JAL zero, bb99
bb355:
  ADDI s0, zero, 1
  JAL zero, bb357
bb356:
  ADDI s1, zero, 1
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb357
bb357:
  ADD s1, s0, zero
  BNE s1, zero, bb358
  JAL zero, bb359
bb358:
  ADDI s1, zero, 1
  JAL zero, bb103
bb359:
  LA s2, array
  ADDI s4, s2, 4
  SW zero, 0(s4)
  LA s2, array
  LW s4, 0(s2)
  ADD s1, s4, zero
  JAL zero, bb103
bb360:
  ADDI s0, zero, 1
  JAL zero, bb362
bb361:
  ADDI s1, zero, 2
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb362
bb362:
  ADD s1, s0, zero
  BNE s1, zero, bb363
  JAL zero, bb364
bb363:
  ADDI s1, zero, 1
  JAL zero, bb107
bb364:
  LA s2, array
  ADDI s5, s2, 8
  SW zero, 0(s5)
  LA s2, array
  ADDI s5, s2, 4
  LW s2, 0(s5)
  ADD s1, s2, zero
  JAL zero, bb107
bb365:
  ADDI s0, zero, 1
  JAL zero, bb367
bb366:
  ADDI s1, zero, 3
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb367
bb367:
  ADD s1, s0, zero
  BNE s1, zero, bb368
  JAL zero, bb369
bb368:
  ADDI s1, zero, 1
  JAL zero, bb111
bb369:
  LA s2, array
  ADDI s6, s2, 12
  SW zero, 0(s6)
  LA s2, array
  ADDI s6, s2, 8
  LW s2, 0(s6)
  ADD s1, s2, zero
  JAL zero, bb111
bb370:
  ADDI s0, zero, 1
  JAL zero, bb372
bb371:
  ADDI s1, zero, 4
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb372
bb372:
  ADD s1, s0, zero
  BNE s1, zero, bb373
  JAL zero, bb374
bb373:
  ADDI s1, zero, 1
  JAL zero, bb115
bb374:
  LA s2, array
  ADDI s7, s2, 16
  SW zero, 0(s7)
  LA s2, array
  ADDI s7, s2, 12
  LW s2, 0(s7)
  ADD s1, s2, zero
  JAL zero, bb115
bb375:
  ADDI s0, zero, 1
  JAL zero, bb377
bb376:
  ADDI s1, zero, 5
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb377
bb377:
  ADD s1, s0, zero
  BNE s1, zero, bb378
  JAL zero, bb379
bb378:
  ADDI s1, zero, 1
  JAL zero, bb119
bb379:
  LA s2, array
  ADDI s8, s2, 20
  SW zero, 0(s8)
  LA s2, array
  ADDI s8, s2, 16
  LW s2, 0(s8)
  ADD s1, s2, zero
  JAL zero, bb119
bb380:
  ADDI s0, zero, 1
  JAL zero, bb382
bb381:
  ADDI s1, zero, 6
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb382
bb382:
  ADD s1, s0, zero
  BNE s1, zero, bb383
  JAL zero, bb384
bb383:
  ADDI s1, zero, 1
  JAL zero, bb123
bb384:
  LA s2, array
  ADDI s9, s2, 24
  SW zero, 0(s9)
  LA s2, array
  ADDI s9, s2, 20
  LW s2, 0(s9)
  ADD s1, s2, zero
  JAL zero, bb123
bb385:
  ADDI s0, zero, 1
  JAL zero, bb387
bb386:
  ADDI s1, zero, 7
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb387
bb387:
  ADD s1, s0, zero
  BNE s1, zero, bb388
  JAL zero, bb389
bb388:
  ADDI s1, zero, 1
  JAL zero, bb127
bb389:
  LA s2, array
  ADDI s10, s2, 28
  SW zero, 0(s10)
  LA s2, array
  ADDI s10, s2, 24
  LW s2, 0(s10)
  ADD s1, s2, zero
  JAL zero, bb127
bb390:
  ADDI s0, zero, 1
  JAL zero, bb392
bb391:
  ADDI s1, zero, 8
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb392
bb392:
  ADD s1, s0, zero
  BNE s1, zero, bb393
  JAL zero, bb394
bb393:
  ADDI s1, zero, 1
  JAL zero, bb131
bb394:
  LA s2, array
  ADDI s11, s2, 32
  SW zero, 0(s11)
  LA s2, array
  ADDI s11, s2, 28
  LW s2, 0(s11)
  ADD s1, s2, zero
  JAL zero, bb131
bb395:
  ADDI s0, zero, 1
  JAL zero, bb397
bb396:
  ADDI s1, zero, 9
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb397
bb397:
  ADD s1, s0, zero
  BNE s1, zero, bb398
  JAL zero, bb399
bb398:
  ADDI s1, zero, 1
  JAL zero, bb135
bb399:
  LA s2, array
  ADDI ra, s2, 36
  SW zero, 0(ra)
  LA s2, array
  ADDI ra, s2, 32
  LW s2, 0(ra)
  ADD s1, s2, zero
  JAL zero, bb135
bb400:
  ADDI s0, zero, 1
  JAL zero, bb402
bb401:
  ADDI s1, zero, 10
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb402
bb402:
  ADD s1, s0, zero
  BNE s1, zero, bb403
  JAL zero, bb404
bb403:
  ADDI s1, zero, 1
  JAL zero, bb139
bb404:
  LA s2, array
  ADDI t0, s2, 40
  SW zero, 0(t0)
  LA s2, array
  ADDI t0, s2, 36
  LW s2, 0(t0)
  ADD s1, s2, zero
  JAL zero, bb139
bb405:
  ADDI s0, zero, 1
  JAL zero, bb407
bb406:
  ADDI s1, zero, 11
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb407
bb407:
  ADD s1, s0, zero
  BNE s1, zero, bb408
  JAL zero, bb409
bb408:
  ADDI s1, zero, 1
  JAL zero, bb143
bb409:
  LA s2, array
  ADDI t1, s2, 44
  SW zero, 0(t1)
  LA s2, array
  ADDI t1, s2, 40
  LW s2, 0(t1)
  ADD s1, s2, zero
  JAL zero, bb143
bb410:
  ADDI s0, zero, 1
  JAL zero, bb412
bb411:
  ADDI s1, zero, 12
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb412
bb412:
  ADD s1, s0, zero
  BNE s1, zero, bb413
  JAL zero, bb414
bb413:
  ADDI s1, zero, 1
  JAL zero, bb147
bb414:
  LA s2, array
  ADDI t2, s2, 48
  SW zero, 0(t2)
  LA s2, array
  ADDI t2, s2, 44
  LW s2, 0(t2)
  ADD s1, s2, zero
  JAL zero, bb147
bb415:
  ADDI s0, zero, 1
  JAL zero, bb417
bb416:
  ADDI s1, zero, 13
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb417
bb417:
  ADD s1, s0, zero
  BNE s1, zero, bb418
  JAL zero, bb419
bb418:
  ADDI s1, zero, 1
  JAL zero, bb151
bb419:
  LA s2, array
  ADDI a0, s2, 52
  SW zero, 0(a0)
  LA s2, array
  ADDI a0, s2, 48
  LW s2, 0(a0)
  ADD s1, s2, zero
  JAL zero, bb151
bb420:
  ADDI s0, zero, 1
  JAL zero, bb422
bb421:
  ADDI s1, zero, 14
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb422
bb422:
  ADD s1, s0, zero
  BNE s1, zero, bb423
  JAL zero, bb424
bb423:
  ADDI s1, zero, 1
  JAL zero, bb155
bb424:
  LA s2, array
  ADDI a1, s2, 56
  SW zero, 0(a1)
  LA s2, array
  ADDI a1, s2, 52
  LW s2, 0(a1)
  ADD s1, s2, zero
  JAL zero, bb155
bb425:
  ADDI s0, zero, 1
  JAL zero, bb427
bb426:
  ADDI s1, zero, 15
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb427
bb427:
  ADD s1, s0, zero
  BNE s1, zero, bb428
  JAL zero, bb429
bb428:
  ADDI s1, zero, 1
  JAL zero, bb159
bb429:
  LA s2, array
  ADDI a2, s2, 60
  SW zero, 0(a2)
  LA s2, array
  ADDI a2, s2, 56
  LW s2, 0(a2)
  ADD s1, s2, zero
  JAL zero, bb159
bb430:
  ADDI s0, zero, 1
  JAL zero, bb432
bb431:
  ADDI s1, zero, 16
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb432
bb432:
  ADD s1, s0, zero
  BNE s1, zero, bb433
  JAL zero, bb434
bb433:
  ADDI s1, zero, 1
  JAL zero, bb163
bb434:
  LA s2, array
  ADDI a3, s2, 64
  SW zero, 0(a3)
  LA s2, array
  ADDI a3, s2, 60
  LW s2, 0(a3)
  ADD s1, s2, zero
  JAL zero, bb163
bb435:
  ADDI s0, zero, 1
  JAL zero, bb437
bb436:
  ADDI s1, zero, 17
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb437
bb437:
  ADD s1, s0, zero
  BNE s1, zero, bb438
  JAL zero, bb439
bb438:
  ADDI s1, zero, 1
  JAL zero, bb167
bb439:
  LA s2, array
  ADDI a4, s2, 68
  SW zero, 0(a4)
  LA s2, array
  ADDI a4, s2, 64
  LW s2, 0(a4)
  ADD s1, s2, zero
  JAL zero, bb167
bb440:
  ADDI s0, zero, 1
  JAL zero, bb442
bb441:
  ADDI s1, zero, 18
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb442
bb442:
  ADD s1, s0, zero
  BNE s1, zero, bb443
  JAL zero, bb444
bb443:
  ADDI s1, zero, 1
  JAL zero, bb171
bb444:
  LA s2, array
  ADDI a5, s2, 72
  SW zero, 0(a5)
  LA s2, array
  ADDI a5, s2, 68
  LW s2, 0(a5)
  ADD s1, s2, zero
  JAL zero, bb171
bb445:
  ADDI s0, zero, 1
  JAL zero, bb447
bb446:
  ADDI s1, zero, 19
  SLTI s2, s1, 20
  XORI s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb447
bb447:
  ADD a7, s0, zero
  BNE a7, zero, bb448
  JAL zero, bb449
bb448:
  ADDI a7, zero, 1
  JAL zero, bb175
bb449:
  LA s1, array
  ADDI s2, s1, 76
  SW zero, 0(s2)
  LA s1, array
  ADDI s2, s1, 72
  LW s1, 0(s2)
  ADD a7, s1, zero
  JAL zero, bb175
bb450:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb452
bb451:
  SLTI s0, zero, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 8(sp)
  JAL zero, bb452
bb452:
  LB t4, 8(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb453
  JAL zero, bb454
bb453:
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb17
bb454:
  LA s0, array
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 16(sp)
  JAL zero, bb17
bb455:
  ADDI t4, zero, 1
  SB t4, 32(sp)
  JAL zero, bb457
bb456:
  ADDI s0, zero, 1
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 32(sp)
  JAL zero, bb457
bb457:
  LB t4, 32(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb458
  JAL zero, bb459
bb458:
  ADD t4, zero, zero
  SW t4, 40(sp)
  JAL zero, bb20
bb459:
  LA s0, array
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 40(sp)
  JAL zero, bb20
bb460:
  ADDI t4, zero, 1
  SB t4, 56(sp)
  JAL zero, bb462
bb461:
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 56(sp)
  JAL zero, bb462
bb462:
  LB t4, 56(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb463
  JAL zero, bb464
bb463:
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb24
bb464:
  LA s0, array
  ADDI s1, s0, 8
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb24
bb465:
  ADDI t4, zero, 1
  SB t4, 80(sp)
  JAL zero, bb467
bb466:
  ADDI s0, zero, 3
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 80(sp)
  JAL zero, bb467
bb467:
  LB t4, 80(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb468
  JAL zero, bb469
bb468:
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb28
bb469:
  LA s0, array
  ADDI s1, s0, 12
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 8
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb28
bb470:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb472
bb471:
  ADDI s0, zero, 4
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 104(sp)
  JAL zero, bb472
bb472:
  LB t4, 104(sp)
  ADD t1, t4, zero
  BNE t1, zero, bb473
  JAL zero, bb474
bb473:
  ADD t4, zero, zero
  SW t4, 112(sp)
  JAL zero, bb32
bb474:
  LA s0, array
  ADDI s1, s0, 16
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 112(sp)
  JAL zero, bb32
bb475:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb477
bb476:
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 128(sp)
  JAL zero, bb477
bb477:
  LB t4, 128(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb478
  JAL zero, bb479
bb478:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb36
bb479:
  LA s0, array
  ADDI s1, s0, 20
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 136(sp)
  JAL zero, bb36
bb480:
  ADDI t4, zero, 1
  SB t4, 152(sp)
  JAL zero, bb482
bb481:
  ADDI s0, zero, 6
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 152(sp)
  JAL zero, bb482
bb482:
  LB t4, 152(sp)
  ADD a4, t4, zero
  BNE a4, zero, bb483
  JAL zero, bb484
bb483:
  ADD t4, zero, zero
  SW t4, 160(sp)
  JAL zero, bb40
bb484:
  LA s0, array
  ADDI s1, s0, 24
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 20
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 160(sp)
  JAL zero, bb40
bb485:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb487
bb486:
  ADDI s0, zero, 7
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 176(sp)
  JAL zero, bb487
bb487:
  LB t4, 176(sp)
  ADD a7, t4, zero
  BNE a7, zero, bb488
  JAL zero, bb489
bb488:
  ADD t4, zero, zero
  SW t4, 184(sp)
  JAL zero, bb44
bb489:
  LA s0, array
  ADDI s1, s0, 28
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 24
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb44
bb490:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb492
bb491:
  ADDI s0, zero, 8
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 200(sp)
  JAL zero, bb492
bb492:
  LB t4, 200(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb493
  JAL zero, bb494
bb493:
  ADD t4, zero, zero
  SW t4, 208(sp)
  JAL zero, bb48
bb494:
  LA s0, array
  ADDI s1, s0, 32
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 28
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 208(sp)
  JAL zero, bb48
bb495:
  ADDI t4, zero, 1
  SB t4, 224(sp)
  JAL zero, bb497
bb496:
  ADDI s0, zero, 9
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 224(sp)
  JAL zero, bb497
bb497:
  LB t4, 224(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb498
  JAL zero, bb499
bb498:
  ADD t4, zero, zero
  SW t4, 232(sp)
  JAL zero, bb52
bb499:
  LA s0, array
  ADDI s1, s0, 36
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 32
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 232(sp)
  JAL zero, bb52
bb500:
  ADDI t4, zero, 1
  SB t4, 248(sp)
  JAL zero, bb502
bb501:
  ADDI s0, zero, 10
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 248(sp)
  JAL zero, bb502
bb502:
  LB t4, 248(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb503
  JAL zero, bb504
bb503:
  ADD t4, zero, zero
  SW t4, 256(sp)
  JAL zero, bb56
bb504:
  LA s0, array
  ADDI s1, s0, 40
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 256(sp)
  JAL zero, bb56
bb505:
  ADDI t4, zero, 1
  SB t4, 272(sp)
  JAL zero, bb507
bb506:
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 272(sp)
  JAL zero, bb507
bb507:
  LB t4, 272(sp)
  ADD t0, t4, zero
  BNE t0, zero, bb508
  JAL zero, bb509
bb508:
  ADD t4, zero, zero
  SW t4, 280(sp)
  JAL zero, bb60
bb509:
  LA s0, array
  ADDI s1, s0, 44
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 280(sp)
  JAL zero, bb60
bb510:
  ADDI t4, zero, 1
  SB t4, 296(sp)
  JAL zero, bb512
bb511:
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 296(sp)
  JAL zero, bb512
bb512:
  LB t4, 296(sp)
  ADD a0, t4, zero
  BNE a0, zero, bb513
  JAL zero, bb514
bb513:
  ADD a0, zero, zero
  JAL zero, bb64
bb514:
  LA s0, array
  ADDI s1, s0, 48
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 44
  LW s0, 0(s1)
  ADD a0, s0, zero
  JAL zero, bb64
bb515:
  ADDI a1, zero, 1
  JAL zero, bb517
bb516:
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD a1, s0, zero
  JAL zero, bb517
bb517:
  ADD a3, a1, zero
  BNE a3, zero, bb518
  JAL zero, bb519
bb518:
  ADD a3, zero, zero
  JAL zero, bb68
bb519:
  LA s0, array
  ADDI s1, s0, 52
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 48
  LW s0, 0(s1)
  ADD a3, s0, zero
  JAL zero, bb68
bb520:
  ADDI a4, zero, 1
  JAL zero, bb522
bb521:
  ADDI s0, zero, 14
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD a4, s0, zero
  JAL zero, bb522
bb522:
  ADD a6, a4, zero
  BNE a6, zero, bb523
  JAL zero, bb524
bb523:
  ADD a6, zero, zero
  JAL zero, bb72
bb524:
  LA s0, array
  ADDI s1, s0, 56
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 52
  LW s0, 0(s1)
  ADD a6, s0, zero
  JAL zero, bb72
bb525:
  ADDI s2, zero, 1
  JAL zero, bb527
bb526:
  ADDI s0, zero, 15
  SLTI s3, s0, 20
  XORI s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb527
bb527:
  ADD a7, s2, zero
  BNE a7, zero, bb528
  JAL zero, bb529
bb528:
  ADD a7, zero, zero
  JAL zero, bb76
bb529:
  LA s0, array
  ADDI s3, s0, 60
  ADDI s0, zero, 1
  SW s0, 0(s3)
  LA s0, array
  ADDI s3, s0, 56
  LW s0, 0(s3)
  ADD a7, s0, zero
  JAL zero, bb76
bb530:
  ADDI s3, zero, 1
  JAL zero, bb532
bb531:
  ADDI s0, zero, 16
  SLTI s4, s0, 20
  XORI s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb532
bb532:
  ADD s4, s3, zero
  BNE s4, zero, bb533
  JAL zero, bb534
bb533:
  ADD s4, zero, zero
  JAL zero, bb80
bb534:
  LA s0, array
  ADDI s6, s0, 64
  ADDI s0, zero, 1
  SW s0, 0(s6)
  LA s0, array
  ADDI s6, s0, 60
  LW s0, 0(s6)
  ADD s4, s0, zero
  JAL zero, bb80
bb535:
  ADDI s6, zero, 1
  JAL zero, bb537
bb536:
  ADDI s0, zero, 17
  SLTI s7, s0, 20
  XORI s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb537
bb537:
  ADD s7, s6, zero
  BNE s7, zero, bb538
  JAL zero, bb539
bb538:
  ADD s7, zero, zero
  JAL zero, bb84
bb539:
  LA s0, array
  ADDI s9, s0, 68
  ADDI s0, zero, 1
  SW s0, 0(s9)
  LA s0, array
  ADDI s9, s0, 64
  LW s0, 0(s9)
  ADD s7, s0, zero
  JAL zero, bb84
bb540:
  ADDI s9, zero, 1
  JAL zero, bb542
bb541:
  ADDI s0, zero, 18
  SLTI s10, s0, 20
  XORI s0, s10, 1
  ADD s9, s0, zero
  JAL zero, bb542
bb542:
  ADD s10, s9, zero
  BNE s10, zero, bb543
  JAL zero, bb544
bb543:
  ADD s10, zero, zero
  JAL zero, bb88
bb544:
  LA s0, array
  ADDI ra, s0, 72
  ADDI s0, zero, 1
  SW s0, 0(ra)
  LA s0, array
  ADDI ra, s0, 68
  LW s0, 0(ra)
  ADD s10, s0, zero
  JAL zero, bb88
bb545:
  ADDI ra, zero, 1
  JAL zero, bb547
bb546:
  ADDI s0, zero, 19
  SLTI t0, s0, 20
  XORI s0, t0, 1
  ADD ra, s0, zero
  JAL zero, bb547
bb547:
  ADD t0, ra, zero
  BNE t0, zero, bb548
  JAL zero, bb549
bb548:
  ADD t0, zero, zero
  JAL zero, bb92
bb549:
  LA s0, array
  ADDI t2, s0, 76
  ADDI s0, zero, 1
  SW s0, 0(t2)
  LA s0, array
  ADDI t2, s0, 72
  LW s0, 0(t2)
  ADD t0, s0, zero
  JAL zero, bb92
bb550:
  ADDI t4, zero, 1
  SB t4, 344(sp)
  JAL zero, bb552
bb551:
  LW t4, 336(sp)
  SLTI s0, t4, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 344(sp)
  JAL zero, bb552
bb552:
  LB t4, 344(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb553
  JAL zero, bb554
bb553:
  ADD t4, zero, zero
  SW t4, 352(sp)
  JAL zero, bb184
bb554:
  ADDI s0, zero, 4
  LW t4, 336(sp)
  MULW s1, t4, s0
  LA s0, array
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LW t4, 336(sp)
  XOR s0, t4, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb555
  JAL zero, bb556
bb555:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 352(sp)
  JAL zero, bb184
bb556:
  ADDI s0, zero, 1
  LW t4, 336(sp)
  SUBW s1, t4, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 352(sp)
  JAL zero, bb184
bb557:
  ADD s7, zero, zero
  JAL zero, bb277
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
  BNE s1, zero, bb559
  JAL zero, bb560
bb559:
  ADDI s1, zero, 1
  JAL zero, bb561
bb560:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb561
bb561:
  ADD s2, s1, zero
  BNE s2, zero, bb562
  JAL zero, bb563
bb562:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb563:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb564
  JAL zero, bb565
bb564:
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
bb565:
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
