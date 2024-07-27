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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s1, 0(s1)
  ADDIW s1, s1, 3
  LA s2, sum
  SW s1, 0(s2)
  BLT s0, zero, bb5
  # implict jump to bb1
bb1:
  SLTI s1, s0, 20
  XORI s1, s1, 1
  # implict jump to bb2
bb2:
  BNE s1, zero, bb4
  # implict jump to bb3
bb3:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDI s1, zero, 1
  JAL zero, bb2
g:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s1, 0(s1)
  ADDIW s1, s1, 2
  LA s2, sum
  SW s1, 0(s2)
  SLT s1, s0, a1
  XORI s1, s1, 1
  BNE s1, zero, bb13
  # implict jump to bb7
bb7:
  SLTI s1, s0, 20
  XORI s1, s1, 1
  # implict jump to bb8
bb8:
  BNE s1, zero, bb12
  # implict jump to bb9
bb9:
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  SW zero, 0(s1)
  SLTIU s1, s0, 1
  BNE s1, zero, bb11
  # implict jump to bb10
bb10:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb11:
  LA s0, array
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb13:
  ADDI s1, zero, 1
  JAL zero, bb8
main:
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
  SLTI s2, zero, 20
  BNE s2, zero, bb358
  # implict jump to bb15
bb15:
  SLTI s3, zero, 20
  BNE s3, zero, bb179
  # implict jump to bb16
bb16:
  ADDI s4, zero, 1
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  SLTI s6, s5, 20
  BNE s6, zero, bb170
  # implict jump to bb18
bb18:
  ADD s6, zero, zero
  # implict jump to bb19
bb19:
  BNE s6, zero, bb169
  # implict jump to bb20
bb20:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  SLTI s6, zero, 20
  XORI s6, s6, 1
  # implict jump to bb21
bb21:
  BNE s6, zero, bb168
  # implict jump to bb22
bb22:
  LA s7, array
  LW s7, 0(s7)
  # implict jump to bb23
bb23:
  BNE s7, zero, bb163
  # implict jump to bb24
bb24:
  ADD s7, zero, zero
  # implict jump to bb25
bb25:
  BNE s7, zero, bb162
  # implict jump to bb26
bb26:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 2
  SLTI s7, s7, 20
  XORI s7, s7, 1
  # implict jump to bb27
bb27:
  BNE s7, zero, bb161
  # implict jump to bb28
bb28:
  LA s7, array
  LW s7, 8(s7)
  # implict jump to bb29
bb29:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  # implict jump to bb30
bb30:
  BNE s7, zero, bb34
  # implict jump to bb31
bb31:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 3
  SLTI s7, s7, 20
  XORI s7, s7, 1
  # implict jump to bb32
bb32:
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 4
  SLTI s7, s7, 20
  XORI s7, s7, 1
  # implict jump to bb35
bb35:
  BNE s7, zero, bb160
  # implict jump to bb36
bb36:
  LA s8, array
  LW s8, 16(s8)
  # implict jump to bb37
bb37:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  BNE s8, zero, bb159
  # implict jump to bb38
bb38:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 5
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb39
bb39:
  BNE s8, zero, bb158
  # implict jump to bb40
bb40:
  LA s8, array
  LW s8, 20(s8)
  # implict jump to bb41
bb41:
  BNE s8, zero, bb153
  # implict jump to bb42
bb42:
  ADD s8, zero, zero
  # implict jump to bb43
bb43:
  BNE s8, zero, bb148
  # implict jump to bb44
bb44:
  ADD s8, zero, zero
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  BNE s8, zero, bb50
  # implict jump to bb47
bb47:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 8
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb48
bb48:
  BNE s8, zero, bb50
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 9
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb51
bb51:
  BNE s8, zero, bb147
  # implict jump to bb52
bb52:
  LA s8, array
  LW s8, 36(s8)
  # implict jump to bb53
bb53:
  BNE s8, zero, bb142
  # implict jump to bb54
bb54:
  ADD s8, zero, zero
  # implict jump to bb55
bb55:
  BNE s8, zero, bb141
  # implict jump to bb56
bb56:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 11
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb57
bb57:
  BNE s8, zero, bb140
  # implict jump to bb58
bb58:
  LA s8, array
  LW s8, 44(s8)
  # implict jump to bb59
bb59:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb60
bb60:
  BNE s8, zero, bb139
  # implict jump to bb61
bb61:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 12
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb62
bb62:
  BNE s8, zero, bb138
  # implict jump to bb63
bb63:
  LA s8, array
  LW s8, 48(s8)
  # implict jump to bb64
bb64:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb65
bb65:
  BNE s8, zero, bb137
  # implict jump to bb66
bb66:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 13
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb67
bb67:
  BNE s8, zero, bb136
  # implict jump to bb68
bb68:
  LA s8, array
  LW s8, 52(s8)
  # implict jump to bb69
bb69:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  # implict jump to bb70
bb70:
  BNE s8, zero, bb75
  # implict jump to bb71
bb71:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 14
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb72
bb72:
  BNE s8, zero, bb135
  # implict jump to bb73
bb73:
  LA s8, array
  LW s8, 56(s8)
  # implict jump to bb74
bb74:
  BNE s8, zero, bb132
  # implict jump to bb75
