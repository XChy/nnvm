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
  ADDI sp, sp, -288
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  SD s8, 208(sp)
  SD s9, 216(sp)
  SD s11, 224(sp)
  SD s6, 232(sp)
  SD s4, 240(sp)
  SD s10, 248(sp)
  SD s5, 256(sp)
  SD s7, 264(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 148(sp)
  # implict jump to bb4
bb4:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 96(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb113
  # implict jump to bb5
bb5:
  ADDI s4, zero, 57
  LW t4, 96(sp)
  SLT s4, s4, t4
  # implict jump to bb6
bb6:
  BNE s4, zero, bb109
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 4(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb8
bb8:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb108
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  BNE s8, zero, bb107
  # implict jump to bb11
bb11:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  # implict jump to bb12
bb12:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb106
  # implict jump to bb13
bb13:
  ADDI s0, zero, 57
  LW t4, 28(sp)
  SLT s0, s0, t4
  # implict jump to bb14
bb14:
  BNE s0, zero, bb102
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 36(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb16
bb16:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 40(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb101
  # implict jump to bb17
bb17:
  ADD s5, zero, zero
  # implict jump to bb18
bb18:
  BNE s5, zero, bb100
  # implict jump to bb19
bb19:
  LW t4, 24(sp)
  BNE t4, zero, bb99
  # implict jump to bb20
bb20:
  LW t4, 44(sp)
  ADD s4, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s4, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb22
bb22:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb44
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb24
bb24:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 72(sp)
  ADD s11, t4, zero
  LA s10, m
  LW t4, 0(s10)
  SW t4, 60(sp)
  LW t4, 64(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb37
  # implict jump to bb25
bb25:
  ADDI s1, zero, 1
  # implict jump to bb26
bb26:
  ADD s0, s1, zero
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb36
  # implict jump to bb27
bb27:
  ADD s3, zero, zero
  ADD s2, zero, zero
  # implict jump to bb28
bb28:
  ADD s6, s2, zero
  ADD s4, s3, zero
  LA s5, m
  LW s5, 0(s5)
  BLT s6, s5, bb30
  # implict jump to bb29
bb29:
  ADD a0, s4, zero
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  LD s8, 208(sp)
  LD s9, 216(sp)
  LD s11, 224(sp)
  LD s6, 232(sp)
  LD s4, 240(sp)
  LD s10, 248(sp)
  LD s5, 256(sp)
  LD s7, 264(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb30:
  SLLIW s5, s6, 2
  LA s10, u
  ADD s10, s10, s5
  LW s9, 0(s10)
  LA s8, v
  ADD s8, s8, s5
  LW s7, 0(s8)
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  XOR s7, s9, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb35
  # implict jump to bb31
bb31:
  ADD s7, zero, zero
  # implict jump to bb32
bb32:
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
  LA s7, c
  ADD s5, s7, s5
  LW s5, 0(s5)
  ADDW s5, s4, s5
  LW s7, 0(s10)
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  SLLIW s7, s7, 2
  LA s9, fa
  ADD s7, s9, s7
  LW s8, 0(s8)
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s3, s5, zero
  ADD s2, s7, zero
  JAL zero, bb28
bb34:
  ADD s3, s4, zero
  ADD s2, s6, zero
  JAL zero, bb28
bb35:
  ADDI s7, zero, 1
  JAL zero, bb32
bb36:
  SLLIW s2, s0, 2
  LA s3, fa
  ADD s2, s3, s2
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb26
bb37:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  ADD s1, s11, zero
  LW t4, 76(sp)
  ADD s2, t4, zero
  # implict jump to bb38
bb38:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LW t4, 60(sp)
  BLT s3, t4, bb40
  # implict jump to bb39
bb39:
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb24
bb40:
  LW t4, 64(sp)
  SLLIW s5, t4, 2
  LA s6, c
  ADD s6, s6, s5
  LW s7, 0(s6)
  SLLIW s8, s3, 2
  LA s9, c
  ADD s9, s9, s8
  LW s10, 0(s9)
  BLT s10, s7, bb43
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  ADDIW s0, s3, 1
  ADD s1, s4, zero
  ADD s2, s0, zero
  JAL zero, bb38
bb43:
  LA s7, u
  ADD s7, s7, s5
  LW s10, 0(s7)
  LA s11, u
  ADD s11, s11, s8
  LW s0, 0(s11)
  SW s0, 0(s7)
  SW s10, 0(s11)
  LA s0, v
  ADD s0, s0, s5
  LW s5, 0(s0)
  LA s7, v
  ADD s7, s7, s8
  LW s8, 0(s7)
  SW s8, 0(s0)
  SW s5, 0(s7)
  LW s0, 0(s6)
  LW s5, 0(s9)
  SW s5, 0(s6)
  SW s0, 0(s9)
  ADD s4, s0, zero
  JAL zero, bb42
bb44:
  LW t3, 0(sp)
  SLLIW t4, t3, 2
  SW t4, 84(sp)
  LA s1, u
  LW t3, 84(sp)
  ADD t4, s1, t3
  SD t4, 272(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, s2, zero
  SW t4, 88(sp)
  # implict jump to bb45
bb45:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 144(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb98
  # implict jump to bb46
bb46:
  ADDI s6, zero, 57
  LW t4, 144(sp)
  SLT s6, s6, t4
  # implict jump to bb47
bb47:
  BNE s6, zero, bb94
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  # implict jump to bb49
bb49:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 132(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb93
  # implict jump to bb50
bb50:
  ADD s10, zero, zero
  # implict jump to bb51
bb51:
  BNE s10, zero, bb92
  # implict jump to bb52
bb52:
  LW t4, 80(sp)
  BNE t4, zero, bb91
  # implict jump to bb53
bb53:
  LW t4, 128(sp)
  ADD s10, t4, zero
  # implict jump to bb54
bb54:
  LD t4, 272(sp)
  SW s10, 0(t4)
  LA s10, v
  LW t3, 84(sp)
  ADD t4, s10, t3
  SD t4, 160(sp)
  CALL getch
  ADD s11, a0, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s11, zero
  SW t4, 124(sp)
  # implict jump to bb55
bb55:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 112(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb90
  # implict jump to bb56
bb56:
  ADDI s3, zero, 57
  LW t4, 112(sp)
  SLT s3, s3, t4
  # implict jump to bb57
bb57:
  BNE s3, zero, bb86
  # implict jump to bb58
bb58:
  ADD t4, zero, zero
  SW t4, 104(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  # implict jump to bb59
bb59:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 104(sp)
  ADD s7, t4, zero
  LW t4, 100(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb85
  # implict jump to bb60
bb60:
  ADD s6, zero, zero
  # implict jump to bb61
bb61:
  BNE s6, zero, bb84
  # implict jump to bb62
bb62:
  LW t4, 116(sp)
  BNE t4, zero, bb83
  # implict jump to bb63
bb63:
  ADD s6, s7, zero
  # implict jump to bb64
bb64:
  LD t4, 160(sp)
  SW s6, 0(t4)
  LA s6, c
  LW t4, 84(sp)
  ADD s6, s6, t4
  CALL getch
  ADD s8, a0, zero
  ADD s9, zero, zero
  # implict jump to bb65
bb65:
  ADD s10, s8, zero
  ADD s11, s9, zero
  SLTI s1, s10, 48
  BNE s1, zero, bb82
  # implict jump to bb66
bb66:
  ADDI s1, zero, 57
  SLT s1, s1, s10
  # implict jump to bb67
bb67:
  BNE s1, zero, bb78
  # implict jump to bb68
bb68:
  ADD s1, zero, zero
  ADD s2, s10, zero
  # implict jump to bb69
bb69:
  ADD s0, s2, zero
  ADD s5, s1, zero
  SLTI s3, s0, 48
  XORI s3, s3, 1
  BNE s3, zero, bb77
  # implict jump to bb70
bb70:
  ADD s3, zero, zero
  # implict jump to bb71
bb71:
  BNE s3, zero, bb76
  # implict jump to bb72
bb72:
  BNE s11, zero, bb75
  # implict jump to bb73
bb73:
  ADD s3, s5, zero
  # implict jump to bb74
bb74:
  SW s3, 0(s6)
  LW t4, 0(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 56(sp)
  JAL zero, bb22
bb75:
  SUB s4, zero, s5
  ADD s3, s4, zero
  JAL zero, bb74
bb76:
  ADDI s3, zero, 10
  MULW s3, s5, s3
  ADDW s0, s3, s0
  ADDI s3, zero, 48
  SUBW s0, s0, s3
  CALL getch
  ADD s3, a0, zero
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb69
bb77:
  ADDI s4, zero, 57
  SLT s4, s4, s0
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb71
bb78:
  XORI s0, s10, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb81
  # implict jump to bb79
bb79:
  ADD s0, s11, zero
  # implict jump to bb80
bb80:
  CALL getch
  ADD s1, a0, zero
  ADD s9, s0, zero
  ADD s8, s1, zero
  JAL zero, bb65
bb81:
  ADDI s0, zero, 1
  JAL zero, bb80
bb82:
  ADDI s1, zero, 1
  JAL zero, bb67
bb83:
  SUB s8, zero, s7
  ADD s6, s8, zero
  JAL zero, bb64
bb84:
  ADDI s0, zero, 10
  MULW s0, s7, s0
  LW t4, 100(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 104(sp)
  ADD t4, s1, zero
  SW t4, 108(sp)
  JAL zero, bb59
bb85:
  ADDI s8, zero, 57
  LW t4, 100(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s6, s8, zero
  JAL zero, bb61
bb86:
  LW t4, 112(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb89
  # implict jump to bb87
bb87:
  LW t4, 116(sp)
  ADD s0, t4, zero
  # implict jump to bb88
bb88:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 120(sp)
  ADD t4, s1, zero
  SW t4, 124(sp)
  JAL zero, bb55
bb89:
  ADDI s0, zero, 1
  JAL zero, bb88
bb90:
  ADDI s3, zero, 1
  JAL zero, bb57
bb91:
  LW t4, 128(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb54
bb92:
  ADDI s0, zero, 10
  LW t4, 128(sp)
  MULW s0, t4, s0
  LW t4, 132(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 136(sp)
  ADD t4, s1, zero
  SW t4, 140(sp)
  JAL zero, bb49
bb93:
  ADDI s11, zero, 57
  LW t4, 132(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb51
bb94:
  LW t4, 144(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb97
  # implict jump to bb95
bb95:
  LW t4, 80(sp)
  ADD s0, t4, zero
  # implict jump to bb96
bb96:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  JAL zero, bb45
bb97:
  ADDI s0, zero, 1
  JAL zero, bb96
bb98:
  ADDI s6, zero, 1
  JAL zero, bb47
bb99:
  LW t4, 44(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb21
bb100:
  ADDI s0, zero, 10
  LW t4, 44(sp)
  MULW s0, t4, s0
  LW t4, 40(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SW t4, 32(sp)
  JAL zero, bb16
bb101:
  ADDI s4, zero, 57
  LW t4, 40(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb18
bb102:
  LW t4, 28(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 24(sp)
  ADD s0, t4, zero
  # implict jump to bb104
bb104:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  JAL zero, bb12
bb105:
  ADDI s0, zero, 1
  JAL zero, bb104
bb106:
  ADDI s0, zero, 1
  JAL zero, bb14
bb107:
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
  SW t4, 48(sp)
  JAL zero, bb8
bb108:
  ADDI s9, zero, 57
  LW t4, 8(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb10
bb109:
  LW t4, 96(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb112
  # implict jump to bb110
bb110:
  LW t4, 156(sp)
  ADD s0, t4, zero
  # implict jump to bb111
bb111:
  CALL getch
  ADD t4, s0, zero
  SW t4, 152(sp)
  ADD t4, a0, zero
  SW t4, 148(sp)
  JAL zero, bb4
bb112:
  ADDI s0, zero, 1
  JAL zero, bb111
bb113:
  ADDI s4, zero, 1
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
  BNE s2, zero, bb116
  # implict jump to bb115
bb115:
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
bb116:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -144
  SD s7, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb118
bb118:
  ADD t4, s1, zero
  SW t4, 8(sp)
  ADD s3, s0, zero
  LA s4, m
  LW t4, 0(s4)
  SW t4, 4(sp)
  LW t4, 8(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb131
  # implict jump to bb119
bb119:
  ADDI s5, zero, 1
  # implict jump to bb120
bb120:
  ADD s6, s5, zero
  LA s7, n
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb130
  # implict jump to bb121
bb121:
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb122
bb122:
  ADD s9, s8, zero
  ADD s10, s7, zero
  LA s11, m
  LW s11, 0(s11)
  BLT s9, s11, bb124
  # implict jump to bb123
bb123:
  ADD a0, s10, zero
  LD s7, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb124:
  SLLIW s11, s9, 2
  LA t0, u
  ADD t4, t0, s11
  SD t4, 128(sp)
  LD t4, 128(sp)
  LW t1, 0(t4)
  LA t2, v
  ADD t4, t2, s11
  SD t4, 120(sp)
  LD t3, 120(sp)
  LW t4, 0(t3)
  SW t4, 0(sp)
  ADD a0, t1, zero
  CALL find
  ADD s4, a0, zero
  LW t4, 0(sp)
  ADD a0, t4, zero
  CALL find
  ADD s2, a0, zero
  XOR s2, s4, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb129
  # implict jump to bb125
bb125:
  ADD s2, zero, zero
  # implict jump to bb126
bb126:
  BNE s2, zero, bb128
  # implict jump to bb127
bb127:
  LA s2, c
  ADD s2, s2, s11
  LW s2, 0(s2)
  ADDW s2, s10, s2
  LD t4, 128(sp)
  LW s4, 0(t4)
  ADD a0, s4, zero
  CALL find
  SLLIW s4, a0, 2
  LA s11, fa
  ADD s4, s11, s4
  LD t4, 120(sp)
  LW s11, 0(t4)
  SW s11, 0(s4)
  ADDIW s4, s9, 1
  ADD s7, s2, zero
  ADD s8, s4, zero
  JAL zero, bb122
bb128:
  ADD s7, s10, zero
  ADD s8, s9, zero
  JAL zero, bb122
bb129:
  ADDI s2, zero, 1
  JAL zero, bb126
bb130:
  SLLIW s2, s6, 2
  LA s4, fa
  ADD s2, s4, s2
  SW s6, 0(s2)
  ADDIW s2, s6, 1
  ADD s5, s2, zero
  JAL zero, bb120
bb131:
  LW t4, 8(sp)
  ADDIW s2, t4, 1
  ADD s4, s2, zero
  # implict jump to bb132
bb132:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LW t4, 4(sp)
  BLT s5, t4, bb134
  # implict jump to bb133
bb133:
  ADD s0, s6, zero
  ADD s1, s2, zero
  JAL zero, bb118
bb134:
  LW t4, 8(sp)
  SLLIW s0, t4, 2
  LA s1, c
  ADD s1, s1, s0
  LW s7, 0(s1)
  SLLIW s8, s5, 2
  LA s9, c
  ADD s9, s9, s8
  LW s10, 0(s9)
  BLT s10, s7, bb137
  # implict jump to bb135
bb135:
  # implict jump to bb136
bb136:
  ADDIW s0, s5, 1
  ADD s3, s6, zero
  ADD s4, s0, zero
  JAL zero, bb132
bb137:
  LA s7, u
  ADD s7, s7, s0
  LW s10, 0(s7)
  LA s11, u
  ADD s11, s11, s8
  LW t0, 0(s11)
  SW t0, 0(s7)
  SW s10, 0(s11)
  LA s7, v
  ADD s0, s7, s0
  LW s7, 0(s0)
  LA s10, v
  ADD s8, s10, s8
  LW s10, 0(s8)
  SW s10, 0(s0)
  SW s7, 0(s8)
  LW s0, 0(s1)
  LW s7, 0(s9)
  SW s7, 0(s1)
  SW s0, 0(s9)
  ADD s6, s0, zero
  JAL zero, bb136
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
  # implict jump to bb139
bb139:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb155
  # implict jump to bb140
bb140:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb141
bb141:
  BNE s4, zero, bb151
  # implict jump to bb142
bb142:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb143
bb143:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb150
  # implict jump to bb144
bb144:
  ADD s8, zero, zero
  # implict jump to bb145
bb145:
  BNE s8, zero, bb149
  # implict jump to bb146
bb146:
  BNE s3, zero, bb148
  # implict jump to bb147
bb147:
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
bb148:
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
bb149:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb143
bb150:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb145
bb151:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb154
  # implict jump to bb152
bb152:
  ADD s2, s3, zero
  # implict jump to bb153
bb153:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb139
bb154:
  ADDI s2, zero, 1
  JAL zero, bb153
bb155:
  ADDI s4, zero, 1
  JAL zero, bb141
