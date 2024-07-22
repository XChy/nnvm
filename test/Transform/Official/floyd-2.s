.global mem_move
.global floyd
.global main
.global getvalue
.section .bss
c:
.space 8388608
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608

.section .data




maxlen:
.word 0x00200000
.section .text
mem_move:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  BLT s1, a2, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  SLLIW s2, s1, 2
  ADD s3, a1, s2
  ADD s2, a0, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
floyd:
  ADDI sp, sp, -112
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
  SD s11, 96(sp)
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  BLT s1, a2, bb135
  # implict jump to bb6
bb6:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  BLT s5, a2, bb12
  # implict jump to bb8
bb8:
  MULW s8, a2, a2
  ADD s9, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  BLT s10, s8, bb11
  # implict jump to bb10
bb10:
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
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb11:
  SLLIW s11, s10, 2
  ADD t0, a1, s11
  LA t1, temp
  ADD s11, t1, s11
  LW s11, 0(s11)
  SW s11, 0(t0)
  ADDIW s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb9
bb12:
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  ADD s9, s6, zero
  ADD s10, s8, zero
  ADD s11, s7, zero
  BLT s10, a2, bb15
  # implict jump to bb14
bb14:
  ADDIW t0, s5, 1
  ADD s2, s11, zero
  ADD s3, s9, zero
  ADD s4, t0, zero
  JAL zero, bb7
bb15:
  ADD s2, s11, zero
  ADD s3, zero, zero
  # implict jump to bb16
bb16:
  ADD s4, s3, zero
  ADD s9, s2, zero
  BLT s4, a2, bb18
  # implict jump to bb17
bb17:
  ADDIW s11, s10, 1
  ADD s7, s9, zero
  ADD s8, s11, zero
  ADD s6, s4, zero
  JAL zero, bb13
bb18:
  BLT s10, zero, bb134
  # implict jump to bb19
bb19:
  SLT s6, s10, a2
  XORI s6, s6, 1
  # implict jump to bb20
bb20:
  BNE s6, zero, bb133
  # implict jump to bb21
bb21:
  SLT s6, s5, zero
  # implict jump to bb22
bb22:
  BNE s6, zero, bb132
  # implict jump to bb23
bb23:
  SLT s6, s5, a2
  XORI s6, s6, 1
  # implict jump to bb24
bb24:
  BNE s6, zero, bb131
  # implict jump to bb25
bb25:
  MULW s6, s10, a2
  ADDW s6, s6, s5
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW s6, 0(s6)
  # implict jump to bb26
bb26:
  SLT s6, s6, zero
  XORI s6, s6, 1
  BNE s6, zero, bb118
  # implict jump to bb27
bb27:
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  BNE s6, zero, bb30
  # implict jump to bb29
bb29:
  ADDIW s4, s4, 1
  ADD s2, s6, zero
  ADD s3, s4, zero
  JAL zero, bb16
bb30:
  BLT s10, zero, bb117
  # implict jump to bb31
bb31:
  SLT s7, s10, a2
  XORI s7, s7, 1
  # implict jump to bb32
bb32:
  BNE s7, zero, bb116
  # implict jump to bb33
bb33:
  SLT s7, s4, zero
  # implict jump to bb34
bb34:
  BNE s7, zero, bb115
  # implict jump to bb35
bb35:
  SLT s7, s4, a2
  XORI s7, s7, 1
  # implict jump to bb36
bb36:
  BNE s7, zero, bb114
  # implict jump to bb37
bb37:
  MULW s7, s10, a2
  ADDW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb38
bb38:
  BLT s7, zero, bb89
  # implict jump to bb39
bb39:
  MULW s7, s10, a2
  ADDW s8, s7, s4
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  LW s9, 0(s8)
  BLT s10, zero, bb88
  # implict jump to bb40
bb40:
  SLT s11, s10, a2
  XORI s11, s11, 1
  # implict jump to bb41