bb75:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  # implict jump to bb76
bb76:
  BNE s6, zero, bb131
  # implict jump to bb77
bb77:
  LA s6, array
  LW s6, 0(s6)
  # implict jump to bb78
bb78:
  BNE s6, zero, bb126
  # implict jump to bb79
bb79:
  ADD s6, zero, zero
  # implict jump to bb80
bb80:
  BNE s6, zero, bb121
  # implict jump to bb81
bb81:
  ADD s6, zero, zero
  # implict jump to bb82
bb82:
  BNE s6, zero, bb116
  # implict jump to bb83
bb83:
  ADD s6, zero, zero
  # implict jump to bb84
bb84:
  BNE s6, zero, bb115
  # implict jump to bb85
bb85:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 5
  SLTI s6, s6, 20
  XORI s6, s6, 1
  # implict jump to bb86
bb86:
  BNE s6, zero, bb114
  # implict jump to bb87
bb87:
  LA s6, array
  LW s6, 20(s6)
  # implict jump to bb88
bb88:
  SLTU s6, zero, s6
  # implict jump to bb89
bb89:
  BNE s6, zero, bb113
  # implict jump to bb90
bb90:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 6
  SLTI s6, s6, 20
  XORI s6, s6, 1
  # implict jump to bb91
bb91:
  BNE s6, zero, bb112
  # implict jump to bb92
bb92:
  LA s6, array
  LW s6, 24(s6)
  # implict jump to bb93
bb93:
  BNE s6, zero, bb107
  # implict jump to bb94
bb94:
  ADD s6, zero, zero
  # implict jump to bb95
bb95:
  # implict jump to bb96
bb96:
  BNE s6, zero, bb106
  # implict jump to bb97
bb97:
  LA s6, sum
  LW s6, 0(s6)
  ADDIW s6, s6, 3
  LA s7, sum
  SW s6, 0(s7)
  ADDI s6, zero, 8
  SLTI s6, s6, 20
  XORI s6, s6, 1
  # implict jump to bb98
bb98:
  BNE s6, zero, bb105
  # implict jump to bb99
bb99:
  LA s6, array
  LW s6, 32(s6)
  # implict jump to bb100
bb100:
  SLTU s6, zero, s6
  # implict jump to bb101
bb101:
  BNE s6, zero, bb104
  # implict jump to bb102
bb102:
  ADD s6, zero, zero
  # implict jump to bb103
bb103:
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  ADD a0, s6, zero
  CALL putint
  ADD a0, zero, zero
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
bb104:
  ADDI s6, zero, 1
  JAL zero, bb103
bb105:
  ADD s6, zero, zero
  JAL zero, bb100
bb106:
  ADDI s6, zero, 1
  JAL zero, bb101
bb107:
  LA s7, sum
  LW s7, 0(s7)
  ADDIW s7, s7, 3
  LA s8, sum
  SW s7, 0(s8)
  ADDI s7, zero, 7
  SLTI s7, s7, 20
  XORI s7, s7, 1
  # implict jump to bb108
bb108:
  BNE s7, zero, bb111
  # implict jump to bb109
bb109:
  LA s7, array
  LW s7, 28(s7)
  # implict jump to bb110
bb110:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb95
bb111:
  ADD s7, zero, zero
  JAL zero, bb110
bb112:
  ADD s6, zero, zero
  JAL zero, bb93
bb113:
  ADDI s6, zero, 1
  JAL zero, bb96
bb114:
  ADD s6, zero, zero
  JAL zero, bb88
bb115:
  ADDI s6, zero, 1
  JAL zero, bb89
bb116:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  # implict jump to bb117
bb117:
  BNE s7, zero, bb120
  # implict jump to bb118
bb118:
  LA s7, array
  LW s7, 16(s7)
  # implict jump to bb119
bb119:
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb84
bb120:
  ADD s7, zero, zero
  JAL zero, bb119
bb121:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 3
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb122
bb122:
  BNE s8, zero, bb125
  # implict jump to bb123
bb123:
  LA s8, array
  LW s8, 12(s8)
  # implict jump to bb124
bb124:
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb82
bb125:
  ADD s8, zero, zero
  JAL zero, bb124
bb126:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 2
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb127
bb127:
  BNE s8, zero, bb130
  # implict jump to bb128
bb128:
  LA s8, array
  LW s8, 8(s8)
  # implict jump to bb129
bb129:
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb80
bb130:
  ADD s8, zero, zero
  JAL zero, bb129
bb131:
  ADD s6, zero, zero
  JAL zero, bb78
bb132:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 15
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb133
bb133:
  BNE s8, zero, bb75
  # implict jump to bb134
bb134:
  JAL zero, bb75
bb135:
  ADD s8, zero, zero
  JAL zero, bb74
bb136:
  ADD s8, zero, zero
  JAL zero, bb69
bb137:
  ADDI s8, zero, 1
  JAL zero, bb70
bb138:
  ADD s8, zero, zero
  JAL zero, bb64
bb139:
  ADDI s8, zero, 1
  JAL zero, bb65
bb140:
  ADD s8, zero, zero
  JAL zero, bb59
bb141:
  ADDI s8, zero, 1
  JAL zero, bb60
