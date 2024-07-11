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
  SLT s2, s1, a2
  BNE s2, zero, bb3
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
  SLT s2, s1, a2
  BNE s2, zero, bb87
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
  SLT s8, s5, a2
  BNE s8, zero, bb12
  # implict jump to bb8
bb8:
  MULW s8, a2, a2
  ADD s9, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  SLT s11, s10, s8
  BNE s11, zero, bb11
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
  SLT t0, s10, a2
  BNE t0, zero, bb15
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
  SLT s11, s4, a2
  BNE s11, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW s11, s10, 1
  ADD s7, s9, zero
  ADD s8, s11, zero
  ADD s6, s4, zero
  JAL zero, bb13
bb18:
  SLT s6, s10, zero
  BNE s6, zero, bb86
  # implict jump to bb19
bb19:
  SLT s7, s10, a2
  XORI s7, s7, 1
  # implict jump to bb20
bb20:
  BNE s7, zero, bb85
  # implict jump to bb21
bb21:
  SLT s7, s5, zero
  # implict jump to bb22
bb22:
  BNE s7, zero, bb84
  # implict jump to bb23
bb23:
  SLT s7, s5, a2
  XORI s7, s7, 1
  # implict jump to bb24
bb24:
  BNE s7, zero, bb83
  # implict jump to bb25
bb25:
  MULW s7, s10, a2
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb26
bb26:
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb70
  # implict jump to bb27
bb27:
  ADD s8, zero, zero
  # implict jump to bb28
bb28:
  BNE s8, zero, bb30
  # implict jump to bb29
bb29:
  ADDIW s4, s4, 1
  ADD s2, s8, zero
  ADD s3, s4, zero
  JAL zero, bb16
bb30:
  BNE s6, zero, bb69
  # implict jump to bb31
bb31:
  SLT s6, s10, a2
  XORI s6, s6, 1
  # implict jump to bb32
bb32:
  BNE s6, zero, bb68
  # implict jump to bb33
bb33:
  SLT s6, s4, zero
  # implict jump to bb34
bb34:
  BNE s6, zero, bb67
  # implict jump to bb35
bb35:
  SLT s6, s4, a2
  XORI s6, s6, 1
  # implict jump to bb36
bb36:
  BNE s6, zero, bb66
  # implict jump to bb37
bb37:
  MULW s6, s10, a2
  ADDW s6, s6, s4
  SLLIW s6, s6, 2
  LA s9, temp
  ADD s6, s9, s6
  LW s6, 0(s6)
  # implict jump to bb38
bb38:
  SLT s6, s6, zero
  BNE s6, zero, bb53
  # implict jump to bb39
bb39:
  MULW s6, s10, a2
  ADDW s6, s6, s4
  SLLIW s6, s6, 2
  LA s9, temp
  ADD s6, s9, s6
  LW s9, 0(s6)
  SLT s11, s5, zero
  BNE s11, zero, bb52
  # implict jump to bb40
bb40:
  SLT s11, s5, a2
  XORI s11, s11, 1
  # implict jump to bb41
bb41:
  BNE s11, zero, bb51
  # implict jump to bb42
bb42:
  SLT s11, s4, zero
  # implict jump to bb43
bb43:
  BNE s11, zero, bb50
  # implict jump to bb44
bb44:
  SLT s11, s4, a2
  XORI s11, s11, 1
  # implict jump to bb45
bb45:
  BNE s11, zero, bb49
  # implict jump to bb46
bb46:
  MULW s11, s5, a2
  ADDW s11, s11, s4
  SLLIW s11, s11, 2
  LA t0, temp
  ADD s11, t0, s11
  LW s11, 0(s11)
  # implict jump to bb47
bb47:
  ADDW s11, s7, s11
  SLT s9, s11, s9
  BNE s9, zero, bb48
  JAL zero, bb29
bb48:
  SW s11, 0(s6)
  JAL zero, bb29
bb49:
  ADDI s11, zero, -1
  JAL zero, bb47
bb50:
  ADDI s11, zero, 1
  JAL zero, bb45
bb51:
  ADDI s11, zero, 1
  JAL zero, bb43
bb52:
  ADDI s11, zero, 1
  JAL zero, bb41
bb53:
  MULW s6, s10, a2
  ADDW s6, s6, s4
  SLLIW s6, s6, 2
  LA s9, temp
  ADD s6, s9, s6
  SLT s9, s5, zero
  BNE s9, zero, bb65
  # implict jump to bb54
bb54:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb55
bb55:
  BNE s9, zero, bb64
  # implict jump to bb56
bb56:
  SLT s9, s4, zero
  # implict jump to bb57
bb57:
  BNE s9, zero, bb63
  # implict jump to bb58
bb58:
  SLT s9, s4, a2
  XORI s9, s9, 1
  # implict jump to bb59
