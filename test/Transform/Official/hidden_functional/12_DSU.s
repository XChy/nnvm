.global same
.global init
.global main
.global find
.global quick_read
.section .bss

fa:
.space 400020

.section .data
m:
.word 0x00000000

n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  # implict jump to bb4
bb4:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb6
  # implict jump to bb5
bb5:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb6:
  SLLIW s2, s1, 2
  LA s3, fa
  ADD s4, s3, s2
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -304
  SD s11, 192(sp)
  SD s8, 200(sp)
  SD s10, 208(sp)
  SD s0, 216(sp)
  SD s5, 224(sp)
  SD s7, 232(sp)
  SD s1, 240(sp)
  SD s6, 248(sp)
  SD s2, 256(sp)
  SD s9, 264(sp)
  SD s4, 272(sp)
  SD ra, 280(sp)
  SD s3, 288(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb8
bb8:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb133
  # implict jump to bb9
bb9:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb10
bb10:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb129
  # implict jump to bb11
bb11:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb12
bb12:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb128
  # implict jump to bb13
bb13:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb14
bb14:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb127
  # implict jump to bb15
bb15:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb126
  # implict jump to bb16
bb16:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb17
bb17:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  # implict jump to bb18
bb18:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb125
  # implict jump to bb19
bb19:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 36(sp)
  # implict jump to bb20
bb20:
  LB t4, 36(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb121
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  # implict jump to bb22
bb22:
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb120
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SB t4, 48(sp)
  # implict jump to bb24
bb24:
  LB t4, 48(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb119
  # implict jump to bb25
bb25:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb118
  # implict jump to bb26
bb26:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  # implict jump to bb27
bb27:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADDI s0, zero, 1
  # implict jump to bb28
bb28:
  ADD s5, s0, zero
  LA s6, n
  LW s8, 0(s6)
  SLT s6, s8, s5
  XORI s8, s6, 1
  BNE s8, zero, bb117
  # implict jump to bb29
bb29:
  ADD s0, zero, zero
  ADD s2, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb30
bb30:
  ADD t4, s6, zero
  SW t4, 72(sp)
  ADD t4, s5, zero
  SW t4, 68(sp)
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 60(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb32
  # implict jump to bb31
bb31:
  ADD a0, zero, zero
  LD s11, 192(sp)
  LD s8, 200(sp)
  LD s10, 208(sp)
  LD s0, 216(sp)
  LD s5, 224(sp)
  LD s7, 232(sp)
  LD s1, 240(sp)
  LD s6, 248(sp)
  LD s2, 256(sp)
  LD s9, 264(sp)
  LD s4, 272(sp)
  LD ra, 280(sp)
  LD s3, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb32:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  # implict jump to bb33
bb33:
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb116
  # implict jump to bb34
bb34:
  ADD t4, zero, zero
  SB t4, 76(sp)
  # implict jump to bb35
bb35:
  LB t4, 76(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb115
  # implict jump to bb36
bb36:
  LW t4, 56(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb75
  # implict jump to bb37
bb37:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb38
bb38:
  ADD t4, s2, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  LW t4, 164(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb74
  # implict jump to bb39
bb39:
  ADDI s0, zero, 57
  LW t4, 164(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 168(sp)
  # implict jump to bb40
bb40:
  LB t4, 168(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb70
  # implict jump to bb41
bb41:
  ADD s1, zero, zero
  LW t4, 164(sp)
  ADD s2, t4, zero
  # implict jump to bb42
bb42:
  ADD t4, s2, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb69
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SB t4, 180(sp)
  # implict jump to bb44
bb44:
  LB t4, 180(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb68
  # implict jump to bb45
bb45:
  LW t4, 160(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb67
  # implict jump to bb46
bb46:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb47
bb47:
  LW t4, 184(sp)
  ADD s1, t4, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  # implict jump to bb48
bb48:
  ADD s7, s10, zero
  ADD s11, s9, zero
  SLTI s3, s7, 48
  BNE s3, zero, bb66
  # implict jump to bb49
bb49:
  ADDI s0, zero, 57
  SLT s2, s0, s7
  ADD s3, s2, zero
  # implict jump to bb50
bb50:
  ADD s0, s3, zero
  BNE s0, zero, bb62
  # implict jump to bb51
bb51:
  ADD s0, zero, zero
  ADD s4, s7, zero
  # implict jump to bb52
bb52:
  ADD s6, s4, zero
  ADD s9, s0, zero
  SLTI s10, s6, 48
  XORI s5, s10, 1
  BNE s5, zero, bb61
  # implict jump to bb53
bb53:
  ADD s10, zero, zero
  # implict jump to bb54
bb54:
  ADD s5, s10, zero
  BNE s5, zero, bb60
  # implict jump to bb55
bb55:
  XOR s0, s11, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb59
  # implict jump to bb56
bb56:
  ADD s2, s9, zero
  # implict jump to bb57
bb57:
  ADD s0, s2, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SLLIW s4, s1, 2
  LA s5, fa
  ADD s8, s5, s4
  SW s0, 0(s8)
  ADD t4, s0, zero
  SW t4, 136(sp)
  ADD t4, s1, zero
  SW t4, 132(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  # implict jump to bb58
bb58:
  LW t4, 128(sp)
  ADD s8, t4, zero
  LW t4, 124(sp)
  ADD s7, t4, zero
  LW t4, 132(sp)
  ADD s10, t4, zero
  LW t4, 136(sp)
  ADD s9, t4, zero
  LA s11, m
  LW s3, 0(s11)
  ADDI s11, zero, 1
  SUBW s1, s3, s11
  LA s3, m
  SW s1, 0(s3)
  ADD s0, s9, zero
  ADD s2, s10, zero
  ADD s5, s7, zero
  ADD s6, s8, zero
  JAL zero, bb30
bb59:
  SUB s0, zero, s9
  ADD s2, s0, zero
  JAL zero, bb57
bb60:
  ADDI s5, zero, 10
  MULW s8, s9, s5
  ADDW s5, s8, s6
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb52
bb61:
  ADDI s5, zero, 57
  SLT s10, s5, s6
  XORI s5, s10, 1
  ADD s10, s5, zero
  JAL zero, bb54
bb62:
  XORI s0, s7, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb65
  # implict jump to bb63
bb63:
  ADD s0, s11, zero
  # implict jump to bb64
bb64:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb48
bb65:
  ADDI s0, zero, 1
  JAL zero, bb64
bb66:
  ADDI s3, zero, 1
  JAL zero, bb50
bb67:
  LW t4, 172(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 184(sp)
  JAL zero, bb47
bb68:
  ADDI s7, zero, 10
  LW t4, 172(sp)
  MULW s9, t4, s7
  LW t4, 176(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb42
bb69:
  ADDI s7, zero, 57
  LW t4, 176(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 180(sp)
  JAL zero, bb44
bb70:
  LW t4, 164(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb73
  # implict jump to bb71
bb71:
  LW t4, 160(sp)
  ADD s5, t4, zero
  # implict jump to bb72
bb72:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb38
bb73:
  ADDI s5, zero, 1
  JAL zero, bb72
bb74:
  ADDI t4, zero, 1
  SB t4, 168(sp)
  JAL zero, bb40
bb75:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  # implict jump to bb76
bb76:
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb114
  # implict jump to bb77
bb77:
  ADDI s0, zero, 57
  LW t4, 84(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 88(sp)
  # implict jump to bb78
bb78:
  LB t4, 88(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb110
  # implict jump to bb79
bb79:
  ADD s3, zero, zero
  LW t4, 84(sp)
  ADD s4, t4, zero
  # implict jump to bb80
bb80:
  ADD t4, s4, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 92(sp)
  LW t4, 96(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb109
  # implict jump to bb81
bb81:
  ADD t4, zero, zero
  SB t4, 100(sp)
  # implict jump to bb82
bb82:
  LB t4, 100(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb108
  # implict jump to bb83
bb83:
  LW t4, 80(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb107
  # implict jump to bb84
bb84:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  # implict jump to bb85
bb85:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  # implict jump to bb86
bb86:
  ADD t4, s10, zero
  SW t4, 112(sp)
  ADD t4, s7, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb106
  # implict jump to bb87
bb87:
  ADDI s0, zero, 57
  LW t4, 112(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 120(sp)
  # implict jump to bb88
bb88:
  LB t4, 120(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb102
  # implict jump to bb89
bb89:
  ADD s3, zero, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  # implict jump to bb90
bb90:
  ADD t4, s7, zero
  SW t4, 144(sp)
  ADD t4, s3, zero
  SW t4, 140(sp)
  LW t4, 144(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb101
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SB t4, 148(sp)
  # implict jump to bb92
bb92:
  LB t4, 148(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb100
  # implict jump to bb93
bb93:
  LW t4, 108(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb99
  # implict jump to bb94
bb94:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  # implict jump to bb95
bb95:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 116(sp)
  ADD a0, t4, zero
  CALL find
  ADD s4, a0, zero
  LW t4, 156(sp)
  ADD a0, t4, zero
  CALL find
  ADD s7, a0, zero
  XOR s8, s4, s7
  SLTIU s4, s8, 1
  BNE s4, zero, bb98
  # implict jump to bb96
bb96:
  ADD s4, zero, zero
  # implict jump to bb97
bb97:
  ADD s7, s4, zero
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb58
bb98:
  ADDI s4, zero, 1
  JAL zero, bb97
bb99:
  LW t4, 140(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 152(sp)
  JAL zero, bb95
bb100:
  ADDI s4, zero, 10
  LW t4, 140(sp)
  MULW s1, t4, s4
  LW t4, 144(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb90
bb101:
  ADDI s4, zero, 57
  LW t4, 144(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 148(sp)
  JAL zero, bb92
bb102:
  LW t4, 112(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 108(sp)
  ADD s3, t4, zero
  # implict jump to bb104
bb104:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb86
bb105:
  ADDI s3, zero, 1
  JAL zero, bb104
bb106:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb88
bb107:
  LW t4, 92(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb85
bb108:
  ADDI s10, zero, 10
  LW t4, 92(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb80
bb109:
  ADDI s10, zero, 57
  LW t4, 96(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 100(sp)
  JAL zero, bb82
bb110:
  LW t4, 84(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb113
  # implict jump to bb111
bb111:
  LW t4, 80(sp)
  ADD s8, t4, zero
  # implict jump to bb112
bb112:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb76
bb113:
  ADDI s8, zero, 1
  JAL zero, bb112
bb114:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb78
bb115:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb33
bb116:
  LW t4, 56(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 76(sp)
  JAL zero, bb35
bb117:
  SLLIW s6, s5, 2
  LA s8, fa
  ADD s2, s8, s6
  SW s5, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb28
bb118:
  LW t4, 40(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb27
bb119:
  ADDI s6, zero, 10
  LW t4, 40(sp)
  MULW s5, t4, s6
  LW t4, 44(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb22
bb120:
  ADDI s6, zero, 57
  LW t4, 44(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 48(sp)
  JAL zero, bb24
bb121:
  LW t4, 32(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb124
  # implict jump to bb122
bb122:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb123
bb123:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb18
bb124:
  ADDI s0, zero, 1
  JAL zero, bb123
bb125:
  ADDI t4, zero, 1
  SB t4, 36(sp)
  JAL zero, bb20
bb126:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb17
bb127:
  ADDI s7, zero, 10
  LW t4, 12(sp)
  MULW s9, t4, s7
  LW t4, 16(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb12
bb128:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb14
bb129:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb132
  # implict jump to bb130
bb130:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb131
bb131:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb8
bb132:
  ADDI s5, zero, 1
  JAL zero, bb131
bb133:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb10
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, fa
  ADD s3, s2, s1
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb136
  # implict jump to bb135
bb135:
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb136:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb138
bb138:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb154
  # implict jump to bb139
bb139:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb140
bb140:
  ADD s5, s4, zero
  BNE s5, zero, bb150
  # implict jump to bb141
bb141:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb142
bb142:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb149
  # implict jump to bb143
bb143:
  ADD s8, zero, zero
  # implict jump to bb144
bb144:
  ADD s7, s8, zero
  BNE s7, zero, bb148
  # implict jump to bb145
bb145:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb147
  # implict jump to bb146
bb146:
  ADD a0, s6, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb147:
  SUB s1, zero, s6
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb148:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb142
bb149:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb144
bb150:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb153
  # implict jump to bb151
bb151:
  ADD s5, s3, zero
  # implict jump to bb152
bb152:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb138
bb153:
  ADDI s5, zero, 1
  JAL zero, bb152
bb154:
  ADDI s4, zero, 1
  JAL zero, bb140