bb142:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 10
  SLTI s9, s9, 20
  XORI s9, s9, 1
  # implict jump to bb143
bb143:
  BNE s9, zero, bb146
  # implict jump to bb144
bb144:
  LA s9, array
  LW s9, 40(s9)
  # implict jump to bb145
bb145:
  SLTU s9, zero, s9
  XORI s9, s9, 1
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb55
bb146:
  ADD s9, zero, zero
  JAL zero, bb145
bb147:
  ADD s8, zero, zero
  JAL zero, bb53
bb148:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 7
  SLTI s9, s9, 20
  XORI s9, s9, 1
  # implict jump to bb149
bb149:
  BNE s9, zero, bb152
  # implict jump to bb150
bb150:
  LA s9, array
  LW s9, 28(s9)
  # implict jump to bb151
bb151:
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb45
bb152:
  ADD s9, zero, zero
  JAL zero, bb151
bb153:
  LA s9, sum
  LW s9, 0(s9)
  ADDIW s9, s9, 3
  LA s10, sum
  SW s9, 0(s10)
  ADDI s9, zero, 6
  SLTI s9, s9, 20
  XORI s9, s9, 1
  # implict jump to bb154
bb154:
  BNE s9, zero, bb157
  # implict jump to bb155
bb155:
  LA s9, array
  LW s9, 24(s9)
  # implict jump to bb156
bb156:
  SLTU s9, zero, s9
  XORI s9, s9, 1
  SLTU s9, zero, s9
  ADD s8, s9, zero
  JAL zero, bb43
bb157:
  ADD s9, zero, zero
  JAL zero, bb156
bb158:
  ADD s8, zero, zero
  JAL zero, bb41
bb159:
  ADDI s8, zero, 1
  JAL zero, bb46
bb160:
  ADD s8, zero, zero
  JAL zero, bb37
bb161:
  ADD s7, zero, zero
  JAL zero, bb29
bb162:
  ADDI s7, zero, 1
  JAL zero, bb30
bb163:
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 3
  LA s9, sum
  SW s8, 0(s9)
  ADDI s8, zero, 1
  SLTI s8, s8, 20
  XORI s8, s8, 1
  # implict jump to bb164
bb164:
  BNE s8, zero, bb167
  # implict jump to bb165
bb165:
  LA s8, array
  LW s8, 4(s8)
  # implict jump to bb166
bb166:
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb25
bb167:
  ADD s8, zero, zero
  JAL zero, bb166
bb168:
  ADD s7, zero, zero
  JAL zero, bb23
bb169:
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb17
bb170:
  ADDI s7, zero, 1
  SUBW s7, s5, s7
  LA s8, sum
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, sum
  SW s8, 0(s9)
  SLT s8, s7, s5
  XORI s8, s8, 1
  BNE s8, zero, bb178
  # implict jump to bb171
bb171:
  SLTI s8, s7, 20
  XORI s8, s8, 1
  # implict jump to bb172
bb172:
  BNE s8, zero, bb177
  # implict jump to bb173
bb173:
  SLLIW s8, s7, 2
  LA s9, array
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  SLTIU s7, s7, 1
  BNE s7, zero, bb176
  # implict jump to bb174
bb174:
  ADDI s7, zero, 2
  SUBW s7, s5, s7
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb175
bb175:
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb19
bb176:
  LA s8, array
  LW s8, 0(s8)
  ADD s7, s8, zero
  JAL zero, bb175
bb177:
  ADD s7, zero, zero
  JAL zero, bb175
bb178:
  ADDI s8, zero, 1
  JAL zero, bb172
bb179:
  # implict jump to bb180
bb180:
  ADD s3, zero, zero
  # implict jump to bb181
bb181:
  ADD s4, s3, zero
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  SLT s5, zero, s4
  XORI s5, s5, 1
  BNE s5, zero, bb357
  # implict jump to bb182
bb182:
  SLTI s5, zero, 20
  XORI s5, s5, 1
  # implict jump to bb183
bb183:
  BNE s5, zero, bb356
  # implict jump to bb184
bb184:
  LA s5, array
  SW zero, 0(s5)
  ADD s5, zero, zero
  # implict jump to bb185
bb185:
  BNE s5, zero, bb355
  # implict jump to bb186
bb186:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 1
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb354
  # implict jump to bb187
bb187:
  ADDI s5, zero, 1
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb188
bb188:
  BNE s5, zero, bb353
  # implict jump to bb189
bb189:
  LA s5, array
  SW zero, 4(s5)
  LA s5, array
  LW s5, 0(s5)
  # implict jump to bb190
bb190:
  SLTU s5, zero, s5
  # implict jump to bb191
bb191:
  BNE s5, zero, bb352
  # implict jump to bb192
bb192:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 2
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb351
  # implict jump to bb193
bb193:
  ADDI s5, zero, 2
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb194
bb194:
  BNE s5, zero, bb350
  # implict jump to bb195
bb195:
  LA s5, array
  SW zero, 8(s5)
  LA s5, array
  LW s5, 4(s5)
  # implict jump to bb196
bb196:
  SLTU s5, zero, s5
  # implict jump to bb197
bb197:
  BNE s5, zero, bb349
  # implict jump to bb198
bb198:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 3
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb348
  # implict jump to bb199