bb41:
  BNE s11, zero, bb87
  # implict jump to bb42
bb42:
  SLT s11, s5, zero
  # implict jump to bb43
bb43:
  BNE s11, zero, bb86
  # implict jump to bb44
bb44:
  SLT s11, s5, a2
  XORI s11, s11, 1
  # implict jump to bb45
bb45:
  BNE s11, zero, bb85
  # implict jump to bb46
bb46:
  ADDW s11, s7, s5
  SLLIW s11, s11, 2
  LA t0, temp
  ADD s11, t0, s11
  LW s11, 0(s11)
  # implict jump to bb47
bb47:
  SLT t0, s5, zero
  BLT s5, zero, bb84
  # implict jump to bb48
bb48:
  SLT t1, s5, a2
  XORI t1, t1, 1
  # implict jump to bb49
bb49:
  BNE t1, zero, bb83
  # implict jump to bb50
bb50:
  SLT t1, s4, zero
  # implict jump to bb51
bb51:
  BNE t1, zero, bb82
  # implict jump to bb52
bb52:
  SLT t1, s4, a2
  XORI t1, t1, 1
  # implict jump to bb53
bb53:
  BNE t1, zero, bb81
  # implict jump to bb54
bb54:
  MULW t1, s5, a2
  ADDW t1, t1, s4
  SLLIW t1, t1, 2
  LA t2, temp
  ADD t1, t2, t1
  LW t1, 0(t1)
  # implict jump to bb55
bb55:
  ADDW s11, s11, t1
  BLT s11, s9, bb56
  JAL zero, bb29
bb56:
  BLT s10, zero, bb80
  # implict jump to bb57
bb57:
  SLT s9, s10, a2
  XORI s9, s9, 1
  # implict jump to bb58
bb58:
  BNE s9, zero, bb79
  # implict jump to bb59
bb59:
  ADD s9, t0, zero
  # implict jump to bb60
bb60:
  BNE s9, zero, bb78
  # implict jump to bb61
bb61:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb62
bb62:
  BNE s9, zero, bb77
  # implict jump to bb63
bb63:
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s9, temp
  ADD s7, s9, s7
  LW s7, 0(s7)
  # implict jump to bb64
bb64:
  BLT s5, zero, bb76
  # implict jump to bb65
bb65:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb66
bb66:
  BNE s9, zero, bb75
  # implict jump to bb67
bb67:
  SLT s9, s4, zero
  # implict jump to bb68
bb68:
  BNE s9, zero, bb74
  # implict jump to bb69
bb69:
  SLT s9, s4, a2
  XORI s9, s9, 1
  # implict jump to bb70
bb70:
  BNE s9, zero, bb73
  # implict jump to bb71
bb71:
  MULW s9, s5, a2
  ADDW s9, s9, s4
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb72
bb72:
  ADDW s7, s7, s9
  SW s7, 0(s8)
  JAL zero, bb29
bb73:
  ADDI s9, zero, -1
  JAL zero, bb72
bb74:
  ADDI s9, zero, 1
  JAL zero, bb70
bb75:
  ADDI s9, zero, 1
  JAL zero, bb68
bb76:
  ADDI s9, zero, 1
  JAL zero, bb66
bb77:
  ADDI s7, zero, -1
  JAL zero, bb64
bb78:
  ADDI s9, zero, 1
  JAL zero, bb62
bb79:
  ADDI s9, zero, 1
  JAL zero, bb60
bb80:
  ADDI s9, zero, 1
  JAL zero, bb58
bb81:
  ADDI t1, zero, -1
  JAL zero, bb55
bb82:
  ADDI t1, zero, 1
  JAL zero, bb53
bb83:
  ADDI t1, zero, 1
  JAL zero, bb51
bb84:
  ADDI t1, zero, 1
  JAL zero, bb49
bb85:
  ADDI s11, zero, -1
  JAL zero, bb47
bb86:
  ADDI s11, zero, 1
  JAL zero, bb45
