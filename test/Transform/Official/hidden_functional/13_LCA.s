.global LCA
.global init
.global tree
.global add_edge
.global main
.global quick_read
.section .bss
head:
.space 40020
next:
.space 40020
to:
.space 40020
dep:
.space 40020
f:
.space 800400



.section .data





n:
.word 0x00000000
cnt:
.word 0x00000000
m:
.word 0x00000000
.section .text
LCA:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, dep
  ADD s1, s2, s1
  LW s1, 0(s1)
  SLLIW s2, a1, 2
  LA s3, dep
  ADD s2, s3, s2
  LW s2, 0(s2)
  BLT s1, s2, bb26
  # implict jump to bb1
bb1:
  ADD s1, a1, zero
  ADD s2, s0, zero
  # implict jump to bb2
bb2:
  SLLIW s0, s2, 2
  LA s3, dep
  ADD s0, s3, s0
  LW s0, 0(s0)
  SLLIW s3, s1, 2
  LA s4, dep
  ADD s3, s4, s3
  LW s4, 0(s3)
  BLT s4, s0, bb16
  # implict jump to bb3
bb3:
  ADD s0, s2, zero
  # implict jump to bb4
bb4:
  XOR s8, s0, s1
  SLTIU s8, s8, 1
  BNE s8, zero, bb15
  # implict jump to bb5
bb5:
  ADDI s8, zero, 19
  SLT s8, s8, zero
  XORI s8, s8, 1
  BNE s8, zero, bb8
  # implict jump to bb6
bb6:
  ADD s8, s0, zero
  # implict jump to bb7
bb7:
  ADDI a2, zero, 80
  MULW s8, s8, a2
  LA a2, f
  ADD s8, a2, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:
  ADD s10, s0, zero
  ADD s11, s1, zero
  ADDI t0, zero, 19
  # implict jump to bb9
bb9:
  ADD t1, t0, zero
  ADD t2, s11, zero
  ADD a1, s10, zero
  ADDI a2, zero, 80
  MULW a2, a1, a2
  LA a3, f
  ADD a2, a3, a2
  SLLIW a3, t1, 2
  ADD a2, a2, a3
  LW a2, 0(a2)
  ADDI a4, zero, 80
  MULW a4, t2, a4
  LA a5, f
  ADD a4, a5, a4
  ADD a3, a4, a3
  LW a3, 0(a3)
  BNE a2, a3, bb14
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADDI a2, zero, 1
  SUBW t1, t1, a2
  SLT a2, t1, zero
  XORI a2, a2, 1
  BNE a2, zero, bb13
  # implict jump to bb12
bb12:
  ADD s8, a1, zero
  JAL zero, bb7
bb13:
  ADD s10, a1, zero
  ADD s11, t2, zero
  ADD t0, t1, zero
  JAL zero, bb9
bb14:
  ADD t2, a3, zero
  ADD a1, a2, zero
  JAL zero, bb11
bb15:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb16:
  ADDI s5, zero, 19
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  ADD s7, s2, zero
  ADD s8, s4, zero
  ADDI s9, zero, 80
  MULW s9, s7, s9
  LA s10, f
  ADD s9, s10, s9
  SLLIW s10, s6, 2
  ADD s9, s9, s10
  LW s9, 0(s9)
  BNE s9, zero, bb25
  # implict jump to bb18
bb18:
  ADD s10, zero, zero
  # implict jump to bb19
bb19:
  BNE s10, zero, bb24
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDI s8, zero, 1
  SUBW s6, s6, s8
  SLLIW s8, s7, 2
  LA s9, dep
  ADD s8, s9, s8
  LW s8, 0(s8)
  LW s9, 0(s3)
  BLT s9, s8, bb23
  # implict jump to bb22
bb22:
  ADD s0, s7, zero
  JAL zero, bb4
bb23:
  ADD s4, s9, zero
  ADD s2, s7, zero
  ADD s5, s6, zero
  JAL zero, bb17
bb24:
  ADD s7, s9, zero
  JAL zero, bb21
bb25:
  SLLIW s11, s9, 2
  LA t0, dep
  ADD s11, t0, s11
  LW s11, 0(s11)
  SLT s8, s11, s8
  XORI s8, s8, 1
  ADD s10, s8, zero
  JAL zero, bb19