bb199:
  ADDI s5, zero, 3
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb200
bb200:
  BNE s5, zero, bb347
  # implict jump to bb201
bb201:
  LA s5, array
  SW zero, 12(s5)
  LA s5, array
  LW s5, 8(s5)
  # implict jump to bb202
bb202:
  SLTU s5, zero, s5
  # implict jump to bb203
bb203:
  BNE s5, zero, bb346
  # implict jump to bb204
bb204:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 4
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb345
  # implict jump to bb205
bb205:
  ADDI s5, zero, 4
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb206
bb206:
  BNE s5, zero, bb344
  # implict jump to bb207
bb207:
  LA s5, array
  SW zero, 16(s5)
  LA s5, array
  LW s5, 12(s5)
  # implict jump to bb208
bb208:
  SLTU s5, zero, s5
  # implict jump to bb209
bb209:
  BNE s5, zero, bb343
  # implict jump to bb210
bb210:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 5
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb342
  # implict jump to bb211
bb211:
  ADDI s5, zero, 5
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb212
bb212:
  BNE s5, zero, bb341
  # implict jump to bb213
bb213:
  LA s5, array
  SW zero, 20(s5)
  LA s5, array
  LW s5, 16(s5)
  # implict jump to bb214
bb214:
  SLTU s5, zero, s5
  # implict jump to bb215
bb215:
  BNE s5, zero, bb340
  # implict jump to bb216
bb216:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 6
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb339
  # implict jump to bb217
bb217:
  ADDI s5, zero, 6
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb218
bb218:
  BNE s5, zero, bb338
  # implict jump to bb219
bb219:
  LA s5, array
  SW zero, 24(s5)
  LA s5, array
  LW s5, 20(s5)
  # implict jump to bb220
bb220:
  SLTU s5, zero, s5
  # implict jump to bb221
bb221:
  BNE s5, zero, bb337
  # implict jump to bb222
bb222:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 7
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb336
  # implict jump to bb223
bb223:
  ADDI s5, zero, 7
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb224
bb224:
  BNE s5, zero, bb335
  # implict jump to bb225
bb225:
  LA s5, array
  SW zero, 28(s5)
  LA s5, array
  LW s5, 24(s5)
  # implict jump to bb226
bb226:
  SLTU s5, zero, s5
  # implict jump to bb227
bb227:
  BNE s5, zero, bb334
  # implict jump to bb228
bb228:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 8
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb333
  # implict jump to bb229
bb229:
  ADDI s5, zero, 8
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb230
bb230:
  BNE s5, zero, bb332
  # implict jump to bb231
bb231:
  LA s5, array
  SW zero, 32(s5)
  LA s5, array
  LW s5, 28(s5)
  # implict jump to bb232
bb232:
  SLTU s5, zero, s5
  # implict jump to bb233
bb233:
  BNE s5, zero, bb331
  # implict jump to bb234
bb234:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 9
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb330
  # implict jump to bb235
bb235:
  ADDI s5, zero, 9
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb236
bb236:
  BNE s5, zero, bb329
  # implict jump to bb237
bb237:
  LA s5, array
  SW zero, 36(s5)
  LA s5, array
  LW s5, 32(s5)
  # implict jump to bb238
bb238:
  SLTU s5, zero, s5
  # implict jump to bb239
bb239:
  BNE s5, zero, bb328
  # implict jump to bb240
bb240:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 10
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb327
  # implict jump to bb241
bb241:
  ADDI s5, zero, 10
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb242
bb242:
  BNE s5, zero, bb326
  # implict jump to bb243
bb243:
  LA s5, array
  SW zero, 40(s5)
  LA s5, array
  LW s5, 36(s5)
  # implict jump to bb244
bb244:
  SLTU s5, zero, s5
  # implict jump to bb245
bb245:
  BNE s5, zero, bb325
  # implict jump to bb246
bb246:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 11
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb324
  # implict jump to bb247
bb247:
  ADDI s5, zero, 11
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb248
bb248:
  BNE s5, zero, bb323
  # implict jump to bb249
bb249:
  LA s5, array
  SW zero, 44(s5)
  LA s5, array
  LW s5, 40(s5)
  # implict jump to bb250
bb250:
  SLTU s5, zero, s5
  # implict jump to bb251
bb251:
  BNE s5, zero, bb322
  # implict jump to bb252
bb252:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 12
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb321
  # implict jump to bb253
bb253:
  ADDI s5, zero, 12
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb254
bb254:
  BNE s5, zero, bb320
  # implict jump to bb255
bb255:
  LA s5, array
  SW zero, 48(s5)
  LA s5, array
  LW s5, 44(s5)
  # implict jump to bb256
bb256:
  SLTU s5, zero, s5
  # implict jump to bb257
bb257:
  BNE s5, zero, bb319
  # implict jump to bb258
bb258:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 13
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb318
  # implict jump to bb259
bb259:
  ADDI s5, zero, 13
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb260
bb260:
  BNE s5, zero, bb317
  # implict jump to bb261
bb261:
  LA s5, array
  SW zero, 52(s5)
  LA s5, array
  LW s5, 48(s5)
  # implict jump to bb262
bb262:
  SLTU s5, zero, s5
  # implict jump to bb263