bb87:
  ADDI s11, zero, 1
  JAL zero, bb43
bb88:
  ADDI s11, zero, 1
  JAL zero, bb41
bb89:
  MULW s7, s10, a2
  ADDW s8, s7, s4
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  BLT s10, zero, bb113
  # implict jump to bb90
bb90:
  SLT s9, s10, a2
  XORI s9, s9, 1
  # implict jump to bb91
bb91:
  BNE s9, zero, bb112
  # implict jump to bb92
bb92:
  SLT s9, s5, zero
  # implict jump to bb93
bb93:
  BNE s9, zero, bb111
  # implict jump to bb94
bb94:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb95
bb95:
  BNE s9, zero, bb110
  # implict jump to bb96
bb96:
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s9, temp
  ADD s7, s9, s7
  LW s7, 0(s7)
  # implict jump to bb97
bb97:
  BLT s5, zero, bb109
  # implict jump to bb98
bb98:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb99
bb99:
  BNE s9, zero, bb108
  # implict jump to bb100
bb100:
  SLT s9, s4, zero
  # implict jump to bb101
bb101:
  BNE s9, zero, bb107
  # implict jump to bb102
bb102:
  SLT s9, s4, a2
  XORI s9, s9, 1
  # implict jump to bb103
bb103:
  BNE s9, zero, bb106
  # implict jump to bb104
bb104:
  MULW s9, s5, a2
  ADDW s9, s9, s4
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb105
bb105:
  ADDW s7, s7, s9
  SW s7, 0(s8)
  JAL zero, bb29
bb106:
  ADDI s9, zero, -1
  JAL zero, bb105
bb107:
  ADDI s9, zero, 1
  JAL zero, bb103
bb108:
  ADDI s9, zero, 1
  JAL zero, bb101
bb109:
  ADDI s9, zero, 1
  JAL zero, bb99
bb110:
  ADDI s7, zero, -1
  JAL zero, bb97
bb111:
  ADDI s9, zero, 1
  JAL zero, bb95
bb112:
  ADDI s9, zero, 1
  JAL zero, bb93
bb113:
  ADDI s9, zero, 1
  JAL zero, bb91
bb114:
  ADDI s7, zero, -1
  JAL zero, bb38
bb115:
  ADDI s7, zero, 1
  JAL zero, bb36
bb116:
  ADDI s7, zero, 1
  JAL zero, bb34
bb117:
  ADDI s7, zero, 1
  JAL zero, bb32
bb118:
  BLT s5, zero, bb130
  # implict jump to bb119
bb119:
  SLT s7, s5, a2
  XORI s7, s7, 1
  # implict jump to bb120
bb120:
  BNE s7, zero, bb129
  # implict jump to bb121
bb121:
  SLT s7, s4, zero
  # implict jump to bb122
bb122:
  BNE s7, zero, bb128
  # implict jump to bb123
bb123:
  SLT s7, s4, a2
  XORI s7, s7, 1
  # implict jump to bb124
bb124:
  BNE s7, zero, bb127
  # implict jump to bb125
bb125:
  MULW s7, s5, a2
  ADDW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb126
bb126:
  SLT s7, s7, zero
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb28
bb127:
  ADDI s7, zero, -1
  JAL zero, bb126
bb128:
  ADDI s7, zero, 1
  JAL zero, bb124
bb129:
  ADDI s7, zero, 1
  JAL zero, bb122
bb130:
  ADDI s7, zero, 1
  JAL zero, bb120
bb131:
  ADDI s6, zero, -1
  JAL zero, bb26
bb132:
  ADDI s6, zero, 1
  JAL zero, bb24
bb133:
  ADDI s6, zero, 1
  JAL zero, bb22
bb134:
  ADDI s6, zero, 1
  JAL zero, bb20
bb135:
  ADD s2, zero, zero
  # implict jump to bb136
bb136:
  ADD s3, s2, zero
  BLT s3, a2, bb138
  # implict jump to bb137