bb26:
  ADD s1, s0, zero
  ADD s2, a1, zero
  JAL zero, bb2
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, dep
  LUI s1, 259060
  ADDIW s1, s1, -193
  SW s1, 0(s0)
  LA s0, n
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb29
  # implict jump to bb28
bb28:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  ADDI s0, zero, 1
  # implict jump to bb30
bb30:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  LA s3, head
  ADD s2, s3, s2
  ADDI s3, zero, -1
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb31
  JAL zero, bb28
bb31:
  ADD s0, s1, zero
  JAL zero, bb30
tree:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s0, 2
  LA s3, dep
  ADD s3, s3, s2
  SW s1, 0(s3)
  ADDI s3, zero, 80
  MULW s0, s0, s3
  LA s3, f
  ADD s0, s3, s0
  LW s3, 0(s0)
  BNE s3, zero, bb38
  # implict jump to bb33
bb33:
  LA s9, head
  ADD s9, s9, s2
  LW s9, 0(s9)
  XORI s10, s9, -1
  BNE s10, zero, bb35
  # implict jump to bb34
bb34:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb35:
  ADDIW s10, s1, 1
  # implict jump to bb36
bb36:
  ADD t0, s9, zero
  SLLIW t4, t0, 2
  SW t4, 0(sp)
  LA t1, to
  LW t4, 0(sp)
  ADD t1, t1, t4
  LW t1, 0(t1)
  ADD a0, t1, zero
  ADD a1, s10, zero
  CALL tree
  LA t0, next
  LW t4, 0(sp)
  ADD t0, t0, t4
  LW t0, 0(t0)
  XORI t1, t0, -1
  BNE t1, zero, bb37
  JAL zero, bb34
bb37:
  ADD s9, t0, zero
  JAL zero, bb36
bb38:
  ADD s3, s0, zero
  ADD s4, zero, zero
  ADD s5, s0, zero
  ADD s6, zero, zero
  # implict jump to bb39
bb39:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  ADD s10, s3, zero
  ADDIW s7, s7, 1
  SLLIW s11, s7, 2
  ADD s8, s8, s11
  LW s10, 0(s10)
  ADDI t0, zero, 80
  MULW s10, s10, t0
  LA t0, f
  ADD s10, t0, s10
  ADD s9, s10, s9
  LW s9, 0(s9)
  SW s9, 0(s8)
  ADD s8, s0, s11
  LW s9, 0(s8)
  BNE s9, zero, bb40
  JAL zero, bb33
bb40:
  ADD s3, s8, zero
  ADD s4, s11, zero
  ADD s5, s0, zero
  ADD s6, s7, zero
  JAL zero, bb39