bb59:
  BNE s9, zero, bb62
  # implict jump to bb60
bb60:
  MULW s9, s5, a2
  ADDW s9, s9, s4
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb61
bb61:
  ADDW s7, s7, s9
  SW s7, 0(s6)
  JAL zero, bb29
bb62:
  ADDI s9, zero, -1
  JAL zero, bb61
bb63:
  ADDI s9, zero, 1
  JAL zero, bb59
bb64:
  ADDI s9, zero, 1
  JAL zero, bb57
bb65:
  ADDI s9, zero, 1
  JAL zero, bb55
bb66:
  ADDI s6, zero, -1
  JAL zero, bb38
bb67:
  ADDI s6, zero, 1
  JAL zero, bb36
bb68:
  ADDI s6, zero, 1
  JAL zero, bb34
bb69:
  ADDI s6, zero, 1
  JAL zero, bb32
bb70:
  SLT s9, s5, zero
  BNE s9, zero, bb82
  # implict jump to bb71
bb71:
  SLT s9, s5, a2
  XORI s9, s9, 1
  # implict jump to bb72
bb72:
  BNE s9, zero, bb81
  # implict jump to bb73
bb73:
  SLT s9, s4, zero
  # implict jump to bb74
bb74:
  BNE s9, zero, bb80
  # implict jump to bb75
bb75:
  SLT s9, s4, a2
  XORI s9, s9, 1
  # implict jump to bb76
bb76:
  BNE s9, zero, bb79
  # implict jump to bb77
bb77:
  MULW s9, s5, a2
  ADDW s9, s9, s4
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb78
bb78:
  SLT s9, s9, zero
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb28
bb79:
  ADDI s9, zero, -1
  JAL zero, bb78
bb80:
  ADDI s9, zero, 1
  JAL zero, bb76
bb81:
  ADDI s9, zero, 1
  JAL zero, bb74
bb82:
  ADDI s9, zero, 1
  JAL zero, bb72
bb83:
  ADDI s7, zero, -1
  JAL zero, bb26
bb84:
  ADDI s7, zero, 1
  JAL zero, bb24
bb85:
  ADDI s7, zero, 1
  JAL zero, bb22
bb86:
  ADDI s7, zero, 1
  JAL zero, bb20
bb87:
  ADD s2, zero, zero
  # implict jump to bb88
bb88:
  ADD s3, s2, zero
  SLT s4, s3, a2
  BNE s4, zero, bb90
  # implict jump to bb89
bb89:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb5
bb90:
  MULW s0, s3, a2
  ADDW s0, s0, s1
  SLLIW s0, s0, 2
  LA s4, temp
  ADD s4, s4, s0
  SLT s5, s3, zero
  BNE s5, zero, bb102
  # implict jump to bb91
bb91:
  SLT s5, s3, a2
  XORI s5, s5, 1
  # implict jump to bb92
bb92:
  BNE s5, zero, bb101
  # implict jump to bb93
bb93:
  SLT s5, s1, zero
  # implict jump to bb94
bb94:
  BNE s5, zero, bb100
  # implict jump to bb95
bb95:
  SLT s5, s1, a2
  XORI s5, s5, 1
  # implict jump to bb96
bb96:
  BNE s5, zero, bb99
  # implict jump to bb97
bb97:
  ADD s0, a0, s0
  LW s0, 0(s0)
  # implict jump to bb98
bb98:
  SW s0, 0(s4)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb88
bb99:
  ADDI s0, zero, -1
  JAL zero, bb98
bb100:
  ADDI s5, zero, 1
  JAL zero, bb96
bb101:
  ADDI s5, zero, 1
  JAL zero, bb94
bb102:
  ADDI s5, zero, 1
  JAL zero, bb92
main:
  ADDI sp, sp, -112
  SD s2, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s3, 64(sp)
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
  # implict jump to bb104
bb104:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLT s3, t4, s0
  BNE s3, zero, bb186
  # implict jump to bb105
bb105:
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb106
bb106:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  SLT s9, s6, s0
  BNE s9, zero, bb111
  # implict jump to bb107
bb107:
  MULW s9, s0, s0
  ADD s10, zero, zero
  # implict jump to bb108
bb108:
  ADD s11, s10, zero
  SLT s2, s11, s9
  BNE s2, zero, bb110
  # implict jump to bb109
bb109:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s9, zero
  LA s2, dst
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD s2, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s3, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb110:
  SLLIW s2, s11, 2
  LA ra, dst
  ADD ra, ra, s2
  LA t0, temp
  ADD s2, t0, s2
  LW s2, 0(s2)
  SW s2, 0(ra)
  ADDIW s2, s11, 1
  ADD s10, s2, zero
  JAL zero, bb108
bb111:
  ADD s2, s8, zero
  ADD s8, zero, zero
  # implict jump to bb112