bb137:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb5
bb138:
  MULW s0, s3, a2
  ADDW s0, s0, s1
  SLLIW s0, s0, 2
  LA s4, temp
  ADD s4, s4, s0
  BLT s3, zero, bb150
  # implict jump to bb139
bb139:
  SLT s5, s3, a2
  XORI s5, s5, 1
  # implict jump to bb140
bb140:
  BNE s5, zero, bb149
  # implict jump to bb141
bb141:
  SLT s5, s1, zero
  # implict jump to bb142
bb142:
  BNE s5, zero, bb148
  # implict jump to bb143
bb143:
  SLT s5, s1, a2
  XORI s5, s5, 1
  # implict jump to bb144
bb144:
  BNE s5, zero, bb147
  # implict jump to bb145
bb145:
  ADD s0, a0, s0
  LW s0, 0(s0)
  # implict jump to bb146
bb146:
  SW s0, 0(s4)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb136
bb147:
  ADDI s0, zero, -1
  JAL zero, bb146
bb148:
  ADDI s5, zero, 1
  JAL zero, bb144
bb149:
  ADDI s5, zero, 1
  JAL zero, bb142
bb150:
  ADDI s5, zero, 1
  JAL zero, bb140
main:
  ADDI sp, sp, -112
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s1, zero, zero
  # implict jump to bb152
bb152:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT t4, s0, bb282
  # implict jump to bb153
bb153:
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb154
bb154:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  BLT s6, s0, bb159
  # implict jump to bb155
bb155:
  MULW s9, s0, s0
  ADD s10, zero, zero
  # implict jump to bb156
bb156:
  ADD s11, s10, zero
  BLT s11, s9, bb158
  # implict jump to bb157
bb157:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s9, zero
  LA s2, dst
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb158:
  SLLIW s2, s11, 2
  LA ra, dst
  ADD ra, ra, s2
  LA t0, temp
  ADD s2, t0, s2
  LW s2, 0(s2)
  SW s2, 0(ra)
  ADDIW s2, s11, 1
  ADD s10, s2, zero
  JAL zero, bb156
bb159:
  ADD s2, s8, zero
  ADD s8, zero, zero
  # implict jump to bb160
bb160:
  ADD s9, s7, zero
  ADD s10, s8, zero
  ADD s11, s2, zero
  BLT s10, s0, bb162
  # implict jump to bb161
bb161:
  ADDIW ra, s6, 1
  ADD s3, s11, zero
  ADD s4, s9, zero
  ADD s5, ra, zero
  JAL zero, bb154
bb162:
  ADD s3, s11, zero
  ADD s4, zero, zero
  # implict jump to bb163
bb163:
  ADD s5, s4, zero
  ADD s9, s3, zero
  BLT s5, s0, bb165
  # implict jump to bb164
bb164:
  ADDIW s11, s10, 1
  ADD s2, s9, zero
  ADD s8, s11, zero
  ADD s7, s5, zero
  JAL zero, bb160
bb165:
  BLT s10, zero, bb281
  # implict jump to bb166
bb166:
  SLT s2, s10, s0
  XORI s2, s2, 1
  # implict jump to bb167
bb167:
  BNE s2, zero, bb280
  # implict jump to bb168
bb168:
  SLT s2, s6, zero
  # implict jump to bb169
bb169:
  BNE s2, zero, bb279
  # implict jump to bb170
bb170:
  SLT s2, s6, s0
  XORI s2, s2, 1
  # implict jump to bb171
bb171:
  BNE s2, zero, bb278
  # implict jump to bb172
bb172:
  MULW s2, s10, s0
  ADDW s2, s2, s6
  SLLIW s2, s2, 2
  LA s7, temp
  ADD s2, s7, s2
  LW s2, 0(s2)
  # implict jump to bb173
bb173:
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb265
  # implict jump to bb174
bb174:
  ADD s2, zero, zero
  # implict jump to bb175
