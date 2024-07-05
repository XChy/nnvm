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
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb3
bb3:
  BNE s1, zero, bb4
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
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb9
bb9:
  BNE s1, zero, bb10
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
  JAL zero, bb14
bb12:
  ADDI s2, zero, 4
  MUL s3, zero, s2
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
bb13:
bb14:
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
  SD ra, 248(sp)
  SD s0, 256(sp)
  SD s11, 264(sp)
  SD s10, 272(sp)
  SD s1, 280(sp)
  SD s6, 288(sp)
  SD s2, 296(sp)
  SD s7, 304(sp)
  SD s8, 312(sp)
  SD s3, 320(sp)
  SD s4, 328(sp)
  SD s5, 336(sp)
  SD s9, 344(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb16
bb16:
  LW t4, 0(sp)
  SLTI s1, t4, 20
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADD a0, zero, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb19
  JAL zero, bb20
bb18:
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb78
bb19:
  ADDI a0, zero, 1
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 8(sp)
  JAL zero, bb21
bb20:
  ADD t4, zero, zero
  SB t4, 8(sp)
  JAL zero, bb21
bb21:
  LB t4, 8(sp)
  BNE t4, zero, bb22
  JAL zero, bb23
bb22:
  ADDI a0, zero, 2
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb24
bb23:
  ADD t4, zero, zero
  SB t4, 16(sp)
  JAL zero, bb24
bb24:
  LB t4, 16(sp)
  BNE t4, zero, bb25
  JAL zero, bb26
bb25:
  ADDI a0, zero, 3
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s4, s1, zero
  SLTU s1, zero, s4
  ADD t4, s1, zero
  SB t4, 24(sp)
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  SB t4, 24(sp)
  JAL zero, bb27
bb27:
  LB t4, 24(sp)
  BNE t4, zero, bb28
  JAL zero, bb29
bb28:
  ADDI a0, zero, 4
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s5, s1, zero
  SLTU s1, zero, s5
  ADD t4, s1, zero
  SB t4, 32(sp)
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SB t4, 32(sp)
  JAL zero, bb30
bb30:
  LB t4, 32(sp)
  BNE t4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, 5
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s6, s1, zero
  SLTU s1, zero, s6
  ADD t4, s1, zero
  SB t4, 40(sp)
  JAL zero, bb33
bb32:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb33
bb33:
  LB t4, 40(sp)
  BNE t4, zero, bb34
  JAL zero, bb35
bb34:
  ADDI a0, zero, 6
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s7, s1, zero
  SLTU s1, zero, s7
  ADD t4, s1, zero
  SB t4, 48(sp)
  JAL zero, bb36
bb35:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb36
bb36:
  LB t4, 48(sp)
  BNE t4, zero, bb37
  JAL zero, bb38
bb37:
  ADDI a0, zero, 7
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s8, s1, zero
  SLTU s1, zero, s8
  ADD t4, s1, zero
  SB t4, 56(sp)
  JAL zero, bb39
bb38:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb39
bb39:
  LB t4, 56(sp)
  BNE t4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI a0, zero, 8
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  ADD t4, s1, zero
  SB t4, 64(sp)
  JAL zero, bb42
bb41:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb42
bb42:
  LB t4, 64(sp)
  BNE t4, zero, bb43
  JAL zero, bb44
bb43:
  ADDI a0, zero, 9
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s10, s1, zero
  SLTU s1, zero, s10
  ADD s10, s1, zero
  JAL zero, bb45
bb44:
  ADD s10, zero, zero
  JAL zero, bb45
bb45:
  BNE s10, zero, bb46
  JAL zero, bb47
bb46:
  ADDI a0, zero, 10
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s11, s1, zero
  SLTU s1, zero, s11
  ADD s11, s1, zero
  JAL zero, bb48
bb47:
  ADD s11, zero, zero
  JAL zero, bb48
bb48:
  BNE s11, zero, bb49
  JAL zero, bb50
bb49:
  ADDI a0, zero, 11
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb51
bb50:
  ADD s0, zero, zero
  JAL zero, bb51
bb51:
  BNE s0, zero, bb52
  JAL zero, bb53
bb52:
  ADDI a0, zero, 12
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s2, s1, zero
  JAL zero, bb54
bb53:
  ADD s2, zero, zero
  JAL zero, bb54
bb54:
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  ADDI a0, zero, 13
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  ADD s3, s1, zero
  JAL zero, bb57
bb56:
  ADD s3, zero, zero
  JAL zero, bb57
bb57:
  BNE s3, zero, bb58
  JAL zero, bb59
bb58:
  ADDI a0, zero, 14
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s4, s1, zero
  SLTU s1, zero, s4
  ADD s4, s1, zero
  JAL zero, bb60
bb59:
  ADD s4, zero, zero
  JAL zero, bb60
bb60:
  BNE s4, zero, bb61
  JAL zero, bb62
bb61:
  ADDI a0, zero, 15
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s5, s1, zero
  SLTU s1, zero, s5
  ADD s5, s1, zero
  JAL zero, bb63
bb62:
  ADD s5, zero, zero
  JAL zero, bb63
bb63:
  BNE s5, zero, bb64
  JAL zero, bb65
bb64:
  ADDI a0, zero, 16
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s6, s1, zero
  SLTU s1, zero, s6
  ADD s6, s1, zero
  JAL zero, bb66
bb65:
  ADD s6, zero, zero
  JAL zero, bb66
bb66:
  BNE s6, zero, bb67
  JAL zero, bb68
bb67:
  ADDI a0, zero, 17
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s7, s1, zero
  SLTU s1, zero, s7
  ADD s7, s1, zero
  JAL zero, bb69
bb68:
  ADD s7, zero, zero
  JAL zero, bb69
bb69:
  BNE s7, zero, bb70
  JAL zero, bb71
bb70:
  ADDI a0, zero, 18
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s8, s1, zero
  SLTU s1, zero, s8
  ADD s8, s1, zero
  JAL zero, bb72
bb71:
  ADD s8, zero, zero
  JAL zero, bb72
bb72:
  BNE s8, zero, bb73
  JAL zero, bb74
bb73:
  ADDI a0, zero, 19
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  ADD s9, s1, zero
  JAL zero, bb75
bb74:
  ADD s9, zero, zero
  JAL zero, bb75
bb75:
  BNE s9, zero, bb76
  JAL zero, bb77
bb76:
  JAL zero, bb77
bb77:
  LW t4, 0(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb16
bb78:
  LW t4, 72(sp)
  SLTI s1, t4, 20
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb79
  JAL zero, bb80
bb79:
  ADD a0, zero, zero
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb81
  JAL zero, bb82
bb80:
  ADDI t4, zero, 1
  SW t4, 152(sp)
  JAL zero, bb140
bb81:
  ADDI t4, zero, 1
  SB t4, 80(sp)
  JAL zero, bb83
bb82:
  ADDI a0, zero, 1
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 80(sp)
  JAL zero, bb83
bb83:
  LB t4, 80(sp)
  BNE t4, zero, bb84
  JAL zero, bb85
bb84:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb86
bb85:
  ADDI a0, zero, 2
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 88(sp)
  JAL zero, bb86
bb86:
  LB t4, 88(sp)
  BNE t4, zero, bb87
  JAL zero, bb88
bb87:
  ADDI t4, zero, 1
  SB t4, 96(sp)
  JAL zero, bb89
bb88:
  ADDI a0, zero, 3
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 96(sp)
  JAL zero, bb89
bb89:
  LB t4, 96(sp)
  BNE t4, zero, bb90
  JAL zero, bb91
bb90:
  ADDI t4, zero, 1
  SB t4, 104(sp)
  JAL zero, bb92
bb91:
  ADDI a0, zero, 4
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 104(sp)
  JAL zero, bb92
bb92:
  LB t4, 104(sp)
  BNE t4, zero, bb93
  JAL zero, bb94
bb93:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb95
bb94:
  ADDI a0, zero, 5
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 112(sp)
  JAL zero, bb95
bb95:
  LB t4, 112(sp)
  BNE t4, zero, bb96
  JAL zero, bb97
bb96:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb98
bb97:
  ADDI a0, zero, 6
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 120(sp)
  JAL zero, bb98
bb98:
  LB t4, 120(sp)
  BNE t4, zero, bb99
  JAL zero, bb100
bb99:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb101
bb100:
  ADDI a0, zero, 7
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 128(sp)
  JAL zero, bb101
bb101:
  LB t4, 128(sp)
  BNE t4, zero, bb102
  JAL zero, bb103
bb102:
  ADDI t4, zero, 1
  SB t4, 136(sp)
  JAL zero, bb104
bb103:
  ADDI a0, zero, 8
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 136(sp)
  JAL zero, bb104
bb104:
  LB t4, 136(sp)
  BNE t4, zero, bb105
  JAL zero, bb106
bb105:
  ADDI t4, zero, 1
  SB t4, 144(sp)
  JAL zero, bb107
bb106:
  ADDI a0, zero, 9
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 144(sp)
  JAL zero, bb107
bb107:
  LB t4, 144(sp)
  BNE t4, zero, bb108
  JAL zero, bb109
bb108:
  ADDI s10, zero, 1
  JAL zero, bb110
bb109:
  ADDI a0, zero, 10
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s10, s0, zero
  JAL zero, bb110
bb110:
  BNE s10, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s11, zero, 1
  JAL zero, bb113
bb112:
  ADDI a0, zero, 11
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s11, s0, zero
  JAL zero, bb113
bb113:
  BNE s11, zero, bb114
  JAL zero, bb115
bb114:
  ADDI s0, zero, 1
  JAL zero, bb116
bb115:
  ADDI a0, zero, 12
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb116
bb116:
  BNE s0, zero, bb117
  JAL zero, bb118
bb117:
  ADDI s1, zero, 1
  JAL zero, bb119
bb118:
  ADDI a0, zero, 13
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s1, s2, zero
  JAL zero, bb119
bb119:
  BNE s1, zero, bb120
  JAL zero, bb121
bb120:
  ADDI s2, zero, 1
  JAL zero, bb122
bb121:
  ADDI a0, zero, 14
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb122
bb122:
  BNE s2, zero, bb123
  JAL zero, bb124
bb123:
  ADDI s3, zero, 1
  JAL zero, bb125
bb124:
  ADDI a0, zero, 15
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s3, s4, zero
  JAL zero, bb125
bb125:
  BNE s3, zero, bb126
  JAL zero, bb127
bb126:
  ADDI s4, zero, 1
  JAL zero, bb128
bb127:
  ADDI a0, zero, 16
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  ADD s4, s5, zero
  JAL zero, bb128
bb128:
  BNE s4, zero, bb129
  JAL zero, bb130
bb129:
  ADDI s5, zero, 1
  JAL zero, bb131
bb130:
  ADDI a0, zero, 17
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s5, s6, zero
  JAL zero, bb131
bb131:
  BNE s5, zero, bb132
  JAL zero, bb133
bb132:
  ADDI s6, zero, 1
  JAL zero, bb134
bb133:
  ADDI a0, zero, 18
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD s6, s7, zero
  JAL zero, bb134
bb134:
  BNE s6, zero, bb135
  JAL zero, bb136
bb135:
  ADDI s7, zero, 1
  JAL zero, bb137
bb136:
  ADDI a0, zero, 19
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL g
  ADD s8, a0, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD s7, s8, zero
  JAL zero, bb137
bb137:
  BNE s7, zero, bb138
  JAL zero, bb139
bb138:
  JAL zero, bb139
bb139:
  LW t4, 72(sp)
  ADDIW s8, t4, 1
  ADD t4, s8, zero
  SW t4, 72(sp)
  JAL zero, bb78
bb140:
  LW t4, 152(sp)
  SLTI s1, t4, 20
  BNE s1, zero, bb143
  JAL zero, bb144
bb141:
  LW t4, 152(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 152(sp)
  JAL zero, bb140
bb142:
  ADD a0, zero, zero
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb146
  JAL zero, bb147
bb143:
  ADDI s1, zero, 1
  LW t4, 152(sp)
  SUBW s2, t4, s1
  ADD a0, s2, zero
  LW t4, 152(sp)
  ADD a1, t4, zero
  CALL f
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 160(sp)
  JAL zero, bb145
bb144:
  ADD t4, zero, zero
  SB t4, 160(sp)
  JAL zero, bb145
bb145:
  LB t4, 160(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb141
  JAL zero, bb142
bb146:
  ADDI a0, zero, 1
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  ADD t4, s1, zero
  SB t4, 168(sp)
  JAL zero, bb148
bb147:
  ADD t4, zero, zero
  SB t4, 168(sp)
  JAL zero, bb148
bb148:
  LB t4, 168(sp)
  BNE t4, zero, bb149
  JAL zero, bb150
bb149:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb151
bb150:
  ADDI a0, zero, 2
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 176(sp)
  JAL zero, bb151
bb151:
  LB t4, 176(sp)
  BNE t4, zero, bb152
  JAL zero, bb153
bb152:
  ADDI t4, zero, 1
  SB t4, 184(sp)
  JAL zero, bb154
bb153:
  ADDI a0, zero, 3
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 184(sp)
  JAL zero, bb154
bb154:
  LB t4, 184(sp)
  BNE t4, zero, bb155
  JAL zero, bb214
bb155:
  ADDI t4, zero, 1
  SW t4, 192(sp)
  JAL zero, bb156
bb156:
  LA s6, sum
  LW s7, 0(s6)
  LW t4, 192(sp)
  ADDW s6, s7, t4
  ADDI a0, zero, 4
  CALL h
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  XORI s7, s6, 1
  ADD s6, s7, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb157
  JAL zero, bb158
bb157:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb159
bb158:
  ADDI a0, zero, 5
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb160
  JAL zero, bb161
bb159:
  LB t4, 200(sp)
  BNE t4, zero, bb166
  JAL zero, bb167
bb160:
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
  JAL zero, bb162
bb161:
  ADD s1, zero, zero
  JAL zero, bb162
bb162:
  BNE s1, zero, bb163
  JAL zero, bb164
bb163:
  ADDI a0, zero, 7
  CALL h
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD s2, s0, zero
  JAL zero, bb165
bb164:
  ADD s2, zero, zero
  JAL zero, bb165
bb165:
  XOR s0, s2, zero
  SLTU s3, zero, s0
  ADD t4, s3, zero
  SB t4, 200(sp)
  JAL zero, bb159
bb166:
  ADDI t4, zero, 1
  SB t4, 208(sp)
  JAL zero, bb168
bb167:
  ADDI a0, zero, 8
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 208(sp)
  JAL zero, bb168
bb168:
  LB t4, 208(sp)
  BNE t4, zero, bb169
  JAL zero, bb215
bb169:
  ADDI t4, zero, 1
  SW t4, 216(sp)
  JAL zero, bb170
bb170:
  LA s9, sum
  LW s10, 0(s9)
  LW t4, 216(sp)
  MULW s9, s10, t4
  ADDI a0, zero, 9
  CALL h
  ADD s9, a0, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb171
  JAL zero, bb172
bb171:
  ADDI a0, zero, 10
  CALL h
  ADD s9, a0, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  XORI s10, s9, 1
  ADD s9, s10, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD t4, s9, zero
  SB t4, 224(sp)
  JAL zero, bb173
bb172:
  ADD t4, zero, zero
  SB t4, 224(sp)
  JAL zero, bb173
bb173:
  LB t4, 224(sp)
  BNE t4, zero, bb174
  JAL zero, bb175
bb174:
  ADDI t4, zero, 1
  SB t4, 232(sp)
  JAL zero, bb176
bb175:
  ADDI a0, zero, 11
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 232(sp)
  JAL zero, bb176
bb176:
  LB t4, 232(sp)
  BNE t4, zero, bb177
  JAL zero, bb178
bb177:
  ADDI t4, zero, 1
  SB t4, 240(sp)
  JAL zero, bb179
bb178:
  ADDI a0, zero, 12
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 240(sp)
  JAL zero, bb179
bb179:
  LB t4, 240(sp)
  BNE t4, zero, bb180
  JAL zero, bb181
bb180:
  ADDI s0, zero, 1
  JAL zero, bb182
bb181:
  ADDI a0, zero, 13
  CALL h
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb182
bb182:
  BNE s0, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s2, zero, 1
  JAL zero, bb185
bb184:
  ADDI a0, zero, 14
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb186
  JAL zero, bb187
bb185:
  BNE s2, zero, bb189
  JAL zero, bb216
bb186:
  ADDI a0, zero, 15
  CALL h
  ADD s1, a0, zero
  XOR s3, s1, zero
  SLTU s1, zero, s3
  ADD s3, s1, zero
  JAL zero, bb188
bb187:
  ADD s3, zero, zero
  JAL zero, bb188
bb188:
  XOR s1, s3, zero
  SLTU s4, zero, s1
  ADD s2, s4, zero
  JAL zero, bb185
bb189:
  ADDI s3, zero, 1
  JAL zero, bb190
bb190:
  LA s1, sum
  LW s4, 0(s1)
  SUBW s1, s4, s3
  ADD a0, zero, zero
  CALL h
  ADD s1, a0, zero
  XOR s4, s1, zero
  SLTU s1, zero, s4
  BNE s1, zero, bb191
  JAL zero, bb192
bb191:
  ADDI a0, zero, 2
  CALL h
  ADD s1, a0, zero
  XOR s4, s1, zero
  SLTU s1, zero, s4
  ADD s4, s1, zero
  JAL zero, bb193
bb192:
  ADD s4, zero, zero
  JAL zero, bb193
bb193:
  BNE s4, zero, bb194
  JAL zero, bb195
bb194:
  ADDI a0, zero, 3
  CALL h
  ADD s1, a0, zero
  XOR s5, s1, zero
  SLTU s1, zero, s5
  XORI s5, s1, 1
  ADD s1, s5, zero
  XOR s5, s1, zero
  SLTU s1, zero, s5
  ADD s5, s1, zero
  JAL zero, bb196
bb195:
  ADD s5, zero, zero
  JAL zero, bb196
bb196:
  BNE s5, zero, bb197
  JAL zero, bb198
bb197:
  ADDI a0, zero, 4
  CALL h
  ADD s1, a0, zero
  XOR s6, s1, zero
  SLTU s1, zero, s6
  XORI s6, s1, 1
  ADD s1, s6, zero
  XOR s6, s1, zero
  SLTU s1, zero, s6
  ADD s6, s1, zero
  JAL zero, bb199
bb198:
  ADD s6, zero, zero
  JAL zero, bb199
bb199:
  BNE s6, zero, bb200
  JAL zero, bb201
bb200:
  ADDI s1, zero, 1
  JAL zero, bb202
bb201:
  ADDI a0, zero, 5
  CALL h
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD s1, s7, zero
  JAL zero, bb202
bb202:
  BNE s1, zero, bb203
  JAL zero, bb204
bb203:
  ADDI s7, zero, 1
  JAL zero, bb205
bb204:
  ADDI a0, zero, 6
  CALL h
  ADD s8, a0, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb206
  JAL zero, bb207
bb205:
  BNE s7, zero, bb209
  JAL zero, bb210
bb206:
  ADDI a0, zero, 7
  CALL h
  ADD s8, a0, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  XORI s9, s8, 1
  ADD s8, s9, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD s9, s8, zero
  JAL zero, bb208
bb207:
  ADD s9, zero, zero
  JAL zero, bb208
bb208:
  XOR s8, s9, zero
  SLTU s10, zero, s8
  ADD s7, s10, zero
  JAL zero, bb205
bb209:
  ADDI s8, zero, 1
  JAL zero, bb211
bb210:
  ADDI a0, zero, 8
  CALL h
  ADD s9, a0, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD s8, s9, zero
  JAL zero, bb211
bb211:
  BNE s8, zero, bb212
  JAL zero, bb217
bb212:
  ADDI s10, zero, 1
  JAL zero, bb213
bb213:
  LA s9, sum
  LW s11, 0(s9)
  ADDW s9, s11, s10
  ADD a0, s9, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 248(sp)
  LD s0, 256(sp)
  LD s11, 264(sp)
  LD s10, 272(sp)
  LD s1, 280(sp)
  LD s6, 288(sp)
  LD s2, 296(sp)
  LD s7, 304(sp)
  LD s8, 312(sp)
  LD s3, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LD s9, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb214:
  ADD t4, zero, zero
  SW t4, 192(sp)
  JAL zero, bb156
bb215:
  ADD t4, zero, zero
  SW t4, 216(sp)
  JAL zero, bb170
bb216:
  ADD s3, zero, zero
  JAL zero, bb190
bb217:
  ADD s10, zero, zero
  JAL zero, bb213
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
  BNE s1, zero, bb219
  JAL zero, bb220
bb219:
  ADDI s1, zero, 1
  JAL zero, bb221
bb220:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb221
bb221:
  BNE s1, zero, bb222
  JAL zero, bb223
bb222:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb223:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb224
  JAL zero, bb226
bb224:
  ADDI s2, zero, 4
  MUL s3, zero, s2
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
bb225:
bb226:
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