bb263:
  BNE s5, zero, bb316
  # implict jump to bb264
bb264:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 14
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb315
  # implict jump to bb265
bb265:
  ADDI s5, zero, 14
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb266
bb266:
  BNE s5, zero, bb314
  # implict jump to bb267
bb267:
  LA s5, array
  SW zero, 56(s5)
  LA s5, array
  LW s5, 52(s5)
  # implict jump to bb268
bb268:
  SLTU s5, zero, s5
  # implict jump to bb269
bb269:
  BNE s5, zero, bb313
  # implict jump to bb270
bb270:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 15
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb312
  # implict jump to bb271
bb271:
  ADDI s5, zero, 15
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb272
bb272:
  BNE s5, zero, bb311
  # implict jump to bb273
bb273:
  LA s5, array
  SW zero, 60(s5)
  LA s5, array
  LW s5, 56(s5)
  # implict jump to bb274
bb274:
  SLTU s5, zero, s5
  # implict jump to bb275
bb275:
  BNE s5, zero, bb310
  # implict jump to bb276
bb276:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 16
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb309
  # implict jump to bb277
bb277:
  ADDI s5, zero, 16
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb278
bb278:
  BNE s5, zero, bb308
  # implict jump to bb279
bb279:
  LA s5, array
  SW zero, 64(s5)
  LA s5, array
  LW s5, 60(s5)
  # implict jump to bb280
bb280:
  SLTU s5, zero, s5
  # implict jump to bb281
bb281:
  BNE s5, zero, bb307
  # implict jump to bb282
bb282:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 17
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb306
  # implict jump to bb283
bb283:
  ADDI s5, zero, 17
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb284
bb284:
  BNE s5, zero, bb305
  # implict jump to bb285
bb285:
  LA s5, array
  SW zero, 68(s5)
  LA s5, array
  LW s5, 64(s5)
  # implict jump to bb286
bb286:
  SLTU s5, zero, s5
  # implict jump to bb287
bb287:
  BNE s5, zero, bb304
  # implict jump to bb288
bb288:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 18
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb303
  # implict jump to bb289
bb289:
  ADDI s5, zero, 18
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb290
bb290:
  BNE s5, zero, bb302
  # implict jump to bb291
bb291:
  LA s5, array
  SW zero, 72(s5)
  LA s5, array
  LW s5, 68(s5)
  # implict jump to bb292
bb292:
  SLTU s5, zero, s5
  # implict jump to bb293
bb293:
  BNE s5, zero, bb298
  # implict jump to bb294
bb294:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 19
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb301
  # implict jump to bb295
bb295:
  ADDI s5, zero, 19
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb296
bb296:
  BNE s5, zero, bb298
  # implict jump to bb297
bb297:
  LA s5, array
  SW zero, 76(s5)
  # implict jump to bb298
bb298:
  ADDIW s1, s4, 1
  # implict jump to bb299
bb299:
  SLTI s4, s1, 20
  BNE s4, zero, bb300
  JAL zero, bb16
bb300:
  ADD s3, s1, zero
  JAL zero, bb181
bb301:
  ADDI s5, zero, 1
  JAL zero, bb296
bb302:
  ADDI s5, zero, 1
  JAL zero, bb292
bb303:
  ADDI s5, zero, 1
  JAL zero, bb290
bb304:
  ADDI s5, zero, 1
  JAL zero, bb293
bb305:
  ADDI s5, zero, 1
  JAL zero, bb286
bb306:
  ADDI s5, zero, 1
  JAL zero, bb284
bb307:
  ADDI s5, zero, 1
  JAL zero, bb287
bb308:
  ADDI s5, zero, 1
  JAL zero, bb280
bb309:
  ADDI s5, zero, 1
  JAL zero, bb278
bb310:
  ADDI s5, zero, 1
  JAL zero, bb281
bb311:
  ADDI s5, zero, 1
  JAL zero, bb274
bb312:
  ADDI s5, zero, 1
  JAL zero, bb272
bb313:
  ADDI s5, zero, 1
  JAL zero, bb275
bb314:
  ADDI s5, zero, 1
  JAL zero, bb268
bb315:
  ADDI s5, zero, 1
  JAL zero, bb266
bb316:
  ADDI s5, zero, 1
  JAL zero, bb269
bb317:
  ADDI s5, zero, 1
  JAL zero, bb262
bb318:
  ADDI s5, zero, 1
  JAL zero, bb260
bb319:
  ADDI s5, zero, 1
  JAL zero, bb263
bb320:
  ADDI s5, zero, 1
  JAL zero, bb256
bb321:
  ADDI s5, zero, 1
  JAL zero, bb254
bb322:
  ADDI s5, zero, 1
  JAL zero, bb257
bb323:
  ADDI s5, zero, 1
  JAL zero, bb250
bb324:
  ADDI s5, zero, 1
  JAL zero, bb248
bb325:
  ADDI s5, zero, 1
  JAL zero, bb251
bb326:
  ADDI s5, zero, 1
  JAL zero, bb244
bb327:
  ADDI s5, zero, 1
  JAL zero, bb242
bb328:
  ADDI s5, zero, 1
  JAL zero, bb245
bb329:
  ADDI s5, zero, 1
  JAL zero, bb238
