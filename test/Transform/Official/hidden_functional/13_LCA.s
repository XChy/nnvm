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
maxn:
.word 0x00002715
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
  ADD s5, a0, zero
  SLLIW s6, s5, 2
  LA s7, dep
  ADD s6, s7, s6
  LW s6, 0(s6)
  SLLIW s7, a1, 2
  LA s8, dep
  ADD s7, s8, s7
  LW s7, 0(s7)
  BLT s6, s7, bb30
  # implict jump to bb1
bb1:
  ADD s6, a1, zero
  ADD s7, s5, zero
  # implict jump to bb2
bb2:
  SLLIW s5, s7, 2
  LA s8, dep
  ADD s5, s8, s5
  LW s5, 0(s5)
  SLLIW s8, s6, 2
  LA s9, dep
  ADD s8, s9, s8
  LW s8, 0(s8)
  BLT s8, s5, bb18
  # implict jump to bb3
bb3:
  ADD s5, s7, zero
  # implict jump to bb4
bb4:
  XOR s10, s5, s6
  SLTIU s10, s10, 1
  BNE s10, zero, bb17
  # implict jump to bb5
bb5:
  ADDI s10, zero, 19
  SLT s10, s10, zero
  XORI s10, s10, 1
  BNE s10, zero, bb8
  # implict jump to bb6
bb6:
  ADD s10, s5, zero
  # implict jump to bb7
bb7:
  ADDI a1, zero, 80
  MULW s10, s10, a1
  LA a1, f
  ADD s10, a1, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
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
  ADDI t0, zero, 19
  # implict jump to bb9
bb9:
  ADD t1, s5, zero
  ADD t2, s6, zero
  # implict jump to bb10
bb10:
  ADD a1, t0, zero
  ADD a2, t2, zero
  ADD a3, t1, zero
  ADDI a4, zero, 80
  MULW a4, a3, a4
  LA a5, f
  ADD a4, a5, a4
  SLLIW a5, a1, 2
  ADD a4, a4, a5
  LW a4, 0(a4)
  ADDI a6, zero, 80
  MULW a6, a2, a6
  LA a7, f
  ADD a6, a7, a6
  ADD a5, a6, a5
  LW a5, 0(a5)
  BNE a4, a5, bb16
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD s4, a3, zero
  ADD s0, a2, zero
  ADDI a2, zero, 1
  SUBW s3, a1, a2
  # implict jump to bb13
bb13:
  SLT a1, s3, zero
  XORI a1, a1, 1
  BNE a1, zero, bb15
  # implict jump to bb14
bb14:
  ADD s10, s4, zero
  JAL zero, bb7
bb15:
  ADD t1, s4, zero
  ADD t2, s0, zero
  ADD t0, s3, zero
  JAL zero, bb10
bb16:
  ADD a2, a5, zero
  ADD a3, a4, zero
  JAL zero, bb12
bb17:
  ADD a0, s5, zero
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
bb18:
  ADDI s9, zero, 19
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADD s10, s9, zero
  ADD s11, s7, zero
  ADD t0, s8, zero
  ADDI t1, zero, 80
  MULW t1, s11, t1
  LA t2, f
  ADD t1, t2, t1
  SLLIW t2, s10, 2
  ADD t1, t1, t2
  LW t1, 0(t1)
  BNE t1, zero, bb29
  # implict jump to bb21
bb21:
  ADD t2, zero, zero
  # implict jump to bb22
bb22:
  BNE t2, zero, bb28
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD s1, s11, zero
  ADDI s11, zero, 1
  SUBW s2, s10, s11
  # implict jump to bb25
bb25:
  SLLIW s10, s1, 2
  LA s11, dep
  ADD s10, s11, s10
  LW s10, 0(s10)
  SLLIW s11, s6, 2
  LA t0, dep
  ADD s11, t0, s11
  LW s11, 0(s11)
  BLT s11, s10, bb27
  # implict jump to bb26
bb26:
  ADD s5, s1, zero
  JAL zero, bb4
