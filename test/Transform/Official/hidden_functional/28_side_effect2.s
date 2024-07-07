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
  ADDI sp, sp, -352
  SD ra, 240(sp)
  SD s1, 248(sp)
  SD s11, 256(sp)
  SD s10, 264(sp)
  SD s0, 272(sp)
  SD s5, 280(sp)
  SD s2, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  SD s3, 312(sp)
  SD s4, 320(sp)
  SD s6, 328(sp)
  SD s9, 336(sp)
  ADD s0, zero, zero
  JAL zero, bb15
bb15:
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb16
  JAL zero, bb17
bb16:
  ADD a0, zero, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb18
  JAL zero, bb19
bb17:
  ADD s0, zero, zero
  JAL zero, bb77
bb18:
  ADDI a0, zero, 1
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD t4, s2, zero
  SB t4, 8(sp)
  JAL zero, bb20
bb19:
  ADD t4, zero, zero
  SB t4, 8(sp)
  JAL zero, bb20
bb20:
  LB t4, 8(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a0, zero, 2
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  ADD t4, s2, zero
  SB t4, 16(sp)
  JAL zero, bb23
bb22:
  ADD t4, zero, zero
  SB t4, 16(sp)
  JAL zero, bb23
bb23:
  LB t4, 16(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb24
  JAL zero, bb25
bb24:
  ADDI a0, zero, 3
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s5, s2, zero
  SLTU s2, zero, s5
  ADD t4, s2, zero
  SB t4, 24(sp)
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  SB t4, 24(sp)
  JAL zero, bb26
bb26:
  LB t4, 24(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb27
  JAL zero, bb28
bb27:
  ADDI a0, zero, 4
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s6, s2, zero
  SLTU s2, zero, s6
  ADD t4, s2, zero
  SB t4, 32(sp)
  JAL zero, bb29
bb28:
  ADD t4, zero, zero
  SB t4, 32(sp)
  JAL zero, bb29
bb29:
  LB t4, 32(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb30
  JAL zero, bb31
bb30:
  ADDI a0, zero, 5
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s7, s2, zero
  SLTU s2, zero, s7
  ADD t4, s2, zero
  SB t4, 40(sp)
  JAL zero, bb32
bb31:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb32
bb32:
  LB t4, 40(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb33
  JAL zero, bb34
bb33:
  ADDI a0, zero, 6
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s8, s2, zero
  SLTU s2, zero, s8
  ADD t4, s2, zero
  SB t4, 48(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb35
bb35:
  LB t4, 48(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb36
  JAL zero, bb37
bb36:
  ADDI a0, zero, 7
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s9, s2, zero
  SLTU s2, zero, s9
  ADD t4, s2, zero
  SB t4, 56(sp)
  JAL zero, bb38
bb37:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb38
bb38:
  LB t4, 56(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb39
  JAL zero, bb40
bb39:
  ADDI a0, zero, 8
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s10, s2, zero
  SLTU s2, zero, s10
  ADD t4, s2, zero
  SB t4, 64(sp)
  JAL zero, bb41
bb40:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb41
bb41:
  LB t4, 64(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb42
  JAL zero, bb43
bb42:
  ADDI a0, zero, 9
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s11, s2, zero
  SLTU s2, zero, s11
  ADD t4, s2, zero
  SB t4, 72(sp)
  JAL zero, bb44
bb43:
  ADD t4, zero, zero
  SB t4, 72(sp)
  JAL zero, bb44
bb44:
  LB t4, 72(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb45
  JAL zero, bb46
bb45:
  ADDI a0, zero, 10
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s1, s2, zero
  JAL zero, bb47
bb46:
  ADD s1, zero, zero
  JAL zero, bb47
bb47:
  ADD s2, s1, zero
  BNE s2, zero, bb48
  JAL zero, bb49
bb48:
  ADDI a0, zero, 11
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s3, s2, zero
  JAL zero, bb50
bb49:
  ADD s3, zero, zero
  JAL zero, bb50
bb50:
  ADD s2, s3, zero
  BNE s2, zero, bb51
  JAL zero, bb52
bb51:
  ADDI a0, zero, 12
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  ADD s4, s2, zero
  JAL zero, bb53
bb52:
  ADD s4, zero, zero
  JAL zero, bb53
bb53:
  ADD s2, s4, zero
  BNE s2, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a0, zero, 13
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s5, s2, zero
  SLTU s2, zero, s5
  ADD s5, s2, zero
  JAL zero, bb56
bb55:
  ADD s5, zero, zero
  JAL zero, bb56
bb56:
  ADD s2, s5, zero
  BNE s2, zero, bb57
  JAL zero, bb58
bb57:
  ADDI a0, zero, 14
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s6, s2, zero
  SLTU s2, zero, s6
  ADD s6, s2, zero
  JAL zero, bb59
bb58:
  ADD s6, zero, zero
  JAL zero, bb59
bb59:
  ADD s2, s6, zero
  BNE s2, zero, bb60
  JAL zero, bb61
bb60:
  ADDI a0, zero, 15
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s7, s2, zero
  SLTU s2, zero, s7
  ADD s7, s2, zero
  JAL zero, bb62
bb61:
  ADD s7, zero, zero
  JAL zero, bb62
bb62:
  ADD s2, s7, zero
  BNE s2, zero, bb63
  JAL zero, bb64
bb63:
  ADDI a0, zero, 16
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s8, s2, zero
  SLTU s2, zero, s8
  ADD s8, s2, zero
  JAL zero, bb65
bb64:
  ADD s8, zero, zero
  JAL zero, bb65
bb65:
  ADD s2, s8, zero
  BNE s2, zero, bb66
  JAL zero, bb67
bb66:
  ADDI a0, zero, 17
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s9, s2, zero
  SLTU s2, zero, s9
  ADD s9, s2, zero
  JAL zero, bb68
bb67:
  ADD s9, zero, zero
  JAL zero, bb68
bb68:
  ADD s2, s9, zero
  BNE s2, zero, bb69
  JAL zero, bb70
bb69:
  ADDI a0, zero, 18
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s10, s2, zero
  SLTU s2, zero, s10
  ADD s10, s2, zero
  JAL zero, bb71
bb70:
  ADD s10, zero, zero
  JAL zero, bb71
bb71:
  ADD s2, s10, zero
  BNE s2, zero, bb72
  JAL zero, bb73
bb72:
  ADDI a0, zero, 19
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s11, s2, zero
  SLTU s2, zero, s11
  ADD s11, s2, zero
  JAL zero, bb74
bb73:
  ADD s11, zero, zero
  JAL zero, bb74
bb74:
  ADD s2, s11, zero
  BNE s2, zero, bb75
  JAL zero, bb76
bb75:
  JAL zero, bb76
bb76:
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  ADD s0, s2, zero
  JAL zero, bb15
bb77:
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb78
  JAL zero, bb79
bb78:
  ADD a0, zero, zero
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb80
  JAL zero, bb81
bb79:
  ADDI s0, zero, 1
  JAL zero, bb139
bb80:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb82
bb81:
  ADDI a0, zero, 1
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 88(sp)
  JAL zero, bb82
bb82:
  LB t4, 88(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb83
  JAL zero, bb84
bb83:
  ADDI t4, zero, 1
  SB t4, 96(sp)
  JAL zero, bb85
bb84:
  ADDI a0, zero, 2
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 96(sp)
  JAL zero, bb85
bb85:
  LB t4, 96(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb86
  JAL zero, bb87
bb86:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb88
bb87:
  ADDI a0, zero, 3
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 104(sp)
  JAL zero, bb88
bb88:
  LB t4, 104(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb89
  JAL zero, bb90
bb89:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb91
bb90:
  ADDI a0, zero, 4
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 112(sp)
  JAL zero, bb91
bb91:
  LB t4, 112(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb92
  JAL zero, bb93
bb92:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb94
bb93:
  ADDI a0, zero, 5
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 120(sp)
  JAL zero, bb94
bb94:
  LB t4, 120(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb95
  JAL zero, bb96
bb95:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb97
bb96:
  ADDI a0, zero, 6
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 128(sp)
  JAL zero, bb97
bb97:
  LB t4, 128(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb98
  JAL zero, bb99
bb98:
  ADDI t4, zero, 1
  SB t4, 136(sp)
  JAL zero, bb100
bb99:
  ADDI a0, zero, 7
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 136(sp)
  JAL zero, bb100
bb100:
  LB t4, 136(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb101
  JAL zero, bb102
bb101:
  ADDI t4, zero, 1
  SB t4, 144(sp)
  JAL zero, bb103
bb102:
  ADDI a0, zero, 8
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 144(sp)
  JAL zero, bb103
bb103:
  LB t4, 144(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb104
  JAL zero, bb105
bb104:
  ADDI t4, zero, 1
  SB t4, 152(sp)
  JAL zero, bb106
bb105:
  ADDI a0, zero, 9
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 152(sp)
  JAL zero, bb106
bb106:
  LB t4, 152(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb107
  JAL zero, bb108
bb107:
  ADDI s11, zero, 1
  JAL zero, bb109
bb108:
  ADDI a0, zero, 10
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s11, s0, zero
  JAL zero, bb109
bb109:
  ADD s1, s11, zero
  BNE s1, zero, bb110
  JAL zero, bb111
bb110:
  ADDI s1, zero, 1
  JAL zero, bb112
bb111:
  ADDI a0, zero, 11
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD s1, s0, zero
  JAL zero, bb112
bb112:
  ADD s2, s1, zero
  BNE s2, zero, bb113
  JAL zero, bb114
bb113:
  ADDI s2, zero, 1
  JAL zero, bb115
bb114:
  ADDI a0, zero, 12
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s2, s0, zero
  JAL zero, bb115
bb115:
  ADD s3, s2, zero
  BNE s3, zero, bb116
  JAL zero, bb117
bb116:
  ADDI s3, zero, 1
  JAL zero, bb118
bb117:
  ADDI a0, zero, 13
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s4, s0, zero
  SLTU s0, zero, s4
  ADD s3, s0, zero
  JAL zero, bb118
bb118:
  ADD s4, s3, zero
  BNE s4, zero, bb119
  JAL zero, bb120
bb119:
  ADDI s4, zero, 1
  JAL zero, bb121
bb120:
  ADDI a0, zero, 14
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s5, s0, zero
  SLTU s0, zero, s5
  ADD s4, s0, zero
  JAL zero, bb121
bb121:
  ADD s5, s4, zero
  BNE s5, zero, bb122
  JAL zero, bb123
bb122:
  ADDI s5, zero, 1
  JAL zero, bb124
bb123:
  ADDI a0, zero, 15
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s6, s0, zero
  SLTU s0, zero, s6
  ADD s5, s0, zero
  JAL zero, bb124
bb124:
  ADD s6, s5, zero
  BNE s6, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s6, zero, 1
  JAL zero, bb127
bb126:
  ADDI a0, zero, 16
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s7, s0, zero
  SLTU s0, zero, s7
  ADD s6, s0, zero
  JAL zero, bb127
bb127:
  ADD s7, s6, zero
  BNE s7, zero, bb128
  JAL zero, bb129
bb128:
  ADDI s7, zero, 1
  JAL zero, bb130
bb129:
  ADDI a0, zero, 17
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s8, s0, zero
  SLTU s0, zero, s8
  ADD s7, s0, zero
  JAL zero, bb130
bb130:
  ADD s8, s7, zero
  BNE s8, zero, bb131
  JAL zero, bb132
bb131:
  ADDI s8, zero, 1
  JAL zero, bb133
bb132:
  ADDI a0, zero, 18
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s9, s0, zero
  SLTU s0, zero, s9
  ADD s8, s0, zero
  JAL zero, bb133
bb133:
  ADD s9, s8, zero
  BNE s9, zero, bb134
  JAL zero, bb135
bb134:
  ADDI s9, zero, 1
  JAL zero, bb136
bb135:
  ADDI a0, zero, 19
  LW t4, 80(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s10, s0, zero
  SLTU s0, zero, s10
  ADD s9, s0, zero
  JAL zero, bb136
bb136:
  ADD s10, s9, zero
  BNE s10, zero, bb137
  JAL zero, bb138
bb137:
  JAL zero, bb138
bb138:
  LW t4, 80(sp)
  ADDIW s10, t4, 1
  ADD s0, s10, zero
  JAL zero, bb77
bb139:
  ADD t4, s0, zero
  SW t4, 160(sp)
  LW t4, 160(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb142
  JAL zero, bb143
bb140:
  LW t4, 160(sp)
  ADDIW s2, t4, 1
  ADD s0, s2, zero
  JAL zero, bb139
bb141:
  ADD a0, zero, zero
  CALL h
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb145
  JAL zero, bb146
bb142:
  ADDI s2, zero, 1
  LW t4, 160(sp)
  SUBW s3, t4, s2
  ADD a0, s3, zero
  LW t4, 160(sp)
  ADD a1, t4, zero
  CALL f
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD t4, s2, zero
  SB t4, 168(sp)
  JAL zero, bb144
bb143:
  ADD t4, zero, zero
  SB t4, 168(sp)
  JAL zero, bb144
bb144:
  LB t4, 168(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb140
  JAL zero, bb141
bb145:
  ADDI a0, zero, 1
  CALL h
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD t4, s0, zero
  SB t4, 176(sp)
  JAL zero, bb147
bb146:
  ADD t4, zero, zero
  SB t4, 176(sp)
  JAL zero, bb147
bb147:
  LB t4, 176(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb148
  JAL zero, bb149
bb148:
  ADDI t4, zero, 1
  SB t4, 184(sp)
  JAL zero, bb150
bb149:
  ADDI a0, zero, 2
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 184(sp)
  JAL zero, bb150
bb150:
  LB t4, 184(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb151
  JAL zero, bb152
bb151:
  ADDI t4, zero, 1
  SB t4, 192(sp)
  JAL zero, bb153
bb152:
  ADDI a0, zero, 3
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 192(sp)
  JAL zero, bb153
bb153:
  LB t4, 192(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb154
  JAL zero, bb155
bb154:
  JAL zero, bb155
bb155:
  ADDI a0, zero, 4
  CALL h
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  XORI s6, s5, 1
  ADD s5, s6, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb156
  JAL zero, bb157
bb156:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb158
bb157:
  ADDI a0, zero, 5
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb159
  JAL zero, bb160
bb158:
  LB t4, 200(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb165
  JAL zero, bb166
bb159:
  ADDI a0, zero, 6
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb161
bb160:
  ADD s1, zero, zero
  JAL zero, bb161
bb161:
  ADD s0, s1, zero
  BNE s0, zero, bb162
  JAL zero, bb163
bb162:
  ADDI a0, zero, 7
  CALL h
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD s2, s0, zero
  JAL zero, bb164
bb163:
  ADD s2, zero, zero
  JAL zero, bb164
bb164:
  ADD s0, s2, zero
  ADD t4, s0, zero
  SB t4, 200(sp)
  JAL zero, bb158
bb165:
  ADDI t4, zero, 1
  SB t4, 208(sp)
  JAL zero, bb167
bb166:
  ADDI a0, zero, 8
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 208(sp)
  JAL zero, bb167
bb167:
  LB t4, 208(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb168
  JAL zero, bb169
bb168:
  JAL zero, bb169
bb169:
  ADDI a0, zero, 9
  CALL h
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb170
  JAL zero, bb171
bb170:
  ADDI a0, zero, 10
  CALL h
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  XORI s8, s7, 1
  ADD s7, s8, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD t4, s7, zero
  SB t4, 216(sp)
  JAL zero, bb172
bb171:
  ADD t4, zero, zero
  SB t4, 216(sp)
  JAL zero, bb172
bb172:
  LB t4, 216(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb173
  JAL zero, bb174
bb173:
  ADDI t4, zero, 1
  SB t4, 224(sp)
  JAL zero, bb175
bb174:
  ADDI a0, zero, 11
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 224(sp)
  JAL zero, bb175
bb175:
  LB t4, 224(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb176
  JAL zero, bb177
bb176:
  ADDI t4, zero, 1
  SB t4, 232(sp)
  JAL zero, bb178
bb177:
  ADDI a0, zero, 12
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 232(sp)
  JAL zero, bb178
bb178:
  LB t4, 232(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb179
  JAL zero, bb180
bb179:
  ADDI s10, zero, 1
  JAL zero, bb181
bb180:
  ADDI a0, zero, 13
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s10, s0, zero
  JAL zero, bb181
bb181:
  ADD s11, s10, zero
  BNE s11, zero, bb182
  JAL zero, bb183
bb182:
  ADDI s11, zero, 1
  JAL zero, bb184
bb183:
  ADDI a0, zero, 14
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb185
  JAL zero, bb186
bb184:
  ADD s1, s11, zero
  BNE s1, zero, bb188
  JAL zero, bb189
bb185:
  ADDI a0, zero, 15
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb187
bb186:
  ADD s1, zero, zero
  JAL zero, bb187
bb187:
  ADD s0, s1, zero
  ADD s11, s0, zero
  JAL zero, bb184
bb188:
  JAL zero, bb189
bb189:
  ADD a0, zero, zero
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb190
  JAL zero, bb191
bb190:
  ADDI a0, zero, 2
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  ADD s3, s1, zero
  JAL zero, bb192
bb191:
  ADD s3, zero, zero
  JAL zero, bb192
bb192:
  ADD s1, s3, zero
  BNE s1, zero, bb193
  JAL zero, bb194
bb193:
  ADDI a0, zero, 3
  CALL h
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s2, s1, zero
  JAL zero, bb195
bb194:
  ADD s2, zero, zero
  JAL zero, bb195
bb195:
  ADD s1, s2, zero
  BNE s1, zero, bb196
  JAL zero, bb197
bb196:
  ADDI a0, zero, 4
  CALL h
  ADD s1, a0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb198
bb197:
  ADD s0, zero, zero
  JAL zero, bb198
bb198:
  ADD s1, s0, zero
  BNE s1, zero, bb199
  JAL zero, bb200
bb199:
  ADDI s1, zero, 1
  JAL zero, bb201
bb200:
  ADDI a0, zero, 5
  CALL h
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s1, s4, zero
  JAL zero, bb201
bb201:
  ADD s4, s1, zero
  BNE s4, zero, bb202
  JAL zero, bb203
bb202:
  ADDI s4, zero, 1
  JAL zero, bb204
bb203:
  ADDI a0, zero, 6
  CALL h
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb205
  JAL zero, bb206
bb204:
  ADD s5, s4, zero
  BNE s5, zero, bb208
  JAL zero, bb209
bb205:
  ADDI a0, zero, 7
  CALL h
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  XORI s6, s5, 1
  ADD s5, s6, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  ADD s6, s5, zero
  JAL zero, bb207
bb206:
  ADD s6, zero, zero
  JAL zero, bb207
bb207:
  ADD s5, s6, zero
  ADD s4, s5, zero
  JAL zero, bb204
bb208:
  ADDI s5, zero, 1
  JAL zero, bb210
bb209:
  ADDI a0, zero, 8
  CALL h
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s5, s6, zero
  JAL zero, bb210
bb210:
  ADD s6, s5, zero
  BNE s6, zero, bb211
  JAL zero, bb213
bb211:
  ADDI s6, zero, 1
  JAL zero, bb212
bb212:
  ADD s8, s6, zero
  LA s7, sum
  LW s9, 0(s7)
  ADDW s7, s9, s8
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 240(sp)
  LD s1, 248(sp)
  LD s11, 256(sp)
  LD s10, 264(sp)
  LD s0, 272(sp)
  LD s5, 280(sp)
  LD s2, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  LD s3, 312(sp)
  LD s4, 320(sp)
  LD s6, 328(sp)
  LD s9, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb213:
  ADD s6, zero, zero
  JAL zero, bb212
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
  BNE s1, zero, bb215
  JAL zero, bb216
bb215:
  ADDI s1, zero, 1
  JAL zero, bb217
bb216:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb217
bb217:
  ADD s2, s1, zero
  BNE s2, zero, bb218
  JAL zero, bb219
bb218:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb219:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb220
  JAL zero, bb221
bb220:
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
bb221:
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
