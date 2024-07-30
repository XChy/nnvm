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
  ADDI s0, zero, 0
  BLT s0, a2, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADD s3, a1, s2
  ADD s2, a0, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  BLT s1, a2, bb4
  JAL zero, bb1
bb4:
  ADD s0, s1, zero
  JAL zero, bb3
floyd:
  ADDI sp, sp, -144
  SD s6, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  ADD t4, a0, zero
  SD t4, 120(sp)
  ADD t4, a1, zero
  SD t4, 128(sp)
  ADD t4, a2, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT zero, t4, bb143
  # implict jump to bb6
bb6:
  LW t4, 0(sp)
  BLT zero, t4, bb12
  # implict jump to bb7
bb7:
  LW t4, 0(sp)
  LW t3, 0(sp)
  MULW a1, t4, t3
  BLT zero, a1, bb9
  # implict jump to bb8
bb8:
  LD s6, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb9:
  ADD a2, zero, zero
  # implict jump to bb10
bb10:
  ADD a3, a2, zero
  SLLIW a5, a3, 2
  LD t4, 128(sp)
  ADD a6, t4, a5
  LA a7, temp
  ADD a5, a7, a5
  LW a5, 0(a5)
  SW a5, 0(a6)
  ADDIW a3, a3, 1
  BLT a3, a1, bb11
  JAL zero, bb8
bb11:
  ADD a2, a3, zero
  JAL zero, bb10
bb12:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb13
bb13:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  LW t4, 0(sp)
  BLT zero, t4, bb17
  # implict jump to bb14
bb14:
  ADD s11, s8, zero
  # implict jump to bb15
bb15:
  ADDIW a0, s10, 1
  LW t4, 0(sp)
  BLT a0, t4, bb16
  JAL zero, bb7
bb16:
  ADD s5, a0, zero
  ADD s6, s9, zero
  ADD s7, s11, zero
  JAL zero, bb13
bb17:
  ADD t0, zero, zero
  # implict jump to bb18
bb18:
  ADD t1, s8, zero
  ADD t2, t0, zero
  LW t4, 0(sp)
  BLT zero, t4, bb23
  # implict jump to bb19
bb19:
  ADD a3, zero, zero
  # implict jump to bb20
bb20:
  ADDIW s2, t2, 1
  LW t4, 0(sp)
  BLT s2, t4, bb22
  # implict jump to bb21
bb21:
  ADD s9, a3, zero
  ADD s11, t1, zero
  JAL zero, bb15
bb22:
  ADD t0, s2, zero
  ADD s8, t1, zero
  JAL zero, bb18
bb23:
  ADD a4, zero, zero
  # implict jump to bb24
bb24:
  ADD a5, a4, zero
  BLT t2, zero, bb142
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  SLT a6, t2, t4
  XORI a6, a6, 1
  # implict jump to bb26
bb26:
  BNE a6, zero, bb141
  # implict jump to bb27
bb27:
  SLT a6, s10, zero
  # implict jump to bb28
bb28:
  BNE a6, zero, bb140
  # implict jump to bb29
bb29:
  LW t4, 0(sp)
  SLT a6, s10, t4
  XORI a6, a6, 1
  # implict jump to bb30
bb30:
  BNE a6, zero, bb139
  # implict jump to bb31
bb31:
  LW t4, 0(sp)
  MULW a6, t2, t4
  ADDW a6, a6, s10
  SLLIW a6, a6, 2
  LA a7, temp
  ADD a6, a7, a6
  LW a6, 0(a6)
  # implict jump to bb32
bb32:
  SLT a6, a6, zero
  XORI a6, a6, 1
  BNE a6, zero, bb126
  # implict jump to bb33
bb33:
  ADD a6, zero, zero
  # implict jump to bb34
bb34:
  BNE a6, zero, bb38
  # implict jump to bb35
bb35:
  ADDIW s1, a5, 1
  LW t4, 0(sp)
  BLT s1, t4, bb37
  # implict jump to bb36