bb27:
  ADD s8, s11, zero
  ADD s7, s1, zero
  ADD s9, s2, zero
  JAL zero, bb20
bb28:
  ADD s11, t1, zero
  JAL zero, bb24
bb29:
  SLLIW a1, t1, 2
  LA a2, dep
  ADD a1, a2, a1
  LW a1, 0(a1)
  SLT t0, a1, t0
  XORI t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb22
bb30:
  ADD s6, s5, zero
  ADD s7, a1, zero
  JAL zero, bb2
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, dep
  LUI s2, 259060
  ADDIW s2, s2, -193
  SW s2, 0(s1)
  LA s1, n
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb33:
  ADDI s1, zero, 1
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, head
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb36
bb36:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb37
  JAL zero, bb32
bb37:
  ADD s1, s0, zero
  JAL zero, bb35
tree:
  ADDI sp, sp, -112
  SD s9, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  SLLIW s4, s2, 2
  LA s5, dep
  ADD s5, s5, s4
  SW s3, 0(s5)
  ADDI s5, zero, 80
  MULW s5, s2, s5
  LA s6, f
  ADD s5, s6, s5
  SLLI s6, zero, 2
  ADD s7, s5, s6
  LW s8, 0(s7)
  BNE s8, zero, bb46
  # implict jump to bb39
bb39:
  LA t0, head
  ADD t0, t0, s4
  LW t0, 0(t0)
  XORI t1, t0, -1
  BNE t1, zero, bb41
  # implict jump to bb40
bb40:
  LD s9, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb41:
  # implict jump to bb42
bb42:
  ADD t4, t0, zero
  SW t4, 4(sp)
  # implict jump to bb43
bb43:
  LW t4, 4(sp)
  ADD t1, t4, zero
  SLLIW t4, t1, 2
  SW t4, 0(sp)
  LA t2, to
  LW t4, 0(sp)
  ADD t2, t2, t4
  LW t2, 0(t2)
  ADDIW a2, s3, 1
  ADD a0, t2, zero
  ADD a1, a2, zero
  CALL tree
  LA t0, next
  LW t4, 0(sp)
  ADD t0, t0, t4
  LW s1, 0(t0)
  # implict jump to bb44
bb44:
  XORI t0, s1, -1
  BNE t0, zero, bb45
  JAL zero, bb40
bb45:
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb43
bb46:
  # implict jump to bb47
bb47:
  ADD s8, zero, zero
  # implict jump to bb48
bb48:
  ADD s9, s8, zero
  ADD s10, s5, zero
  ADD s11, s6, zero
  ADD t0, s7, zero
  ADDIW s0, s9, 1
  SLLIW s9, s0, 2
  ADD s9, s10, s9
  LW s10, 0(t0)
  ADDI t0, zero, 80
  MULW s10, s10, t0
  LA t0, f
  ADD s10, t0, s10
  ADD s10, s10, s11
  LW s10, 0(s10)
  SW s10, 0(s9)
  # implict jump to bb49
bb49:
  ADDI s9, zero, 80
  MULW s9, s2, s9
  LA s10, f
  ADD s9, s10, s9
  SLLIW s10, s0, 2
  ADD s11, s9, s10
  LW t0, 0(s11)
  BNE t0, zero, bb50
  JAL zero, bb39
bb50:
  ADD s7, s11, zero
  ADD s6, s10, zero
  ADD s5, s9, zero
  ADD s8, s0, zero
  JAL zero, bb48
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
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s6, 288(sp)
  SD s8, 296(sp)
  SD s2, 304(sp)
  SD s3, 312(sp)
  SD s4, 320(sp)
  SD s5, 328(sp)
  SD s7, 336(sp)
  SD s9, 344(sp)
  SD s10, 352(sp)
  SD s11, 360(sp)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 240(sp)
  ADD t4, s7, zero
  SW t4, 244(sp)
  # implict jump to bb53