add_edge:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  LA s2, to
  ADD s2, s2, s1
  SW a1, 0(s2)
  LA s2, next
  ADD s1, s2, s1
  SLLIW s2, a0, 2
  LA s3, head
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s1)
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  LA s1, cnt
  SW s0, 0(s1)
  ADDI s0, zero, 80
  MULW s0, a1, s0
  LA s1, f
  ADD s0, s1, s0
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -368
  SD ra, 256(sp)
  SD s0, 264(sp)
  SD s1, 272(sp)
  SD s2, 280(sp)
  SD s3, 288(sp)
  SD s4, 296(sp)
  SD s5, 304(sp)
  SD s7, 312(sp)
  SD s8, 320(sp)
  SD s9, 328(sp)
  SD s10, 336(sp)
  SD s11, 344(sp)
  SD s6, 352(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 232(sp)
  ADD t4, s0, zero
  SW t4, 236(sp)
  # implict jump to bb43
bb43:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t4, 224(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb187
  # implict jump to bb44
bb44:
  ADDI s4, zero, 57
  LW t4, 224(sp)
  SLT s4, s4, t4
  # implict jump to bb45
bb45:
  BNE s4, zero, bb183
  # implict jump to bb46
bb46:
  ADD t4, zero, zero
  SW t4, 216(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  # implict jump to bb47
bb47:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 212(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb182
  # implict jump to bb48
bb48:
  ADD s8, zero, zero
  # implict jump to bb49
bb49:
  BNE s8, zero, bb181
  # implict jump to bb50
bb50:
  LW t4, 228(sp)
  BNE t4, zero, bb180
  # implict jump to bb51
bb51:
  LW t4, 208(sp)
  ADD s8, t4, zero
  # implict jump to bb52
bb52:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, s8, zero
  SW t4, 204(sp)
  # implict jump to bb53
bb53:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 104(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb179
  # implict jump to bb54
bb54:
  ADDI s0, zero, 57
  LW t4, 104(sp)
  SLT s0, s0, t4
  # implict jump to bb55
bb55:
  BNE s0, zero, bb175
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 60(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb57
bb57:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb174
  # implict jump to bb58
bb58:
  ADD s5, zero, zero
  # implict jump to bb59
bb59:
  BNE s5, zero, bb173
  # implict jump to bb60
bb60:
  LW t4, 136(sp)
  BNE t4, zero, bb172
  # implict jump to bb61
bb61:
  LW t4, 52(sp)
  ADD s4, t4, zero
  # implict jump to bb62
bb62:
  LA s5, m
  SW s4, 0(s5)
  LA s4, dep
  LUI s5, 259060
  ADDIW s5, s5, -193
  SW s5, 0(s4)
  LA s4, n
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb169
  # implict jump to bb63
bb63:
  LA s6, n
  LW s6, 0(s6)
  XORI s6, s6, 1
  BNE s6, zero, bb130
  # implict jump to bb64
bb64:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  LA s3, m
  LW s3, 0(s3)
  BNE s3, zero, bb66
  # implict jump to bb65
bb65:
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s0, 264(sp)
  LD s1, 272(sp)
  LD s2, 280(sp)
  LD s3, 288(sp)
  LD s4, 296(sp)
  LD s5, 304(sp)
  LD s7, 312(sp)
  LD s8, 320(sp)
  LD s9, 328(sp)
  LD s10, 336(sp)
  LD s11, 344(sp)
  LD s6, 352(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb66:
  CALL getch
  ADD s3, a0, zero
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 96(sp)
  # implict jump to bb67
bb67:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 84(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb129
  # implict jump to bb68
bb68:
  ADDI s9, zero, 57
  LW t4, 84(sp)
  SLT s9, s9, t4
  # implict jump to bb69
bb69:
  BNE s9, zero, bb125
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 76(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  # implict jump to bb71
bb71:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 72(sp)
  SLTI s0, t4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb72
bb72:
  ADD s0, zero, zero
  # implict jump to bb73
bb73:
  BNE s0, zero, bb123
  # implict jump to bb74
bb74:
  LW t4, 88(sp)
  BNE t4, zero, bb122
  # implict jump to bb75
bb75:
  LW t4, 240(sp)
  ADD s0, t4, zero
  # implict jump to bb76
bb76:
  ADD t4, s0, zero
  SW t4, 196(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 244(sp)
  # implict jump to bb77
bb77:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 184(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb121
  # implict jump to bb78
bb78:
  ADDI s4, zero, 57
  LW t4, 184(sp)
  SLT s4, s4, t4
  # implict jump to bb79
bb79:
  BNE s4, zero, bb117
  # implict jump to bb80
bb80:
  ADD t4, zero, zero
  SW t4, 176(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  # implict jump to bb81
bb81:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb116
  # implict jump to bb82
bb82:
  ADD s9, zero, zero
  # implict jump to bb83
bb83:
  BNE s9, zero, bb115
  # implict jump to bb84
bb84:
  LW t4, 188(sp)
  BNE t4, zero, bb114
  # implict jump to bb85
bb85:
  LW t4, 168(sp)
  ADD s9, t4, zero
  # implict jump to bb86
bb86:
  LW t4, 196(sp)
  SLLIW s11, t4, 2
  LA s10, dep
  ADD s10, s10, s11
  LW s10, 0(s10)
  SLLIW s11, s9, 2
  LA s0, dep
  ADD s0, s0, s11
  LW s0, 0(s0)
  BLT s10, s0, bb113
  # implict jump to bb87
bb87:
  ADD s0, s9, zero
  LW t4, 196(sp)
  ADD s10, t4, zero
  # implict jump to bb88
bb88:
  ADD t4, s0, zero
  SW t4, 164(sp)
  SLLIW s9, s10, 2
  LA s11, dep
  ADD s9, s11, s9
  LW s9, 0(s9)
  LW t4, 164(sp)
  SLLIW s11, t4, 2
  LA s1, dep
  ADD t4, s1, s11
  SD t4, 248(sp)
  LD t4, 248(sp)
  LW s11, 0(t4)
  BLT s11, s9, bb103
  # implict jump to bb89
bb89:
  ADD s9, s10, zero
  # implict jump to bb90
bb90:
  LW t4, 164(sp)
  XOR s3, s9, t4
  SLTIU s3, s3, 1
  BNE s3, zero, bb102
  # implict jump to bb91
bb91:
  ADDI s3, zero, 19
  SLT s3, s3, zero
  XORI s3, s3, 1
  BNE s3, zero, bb95
  # implict jump to bb92
bb92:
  ADD s3, s9, zero
  # implict jump to bb93
bb93:
  ADDI s1, zero, 80
  MULW s1, s3, s1
  LA s3, f
  ADD s1, s3, s1
  LW s1, 0(s1)
  # implict jump to bb94
bb94:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, m
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, m
  SW s0, 0(s1)
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb66
  JAL zero, bb65
bb95:
  ADD s5, s9, zero
  LW t4, 164(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 19
  # implict jump to bb96
bb96:
  ADD s0, s8, zero
  ADD s6, s7, zero
  ADD s2, s5, zero
  ADDI s10, zero, 80
  MULW s10, s2, s10
  LA s1, f
  ADD s1, s1, s10
  SLLIW s10, s0, 2
  ADD s1, s1, s10
  LW s1, 0(s1)
  ADDI s11, zero, 80
  MULW s11, s6, s11
  LA s4, f
  ADD s4, s4, s11
  ADD s4, s4, s10
  LW s4, 0(s4)
  BNE s1, s4, bb101
  # implict jump to bb97
bb97:
  # implict jump to bb98
bb98:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  SLT s1, s0, zero
  XORI s1, s1, 1
  BNE s1, zero, bb100
  # implict jump to bb99
bb99:
  ADD s3, s2, zero
  JAL zero, bb93
bb100:
  ADD s5, s2, zero
  ADD s7, s6, zero
  ADD s8, s0, zero
  JAL zero, bb96
bb101:
  ADD s6, s4, zero
  ADD s2, s1, zero
  JAL zero, bb98
bb102:
  ADD s1, s9, zero
  JAL zero, bb94
bb103:
  ADD t4, s11, zero
  SW t4, 144(sp)
  ADD t4, s10, zero
  SW t4, 152(sp)
  ADDI t4, zero, 19
  SW t4, 160(sp)
  # implict jump to bb104
bb104:
  LW t4, 160(sp)
  ADD s3, t4, zero
  LW t4, 152(sp)
  ADD s2, t4, zero
  LW t4, 144(sp)
  ADD s7, t4, zero
  ADDI s4, zero, 80
  MULW s4, s2, s4
  LA s5, f
  ADD s4, s5, s4
  SLLIW s5, s3, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  BNE s4, zero, bb112
  # implict jump to bb105
bb105:
  ADD s5, zero, zero
  # implict jump to bb106
bb106:
  BNE s5, zero, bb111
  # implict jump to bb107
bb107:
  ADD s1, s2, zero
  # implict jump to bb108
bb108:
  ADD t4, s1, zero
  SW t4, 148(sp)
  ADDI s2, zero, 1
  SUBW t4, s3, s2
  SW t4, 156(sp)
  LW t4, 148(sp)
  SLLIW s3, t4, 2
  LA s4, dep
  ADD s3, s4, s3
  LW s3, 0(s3)
  LD t3, 248(sp)
  LW t4, 0(t3)
  SW t4, 140(sp)
  LW t4, 140(sp)
  BLT t4, s3, bb110
  # implict jump to bb109
bb109:
  LW t4, 148(sp)
  ADD s9, t4, zero
  JAL zero, bb90
bb110:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb104
bb111:
  ADD s1, s4, zero
  JAL zero, bb108
bb112:
  SLLIW s8, s4, 2
  LA s1, dep
  ADD s1, s1, s8
  LW s1, 0(s1)
  SLT s1, s1, s7
  XORI s1, s1, 1
  ADD s5, s1, zero
  JAL zero, bb106
bb113:
  LW t4, 196(sp)
  ADD s0, t4, zero
  ADD s10, s9, zero
  JAL zero, bb88
bb114:
  LW t4, 168(sp)
  SUB s11, zero, t4
  ADD s9, s11, zero
  JAL zero, bb86
bb115:
  ADDI s0, zero, 10
  LW t4, 168(sp)
  MULW s0, t4, s0
  LW t4, 172(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 180(sp)
  JAL zero, bb81
bb116:
  ADDI s11, zero, 57
  LW t4, 172(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s9, s11, zero
  JAL zero, bb83
bb117:
  LW t4, 184(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb120
  # implict jump to bb118
bb118:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb119
bb119:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 244(sp)
  JAL zero, bb77
bb120:
  ADDI s0, zero, 1
  JAL zero, bb119
bb121:
  ADDI s4, zero, 1
  JAL zero, bb79
bb122:
  LW t4, 240(sp)
  SUB s1, zero, t4
  ADD s0, s1, zero
  JAL zero, bb76
bb123:
  ADDI s0, zero, 10
  LW t4, 240(sp)
  MULW s0, t4, s0
  LW t4, 72(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 80(sp)
  JAL zero, bb71
bb124:
  ADDI s1, zero, 57
  LW t4, 72(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb73
bb125:
  LW t4, 84(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb128
  # implict jump to bb126
bb126:
  LW t4, 88(sp)
  ADD s0, t4, zero
  # implict jump to bb127
bb127:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  JAL zero, bb67
bb128:
  ADDI s0, zero, 1
  JAL zero, bb127
bb129:
  ADDI s9, zero, 1
  JAL zero, bb69
bb130:
  ADDI t4, zero, 1
  SW t4, 68(sp)
  # implict jump to bb131
bb131:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, s8, zero
  SW t4, 0(sp)
  # implict jump to bb132
bb132:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb168
  # implict jump to bb133
bb133:
  ADDI s1, zero, 57
  LW t4, 24(sp)
  SLT s1, s1, t4
  # implict jump to bb134
bb134:
  BNE s1, zero, bb164
  # implict jump to bb135
bb135:
  ADD t4, zero, zero
  SW t4, 16(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb136
bb136:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  XORI s4, s4, 1
  BNE s4, zero, bb163
  # implict jump to bb137
bb137:
  ADD s4, zero, zero
  # implict jump to bb138
bb138:
  BNE s4, zero, bb162
  # implict jump to bb139
bb139:
  LW t4, 28(sp)
  BNE t4, zero, bb161
  # implict jump to bb140
bb140:
  LW t4, 8(sp)
  ADD s4, t4, zero
  # implict jump to bb141
bb141:
  ADD t4, s4, zero
  SW t4, 4(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s5, zero
  SW t4, 36(sp)
  # implict jump to bb142
bb142:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 124(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb160
  # implict jump to bb143
bb143:
  ADDI s10, zero, 57
  LW t4, 124(sp)
  SLT s10, s10, t4
  # implict jump to bb144
bb144:
  BNE s10, zero, bb156
  # implict jump to bb145
bb145:
  ADD t4, zero, zero
  SW t4, 116(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb146
bb146:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s3, t4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb155
  # implict jump to bb147
bb147:
  ADD s3, zero, zero
  # implict jump to bb148
bb148:
  BNE s3, zero, bb154
  # implict jump to bb149
bb149:
  LW t4, 128(sp)
  BNE t4, zero, bb153
  # implict jump to bb150
bb150:
  LW t4, 108(sp)
  ADD s2, t4, zero
  # implict jump to bb151
bb151:
  LA s3, cnt
  LW s3, 0(s3)
  SLLIW s4, s3, 2
  LA s5, to
  ADD s5, s5, s4
  SW s2, 0(s5)
  LA s5, next
  ADD s4, s5, s4
  LW t4, 4(sp)
  SLLIW s5, t4, 2
  LA s7, head
  ADD s5, s7, s5
  LW s7, 0(s5)
  SW s7, 0(s4)
  SW s3, 0(s5)
  ADDIW s3, s3, 1
  LA s4, cnt
  SW s3, 0(s4)
  ADDI s3, zero, 80
  MULW s2, s2, s3
  LA s3, f
  ADD s2, s3, s2
  LW t4, 4(sp)
  SW t4, 0(s2)
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 100(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 100(sp)
  BNE t4, s3, bb152
  JAL zero, bb64
bb152:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb131
bb153:
  LW t4, 108(sp)
  SUB s3, zero, t4
  ADD s2, s3, zero
  JAL zero, bb151
bb154:
  ADDI s0, zero, 10
  LW t4, 108(sp)
  MULW s0, t4, s0
  LW t4, 112(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 116(sp)
  ADD t4, s1, zero
  SW t4, 120(sp)
  JAL zero, bb146
bb155:
  ADDI s2, zero, 57
  LW t4, 112(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s3, s2, zero
  JAL zero, bb148
bb156:
  LW t4, 124(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb159
  # implict jump to bb157
bb157:
  LW t4, 128(sp)
  ADD s0, t4, zero
  # implict jump to bb158
bb158:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  JAL zero, bb142
bb159:
  ADDI s0, zero, 1
  JAL zero, bb158
bb160:
  ADDI s10, zero, 1
  JAL zero, bb144
bb161:
  LW t4, 8(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb141
bb162:
  ADDI s0, zero, 10
  LW t4, 8(sp)
  MULW s0, t4, s0
  LW t4, 12(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  JAL zero, bb136
bb163:
  ADDI s5, zero, 57
  LW t4, 12(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb138
bb164:
  LW t4, 24(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb165
bb165:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb166
bb166:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb132
bb167:
  ADDI s0, zero, 1
  JAL zero, bb166
bb168:
  ADDI s1, zero, 1
  JAL zero, bb134
bb169:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb170
bb170:
  LW t4, 48(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  LA s7, head
  ADD s6, s7, s6
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 44(sp)
  LA s6, n
  LW s6, 0(s6)
  LW t4, 44(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb171
  JAL zero, bb63
bb171:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb170
bb172:
  LW t4, 52(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb62
bb173:
  ADDI s0, zero, 10
  LW t4, 52(sp)
  MULW s0, t4, s0
  LW t4, 56(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  JAL zero, bb57
bb174:
  ADDI s4, zero, 57
  LW t4, 56(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb59
bb175:
  LW t4, 104(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb178
  # implict jump to bb176
bb176:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb177
bb177:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 204(sp)
  JAL zero, bb53
bb178:
  ADDI s0, zero, 1
  JAL zero, bb177
bb179:
  ADDI s0, zero, 1
  JAL zero, bb55
bb180:
  LW t4, 208(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb52
bb181:
  ADDI s0, zero, 10
  LW t4, 208(sp)
  MULW s0, t4, s0
  LW t4, 212(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 216(sp)
  ADD t4, s1, zero
  SW t4, 220(sp)
  JAL zero, bb47
bb182:
  ADDI s9, zero, 57
  LW t4, 212(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb49
bb183:
  LW t4, 224(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb186
  # implict jump to bb184
bb184:
  LW t4, 228(sp)
  ADD s0, t4, zero
  # implict jump to bb185
bb185:
  CALL getch
  ADD t4, s0, zero
  SW t4, 232(sp)
  ADD t4, a0, zero
  SW t4, 236(sp)
  JAL zero, bb43
bb186:
  ADDI s0, zero, 1
  JAL zero, bb185
bb187:
  ADDI s4, zero, 1
  JAL zero, bb45
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb189
bb189:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb205
  # implict jump to bb190
bb190:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb191
bb191:
  BNE s4, zero, bb201
  # implict jump to bb192
bb192:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb193
bb193:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb200
  # implict jump to bb194
bb194:
  ADD s8, zero, zero
  # implict jump to bb195
bb195:
  BNE s8, zero, bb199
  # implict jump to bb196
bb196:
  BNE s3, zero, bb198
  # implict jump to bb197
bb197:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb198:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb199:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb193
bb200:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb195
bb201:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb204
  # implict jump to bb202
bb202:
  ADD s2, s3, zero
  # implict jump to bb203
bb203:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb189
bb204:
  ADDI s2, zero, 1
  JAL zero, bb203
bb205:
  ADDI s4, zero, 1
  JAL zero, bb191
