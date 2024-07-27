.global same
.global main
.global find
.global prim
.global quick_read
.section .bss
c:
.space 4020
v:
.space 4020
fa:
.space 4020

u:
.space 4020



.section .data



n:
.word 0x00000000

m:
.word 0x00000000
maxn:
.word 0x00000069
maxm:
.word 0x000003ed
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -352
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD s5, 272(sp)
  SD s11, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s10, 312(sp)
  SD s6, 320(sp)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, s6, zero
  SW t4, 220(sp)
  # implict jump to bb4
bb4:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t4, 212(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb127
  # implict jump to bb5
bb5:
  ADDI s10, zero, 57
  LW t4, 212(sp)
  SLT s10, s10, t4
  # implict jump to bb6
bb6:
  BNE s10, zero, bb123
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 204(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  # implict jump to bb8
bb8:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 200(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb122
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  BNE s9, zero, bb121
  # implict jump to bb11
bb11:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 188(sp)
  ADD t4, s8, zero
  SW t4, 192(sp)
  # implict jump to bb12
bb12:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t4, 128(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb120
  # implict jump to bb13
bb13:
  ADDI s6, zero, 57
  LW t4, 128(sp)
  SLT s6, s6, t4
  # implict jump to bb14
bb14:
  BNE s6, zero, bb116
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 4(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb16
bb16:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb115
  # implict jump to bb17
bb17:
  ADD s10, zero, zero
  # implict jump to bb18
bb18:
  BNE s10, zero, bb114
  # implict jump to bb19
bb19:
  LW t4, 184(sp)
  BNE t4, zero, bb113
  # implict jump to bb20
bb20:
  LW t4, 12(sp)
  ADD s10, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s10, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  BLT zero, t4, bb54
  # implict jump to bb22
bb22:
  LA s9, m
  LW s9, 0(s9)
  BLT zero, s9, bb38
  # implict jump to bb23
bb23:
  LA s2, n
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb24
bb24:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb25
bb25:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, m
  LW s7, 0(s7)
  BLT s5, s7, bb27
  # implict jump to bb26
bb26:
  ADD a0, s6, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD s5, 272(sp)
  LD s11, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s10, 312(sp)
  LD s6, 320(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb27:
  SLLIW s7, s5, 2
  LA s8, u
  ADD s8, s8, s7
  LW s9, 0(s8)
  LA s10, v
  ADD s10, s10, s7
  LW s11, 0(s10)
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s11, zero
  CALL find
  ADD s11, a0, zero
  XOR s9, s9, s11
  SLTIU s9, s9, 1
  BNE s9, zero, bb32
  # implict jump to bb28
bb28:
  ADD s9, zero, zero
  # implict jump to bb29
bb29:
  BNE s9, zero, bb31
  # implict jump to bb30
bb30:
  LA s9, c
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADDW s7, s6, s7
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL find
  ADD s8, a0, zero
  SLLIW s8, s8, 2
  LA s9, fa
  ADD s8, s9, s8
  LW s9, 0(s10)
  SW s9, 0(s8)
  ADDIW s8, s5, 1
  ADD s3, s7, zero
  ADD s4, s8, zero
  JAL zero, bb25
bb31:
  ADD s3, s6, zero
  ADD s4, s5, zero
  JAL zero, bb25
bb32:
  ADDI s9, zero, 1
  JAL zero, bb29
bb33:
  ADDI s2, zero, 1
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, fa
  ADD s4, s5, s4
  SW s3, 0(s4)
  ADDIW s0, s3, 1
  # implict jump to bb36
bb36:
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb37
  JAL zero, bb24
bb37:
  ADD s2, s0, zero
  JAL zero, bb35
bb38:
  # implict jump to bb39
bb39:
  ADD t4, s9, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb40
bb40:
  LW t4, 144(sp)
  ADD s6, t4, zero
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 168(sp)
  ADDIW t4, t3, 1
  SW t4, 172(sp)
  LW t4, 172(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb45
  # implict jump to bb41
bb41:
  ADD s3, s6, zero
  # implict jump to bb42
bb42:
  ADD t4, s3, zero
  SW t4, 140(sp)
  # implict jump to bb43
bb43:
  LA s1, m
  LW s1, 0(s1)
  LW t4, 172(sp)
  BLT t4, s1, bb44
  JAL zero, bb23
bb44:
  ADD t4, s1, zero
  SW t4, 132(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb40
bb45:
  # implict jump to bb46
bb46:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  ADD t4, s6, zero
  SW t4, 160(sp)
  # implict jump to bb47
bb47:
  LW t4, 160(sp)
  ADD s7, t4, zero
  LW t4, 152(sp)
  ADD s11, t4, zero
  LW t4, 168(sp)
  SLLIW s6, t4, 2
  LA s2, c
  ADD s2, s2, s6
  LW s5, 0(s2)
  SLLIW s4, s11, 2
  LA s8, c
  ADD s8, s8, s4
  LW s1, 0(s8)
  BLT s1, s5, bb53
  # implict jump to bb48
bb48:
  ADD s1, s7, zero
  # implict jump to bb49
bb49:
  ADD t4, s1, zero
  SW t4, 156(sp)
  ADDIW t4, s11, 1
  SW t4, 148(sp)
  # implict jump to bb50
bb50:
  LW t4, 148(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb52
  # implict jump to bb51
bb51:
  LW t4, 156(sp)
  ADD s3, t4, zero
  JAL zero, bb42
bb52:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb47
bb53:
  LA s5, u
  ADD s5, s5, s6
  LW s7, 0(s5)
  LA s10, u
  ADD s10, s10, s4
  LW s9, 0(s10)
  SW s9, 0(s5)
  SW s7, 0(s10)
  LA s5, v
  ADD s5, s5, s6
  LW s6, 0(s5)
  LA s7, v
  ADD s4, s7, s4
  LW s7, 0(s4)
  SW s7, 0(s5)
  SW s6, 0(s4)
  LW s4, 0(s2)
  LW s5, 0(s8)
  SW s5, 0(s2)
  SW s4, 0(s8)
  ADD s1, s4, zero
  JAL zero, bb49
bb54:
  # implict jump to bb55
bb55:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb56
bb56:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 24(sp)
  SLLIW t4, t3, 2
  SW t4, 20(sp)
  LA s8, u
  LW t3, 20(sp)
  ADD t4, s8, t3
  SD t4, 336(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s9, zero
  SW t4, 32(sp)
  # implict jump to bb57
bb57:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb112
  # implict jump to bb58
bb58:
  ADDI s10, zero, 57
  LW t4, 44(sp)
  SLT s10, s10, t4
  # implict jump to bb59
bb59:
  BNE s10, zero, bb108
  # implict jump to bb60
bb60:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb61
bb61:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb107
  # implict jump to bb62
bb62:
  ADD s6, zero, zero
  # implict jump to bb63
bb63:
  BNE s6, zero, bb106
  # implict jump to bb64
bb64:
  LW t4, 40(sp)
  BNE t4, zero, bb105
  # implict jump to bb65
bb65:
  LW t4, 60(sp)
  ADD s6, t4, zero
  # implict jump to bb66
bb66:
  LD t4, 336(sp)
  SW s6, 0(t4)
  LA s6, v
  LW t3, 20(sp)
  ADD t4, s6, t3
  SD t4, 344(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, s9, zero
  SW t4, 68(sp)
  # implict jump to bb67
bb67:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 80(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb104
  # implict jump to bb68
bb68:
  ADDI s6, zero, 57
  LW t4, 80(sp)
  SLT s6, s6, t4
  # implict jump to bb69
bb69:
  BNE s6, zero, bb100
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 88(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  # implict jump to bb71
bb71:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 92(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb99
  # implict jump to bb72
bb72:
  ADD s8, zero, zero
  # implict jump to bb73
bb73:
  BNE s8, zero, bb98
  # implict jump to bb74
bb74:
  LW t4, 76(sp)
  BNE t4, zero, bb97
  # implict jump to bb75
bb75:
  LW t4, 96(sp)
  ADD s8, t4, zero
  # implict jump to bb76
bb76:
  LD t4, 344(sp)
  SW s8, 0(t4)
  LA s8, c
  LW t3, 20(sp)
  ADD t4, s8, t3
  SD t4, 328(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  ADD t4, s9, zero
  SW t4, 104(sp)
  # implict jump to bb77
bb77:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb96
  # implict jump to bb78
bb78:
  ADDI s8, zero, 57
  LW t4, 116(sp)
  SLT s8, s8, t4
  # implict jump to bb79
bb79:
  BNE s8, zero, bb92
  # implict jump to bb80
bb80:
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb81
bb81:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 100(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb91
  # implict jump to bb82
bb82:
  ADD s10, zero, zero
  # implict jump to bb83
bb83:
  BNE s10, zero, bb90
  # implict jump to bb84
bb84:
  LW t4, 112(sp)
  BNE t4, zero, bb89
  # implict jump to bb85
bb85:
  LW t4, 0(sp)
  ADD s9, t4, zero
  # implict jump to bb86
bb86:
  LD t4, 328(sp)
  SW s9, 0(t4)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  # implict jump to bb87
bb87:
  LW t4, 176(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb88
  JAL zero, bb22
bb88:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb56
bb89:
  LW t4, 0(sp)
  SUB s10, zero, t4
  ADD s9, s10, zero
  JAL zero, bb86
bb90:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 100(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 124(sp)
  ADD t4, s1, zero
  SW t4, 120(sp)
  JAL zero, bb81
bb91:
  ADDI s9, zero, 57
  LW t4, 100(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s10, s9, zero
  JAL zero, bb83
bb92:
  LW t4, 116(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb94
bb94:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb77
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s8, zero, 1
  JAL zero, bb79
bb97:
  LW t4, 96(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb76
bb98:
  ADDI s0, zero, 10
  LW t4, 96(sp)
  MULW s0, t4, s0
  LW t4, 92(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  ADD t4, s1, zero
  SW t4, 84(sp)
  JAL zero, bb71
bb99:
  ADDI s9, zero, 57
  LW t4, 92(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb73
bb100:
  LW t4, 80(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb103
  # implict jump to bb101
bb101:
  LW t4, 76(sp)
  ADD s0, t4, zero
  # implict jump to bb102
bb102:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  JAL zero, bb67
bb103:
  ADDI s0, zero, 1
  JAL zero, bb102
bb104:
  ADDI s6, zero, 1
  JAL zero, bb69
bb105:
  LW t4, 60(sp)
  SUB s9, zero, t4
  ADD s6, s9, zero
  JAL zero, bb66
bb106:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s0, t4, s0
  LW t4, 56(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 52(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb61
bb107:
  ADDI s9, zero, 57
  LW t4, 56(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s6, s9, zero
  JAL zero, bb63
bb108:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb109
bb109:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb110
bb110:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SW t4, 32(sp)
  JAL zero, bb57
bb111:
  ADDI s0, zero, 1
  JAL zero, bb110
bb112:
  ADDI s10, zero, 1
  JAL zero, bb59
bb113:
  LW t4, 12(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb21
bb114:
  ADDI s0, zero, 10
  LW t4, 12(sp)
  MULW s0, t4, s0
  LW t4, 8(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  JAL zero, bb16
bb115:
  ADDI s11, zero, 57
  LW t4, 8(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb18
bb116:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  LW t4, 184(sp)
  ADD s0, t4, zero
  # implict jump to bb118
bb118:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 188(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  JAL zero, bb12
bb119:
  ADDI s0, zero, 1
  JAL zero, bb118
bb120:
  ADDI s6, zero, 1
  JAL zero, bb14
bb121:
  ADDI s0, zero, 10
  LW t4, 196(sp)
  MULW s0, t4, s0
  LW t4, 200(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 204(sp)
  ADD t4, s1, zero
  SW t4, 208(sp)
  JAL zero, bb8
bb122:
  ADDI s8, zero, 57
  LW t4, 200(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb10
bb123:
  LW t4, 212(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb124
bb124:
  LW t4, 216(sp)
  ADD s0, t4, zero
  # implict jump to bb125
bb125:
  CALL getch
  ADD t4, s0, zero
  SW t4, 180(sp)
  ADD t4, a0, zero
  SW t4, 220(sp)
  JAL zero, bb4
bb126:
  ADDI s0, zero, 1
  JAL zero, bb125
bb127:
  ADDI s10, zero, 1
  JAL zero, bb6
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, fa
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb130
  # implict jump to bb129
bb129:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL find
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb130:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -160
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  LA s5, m
  LW s5, 0(s5)
  BLT zero, s5, bb147
  # implict jump to bb132
bb132:
  LA t1, n
  LW t1, 0(t1)
  SLTI t1, t1, 1
  XORI t1, t1, 1
  BNE t1, zero, bb142
  # implict jump to bb133
bb133:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb134
bb134:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LA a3, m
  LW a3, 0(a3)
  LW t4, 20(sp)
  BLT t4, a3, bb136
  # implict jump to bb135
bb135:
  LW t4, 32(sp)
  ADD a0, t4, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb136:
  LW t3, 20(sp)
  SLLIW t4, t3, 2
  SW t4, 16(sp)
  LA a4, u
  LW t3, 16(sp)
  ADD t4, a4, t3
  SD t4, 136(sp)
  LD t4, 136(sp)
  LW a5, 0(t4)
  LA a6, v
  LW t3, 16(sp)
  ADD t4, a6, t3
  SD t4, 128(sp)
  LD t3, 128(sp)
  LW t4, 0(t3)
  SW t4, 12(sp)
  ADD a0, a5, zero
  CALL find
  ADD s4, a0, zero
  LW t4, 12(sp)
  ADD a0, t4, zero
  CALL find
  ADD s9, a0, zero
  XOR s4, s4, s9
  SLTIU s4, s4, 1
  BNE s4, zero, bb141
  # implict jump to bb137
bb137:
  ADD s4, zero, zero
  # implict jump to bb138
bb138:
  BNE s4, zero, bb140
  # implict jump to bb139
bb139:
  LA s4, c
  LW t4, 16(sp)
  ADD s4, s4, t4
  LW s4, 0(s4)
  LW t4, 32(sp)
  ADDW s4, t4, s4
  LD t4, 136(sp)
  LW s9, 0(t4)
  ADD a0, s9, zero
  CALL find
  SLLIW s9, a0, 2
  LA t0, fa
  ADD s9, t0, s9
  LD t4, 128(sp)
  LW t0, 0(t4)
  SW t0, 0(s9)
  LW t4, 20(sp)
  ADDIW s9, t4, 1
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s9, zero
  SW t4, 8(sp)
  JAL zero, bb134
bb140:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb134
bb141:
  ADDI s4, zero, 1
  JAL zero, bb138
bb142:
  ADDI t1, zero, 1
  # implict jump to bb143
bb143:
  ADD t4, t1, zero
  SW t4, 28(sp)
  # implict jump to bb144
bb144:
  LW t4, 28(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LA a1, fa
  ADD a0, a1, a0
  SW t2, 0(a0)
  ADDIW s3, t2, 1
  # implict jump to bb145
bb145:
  LA t2, n
  LW t2, 0(t2)
  SLT t2, t2, s3
  XORI t2, t2, 1
  BNE t2, zero, bb146
  JAL zero, bb133
bb146:
  ADD t4, s3, zero
  SW t4, 28(sp)
  JAL zero, bb144
bb147:
  # implict jump to bb148
bb148:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb149
bb149:
  ADD s8, s7, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  ADD s10, s5, zero
  LW t3, 0(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  BLT t4, s10, bb154
  # implict jump to bb150
bb150:
  ADD s11, s8, zero
  # implict jump to bb151
bb151:
  ADD s2, s11, zero
  # implict jump to bb152
bb152:
  LA s11, m
  LW s11, 0(s11)
  LW t4, 4(sp)
  BLT t4, s11, bb153
  JAL zero, bb132
bb153:
  ADD s5, s11, zero
  LW t4, 4(sp)
  ADD s6, t4, zero
  ADD s7, s2, zero
  JAL zero, bb149
bb154:
  # implict jump to bb155
bb155:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  # implict jump to bb156
bb156:
  ADD t1, s8, zero
  LW t4, 36(sp)
  ADD t2, t4, zero
  LW t4, 0(sp)
  SLLIW a0, t4, 2
  LA a1, c
  ADD a1, a1, a0
  LW a2, 0(a1)
  SLLIW a3, t2, 2
  LA a4, c
  ADD a4, a4, a3
  LW a5, 0(a4)
  BLT a5, a2, bb162
  # implict jump to bb157
bb157:
  # implict jump to bb158
bb158:
  ADD s1, t1, zero
  ADDIW s0, t2, 1
  # implict jump to bb159
bb159:
  BLT s0, s10, bb161
  # implict jump to bb160
bb160:
  ADD s11, s1, zero
  JAL zero, bb151
bb161:
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD s8, s1, zero
  JAL zero, bb156
bb162:
  LA a2, u
  ADD a2, a2, a0
  LW a5, 0(a2)
  LA a6, u
  ADD a6, a6, a3
  LW a7, 0(a6)
  SW a7, 0(a2)
  SW a5, 0(a6)
  LA a2, v
  ADD a0, a2, a0
  LW a2, 0(a0)
  LA a5, v
  ADD a3, a5, a3
  LW a5, 0(a3)
  SW a5, 0(a0)
  SW a2, 0(a3)
  LW a0, 0(a1)
  LW a2, 0(a4)
  SW a2, 0(a1)
  SW a0, 0(a4)
  ADD t1, a0, zero
  JAL zero, bb158
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
  # implict jump to bb164
bb164:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb180
  # implict jump to bb165
bb165:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb166
bb166:
  BNE s4, zero, bb176
  # implict jump to bb167
bb167:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb168
bb168:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb175
  # implict jump to bb169
bb169:
  ADD s8, zero, zero
  # implict jump to bb170
bb170:
  BNE s8, zero, bb174
  # implict jump to bb171
bb171:
  BNE s3, zero, bb173
  # implict jump to bb172
bb172:
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
bb173:
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
bb174:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb168
bb175:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb170
bb176:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb179
  # implict jump to bb177
bb177:
  ADD s2, s3, zero
  # implict jump to bb178
bb178:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb164
bb179:
  ADDI s2, zero, 1
  JAL zero, bb178
bb180:
  ADDI s4, zero, 1
  JAL zero, bb166