bb36:
  ADD a3, s1, zero
  ADD t1, a6, zero
  JAL zero, bb20
bb37:
  ADD a4, s1, zero
  JAL zero, bb24
bb38:
  BLT t2, zero, bb125
  # implict jump to bb39
bb39:
  LW t4, 0(sp)
  SLT a7, t2, t4
  XORI a7, a7, 1
  # implict jump to bb40
bb40:
  BNE a7, zero, bb124
  # implict jump to bb41
bb41:
  SLT a7, a5, zero
  # implict jump to bb42
bb42:
  BNE a7, zero, bb123
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  SLT a7, a5, t4
  XORI a7, a7, 1
  # implict jump to bb44
bb44:
  BNE a7, zero, bb122
  # implict jump to bb45
bb45:
  LW t4, 0(sp)
  MULW a7, t2, t4
  ADDW a7, a7, a5
  SLLIW a7, a7, 2
  LA t6, temp
  ADD a7, t6, a7
  LW a7, 0(a7)
  # implict jump to bb46
bb46:
  BLT a7, zero, bb97
  # implict jump to bb47
bb47:
  LW t4, 0(sp)
  MULW a7, t2, t4
  ADDW t6, a7, a5
  SLLIW t6, t6, 2
  LA a2, temp
  ADD a2, a2, t6
  LW t6, 0(a2)
  BLT t2, zero, bb96
  # implict jump to bb48
bb48:
  LW t4, 0(sp)
  SLT a1, t2, t4
  XORI a1, a1, 1
  # implict jump to bb49
bb49:
  BNE a1, zero, bb95
  # implict jump to bb50
bb50:
  SLT a1, s10, zero
  # implict jump to bb51
bb51:
  BNE a1, zero, bb94
  # implict jump to bb52
bb52:
  LW t4, 0(sp)
  SLT a1, s10, t4
  XORI a1, a1, 1
  # implict jump to bb53
bb53:
  BNE a1, zero, bb93
  # implict jump to bb54
bb54:
  ADDW a1, a7, s10
  SLLIW a1, a1, 2
  LA a0, temp
  ADD a0, a0, a1
  LW a0, 0(a0)
  # implict jump to bb55
bb55:
  SLT a1, s10, zero
  BLT s10, zero, bb92
  # implict jump to bb56
bb56:
  LW t4, 0(sp)
  SLT s1, s10, t4
  XORI s1, s1, 1
  # implict jump to bb57
bb57:
  BNE s1, zero, bb91
  # implict jump to bb58
bb58:
  SLT s1, a5, zero
  # implict jump to bb59
bb59:
  BNE s1, zero, bb90
  # implict jump to bb60
bb60:
  LW t4, 0(sp)
  SLT s1, a5, t4
  XORI s1, s1, 1
  # implict jump to bb61
bb61:
  BNE s1, zero, bb89
  # implict jump to bb62
bb62:
  LW t4, 0(sp)
  MULW s1, s10, t4
  ADDW s1, s1, a5
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb63
bb63:
  ADDW s1, a0, s1
  BLT s1, t6, bb64
  JAL zero, bb35
bb64:
  BLT t2, zero, bb88
  # implict jump to bb65
bb65:
  LW t4, 0(sp)
  SLT s1, t2, t4
  XORI s1, s1, 1
  # implict jump to bb66
bb66:
  BNE s1, zero, bb87
  # implict jump to bb67
bb67:
  ADD s1, a1, zero
  # implict jump to bb68
bb68:
  BNE s1, zero, bb86
  # implict jump to bb69
bb69:
  LW t4, 0(sp)
  SLT s1, s10, t4
  XORI s1, s1, 1
  # implict jump to bb70
bb70:
  BNE s1, zero, bb85
  # implict jump to bb71
bb71:
  ADDW s1, a7, s10
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb72
bb72:
  BLT s10, zero, bb84
  # implict jump to bb73