bb330:
  ADDI s5, zero, 1
  JAL zero, bb236
bb331:
  ADDI s5, zero, 1
  JAL zero, bb239
bb332:
  ADDI s5, zero, 1
  JAL zero, bb232
bb333:
  ADDI s5, zero, 1
  JAL zero, bb230
bb334:
  ADDI s5, zero, 1
  JAL zero, bb233
bb335:
  ADDI s5, zero, 1
  JAL zero, bb226
bb336:
  ADDI s5, zero, 1
  JAL zero, bb224
bb337:
  ADDI s5, zero, 1
  JAL zero, bb227
bb338:
  ADDI s5, zero, 1
  JAL zero, bb220
bb339:
  ADDI s5, zero, 1
  JAL zero, bb218
bb340:
  ADDI s5, zero, 1
  JAL zero, bb221
bb341:
  ADDI s5, zero, 1
  JAL zero, bb214
bb342:
  ADDI s5, zero, 1
  JAL zero, bb212
bb343:
  ADDI s5, zero, 1
  JAL zero, bb215
bb344:
  ADDI s5, zero, 1
  JAL zero, bb208
bb345:
  ADDI s5, zero, 1
  JAL zero, bb206
bb346:
  ADDI s5, zero, 1
  JAL zero, bb209
bb347:
  ADDI s5, zero, 1
  JAL zero, bb202
bb348:
  ADDI s5, zero, 1
  JAL zero, bb200
bb349:
  ADDI s5, zero, 1
  JAL zero, bb203
bb350:
  ADDI s5, zero, 1
  JAL zero, bb196
bb351:
  ADDI s5, zero, 1
  JAL zero, bb194
bb352:
  ADDI s5, zero, 1
  JAL zero, bb197
bb353:
  ADDI s5, zero, 1
  JAL zero, bb190
bb354:
  ADDI s5, zero, 1
  JAL zero, bb188
bb355:
  ADDI s5, zero, 1
  JAL zero, bb191
bb356:
  ADDI s5, zero, 1
  JAL zero, bb185
bb357:
  ADDI s5, zero, 1
  JAL zero, bb183
bb358:
  # implict jump to bb359
bb359:
  ADD s2, zero, zero
  # implict jump to bb360
bb360:
  ADD s3, s2, zero
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, sum
  SW s4, 0(s5)
  SLT s4, zero, s3
  XORI s4, s4, 1
  BNE s4, zero, bb536
  # implict jump to bb361
bb361:
  SLTI s4, zero, 20
  XORI s4, s4, 1
  # implict jump to bb362
bb362:
  BNE s4, zero, bb535
  # implict jump to bb363
bb363:
  LA s4, array
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDI s4, zero, 1
  # implict jump to bb364
bb364:
  BNE s4, zero, bb528
  # implict jump to bb365
bb365:
  ADD s4, zero, zero
  # implict jump to bb366
bb366:
  BNE s4, zero, bb521
  # implict jump to bb367
bb367:
  ADD s4, zero, zero
  # implict jump to bb368
bb368:
  BNE s4, zero, bb514
  # implict jump to bb369
bb369:
  ADD s4, zero, zero
  # implict jump to bb370
bb370:
  BNE s4, zero, bb507
  # implict jump to bb371
bb371:
  ADD s4, zero, zero
  # implict jump to bb372
bb372:
  BNE s4, zero, bb500
  # implict jump to bb373
bb373:
  ADD s4, zero, zero
  # implict jump to bb374
bb374:
  BNE s4, zero, bb493
  # implict jump to bb375
bb375:
  ADD s4, zero, zero
  # implict jump to bb376
bb376:
  BNE s4, zero, bb486
  # implict jump to bb377
bb377:
  ADD s4, zero, zero
  # implict jump to bb378
bb378:
  BNE s4, zero, bb479
  # implict jump to bb379
bb379:
  ADD s4, zero, zero
  # implict jump to bb380
bb380:
  BNE s4, zero, bb472
  # implict jump to bb381
bb381:
  ADD s4, zero, zero
  # implict jump to bb382
bb382:
  BNE s4, zero, bb465
  # implict jump to bb383
bb383:
  ADD s4, zero, zero
  # implict jump to bb384
bb384:
  BNE s4, zero, bb458
  # implict jump to bb385
bb385:
  ADD s4, zero, zero
  # implict jump to bb386
bb386:
  BNE s4, zero, bb451
  # implict jump to bb387
bb387:
  ADD s4, zero, zero
  # implict jump to bb388
bb388:
  BNE s4, zero, bb444
  # implict jump to bb389
bb389:
  ADD s4, zero, zero
  # implict jump to bb390
bb390:
  BNE s4, zero, bb437
  # implict jump to bb391
bb391:
  ADD s4, zero, zero
  # implict jump to bb392
bb392:
  BNE s4, zero, bb430
  # implict jump to bb393
bb393:
  ADD s4, zero, zero
  # implict jump to bb394
bb394:
  BNE s4, zero, bb423
  # implict jump to bb395
bb395:
  ADD s4, zero, zero
  # implict jump to bb396
bb396:
  BNE s4, zero, bb416
  # implict jump to bb397
bb397:
  ADD s4, zero, zero
  # implict jump to bb398
bb398:
  BNE s4, zero, bb409
  # implict jump to bb399
