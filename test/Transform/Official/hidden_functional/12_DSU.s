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
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, n
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s1, zero, 1
  # implict jump to bb6
bb6:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, fa
  ADD s3, s4, s3
  SW s2, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb7
bb7:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb8
  JAL zero, bb4
bb8:
  ADD s1, s0, zero
  JAL zero, bb6
main:
  ADDI sp, sp, -320
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s5, 256(sp)
  SD s6, 264(sp)
  SD s7, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  SD s11, 296(sp)
  SD s10, 304(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s5, zero
  SW t4, 188(sp)
  # implict jump to bb10
bb10:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 128(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb139
  # implict jump to bb11
bb11:
  ADDI s9, zero, 57
  LW t4, 128(sp)
  SLT s9, s9, t4
  # implict jump to bb12
bb12:
  BNE s9, zero, bb135
  # implict jump to bb13
bb13:
  ADD t4, zero, zero
  SW t4, 4(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb14
bb14:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb134
  # implict jump to bb15
bb15:
  ADD s6, zero, zero
  # implict jump to bb16
bb16:
  BNE s6, zero, bb133
  # implict jump to bb17
bb17:
  LW t4, 196(sp)
  BNE t4, zero, bb132
  # implict jump to bb18
bb18:
  LW t4, 12(sp)
  ADD s6, t4, zero
  # implict jump to bb19
bb19:
  LA s8, n
  SW s6, 0(s8)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, s6, zero
  SW t4, 16(sp)
  # implict jump to bb20
bb20:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb131
  # implict jump to bb21
bb21:
  ADDI s9, zero, 57
  LW t4, 28(sp)
  SLT s9, s9, t4
  # implict jump to bb22
bb22:
  BNE s9, zero, bb127
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 36(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb24
bb24:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 40(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb126
  # implict jump to bb25
bb25:
  ADD s8, zero, zero
  # implict jump to bb26
bb26:
  BNE s8, zero, bb125
  # implict jump to bb27
bb27:
  LW t4, 24(sp)
  BNE t4, zero, bb124
  # implict jump to bb28
bb28:
  LW t4, 44(sp)
  ADD s8, t4, zero
  # implict jump to bb29
bb29:
  LA s10, m
  SW s8, 0(s10)
  LA s8, n
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb120
  # implict jump to bb30
bb30:
  LA s7, m
  LW s7, 0(s7)
  BNE s7, zero, bb32
  # implict jump to bb31
bb31:
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s5, 256(sp)
  LD s6, 264(sp)
  LD s7, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  LD s11, 296(sp)
  LD s10, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb32:
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb33
bb33:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, s5, zero
  SW t4, 72(sp)
  # implict jump to bb34
bb34:
  LW t4, 72(sp)
  ADD s6, t4, zero
  XORI s8, s6, 81
  BNE s8, zero, bb119
  # implict jump to bb35
bb35:
  ADD s8, zero, zero
  # implict jump to bb36
bb36:
  BNE s8, zero, bb118
  # implict jump to bb37
bb37:
  XORI s4, s6, 81
  SLTIU s4, s4, 1
  BNE s4, zero, bb78
  # implict jump to bb38
bb38:
  CALL getch
  ADD s4, a0, zero
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, s4, zero
  SW t4, 108(sp)
  # implict jump to bb39
bb39:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 120(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb77
  # implict jump to bb40
bb40:
  ADDI s9, zero, 57
  LW t4, 120(sp)
  SLT s9, s9, t4
  # implict jump to bb41
bb41:
  BNE s9, zero, bb73
  # implict jump to bb42
bb42:
  ADD t4, zero, zero
  SW t4, 184(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  # implict jump to bb43
bb43:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 180(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb72
  # implict jump to bb44
bb44:
  ADD s10, zero, zero
  # implict jump to bb45
bb45:
  BNE s10, zero, bb71
  # implict jump to bb46
bb46:
  LW t4, 116(sp)
  BNE t4, zero, bb70
  # implict jump to bb47
bb47:
  LW t4, 176(sp)
  ADD s3, t4, zero
  # implict jump to bb48
bb48:
  ADD a0, s3, zero
  CALL find
  ADD s3, a0, zero
  CALL getch
  ADD s10, a0, zero
  ADD s7, zero, zero
  # implict jump to bb49
bb49:
  ADD s1, s10, zero
  ADD s4, s7, zero
  SLTI s6, s1, 48
  BNE s6, zero, bb69
  # implict jump to bb50
bb50:
  ADDI s6, zero, 57
  SLT s6, s6, s1
  # implict jump to bb51
bb51:
  BNE s6, zero, bb65
  # implict jump to bb52
bb52:
  ADD s6, zero, zero
  ADD s5, s1, zero
  # implict jump to bb53
bb53:
  ADD s8, s5, zero
  ADD s2, s6, zero
  SLTI s9, s8, 48
  XORI s9, s9, 1
  BNE s9, zero, bb64
  # implict jump to bb54
bb54:
  ADD s9, zero, zero
  # implict jump to bb55
bb55:
  BNE s9, zero, bb63
  # implict jump to bb56
bb56:
  BNE s4, zero, bb62
  # implict jump to bb57
bb57:
  ADD s9, s2, zero
  # implict jump to bb58
bb58:
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  SLLIW s11, s3, 2
  LA s0, fa
  ADD s0, s0, s11
  SW s9, 0(s0)
  ADD t4, s9, zero
  SW t4, 172(sp)
  ADD t4, s3, zero
  SW t4, 168(sp)
  LW t4, 0(sp)
  ADD s11, t4, zero
  LW t4, 68(sp)
  ADD s0, t4, zero
  # implict jump to bb59
bb59:
  ADD t4, s0, zero
  SW t4, 104(sp)
  ADD t4, s11, zero
  SW t4, 96(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LA s0, m
  LW s0, 0(s0)
  ADDI s8, zero, 1
  SUBW s0, s0, s8
  LA s8, m
  SW s0, 0(s8)
  # implict jump to bb60
bb60:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb61
  JAL zero, bb31
bb61:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb33
bb62:
  SUB s11, zero, s2
  ADD s9, s11, zero
  JAL zero, bb58
bb63:
  ADDI s9, zero, 10
  MULW s2, s2, s9
  ADDW s2, s2, s8
  ADDI s8, zero, 48
  SUBW s2, s2, s8
  CALL getch
  ADD s8, a0, zero
  ADD s6, s2, zero
  ADD s5, s8, zero
  JAL zero, bb53
bb64:
  ADDI s11, zero, 57
  SLT s11, s11, s8
  XORI s11, s11, 1
  ADD s9, s11, zero
  JAL zero, bb55
bb65:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb66
bb66:
  ADD s1, s4, zero
  # implict jump to bb67
bb67:
  CALL getch
  ADD s2, a0, zero
  ADD s7, s1, zero
  ADD s10, s2, zero
  JAL zero, bb49
bb68:
  ADDI s1, zero, 1
  JAL zero, bb67
bb69:
  ADDI s6, zero, 1
  JAL zero, bb51
bb70:
  LW t4, 176(sp)
  SUB s10, zero, t4
  ADD s3, s10, zero
  JAL zero, bb48
bb71:
  ADDI s1, zero, 10
  LW t4, 176(sp)
  MULW s1, t4, s1
  LW t4, 180(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 184(sp)
  ADD t4, s2, zero
  SW t4, 124(sp)
  JAL zero, bb43
bb72:
  ADDI s3, zero, 57
  LW t4, 180(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s10, s3, zero
  JAL zero, bb45
bb73:
  LW t4, 120(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb76
  # implict jump to bb74
bb74:
  LW t4, 116(sp)
  ADD s1, t4, zero
  # implict jump to bb75
bb75:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, s2, zero
  SW t4, 108(sp)
  JAL zero, bb39
bb76:
  ADDI s1, zero, 1
  JAL zero, bb75
bb77:
  ADDI s9, zero, 1
  JAL zero, bb41
bb78:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  # implict jump to bb79
bb79:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 156(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb117
  # implict jump to bb80
bb80:
  ADDI s5, zero, 57
  LW t4, 156(sp)
  SLT s5, s5, t4
  # implict jump to bb81
bb81:
  BNE s5, zero, bb113
  # implict jump to bb82
bb82:
  ADD t4, zero, zero
  SW t4, 148(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  # implict jump to bb83
bb83:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 144(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb112
  # implict jump to bb84
bb84:
  ADD s9, zero, zero
  # implict jump to bb85
bb85:
  BNE s9, zero, bb111
  # implict jump to bb86
bb86:
  LW t4, 160(sp)
  BNE t4, zero, bb110
  # implict jump to bb87
bb87:
  LW t4, 140(sp)
  ADD s9, t4, zero
  # implict jump to bb88
bb88:
  ADD t4, s9, zero
  SW t4, 136(sp)
  CALL getch
  ADD s10, a0, zero
  ADD s1, zero, zero
  ADD t4, s10, zero
  SW t4, 132(sp)
  # implict jump to bb89
bb89:
  LW t4, 132(sp)
  ADD s2, t4, zero
  ADD s4, s1, zero
  SLTI s3, s2, 48
  BNE s3, zero, bb109
  # implict jump to bb90
bb90:
  ADDI s3, zero, 57
  SLT s3, s3, s2
  # implict jump to bb91
bb91:
  BNE s3, zero, bb105
  # implict jump to bb92
bb92:
  ADD s3, zero, zero
  ADD s6, s2, zero
  # implict jump to bb93
bb93:
  ADD s5, s6, zero
  ADD s7, s3, zero
  SLTI s8, s5, 48
  XORI s8, s8, 1
  BNE s8, zero, bb104
  # implict jump to bb94
bb94:
  ADD s8, zero, zero
  # implict jump to bb95
bb95:
  BNE s8, zero, bb103
  # implict jump to bb96
bb96:
  BNE s4, zero, bb102
  # implict jump to bb97
bb97:
  ADD s8, s7, zero
  # implict jump to bb98
bb98:
  LW t4, 136(sp)
  ADD a0, t4, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL find
  ADD s10, a0, zero
  XOR s9, s9, s10
  SLTIU s9, s9, 1
  BNE s9, zero, bb101
  # implict jump to bb99
bb99:
  ADD s9, zero, zero
  # implict jump to bb100
bb100:
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  ADD s11, s8, zero
  LW t4, 136(sp)
  ADD s0, t4, zero
  JAL zero, bb59
bb101:
  ADDI s9, zero, 1
  JAL zero, bb100
bb102:
  SUB s9, zero, s7
  ADD s8, s9, zero
  JAL zero, bb98
bb103:
  ADDI s0, zero, 10
  MULW s0, s7, s0
  ADDW s0, s0, s5
  ADDI s5, zero, 48
  SUBW s0, s0, s5
  CALL getch
  ADD s5, a0, zero
  ADD s3, s0, zero
  ADD s6, s5, zero
  JAL zero, bb93
bb104:
  ADDI s9, zero, 57
  SLT s9, s9, s5
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb95
bb105:
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb108
  # implict jump to bb106
bb106:
  ADD s0, s4, zero
  # implict jump to bb107
bb107:
  CALL getch
  ADD s2, a0, zero
  ADD s1, s0, zero
  ADD t4, s2, zero
  SW t4, 132(sp)
  JAL zero, bb89
bb108:
  ADDI s0, zero, 1
  JAL zero, bb107
bb109:
  ADDI s3, zero, 1
  JAL zero, bb91
bb110:
  LW t4, 140(sp)
  SUB s10, zero, t4
  ADD s9, s10, zero
  JAL zero, bb88
bb111:
  ADDI s0, zero, 10
  LW t4, 140(sp)
  MULW s0, t4, s0
  LW t4, 144(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  JAL zero, bb83
bb112:
  ADDI s10, zero, 57
  LW t4, 144(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb85
bb113:
  LW t4, 156(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb116
  # implict jump to bb114
bb114:
  LW t4, 160(sp)
  ADD s0, t4, zero
  # implict jump to bb115
bb115:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  JAL zero, bb79
bb116:
  ADDI s0, zero, 1
  JAL zero, bb115
bb117:
  ADDI s5, zero, 1
  JAL zero, bb81
bb118:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb34
bb119:
  XORI s4, s6, 85
  SLTU s4, zero, s4
  ADD s8, s4, zero
  JAL zero, bb36
bb120:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb121
bb121:
  LW t4, 48(sp)
  ADD s10, t4, zero
  SLLIW s7, s10, 2
  LA s11, fa
  ADD s7, s11, s7
  SW s10, 0(s7)
  ADDIW t4, s10, 1
  SW t4, 52(sp)
  # implict jump to bb122
bb122:
  LA s7, n
  LW s7, 0(s7)
  LW t4, 52(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb123
  JAL zero, bb30
bb123:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb121
bb124:
  LW t4, 44(sp)
  SUB s10, zero, t4
  ADD s8, s10, zero
  JAL zero, bb29
bb125:
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
  JAL zero, bb24
bb126:
  ADDI s10, zero, 57
  LW t4, 40(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s8, s10, zero
  JAL zero, bb26
bb127:
  LW t4, 28(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 24(sp)
  ADD s0, t4, zero
  # implict jump to bb129
bb129:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  JAL zero, bb20
bb130:
  ADDI s0, zero, 1
  JAL zero, bb129
bb131:
  ADDI s9, zero, 1
  JAL zero, bb22
bb132:
  LW t4, 12(sp)
  SUB s8, zero, t4
  ADD s6, s8, zero
  JAL zero, bb19
bb133:
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
  JAL zero, bb14
bb134:
  ADDI s8, zero, 57
  LW t4, 8(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s6, s8, zero
  JAL zero, bb16
bb135:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:
  LW t4, 196(sp)
  ADD s0, t4, zero
  # implict jump to bb137
bb137:
  CALL getch
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, a0, zero
  SW t4, 188(sp)
  JAL zero, bb10
bb138:
  ADDI s0, zero, 1
  JAL zero, bb137
bb139:
  ADDI s9, zero, 1
  JAL zero, bb12
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
  XOR s2, s2, s0
  SLTIU s2, s2, 1
  BNE s2, zero, bb142
  # implict jump to bb141
bb141:
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
bb142:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
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
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb144
bb144:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb160
  # implict jump to bb145
bb145:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb146
bb146:
  BNE s4, zero, bb156
  # implict jump to bb147
bb147:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb148
bb148:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb155
  # implict jump to bb149
bb149:
  ADD s8, zero, zero
  # implict jump to bb150
bb150:
  BNE s8, zero, bb154
  # implict jump to bb151
bb151:
  BNE s3, zero, bb153
  # implict jump to bb152
bb152:
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
bb153:
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
bb154:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb148
bb155:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb150
bb156:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb159
  # implict jump to bb157
bb157:
  ADD s2, s3, zero
  # implict jump to bb158
bb158:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb144
bb159:
  ADDI s2, zero, 1
  JAL zero, bb158
bb160:
  ADDI s4, zero, 1
  JAL zero, bb146
