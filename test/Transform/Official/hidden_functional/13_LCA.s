.global tree
.global main
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
  BNE s3, zero, bb6
  # implict jump to bb1
bb1:
  LA s9, head
  ADD s9, s9, s2
  LW s9, 0(s9)
  XORI s10, s9, -1
  BNE s10, zero, bb3
  # implict jump to bb2
bb2:
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
bb3:
  ADDIW s10, s1, 1
  # implict jump to bb4
bb4:
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
  BNE t1, zero, bb5
  JAL zero, bb2
bb5:
  ADD s9, t0, zero
  JAL zero, bb4
bb6:
  ADD s3, s0, zero
  ADD s4, zero, zero
  ADD s5, s0, zero
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
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
  BNE s9, zero, bb8
  JAL zero, bb1
bb8:
  ADD s3, s8, zero
  ADD s4, s11, zero
  ADD s5, s0, zero
  ADD s6, s7, zero
  JAL zero, bb7
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
  # implict jump to bb10
bb10:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LW t4, 224(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb154
  # implict jump to bb11
bb11:
  ADDI s4, zero, 57
  LW t4, 224(sp)
  SLT s4, s4, t4
  # implict jump to bb12
bb12:
  BNE s4, zero, bb150
  # implict jump to bb13
bb13:
  ADD t4, zero, zero
  SW t4, 216(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  # implict jump to bb14
bb14:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 212(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb149
  # implict jump to bb15
bb15:
  ADD s8, zero, zero
  # implict jump to bb16
bb16:
  BNE s8, zero, bb148
  # implict jump to bb17
bb17:
  LW t4, 228(sp)
  BNE t4, zero, bb147
  # implict jump to bb18
bb18:
  LW t4, 208(sp)
  ADD s8, t4, zero
  # implict jump to bb19
bb19:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, s8, zero
  SW t4, 204(sp)
  # implict jump to bb20
bb20:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 104(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb146
  # implict jump to bb21
bb21:
  ADDI s0, zero, 57
  LW t4, 104(sp)
  SLT s0, s0, t4
  # implict jump to bb22
bb22:
  BNE s0, zero, bb142
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 60(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb24
bb24:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb141
  # implict jump to bb25
bb25:
  ADD s5, zero, zero
  # implict jump to bb26
bb26:
  BNE s5, zero, bb140
  # implict jump to bb27
bb27:
  LW t4, 136(sp)
  BNE t4, zero, bb139
  # implict jump to bb28
bb28:
  LW t4, 52(sp)
  ADD s4, t4, zero
  # implict jump to bb29
bb29:
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
  BNE s4, zero, bb136
  # implict jump to bb30
bb30:
  LA s6, n
  LW s6, 0(s6)
  XORI s6, s6, 1
  BNE s6, zero, bb97
  # implict jump to bb31
bb31:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  LA s3, m
  LW s3, 0(s3)
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
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
bb33:
  CALL getch
  ADD s3, a0, zero
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 96(sp)
  # implict jump to bb34
bb34:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 84(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb96
  # implict jump to bb35
bb35:
  ADDI s9, zero, 57
  LW t4, 84(sp)
  SLT s9, s9, t4
  # implict jump to bb36
bb36:
  BNE s9, zero, bb92
  # implict jump to bb37
bb37:
  ADD t4, zero, zero
  SW t4, 76(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  # implict jump to bb38
bb38:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t4, 72(sp)
  SLTI s0, t4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb91
  # implict jump to bb39
bb39:
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  BNE s0, zero, bb90
  # implict jump to bb41
bb41:
  LW t4, 88(sp)
  BNE t4, zero, bb89
  # implict jump to bb42
bb42:
  LW t4, 240(sp)
  ADD s0, t4, zero
  # implict jump to bb43
bb43:
  ADD t4, s0, zero
  SW t4, 196(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 244(sp)
  # implict jump to bb44
bb44:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 184(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb88
  # implict jump to bb45
bb45:
  ADDI s4, zero, 57
  LW t4, 184(sp)
  SLT s4, s4, t4
  # implict jump to bb46
bb46:
  BNE s4, zero, bb84
  # implict jump to bb47
bb47:
  ADD t4, zero, zero
  SW t4, 176(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  # implict jump to bb48
bb48:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 172(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb83
  # implict jump to bb49
bb49:
  ADD s9, zero, zero
  # implict jump to bb50
bb50:
  BNE s9, zero, bb82
  # implict jump to bb51
bb51:
  LW t4, 188(sp)
  BNE t4, zero, bb81
  # implict jump to bb52
bb52:
  LW t4, 168(sp)
  ADD s9, t4, zero
  # implict jump to bb53
bb53:
  LW t4, 196(sp)
  SLLIW s11, t4, 2
  LA s10, dep
  ADD s10, s10, s11
  LW s10, 0(s10)
  SLLIW s11, s9, 2
  LA s0, dep
  ADD s0, s0, s11
  LW s0, 0(s0)
  BLT s10, s0, bb80
  # implict jump to bb54
bb54:
  ADD s0, s9, zero
  LW t4, 196(sp)
  ADD s10, t4, zero
  # implict jump to bb55
bb55:
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
  BLT s11, s9, bb70
  # implict jump to bb56
bb56:
  ADD s9, s10, zero
  # implict jump to bb57
bb57:
  LW t4, 164(sp)
  XOR s3, s9, t4
  SLTIU s3, s3, 1
  BNE s3, zero, bb69
  # implict jump to bb58
bb58:
  ADDI s3, zero, 19
  SLT s3, s3, zero
  XORI s3, s3, 1
  BNE s3, zero, bb62
  # implict jump to bb59
bb59:
  ADD s3, s9, zero
  # implict jump to bb60
bb60:
  ADDI s1, zero, 80
  MULW s1, s3, s1
  LA s3, f
  ADD s1, s3, s1
  LW s1, 0(s1)
  # implict jump to bb61
bb61:
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
  BNE s0, zero, bb33
  JAL zero, bb32
bb62:
  ADD s5, s9, zero
  LW t4, 164(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 19
  # implict jump to bb63
bb63:
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
  BNE s1, s4, bb68
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  SLT s1, s0, zero
  XORI s1, s1, 1
  BNE s1, zero, bb67
  # implict jump to bb66
bb66:
  ADD s3, s2, zero
  JAL zero, bb60
bb67:
  ADD s5, s2, zero
  ADD s7, s6, zero
  ADD s8, s0, zero
  JAL zero, bb63
bb68:
  ADD s6, s4, zero
  ADD s2, s1, zero
  JAL zero, bb65
bb69:
  ADD s1, s9, zero
  JAL zero, bb61
bb70:
  ADD t4, s11, zero
  SW t4, 144(sp)
  ADD t4, s10, zero
  SW t4, 152(sp)
  ADDI t4, zero, 19
  SW t4, 160(sp)
  # implict jump to bb71
bb71:
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
  BNE s4, zero, bb79
  # implict jump to bb72
bb72:
  ADD s5, zero, zero
  # implict jump to bb73
bb73:
  BNE s5, zero, bb78
  # implict jump to bb74
bb74:
  ADD s1, s2, zero
  # implict jump to bb75
bb75:
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
  BLT t4, s3, bb77
  # implict jump to bb76
bb76:
  LW t4, 148(sp)
  ADD s9, t4, zero
  JAL zero, bb57
bb77:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb71
bb78:
  ADD s1, s4, zero
  JAL zero, bb75
bb79:
  SLLIW s8, s4, 2
  LA s1, dep
  ADD s1, s1, s8
  LW s1, 0(s1)
  SLT s1, s1, s7
  XORI s1, s1, 1
  ADD s5, s1, zero
  JAL zero, bb73
bb80:
  LW t4, 196(sp)
  ADD s0, t4, zero
  ADD s10, s9, zero
  JAL zero, bb55
bb81:
  LW t4, 168(sp)
  SUB s11, zero, t4
  ADD s9, s11, zero
  JAL zero, bb53
bb82:
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
  JAL zero, bb48
bb83:
  ADDI s11, zero, 57
  LW t4, 172(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s9, s11, zero
  JAL zero, bb50
bb84:
  LW t4, 184(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb86
bb86:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 244(sp)
  JAL zero, bb44
bb87:
  ADDI s0, zero, 1
  JAL zero, bb86
bb88:
  ADDI s4, zero, 1
  JAL zero, bb46
bb89:
  LW t4, 240(sp)
  SUB s1, zero, t4
  ADD s0, s1, zero
  JAL zero, bb43
bb90:
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
  JAL zero, bb38
bb91:
  ADDI s1, zero, 57
  LW t4, 72(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb40
bb92:
  LW t4, 84(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  LW t4, 88(sp)
  ADD s0, t4, zero
  # implict jump to bb94
bb94:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  JAL zero, bb34
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s9, zero, 1
  JAL zero, bb36
bb97:
  ADDI t4, zero, 1
  SW t4, 68(sp)
  # implict jump to bb98
bb98:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, s8, zero
  SW t4, 0(sp)
  # implict jump to bb99
bb99:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb135
  # implict jump to bb100
bb100:
  ADDI s1, zero, 57
  LW t4, 24(sp)
  SLT s1, s1, t4
  # implict jump to bb101
bb101:
  BNE s1, zero, bb131
  # implict jump to bb102
bb102:
  ADD t4, zero, zero
  SW t4, 16(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb103
bb103:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  XORI s4, s4, 1
  BNE s4, zero, bb130
  # implict jump to bb104
bb104:
  ADD s4, zero, zero
  # implict jump to bb105
bb105:
  BNE s4, zero, bb129
  # implict jump to bb106
bb106:
  LW t4, 28(sp)
  BNE t4, zero, bb128
  # implict jump to bb107
bb107:
  LW t4, 8(sp)
  ADD s4, t4, zero
  # implict jump to bb108
bb108:
  ADD t4, s4, zero
  SW t4, 4(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s5, zero
  SW t4, 36(sp)
  # implict jump to bb109
bb109:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 124(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb127
  # implict jump to bb110
bb110:
  ADDI s10, zero, 57
  LW t4, 124(sp)
  SLT s10, s10, t4
  # implict jump to bb111
bb111:
  BNE s10, zero, bb123
  # implict jump to bb112
bb112:
  ADD t4, zero, zero
  SW t4, 116(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb113
bb113:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s3, t4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb122
  # implict jump to bb114
bb114:
  ADD s3, zero, zero
  # implict jump to bb115
bb115:
  BNE s3, zero, bb121
  # implict jump to bb116
bb116:
  LW t4, 128(sp)
  BNE t4, zero, bb120
  # implict jump to bb117
bb117:
  LW t4, 108(sp)
  ADD s2, t4, zero
  # implict jump to bb118
bb118:
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
  BNE t4, s3, bb119
  JAL zero, bb31
bb119:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb98
bb120:
  LW t4, 108(sp)
  SUB s3, zero, t4
  ADD s2, s3, zero
  JAL zero, bb118
bb121:
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
  JAL zero, bb113
bb122:
  ADDI s2, zero, 57
  LW t4, 112(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s3, s2, zero
  JAL zero, bb115
bb123:
  LW t4, 124(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb124
bb124:
  LW t4, 128(sp)
  ADD s0, t4, zero
  # implict jump to bb125
bb125:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  JAL zero, bb109
bb126:
  ADDI s0, zero, 1
  JAL zero, bb125
bb127:
  ADDI s10, zero, 1
  JAL zero, bb111
bb128:
  LW t4, 8(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb108
bb129:
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
  JAL zero, bb103
bb130:
  ADDI s5, zero, 57
  LW t4, 12(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb105
bb131:
  LW t4, 24(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb133
bb133:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb99
bb134:
  ADDI s0, zero, 1
  JAL zero, bb133
bb135:
  ADDI s1, zero, 1
  JAL zero, bb101
bb136:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb137
bb137:
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
  BNE s6, zero, bb138
  JAL zero, bb30
bb138:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb137
bb139:
  LW t4, 52(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb29
bb140:
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
  JAL zero, bb24
bb141:
  ADDI s4, zero, 57
  LW t4, 56(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb26
bb142:
  LW t4, 104(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb143
bb143:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb144
bb144:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 204(sp)
  JAL zero, bb20
bb145:
  ADDI s0, zero, 1
  JAL zero, bb144
bb146:
  ADDI s0, zero, 1
  JAL zero, bb22
bb147:
  LW t4, 208(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb19
bb148:
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
  JAL zero, bb14
bb149:
  ADDI s9, zero, 57
  LW t4, 212(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb16
bb150:
  LW t4, 224(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:
  LW t4, 228(sp)
  ADD s0, t4, zero
  # implict jump to bb152
bb152:
  CALL getch
  ADD t4, s0, zero
  SW t4, 232(sp)
  ADD t4, a0, zero
  SW t4, 236(sp)
  JAL zero, bb10
bb153:
  ADDI s0, zero, 1
  JAL zero, bb152
bb154:
  ADDI s4, zero, 1
  JAL zero, bb12