bb53:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t4, 232(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb207
  # implict jump to bb54
bb54:
  ADDI s11, zero, 57
  LW t4, 232(sp)
  SLT s11, s11, t4
  # implict jump to bb55
bb55:
  BNE s11, zero, bb203
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 224(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  # implict jump to bb57
bb57:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t4, 220(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb202
  # implict jump to bb58
bb58:
  ADD s9, zero, zero
  # implict jump to bb59
bb59:
  BNE s9, zero, bb201
  # implict jump to bb60
bb60:
  LW t4, 236(sp)
  BNE t4, zero, bb200
  # implict jump to bb61
bb61:
  LW t4, 216(sp)
  ADD s7, t4, zero
  # implict jump to bb62
bb62:
  LA s9, n
  SW s7, 0(s9)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 208(sp)
  ADD t4, s7, zero
  SW t4, 212(sp)
  # implict jump to bb63
bb63:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t4, 136(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb199
  # implict jump to bb64
bb64:
  ADDI s10, zero, 57
  LW t4, 136(sp)
  SLT s10, s10, t4
  # implict jump to bb65
bb65:
  BNE s10, zero, bb195
  # implict jump to bb66
bb66:
  ADD t4, zero, zero
  SW t4, 64(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  # implict jump to bb67
bb67:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 60(sp)
  SLTI s11, t4, 48
  XORI s11, s11, 1
  BNE s11, zero, bb194
  # implict jump to bb68
bb68:
  ADD s11, zero, zero
  # implict jump to bb69
bb69:
  BNE s11, zero, bb193
  # implict jump to bb70
bb70:
  LW t4, 204(sp)
  BNE t4, zero, bb192
  # implict jump to bb71
bb71:
  LW t4, 56(sp)
  ADD s7, t4, zero
  # implict jump to bb72
bb72:
  LA s11, m
  SW s7, 0(s11)
  LA s7, dep
  LUI s11, 259060
  ADDIW s11, s11, -193
  SW s11, 0(s7)
  LA s7, n
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb187
  # implict jump to bb73
bb73:
  LA s9, n
  LW s9, 0(s9)
  XORI s9, s9, 1
  BNE s9, zero, bb146
  # implict jump to bb74
bb74:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb76
  # implict jump to bb75
bb75:
  ADD a0, zero, zero
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s6, 288(sp)
  LD s8, 296(sp)
  LD s2, 304(sp)
  LD s3, 312(sp)
  LD s4, 320(sp)
  LD s5, 328(sp)
  LD s7, 336(sp)
  LD s9, 344(sp)
  LD s10, 352(sp)
  LD s11, 360(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb76:
  # implict jump to bb77
bb77:
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, s6, zero
  SW t4, 100(sp)
  # implict jump to bb78
bb78:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 88(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb145
  # implict jump to bb79
bb79:
  ADDI s11, zero, 57
  LW t4, 88(sp)
  SLT s11, s11, t4
  # implict jump to bb80
bb80:
  BNE s11, zero, bb141
  # implict jump to bb81
bb81:
  ADD t4, zero, zero
  SW t4, 80(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  # implict jump to bb82
bb82:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 76(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb140
  # implict jump to bb83
bb83:
  ADD s7, zero, zero
  # implict jump to bb84
bb84:
  BNE s7, zero, bb139
  # implict jump to bb85
bb85:
  LW t4, 92(sp)
  BNE t4, zero, bb138
  # implict jump to bb86
bb86:
  LW t4, 72(sp)
  ADD s7, t4, zero
  # implict jump to bb87
bb87:
  ADD t4, s7, zero
  SW t4, 248(sp)
  CALL getch
  ADD s10, a0, zero
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, s10, zero
  SW t4, 252(sp)
  # implict jump to bb88
bb88:
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t4, 196(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb137
  # implict jump to bb89
bb89:
  ADDI s0, zero, 57
  LW t4, 196(sp)
  SLT s0, s0, t4
  # implict jump to bb90
bb90:
  BNE s0, zero, bb133
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 188(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  # implict jump to bb92
bb92:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 184(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb132
  # implict jump to bb93
bb93:
  ADD s8, zero, zero
  # implict jump to bb94
bb94:
  BNE s8, zero, bb131
  # implict jump to bb95
bb95:
  LW t4, 256(sp)
  BNE t4, zero, bb130
  # implict jump to bb96
bb96:
  LW t4, 180(sp)
  ADD s8, t4, zero
  # implict jump to bb97
bb97:
  LW t4, 248(sp)
  SLLIW s11, t4, 2
  LA s9, dep
  ADD s9, s9, s11
  LW s9, 0(s9)
  SLLIW s11, s8, 2
  LA s6, dep
  ADD s6, s6, s11
  LW s6, 0(s6)
  BLT s9, s6, bb129
  # implict jump to bb98
bb98:
  ADD s6, s8, zero
  LW t4, 248(sp)
  ADD s9, t4, zero
  # implict jump to bb99
bb99:
  ADD t4, s6, zero
  SW t4, 176(sp)
  SLLIW s8, s9, 2
  LA s11, dep
  ADD s8, s11, s8
  LW s8, 0(s8)
  LW t4, 176(sp)
  SLLIW s11, t4, 2
  LA s0, dep
  ADD s0, s0, s11
  LW s0, 0(s0)
  BLT s0, s8, bb117
  # implict jump to bb100
bb100:
  ADD s8, s9, zero
  # implict jump to bb101
bb101:
  ADD t4, s8, zero
  SW t4, 148(sp)
  LW t4, 148(sp)
  LW t3, 176(sp)
  XOR s1, t4, t3
  SLTIU s1, s1, 1
  BNE s1, zero, bb116
  # implict jump to bb102
bb102:
  ADDI s1, zero, 19
  SLT s1, s1, zero
  XORI s1, s1, 1
  BNE s1, zero, bb107
  # implict jump to bb103
bb103:
  LW t4, 148(sp)
  ADD s1, t4, zero
  # implict jump to bb104
bb104:
  ADDI s0, zero, 80
  MULW s0, s1, s0
  LA s1, f
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb105
bb105:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, m
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, m
  SW s0, 0(s1)
  # implict jump to bb106
bb106:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb77
  JAL zero, bb75
bb107:
  ADDI s6, zero, 19
  # implict jump to bb108
bb108:
  LW t4, 148(sp)
  ADD s7, t4, zero
  LW t4, 176(sp)
  ADD s9, t4, zero
  ADD t4, s6, zero
  SW t4, 144(sp)
  # implict jump to bb109
bb109:
  LW t4, 144(sp)
  ADD s10, t4, zero
  ADD s11, s9, zero
  ADD s0, s7, zero
  ADDI s2, zero, 80
  MULW s2, s0, s2
  LA s8, f
  ADD s2, s8, s2
  SLLIW s8, s10, 2
  ADD s2, s2, s8
  LW s2, 0(s2)
  ADDI s6, zero, 80
  MULW s6, s11, s6
  LA s5, f
  ADD s5, s5, s6
  ADD s5, s5, s8
  LW s5, 0(s5)
  BNE s2, s5, bb115
  # implict jump to bb110
bb110:
  ADD s6, s11, zero
  # implict jump to bb111
bb111:
  ADD s4, s0, zero
  ADD s3, s6, zero
  ADDI s0, zero, 1
  SUBW t4, s10, s0
  SW t4, 140(sp)
  # implict jump to bb112
bb112:
  LW t4, 140(sp)
  SLT s0, t4, zero
  XORI s0, s0, 1
  BNE s0, zero, bb114
  # implict jump to bb113
bb113:
  ADD s1, s4, zero
  JAL zero, bb104
bb114:
  ADD s7, s4, zero
  ADD s9, s3, zero
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb109
bb115:
  ADD s6, s5, zero
  ADD s0, s2, zero
  JAL zero, bb111
bb116:
  LW t4, 148(sp)
  ADD s0, t4, zero
  JAL zero, bb105
bb117:
  ADDI s11, zero, 19
  # implict jump to bb118
bb118:
  ADD t4, s0, zero
  SW t4, 156(sp)
  ADD t4, s9, zero
  SW t4, 164(sp)
  ADD t4, s11, zero
  SW t4, 172(sp)
  # implict jump to bb119
bb119:
  LW t4, 172(sp)
  ADD s7, t4, zero
  LW t4, 164(sp)
  ADD s10, t4, zero
  LW t4, 156(sp)
  ADD s6, t4, zero
  ADDI s11, zero, 80
  MULW s11, s10, s11
  LA s2, f
  ADD s2, s2, s11
  SLLIW s11, s7, 2
  ADD s2, s2, s11
  LW s2, 0(s2)
  BNE s2, zero, bb128
  # implict jump to bb120
bb120:
  ADD s11, zero, zero
  # implict jump to bb121
bb121:
  BNE s11, zero, bb127
  # implict jump to bb122
bb122:
  ADD s1, s10, zero
  # implict jump to bb123
bb123:
  ADD t4, s1, zero
  SW t4, 160(sp)
  ADDI s1, zero, 1
  SUBW t4, s7, s1
  SW t4, 168(sp)
  # implict jump to bb124
bb124:
  LW t4, 160(sp)
  SLLIW s1, t4, 2
  LA s2, dep
  ADD s1, s2, s1
  LW s1, 0(s1)
  LW t4, 176(sp)
  SLLIW s2, t4, 2
  LA s6, dep
  ADD s2, s6, s2
  LW t4, 0(s2)
  SW t4, 152(sp)
  LW t4, 152(sp)
  BLT t4, s1, bb126
  # implict jump to bb125
bb125:
  LW t4, 160(sp)
  ADD s8, t4, zero
  JAL zero, bb101
bb126:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb119
bb127:
  ADD s1, s2, zero
  JAL zero, bb123
bb128:
  SLLIW s9, s2, 2
  LA s1, dep
  ADD s1, s1, s9
  LW s1, 0(s1)
  SLT s1, s1, s6
  XORI s1, s1, 1
  ADD s11, s1, zero
  JAL zero, bb121
bb129:
  LW t4, 248(sp)
  ADD s6, t4, zero
  ADD s9, s8, zero
  JAL zero, bb99
bb130:
  LW t4, 180(sp)
  SUB s11, zero, t4
  ADD s8, s11, zero
  JAL zero, bb97
bb131:
  ADDI s0, zero, 10
  LW t4, 180(sp)
  MULW s0, t4, s0
  LW t4, 184(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 188(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  JAL zero, bb92
bb132:
  ADDI s11, zero, 57
  LW t4, 184(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb94
bb133:
  LW t4, 196(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb136
  # implict jump to bb134
bb134:
  LW t4, 256(sp)
  ADD s0, t4, zero
  # implict jump to bb135
bb135:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 252(sp)
  JAL zero, bb88
bb136:
  ADDI s0, zero, 1
  JAL zero, bb135
bb137:
  ADDI s0, zero, 1
  JAL zero, bb90
bb138:
  LW t4, 72(sp)
  SUB s10, zero, t4
  ADD s7, s10, zero
  JAL zero, bb87
bb139:
  ADDI s0, zero, 10
  LW t4, 72(sp)
  MULW s0, t4, s0
  LW t4, 76(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 80(sp)
  ADD t4, s1, zero
  SW t4, 84(sp)
  JAL zero, bb82
bb140:
  ADDI s10, zero, 57
  LW t4, 76(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s7, s10, zero
  JAL zero, bb84
bb141:
  LW t4, 88(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb144
  # implict jump to bb142
bb142:
  LW t4, 92(sp)
  ADD s0, t4, zero
  # implict jump to bb143
bb143:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 96(sp)
  ADD t4, s1, zero
  SW t4, 100(sp)
  JAL zero, bb78
bb144:
  ADDI s0, zero, 1
  JAL zero, bb143
bb145:
  ADDI s11, zero, 1
  JAL zero, bb80
bb146:
  ADDI s9, zero, 1
  # implict jump to bb147
bb147:
  ADD t4, s9, zero
  SW t4, 108(sp)
  # implict jump to bb148
bb148:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  CALL getch
  ADD s11, a0, zero
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 40(sp)
  # implict jump to bb149
bb149:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 28(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb186
  # implict jump to bb150
bb150:
  ADDI s10, zero, 57
  LW t4, 28(sp)
  SLT s10, s10, t4
  # implict jump to bb151
bb151:
  BNE s10, zero, bb182
  # implict jump to bb152
bb152:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb153
bb153:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb181
  # implict jump to bb154
bb154:
  ADD s7, zero, zero
  # implict jump to bb155
bb155:
  BNE s7, zero, bb180
  # implict jump to bb156
bb156:
  LW t4, 32(sp)
  BNE t4, zero, bb179
  # implict jump to bb157
bb157:
  LW t4, 12(sp)
  ADD s7, t4, zero
  # implict jump to bb158
bb158:
  ADD t4, s7, zero
  SW t4, 8(sp)
  CALL getch
  ADD s11, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s11, zero
  SW t4, 4(sp)
  # implict jump to bb159
bb159:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t4, 128(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb178
  # implict jump to bb160
bb160:
  ADDI s7, zero, 57
  LW t4, 128(sp)
  SLT s7, s7, t4
  # implict jump to bb161
bb161:
  BNE s7, zero, bb174
  # implict jump to bb162
bb162:
  ADD t4, zero, zero
  SW t4, 120(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  # implict jump to bb163
bb163:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb173
  # implict jump to bb164
bb164:
  ADD s8, zero, zero
  # implict jump to bb165
bb165:
  BNE s8, zero, bb172
  # implict jump to bb166
bb166:
  LW t4, 132(sp)
  BNE t4, zero, bb171
  # implict jump to bb167
bb167:
  LW t4, 112(sp)
  ADD s8, t4, zero
  # implict jump to bb168
bb168:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s7, s11, 2
  LA s10, to
  ADD s10, s10, s7
  SW s8, 0(s10)
  LA s10, next
  ADD s7, s10, s7
  LW t4, 8(sp)
  SLLIW s10, t4, 2
  LA s6, head
  ADD s6, s6, s10
  LW s10, 0(s6)
  SW s10, 0(s7)
  SW s11, 0(s6)
  ADDIW s6, s11, 1
  LA s7, cnt
  SW s6, 0(s7)
  ADDI s6, zero, 80
  MULW s6, s8, s6
  LA s7, f
  ADD s6, s7, s6
  LW t4, 8(sp)
  SW t4, 0(s6)
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb169
bb169:
  LA s6, n
  LW s6, 0(s6)
  LW t4, 68(sp)
  BNE t4, s6, bb170
  JAL zero, bb74
bb170:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb148
bb171:
  LW t4, 112(sp)
  SUB s11, zero, t4
  ADD s8, s11, zero
  JAL zero, bb168
bb172:
  ADDI s0, zero, 10
  LW t4, 112(sp)
  MULW s0, t4, s0
  LW t4, 116(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 120(sp)
  ADD t4, s1, zero
  SW t4, 124(sp)
  JAL zero, bb163
bb173:
  ADDI s11, zero, 57
  LW t4, 116(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb165
bb174:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb177
  # implict jump to bb175
bb175:
  LW t4, 132(sp)
  ADD s0, t4, zero
  # implict jump to bb176
bb176:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb159
bb177:
  ADDI s0, zero, 1
  JAL zero, bb176
bb178:
  ADDI s7, zero, 1
  JAL zero, bb161
bb179:
  LW t4, 12(sp)
  SUB s11, zero, t4
  ADD s7, s11, zero
  JAL zero, bb158
bb180:
  ADDI s0, zero, 10
  LW t4, 12(sp)
  MULW s0, t4, s0
  LW t4, 16(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb153
bb181:
  ADDI s11, zero, 57
  LW t4, 16(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s7, s11, zero
  JAL zero, bb155
bb182:
  LW t4, 28(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb185
  # implict jump to bb183
bb183:
  LW t4, 32(sp)
  ADD s0, t4, zero
  # implict jump to bb184
bb184:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 0(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  JAL zero, bb149
bb185:
  ADDI s0, zero, 1
  JAL zero, bb184
bb186:
  ADDI s10, zero, 1
  JAL zero, bb151
bb187:
  ADDI s7, zero, 1
  # implict jump to bb188
bb188:
  ADD t4, s7, zero
  SW t4, 52(sp)
  # implict jump to bb189
bb189:
  LW t4, 52(sp)
  ADD s11, t4, zero
  SLLIW s10, s11, 2
  LA s9, head
  ADD s9, s9, s10
  ADDI s10, zero, -1
  SW s10, 0(s9)
  ADDIW t4, s11, 1
  SW t4, 48(sp)
  # implict jump to bb190
bb190:
  LA s9, n
  LW s9, 0(s9)
  LW t4, 48(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  BNE s9, zero, bb191
  JAL zero, bb73
bb191:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb189
bb192:
  LW t4, 56(sp)
  SUB s11, zero, t4
  ADD s7, s11, zero
  JAL zero, bb72
bb193:
  ADDI s0, zero, 10
  LW t4, 56(sp)
  MULW s0, t4, s0
  LW t4, 60(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb67
bb194:
  ADDI s7, zero, 57
  LW t4, 60(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s11, s7, zero
  JAL zero, bb69
bb195:
  LW t4, 136(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb198
  # implict jump to bb196
bb196:
  LW t4, 204(sp)
  ADD s0, t4, zero
  # implict jump to bb197
bb197:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 208(sp)
  ADD t4, s1, zero
  SW t4, 212(sp)
  JAL zero, bb63
bb198:
  ADDI s0, zero, 1
  JAL zero, bb197
bb199:
  ADDI s10, zero, 1
  JAL zero, bb65
bb200:
  LW t4, 216(sp)
  SUB s9, zero, t4
  ADD s7, s9, zero
  JAL zero, bb62
bb201:
  ADDI s0, zero, 10
  LW t4, 216(sp)
  MULW s0, t4, s0
  LW t4, 220(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADD t4, s1, zero
  SW t4, 228(sp)
  JAL zero, bb57
bb202:
  ADDI s7, zero, 57
  LW t4, 220(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s9, s7, zero
  JAL zero, bb59
bb203:
  LW t4, 232(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb206
  # implict jump to bb204
bb204:
  LW t4, 236(sp)
  ADD s0, t4, zero
  # implict jump to bb205
bb205:
  CALL getch
  ADD t4, s0, zero
  SW t4, 240(sp)
  ADD t4, a0, zero
  SW t4, 244(sp)
  JAL zero, bb53
bb206:
  ADDI s0, zero, 1
  JAL zero, bb205
bb207:
  ADDI s11, zero, 1
  JAL zero, bb55
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
  # implict jump to bb209
bb209:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb225
  # implict jump to bb210
bb210:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb211
bb211:
  BNE s4, zero, bb221
  # implict jump to bb212
bb212:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb213
bb213:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb220
  # implict jump to bb214
bb214:
  ADD s8, zero, zero
  # implict jump to bb215
bb215:
  BNE s8, zero, bb219
  # implict jump to bb216
bb216:
  BNE s3, zero, bb218
  # implict jump to bb217
bb217:
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
bb218:
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
bb219:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb213
bb220:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb215
bb221:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb224
  # implict jump to bb222
bb222:
  ADD s2, s3, zero
  # implict jump to bb223
bb223:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb209
bb224:
  ADDI s2, zero, 1
  JAL zero, bb223
bb225:
  ADDI s4, zero, 1
  JAL zero, bb211
