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
  BNE s1, zero, bb5
  # implict jump to bb1
bb1:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb2
bb2:
  ADD s2, s1, zero
  BNE s2, zero, bb4
  # implict jump to bb3
bb3:
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
  ADDI s1, zero, 1
  JAL zero, bb2
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
  BNE s1, zero, bb13
  # implict jump to bb7
bb7:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  BNE s2, zero, bb12
  # implict jump to bb9
bb9:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  SW zero, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb11
  # implict jump to bb10
bb10:
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
bb11:
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
bb12:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb13:
  ADDI s1, zero, 1
  JAL zero, bb8
main:
  ADDI sp, sp, -272
  SD s1, 160(sp)
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s5, 184(sp)
  SD s10, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s6, 224(sp)
  SD s7, 232(sp)
  SD s8, 240(sp)
  SD s9, 248(sp)
  SD s11, 256(sp)
  ADD s0, zero, zero
  # implict jump to bb15
bb15:
  ADD t4, s0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb353
  # implict jump to bb16
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb178
  # implict jump to bb18
bb18:
  ADDI s0, zero, 1
  # implict jump to bb19
bb19:
  ADD t4, s0, zero
  SW t4, 96(sp)
  LW t4, 96(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb169
  # implict jump to bb20
bb20:
  ADD t4, zero, zero
  SB t4, 100(sp)
  # implict jump to bb21
bb21:
  LB t4, 100(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb168
  # implict jump to bb22
bb22:
  LA s0, sum
  LW s5, 0(s0)
  ADDIW s0, s5, 3
  LA s5, sum
  SW s0, 0(s5)
  SLTI s0, zero, 20
  XORI t4, s0, 1
  SB t4, 116(sp)
  # implict jump to bb23
bb23:
  LB t4, 116(sp)
  BNE t4, zero, bb167
  # implict jump to bb24
bb24:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 120(sp)
  # implict jump to bb25
bb25:
  LW t4, 120(sp)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb162
  # implict jump to bb26
bb26:
  ADD t4, zero, zero
  SB t4, 124(sp)
  # implict jump to bb27
bb27:
  LB t4, 124(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb161
  # implict jump to bb28
bb28:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb29
bb29:
  BNE s0, zero, bb160
  # implict jump to bb30
bb30:
  LA s1, array
  ADDI s2, s1, 8
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb31
bb31:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s8, s2, zero
  # implict jump to bb32
bb32:
  ADD s10, s8, zero
  BNE s10, zero, bb35
  # implict jump to bb33
bb33:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LA s10, sum
  LW s11, 0(s10)
  ADDIW s10, s11, 3
  LA s11, sum
  SW s10, 0(s11)
  ADDI s10, zero, 4
  SLTI s11, s10, 20
  XORI s10, s11, 1
  # implict jump to bb36
bb36:
  BNE s10, zero, bb159
  # implict jump to bb37
bb37:
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD s11, s0, zero
  # implict jump to bb38
bb38:
  ADD ra, s11, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  XORI t0, ra, 1
  XOR ra, t0, zero
  SLTU t0, zero, ra
  BNE t0, zero, bb158
  # implict jump to bb39
bb39:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb40
bb40:
  BNE s0, zero, bb157
  # implict jump to bb41
bb41:
  LA s1, array
  ADDI s2, s1, 20
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb42
bb42:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb152
  # implict jump to bb43
bb43:
  ADD s2, zero, zero
  # implict jump to bb44
bb44:
  ADD s3, s2, zero
  BNE s3, zero, bb147
  # implict jump to bb45
bb45:
  ADD s5, zero, zero
  # implict jump to bb46
bb46:
  ADD s4, s5, zero
  ADD t4, s4, zero
  SB t4, 140(sp)
  # implict jump to bb47
bb47:
  LB t4, 140(sp)
  ADD t0, t4, zero
  BNE t0, zero, bb50
  # implict jump to bb48
bb48:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  LA t0, sum
  LW t1, 0(t0)
  ADDIW t0, t1, 3
  LA t1, sum
  SW t0, 0(t1)
  ADDI t0, zero, 9
  SLTI t1, t0, 20
  XORI t0, t1, 1
  # implict jump to bb51
bb51:
  BNE t0, zero, bb146
  # implict jump to bb52
bb52:
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 144(sp)
  # implict jump to bb53
bb53:
  LW t4, 144(sp)
  ADD t1, t4, zero
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb141
  # implict jump to bb54
bb54:
  ADD t4, zero, zero
  SB t4, 152(sp)
  # implict jump to bb55
bb55:
  LB t4, 152(sp)
  ADD a0, t4, zero
  BNE a0, zero, bb140
  # implict jump to bb56
bb56:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb57
bb57:
  BNE s0, zero, bb139
  # implict jump to bb58
bb58:
  LA s1, array
  ADDI s2, s1, 44
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb59
bb59:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 125(sp)
  # implict jump to bb60
bb60:
  LB t4, 125(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb138
  # implict jump to bb61
bb61:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb62
bb62:
  BNE s0, zero, bb137
  # implict jump to bb63
bb63:
  LA s1, array
  ADDI s2, s1, 48
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb64
bb64:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 153(sp)
  # implict jump to bb65
bb65:
  LB t4, 153(sp)
  ADD a2, t4, zero
  BNE a2, zero, bb136
  # implict jump to bb66
bb66:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb67
bb67:
  BNE s0, zero, bb135
  # implict jump to bb68
bb68:
  LA s1, array
  ADDI s2, s1, 52
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb69
bb69:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD t4, s2, zero
  SB t4, 154(sp)
  # implict jump to bb70
bb70:
  LB t4, 154(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb75
  # implict jump to bb71
bb71:
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 14
  SLTI s1, s0, 20
  XORI s0, s1, 1
  # implict jump to bb72
bb72:
  BNE s0, zero, bb134
  # implict jump to bb73
bb73:
  LA s1, array
  ADDI s2, s1, 56
  LW s1, 0(s2)
  ADD s0, s1, zero
  # implict jump to bb74
bb74:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb132
  # implict jump to bb75
bb75:
  LA a3, sum
  LW a4, 0(a3)
  ADDIW a3, a4, 3
  LA a4, sum
  SW a3, 0(a4)
  # implict jump to bb76
bb76:
  LB t4, 116(sp)
  BNE t4, zero, bb131
  # implict jump to bb77
bb77:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 128(sp)
  # implict jump to bb78
bb78:
  LW t4, 128(sp)
  ADD a4, t4, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb126
  # implict jump to bb79
bb79:
  ADD t4, zero, zero
  SB t4, 155(sp)
  # implict jump to bb80
bb80:
  LB t4, 155(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb121
  # implict jump to bb81
bb81:
  ADD t4, zero, zero
  SB t4, 156(sp)
  # implict jump to bb82
bb82:
  LB t4, 156(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb116
  # implict jump to bb83
bb83:
  ADD t4, zero, zero
  SB t4, 157(sp)
  # implict jump to bb84
bb84:
  LB t4, 157(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb115
  # implict jump to bb85
bb85:
  LA s0, sum
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LA s2, sum
  SW s0, 0(s2)
  ADDI s0, zero, 5
  SLTI s2, s0, 20
  XORI s0, s2, 1
  # implict jump to bb86
bb86:
  BNE s0, zero, bb114
  # implict jump to bb87
bb87:
  LA s2, array
  ADDI s3, s2, 20
  LW s2, 0(s3)
  ADD s0, s2, zero
  # implict jump to bb88
bb88:
  ADD s2, s0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s6, s2, zero
  # implict jump to bb89
bb89:
  ADD s3, s6, zero
  BNE s3, zero, bb113
  # implict jump to bb90
bb90:
  LA s0, sum
  LW s2, 0(s0)
  ADDIW s0, s2, 3
  LA s2, sum
  SW s0, 0(s2)
  ADDI s0, zero, 6
  SLTI s2, s0, 20
  XORI s0, s2, 1
  # implict jump to bb91
bb91:
  BNE s0, zero, bb112
  # implict jump to bb92
bb92:
  LA s2, array
  ADDI s3, s2, 24
  LW s2, 0(s3)
  ADD s0, s2, zero
  # implict jump to bb93
bb93:
  ADD s2, s0, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb107
  # implict jump to bb94
bb94:
  ADD s4, zero, zero
  # implict jump to bb95
bb95:
  ADD s5, s4, zero
  ADD s3, s5, zero
  # implict jump to bb96
bb96:
  ADD s2, s3, zero
  BNE s2, zero, bb106
  # implict jump to bb97
bb97:
  LA s0, sum
  LW s4, 0(s0)
  ADDIW s0, s4, 3
  LA s4, sum
  SW s0, 0(s4)
  ADDI s0, zero, 8
  SLTI s4, s0, 20
  XORI s0, s4, 1
  # implict jump to bb98
bb98:
  BNE s0, zero, bb105
  # implict jump to bb99
bb99:
  LA s2, array
  ADDI s4, s2, 32
  LW s2, 0(s4)
  ADD s0, s2, zero
  # implict jump to bb100
bb100:
  ADD s4, s0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s2, s4, zero
  # implict jump to bb101
bb101:
  ADD s4, s2, zero
  BNE s4, zero, bb104
  # implict jump to bb102
bb102:
  ADD s4, zero, zero
  # implict jump to bb103
bb103:
  ADD s5, s4, zero
  LA s0, sum
  LW s9, 0(s0)
  ADDW s0, s9, s5
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD s1, 160(sp)
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s5, 184(sp)
  LD s10, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s6, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb104:
  ADDI s4, zero, 1
  JAL zero, bb103
bb105:
  ADD s0, zero, zero
  JAL zero, bb100
bb106:
  ADDI s2, zero, 1
  JAL zero, bb101
bb107:
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 3
  LA s4, sum
  SW s2, 0(s4)
  ADDI s2, zero, 7
  SLTI s4, s2, 20
  XORI s2, s4, 1
  # implict jump to bb108
bb108:
  BNE s2, zero, bb111
  # implict jump to bb109
bb109:
  LA s3, array
  ADDI s5, s3, 28
  LW s3, 0(s5)
  ADD s2, s3, zero
  # implict jump to bb110
bb110:
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb95
bb111:
  ADD s2, zero, zero
  JAL zero, bb110
bb112:
  ADD s0, zero, zero
  JAL zero, bb93
bb113:
  ADDI s3, zero, 1
  JAL zero, bb96
bb114:
  ADD s0, zero, zero
  JAL zero, bb88
bb115:
  ADDI s6, zero, 1
  JAL zero, bb89
bb116:
  LA t6, sum
  LW s1, 0(t6)
  ADDIW t6, s1, 3
  LA s1, sum
  SW t6, 0(s1)
  # implict jump to bb117
bb117:
  BNE s10, zero, bb120
  # implict jump to bb118
bb118:
  LA s0, array
  ADDI s2, s0, 16
  LW s0, 0(s2)
  ADD s1, s0, zero
  # implict jump to bb119
bb119:
  ADD t6, s1, zero
  XOR s6, t6, zero
  SLTU t6, zero, s6
  XORI s6, t6, 1
  XOR t6, s6, zero
  SLTU s6, zero, t6
  ADD t4, s6, zero
  SB t4, 157(sp)
  JAL zero, bb84
bb120:
  ADD s1, zero, zero
  JAL zero, bb119
bb121:
  LA a5, sum
  LW a7, 0(a5)
  ADDIW a5, a7, 3
  LA a7, sum
  SW a5, 0(a7)
  ADDI a5, zero, 3
  SLTI a7, a5, 20
  XORI a5, a7, 1
  # implict jump to bb122
bb122:
  BNE a5, zero, bb125
  # implict jump to bb123
bb123:
  LA s0, array
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 136(sp)
  # implict jump to bb124
bb124:
  LW t4, 136(sp)
  ADD a7, t4, zero
  XOR t6, a7, zero
  SLTU a7, zero, t6
  XORI t6, a7, 1
  XOR a7, t6, zero
  SLTU t6, zero, a7
  ADD t4, t6, zero
  SB t4, 156(sp)
  JAL zero, bb82
bb125:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb124
bb126:
  LA a4, sum
  LW a5, 0(a4)
  ADDIW a4, a5, 3
  LA a5, sum
  SW a4, 0(a5)
  ADDI a4, zero, 2
  SLTI a5, a4, 20
  XORI a4, a5, 1
  # implict jump to bb127
bb127:
  BNE a4, zero, bb130
  # implict jump to bb128
bb128:
  LA s0, array
  ADDI s1, s0, 8
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 132(sp)
  # implict jump to bb129
bb129:
  LW t4, 132(sp)
  ADD a5, t4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD t4, a5, zero
  SB t4, 155(sp)
  JAL zero, bb80
bb130:
  ADD t4, zero, zero
  SW t4, 132(sp)
  JAL zero, bb129
bb131:
  ADD t4, zero, zero
  SW t4, 128(sp)
  JAL zero, bb78
bb132:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  # implict jump to bb133
bb133:
  JAL zero, bb75
bb134:
  ADD s0, zero, zero
  JAL zero, bb74
bb135:
  ADD s0, zero, zero
  JAL zero, bb69
bb136:
  ADDI t4, zero, 1
  SB t4, 154(sp)
  JAL zero, bb70
bb137:
  ADD s0, zero, zero
  JAL zero, bb64
bb138:
  ADDI t4, zero, 1
  SB t4, 153(sp)
  JAL zero, bb65
bb139:
  ADD s0, zero, zero
  JAL zero, bb59
bb140:
  ADDI t4, zero, 1
  SB t4, 125(sp)
  JAL zero, bb60
bb141:
  LA t1, sum
  LW t2, 0(t1)
  ADDIW t1, t2, 3
  LA t2, sum
  SW t1, 0(t2)
  ADDI t1, zero, 10
  SLTI t2, t1, 20
  XORI t1, t2, 1
  # implict jump to bb142
bb142:
  BNE t1, zero, bb145
  # implict jump to bb143
bb143:
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 148(sp)
  # implict jump to bb144
bb144:
  LW t4, 148(sp)
  ADD t2, t4, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  XORI a0, t2, 1
  XOR t2, a0, zero
  SLTU a0, zero, t2
  ADD t4, a0, zero
  SB t4, 152(sp)
  JAL zero, bb55
bb145:
  ADD t4, zero, zero
  SW t4, 148(sp)
  JAL zero, bb144
bb146:
  ADD t4, zero, zero
  SW t4, 144(sp)
  JAL zero, bb53
bb147:
  LA s3, sum
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 7
  SLTI s4, s3, 20
  XORI s3, s4, 1
  # implict jump to bb148
bb148:
  BNE s3, zero, bb151
  # implict jump to bb149
bb149:
  LA s4, array
  ADDI s6, s4, 28
  LW s4, 0(s6)
  ADD s3, s4, zero
  # implict jump to bb150
bb150:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb46
bb151:
  ADD s3, zero, zero
  JAL zero, bb150
bb152:
  LA s1, sum
  LW s2, 0(s1)
  ADDIW s1, s2, 3
  LA s2, sum
  SW s1, 0(s2)
  ADDI s1, zero, 6
  SLTI s2, s1, 20
  XORI s1, s2, 1
  # implict jump to bb153
bb153:
  BNE s1, zero, bb156
  # implict jump to bb154
bb154:
  LA s3, array
  ADDI s4, s3, 24
  LW s3, 0(s4)
  ADD s1, s3, zero
  # implict jump to bb155
bb155:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb44
bb156:
  ADD s1, zero, zero
  JAL zero, bb155
bb157:
  ADD s0, zero, zero
  JAL zero, bb42
bb158:
  ADDI t4, zero, 1
  SB t4, 140(sp)
  JAL zero, bb47
bb159:
  ADD s11, zero, zero
  JAL zero, bb38
bb160:
  ADD s0, zero, zero
  JAL zero, bb31
bb161:
  ADDI s8, zero, 1
  JAL zero, bb32
bb162:
  LA s7, sum
  LW s8, 0(s7)
  ADDIW s7, s8, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 1
  SLTI s8, s7, 20
  XORI s7, s8, 1
  # implict jump to bb163
bb163:
  BNE s7, zero, bb166
  # implict jump to bb164
bb164:
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD s7, s0, zero
  # implict jump to bb165
bb165:
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD t4, s8, zero
  SB t4, 124(sp)
  JAL zero, bb27
bb166:
  ADD s7, zero, zero
  JAL zero, bb165
bb167:
  ADD t4, zero, zero
  SW t4, 120(sp)
  JAL zero, bb25
bb168:
  LW t4, 96(sp)
  ADDIW s5, t4, 1
  ADD s0, s5, zero
  JAL zero, bb19
bb169:
  ADDI s2, zero, 1
  LW t3, 96(sp)
  SUBW t4, t3, s2
  SW t4, 104(sp)
  LA s2, sum
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, sum
  SW s2, 0(s4)
  LW t4, 104(sp)
  LW t3, 96(sp)
  SLT s2, t4, t3
  XORI s4, s2, 1
  BNE s4, zero, bb177
  # implict jump to bb170
bb170:
  LW t4, 104(sp)
  SLTI s0, t4, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 108(sp)
  # implict jump to bb171
bb171:
  LB t4, 108(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb176
  # implict jump to bb172
bb172:
  ADDI s0, zero, 4
  LW t4, 104(sp)
  MULW s1, t4, s0
  LA s0, array
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LW t4, 104(sp)
  XOR s0, t4, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb175
  # implict jump to bb173
bb173:
  ADDI s0, zero, 2
  LW t4, 96(sp)
  SUBW s1, t4, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 112(sp)
  # implict jump to bb174
bb174:
  LW t4, 112(sp)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  ADD t4, s5, zero
  SB t4, 100(sp)
  JAL zero, bb21
bb175:
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 112(sp)
  JAL zero, bb174
bb176:
  ADD t4, zero, zero
  SW t4, 112(sp)
  JAL zero, bb174
bb177:
  ADDI t4, zero, 1
  SB t4, 108(sp)
  JAL zero, bb171
bb178:
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, sum
  SW s2, 0(s3)
  SLT s2, zero, s1
  XORI s3, s2, 1
  BNE s3, zero, bb352
  # implict jump to bb179
bb179:
  SLTI s0, zero, 20
  XORI s3, s0, 1
  ADD s2, s3, zero
  # implict jump to bb180
bb180:
  ADD s3, s2, zero
  BNE s3, zero, bb351
  # implict jump to bb181
bb181:
  LA s0, array
  SW zero, 0(s0)
  LA s0, array
  LW s4, 0(s0)
  ADD s3, s4, zero
  # implict jump to bb182
bb182:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb350
  # implict jump to bb183
bb183:
  LA s0, sum
  LW s5, 0(s0)
  ADDIW s0, s5, 2
  LA s5, sum
  SW s0, 0(s5)
  ADDI s0, zero, 1
  SLT s5, s0, s1
  XORI s0, s5, 1
  BNE s0, zero, bb349
  # implict jump to bb184
bb184:
  ADDI s4, zero, 1
  SLTI s5, s4, 20
  XORI s4, s5, 1
  ADD s0, s4, zero
  # implict jump to bb185
bb185:
  ADD s5, s0, zero
  BNE s5, zero, bb348
  # implict jump to bb186
bb186:
  LA s4, array
  ADDI s6, s4, 4
  SW zero, 0(s6)
  LA s4, array
  LW s6, 0(s4)
  ADD s5, s6, zero
  # implict jump to bb187
bb187:
  ADD s6, s5, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD s4, s6, zero
  # implict jump to bb188
bb188:
  ADD s5, s4, zero
  BNE s5, zero, bb347
  # implict jump to bb189
bb189:
  LA s0, sum
  LW s6, 0(s0)
  ADDIW s0, s6, 2
  LA s6, sum
  SW s0, 0(s6)
  ADDI s0, zero, 2
  SLT s6, s0, s1
  XORI s0, s6, 1
  BNE s0, zero, bb346
  # implict jump to bb190
bb190:
  ADDI s5, zero, 2
  SLTI s6, s5, 20
  XORI s5, s6, 1
  ADD s0, s5, zero
  # implict jump to bb191
bb191:
  ADD s6, s0, zero
  BNE s6, zero, bb345
  # implict jump to bb192
bb192:
  LA s5, array
  ADDI s7, s5, 8
  SW zero, 0(s7)
  LA s5, array
  ADDI s7, s5, 4
  LW s5, 0(s7)
  ADD s6, s5, zero
  # implict jump to bb193
bb193:
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  ADD s5, s7, zero
  # implict jump to bb194
bb194:
  ADD s6, s5, zero
  BNE s6, zero, bb344
  # implict jump to bb195
bb195:
  LA s0, sum
  LW s7, 0(s0)
  ADDIW s0, s7, 2
  LA s7, sum
  SW s0, 0(s7)
  ADDI s0, zero, 3
  SLT s7, s0, s1
  XORI s0, s7, 1
  BNE s0, zero, bb343
  # implict jump to bb196
bb196:
  ADDI s6, zero, 3
  SLTI s7, s6, 20
  XORI s6, s7, 1
  ADD s0, s6, zero
  # implict jump to bb197
bb197:
  ADD s7, s0, zero
  BNE s7, zero, bb342
  # implict jump to bb198
bb198:
  LA s6, array
  ADDI s8, s6, 12
  SW zero, 0(s8)
  LA s6, array
  ADDI s8, s6, 8
  LW s6, 0(s8)
  ADD s7, s6, zero
  # implict jump to bb199
bb199:
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD s6, s8, zero
  # implict jump to bb200
bb200:
  ADD s7, s6, zero
  BNE s7, zero, bb341
  # implict jump to bb201
bb201:
  LA s0, sum
  LW s8, 0(s0)
  ADDIW s0, s8, 2
  LA s8, sum
  SW s0, 0(s8)
  ADDI s0, zero, 4
  SLT s8, s0, s1
  XORI s0, s8, 1
  BNE s0, zero, bb340
  # implict jump to bb202
bb202:
  ADDI s7, zero, 4
  SLTI s8, s7, 20
  XORI s7, s8, 1
  ADD s0, s7, zero
  # implict jump to bb203
bb203:
  ADD s8, s0, zero
  BNE s8, zero, bb339
  # implict jump to bb204
bb204:
  LA s7, array
  ADDI s9, s7, 16
  SW zero, 0(s9)
  LA s7, array
  ADDI s9, s7, 12
  LW s7, 0(s9)
  ADD s8, s7, zero
  # implict jump to bb205
bb205:
  ADD s9, s8, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD s7, s9, zero
  # implict jump to bb206
bb206:
  ADD s8, s7, zero
  BNE s8, zero, bb338
  # implict jump to bb207
bb207:
  LA s0, sum
  LW s9, 0(s0)
  ADDIW s0, s9, 2
  LA s9, sum
  SW s0, 0(s9)
  ADDI s0, zero, 5
  SLT s9, s0, s1
  XORI s0, s9, 1
  BNE s0, zero, bb337
  # implict jump to bb208
bb208:
  ADDI s8, zero, 5
  SLTI s9, s8, 20
  XORI s8, s9, 1
  ADD s0, s8, zero
  # implict jump to bb209
bb209:
  ADD s9, s0, zero
  BNE s9, zero, bb336
  # implict jump to bb210
bb210:
  LA s8, array
  ADDI s10, s8, 20
  SW zero, 0(s10)
  LA s8, array
  ADDI s10, s8, 16
  LW s8, 0(s10)
  ADD s9, s8, zero
  # implict jump to bb211
bb211:
  ADD s10, s9, zero
  XOR s11, s10, zero
  SLTU s10, zero, s11
  ADD s8, s10, zero
  # implict jump to bb212
bb212:
  ADD s9, s8, zero
  BNE s9, zero, bb335
  # implict jump to bb213
bb213:
  LA s0, sum
  LW s10, 0(s0)
  ADDIW s0, s10, 2
  LA s10, sum
  SW s0, 0(s10)
  ADDI s0, zero, 6
  SLT s10, s0, s1
  XORI s0, s10, 1
  BNE s0, zero, bb334
  # implict jump to bb214
bb214:
  ADDI s9, zero, 6
  SLTI s10, s9, 20
  XORI s9, s10, 1
  ADD s0, s9, zero
  # implict jump to bb215
bb215:
  ADD s10, s0, zero
  BNE s10, zero, bb333
  # implict jump to bb216
bb216:
  LA s9, array
  ADDI s11, s9, 24
  SW zero, 0(s11)
  LA s9, array
  ADDI s11, s9, 20
  LW s9, 0(s11)
  ADD s10, s9, zero
  # implict jump to bb217
bb217:
  ADD s11, s10, zero
  XOR ra, s11, zero
  SLTU s11, zero, ra
  ADD s9, s11, zero
  # implict jump to bb218
bb218:
  ADD s10, s9, zero
  BNE s10, zero, bb332
  # implict jump to bb219
bb219:
  LA s0, sum
  LW s11, 0(s0)
  ADDIW s0, s11, 2
  LA s11, sum
  SW s0, 0(s11)
  ADDI s0, zero, 7
  SLT s11, s0, s1
  XORI s0, s11, 1
  BNE s0, zero, bb331
  # implict jump to bb220
bb220:
  ADDI s10, zero, 7
  SLTI s11, s10, 20
  XORI s10, s11, 1
  ADD s0, s10, zero
  # implict jump to bb221
bb221:
  ADD s11, s0, zero
  BNE s11, zero, bb330
  # implict jump to bb222
bb222:
  LA s10, array
  ADDI ra, s10, 28
  SW zero, 0(ra)
  LA s10, array
  ADDI ra, s10, 24
  LW s10, 0(ra)
  ADD s11, s10, zero
  # implict jump to bb223
bb223:
  ADD ra, s11, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  ADD s10, ra, zero
  # implict jump to bb224
bb224:
  ADD s11, s10, zero
  BNE s11, zero, bb329
  # implict jump to bb225
bb225:
  LA s0, sum
  LW ra, 0(s0)
  ADDIW s0, ra, 2
  LA ra, sum
  SW s0, 0(ra)
  ADDI s0, zero, 8
  SLT ra, s0, s1
  XORI s0, ra, 1
  BNE s0, zero, bb328
  # implict jump to bb226
bb226:
  ADDI s11, zero, 8
  SLTI ra, s11, 20
  XORI s11, ra, 1
  ADD s0, s11, zero
  # implict jump to bb227
bb227:
  ADD ra, s0, zero
  BNE ra, zero, bb327
  # implict jump to bb228
bb228:
  LA s11, array
  ADDI t0, s11, 32
  SW zero, 0(t0)
  LA s11, array
  ADDI t0, s11, 28
  LW s11, 0(t0)
  ADD ra, s11, zero
  # implict jump to bb229
bb229:
  ADD t0, ra, zero
  XOR t1, t0, zero
  SLTU t0, zero, t1
  ADD s11, t0, zero
  # implict jump to bb230
bb230:
  ADD ra, s11, zero
  BNE ra, zero, bb326
  # implict jump to bb231
bb231:
  LA s0, sum
  LW t0, 0(s0)
  ADDIW s0, t0, 2
  LA t0, sum
  SW s0, 0(t0)
  ADDI s0, zero, 9
  SLT t0, s0, s1
  XORI s0, t0, 1
  BNE s0, zero, bb325
  # implict jump to bb232
bb232:
  ADDI ra, zero, 9
  SLTI t0, ra, 20
  XORI ra, t0, 1
  ADD s0, ra, zero
  # implict jump to bb233
bb233:
  ADD t0, s0, zero
  BNE t0, zero, bb324
  # implict jump to bb234
bb234:
  LA ra, array
  ADDI t1, ra, 36
  SW zero, 0(t1)
  LA ra, array
  ADDI t1, ra, 32
  LW ra, 0(t1)
  ADD t0, ra, zero
  # implict jump to bb235
bb235:
  ADD t1, t0, zero
  XOR t2, t1, zero
  SLTU t1, zero, t2
  ADD ra, t1, zero
  # implict jump to bb236
bb236:
  ADD t0, ra, zero
  BNE t0, zero, bb323
  # implict jump to bb237
bb237:
  LA s0, sum
  LW t1, 0(s0)
  ADDIW s0, t1, 2
  LA t1, sum
  SW s0, 0(t1)
  ADDI s0, zero, 10
  SLT t1, s0, s1
  XORI s0, t1, 1
  BNE s0, zero, bb322
  # implict jump to bb238
bb238:
  ADDI t0, zero, 10
  SLTI t1, t0, 20
  XORI t0, t1, 1
  ADD s0, t0, zero
  # implict jump to bb239
bb239:
  ADD t1, s0, zero
  BNE t1, zero, bb321
  # implict jump to bb240
bb240:
  LA t0, array
  ADDI t2, t0, 40
  SW zero, 0(t2)
  LA t0, array
  ADDI t2, t0, 36
  LW t0, 0(t2)
  ADD t1, t0, zero
  # implict jump to bb241
bb241:
  ADD t2, t1, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  ADD t0, t2, zero
  # implict jump to bb242
bb242:
  ADD t1, t0, zero
  BNE t1, zero, bb320
  # implict jump to bb243
bb243:
  LA s0, sum
  LW t2, 0(s0)
  ADDIW s0, t2, 2
  LA t2, sum
  SW s0, 0(t2)
  ADDI s0, zero, 11
  SLT t2, s0, s1
  XORI s0, t2, 1
  BNE s0, zero, bb319
  # implict jump to bb244
bb244:
  ADDI t1, zero, 11
  SLTI t2, t1, 20
  XORI t1, t2, 1
  ADD s0, t1, zero
  # implict jump to bb245
bb245:
  ADD t2, s0, zero
  BNE t2, zero, bb318
  # implict jump to bb246
bb246:
  LA t1, array
  ADDI a0, t1, 44
  SW zero, 0(a0)
  LA t1, array
  ADDI a0, t1, 40
  LW t1, 0(a0)
  ADD t2, t1, zero
  # implict jump to bb247
bb247:
  ADD a0, t2, zero
  XOR a1, a0, zero
  SLTU a0, zero, a1
  ADD t1, a0, zero
  # implict jump to bb248
bb248:
  ADD t2, t1, zero
  BNE t2, zero, bb317
  # implict jump to bb249
bb249:
  LA s0, sum
  LW a0, 0(s0)
  ADDIW s0, a0, 2
  LA a0, sum
  SW s0, 0(a0)
  ADDI s0, zero, 12
  SLT a0, s0, s1
  XORI s0, a0, 1
  BNE s0, zero, bb316
  # implict jump to bb250
bb250:
  ADDI t2, zero, 12
  SLTI a0, t2, 20
  XORI t2, a0, 1
  ADD s0, t2, zero
  # implict jump to bb251
bb251:
  ADD a0, s0, zero
  BNE a0, zero, bb315
  # implict jump to bb252
bb252:
  LA t2, array
  ADDI a1, t2, 48
  SW zero, 0(a1)
  LA t2, array
  ADDI a1, t2, 44
  LW t2, 0(a1)
  ADD a0, t2, zero
  # implict jump to bb253
bb253:
  ADD a1, a0, zero
  XOR a2, a1, zero
  SLTU a1, zero, a2
  ADD t2, a1, zero
  # implict jump to bb254
bb254:
  ADD a0, t2, zero
  BNE a0, zero, bb314
  # implict jump to bb255
bb255:
  LA s0, sum
  LW a1, 0(s0)
  ADDIW s0, a1, 2
  LA a1, sum
  SW s0, 0(a1)
  ADDI s0, zero, 13
  SLT a1, s0, s1
  XORI s0, a1, 1
  BNE s0, zero, bb313
  # implict jump to bb256
bb256:
  ADDI a0, zero, 13
  SLTI a1, a0, 20
  XORI a0, a1, 1
  ADD s0, a0, zero
  # implict jump to bb257
bb257:
  ADD a1, s0, zero
  BNE a1, zero, bb312
  # implict jump to bb258
bb258:
  LA a0, array
  ADDI a2, a0, 52
  SW zero, 0(a2)
  LA a0, array
  ADDI a2, a0, 48
  LW a0, 0(a2)
  ADD a1, a0, zero
  # implict jump to bb259
bb259:
  ADD a2, a1, zero
  XOR a3, a2, zero
  SLTU a2, zero, a3
  ADD a0, a2, zero
  # implict jump to bb260
bb260:
  ADD a1, a0, zero
  BNE a1, zero, bb311
  # implict jump to bb261
bb261:
  LA s0, sum
  LW a2, 0(s0)
  ADDIW s0, a2, 2
  LA a2, sum
  SW s0, 0(a2)
  ADDI s0, zero, 14
  SLT a2, s0, s1
  XORI s0, a2, 1
  BNE s0, zero, bb310
  # implict jump to bb262
bb262:
  ADDI a1, zero, 14
  SLTI a2, a1, 20
  XORI a1, a2, 1
  ADD s0, a1, zero
  # implict jump to bb263
bb263:
  ADD a2, s0, zero
  BNE a2, zero, bb309
  # implict jump to bb264
bb264:
  LA a1, array
  ADDI a3, a1, 56
  SW zero, 0(a3)
  LA a1, array
  ADDI a3, a1, 52
  LW a1, 0(a3)
  ADD a2, a1, zero
  # implict jump to bb265
bb265:
  ADD a3, a2, zero
  XOR a4, a3, zero
  SLTU a3, zero, a4
  ADD a1, a3, zero
  # implict jump to bb266
bb266:
  ADD a2, a1, zero
  BNE a2, zero, bb308
  # implict jump to bb267
bb267:
  LA s0, sum
  LW a3, 0(s0)
  ADDIW s0, a3, 2
  LA a3, sum
  SW s0, 0(a3)
  ADDI s0, zero, 15
  SLT a3, s0, s1
  XORI s0, a3, 1
  BNE s0, zero, bb307
  # implict jump to bb268
bb268:
  ADDI a2, zero, 15
  SLTI a3, a2, 20
  XORI a2, a3, 1
  ADD s0, a2, zero
  # implict jump to bb269
bb269:
  ADD a3, s0, zero
  BNE a3, zero, bb306
  # implict jump to bb270
bb270:
  LA a2, array
  ADDI a4, a2, 60
  SW zero, 0(a4)
  LA a2, array
  ADDI a4, a2, 56
  LW a2, 0(a4)
  ADD a3, a2, zero
  # implict jump to bb271
bb271:
  ADD a4, a3, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  ADD a2, a4, zero
  # implict jump to bb272
bb272:
  ADD a3, a2, zero
  BNE a3, zero, bb305
  # implict jump to bb273
bb273:
  LA s0, sum
  LW a4, 0(s0)
  ADDIW s0, a4, 2
  LA a4, sum
  SW s0, 0(a4)
  ADDI s0, zero, 16
  SLT a4, s0, s1
  XORI s0, a4, 1
  BNE s0, zero, bb304
  # implict jump to bb274
bb274:
  ADDI a3, zero, 16
  SLTI a4, a3, 20
  XORI a3, a4, 1
  ADD s0, a3, zero
  # implict jump to bb275
bb275:
  ADD a4, s0, zero
  BNE a4, zero, bb303
  # implict jump to bb276
bb276:
  LA a3, array
  ADDI a5, a3, 64
  SW zero, 0(a5)
  LA a3, array
  ADDI a5, a3, 60
  LW a3, 0(a5)
  ADD a4, a3, zero
  # implict jump to bb277
bb277:
  ADD a5, a4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD a3, a5, zero
  # implict jump to bb278
bb278:
  ADD a4, a3, zero
  BNE a4, zero, bb302
  # implict jump to bb279
bb279:
  LA s0, sum
  LW a5, 0(s0)
  ADDIW s0, a5, 2
  LA a5, sum
  SW s0, 0(a5)
  ADDI s0, zero, 17
  SLT a5, s0, s1
  XORI s0, a5, 1
  BNE s0, zero, bb301
  # implict jump to bb280
bb280:
  ADDI a4, zero, 17
  SLTI a5, a4, 20
  XORI a4, a5, 1
  ADD s0, a4, zero
  # implict jump to bb281
bb281:
  ADD a5, s0, zero
  BNE a5, zero, bb300
  # implict jump to bb282
bb282:
  LA a4, array
  ADDI a6, a4, 68
  SW zero, 0(a6)
  LA a4, array
  ADDI a6, a4, 64
  LW a4, 0(a6)
  ADD a5, a4, zero
  # implict jump to bb283
bb283:
  ADD a6, a5, zero
  XOR a7, a6, zero
  SLTU a6, zero, a7
  ADD a4, a6, zero
  # implict jump to bb284
bb284:
  ADD a5, a4, zero
  BNE a5, zero, bb299
  # implict jump to bb285
bb285:
  LA s0, sum
  LW a6, 0(s0)
  ADDIW s0, a6, 2
  LA a6, sum
  SW s0, 0(a6)
  ADDI s0, zero, 18
  SLT a6, s0, s1
  XORI s0, a6, 1
  BNE s0, zero, bb298
  # implict jump to bb286
bb286:
  ADDI a5, zero, 18
  SLTI a6, a5, 20
  XORI a5, a6, 1
  ADD s0, a5, zero
  # implict jump to bb287
bb287:
  ADD a6, s0, zero
  BNE a6, zero, bb297
  # implict jump to bb288
bb288:
  LA a5, array
  ADDI a7, a5, 72
  SW zero, 0(a7)
  LA a5, array
  ADDI a7, a5, 68
  LW a5, 0(a7)
  ADD a6, a5, zero
  # implict jump to bb289
bb289:
  ADD a7, a6, zero
  XOR t6, a7, zero
  SLTU a7, zero, t6
  ADD a5, a7, zero
  # implict jump to bb290
bb290:
  ADD a6, a5, zero
  BNE a6, zero, bb295
  # implict jump to bb291
bb291:
  LA s0, sum
  LW a6, 0(s0)
  ADDIW s0, a6, 2
  LA a6, sum
  SW s0, 0(a6)
  ADDI s0, zero, 19
  SLT a6, s0, s1
  XORI s0, a6, 1
  BNE s0, zero, bb296
  # implict jump to bb292
bb292:
  ADDI a6, zero, 19
  SLTI a7, a6, 20
  XORI a6, a7, 1
  ADD s0, a6, zero
  # implict jump to bb293
bb293:
  ADD a6, s0, zero
  BNE a6, zero, bb295
  # implict jump to bb294
bb294:
  LA a6, array
  ADDI a7, a6, 76
  SW zero, 0(a7)
  # implict jump to bb295
bb295:
  ADDIW a6, s1, 1
  ADD s0, a6, zero
  JAL zero, bb17
bb296:
  ADDI s0, zero, 1
  JAL zero, bb293
bb297:
  ADDI a6, zero, 1
  JAL zero, bb289
bb298:
  ADDI s0, zero, 1
  JAL zero, bb287
bb299:
  ADDI a5, zero, 1
  JAL zero, bb290
bb300:
  ADDI a5, zero, 1
  JAL zero, bb283
bb301:
  ADDI s0, zero, 1
  JAL zero, bb281
bb302:
  ADDI a4, zero, 1
  JAL zero, bb284
bb303:
  ADDI a4, zero, 1
  JAL zero, bb277
bb304:
  ADDI s0, zero, 1
  JAL zero, bb275
bb305:
  ADDI a3, zero, 1
  JAL zero, bb278
bb306:
  ADDI a3, zero, 1
  JAL zero, bb271
bb307:
  ADDI s0, zero, 1
  JAL zero, bb269
bb308:
  ADDI a2, zero, 1
  JAL zero, bb272
bb309:
  ADDI a2, zero, 1
  JAL zero, bb265
bb310:
  ADDI s0, zero, 1
  JAL zero, bb263
bb311:
  ADDI a1, zero, 1
  JAL zero, bb266
bb312:
  ADDI a1, zero, 1
  JAL zero, bb259
bb313:
  ADDI s0, zero, 1
  JAL zero, bb257
bb314:
  ADDI a0, zero, 1
  JAL zero, bb260
bb315:
  ADDI a0, zero, 1
  JAL zero, bb253
bb316:
  ADDI s0, zero, 1
  JAL zero, bb251
bb317:
  ADDI t2, zero, 1
  JAL zero, bb254
bb318:
  ADDI t2, zero, 1
  JAL zero, bb247
bb319:
  ADDI s0, zero, 1
  JAL zero, bb245
bb320:
  ADDI t1, zero, 1
  JAL zero, bb248
bb321:
  ADDI t1, zero, 1
  JAL zero, bb241
bb322:
  ADDI s0, zero, 1
  JAL zero, bb239
bb323:
  ADDI t0, zero, 1
  JAL zero, bb242
bb324:
  ADDI t0, zero, 1
  JAL zero, bb235
bb325:
  ADDI s0, zero, 1
  JAL zero, bb233
bb326:
  ADDI ra, zero, 1
  JAL zero, bb236
bb327:
  ADDI ra, zero, 1
  JAL zero, bb229
bb328:
  ADDI s0, zero, 1
  JAL zero, bb227
bb329:
  ADDI s11, zero, 1
  JAL zero, bb230
bb330:
  ADDI s11, zero, 1
  JAL zero, bb223
bb331:
  ADDI s0, zero, 1
  JAL zero, bb221
bb332:
  ADDI s10, zero, 1
  JAL zero, bb224
bb333:
  ADDI s10, zero, 1
  JAL zero, bb217
bb334:
  ADDI s0, zero, 1
  JAL zero, bb215
bb335:
  ADDI s9, zero, 1
  JAL zero, bb218
bb336:
  ADDI s9, zero, 1
  JAL zero, bb211
bb337:
  ADDI s0, zero, 1
  JAL zero, bb209
bb338:
  ADDI s8, zero, 1
  JAL zero, bb212
bb339:
  ADDI s8, zero, 1
  JAL zero, bb205
bb340:
  ADDI s0, zero, 1
  JAL zero, bb203
bb341:
  ADDI s7, zero, 1
  JAL zero, bb206
bb342:
  ADDI s7, zero, 1
  JAL zero, bb199
bb343:
  ADDI s0, zero, 1
  JAL zero, bb197
bb344:
  ADDI s6, zero, 1
  JAL zero, bb200
bb345:
  ADDI s6, zero, 1
  JAL zero, bb193
bb346:
  ADDI s0, zero, 1
  JAL zero, bb191
bb347:
  ADDI s5, zero, 1
  JAL zero, bb194
bb348:
  ADDI s5, zero, 1
  JAL zero, bb187
bb349:
  ADDI s0, zero, 1
  JAL zero, bb185
bb350:
  ADDI s4, zero, 1
  JAL zero, bb188
bb351:
  ADDI s3, zero, 1
  JAL zero, bb182
bb352:
  ADDI s2, zero, 1
  JAL zero, bb180
bb353:
  LA s2, sum
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, sum
  SW s2, 0(s3)
  LW t4, 0(sp)
  SLT s2, zero, t4
  XORI s3, s2, 1
  BNE s3, zero, bb527
  # implict jump to bb354
bb354:
  SLTI s0, zero, 20
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 4(sp)
  # implict jump to bb355
bb355:
  LB t4, 4(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb526
  # implict jump to bb356
bb356:
  LA s0, array
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 8(sp)
  # implict jump to bb357
bb357:
  LW t4, 8(sp)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb519
  # implict jump to bb358
bb358:
  ADD t4, zero, zero
  SB t4, 12(sp)
  # implict jump to bb359
bb359:
  LB t4, 12(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb512
  # implict jump to bb360
bb360:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb361
bb361:
  LB t4, 20(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb505
  # implict jump to bb362
bb362:
  ADD t4, zero, zero
  SB t4, 28(sp)
  # implict jump to bb363
bb363:
  LB t4, 28(sp)
  ADD ra, t4, zero
  BNE ra, zero, bb498
  # implict jump to bb364
bb364:
  ADD t4, zero, zero
  SB t4, 36(sp)
  # implict jump to bb365
bb365:
  LB t4, 36(sp)
  ADD t2, t4, zero
  BNE t2, zero, bb491
  # implict jump to bb366
bb366:
  ADD t4, zero, zero
  SB t4, 44(sp)
  # implict jump to bb367
bb367:
  LB t4, 44(sp)
  ADD a2, t4, zero
  BNE a2, zero, bb484
  # implict jump to bb368
bb368:
  ADD t4, zero, zero
  SB t4, 52(sp)
  # implict jump to bb369
bb369:
  LB t4, 52(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb477
  # implict jump to bb370
bb370:
  ADD t4, zero, zero
  SB t4, 60(sp)
  # implict jump to bb371
bb371:
  LB t4, 60(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb470
  # implict jump to bb372
bb372:
  ADD t4, zero, zero
  SB t4, 68(sp)
  # implict jump to bb373
bb373:
  LB t4, 68(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb463
  # implict jump to bb374
bb374:
  ADD t4, zero, zero
  SB t4, 76(sp)
  # implict jump to bb375
bb375:
  LB t4, 76(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb456
  # implict jump to bb376
bb376:
  ADD t4, zero, zero
  SB t4, 84(sp)
  # implict jump to bb377
bb377:
  LB t4, 84(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb449
  # implict jump to bb378
bb378:
  ADD t4, zero, zero
  SB t4, 92(sp)
  # implict jump to bb379
bb379:
  LB t4, 92(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb442
  # implict jump to bb380
bb380:
  ADD a3, zero, zero
  # implict jump to bb381
bb381:
  ADD t1, a3, zero
  BNE t1, zero, bb435
  # implict jump to bb382
bb382:
  ADD a6, zero, zero
  # implict jump to bb383
bb383:
  ADD a1, a6, zero
  BNE a1, zero, bb428
  # implict jump to bb384
bb384:
  ADD s1, zero, zero
  # implict jump to bb385
bb385:
  ADD a4, s1, zero
  BNE a4, zero, bb421
  # implict jump to bb386
bb386:
  ADD s7, zero, zero
  # implict jump to bb387
bb387:
  ADD a7, s7, zero
  BNE a7, zero, bb414
  # implict jump to bb388
bb388:
  ADD s10, zero, zero
  # implict jump to bb389
bb389:
  ADD t6, s10, zero
  BNE t6, zero, bb407
  # implict jump to bb390
bb390:
  ADD t0, zero, zero
  # implict jump to bb391
bb391:
  ADD s4, t0, zero
  BNE s4, zero, bb400
  # implict jump to bb392
bb392:
  ADD a0, zero, zero
  # implict jump to bb393
bb393:
  ADD s6, a0, zero
  BNE s6, zero, bb395
  # implict jump to bb394
bb394:
  LW t4, 0(sp)
  ADDIW s8, t4, 1
  ADD s0, s8, zero
  JAL zero, bb15
bb395:
  LA s6, sum
  LW s8, 0(s6)
  ADDIW s6, s8, 1
  LA s8, sum
  SW s6, 0(s8)
  ADDI s6, zero, 19
  LW t4, 0(sp)
  SLT s8, s6, t4
  XORI s6, s8, 1
  BNE s6, zero, bb399
  # implict jump to bb396
bb396:
  ADDI s0, zero, 19
  SLTI s8, s0, 20
  XORI s0, s8, 1
  ADD s6, s0, zero
  # implict jump to bb397
bb397:
  ADD s8, s6, zero
  BNE s8, zero, bb394
  # implict jump to bb398
bb398:
  LA s0, array
  ADDI s8, s0, 76
  ADDI s0, zero, 1
  SW s0, 0(s8)
  JAL zero, bb394
bb399:
  ADDI s6, zero, 1
  JAL zero, bb397
bb400:
  LA s4, sum
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 18
  LW t4, 0(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb406
  # implict jump to bb401
bb401:
  ADDI s0, zero, 18
  SLTI s5, s0, 20
  XORI s0, s5, 1
  ADD s4, s0, zero
  # implict jump to bb402
bb402:
  ADD s5, s4, zero
  BNE s5, zero, bb405
  # implict jump to bb403
bb403:
  LA s0, array
  ADDI s6, s0, 72
  ADDI s0, zero, 1
  SW s0, 0(s6)
  LA s0, array
  ADDI s6, s0, 68
  LW s0, 0(s6)
  ADD s5, s0, zero
  # implict jump to bb404
bb404:
  ADD s6, s5, zero
  XOR a0, s6, zero
  SLTU s6, zero, a0
  ADD a0, s6, zero
  JAL zero, bb393
bb405:
  ADD s5, zero, zero
  JAL zero, bb404
bb406:
  ADDI s4, zero, 1
  JAL zero, bb402
bb407:
  LA t6, sum
  LW s3, 0(t6)
  ADDIW t6, s3, 1
  LA s3, sum
  SW t6, 0(s3)
  ADDI s3, zero, 17
  LW t4, 0(sp)
  SLT t6, s3, t4
  XORI s3, t6, 1
  BNE s3, zero, bb413
  # implict jump to bb408
bb408:
  ADDI s0, zero, 17
  SLTI s4, s0, 20
  XORI s0, s4, 1
  ADD s3, s0, zero
  # implict jump to bb409
bb409:
  ADD t6, s3, zero
  BNE t6, zero, bb412
  # implict jump to bb410
bb410:
  LA s0, array
  ADDI s4, s0, 68
  ADDI s0, zero, 1
  SW s0, 0(s4)
  LA s0, array
  ADDI s4, s0, 64
  LW s0, 0(s4)
  ADD t6, s0, zero
  # implict jump to bb411
bb411:
  ADD s4, t6, zero
  XOR t0, s4, zero
  SLTU s4, zero, t0
  ADD t0, s4, zero
  JAL zero, bb391
bb412:
  ADD t6, zero, zero
  JAL zero, bb411
bb413:
  ADDI s3, zero, 1
  JAL zero, bb409
bb414:
  LA a7, sum
  LW s2, 0(a7)
  ADDIW a7, s2, 1
  LA s2, sum
  SW a7, 0(s2)
  ADDI s2, zero, 16
  LW t4, 0(sp)
  SLT a7, s2, t4
  XORI s2, a7, 1
  BNE s2, zero, bb420
  # implict jump to bb415
bb415:
  ADDI s0, zero, 16
  SLTI s3, s0, 20
  XORI s0, s3, 1
  ADD s2, s0, zero
  # implict jump to bb416
bb416:
  ADD a7, s2, zero
  BNE a7, zero, bb419
  # implict jump to bb417
bb417:
  LA s0, array
  ADDI s3, s0, 64
  ADDI s0, zero, 1
  SW s0, 0(s3)
  LA s0, array
  ADDI s3, s0, 60
  LW s0, 0(s3)
  ADD a7, s0, zero
  # implict jump to bb418
bb418:
  ADD t6, a7, zero
  XOR s10, t6, zero
  SLTU t6, zero, s10
  ADD s10, t6, zero
  JAL zero, bb389
bb419:
  ADD a7, zero, zero
  JAL zero, bb418
bb420:
  ADDI s2, zero, 1
  JAL zero, bb416
bb421:
  LA a4, sum
  LW a5, 0(a4)
  ADDIW a4, a5, 1
  LA a5, sum
  SW a4, 0(a5)
  ADDI a4, zero, 15
  LW t4, 0(sp)
  SLT a5, a4, t4
  XORI a4, a5, 1
  BNE a4, zero, bb427
  # implict jump to bb422
bb422:
  ADDI s0, zero, 15
  SLTI s2, s0, 20
  XORI s0, s2, 1
  ADD a4, s0, zero
  # implict jump to bb423
bb423:
  ADD a5, a4, zero
  BNE a5, zero, bb426
  # implict jump to bb424
bb424:
  LA s0, array
  ADDI s2, s0, 60
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LA s0, array
  ADDI s2, s0, 56
  LW s0, 0(s2)
  ADD a5, s0, zero
  # implict jump to bb425
bb425:
  ADD a7, a5, zero
  XOR s7, a7, zero
  SLTU a7, zero, s7
  ADD s7, a7, zero
  JAL zero, bb387
bb426:
  ADD a5, zero, zero
  JAL zero, bb425
bb427:
  ADDI a4, zero, 1
  JAL zero, bb423
bb428:
  LA a1, sum
  LW a2, 0(a1)
  ADDIW a1, a2, 1
  LA a2, sum
  SW a1, 0(a2)
  ADDI a1, zero, 14
  LW t4, 0(sp)
  SLT a2, a1, t4
  XORI a1, a2, 1
  BNE a1, zero, bb434
  # implict jump to bb429
bb429:
  ADDI s0, zero, 14
  SLTI s2, s0, 20
  XORI s0, s2, 1
  ADD a1, s0, zero
  # implict jump to bb430
bb430:
  ADD a2, a1, zero
  BNE a2, zero, bb433
  # implict jump to bb431
bb431:
  LA s0, array
  ADDI s2, s0, 56
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LA s0, array
  ADDI s2, s0, 52
  LW s0, 0(s2)
  ADD a2, s0, zero
  # implict jump to bb432
bb432:
  ADD a4, a2, zero
  XOR s1, a4, zero
  SLTU a4, zero, s1
  ADD s1, a4, zero
  JAL zero, bb385
bb433:
  ADD a2, zero, zero
  JAL zero, bb432
bb434:
  ADDI a1, zero, 1
  JAL zero, bb430
bb435:
  LA t1, sum
  LW t2, 0(t1)
  ADDIW t1, t2, 1
  LA t2, sum
  SW t1, 0(t2)
  ADDI t1, zero, 13
  LW t4, 0(sp)
  SLT t2, t1, t4
  XORI t1, t2, 1
  BNE t1, zero, bb441
  # implict jump to bb436
bb436:
  ADDI s0, zero, 13
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t1, s0, zero
  # implict jump to bb437
bb437:
  ADD t2, t1, zero
  BNE t2, zero, bb440
  # implict jump to bb438
bb438:
  LA s0, array
  ADDI s1, s0, 52
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 48
  LW s0, 0(s1)
  ADD t2, s0, zero
  # implict jump to bb439
bb439:
  ADD a1, t2, zero
  XOR a6, a1, zero
  SLTU a1, zero, a6
  ADD a6, a1, zero
  JAL zero, bb383
bb440:
  ADD t2, zero, zero
  JAL zero, bb439
bb441:
  ADDI t1, zero, 1
  JAL zero, bb437
bb442:
  LA s11, sum
  LW ra, 0(s11)
  ADDIW s11, ra, 1
  LA ra, sum
  SW s11, 0(ra)
  ADDI s11, zero, 12
  LW t4, 0(sp)
  SLT ra, s11, t4
  XORI s11, ra, 1
  BNE s11, zero, bb448
  # implict jump to bb443
bb443:
  ADDI s0, zero, 12
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD s11, s0, zero
  # implict jump to bb444
bb444:
  ADD ra, s11, zero
  BNE ra, zero, bb447
  # implict jump to bb445
bb445:
  LA s0, array
  ADDI s1, s0, 48
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 44
  LW s0, 0(s1)
  ADD ra, s0, zero
  # implict jump to bb446
bb446:
  ADD t1, ra, zero
  XOR a3, t1, zero
  SLTU t1, zero, a3
  ADD a3, t1, zero
  JAL zero, bb381
bb447:
  ADD ra, zero, zero
  JAL zero, bb446
bb448:
  ADDI s11, zero, 1
  JAL zero, bb444
bb449:
  LA s8, sum
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 11
  LW t4, 0(sp)
  SLT s9, s8, t4
  XORI s8, s9, 1
  BNE s8, zero, bb455
  # implict jump to bb450
bb450:
  ADDI s0, zero, 11
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 93(sp)
  # implict jump to bb451
bb451:
  LB t4, 93(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb454
  # implict jump to bb452
bb452:
  LA s0, array
  ADDI s1, s0, 44
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 40
  LW s0, 0(s1)
  ADD s9, s0, zero
  # implict jump to bb453
bb453:
  ADD s11, s9, zero
  XOR a0, s11, zero
  SLTU s11, zero, a0
  ADD t4, s11, zero
  SB t4, 92(sp)
  JAL zero, bb379
bb454:
  ADD s9, zero, zero
  JAL zero, bb453
bb455:
  ADDI t4, zero, 1
  SB t4, 93(sp)
  JAL zero, bb451
bb456:
  LA s5, sum
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 10
  LW t4, 0(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  BNE s5, zero, bb462
  # implict jump to bb457
bb457:
  ADDI s0, zero, 10
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 85(sp)
  # implict jump to bb458
bb458:
  LB t4, 85(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb461
  # implict jump to bb459
bb459:
  LA s0, array
  ADDI s1, s0, 40
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 36
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 88(sp)
  # implict jump to bb460
bb460:
  LW t4, 88(sp)
  ADD s8, t4, zero
  XOR t0, s8, zero
  SLTU s8, zero, t0
  ADD t4, s8, zero
  SB t4, 84(sp)
  JAL zero, bb377
bb461:
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb460
bb462:
  ADDI t4, zero, 1
  SB t4, 85(sp)
  JAL zero, bb458
bb463:
  LA s3, sum
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, sum
  SW s3, 0(s4)
  ADDI s3, zero, 9
  LW t4, 0(sp)
  SLT s4, s3, t4
  XORI s3, s4, 1
  BNE s3, zero, bb469
  # implict jump to bb464
bb464:
  ADDI s0, zero, 9
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 77(sp)
  # implict jump to bb465
bb465:
  LB t4, 77(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb468
  # implict jump to bb466
bb466:
  LA s0, array
  ADDI s1, s0, 36
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 32
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 80(sp)
  # implict jump to bb467
bb467:
  LW t4, 80(sp)
  ADD s5, t4, zero
  XOR s10, s5, zero
  SLTU s5, zero, s10
  ADD t4, s5, zero
  SB t4, 76(sp)
  JAL zero, bb375
bb468:
  ADD t4, zero, zero
  SW t4, 80(sp)
  JAL zero, bb467
bb469:
  ADDI t4, zero, 1
  SB t4, 77(sp)
  JAL zero, bb465
bb470:
  LA t6, sum
  LW s2, 0(t6)
  ADDIW t6, s2, 1
  LA s2, sum
  SW t6, 0(s2)
  ADDI s2, zero, 8
  LW t4, 0(sp)
  SLT t6, s2, t4
  XORI s2, t6, 1
  BNE s2, zero, bb476
  # implict jump to bb471
bb471:
  ADDI s0, zero, 8
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 69(sp)
  # implict jump to bb472
bb472:
  LB t4, 69(sp)
  ADD t6, t4, zero
  BNE t6, zero, bb475
  # implict jump to bb473
bb473:
  LA s0, array
  ADDI s1, s0, 32
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 28
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 72(sp)
  # implict jump to bb474
bb474:
  LW t4, 72(sp)
  ADD s3, t4, zero
  XOR s7, s3, zero
  SLTU s3, zero, s7
  ADD t4, s3, zero
  SB t4, 68(sp)
  JAL zero, bb373
bb475:
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb474
bb476:
  ADDI t4, zero, 1
  SB t4, 69(sp)
  JAL zero, bb472
bb477:
  LA a5, sum
  LW a7, 0(a5)
  ADDIW a5, a7, 1
  LA a7, sum
  SW a5, 0(a7)
  ADDI a5, zero, 7
  LW t4, 0(sp)
  SLT a7, a5, t4
  XORI a5, a7, 1
  BNE a5, zero, bb483
  # implict jump to bb478
bb478:
  ADDI s0, zero, 7
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 61(sp)
  # implict jump to bb479
bb479:
  LB t4, 61(sp)
  ADD a7, t4, zero
  BNE a7, zero, bb482
  # implict jump to bb480
bb480:
  LA s0, array
  ADDI s1, s0, 28
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 24
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 64(sp)
  # implict jump to bb481
bb481:
  LW t4, 64(sp)
  ADD t6, t4, zero
  XOR s1, t6, zero
  SLTU t6, zero, s1
  ADD t4, t6, zero
  SB t4, 60(sp)
  JAL zero, bb371
bb482:
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb481
bb483:
  ADDI t4, zero, 1
  SB t4, 61(sp)
  JAL zero, bb479
bb484:
  LA a2, sum
  LW a4, 0(a2)
  ADDIW a2, a4, 1
  LA a4, sum
  SW a2, 0(a4)
  ADDI a2, zero, 6
  LW t4, 0(sp)
  SLT a4, a2, t4
  XORI a2, a4, 1
  BNE a2, zero, bb490
  # implict jump to bb485
bb485:
  ADDI s0, zero, 6
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 53(sp)
  # implict jump to bb486
bb486:
  LB t4, 53(sp)
  ADD a4, t4, zero
  BNE a4, zero, bb489
  # implict jump to bb487
bb487:
  LA s0, array
  ADDI s1, s0, 24
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 20
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 56(sp)
  # implict jump to bb488
bb488:
  LW t4, 56(sp)
  ADD a5, t4, zero
  XOR a6, a5, zero
  SLTU a5, zero, a6
  ADD t4, a5, zero
  SB t4, 52(sp)
  JAL zero, bb369
bb489:
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb488
bb490:
  ADDI t4, zero, 1
  SB t4, 53(sp)
  JAL zero, bb486
bb491:
  LA t2, sum
  LW a1, 0(t2)
  ADDIW t2, a1, 1
  LA a1, sum
  SW t2, 0(a1)
  ADDI t2, zero, 5
  LW t4, 0(sp)
  SLT a1, t2, t4
  XORI t2, a1, 1
  BNE t2, zero, bb497
  # implict jump to bb492
bb492:
  ADDI s0, zero, 5
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 45(sp)
  # implict jump to bb493
bb493:
  LB t4, 45(sp)
  ADD a1, t4, zero
  BNE a1, zero, bb496
  # implict jump to bb494
bb494:
  LA s0, array
  ADDI s1, s0, 20
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 16
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 48(sp)
  # implict jump to bb495
bb495:
  LW t4, 48(sp)
  ADD a2, t4, zero
  XOR a3, a2, zero
  SLTU a2, zero, a3
  ADD t4, a2, zero
  SB t4, 44(sp)
  JAL zero, bb367
bb496:
  ADD t4, zero, zero
  SW t4, 48(sp)
  JAL zero, bb495
bb497:
  ADDI t4, zero, 1
  SB t4, 45(sp)
  JAL zero, bb493
bb498:
  LA ra, sum
  LW t1, 0(ra)
  ADDIW ra, t1, 1
  LA t1, sum
  SW ra, 0(t1)
  ADDI ra, zero, 4
  LW t4, 0(sp)
  SLT t1, ra, t4
  XORI ra, t1, 1
  BNE ra, zero, bb504
  # implict jump to bb499
bb499:
  ADDI s0, zero, 4
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 37(sp)
  # implict jump to bb500
bb500:
  LB t4, 37(sp)
  ADD t1, t4, zero
  BNE t1, zero, bb503
  # implict jump to bb501
bb501:
  LA s0, array
  ADDI s1, s0, 16
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 12
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 40(sp)
  # implict jump to bb502
bb502:
  LW t4, 40(sp)
  ADD t2, t4, zero
  XOR a0, t2, zero
  SLTU t2, zero, a0
  ADD t4, t2, zero
  SB t4, 36(sp)
  JAL zero, bb365
bb503:
  ADD t4, zero, zero
  SW t4, 40(sp)
  JAL zero, bb502
bb504:
  ADDI t4, zero, 1
  SB t4, 37(sp)
  JAL zero, bb500
bb505:
  LA s9, sum
  LW s11, 0(s9)
  ADDIW s9, s11, 1
  LA s11, sum
  SW s9, 0(s11)
  ADDI s9, zero, 3
  LW t4, 0(sp)
  SLT s11, s9, t4
  XORI s9, s11, 1
  BNE s9, zero, bb511
  # implict jump to bb506
bb506:
  ADDI s0, zero, 3
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 29(sp)
  # implict jump to bb507
bb507:
  LB t4, 29(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb510
  # implict jump to bb508
bb508:
  LA s0, array
  ADDI s1, s0, 12
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 8
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 32(sp)
  # implict jump to bb509
bb509:
  LW t4, 32(sp)
  ADD ra, t4, zero
  XOR t0, ra, zero
  SLTU ra, zero, t0
  ADD t4, ra, zero
  SB t4, 28(sp)
  JAL zero, bb363
bb510:
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb509
bb511:
  ADDI t4, zero, 1
  SB t4, 29(sp)
  JAL zero, bb507
bb512:
  LA s6, sum
  LW s8, 0(s6)
  ADDIW s6, s8, 1
  LA s8, sum
  SW s6, 0(s8)
  ADDI s6, zero, 2
  LW t4, 0(sp)
  SLT s8, s6, t4
  XORI s6, s8, 1
  BNE s6, zero, bb518
  # implict jump to bb513
bb513:
  ADDI s0, zero, 2
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 21(sp)
  # implict jump to bb514
bb514:
  LB t4, 21(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb517
  # implict jump to bb515
bb515:
  LA s0, array
  ADDI s1, s0, 8
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 24(sp)
  # implict jump to bb516
bb516:
  LW t4, 24(sp)
  ADD s9, t4, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  ADD t4, s9, zero
  SB t4, 20(sp)
  JAL zero, bb361
bb517:
  ADD t4, zero, zero
  SW t4, 24(sp)
  JAL zero, bb516
bb518:
  ADDI t4, zero, 1
  SB t4, 21(sp)
  JAL zero, bb514
bb519:
  LA s4, sum
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 1
  LW t4, 0(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb525
  # implict jump to bb520
bb520:
  ADDI s0, zero, 1
  SLTI s1, s0, 20
  XORI s0, s1, 1
  ADD t4, s0, zero
  SB t4, 13(sp)
  # implict jump to bb521
bb521:
  LB t4, 13(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb524
  # implict jump to bb522
bb522:
  LA s0, array
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LA s0, array
  LW s1, 0(s0)
  ADD t4, s1, zero
  SW t4, 16(sp)
  # implict jump to bb523
bb523:
  LW t4, 16(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  ADD t4, s6, zero
  SB t4, 12(sp)
  JAL zero, bb359
bb524:
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb523
bb525:
  ADDI t4, zero, 1
  SB t4, 13(sp)
  JAL zero, bb521
bb526:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb357
bb527:
  ADDI t4, zero, 1
  SB t4, 4(sp)
  JAL zero, bb355
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
  BNE s1, zero, bb535
  # implict jump to bb529
bb529:
  SLTI s2, s0, 20
  XORI s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb530
bb530:
  ADD s2, s1, zero
  BNE s2, zero, bb534
  # implict jump to bb531
bb531:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb533
  # implict jump to bb532
bb532:
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
bb533:
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
bb534:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb535:
  ADDI s1, zero, 1
  JAL zero, bb530