bb175:
  BNE s2, zero, bb177
  # implict jump to bb176
bb176:
  ADDIW s5, s5, 1
  ADD s3, s2, zero
  ADD s4, s5, zero
  JAL zero, bb163
bb177:
  BLT s10, zero, bb264
  # implict jump to bb178
bb178:
  SLT s7, s10, s0
  XORI s7, s7, 1
  # implict jump to bb179
bb179:
  BNE s7, zero, bb263
  # implict jump to bb180
bb180:
  SLT s7, s5, zero
  # implict jump to bb181
bb181:
  BNE s7, zero, bb262
  # implict jump to bb182
bb182:
  SLT s7, s5, s0
  XORI s7, s7, 1
  # implict jump to bb183
bb183:
  BNE s7, zero, bb261
  # implict jump to bb184
bb184:
  MULW s7, s10, s0
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb185
bb185:
  BLT s7, zero, bb236
  # implict jump to bb186
bb186:
  MULW s7, s10, s0
  ADDW s8, s7, s5
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  LW s9, 0(s8)
  BLT s10, zero, bb235
  # implict jump to bb187
bb187:
  SLT s11, s10, s0
  XORI s11, s11, 1
  # implict jump to bb188
bb188:
  BNE s11, zero, bb234
  # implict jump to bb189
bb189:
  SLT s11, s6, zero
  # implict jump to bb190
bb190:
  BNE s11, zero, bb233
  # implict jump to bb191
bb191:
  SLT s11, s6, s0
  XORI s11, s11, 1
  # implict jump to bb192
bb192:
  BNE s11, zero, bb232
  # implict jump to bb193
bb193:
  ADDW s11, s7, s6
  SLLIW s11, s11, 2
  LA ra, temp
  ADD s11, ra, s11
  LW s11, 0(s11)
  # implict jump to bb194
bb194:
  SLT ra, s6, zero
  BLT s6, zero, bb231
  # implict jump to bb195
bb195:
  SLT t0, s6, s0
  XORI t0, t0, 1
  # implict jump to bb196
bb196:
  BNE t0, zero, bb230
  # implict jump to bb197
bb197:
  SLT t0, s5, zero
  # implict jump to bb198
bb198:
  BNE t0, zero, bb229
  # implict jump to bb199
bb199:
  SLT t0, s5, s0
  XORI t0, t0, 1
  # implict jump to bb200
bb200:
  BNE t0, zero, bb228
  # implict jump to bb201
bb201:
  MULW t0, s6, s0
  ADDW t0, t0, s5
  SLLIW t0, t0, 2
  LA t1, temp
  ADD t0, t1, t0
  LW t0, 0(t0)
  # implict jump to bb202
bb202:
  ADDW s11, s11, t0
  BLT s11, s9, bb203
  JAL zero, bb176
bb203:
  BLT s10, zero, bb227
  # implict jump to bb204
bb204:
  SLT s9, s10, s0
  XORI s9, s9, 1
  # implict jump to bb205
bb205:
  BNE s9, zero, bb226
  # implict jump to bb206
bb206:
  ADD s9, ra, zero
  # implict jump to bb207
bb207:
  BNE s9, zero, bb225
  # implict jump to bb208
bb208:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb209
bb209:
  BNE s9, zero, bb224
  # implict jump to bb210
bb210:
  ADDW s7, s7, s6
  SLLIW s7, s7, 2
  LA s9, temp
  ADD s7, s9, s7
  LW s7, 0(s7)
  # implict jump to bb211
bb211:
  BLT s6, zero, bb223
  # implict jump to bb212
bb212:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb213
bb213:
  BNE s9, zero, bb222
  # implict jump to bb214
bb214:
  SLT s9, s5, zero
  # implict jump to bb215
bb215:
  BNE s9, zero, bb221
  # implict jump to bb216
bb216:
  SLT s9, s5, s0
  XORI s9, s9, 1
  # implict jump to bb217