bb73:
  LW t4, 0(sp)
  SLT s2, s10, t4
  XORI s2, s2, 1
  # implict jump to bb74
bb74:
  BNE s2, zero, bb83
  # implict jump to bb75
bb75:
  SLT s2, a5, zero
  # implict jump to bb76
bb76:
  BNE s2, zero, bb82
  # implict jump to bb77
bb77:
  LW t4, 0(sp)
  SLT s2, a5, t4
  XORI s2, s2, 1
  # implict jump to bb78
bb78:
  BNE s2, zero, bb81
  # implict jump to bb79
bb79:
  LW t4, 0(sp)
  MULW s2, s10, t4
  ADDW s2, s2, a5
  SLLIW s2, s2, 2
  LA a0, temp
  ADD s2, a0, s2
  LW s2, 0(s2)
  # implict jump to bb80
bb80:
  ADDW s1, s1, s2
  SW s1, 0(a2)
  JAL zero, bb35
bb81:
  ADDI s2, zero, -1
  JAL zero, bb80
bb82:
  ADDI s2, zero, 1
  JAL zero, bb78
bb83:
  ADDI s2, zero, 1
  JAL zero, bb76
bb84:
  ADDI s2, zero, 1
  JAL zero, bb74
bb85:
  ADDI s1, zero, -1
  JAL zero, bb72
bb86:
  ADDI s1, zero, 1
  JAL zero, bb70
bb87:
  ADDI s1, zero, 1
  JAL zero, bb68
bb88:
  ADDI s1, zero, 1
  JAL zero, bb66
bb89:
  ADDI s1, zero, -1
  JAL zero, bb63
bb90:
  ADDI s1, zero, 1
  JAL zero, bb61
bb91:
  ADDI s1, zero, 1
  JAL zero, bb59
bb92:
  ADDI s1, zero, 1
  JAL zero, bb57
bb93:
  ADDI a0, zero, -1
  JAL zero, bb55
bb94:
  ADDI a1, zero, 1
  JAL zero, bb53
bb95:
  ADDI a1, zero, 1
  JAL zero, bb51
bb96:
  ADDI a1, zero, 1
  JAL zero, bb49
bb97:
  LW t4, 0(sp)
  MULW s1, t2, t4
  ADDW s2, s1, a5
  SLLIW s2, s2, 2
  LA a0, temp
  ADD s2, a0, s2
  BLT t2, zero, bb121
  # implict jump to bb98
bb98:
  LW t4, 0(sp)
  SLT a0, t2, t4
  XORI a0, a0, 1
  # implict jump to bb99
bb99:
  BNE a0, zero, bb120
  # implict jump to bb100
bb100:
  SLT a0, s10, zero
  # implict jump to bb101
bb101:
  BNE a0, zero, bb119
  # implict jump to bb102
bb102:
  LW t4, 0(sp)
  SLT a0, s10, t4
  XORI a0, a0, 1
  # implict jump to bb103
bb103:
  BNE a0, zero, bb118
  # implict jump to bb104
bb104:
  ADDW s1, s1, s10
  SLLIW s1, s1, 2
  LA a0, temp
  ADD s1, a0, s1
  LW s1, 0(s1)
  # implict jump to bb105
bb105:
  BLT s10, zero, bb117
  # implict jump to bb106
bb106:
  LW t4, 0(sp)
  SLT a0, s10, t4
  XORI a0, a0, 1
  # implict jump to bb107
bb107:
  BNE a0, zero, bb116
  # implict jump to bb108
bb108:
  SLT a0, a5, zero
  # implict jump to bb109
bb109:
  BNE a0, zero, bb115
  # implict jump to bb110
bb110:
  LW t4, 0(sp)
  SLT a0, a5, t4
  XORI a0, a0, 1
  # implict jump to bb111
bb111:
  BNE a0, zero, bb114
  # implict jump to bb112