bb112:
  ADD s9, s7, zero
  ADD s10, s8, zero
  ADD s11, s2, zero
  SLT ra, s10, s0
  BNE ra, zero, bb114
  # implict jump to bb113
bb113:
  ADDIW ra, s6, 1
  ADD s3, s11, zero
  ADD s4, s9, zero
  ADD s5, ra, zero
  JAL zero, bb106
bb114:
  ADD s3, s11, zero
  ADD s4, zero, zero
  # implict jump to bb115
bb115:
  ADD s5, s4, zero
  ADD s9, s3, zero
  SLT s11, s5, s0
  BNE s11, zero, bb117
  # implict jump to bb116
bb116:
  ADDIW s11, s10, 1
  ADD s2, s9, zero
  ADD s8, s11, zero
  ADD s7, s5, zero
  JAL zero, bb112
bb117:
  SLT s2, s10, zero
  BNE s2, zero, bb185
  # implict jump to bb118
bb118:
  SLT s7, s10, s0
  XORI s7, s7, 1
  # implict jump to bb119
bb119:
  BNE s7, zero, bb184
  # implict jump to bb120
bb120:
  SLT s7, s6, zero
  # implict jump to bb121
bb121:
  BNE s7, zero, bb183
  # implict jump to bb122
bb122:
  SLT s7, s6, s0
  XORI s7, s7, 1
  # implict jump to bb123
bb123:
  BNE s7, zero, bb182
  # implict jump to bb124
bb124:
  MULW s7, s10, s0
  ADDW s7, s7, s6
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb125
bb125:
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb169
  # implict jump to bb126
bb126:
  ADD s8, zero, zero
  # implict jump to bb127
bb127:
  BNE s8, zero, bb129
  # implict jump to bb128
bb128:
  ADDIW s2, s5, 1
  ADD s3, s8, zero
  ADD s4, s2, zero
  JAL zero, bb115
bb129:
  BNE s2, zero, bb168
  # implict jump to bb130
bb130:
  SLT s2, s10, s0
  XORI s2, s2, 1
  # implict jump to bb131
bb131:
  BNE s2, zero, bb167
  # implict jump to bb132
bb132:
  SLT s2, s5, zero
  # implict jump to bb133
bb133:
  BNE s2, zero, bb166
  # implict jump to bb134
bb134:
  SLT s2, s5, s0
  XORI s2, s2, 1
  # implict jump to bb135
bb135:
  BNE s2, zero, bb165
  # implict jump to bb136
bb136:
  MULW s2, s10, s0
  ADDW s2, s2, s5
  SLLIW s2, s2, 2
  LA s9, temp
  ADD s2, s9, s2
  LW s2, 0(s2)
  # implict jump to bb137
bb137:
  SLT s2, s2, zero
  BNE s2, zero, bb152
  # implict jump to bb138
bb138:
  MULW s2, s10, s0
  ADDW s2, s2, s5
  SLLIW s2, s2, 2
  LA s9, temp
  ADD s2, s9, s2
  LW s9, 0(s2)
  SLT s11, s6, zero
  BNE s11, zero, bb151
  # implict jump to bb139
bb139:
  SLT s11, s6, s0
  XORI s11, s11, 1
  # implict jump to bb140
bb140:
  BNE s11, zero, bb150
  # implict jump to bb141
bb141:
  SLT s11, s5, zero
  # implict jump to bb142
bb142:
  BNE s11, zero, bb149
  # implict jump to bb143
bb143:
  SLT s11, s5, s0
  XORI s11, s11, 1
  # implict jump to bb144
bb144:
  BNE s11, zero, bb148
  # implict jump to bb145
bb145:
  MULW s11, s6, s0
  ADDW s11, s11, s5
  SLLIW s11, s11, 2
  LA ra, temp
  ADD s11, ra, s11
  LW s11, 0(s11)
  # implict jump to bb146
bb146:
  ADDW s11, s7, s11
  SLT s9, s11, s9
  BNE s9, zero, bb147
  JAL zero, bb128
bb147:
  SW s11, 0(s2)
  JAL zero, bb128
bb148:
  ADDI s11, zero, -1
  JAL zero, bb146
bb149:
  ADDI s11, zero, 1
  JAL zero, bb144
bb150:
  ADDI s11, zero, 1
  JAL zero, bb142
bb151:
  ADDI s11, zero, 1
  JAL zero, bb140
bb152:
  MULW s2, s10, s0
  ADDW s2, s2, s5
  SLLIW s2, s2, 2
  LA s9, temp
  ADD s2, s9, s2
  SLT s9, s6, zero
  BNE s9, zero, bb164
  # implict jump to bb153
bb153:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb154
bb154:
  BNE s9, zero, bb163
  # implict jump to bb155
bb155:
  SLT s9, s5, zero
  # implict jump to bb156
