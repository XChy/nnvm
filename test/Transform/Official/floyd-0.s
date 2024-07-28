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
  SD s4, 40(sp)
  ADDI s1, zero, 0
  BLT s1, a2, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a1, s3
  ADD s3, a0, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s0, s2, 1
  # implict jump to bb5
bb5:
  BLT s0, a2, bb6
  JAL zero, bb1
bb6:
  ADD s1, s0, zero
  JAL zero, bb4
floyd:
  ADDI sp, sp, -176
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s5, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s4, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  ADD t4, a0, zero
  SD t4, 160(sp)
  ADD t4, a1, zero
  SD t4, 152(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb153
  # implict jump to bb8
bb8:
  LW t4, 4(sp)
  BLT zero, t4, bb16
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  LW t3, 4(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb11
  # implict jump to bb10
bb10:
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s5, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s4, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb11:
  # implict jump to bb12
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s2, zero
  SLLIW s9, s7, 2
  LD t4, 152(sp)
  ADD s10, t4, s9
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  SW s9, 0(s10)
  ADDIW s5, s7, 1
  # implict jump to bb14
bb14:
  BLT s5, s0, bb15
  JAL zero, bb10
bb15:
  ADD s2, s5, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  ADD t2, zero, zero
  ADD a3, zero, zero
  ADD a4, zero, zero
  # implict jump to bb18
bb18:
  ADD a5, a4, zero
  ADD a6, a3, zero
  ADD t4, t2, zero
  SW t4, 16(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb23
  # implict jump to bb19
bb19:
  ADD t6, a5, zero
  # implict jump to bb20
bb20:
  ADD s4, t6, zero
  ADD s6, a6, zero
  LW t4, 16(sp)
  ADDIW s8, t4, 1
  # implict jump to bb21
bb21:
  LW t4, 4(sp)
  BLT s8, t4, bb22
  JAL zero, bb9
bb22:
  ADD t2, s8, zero
  ADD a3, s6, zero
  ADD a4, s4, zero
  JAL zero, bb18
bb23:
  # implict jump to bb24
bb24:
  ADD a2, zero, zero
  ADD t4, a5, zero
  SB t4, 0(sp)
  # implict jump to bb25
bb25:
  LB t4, 0(sp)
  ADD a1, t4, zero
  ADD t4, a2, zero
  SW t4, 20(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb31
  # implict jump to bb26
bb26:
  ADD t0, zero, zero
  # implict jump to bb27
bb27:
  ADD s1, a1, zero
  ADD s9, t0, zero
  LW t4, 20(sp)
  ADDIW s3, t4, 1
  # implict jump to bb28
bb28:
  LW t4, 4(sp)
  BLT s3, t4, bb30
  # implict jump to bb29
bb29:
  ADD a6, s9, zero
  ADD t6, s1, zero
  JAL zero, bb20
bb30:
  ADD a2, s3, zero
  ADD t4, s1, zero
  SB t4, 0(sp)
  JAL zero, bb25
bb31:
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb33
bb33:
  LW t4, 12(sp)
  ADD s7, t4, zero
  LW t4, 20(sp)
  BLT t4, zero, bb152
  # implict jump to bb34
bb34:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb35
bb35:
  BNE s11, zero, bb151
  # implict jump to bb36
bb36:
  LW t4, 16(sp)
  SLT s11, t4, zero
  # implict jump to bb37
bb37:
  BNE s11, zero, bb150
  # implict jump to bb38
bb38:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb39
bb39:
  BNE s11, zero, bb149
  # implict jump to bb40
bb40:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  LW t4, 16(sp)
  ADDW s11, s11, t4
  SLLIW s11, s11, 2
  LA s2, temp
  ADD s2, s2, s11
  LW s2, 0(s2)
  # implict jump to bb41
bb41:
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb136
  # implict jump to bb42
bb42:
  ADD s2, zero, zero
  # implict jump to bb43
bb43:
  ADD s0, s2, zero
  BNE s0, zero, bb48
  # implict jump to bb44
bb44:
  ADDIW t4, s7, 1
  SW t4, 8(sp)
  # implict jump to bb45
bb45:
  LW t4, 8(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb47
  # implict jump to bb46
bb46:
  LW t4, 8(sp)
  ADD t0, t4, zero
  ADD a1, s0, zero
  JAL zero, bb27
bb47:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb33
bb48:
  LW t4, 20(sp)
  BLT t4, zero, bb135
  # implict jump to bb49
bb49:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb50
bb50:
  BNE s2, zero, bb134
  # implict jump to bb51
bb51:
  SLT s2, s7, zero
  # implict jump to bb52
bb52:
  BNE s2, zero, bb133
  # implict jump to bb53
bb53:
  LW t4, 4(sp)
  SLT s2, s7, t4
  XORI s2, s2, 1
  # implict jump to bb54
bb54:
  BNE s2, zero, bb132
  # implict jump to bb55
bb55:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s7
  SLLIW s2, s2, 2
  LA s11, temp
  ADD s2, s11, s2
  LW s2, 0(s2)
  # implict jump to bb56
bb56:
  BLT s2, zero, bb107
  # implict jump to bb57
bb57:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s11, s2, s7
  SLLIW s11, s11, 2
  LA a0, temp
  ADD s11, a0, s11
  LW a0, 0(s11)
  LW t4, 20(sp)
  BLT t4, zero, bb106
  # implict jump to bb58
bb58:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT a7, t4, t3
  XORI a7, a7, 1
  # implict jump to bb59
bb59:
  BNE a7, zero, bb105
  # implict jump to bb60
bb60:
  LW t4, 16(sp)
  SLT a7, t4, zero
  # implict jump to bb61
bb61:
  BNE a7, zero, bb104
  # implict jump to bb62
bb62:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT a7, t4, t3
  XORI a7, a7, 1
  # implict jump to bb63
bb63:
  BNE a7, zero, bb103
  # implict jump to bb64
bb64:
  LW t4, 16(sp)
  ADDW a7, s2, t4
  SLLIW a7, a7, 2
  LA t1, temp
  ADD t1, t1, a7
  LW t1, 0(t1)
  # implict jump to bb65
bb65:
  LW t4, 16(sp)
  SLT a7, t4, zero
  LW t4, 16(sp)
  BLT t4, zero, bb102
  # implict jump to bb66
bb66:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb67
bb67:
  BNE s10, zero, bb101
  # implict jump to bb68
bb68:
  SLT s10, s7, zero
  # implict jump to bb69
bb69:
  BNE s10, zero, bb100
  # implict jump to bb70
bb70:
  LW t4, 4(sp)
  SLT s10, s7, t4
  XORI s10, s10, 1
  # implict jump to bb71
bb71:
  BNE s10, zero, bb99
  # implict jump to bb72
bb72:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s10, t4, t3
  ADDW s10, s10, s7
  SLLIW s10, s10, 2
  LA a5, temp
  ADD s10, a5, s10
  LW s10, 0(s10)
  # implict jump to bb73
bb73:
  ADDW s10, t1, s10
  BLT s10, a0, bb74
  JAL zero, bb44
bb74:
  LW t4, 20(sp)
  BLT t4, zero, bb98
  # implict jump to bb75
bb75:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb76
bb76:
  BNE s10, zero, bb97
  # implict jump to bb77
bb77:
  ADD s10, a7, zero
  # implict jump to bb78
bb78:
  BNE s10, zero, bb96
  # implict jump to bb79
bb79:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb80
bb80:
  BNE s10, zero, bb95
  # implict jump to bb81
bb81:
  LW t4, 16(sp)
  ADDW s2, s2, t4
  SLLIW s2, s2, 2
  LA s10, temp
  ADD s2, s10, s2
  LW s2, 0(s2)
  # implict jump to bb82
bb82:
  LW t4, 16(sp)
  BLT t4, zero, bb94
  # implict jump to bb83
bb83:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb84
bb84:
  BNE s10, zero, bb93
  # implict jump to bb85
bb85:
  SLT s10, s7, zero
  # implict jump to bb86
bb86:
  BNE s10, zero, bb92
  # implict jump to bb87
bb87:
  LW t4, 4(sp)
  SLT s10, s7, t4
  XORI s10, s10, 1
  # implict jump to bb88
bb88:
  BNE s10, zero, bb91
  # implict jump to bb89
bb89:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s10, t4, t3
  ADDW s10, s10, s7
  SLLIW s10, s10, 2
  LA t1, temp
  ADD s10, t1, s10
  LW s10, 0(s10)
  # implict jump to bb90
bb90:
  ADDW s2, s2, s10
  SW s2, 0(s11)
  JAL zero, bb44
bb91:
  ADDI s10, zero, -1
  JAL zero, bb90
bb92:
  ADDI s10, zero, 1
  JAL zero, bb88
bb93:
  ADDI s10, zero, 1
  JAL zero, bb86
bb94:
  ADDI s10, zero, 1
  JAL zero, bb84
bb95:
  ADDI s2, zero, -1
  JAL zero, bb82
bb96:
  ADDI s10, zero, 1
  JAL zero, bb80
bb97:
  ADDI s10, zero, 1
  JAL zero, bb78
bb98:
  ADDI s10, zero, 1
  JAL zero, bb76
bb99:
  ADDI s10, zero, -1
  JAL zero, bb73
bb100:
  ADDI s10, zero, 1
  JAL zero, bb71
bb101:
  ADDI s10, zero, 1
  JAL zero, bb69
bb102:
  ADDI s10, zero, 1
  JAL zero, bb67
bb103:
  ADDI t1, zero, -1
  JAL zero, bb65
bb104:
  ADDI a7, zero, 1
  JAL zero, bb63
bb105:
  ADDI a7, zero, 1
  JAL zero, bb61
bb106:
  ADDI a7, zero, 1
  JAL zero, bb59
bb107:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s10, s2, s7
  SLLIW s10, s10, 2
  LA s11, temp
  ADD s10, s11, s10
  LW t4, 20(sp)
  BLT t4, zero, bb131
  # implict jump to bb108
bb108:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb109
bb109:
  BNE s11, zero, bb130
  # implict jump to bb110
bb110:
  LW t4, 16(sp)
  SLT s11, t4, zero
  # implict jump to bb111
bb111:
  BNE s11, zero, bb129
  # implict jump to bb112
bb112:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb113
bb113:
  BNE s11, zero, bb128
  # implict jump to bb114
bb114:
  LW t4, 16(sp)
  ADDW s2, s2, t4
  SLLIW s2, s2, 2
  LA s11, temp
  ADD s2, s11, s2
  LW s2, 0(s2)
  # implict jump to bb115
bb115:
  LW t4, 16(sp)
  BLT t4, zero, bb127
  # implict jump to bb116
bb116:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb117
bb117:
  BNE s11, zero, bb126
  # implict jump to bb118
bb118:
  SLT s11, s7, zero
  # implict jump to bb119
bb119:
  BNE s11, zero, bb125
  # implict jump to bb120
bb120:
  LW t4, 4(sp)
  SLT s11, s7, t4
  XORI s11, s11, 1
  # implict jump to bb121
bb121:
  BNE s11, zero, bb124
  # implict jump to bb122
bb122:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  ADDW s11, s11, s7
  SLLIW s11, s11, 2
  LA t1, temp
  ADD s11, t1, s11
  LW s11, 0(s11)
  # implict jump to bb123
bb123:
  ADDW s2, s2, s11
  SW s2, 0(s10)
  JAL zero, bb44
bb124:
  ADDI s11, zero, -1
  JAL zero, bb123
bb125:
  ADDI s11, zero, 1
  JAL zero, bb121
bb126:
  ADDI s11, zero, 1
  JAL zero, bb119
bb127:
  ADDI s11, zero, 1
  JAL zero, bb117
bb128:
  ADDI s2, zero, -1
  JAL zero, bb115
bb129:
  ADDI s11, zero, 1
  JAL zero, bb113
bb130:
  ADDI s11, zero, 1
  JAL zero, bb111
bb131:
  ADDI s11, zero, 1
  JAL zero, bb109
bb132:
  ADDI s2, zero, -1
  JAL zero, bb56
bb133:
  ADDI s2, zero, 1
  JAL zero, bb54
bb134:
  ADDI s2, zero, 1
  JAL zero, bb52
bb135:
  ADDI s2, zero, 1
  JAL zero, bb50
bb136:
  LW t4, 16(sp)
  BLT t4, zero, bb148
  # implict jump to bb137
bb137:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb138
bb138:
  BNE s11, zero, bb147
  # implict jump to bb139
bb139:
  SLT s11, s7, zero
  # implict jump to bb140
bb140:
  BNE s11, zero, bb146
  # implict jump to bb141
bb141:
  LW t4, 4(sp)
  SLT s11, s7, t4
  XORI s11, s11, 1
  # implict jump to bb142
bb142:
  BNE s11, zero, bb145
  # implict jump to bb143
bb143:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  ADDW s11, s11, s7
  SLLIW s11, s11, 2
  LA a0, temp
  ADD s11, a0, s11
  LW s11, 0(s11)
  # implict jump to bb144
bb144:
  SLT s11, s11, zero
  XORI s11, s11, 1
  ADD s2, s11, zero
  JAL zero, bb43
bb145:
  ADDI s11, zero, -1
  JAL zero, bb144
bb146:
  ADDI s11, zero, 1
  JAL zero, bb142
bb147:
  ADDI s11, zero, 1
  JAL zero, bb140
bb148:
  ADDI s11, zero, 1
  JAL zero, bb138
bb149:
  ADDI s2, zero, -1
  JAL zero, bb41
bb150:
  ADDI s11, zero, 1
  JAL zero, bb39
bb151:
  ADDI s11, zero, 1
  JAL zero, bb37
bb152:
  ADDI s11, zero, 1
  JAL zero, bb35
bb153:
  # implict jump to bb154
bb154:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb155
bb155:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb159
  # implict jump to bb156
bb156:
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  # implict jump to bb157
bb157:
  LW t4, 24(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb158
  JAL zero, bb8
bb158:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb155
bb159:
  # implict jump to bb160
bb160:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb161
bb161:
  LW t4, 32(sp)
  ADD t2, t4, zero
  LW t4, 4(sp)
  MULW a3, t2, t4
  LW t4, 36(sp)
  ADDW a3, a3, t4
  SLLIW a3, a3, 2
  LA a4, temp
  ADD a4, a4, a3
  BLT t2, zero, bb175
  # implict jump to bb162
bb162:
  LW t4, 4(sp)
  SLT a5, t2, t4
  XORI a5, a5, 1
  # implict jump to bb163
bb163:
  BNE a5, zero, bb174
  # implict jump to bb164
bb164:
  LW t4, 36(sp)
  SLT a5, t4, zero
  # implict jump to bb165
bb165:
  BNE a5, zero, bb173
  # implict jump to bb166
bb166:
  LW t4, 36(sp)
  LW t3, 4(sp)
  SLT a5, t4, t3
  XORI a5, a5, 1
  # implict jump to bb167
bb167:
  BNE a5, zero, bb172
  # implict jump to bb168
bb168:
  LD t4, 160(sp)
  ADD a3, t4, a3
  LW a3, 0(a3)
  # implict jump to bb169
bb169:
  SW a3, 0(a4)
  ADDIW t4, t2, 1
  SW t4, 28(sp)
  # implict jump to bb170
bb170:
  LW t4, 28(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb171
  JAL zero, bb156
bb171:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb161
bb172:
  ADDI a3, zero, -1
  JAL zero, bb169
bb173:
  ADDI a5, zero, 1
  JAL zero, bb167
bb174:
  ADDI a5, zero, 1
  JAL zero, bb165
bb175:
  ADDI a5, zero, 1
  JAL zero, bb163
main:
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  SD s6, 176(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 60(sp)
  LA s11, w
  ADD a0, s11, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 60(sp)
  BLT zero, t4, bb322
  # implict jump to bb177
bb177:
  LW t4, 60(sp)
  BLT zero, t4, bb185
  # implict jump to bb178
bb178:
  LW t4, 60(sp)
  LW t3, 60(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb180
  # implict jump to bb179
bb179:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s2, dst
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb180:
  # implict jump to bb181
bb181:
  ADD s1, zero, zero
  # implict jump to bb182
bb182:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, dst
  ADD s4, s4, s3
  LA s5, temp
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 72(sp)
  # implict jump to bb183
bb183:
  LW t4, 72(sp)
  BLT t4, s0, bb184
  JAL zero, bb179
bb184:
  LW t4, 72(sp)
  ADD s1, t4, zero
  JAL zero, bb182
bb185:
  # implict jump to bb186
bb186:
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SB t4, 2(sp)
  # implict jump to bb187
bb187:
  LB t4, 2(sp)
  ADD s11, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb192
  # implict jump to bb188
bb188:
  ADD t4, s2, zero
  SW t4, 76(sp)
  ADD t4, s11, zero
  SB t4, 0(sp)
  # implict jump to bb189
bb189:
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb190
bb190:
  LW t4, 68(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb191
  JAL zero, bb178
bb191:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  JAL zero, bb187
bb192:
  # implict jump to bb193
bb193:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, s11, zero
  SB t4, 3(sp)
  # implict jump to bb194
bb194:
  LB t4, 3(sp)
  ADD s11, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb200
  # implict jump to bb195
bb195:
  ADD s9, zero, zero
  # implict jump to bb196
bb196:
  ADD t4, s11, zero
  SB t4, 4(sp)
  ADD s3, s9, zero
  LW t3, 20(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  # implict jump to bb197
bb197:
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb199
  # implict jump to bb198
bb198:
  ADD t4, s3, zero
  SW t4, 76(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb189
bb199:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  JAL zero, bb194
bb200:
  # implict jump to bb201
bb201:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb202
bb202:
  LW t4, 16(sp)
  ADD s10, t4, zero
  LW t4, 20(sp)
  BLT t4, zero, bb321
  # implict jump to bb203
bb203:
  LW t4, 20(sp)
  LW t3, 60(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb204
bb204:
  BNE s7, zero, bb320
  # implict jump to bb205
bb205:
  LW t4, 32(sp)
  SLT s7, t4, zero
  # implict jump to bb206
bb206:
  BNE s7, zero, bb319
  # implict jump to bb207
bb207:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb208
bb208:
  BNE s7, zero, bb318
  # implict jump to bb209
bb209:
  LW t4, 20(sp)
  LW t3, 60(sp)
  MULW s7, t4, t3
  LW t4, 32(sp)
  ADDW s7, s7, t4
  SLLIW s7, s7, 2
  LA s6, temp
  ADD s6, s6, s7
  LW s6, 0(s6)
  # implict jump to bb210
bb210:
  SLT s6, s6, zero
  XORI s6, s6, 1
  BNE s6, zero, bb305
  # implict jump to bb211
bb211:
  ADD s6, zero, zero
  # implict jump to bb212
bb212:
  ADD s4, s6, zero
  BNE s4, zero, bb217
  # implict jump to bb213
bb213:
  ADDIW t4, s10, 1
  SW t4, 36(sp)
  # implict jump to bb214
bb214:
  LW t4, 36(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb216
  # implict jump to bb215
bb215:
  LW t4, 36(sp)
  ADD s9, t4, zero
  ADD s11, s4, zero
  JAL zero, bb196
bb216:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb202
bb217:
  LW t4, 20(sp)
  BLT t4, zero, bb304
  # implict jump to bb218
bb218:
  LW t4, 20(sp)
  LW t3, 60(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  # implict jump to bb219
bb219:
  BNE s0, zero, bb303
  # implict jump to bb220
bb220:
  SLT s0, s10, zero
  # implict jump to bb221
bb221:
  BNE s0, zero, bb302
  # implict jump to bb222
bb222:
  LW t4, 60(sp)
  SLT s0, s10, t4
  XORI s0, s0, 1
  # implict jump to bb223
bb223:
  BNE s0, zero, bb301
  # implict jump to bb224
bb224:
  LW t4, 20(sp)
  LW t3, 60(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s10
  SLLIW s0, s0, 2
  LA s6, temp
  ADD s0, s6, s0
  LW s0, 0(s0)
  # implict jump to bb225
bb225:
  BLT s0, zero, bb276
  # implict jump to bb226
bb226:
  LW t4, 20(sp)
  LW t3, 60(sp)
  MULW s0, t4, t3
  ADDW s6, s0, s10
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW s7, 0(s6)
  LW t4, 20(sp)
  BLT t4, zero, bb275
  # implict jump to bb227
bb227:
  LW t4, 20(sp)
  LW t3, 60(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb228
bb228:
  BNE s8, zero, bb274
  # implict jump to bb229
bb229:
  LW t4, 32(sp)
  SLT s8, t4, zero
  # implict jump to bb230
bb230:
  BNE s8, zero, bb273
  # implict jump to bb231
bb231:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb232
bb232:
  BNE s8, zero, bb272
  # implict jump to bb233
bb233:
  LW t4, 32(sp)
  ADDW s8, s0, t4
  SLLIW s8, s8, 2
  LA s5, temp
  ADD s5, s5, s8
  LW s5, 0(s5)
  # implict jump to bb234
bb234:
  LW t4, 32(sp)
  SLT s8, t4, zero
  LW t4, 32(sp)
  BLT t4, zero, bb271
  # implict jump to bb235
bb235:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb236
bb236:
  BNE s2, zero, bb270
  # implict jump to bb237
bb237:
  SLT s2, s10, zero
  # implict jump to bb238
bb238:
  BNE s2, zero, bb269
  # implict jump to bb239
bb239:
  LW t4, 60(sp)
  SLT s2, s10, t4
  XORI s2, s2, 1
  # implict jump to bb240
bb240:
  BNE s2, zero, bb268
  # implict jump to bb241
bb241:
  LW t4, 32(sp)
  LW t3, 60(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s10
  SLLIW s2, s2, 2
  LA s1, temp
  ADD s1, s1, s2
  LW s1, 0(s1)
  # implict jump to bb242
bb242:
  ADDW s1, s5, s1
  BLT s1, s7, bb243
  JAL zero, bb213
bb243:
  LW t4, 20(sp)
  BLT t4, zero, bb267
  # implict jump to bb244
bb244:
  LW t4, 20(sp)
  LW t3, 60(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb245
bb245:
  BNE s1, zero, bb266
  # implict jump to bb246
bb246:
  ADD s1, s8, zero
  # implict jump to bb247
bb247:
  BNE s1, zero, bb265
  # implict jump to bb248
bb248:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb249
bb249:
  BNE s1, zero, bb264
  # implict jump to bb250
bb250:
  LW t4, 32(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s1, temp
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb251
bb251:
  LW t4, 32(sp)
  BLT t4, zero, bb263
  # implict jump to bb252
bb252:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb253
bb253:
  BNE s1, zero, bb262
  # implict jump to bb254
bb254:
  SLT s1, s10, zero
  # implict jump to bb255
bb255:
  BNE s1, zero, bb261
  # implict jump to bb256
bb256:
  LW t4, 60(sp)
  SLT s1, s10, t4
  XORI s1, s1, 1
  # implict jump to bb257
bb257:
  BNE s1, zero, bb260
  # implict jump to bb258
bb258:
  LW t4, 32(sp)
  LW t3, 60(sp)
  MULW s1, t4, t3
  ADDW s1, s1, s10
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb259
bb259:
  ADDW s0, s0, s1
  SW s0, 0(s6)
  JAL zero, bb213
bb260:
  ADDI s1, zero, -1
  JAL zero, bb259
bb261:
  ADDI s1, zero, 1
  JAL zero, bb257
bb262:
  ADDI s1, zero, 1
  JAL zero, bb255
bb263:
  ADDI s1, zero, 1
  JAL zero, bb253
bb264:
  ADDI s0, zero, -1
  JAL zero, bb251
bb265:
  ADDI s1, zero, 1
  JAL zero, bb249
bb266:
  ADDI s1, zero, 1
  JAL zero, bb247
bb267:
  ADDI s1, zero, 1
  JAL zero, bb245
bb268:
  ADDI s1, zero, -1
  JAL zero, bb242
bb269:
  ADDI s2, zero, 1
  JAL zero, bb240
bb270:
  ADDI s2, zero, 1
  JAL zero, bb238
bb271:
  ADDI s2, zero, 1
  JAL zero, bb236
bb272:
  ADDI s5, zero, -1
  JAL zero, bb234
bb273:
  ADDI s8, zero, 1
  JAL zero, bb232
bb274:
  ADDI s8, zero, 1
  JAL zero, bb230
bb275:
  ADDI s8, zero, 1
  JAL zero, bb228
bb276:
  LW t4, 20(sp)
  LW t3, 60(sp)
  MULW s0, t4, t3
  ADDW s1, s0, s10
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW t4, 20(sp)
  BLT t4, zero, bb300
  # implict jump to bb277
bb277:
  LW t4, 20(sp)
  LW t3, 60(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb278
bb278:
  BNE s2, zero, bb299
  # implict jump to bb279
bb279:
  LW t4, 32(sp)
  SLT s2, t4, zero
  # implict jump to bb280
bb280:
  BNE s2, zero, bb298
  # implict jump to bb281
bb281:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb282
bb282:
  BNE s2, zero, bb297
  # implict jump to bb283
bb283:
  LW t4, 32(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s2, temp
  ADD s0, s2, s0
  LW s0, 0(s0)
  # implict jump to bb284
bb284:
  LW t4, 32(sp)
  BLT t4, zero, bb296
  # implict jump to bb285
bb285:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb286
bb286:
  BNE s2, zero, bb295
  # implict jump to bb287
bb287:
  SLT s2, s10, zero
  # implict jump to bb288
bb288:
  BNE s2, zero, bb294
  # implict jump to bb289
bb289:
  LW t4, 60(sp)
  SLT s2, s10, t4
  XORI s2, s2, 1
  # implict jump to bb290
bb290:
  BNE s2, zero, bb293
  # implict jump to bb291
bb291:
  LW t4, 32(sp)
  LW t3, 60(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s10
  SLLIW s2, s2, 2
  LA s5, temp
  ADD s2, s5, s2
  LW s2, 0(s2)
  # implict jump to bb292
bb292:
  ADDW s0, s0, s2
  SW s0, 0(s1)
  JAL zero, bb213
bb293:
  ADDI s2, zero, -1
  JAL zero, bb292
bb294:
  ADDI s2, zero, 1
  JAL zero, bb290
bb295:
  ADDI s2, zero, 1
  JAL zero, bb288
bb296:
  ADDI s2, zero, 1
  JAL zero, bb286
bb297:
  ADDI s0, zero, -1
  JAL zero, bb284
bb298:
  ADDI s2, zero, 1
  JAL zero, bb282
bb299:
  ADDI s2, zero, 1
  JAL zero, bb280
bb300:
  ADDI s2, zero, 1
  JAL zero, bb278
bb301:
  ADDI s0, zero, -1
  JAL zero, bb225
bb302:
  ADDI s0, zero, 1
  JAL zero, bb223
bb303:
  ADDI s0, zero, 1
  JAL zero, bb221
bb304:
  ADDI s0, zero, 1
  JAL zero, bb219
bb305:
  LW t4, 32(sp)
  BLT t4, zero, bb317
  # implict jump to bb306
bb306:
  LW t4, 32(sp)
  LW t3, 60(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb307
bb307:
  BNE s7, zero, bb316
  # implict jump to bb308
bb308:
  SLT s7, s10, zero
  # implict jump to bb309
bb309:
  BNE s7, zero, bb315
  # implict jump to bb310
bb310:
  LW t4, 60(sp)
  SLT s7, s10, t4
  XORI s7, s7, 1
  # implict jump to bb311
bb311:
  BNE s7, zero, bb314
  # implict jump to bb312
bb312:
  LW t4, 32(sp)
  LW t3, 60(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s10
  SLLIW s7, s7, 2
  LA s0, temp
  ADD s0, s0, s7
  LW s0, 0(s0)
  # implict jump to bb313
bb313:
  SLT s0, s0, zero
  XORI s0, s0, 1
  ADD s6, s0, zero
  JAL zero, bb212
bb314:
  ADDI s0, zero, -1
  JAL zero, bb313
bb315:
  ADDI s7, zero, 1
  JAL zero, bb311
bb316:
  ADDI s7, zero, 1
  JAL zero, bb309
bb317:
  ADDI s7, zero, 1
  JAL zero, bb307
bb318:
  ADDI s6, zero, -1
  JAL zero, bb210
bb319:
  ADDI s7, zero, 1
  JAL zero, bb208
bb320:
  ADDI s7, zero, 1
  JAL zero, bb206
bb321:
  ADDI s7, zero, 1
  JAL zero, bb204
bb322:
  # implict jump to bb323
bb323:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb324
bb324:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb328
  # implict jump to bb325
bb325:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  # implict jump to bb326
bb326:
  LW t4, 40(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb327
  JAL zero, bb177
bb327:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb324
bb328:
  # implict jump to bb329
bb329:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb330
bb330:
  LW t4, 52(sp)
  ADD s7, t4, zero
  LW t4, 60(sp)
  MULW s11, s7, t4
  LW t4, 56(sp)
  ADDW s11, s11, t4
  SLLIW s11, s11, 2
  LA s9, temp
  ADD s9, s9, s11
  BLT s7, zero, bb344
  # implict jump to bb331
bb331:
  LW t4, 60(sp)
  SLT s0, s7, t4
  XORI s0, s0, 1
  # implict jump to bb332
bb332:
  BNE s0, zero, bb343
  # implict jump to bb333
bb333:
  LW t4, 56(sp)
  SLT s0, t4, zero
  # implict jump to bb334
bb334:
  BNE s0, zero, bb342
  # implict jump to bb335
bb335:
  LW t4, 56(sp)
  LW t3, 60(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  # implict jump to bb336
bb336:
  BNE s0, zero, bb341
  # implict jump to bb337
bb337:
  LA s0, w
  ADD s0, s0, s11
  LW s0, 0(s0)
  # implict jump to bb338
bb338:
  SW s0, 0(s9)
  ADDIW t4, s7, 1
  SW t4, 48(sp)
  # implict jump to bb339
bb339:
  LW t4, 48(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb340
  JAL zero, bb325
bb340:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb330
bb341:
  ADDI s0, zero, -1
  JAL zero, bb338
bb342:
  ADDI s0, zero, 1
  JAL zero, bb336
bb343:
  ADDI s0, zero, 1
  JAL zero, bb334
bb344:
  ADDI s0, zero, 1
  JAL zero, bb332
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT a2, zero, bb356
  # implict jump to bb346
bb346:
  SLT s1, a2, a1
  XORI s1, s1, 1
  # implict jump to bb347
bb347:
  BNE s1, zero, bb355
  # implict jump to bb348
bb348:
  SLT s1, a3, zero
  # implict jump to bb349
bb349:
  BNE s1, zero, bb354
  # implict jump to bb350
bb350:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb351
bb351:
  BNE s1, zero, bb353
  # implict jump to bb352
bb352:
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
bb353:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb354:
  ADDI s1, zero, 1
  JAL zero, bb351
bb355:
  ADDI s1, zero, 1
  JAL zero, bb349
bb356:
  ADDI s1, zero, 1
  JAL zero, bb347