bb112:
  LW t4, 0(sp)
  MULW a0, s10, t4
  ADDW a0, a0, a5
  SLLIW a0, a0, 2
  LA a1, temp
  ADD a0, a1, a0
  LW a0, 0(a0)
  # implict jump to bb113
bb113:
  ADDW s1, s1, a0
  SW s1, 0(s2)
  JAL zero, bb35
bb114:
  ADDI a0, zero, -1
  JAL zero, bb113
bb115:
  ADDI a0, zero, 1
  JAL zero, bb111
bb116:
  ADDI a0, zero, 1
  JAL zero, bb109
bb117:
  ADDI a0, zero, 1
  JAL zero, bb107
bb118:
  ADDI s1, zero, -1
  JAL zero, bb105
bb119:
  ADDI a0, zero, 1
  JAL zero, bb103
bb120:
  ADDI a0, zero, 1
  JAL zero, bb101
bb121:
  ADDI a0, zero, 1
  JAL zero, bb99
bb122:
  ADDI a7, zero, -1
  JAL zero, bb46
bb123:
  ADDI a7, zero, 1
  JAL zero, bb44
bb124:
  ADDI a7, zero, 1
  JAL zero, bb42
bb125:
  ADDI a7, zero, 1
  JAL zero, bb40
bb126:
  BLT s10, zero, bb138
  # implict jump to bb127
bb127:
  LW t4, 0(sp)
  SLT a7, s10, t4
  XORI a7, a7, 1
  # implict jump to bb128
bb128:
  BNE a7, zero, bb137
  # implict jump to bb129
bb129:
  SLT a7, a5, zero
  # implict jump to bb130
bb130:
  BNE a7, zero, bb136
  # implict jump to bb131
bb131:
  LW t4, 0(sp)
  SLT a7, a5, t4
  XORI a7, a7, 1
  # implict jump to bb132
bb132:
  BNE a7, zero, bb135
  # implict jump to bb133
bb133:
  LW t4, 0(sp)
  MULW a7, s10, t4
  ADDW a7, a7, a5
  SLLIW a7, a7, 2
  LA t6, temp
  ADD a7, t6, a7
  LW a7, 0(a7)
  # implict jump to bb134
bb134:
  SLT a7, a7, zero
  XORI a7, a7, 1
  ADD a6, a7, zero
  JAL zero, bb34
bb135:
  ADDI a7, zero, -1
  JAL zero, bb134
bb136:
  ADDI a7, zero, 1
  JAL zero, bb132
bb137:
  ADDI a7, zero, 1
  JAL zero, bb130
bb138:
  ADDI a7, zero, 1
  JAL zero, bb128
bb139:
  ADDI a6, zero, -1
  JAL zero, bb32
bb140:
  ADDI a6, zero, 1
  JAL zero, bb30
bb141:
  ADDI a6, zero, 1
  JAL zero, bb28
bb142:
  ADDI a6, zero, 1
  JAL zero, bb26
bb143:
  ADD s0, zero, zero
  # implict jump to bb144
bb144:
  ADD t4, s0, zero
  SW t4, 4(sp)
  LW t4, 0(sp)
  BLT zero, t4, bb147
  # implict jump to bb145
bb145:
  LW t4, 4(sp)
  ADDIW s4, t4, 1
  LW t4, 0(sp)
  BLT s4, t4, bb146
  JAL zero, bb6
bb146:
  ADD s0, s4, zero
  JAL zero, bb144