bb399:
  ADD s4, zero, zero
  # implict jump to bb400
bb400:
  BNE s4, zero, bb404
  # implict jump to bb401
bb401:
  ADDIW s0, s3, 1
  # implict jump to bb402
bb402:
  SLTI s3, s0, 20
  BNE s3, zero, bb403
  JAL zero, bb15
bb403:
  ADD s2, s0, zero
  JAL zero, bb360
bb404:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, sum
  SW s4, 0(s5)
  ADDI s4, zero, 19
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb408
  # implict jump to bb405
bb405:
  ADDI s4, zero, 19
  SLTI s4, s4, 20
  XORI s4, s4, 1
  # implict jump to bb406
bb406:
  BNE s4, zero, bb401
  # implict jump to bb407
bb407:
  LA s4, array
  ADDI s5, zero, 1
  SW s5, 76(s4)
  JAL zero, bb401
bb408:
  ADDI s4, zero, 1
  JAL zero, bb406
bb409:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 18
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb415
  # implict jump to bb410
bb410:
  ADDI s5, zero, 18
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb411
bb411:
  BNE s5, zero, bb414
  # implict jump to bb412
bb412:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 72(s5)
  LA s5, array
  LW s5, 68(s5)
  # implict jump to bb413
bb413:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb400
bb414:
  ADD s5, zero, zero
  JAL zero, bb413
bb415:
  ADDI s5, zero, 1
  JAL zero, bb411
bb416:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 17
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb422
  # implict jump to bb417
bb417:
  ADDI s5, zero, 17
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb418
bb418:
  BNE s5, zero, bb421
  # implict jump to bb419
bb419:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 68(s5)
  LA s5, array
  LW s5, 64(s5)
  # implict jump to bb420
bb420:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb398
bb421:
  ADD s5, zero, zero
  JAL zero, bb420
bb422:
  ADDI s5, zero, 1
  JAL zero, bb418
bb423:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 16
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb429
  # implict jump to bb424
bb424:
  ADDI s5, zero, 16
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb425
bb425:
  BNE s5, zero, bb428
  # implict jump to bb426
bb426:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 64(s5)
  LA s5, array
  LW s5, 60(s5)
  # implict jump to bb427
bb427:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb396
bb428:
  ADD s5, zero, zero
  JAL zero, bb427
bb429:
  ADDI s5, zero, 1
  JAL zero, bb425
bb430:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 15
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb436
  # implict jump to bb431
bb431:
  ADDI s5, zero, 15
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb432
bb432:
  BNE s5, zero, bb435
  # implict jump to bb433
bb433:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 60(s5)
  LA s5, array
  LW s5, 56(s5)
  # implict jump to bb434
bb434:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb394
bb435:
  ADD s5, zero, zero
  JAL zero, bb434
bb436:
  ADDI s5, zero, 1
  JAL zero, bb432
bb437:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 14
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb443
  # implict jump to bb438
bb438:
  ADDI s5, zero, 14
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb439
bb439:
  BNE s5, zero, bb442
  # implict jump to bb440
bb440:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 56(s5)
  LA s5, array
  LW s5, 52(s5)
  # implict jump to bb441
bb441:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb392
bb442:
  ADD s5, zero, zero
  JAL zero, bb441
bb443:
  ADDI s5, zero, 1
  JAL zero, bb439
bb444:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 13
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb450
  # implict jump to bb445
bb445:
  ADDI s5, zero, 13
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb446
bb446:
  BNE s5, zero, bb449
  # implict jump to bb447
bb447:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 52(s5)
  LA s5, array
  LW s5, 48(s5)
  # implict jump to bb448
bb448:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb390
bb449:
  ADD s5, zero, zero
  JAL zero, bb448
bb450:
  ADDI s5, zero, 1
  JAL zero, bb446
bb451:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 12
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb457
  # implict jump to bb452
bb452:
  ADDI s5, zero, 12
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb453
bb453:
  BNE s5, zero, bb456
  # implict jump to bb454
bb454:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 48(s5)
  LA s5, array
  LW s5, 44(s5)
  # implict jump to bb455
bb455:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb388
bb456:
  ADD s5, zero, zero
  JAL zero, bb455
bb457:
  ADDI s5, zero, 1
  JAL zero, bb453
bb458:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 11
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb464
  # implict jump to bb459
bb459:
  ADDI s5, zero, 11
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb460
bb460:
  BNE s5, zero, bb463
  # implict jump to bb461
bb461:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 44(s5)
  LA s5, array
  LW s5, 40(s5)
  # implict jump to bb462
bb462:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb386
bb463:
  ADD s5, zero, zero
  JAL zero, bb462
bb464:
  ADDI s5, zero, 1
  JAL zero, bb460
bb465:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 10
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb471
  # implict jump to bb466
bb466:
  ADDI s5, zero, 10
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb467
bb467:
  BNE s5, zero, bb470
  # implict jump to bb468
bb468:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 40(s5)
  LA s5, array
  LW s5, 36(s5)
  # implict jump to bb469
bb469:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb384
bb470:
  ADD s5, zero, zero
  JAL zero, bb469
bb471:
  ADDI s5, zero, 1
  JAL zero, bb467
bb472:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 9
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb478
  # implict jump to bb473