bb217:
  BNE s9, zero, bb220
  # implict jump to bb218
bb218:
  MULW s9, s6, s0
  ADDW s9, s9, s5
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb219
bb219:
  ADDW s7, s7, s9
  SW s7, 0(s8)
  JAL zero, bb176
bb220:
  ADDI s9, zero, -1
  JAL zero, bb219
bb221:
  ADDI s9, zero, 1
  JAL zero, bb217
bb222:
  ADDI s9, zero, 1
  JAL zero, bb215
bb223:
  ADDI s9, zero, 1
  JAL zero, bb213
bb224:
  ADDI s7, zero, -1
  JAL zero, bb211
bb225:
  ADDI s9, zero, 1
  JAL zero, bb209
bb226:
  ADDI s9, zero, 1
  JAL zero, bb207
bb227:
  ADDI s9, zero, 1
  JAL zero, bb205
bb228:
  ADDI t0, zero, -1
  JAL zero, bb202
bb229:
  ADDI t0, zero, 1
  JAL zero, bb200
bb230:
  ADDI t0, zero, 1
  JAL zero, bb198
bb231:
  ADDI t0, zero, 1
  JAL zero, bb196
bb232:
  ADDI s11, zero, -1
  JAL zero, bb194
bb233:
  ADDI s11, zero, 1
  JAL zero, bb192
bb234:
  ADDI s11, zero, 1
  JAL zero, bb190
bb235:
  ADDI s11, zero, 1
  JAL zero, bb188
bb236:
  MULW s7, s10, s0
  ADDW s8, s7, s5
  SLLIW s8, s8, 2
  LA s9, temp
  ADD s8, s9, s8
  BLT s10, zero, bb260
  # implict jump to bb237
bb237:
  SLT s9, s10, s0
  XORI s9, s9, 1
  # implict jump to bb238
bb238:
  BNE s9, zero, bb259
  # implict jump to bb239
bb239:
  SLT s9, s6, zero
  # implict jump to bb240
bb240:
  BNE s9, zero, bb258
  # implict jump to bb241
bb241:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb242
bb242:
  BNE s9, zero, bb257
  # implict jump to bb243
bb243:
  ADDW s7, s7, s6
  SLLIW s7, s7, 2
  LA s9, temp
  ADD s7, s9, s7
  LW s7, 0(s7)
  # implict jump to bb244
bb244:
  BLT s6, zero, bb256
  # implict jump to bb245
bb245:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb246
bb246:
  BNE s9, zero, bb255
  # implict jump to bb247
bb247:
  SLT s9, s5, zero
  # implict jump to bb248
bb248:
  BNE s9, zero, bb254
  # implict jump to bb249
bb249:
  SLT s9, s5, s0
  XORI s9, s9, 1
  # implict jump to bb250
bb250:
  BNE s9, zero, bb253
  # implict jump to bb251
bb251:
  MULW s9, s6, s0
  ADDW s9, s9, s5
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb252
bb252:
  ADDW s7, s7, s9
  SW s7, 0(s8)
  JAL zero, bb176
bb253:
  ADDI s9, zero, -1
  JAL zero, bb252
bb254:
  ADDI s9, zero, 1
  JAL zero, bb250
bb255:
  ADDI s9, zero, 1
  JAL zero, bb248
bb256:
  ADDI s9, zero, 1
  JAL zero, bb246
bb257:
  ADDI s7, zero, -1
  JAL zero, bb244
bb258:
  ADDI s9, zero, 1
  JAL zero, bb242
bb259:
  ADDI s9, zero, 1
  JAL zero, bb240
bb260:
  ADDI s9, zero, 1
  JAL zero, bb238
bb261:
  ADDI s7, zero, -1
  JAL zero, bb185
bb262:
  ADDI s7, zero, 1
  JAL zero, bb183
bb263:
  ADDI s7, zero, 1
  JAL zero, bb181