bb147:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb148
bb148:
  LW t4, 8(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  MULW s4, s3, t4
  LW t4, 4(sp)
  ADDW s4, s4, t4
  SLLIW s4, s4, 2
  LA s5, temp
  ADD s5, s5, s4
  BLT s3, zero, bb161
  # implict jump to bb149
bb149:
  LW t4, 0(sp)
  SLT s6, s3, t4
  XORI s6, s6, 1
  # implict jump to bb150
bb150:
  BNE s6, zero, bb160
  # implict jump to bb151
bb151:
  LW t4, 4(sp)
  SLT s6, t4, zero
  # implict jump to bb152
bb152:
  BNE s6, zero, bb159
  # implict jump to bb153
bb153:
  LW t4, 4(sp)
  LW t3, 0(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb154
bb154:
  BNE s6, zero, bb158
  # implict jump to bb155
bb155:
  LD t4, 120(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  # implict jump to bb156
bb156:
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  LW t4, 0(sp)
  BLT s3, t4, bb157
  JAL zero, bb145
bb157:
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb148
bb158:
  ADDI s4, zero, -1
  JAL zero, bb156
bb159:
  ADDI s6, zero, 1
  JAL zero, bb154
bb160:
  ADDI s6, zero, 1
  JAL zero, bb152
bb161:
  ADDI s6, zero, 1
  JAL zero, bb150
main:
  ADDI sp, sp, -160
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s3, 144(sp)
  SD s9, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 44(sp)
  BLT zero, t4, bb300
  # implict jump to bb163
bb163:
  LW t4, 44(sp)
  BLT zero, t4, bb169
  # implict jump to bb164
bb164:
  LW t4, 44(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  BLT zero, s6, bb166
  # implict jump to bb165
bb165:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s6, zero
  LA s9, dst
  ADD a1, s9, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s3, 144(sp)
  LD s9, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb166:
  ADD s7, zero, zero
  # implict jump to bb167
bb167:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  LA s10, dst
  ADD s10, s10, s9
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  SW s9, 0(s10)
  ADDIW s8, s8, 1
  BLT s8, s6, bb168
  JAL zero, bb165
bb168:
  ADD s7, s8, zero
  JAL zero, bb167
bb169:
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb170
bb170:
  LB t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 12(sp)
  ADD s10, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 44(sp)
  BLT zero, t4, bb174
  # implict jump to bb171
bb171:
  ADD t4, s10, zero
  SW t4, 52(sp)
  ADD s2, s9, zero
  # implict jump to bb172
bb172:
  LW t4, 52(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADDIW s5, t4, 1
  LW t4, 44(sp)
  BLT s5, t4, bb173
  JAL zero, bb164
bb173:
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s2, zero
  SB t4, 0(sp)
  JAL zero, bb170
bb174:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, s9, zero
  SB t4, 1(sp)
  # implict jump to bb175
bb175:
  LB t4, 1(sp)
  ADD s3, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 44(sp)
  BLT zero, t4, bb180
  # implict jump to bb176
bb176:
  ADD s1, zero, zero
  # implict jump to bb177
bb177:
  LW t4, 28(sp)
  ADDIW s4, t4, 1
  LW t4, 44(sp)
  BLT s4, t4, bb179
  # implict jump to bb178
bb178:
  ADD t4, s1, zero
  SW t4, 52(sp)
  ADD s2, s3, zero
  JAL zero, bb172
bb179:
  ADD t4, s4, zero
  SW t4, 16(sp)
  ADD t4, s3, zero
  SB t4, 1(sp)
  JAL zero, bb175
bb180:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb181
bb181:
  LW t4, 20(sp)
  ADD s4, t4, zero
  LW t4, 28(sp)
  BLT t4, zero, bb299
  # implict jump to bb182
bb182:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb183
bb183:
  BNE s11, zero, bb298
  # implict jump to bb184
bb184:
  LW t4, 24(sp)
  SLT s11, t4, zero
  # implict jump to bb185
bb185:
  BNE s11, zero, bb297
  # implict jump to bb186
bb186:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb187
bb187:
  BNE s11, zero, bb296
  # implict jump to bb188
bb188:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s11, t4, t3
  LW t4, 24(sp)
  ADDW s11, s11, t4
  SLLIW s11, s11, 2
  LA s5, temp
  ADD s5, s5, s11
  LW s5, 0(s5)
  # implict jump to bb189
bb189:
  SLT s5, s5, zero
  XORI s5, s5, 1
  BNE s5, zero, bb283
  # implict jump to bb190
bb190:
  ADD s5, zero, zero
  # implict jump to bb191
bb191:
  BNE s5, zero, bb195
  # implict jump to bb192
bb192:
  ADDIW s0, s4, 1
  LW t4, 44(sp)
  BLT s0, t4, bb194
  # implict jump to bb193
bb193:
  ADD s1, s0, zero
  ADD s3, s5, zero
  JAL zero, bb177
bb194:
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb181
bb195:
  LW t4, 28(sp)
  BLT t4, zero, bb282
  # implict jump to bb196
bb196:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s9, t4, t3
  XORI s9, s9, 1
  # implict jump to bb197
bb197:
  BNE s9, zero, bb281
  # implict jump to bb198
bb198:
  SLT s9, s4, zero
  # implict jump to bb199
bb199:
  BNE s9, zero, bb280
  # implict jump to bb200
bb200:
  LW t4, 44(sp)
  SLT s9, s4, t4
  XORI s9, s9, 1
  # implict jump to bb201
bb201:
  BNE s9, zero, bb279
  # implict jump to bb202
bb202:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s9, t4, t3
  ADDW s9, s9, s4
  SLLIW s9, s9, 2
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  # implict jump to bb203
bb203:
  BLT s9, zero, bb254
  # implict jump to bb204
bb204:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s9, t4, t3
  ADDW s11, s9, s4
  SLLIW s11, s11, 2
  LA s0, temp
  ADD s0, s0, s11
  LW s11, 0(s0)
  LW t4, 28(sp)
  BLT t4, zero, bb253
  # implict jump to bb205
bb205:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb206
bb206:
  BNE s8, zero, bb252
  # implict jump to bb207
bb207:
  LW t4, 24(sp)
  SLT s8, t4, zero
  # implict jump to bb208
bb208:
  BNE s8, zero, bb251
  # implict jump to bb209
bb209:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb210
bb210:
  BNE s8, zero, bb250
  # implict jump to bb211
bb211:
  LW t4, 24(sp)
  ADDW s8, s9, t4
  SLLIW s8, s8, 2
  LA s7, temp
  ADD s7, s7, s8
  LW s7, 0(s7)
  # implict jump to bb212
bb212:
  LW t4, 24(sp)
  SLT s8, t4, zero
  LW t4, 24(sp)
  BLT t4, zero, bb249
  # implict jump to bb213
bb213:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb214
bb214:
  BNE s6, zero, bb248
  # implict jump to bb215
bb215:
  SLT s6, s4, zero
  # implict jump to bb216
bb216:
  BNE s6, zero, bb247
  # implict jump to bb217
bb217:
  LW t4, 44(sp)
  SLT s6, s4, t4
  XORI s6, s6, 1
  # implict jump to bb218
bb218:
  BNE s6, zero, bb246
  # implict jump to bb219
bb219:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  ADDW s6, s6, s4
  SLLIW s6, s6, 2
  LA s10, temp
  ADD s6, s10, s6
  LW s6, 0(s6)
  # implict jump to bb220
bb220:
  ADDW s6, s7, s6
  BLT s6, s11, bb221
  JAL zero, bb192
bb221:
  LW t4, 28(sp)
  BLT t4, zero, bb245
  # implict jump to bb222
bb222:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb223
bb223:
  BNE s6, zero, bb244
  # implict jump to bb224
bb224:
  ADD s6, s8, zero
  # implict jump to bb225
bb225:
  BNE s6, zero, bb243
  # implict jump to bb226
bb226:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb227
bb227:
  BNE s6, zero, bb242
  # implict jump to bb228
bb228:
  LW t4, 24(sp)
  ADDW s6, s9, t4
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW s6, 0(s6)
  # implict jump to bb229
bb229:
  LW t4, 24(sp)
  BLT t4, zero, bb241
  # implict jump to bb230
bb230:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb231
bb231:
  BNE s7, zero, bb240
  # implict jump to bb232
bb232:
  SLT s7, s4, zero
  # implict jump to bb233
bb233:
  BNE s7, zero, bb239
  # implict jump to bb234
bb234:
  LW t4, 44(sp)
  SLT s7, s4, t4
  XORI s7, s7, 1
  # implict jump to bb235
bb235:
  BNE s7, zero, bb238
  # implict jump to bb236
bb236:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb237
bb237:
  ADDW s6, s6, s7
  SW s6, 0(s0)
  JAL zero, bb192
bb238:
  ADDI s7, zero, -1
  JAL zero, bb237
bb239:
  ADDI s7, zero, 1
  JAL zero, bb235
bb240:
  ADDI s7, zero, 1
  JAL zero, bb233
bb241:
  ADDI s7, zero, 1
  JAL zero, bb231
bb242:
  ADDI s6, zero, -1
  JAL zero, bb229
bb243:
  ADDI s6, zero, 1
  JAL zero, bb227
bb244:
  ADDI s6, zero, 1
  JAL zero, bb225
bb245:
  ADDI s6, zero, 1
  JAL zero, bb223
bb246:
  ADDI s6, zero, -1
  JAL zero, bb220
bb247:
  ADDI s6, zero, 1
  JAL zero, bb218
bb248:
  ADDI s6, zero, 1
  JAL zero, bb216
bb249:
  ADDI s6, zero, 1
  JAL zero, bb214
bb250:
  ADDI s7, zero, -1
  JAL zero, bb212
bb251:
  ADDI s8, zero, 1
  JAL zero, bb210
bb252:
  ADDI s8, zero, 1
  JAL zero, bb208
bb253:
  ADDI s8, zero, 1
  JAL zero, bb206
bb254:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s0, t4, t3
  ADDW s6, s0, s4
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW t4, 28(sp)
  BLT t4, zero, bb278
  # implict jump to bb255
bb255:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb256
bb256:
  BNE s7, zero, bb277
  # implict jump to bb257
bb257:
  LW t4, 24(sp)
  SLT s7, t4, zero
  # implict jump to bb258
bb258:
  BNE s7, zero, bb276
  # implict jump to bb259
bb259:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb260
bb260:
  BNE s7, zero, bb275
  # implict jump to bb261
bb261:
  LW t4, 24(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s7, temp
  ADD s0, s7, s0
  LW s0, 0(s0)
  # implict jump to bb262
bb262:
  LW t4, 24(sp)
  BLT t4, zero, bb274
  # implict jump to bb263
bb263:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb264
bb264:
  BNE s7, zero, bb273
  # implict jump to bb265
bb265:
  SLT s7, s4, zero
  # implict jump to bb266
bb266:
  BNE s7, zero, bb272
  # implict jump to bb267
bb267:
  LW t4, 44(sp)
  SLT s7, s4, t4
  XORI s7, s7, 1
  # implict jump to bb268
bb268:
  BNE s7, zero, bb271
  # implict jump to bb269
bb269:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb270
bb270:
  ADDW s0, s0, s7
  SW s0, 0(s6)
  JAL zero, bb192
bb271:
  ADDI s7, zero, -1
  JAL zero, bb270
bb272:
  ADDI s7, zero, 1
  JAL zero, bb268
bb273:
  ADDI s7, zero, 1
  JAL zero, bb266
bb274:
  ADDI s7, zero, 1
  JAL zero, bb264
bb275:
  ADDI s0, zero, -1
  JAL zero, bb262
bb276:
  ADDI s7, zero, 1
  JAL zero, bb260
bb277:
  ADDI s7, zero, 1
  JAL zero, bb258
bb278:
  ADDI s7, zero, 1
  JAL zero, bb256
bb279:
  ADDI s9, zero, -1
  JAL zero, bb203
bb280:
  ADDI s9, zero, 1
  JAL zero, bb201
bb281:
  ADDI s9, zero, 1
  JAL zero, bb199
bb282:
  ADDI s9, zero, 1
  JAL zero, bb197
bb283:
  LW t4, 24(sp)
  BLT t4, zero, bb295
  # implict jump to bb284
bb284:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb285
bb285:
  BNE s11, zero, bb294
  # implict jump to bb286
bb286:
  SLT s11, s4, zero
  # implict jump to bb287
bb287:
  BNE s11, zero, bb293
  # implict jump to bb288
bb288:
  LW t4, 44(sp)
  SLT s11, s4, t4
  XORI s11, s11, 1
  # implict jump to bb289
bb289:
  BNE s11, zero, bb292
  # implict jump to bb290
bb290:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s11, t4, t3
  ADDW s11, s11, s4
  SLLIW s11, s11, 2
  LA s9, temp
  ADD s9, s9, s11
  LW s9, 0(s9)
  # implict jump to bb291
bb291:
  SLT s9, s9, zero
  XORI s9, s9, 1
  ADD s5, s9, zero
  JAL zero, bb191
bb292:
  ADDI s9, zero, -1
  JAL zero, bb291
bb293:
  ADDI s11, zero, 1
  JAL zero, bb289
bb294:
  ADDI s11, zero, 1
  JAL zero, bb287
bb295:
  ADDI s11, zero, 1
  JAL zero, bb285
bb296:
  ADDI s5, zero, -1
  JAL zero, bb189
bb297:
  ADDI s11, zero, 1
  JAL zero, bb187
bb298:
  ADDI s11, zero, 1
  JAL zero, bb185
bb299:
  ADDI s11, zero, 1
  JAL zero, bb183
bb300:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb301
bb301:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 44(sp)
  BLT zero, t4, bb304
  # implict jump to bb302
bb302:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb303
  JAL zero, bb163
bb303:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb301
bb304:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb305
bb305:
  LW t4, 40(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  MULW s5, s4, t4
  LW t4, 48(sp)
  ADDW s5, s5, t4
  SLLIW s5, s5, 2
  LA s6, temp
  ADD s6, s6, s5
  BLT s4, zero, bb318
  # implict jump to bb306
bb306:
  LW t4, 44(sp)
  SLT s7, s4, t4
  XORI s7, s7, 1
  # implict jump to bb307
bb307:
  BNE s7, zero, bb317
  # implict jump to bb308
bb308:
  LW t4, 48(sp)
  SLT s7, t4, zero
  # implict jump to bb309
bb309:
  BNE s7, zero, bb316
  # implict jump to bb310
bb310:
  LW t4, 48(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb311
bb311:
  BNE s7, zero, bb315
  # implict jump to bb312
bb312:
  LA s7, w
  ADD s5, s7, s5
  LW s5, 0(s5)
  # implict jump to bb313
bb313:
  SW s5, 0(s6)
  ADDIW t4, s4, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb314
  JAL zero, bb302
bb314:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb305
bb315:
  ADDI s5, zero, -1
  JAL zero, bb313
bb316:
  ADDI s7, zero, 1
  JAL zero, bb311
bb317:
  ADDI s7, zero, 1
  JAL zero, bb309
bb318:
  ADDI s7, zero, 1
  JAL zero, bb307
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT a2, zero, bb330
  # implict jump to bb320
bb320:
  SLT s1, a2, a1
  XORI s1, s1, 1
  # implict jump to bb321
bb321:
  BNE s1, zero, bb329
  # implict jump to bb322
bb322:
  SLT s1, a3, zero
  # implict jump to bb323
bb323:
  BNE s1, zero, bb328
  # implict jump to bb324
bb324:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb325
bb325:
  BNE s1, zero, bb327
  # implict jump to bb326
bb326:
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
bb327:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb328:
  ADDI s1, zero, 1
  JAL zero, bb325
bb329:
  ADDI s1, zero, 1
  JAL zero, bb323
bb330:
  ADDI s1, zero, 1
  JAL zero, bb321