bb473:
  ADDI s5, zero, 9
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb474
bb474:
  BNE s5, zero, bb477
  # implict jump to bb475
bb475:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 36(s5)
  LA s5, array
  LW s5, 32(s5)
  # implict jump to bb476
bb476:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb382
bb477:
  ADD s5, zero, zero
  JAL zero, bb476
bb478:
  ADDI s5, zero, 1
  JAL zero, bb474
bb479:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 8
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb485
  # implict jump to bb480
bb480:
  ADDI s5, zero, 8
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb481
bb481:
  BNE s5, zero, bb484
  # implict jump to bb482
bb482:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 32(s5)
  LA s5, array
  LW s5, 28(s5)
  # implict jump to bb483
bb483:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb380
bb484:
  ADD s5, zero, zero
  JAL zero, bb483
bb485:
  ADDI s5, zero, 1
  JAL zero, bb481
bb486:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 7
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb492
  # implict jump to bb487
bb487:
  ADDI s5, zero, 7
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb488
bb488:
  BNE s5, zero, bb491
  # implict jump to bb489
bb489:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 28(s5)
  LA s5, array
  LW s5, 24(s5)
  # implict jump to bb490
bb490:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb378
bb491:
  ADD s5, zero, zero
  JAL zero, bb490
bb492:
  ADDI s5, zero, 1
  JAL zero, bb488
bb493:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 6
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb499
  # implict jump to bb494
bb494:
  ADDI s5, zero, 6
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb495
bb495:
  BNE s5, zero, bb498
  # implict jump to bb496
bb496:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 24(s5)
  LA s5, array
  LW s5, 20(s5)
  # implict jump to bb497
bb497:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb376
bb498:
  ADD s5, zero, zero
  JAL zero, bb497
bb499:
  ADDI s5, zero, 1
  JAL zero, bb495
bb500:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 5
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb506
  # implict jump to bb501
bb501:
  ADDI s5, zero, 5
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb502
bb502:
  BNE s5, zero, bb505
  # implict jump to bb503
bb503:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 20(s5)
  LA s5, array
  LW s5, 16(s5)
  # implict jump to bb504
bb504:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb374
bb505:
  ADD s5, zero, zero
  JAL zero, bb504
bb506:
  ADDI s5, zero, 1
  JAL zero, bb502
bb507:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 4
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb513
  # implict jump to bb508
bb508:
  ADDI s5, zero, 4
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb509
bb509:
  BNE s5, zero, bb512
  # implict jump to bb510
bb510:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 16(s5)
  LA s5, array
  LW s5, 12(s5)
  # implict jump to bb511
bb511:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb372
bb512:
  ADD s5, zero, zero
  JAL zero, bb511
bb513:
  ADDI s5, zero, 1
  JAL zero, bb509
bb514:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 3
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb520
  # implict jump to bb515
bb515:
  ADDI s5, zero, 3
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb516
bb516:
  BNE s5, zero, bb519
  # implict jump to bb517
bb517:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 12(s5)
  LA s5, array
  LW s5, 8(s5)
  # implict jump to bb518
bb518:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb370
bb519:
  ADD s5, zero, zero
  JAL zero, bb518
bb520:
  ADDI s5, zero, 1
  JAL zero, bb516
bb521:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 2
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb527
  # implict jump to bb522
bb522:
  ADDI s5, zero, 2
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb523
bb523:
  BNE s5, zero, bb526
  # implict jump to bb524
bb524:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 8(s5)
  LA s5, array
  LW s5, 4(s5)
  # implict jump to bb525
bb525:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb368
bb526:
  ADD s5, zero, zero
  JAL zero, bb525
bb527:
  ADDI s5, zero, 1
  JAL zero, bb523
bb528:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, sum
  SW s5, 0(s6)
  ADDI s5, zero, 1
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb534
  # implict jump to bb529
bb529:
  ADDI s5, zero, 1
  SLTI s5, s5, 20
  XORI s5, s5, 1
  # implict jump to bb530
bb530:
  BNE s5, zero, bb533
  # implict jump to bb531
bb531:
  LA s5, array
  ADDI s6, zero, 1
  SW s6, 4(s5)
  LA s5, array
  LW s5, 0(s5)
  # implict jump to bb532
bb532:
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb366
bb533:
  ADD s5, zero, zero
  JAL zero, bb532
bb534:
  ADDI s5, zero, 1
  JAL zero, bb530
bb535:
  ADD s4, zero, zero
  JAL zero, bb364
bb536:
  ADDI s4, zero, 1
  JAL zero, bb362
f:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, sum
  SW s1, 0(s2)
  SLT s1, s0, a1
  XORI s1, s1, 1
  BNE s1, zero, bb544
  # implict jump to bb538
bb538:
  SLTI s1, s0, 20
  XORI s1, s1, 1
  # implict jump to bb539
bb539:
  BNE s1, zero, bb543
  # implict jump to bb540
bb540:
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  ADDI s2, zero, 1
  SW s2, 0(s1)
  SLTIU s1, s0, 1
  BNE s1, zero, bb542
  # implict jump to bb541
bb541:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb542:
  LA s0, array
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb543:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb544:
  ADDI s1, zero, 1
  JAL zero, bb539