bb264:
  ADDI s7, zero, 1
  JAL zero, bb179
bb265:
  BLT s6, zero, bb277
  # implict jump to bb266
bb266:
  SLT s7, s6, s0
  XORI s7, s7, 1
  # implict jump to bb267
bb267:
  BNE s7, zero, bb276
  # implict jump to bb268
bb268:
  SLT s7, s5, zero
  # implict jump to bb269
bb269:
  BNE s7, zero, bb275
  # implict jump to bb270
bb270:
  SLT s7, s5, s0
  XORI s7, s7, 1
  # implict jump to bb271
bb271:
  BNE s7, zero, bb274
  # implict jump to bb272
bb272:
  MULW s7, s6, s0
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb273
bb273:
  SLT s7, s7, zero
  XORI s7, s7, 1
  ADD s2, s7, zero
  JAL zero, bb175
bb274:
  ADDI s7, zero, -1
  JAL zero, bb273
bb275:
  ADDI s7, zero, 1
  JAL zero, bb271
bb276:
  ADDI s7, zero, 1
  JAL zero, bb269
bb277:
  ADDI s7, zero, 1
  JAL zero, bb267
bb278:
  ADDI s2, zero, -1
  JAL zero, bb173
bb279:
  ADDI s2, zero, 1
  JAL zero, bb171
bb280:
  ADDI s2, zero, 1
  JAL zero, bb169
bb281:
  ADDI s2, zero, 1
  JAL zero, bb167
bb282:
  ADD s2, zero, zero
  # implict jump to bb283
bb283:
  ADD s3, s2, zero
  BLT s3, s0, bb285
  # implict jump to bb284
bb284:
  LW t4, 0(sp)
  ADDIW s4, t4, 1
  ADD s1, s4, zero
  JAL zero, bb152
bb285:
  MULW s1, s3, s0
  LW t4, 0(sp)
  ADDW s1, s1, t4
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s4, s4, s1
  BLT s3, zero, bb297
  # implict jump to bb286
bb286:
  SLT s5, s3, s0
  XORI s5, s5, 1
  # implict jump to bb287
bb287:
  BNE s5, zero, bb296
  # implict jump to bb288
bb288:
  LW t4, 0(sp)
  SLT s5, t4, zero
  # implict jump to bb289
bb289:
  BNE s5, zero, bb295
  # implict jump to bb290
bb290:
  LW t4, 0(sp)
  SLT s5, t4, s0
  XORI s5, s5, 1
  # implict jump to bb291
bb291:
  BNE s5, zero, bb294
  # implict jump to bb292
bb292:
  LA s5, w
  ADD s1, s5, s1
  LW s1, 0(s1)
  # implict jump to bb293
bb293:
  SW s1, 0(s4)
  ADDIW s1, s3, 1
  ADD s2, s1, zero
  JAL zero, bb283
bb294:
  ADDI s1, zero, -1
  JAL zero, bb293
bb295:
  ADDI s5, zero, 1
  JAL zero, bb291
bb296:
  ADDI s5, zero, 1
  JAL zero, bb289
bb297:
  ADDI s5, zero, 1
  JAL zero, bb287
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT a2, zero, bb309
  # implict jump to bb299
bb299:
  SLT s1, a2, a1
  XORI s1, s1, 1
  # implict jump to bb300
bb300:
  BNE s1, zero, bb308
  # implict jump to bb301
bb301:
  SLT s1, a3, zero
  # implict jump to bb302
bb302:
  BNE s1, zero, bb307
  # implict jump to bb303
bb303:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb304
bb304:
  BNE s1, zero, bb306
  # implict jump to bb305
bb305:
  MULW s1, a2, a1
  ADDW s1, s1, a3
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb306:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb307:
  ADDI s1, zero, 1
  JAL zero, bb304
bb308:
  ADDI s1, zero, 1
  JAL zero, bb302
bb309:
  ADDI s1, zero, 1
  JAL zero, bb300
