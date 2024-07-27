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
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, fa
  ADD s3, s4, s3
  SW s2, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb8
bb8:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb9
  JAL zero, bb4
bb9:
  ADD s1, s0, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -320
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s10, 256(sp)
  SD s9, 264(sp)
  SD s6, 272(sp)
  SD s8, 280(sp)
  SD s5, 288(sp)
  SD s7, 296(sp)
  SD s11, 304(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, zero, zero
  SW t4, 116(sp)
  ADD t4, s5, zero
  SW t4, 168(sp)
  # implict jump to bb11
bb11:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 4(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb142
  # implict jump to bb12
bb12:
  ADDI s9, zero, 57
  LW t4, 4(sp)
  SLT s9, s9, t4
  # implict jump to bb13
bb13:
  BNE s9, zero, bb138
  # implict jump to bb14
bb14:
  ADD t4, zero, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  # implict jump to bb15
bb15:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 16(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb137
  # implict jump to bb16
bb16:
  ADD s6, zero, zero
  # implict jump to bb17
bb17:
  BNE s6, zero, bb136
  # implict jump to bb18
bb18:
  LW t4, 60(sp)
  BNE t4, zero, bb135
  # implict jump to bb19
bb19:
  LW t4, 20(sp)
  ADD s6, t4, zero
  # implict jump to bb20
bb20:
  LA s8, n
  SW s6, 0(s8)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, s6, zero
  SW t4, 24(sp)
  # implict jump to bb21
bb21:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 36(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb134
  # implict jump to bb22
bb22:
  ADDI s9, zero, 57
  LW t4, 36(sp)
  SLT s9, s9, t4
  # implict jump to bb23
bb23:
  BNE s9, zero, bb130
  # implict jump to bb24
bb24:
  ADD t4, zero, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  # implict jump to bb25
bb25:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 48(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb129
  # implict jump to bb26
bb26:
  ADD s8, zero, zero
  # implict jump to bb27
bb27:
  BNE s8, zero, bb128
  # implict jump to bb28
bb28:
  LW t4, 32(sp)
  BNE t4, zero, bb127
  # implict jump to bb29
bb29:
  LW t4, 52(sp)
  ADD s8, t4, zero
  # implict jump to bb30
bb30:
  LA s10, m
  SW s8, 0(s10)
  LA s8, n
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb122
  # implict jump to bb31
bb31:
  LA s7, m
  LW s7, 0(s7)
  BNE s7, zero, bb33
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s10, 256(sp)
  LD s9, 264(sp)
  LD s6, 272(sp)
  LD s8, 280(sp)
  LD s5, 288(sp)
  LD s7, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb33:
  # implict jump to bb34
bb34:
  ADD t4, zero, zero
  SW t4, 108(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb35
bb35:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  CALL getch
  ADD s5, a0, zero
  ADD t4, s5, zero
  SW t4, 80(sp)
  # implict jump to bb36
bb36:
  LW t4, 80(sp)
  ADD s6, t4, zero
  XORI s8, s6, 81
  BNE s8, zero, bb121
  # implict jump to bb37
bb37:
  ADD s8, zero, zero
  # implict jump to bb38
bb38:
  BNE s8, zero, bb120
  # implict jump to bb39
bb39:
  XORI s0, s6, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb80
  # implict jump to bb40
bb40:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, s0, zero
  SW t4, 172(sp)
  # implict jump to bb41
bb41:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 184(sp)
  SLTI s9, t4, 48
  BNE s9, zero, bb79
  # implict jump to bb42
bb42:
  ADDI s9, zero, 57
  LW t4, 184(sp)
  SLT s9, s9, t4
  # implict jump to bb43
bb43:
  BNE s9, zero, bb75
  # implict jump to bb44
bb44:
  ADD t4, zero, zero
  SW t4, 192(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  # implict jump to bb45
bb45:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t4, 196(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb74
  # implict jump to bb46
bb46:
  ADD s10, zero, zero
  # implict jump to bb47
bb47:
  BNE s10, zero, bb73
  # implict jump to bb48
bb48:
  LW t4, 180(sp)
  BNE t4, zero, bb72
  # implict jump to bb49
bb49:
  LW t4, 164(sp)
  ADD s4, t4, zero
  # implict jump to bb50
bb50:
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  CALL getch
  ADD s10, a0, zero
  ADD s7, zero, zero
  # implict jump to bb51
bb51:
  ADD s2, s10, zero
  ADD s0, s7, zero
  SLTI s6, s2, 48
  BNE s6, zero, bb71
  # implict jump to bb52
bb52:
  ADDI s6, zero, 57
  SLT s6, s6, s2
  # implict jump to bb53
bb53:
  BNE s6, zero, bb67
  # implict jump to bb54
bb54:
  ADD s6, zero, zero
  ADD s5, s2, zero
  # implict jump to bb55
bb55:
  ADD s8, s5, zero
  ADD s1, s6, zero
  SLTI s9, s8, 48
  XORI s9, s9, 1
  BNE s9, zero, bb66
  # implict jump to bb56
bb56:
  ADD s9, zero, zero
  # implict jump to bb57
bb57:
  BNE s9, zero, bb65
  # implict jump to bb58
bb58:
  BNE s0, zero, bb64
  # implict jump to bb59
bb59:
  ADD s9, s1, zero
  # implict jump to bb60
bb60:
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  SLLIW s11, s4, 2
  LA s3, fa
  ADD s3, s3, s11
  SW s9, 0(s3)
  ADD t4, s9, zero
  SW t4, 200(sp)
  ADD t4, s4, zero
  SW t4, 160(sp)
  LW t4, 72(sp)
  ADD s11, t4, zero
  LW t4, 76(sp)
  ADD s3, t4, zero
  # implict jump to bb61
bb61:
  ADD t4, s3, zero
  SW t4, 112(sp)
  ADD t4, s11, zero
  SW t4, 104(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LA s3, m
  LW s3, 0(s3)
  ADDI s8, zero, 1
  SUBW s3, s3, s8
  LA s8, m
  SW s3, 0(s8)
  # implict jump to bb62
bb62:
  LA s3, m
  LW s3, 0(s3)
  BNE s3, zero, bb63
  JAL zero, bb32
bb63:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb35
bb64:
  SUB s11, zero, s1
  ADD s9, s11, zero
  JAL zero, bb60
bb65:
  ADDI s9, zero, 10
  MULW s1, s1, s9
  ADDW s1, s1, s8
  ADDI s8, zero, 48
  SUBW s1, s1, s8
  CALL getch
  ADD s8, a0, zero
  ADD s6, s1, zero
  ADD s5, s8, zero
  JAL zero, bb55
bb66:
  ADDI s11, zero, 57
  SLT s11, s11, s8
  XORI s11, s11, 1
  ADD s9, s11, zero
  JAL zero, bb57
bb67:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb70
  # implict jump to bb68
bb68:
  # implict jump to bb69
bb69:
  CALL getch
  ADD s1, a0, zero
  ADD s7, s0, zero
  ADD s10, s1, zero
  JAL zero, bb51
bb70:
  ADDI s0, zero, 1
  JAL zero, bb69
bb71:
  ADDI s6, zero, 1
  JAL zero, bb53
bb72:
  LW t4, 164(sp)
  SUB s10, zero, t4
  ADD s4, s10, zero
  JAL zero, bb50
bb73:
  ADDI s0, zero, 10
  LW t4, 164(sp)
  MULW s0, t4, s0
  LW t4, 196(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s1, zero
  SW t4, 188(sp)
  JAL zero, bb45
bb74:
  ADDI s4, zero, 57
  LW t4, 196(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s10, s4, zero
  JAL zero, bb47
bb75:
  LW t4, 184(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb78
  # implict jump to bb76
bb76:
  LW t4, 180(sp)
  ADD s0, t4, zero
  # implict jump to bb77
bb77:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 172(sp)
  JAL zero, bb41
bb78:
  ADDI s0, zero, 1
  JAL zero, bb77
bb79:
  ADDI s9, zero, 1
  JAL zero, bb43
bb80:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 156(sp)
  # implict jump to bb81
bb81:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t4, 144(sp)
  SLTI s5, t4, 48
  BNE s5, zero, bb119
  # implict jump to bb82
bb82:
  ADDI s5, zero, 57
  LW t4, 144(sp)
  SLT s5, s5, t4
  # implict jump to bb83
bb83:
  BNE s5, zero, bb115
  # implict jump to bb84
bb84:
  ADD t4, zero, zero
  SW t4, 136(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  # implict jump to bb85
bb85:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 132(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb114
  # implict jump to bb86
bb86:
  ADD s9, zero, zero
  # implict jump to bb87
bb87:
  BNE s9, zero, bb113
  # implict jump to bb88
bb88:
  LW t4, 148(sp)
  BNE t4, zero, bb112
  # implict jump to bb89
bb89:
  LW t4, 128(sp)
  ADD s9, t4, zero
  # implict jump to bb90
bb90:
  ADD t4, s9, zero
  SW t4, 124(sp)
  CALL getch
  ADD s10, a0, zero
  ADD s0, zero, zero
  ADD t4, s10, zero
  SW t4, 120(sp)
  # implict jump to bb91
bb91:
  LW t4, 120(sp)
  ADD s1, t4, zero
  ADD s4, s0, zero
  SLTI s2, s1, 48
  BNE s2, zero, bb111
  # implict jump to bb92
bb92:
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb93
bb93:
  BNE s2, zero, bb107
  # implict jump to bb94
bb94:
  ADD s2, zero, zero
  ADD s6, s1, zero
  # implict jump to bb95
bb95:
  ADD s5, s6, zero
  ADD s7, s2, zero
  SLTI s8, s5, 48
  XORI s8, s8, 1
  BNE s8, zero, bb106
  # implict jump to bb96
bb96:
  ADD s8, zero, zero
  # implict jump to bb97
bb97:
  BNE s8, zero, bb105
  # implict jump to bb98
bb98:
  BNE s4, zero, bb104
  # implict jump to bb99
bb99:
  ADD s8, s7, zero
  # implict jump to bb100
bb100:
  LW t4, 124(sp)
  ADD a0, t4, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL find
  ADD s10, a0, zero
  XOR s9, s9, s10
  SLTIU s9, s9, 1
  BNE s9, zero, bb103
  # implict jump to bb101
bb101:
  ADD s9, zero, zero
  # implict jump to bb102
bb102:
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  ADD s11, s8, zero
  LW t4, 124(sp)
  ADD s3, t4, zero
  JAL zero, bb61
bb103:
  ADDI s9, zero, 1
  JAL zero, bb102
bb104:
  SUB s9, zero, s7
  ADD s8, s9, zero
  JAL zero, bb100
bb105:
  ADDI s3, zero, 10
  MULW s3, s7, s3
  ADDW s3, s3, s5
  ADDI s5, zero, 48
  SUBW s3, s3, s5
  CALL getch
  ADD s5, a0, zero
  ADD s2, s3, zero
  ADD s6, s5, zero
  JAL zero, bb95
bb106:
  ADDI s9, zero, 57
  SLT s9, s9, s5
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb97
bb107:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb110
  # implict jump to bb108
bb108:
  ADD s1, s4, zero
  # implict jump to bb109
bb109:
  CALL getch
  ADD s2, a0, zero
  ADD s0, s1, zero
  ADD t4, s2, zero
  SW t4, 120(sp)
  JAL zero, bb91
bb110:
  ADDI s1, zero, 1
  JAL zero, bb109
bb111:
  ADDI s2, zero, 1
  JAL zero, bb93
bb112:
  LW t4, 128(sp)
  SUB s10, zero, t4
  ADD s9, s10, zero
  JAL zero, bb90
bb113:
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
  JAL zero, bb85
bb114:
  ADDI s10, zero, 57
  LW t4, 132(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb87
bb115:
  LW t4, 144(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb118
  # implict jump to bb116
bb116:
  LW t4, 148(sp)
  ADD s0, t4, zero
  # implict jump to bb117
bb117:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 152(sp)
  ADD t4, s1, zero
  SW t4, 156(sp)
  JAL zero, bb81
bb118:
  ADDI s0, zero, 1
  JAL zero, bb117
bb119:
  ADDI s5, zero, 1
  JAL zero, bb83
bb120:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb36
bb121:
  XORI s0, s6, 85
  SLTU s0, zero, s0
  ADD s8, s0, zero
  JAL zero, bb38
bb122:
  ADDI s8, zero, 1
  # implict jump to bb123
bb123:
  ADD t4, s8, zero
  SW t4, 56(sp)
  # implict jump to bb124
bb124:
  LW t4, 56(sp)
  ADD s10, t4, zero
  SLLIW s7, s10, 2
  LA s11, fa
  ADD s7, s11, s7
  SW s10, 0(s7)
  ADDIW t4, s10, 1
  SW t4, 0(sp)
  # implict jump to bb125
bb125:
  LA s7, n
  LW s7, 0(s7)
  LW t4, 0(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb126
  JAL zero, bb31
bb126:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb124
bb127:
  LW t4, 52(sp)
  SUB s10, zero, t4
  ADD s8, s10, zero
  JAL zero, bb30
bb128:
  ADDI s0, zero, 10
  LW t4, 52(sp)
  MULW s0, t4, s0
  LW t4, 48(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 44(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  JAL zero, bb25
bb129:
  ADDI s10, zero, 57
  LW t4, 48(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s8, s10, zero
  JAL zero, bb27
bb130:
  LW t4, 36(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb133
  # implict jump to bb131
bb131:
  LW t4, 32(sp)
  ADD s0, t4, zero
  # implict jump to bb132
bb132:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 28(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb21
bb133:
  ADDI s0, zero, 1
  JAL zero, bb132
bb134:
  ADDI s9, zero, 1
  JAL zero, bb23
bb135:
  LW t4, 20(sp)
  SUB s8, zero, t4
  ADD s6, s8, zero
  JAL zero, bb20
bb136:
  ADDI s0, zero, 10
  LW t4, 20(sp)
  MULW s0, t4, s0
  LW t4, 16(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb15
bb137:
  ADDI s8, zero, 57
  LW t4, 16(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s6, s8, zero
  JAL zero, bb17
bb138:
  LW t4, 4(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 60(sp)
  ADD s0, t4, zero
  # implict jump to bb140
bb140:
  CALL getch
  ADD t4, s0, zero
  SW t4, 116(sp)
  ADD t4, a0, zero
  SW t4, 168(sp)
  JAL zero, bb11
bb141:
  ADDI s0, zero, 1
  JAL zero, bb140
bb142:
  ADDI s9, zero, 1
  JAL zero, bb13
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
  BNE s2, zero, bb145
  # implict jump to bb144
bb144:
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
bb145:
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
  # implict jump to bb147
bb147:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb163
  # implict jump to bb148
bb148:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb149
bb149:
  BNE s4, zero, bb159
  # implict jump to bb150
bb150:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb151
bb151:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb158
  # implict jump to bb152
bb152:
  ADD s8, zero, zero
  # implict jump to bb153
bb153:
  BNE s8, zero, bb157
  # implict jump to bb154
bb154:
  BNE s3, zero, bb156
  # implict jump to bb155
bb155:
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
bb156:
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
bb157:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb151
bb158:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb153
bb159:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb162
  # implict jump to bb160
bb160:
  ADD s2, s3, zero
  # implict jump to bb161
bb161:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb147
bb162:
  ADDI s2, zero, 1
  JAL zero, bb161
bb163:
  ADDI s4, zero, 1
  JAL zero, bb149