bb156:
  BNE s9, zero, bb162
  # implict jump to bb157
bb157:
  SLT s9, s5, s0
  XORI s9, s9, 1
  # implict jump to bb158
bb158:
  BNE s9, zero, bb161
  # implict jump to bb159
bb159:
  MULW s9, s6, s0
  ADDW s9, s9, s5
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb160
bb160:
  ADDW s7, s7, s9
  SW s7, 0(s2)
  JAL zero, bb128
bb161:
  ADDI s9, zero, -1
  JAL zero, bb160
bb162:
  ADDI s9, zero, 1
  JAL zero, bb158
bb163:
  ADDI s9, zero, 1
  JAL zero, bb156
bb164:
  ADDI s9, zero, 1
  JAL zero, bb154
bb165:
  ADDI s2, zero, -1
  JAL zero, bb137
bb166:
  ADDI s2, zero, 1
  JAL zero, bb135
bb167:
  ADDI s2, zero, 1
  JAL zero, bb133
bb168:
  ADDI s2, zero, 1
  JAL zero, bb131
bb169:
  SLT s9, s6, zero
  BNE s9, zero, bb181
  # implict jump to bb170
bb170:
  SLT s9, s6, s0
  XORI s9, s9, 1
  # implict jump to bb171
bb171:
  BNE s9, zero, bb180
  # implict jump to bb172
bb172:
  SLT s9, s5, zero
  # implict jump to bb173
bb173:
  BNE s9, zero, bb179
  # implict jump to bb174
bb174:
  SLT s9, s5, s0
  XORI s9, s9, 1
  # implict jump to bb175
bb175:
  BNE s9, zero, bb178
  # implict jump to bb176
bb176:
  MULW s9, s6, s0
  ADDW s9, s9, s5
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb177
bb177:
  SLT s9, s9, zero
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb127
bb178:
  ADDI s9, zero, -1
  JAL zero, bb177
bb179:
  ADDI s9, zero, 1
  JAL zero, bb175
bb180:
  ADDI s9, zero, 1
  JAL zero, bb173
bb181:
  ADDI s9, zero, 1
  JAL zero, bb171
bb182:
  ADDI s7, zero, -1
  JAL zero, bb125
bb183:
  ADDI s7, zero, 1
  JAL zero, bb123
bb184:
  ADDI s7, zero, 1
  JAL zero, bb121
bb185:
  ADDI s7, zero, 1
  JAL zero, bb119
bb186:
  ADD s2, zero, zero
  # implict jump to bb187
bb187:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb189
  # implict jump to bb188
bb188:
  LW t4, 0(sp)
  ADDIW s4, t4, 1
  ADD s1, s4, zero
  JAL zero, bb104
bb189:
  MULW s1, s3, s0
  LW t4, 0(sp)
  ADDW s1, s1, t4
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s4, s4, s1
  SLT s5, s3, zero
  BNE s5, zero, bb201
  # implict jump to bb190
bb190:
  SLT s5, s3, s0
  XORI s5, s5, 1
  # implict jump to bb191
bb191:
  BNE s5, zero, bb200
  # implict jump to bb192
bb192:
  LW t4, 0(sp)
  SLT s5, t4, zero
  # implict jump to bb193
bb193:
  BNE s5, zero, bb199
  # implict jump to bb194
bb194:
  LW t4, 0(sp)
  SLT s5, t4, s0
  XORI s5, s5, 1
  # implict jump to bb195
bb195:
  BNE s5, zero, bb198
  # implict jump to bb196
bb196:
  LA s5, w
  ADD s1, s5, s1
  LW s1, 0(s1)
  # implict jump to bb197
bb197:
  SW s1, 0(s4)
  ADDIW s1, s3, 1
  ADD s2, s1, zero
  JAL zero, bb187
bb198:
  ADDI s1, zero, -1
  JAL zero, bb197
bb199:
  ADDI s5, zero, 1
  JAL zero, bb195
bb200:
  ADDI s5, zero, 1
  JAL zero, bb193
bb201:
  ADDI s5, zero, 1
  JAL zero, bb191
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  SLT s1, a2, zero
  BNE s1, zero, bb213
  # implict jump to bb203
bb203:
  SLT s1, a2, a1
  XORI s1, s1, 1
  # implict jump to bb204
bb204:
  BNE s1, zero, bb212
  # implict jump to bb205
bb205:
  SLT s1, a3, zero
  # implict jump to bb206
bb206:
  BNE s1, zero, bb211
  # implict jump to bb207
bb207:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb208
bb208:
  BNE s1, zero, bb210
  # implict jump to bb209
bb209:
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
bb210:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb211:
  ADDI s1, zero, 1
  JAL zero, bb208
bb212:
  ADDI s1, zero, 1
  JAL zero, bb206
bb213:
  ADDI s1, zero, 1
  JAL zero, bb204
