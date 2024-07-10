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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s1, 216(sp)
  SD s5, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s6, 256(sp)
  SD s7, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s10, 288(sp)
  SD s11, 296(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  # implict jump to bb8
bb8:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb133
  # implict jump to bb9
bb9:
  ADDI s4, zero, 57
  LW t4, 12(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb10
bb10:
  ADD s5, s4, zero
  BNE s5, zero, bb129
  # implict jump to bb11
bb11:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb12
bb12:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb128
  # implict jump to bb13
bb13:
  ADD s8, zero, zero
  # implict jump to bb14
bb14:
  ADD s9, s8, zero
  BNE s9, zero, bb127
  # implict jump to bb15
bb15:
  LW t4, 8(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb126
  # implict jump to bb16
bb16:
  LW t4, 28(sp)
  ADD s8, t4, zero
  # implict jump to bb17
bb17:
  ADD s9, s8, zero
  LA s8, n
  SW s9, 0(s8)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s8, zero
  SW t4, 32(sp)
  # implict jump to bb18
bb18:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb125
  # implict jump to bb19
bb19:
  ADDI s2, zero, 57
  LW t4, 44(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb20
bb20:
  ADD s1, s2, zero
  BNE s1, zero, bb121
  # implict jump to bb21
bb21:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb22
bb22:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 0(sp)
  SLTI s5, t4, 48
  XORI s4, s5, 1
  BNE s4, zero, bb120
  # implict jump to bb23
bb23:
  ADD s4, zero, zero
  # implict jump to bb24
bb24:
  ADD s5, s4, zero
  BNE s5, zero, bb119
  # implict jump to bb25
bb25:
  LW t4, 40(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb118
  # implict jump to bb26
bb26:
  LW t4, 60(sp)
  ADD s4, t4, zero
  # implict jump to bb27
bb27:
  ADD s5, s4, zero
  LA s4, m
  SW s5, 0(s4)
  ADDI t4, zero, 1
  SW t4, 64(sp)
  # implict jump to bb28
bb28:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LA s6, n
  LW s7, 0(s6)
  LW t4, 68(sp)
  SLT s6, s7, t4
  XORI s7, s6, 1
  BNE s7, zero, bb117
  # implict jump to bb29
bb29:
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb30
bb30:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LA s3, m
  LW s0, 0(s3)
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb32
  # implict jump to bb31
bb31:
  ADD a0, zero, zero
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s1, 216(sp)
  LD s5, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s6, 256(sp)
  LD s7, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s10, 288(sp)
  LD s11, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb32:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  # implict jump to bb33
bb33:
  LW t4, 88(sp)
  ADD s0, t4, zero
  XORI s4, s0, 81
  SLTU s5, zero, s4
  BNE s5, zero, bb116
  # implict jump to bb34
bb34:
  ADD s4, zero, zero
  # implict jump to bb35
bb35:
  ADD s5, s4, zero
  BNE s5, zero, bb115
  # implict jump to bb36
bb36:
  XORI s4, s0, 81
  SLTIU s0, s4, 1
  BNE s0, zero, bb75
  # implict jump to bb37
bb37:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 196(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  # implict jump to bb38
bb38:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 188(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb74
  # implict jump to bb39
bb39:
  ADDI s8, zero, 57
  LW t4, 188(sp)
  SLT s2, s8, t4
  ADD s8, s2, zero
  # implict jump to bb40
bb40:
  ADD s2, s8, zero
  BNE s2, zero, bb70
  # implict jump to bb41
bb41:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb42
bb42:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s9, t4, 48
  XORI s10, s9, 1
  BNE s10, zero, bb69
  # implict jump to bb43
bb43:
  ADD s9, zero, zero
  # implict jump to bb44
bb44:
  ADD s7, s9, zero
  BNE s7, zero, bb68
  # implict jump to bb45
bb45:
  LW t4, 192(sp)
  XOR s7, t4, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb67
  # implict jump to bb46
bb46:
  LW t4, 172(sp)
  ADD s7, t4, zero
  # implict jump to bb47
bb47:
  ADD s9, s7, zero
  ADD a0, s9, zero
  CALL find
  ADD t4, a0, zero
  SW t4, 168(sp)
  CALL getch
  ADD s9, a0, zero
  ADD s10, zero, zero
  ADD s6, s9, zero
  # implict jump to bb48
bb48:
  ADD s9, s6, zero
  ADD s5, s10, zero
  SLTI s4, s9, 48
  BNE s4, zero, bb66
  # implict jump to bb49
bb49:
  ADDI s4, zero, 57
  SLT s11, s4, s9
  ADD s4, s11, zero
  # implict jump to bb50
bb50:
  ADD s11, s4, zero
  BNE s11, zero, bb62
  # implict jump to bb51
bb51:
  ADD s4, zero, zero
  ADD s11, s9, zero
  # implict jump to bb52
bb52:
  ADD s0, s11, zero
  ADD s8, s4, zero
  SLTI s2, s0, 48
  XORI s1, s2, 1
  BNE s1, zero, bb61
  # implict jump to bb53
bb53:
  ADD s1, zero, zero
  # implict jump to bb54
bb54:
  ADD s2, s1, zero
  BNE s2, zero, bb60
  # implict jump to bb55
bb55:
  XOR s1, s5, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb59
  # implict jump to bb56
bb56:
  ADD s1, s8, zero
  # implict jump to bb57
bb57:
  ADD s2, s1, zero
  ADD a0, s2, zero
  CALL find
  ADD s1, a0, zero
  LW t4, 168(sp)
  SLLIW s2, t4, 2
  LA s3, fa
  ADD s7, s3, s2
  SW s1, 0(s7)
  ADD t4, s1, zero
  SW t4, 164(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 76(sp)
  ADD s3, t4, zero
  LW t4, 72(sp)
  ADD s7, t4, zero
  # implict jump to bb58
bb58:
  ADD s1, s7, zero
  ADD s7, s3, zero
  LW t4, 160(sp)
  ADD s3, t4, zero
  LW t4, 164(sp)
  ADD s9, t4, zero
  LA s10, m
  LW s11, 0(s10)
  ADDI s10, zero, 1
  SUBW s4, s11, s10
  LA s10, m
  SW s4, 0(s10)
  ADD t4, s9, zero
  SW t4, 104(sp)
  ADD t4, s3, zero
  SW t4, 100(sp)
  ADD t4, s7, zero
  SW t4, 96(sp)
  ADD t4, s1, zero
  SW t4, 92(sp)
  JAL zero, bb30
bb59:
  SUB s2, zero, s8
  ADD s1, s2, zero
  JAL zero, bb57
bb60:
  ADDI s2, zero, 10
  MULW s1, s8, s2
  ADDW s2, s1, s0
  ADDI s0, zero, 48
  SUBW s1, s2, s0
  CALL getch
  ADD s0, a0, zero
  ADD s4, s1, zero
  ADD s11, s0, zero
  JAL zero, bb52
bb61:
  ADDI s2, zero, 57
  SLT s3, s2, s0
  XORI s2, s3, 1
  ADD s1, s2, zero
  JAL zero, bb54
bb62:
  XORI s0, s9, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb65
  # implict jump to bb63
bb63:
  ADD s0, s5, zero
  # implict jump to bb64
bb64:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s10, s1, zero
  ADD s6, s0, zero
  JAL zero, bb48
bb65:
  ADDI s0, zero, 1
  JAL zero, bb64
bb66:
  ADDI s4, zero, 1
  JAL zero, bb50
bb67:
  LW t4, 172(sp)
  SUB s9, zero, t4
  ADD s7, s9, zero
  JAL zero, bb47
bb68:
  ADDI s0, zero, 10
  LW t4, 172(sp)
  MULW s1, t4, s0
  LW t4, 176(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 180(sp)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb42
bb69:
  ADDI s10, zero, 57
  LW t4, 176(sp)
  SLT s7, s10, t4
  XORI s10, s7, 1
  ADD s9, s10, zero
  JAL zero, bb44
bb70:
  LW t4, 188(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb73
  # implict jump to bb71
bb71:
  LW t4, 192(sp)
  ADD s0, t4, zero
  # implict jump to bb72
bb72:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 196(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb38
bb73:
  ADDI s0, zero, 1
  JAL zero, bb72
bb74:
  ADDI s8, zero, 1
  JAL zero, bb40
bb75:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 156(sp)
  # implict jump to bb76
bb76:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t4, 144(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb114
  # implict jump to bb77
bb77:
  ADDI s5, zero, 57
  LW t4, 144(sp)
  SLT s6, s5, t4
  ADD s5, s6, zero
  # implict jump to bb78
bb78:
  ADD s6, s5, zero
  BNE s6, zero, bb110
  # implict jump to bb79
bb79:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  # implict jump to bb80
bb80:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 132(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb109
  # implict jump to bb81
bb81:
  ADD s10, zero, zero
  # implict jump to bb82
bb82:
  ADD s2, s10, zero
  BNE s2, zero, bb108
  # implict jump to bb83
bb83:
  LW t4, 148(sp)
  XOR s2, t4, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb107
  # implict jump to bb84
bb84:
  LW t4, 128(sp)
  ADD s2, t4, zero
  # implict jump to bb85
bb85:
  ADD t4, s2, zero
  SW t4, 124(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 116(sp)
  ADD t4, s2, zero
  SW t4, 120(sp)
  # implict jump to bb86
bb86:
  LW t4, 120(sp)
  ADD s2, t4, zero
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  SLTI s0, s2, 48
  BNE s0, zero, bb106
  # implict jump to bb87
bb87:
  ADDI s0, zero, 57
  SLT s6, s0, s2
  ADD s0, s6, zero
  # implict jump to bb88
bb88:
  ADD s6, s0, zero
  BNE s6, zero, bb102
  # implict jump to bb89
bb89:
  ADD s0, zero, zero
  ADD s6, s2, zero
  # implict jump to bb90
bb90:
  ADD s5, s6, zero
  ADD s8, s0, zero
  SLTI s9, s5, 48
  XORI s10, s9, 1
  BNE s10, zero, bb101
  # implict jump to bb91
bb91:
  ADD s9, zero, zero
  # implict jump to bb92
bb92:
  ADD s1, s9, zero
  BNE s1, zero, bb100
  # implict jump to bb93
bb93:
  LW t4, 112(sp)
  XOR s1, t4, zero
  SLTU s9, zero, s1
  BNE s9, zero, bb99
  # implict jump to bb94
bb94:
  ADD s1, s8, zero
  # implict jump to bb95
bb95:
  ADD s9, s1, zero
  LW t4, 124(sp)
  ADD a0, t4, zero
  CALL find
  ADD s1, a0, zero
  ADD a0, s9, zero
  CALL find
  ADD s10, a0, zero
  XOR s11, s1, s10
  SLTIU s1, s11, 1
  BNE s1, zero, bb98
  # implict jump to bb96
bb96:
  ADD s1, zero, zero
  # implict jump to bb97
bb97:
  ADD s10, s1, zero
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  ADD s3, s9, zero
  LW t4, 124(sp)
  ADD s7, t4, zero
  JAL zero, bb58
bb98:
  ADDI s1, zero, 1
  JAL zero, bb97
bb99:
  SUB s9, zero, s8
  ADD s1, s9, zero
  JAL zero, bb95
bb100:
  ADDI s1, zero, 10
  MULW s3, s8, s1
  ADDW s1, s3, s5
  ADDI s3, zero, 48
  SUBW s4, s1, s3
  CALL getch
  ADD s1, a0, zero
  ADD s0, s4, zero
  ADD s6, s1, zero
  JAL zero, bb90
bb101:
  ADDI s10, zero, 57
  SLT s1, s10, s5
  XORI s10, s1, 1
  ADD s9, s10, zero
  JAL zero, bb92
bb102:
  XORI s0, s2, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb104
bb104:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 116(sp)
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb86
bb105:
  ADDI s0, zero, 1
  JAL zero, bb104
bb106:
  ADDI s0, zero, 1
  JAL zero, bb88
bb107:
  LW t4, 128(sp)
  SUB s10, zero, t4
  ADD s2, s10, zero
  JAL zero, bb85
bb108:
  ADDI s0, zero, 10
  LW t4, 128(sp)
  MULW s1, t4, s0
  LW t4, 132(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 136(sp)
  ADD t4, s0, zero
  SW t4, 140(sp)
  JAL zero, bb80
bb109:
  ADDI s11, zero, 57
  LW t4, 132(sp)
  SLT s2, s11, t4
  XORI s11, s2, 1
  ADD s10, s11, zero
  JAL zero, bb82
bb110:
  LW t4, 144(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb113
  # implict jump to bb111
bb111:
  LW t4, 148(sp)
  ADD s0, t4, zero
  # implict jump to bb112
bb112:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 156(sp)
  JAL zero, bb76
bb113:
  ADDI s0, zero, 1
  JAL zero, bb112
bb114:
  ADDI s5, zero, 1
  JAL zero, bb78
bb115:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb33
bb116:
  XORI s5, s0, 85
  SLTU s11, zero, s5
  ADD s4, s11, zero
  JAL zero, bb35
bb117:
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  LA s1, fa
  ADD s2, s1, s0
  LW t4, 68(sp)
  SW t4, 0(s2)
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb28
bb118:
  LW t4, 60(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb27
bb119:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s1, t4, s0
  LW t4, 0(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb22
bb120:
  ADDI s5, zero, 57
  LW t4, 0(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  ADD s4, s5, zero
  JAL zero, bb24
bb121:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb124
  # implict jump to bb122
bb122:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb123
bb123:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb18
bb124:
  ADDI s0, zero, 1
  JAL zero, bb123
bb125:
  ADDI s2, zero, 1
  JAL zero, bb20
bb126:
  LW t4, 28(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb17
bb127:
  ADDI s0, zero, 10
  LW t4, 28(sp)
  MULW s1, t4, s0
  LW t4, 24(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb12
bb128:
  ADDI s9, zero, 57
  LW t4, 24(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb14
bb129:
  LW t4, 12(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb132
  # implict jump to bb130
bb130:
  LW t4, 8(sp)
  ADD s0, t4, zero
  # implict jump to bb131
bb131:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb8
bb132:
  ADDI s0, zero, 1
  JAL zero, bb131
bb133:
  ADDI s4, zero, 1
  JAL zero, bb10
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
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
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb136:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  SD s10, 88(sp)
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
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb140
bb140:
  ADD s5, s4, zero
  BNE s5, zero, bb150
  # implict jump to bb141
bb141:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb142
bb142:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb149
  # implict jump to bb143
bb143:
  ADD s8, zero, zero
  # implict jump to bb144
bb144:
  ADD s9, s8, zero
  BNE s9, zero, bb148
  # implict jump to bb145
bb145:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb147
  # implict jump to bb146
bb146:
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb147:
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb148:
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb142
bb149:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb144
bb150:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:
  ADD s0, s3, zero
  # implict jump to bb152
bb152:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb138
bb153:
  ADDI s0, zero, 1
  JAL zero, bb152
bb154:
  ADDI s4, zero, 1
  JAL zero, bb140
