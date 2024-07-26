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
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a1, s3
  ADD s3, a0, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s0, s2, 1
  # implict jump to bb4
bb4:
  BLT s0, a2, bb5
  JAL zero, bb1
bb5:
  ADD s1, s0, zero
  JAL zero, bb3
floyd:
  ADDI sp, sp, -176
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s11, 136(sp)
  SD s10, 144(sp)
  ADD t4, a0, zero
  SD t4, 160(sp)
  ADD t4, a1, zero
  SD t4, 152(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb148
  # implict jump to bb7
bb7:
  LW t4, 4(sp)
  BLT zero, t4, bb14
  # implict jump to bb8
bb8:
  LW t4, 4(sp)
  LW t3, 4(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb10
  # implict jump to bb9
bb9:
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s11, 136(sp)
  LD s10, 144(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb10:
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LD t4, 152(sp)
  ADD s7, t4, s3
  LA s11, temp
  ADD s3, s11, s3
  LW s3, 0(s3)
  SW s3, 0(s7)
  ADDIW s9, s2, 1
  # implict jump to bb12
bb12:
  BLT s9, s0, bb13
  JAL zero, bb9
bb13:
  ADD s1, s9, zero
  JAL zero, bb11
bb14:
  ADD t2, zero, zero
  ADD a3, zero, zero
  ADD a4, zero, zero
  # implict jump to bb15
bb15:
  ADD a5, a4, zero
  ADD a6, a3, zero
  ADD t4, t2, zero
  SW t4, 16(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb20
  # implict jump to bb16
bb16:
  ADD t6, a5, zero
  # implict jump to bb17
bb17:
  ADD s5, t6, zero
  ADD s8, a6, zero
  LW t4, 16(sp)
  ADDIW s10, t4, 1
  # implict jump to bb18
bb18:
  LW t4, 4(sp)
  BLT s10, t4, bb19
  JAL zero, bb8
bb19:
  ADD t2, s10, zero
  ADD a3, s8, zero
  ADD a4, s5, zero
  JAL zero, bb15
bb20:
  ADD a2, zero, zero
  ADD t4, a5, zero
  SB t4, 0(sp)
  # implict jump to bb21
bb21:
  LB t4, 0(sp)
  ADD a1, t4, zero
  ADD t4, a2, zero
  SW t4, 20(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb27
  # implict jump to bb22
bb22:
  ADD t0, zero, zero
  # implict jump to bb23
bb23:
  ADD s4, a1, zero
  ADD s7, t0, zero
  LW t4, 20(sp)
  ADDIW s6, t4, 1
  # implict jump to bb24
bb24:
  LW t4, 4(sp)
  BLT s6, t4, bb26
  # implict jump to bb25
bb25:
  ADD a6, s7, zero
  ADD t6, s4, zero
  JAL zero, bb17
bb26:
  ADD a2, s6, zero
  ADD t4, s4, zero
  SB t4, 0(sp)
  JAL zero, bb21
bb27:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb28
bb28:
  LW t4, 12(sp)
  ADD s3, t4, zero
  LW t4, 20(sp)
  BLT t4, zero, bb147
  # implict jump to bb29
bb29:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb30
bb30:
  BNE s11, zero, bb146
  # implict jump to bb31
bb31:
  LW t4, 16(sp)
  SLT s11, t4, zero
  # implict jump to bb32
bb32:
  BNE s11, zero, bb145
  # implict jump to bb33
bb33:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb34
bb34:
  BNE s11, zero, bb144
  # implict jump to bb35
bb35:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  LW t4, 16(sp)
  ADDW s11, s11, t4
  SLLIW s11, s11, 2
  LA s2, temp
  ADD s2, s2, s11
  LW s2, 0(s2)
  # implict jump to bb36
bb36:
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb131
  # implict jump to bb37
bb37:
  ADD s2, zero, zero
  # implict jump to bb38
bb38:
  ADD s0, s2, zero
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:
  ADDIW t4, s3, 1
  SW t4, 8(sp)
  # implict jump to bb40
bb40:
  LW t4, 8(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb42
  # implict jump to bb41
bb41:
  LW t4, 8(sp)
  ADD t0, t4, zero
  ADD a1, s0, zero
  JAL zero, bb23
bb42:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb28
bb43:
  LW t4, 20(sp)
  BLT t4, zero, bb130
  # implict jump to bb44
bb44:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb45
bb45:
  BNE s2, zero, bb129
  # implict jump to bb46
bb46:
  SLT s2, s3, zero
  # implict jump to bb47
bb47:
  BNE s2, zero, bb128
  # implict jump to bb48
bb48:
  LW t4, 4(sp)
  SLT s2, s3, t4
  XORI s2, s2, 1
  # implict jump to bb49
bb49:
  BNE s2, zero, bb127
  # implict jump to bb50
bb50:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s3
  SLLIW s2, s2, 2
  LA s11, temp
  ADD s2, s11, s2
  LW s2, 0(s2)
  # implict jump to bb51
bb51:
  BLT s2, zero, bb102
  # implict jump to bb52
bb52:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s11, s2, s3
  SLLIW s11, s11, 2
  LA a0, temp
  ADD s11, a0, s11
  LW a0, 0(s11)
  LW t4, 20(sp)
  BLT t4, zero, bb101
  # implict jump to bb53
bb53:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT a7, t4, t3
  XORI a7, a7, 1
  # implict jump to bb54
bb54:
  BNE a7, zero, bb100
  # implict jump to bb55
bb55:
  LW t4, 16(sp)
  SLT a7, t4, zero
  # implict jump to bb56
bb56:
  BNE a7, zero, bb99
  # implict jump to bb57
bb57:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT a7, t4, t3
  XORI a7, a7, 1
  # implict jump to bb58
bb58:
  BNE a7, zero, bb98
  # implict jump to bb59
bb59:
  LW t4, 16(sp)
  ADDW a7, s2, t4
  SLLIW a7, a7, 2
  LA t1, temp
  ADD t1, t1, a7
  LW t1, 0(t1)
  # implict jump to bb60
bb60:
  LW t4, 16(sp)
  SLT a7, t4, zero
  LW t4, 16(sp)
  BLT t4, zero, bb97
  # implict jump to bb61
bb61:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb62
bb62:
  BNE s1, zero, bb96
  # implict jump to bb63
bb63:
  SLT s1, s3, zero
  # implict jump to bb64
bb64:
  BNE s1, zero, bb95
  # implict jump to bb65
bb65:
  LW t4, 4(sp)
  SLT s1, s3, t4
  XORI s1, s1, 1
  # implict jump to bb66
bb66:
  BNE s1, zero, bb94
  # implict jump to bb67
bb67:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s1, t4, t3
  ADDW s1, s1, s3
  SLLIW s1, s1, 2
  LA a5, temp
  ADD s1, a5, s1
  LW s1, 0(s1)
  # implict jump to bb68
bb68:
  ADDW s1, t1, s1
  BLT s1, a0, bb69
  JAL zero, bb39
bb69:
  LW t4, 20(sp)
  BLT t4, zero, bb93
  # implict jump to bb70
bb70:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb71
bb71:
  BNE s1, zero, bb92
  # implict jump to bb72
bb72:
  ADD s1, a7, zero
  # implict jump to bb73
bb73:
  BNE s1, zero, bb91
  # implict jump to bb74
bb74:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb75
bb75:
  BNE s1, zero, bb90
  # implict jump to bb76
bb76:
  LW t4, 16(sp)
  ADDW s1, s2, t4
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb77
bb77:
  LW t4, 16(sp)
  BLT t4, zero, bb89
  # implict jump to bb78
bb78:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb79
bb79:
  BNE s2, zero, bb88
  # implict jump to bb80
bb80:
  SLT s2, s3, zero
  # implict jump to bb81
bb81:
  BNE s2, zero, bb87
  # implict jump to bb82
bb82:
  LW t4, 4(sp)
  SLT s2, s3, t4
  XORI s2, s2, 1
  # implict jump to bb83
bb83:
  BNE s2, zero, bb86
  # implict jump to bb84
bb84:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s3
  SLLIW s2, s2, 2
  LA t1, temp
  ADD s2, t1, s2
  LW s2, 0(s2)
  # implict jump to bb85
bb85:
  ADDW s1, s1, s2
  SW s1, 0(s11)
  JAL zero, bb39
bb86:
  ADDI s2, zero, -1
  JAL zero, bb85
bb87:
  ADDI s2, zero, 1
  JAL zero, bb83
bb88:
  ADDI s2, zero, 1
  JAL zero, bb81
bb89:
  ADDI s2, zero, 1
  JAL zero, bb79
bb90:
  ADDI s1, zero, -1
  JAL zero, bb77
bb91:
  ADDI s1, zero, 1
  JAL zero, bb75
bb92:
  ADDI s1, zero, 1
  JAL zero, bb73
bb93:
  ADDI s1, zero, 1
  JAL zero, bb71
bb94:
  ADDI s1, zero, -1
  JAL zero, bb68
bb95:
  ADDI s1, zero, 1
  JAL zero, bb66
bb96:
  ADDI s1, zero, 1
  JAL zero, bb64
bb97:
  ADDI s1, zero, 1
  JAL zero, bb62
bb98:
  ADDI t1, zero, -1
  JAL zero, bb60
bb99:
  ADDI a7, zero, 1
  JAL zero, bb58
bb100:
  ADDI a7, zero, 1
  JAL zero, bb56
bb101:
  ADDI a7, zero, 1
  JAL zero, bb54
bb102:
  LW t4, 20(sp)
  LW t3, 4(sp)
  MULW s1, t4, t3
  ADDW s2, s1, s3
  SLLIW s2, s2, 2
  LA s11, temp
  ADD s2, s11, s2
  LW t4, 20(sp)
  BLT t4, zero, bb126
  # implict jump to bb103
bb103:
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb104
bb104:
  BNE s11, zero, bb125
  # implict jump to bb105
bb105:
  LW t4, 16(sp)
  SLT s11, t4, zero
  # implict jump to bb106
bb106:
  BNE s11, zero, bb124
  # implict jump to bb107
bb107:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb108
bb108:
  BNE s11, zero, bb123
  # implict jump to bb109
bb109:
  LW t4, 16(sp)
  ADDW s1, s1, t4
  SLLIW s1, s1, 2
  LA s11, temp
  ADD s1, s11, s1
  LW s1, 0(s1)
  # implict jump to bb110
bb110:
  LW t4, 16(sp)
  BLT t4, zero, bb122
  # implict jump to bb111
bb111:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb112
bb112:
  BNE s11, zero, bb121
  # implict jump to bb113
bb113:
  SLT s11, s3, zero
  # implict jump to bb114
bb114:
  BNE s11, zero, bb120
  # implict jump to bb115
bb115:
  LW t4, 4(sp)
  SLT s11, s3, t4
  XORI s11, s11, 1
  # implict jump to bb116
bb116:
  BNE s11, zero, bb119
  # implict jump to bb117
bb117:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  ADDW s11, s11, s3
  SLLIW s11, s11, 2
  LA t1, temp
  ADD s11, t1, s11
  LW s11, 0(s11)
  # implict jump to bb118
bb118:
  ADDW s1, s1, s11
  SW s1, 0(s2)
  JAL zero, bb39
bb119:
  ADDI s11, zero, -1
  JAL zero, bb118
bb120:
  ADDI s11, zero, 1
  JAL zero, bb116
bb121:
  ADDI s11, zero, 1
  JAL zero, bb114
bb122:
  ADDI s11, zero, 1
  JAL zero, bb112
bb123:
  ADDI s1, zero, -1
  JAL zero, bb110
bb124:
  ADDI s11, zero, 1
  JAL zero, bb108
bb125:
  ADDI s11, zero, 1
  JAL zero, bb106
bb126:
  ADDI s11, zero, 1
  JAL zero, bb104
bb127:
  ADDI s2, zero, -1
  JAL zero, bb51
bb128:
  ADDI s2, zero, 1
  JAL zero, bb49
bb129:
  ADDI s2, zero, 1
  JAL zero, bb47
bb130:
  ADDI s2, zero, 1
  JAL zero, bb45
bb131:
  LW t4, 16(sp)
  BLT t4, zero, bb143
  # implict jump to bb132
bb132:
  LW t4, 16(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  XORI s11, s11, 1
  # implict jump to bb133
bb133:
  BNE s11, zero, bb142
  # implict jump to bb134
bb134:
  SLT s11, s3, zero
  # implict jump to bb135
bb135:
  BNE s11, zero, bb141
  # implict jump to bb136
bb136:
  LW t4, 4(sp)
  SLT s11, s3, t4
  XORI s11, s11, 1
  # implict jump to bb137
bb137:
  BNE s11, zero, bb140
  # implict jump to bb138
bb138:
  LW t4, 16(sp)
  LW t3, 4(sp)
  MULW s11, t4, t3
  ADDW s11, s11, s3
  SLLIW s11, s11, 2
  LA a0, temp
  ADD s11, a0, s11
  LW s11, 0(s11)
  # implict jump to bb139
bb139:
  SLT s11, s11, zero
  XORI s11, s11, 1
  ADD s2, s11, zero
  JAL zero, bb38
bb140:
  ADDI s11, zero, -1
  JAL zero, bb139
bb141:
  ADDI s11, zero, 1
  JAL zero, bb137
bb142:
  ADDI s11, zero, 1
  JAL zero, bb135
bb143:
  ADDI s11, zero, 1
  JAL zero, bb133
bb144:
  ADDI s2, zero, -1
  JAL zero, bb36
bb145:
  ADDI s11, zero, 1
  JAL zero, bb34
bb146:
  ADDI s11, zero, 1
  JAL zero, bb32
bb147:
  ADDI s11, zero, 1
  JAL zero, bb30
bb148:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb149
bb149:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb153
  # implict jump to bb150
bb150:
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  # implict jump to bb151
bb151:
  LW t4, 24(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb152
  JAL zero, bb7
bb152:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb149
bb153:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb154
bb154:
  LW t4, 32(sp)
  ADD t2, t4, zero
  LW t4, 4(sp)
  MULW a3, t2, t4
  LW t4, 36(sp)
  ADDW a3, a3, t4
  SLLIW a3, a3, 2
  LA a4, temp
  ADD a4, a4, a3
  BLT t2, zero, bb168
  # implict jump to bb155
bb155:
  LW t4, 4(sp)
  SLT a5, t2, t4
  XORI a5, a5, 1
  # implict jump to bb156
bb156:
  BNE a5, zero, bb167
  # implict jump to bb157
bb157:
  LW t4, 36(sp)
  SLT a5, t4, zero
  # implict jump to bb158
bb158:
  BNE a5, zero, bb166
  # implict jump to bb159
bb159:
  LW t4, 36(sp)
  LW t3, 4(sp)
  SLT a5, t4, t3
  XORI a5, a5, 1
  # implict jump to bb160
bb160:
  BNE a5, zero, bb165
  # implict jump to bb161
bb161:
  LD t4, 160(sp)
  ADD a3, t4, a3
  LW a3, 0(a3)
  # implict jump to bb162
bb162:
  SW a3, 0(a4)
  ADDIW t4, t2, 1
  SW t4, 28(sp)
  # implict jump to bb163
bb163:
  LW t4, 28(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb164
  JAL zero, bb150
bb164:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb154
bb165:
  ADDI a3, zero, -1
  JAL zero, bb162
bb166:
  ADDI a5, zero, 1
  JAL zero, bb160
bb167:
  ADDI a5, zero, 1
  JAL zero, bb158
bb168:
  ADDI a5, zero, 1
  JAL zero, bb156
main:
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s5, 120(sp)
  SD s4, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  SD s9, 176(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 76(sp)
  LA s11, w
  ADD a0, s11, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW t4, 76(sp)
  BLT zero, t4, bb311
  # implict jump to bb170
bb170:
  LW t4, 76(sp)
  BLT zero, t4, bb177
  # implict jump to bb171
bb171:
  LW t4, 76(sp)
  LW t3, 76(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb173
  # implict jump to bb172
bb172:
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
  LD s5, 120(sp)
  LD s4, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LD s9, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb173:
  ADD s1, zero, zero
  # implict jump to bb174
bb174:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, dst
  ADD s4, s4, s3
  LA s5, temp
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 16(sp)
  # implict jump to bb175
bb175:
  LW t4, 16(sp)
  BLT t4, s0, bb176
  JAL zero, bb172
bb176:
  LW t4, 16(sp)
  ADD s1, t4, zero
  JAL zero, bb174
bb177:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 2(sp)
  # implict jump to bb178
bb178:
  LB t4, 2(sp)
  ADD s11, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 76(sp)
  BLT zero, t4, bb183
  # implict jump to bb179
bb179:
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s11, zero
  SB t4, 0(sp)
  # implict jump to bb180
bb180:
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  # implict jump to bb181
bb181:
  LW t4, 20(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb182
  JAL zero, bb171
bb182:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  JAL zero, bb178
bb183:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, s11, zero
  SB t4, 3(sp)
  # implict jump to bb184
bb184:
  LB t4, 3(sp)
  ADD s11, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 76(sp)
  BLT zero, t4, bb190
  # implict jump to bb185
bb185:
  ADD s6, zero, zero
  # implict jump to bb186
bb186:
  ADD t4, s11, zero
  SB t4, 4(sp)
  ADD s9, s6, zero
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  # implict jump to bb187
bb187:
  LW t4, 48(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb189
  # implict jump to bb188
bb188:
  ADD t4, s9, zero
  SW t4, 12(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb180
bb189:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  JAL zero, bb184
bb190:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb191
bb191:
  LW t4, 36(sp)
  ADD s7, t4, zero
  LW t4, 40(sp)
  BLT t4, zero, bb310
  # implict jump to bb192
bb192:
  LW t4, 40(sp)
  LW t3, 76(sp)
  SLT s5, t4, t3
  XORI s5, s5, 1
  # implict jump to bb193
bb193:
  BNE s5, zero, bb309
  # implict jump to bb194
bb194:
  LW t4, 8(sp)
  SLT s5, t4, zero
  # implict jump to bb195
bb195:
  BNE s5, zero, bb308
  # implict jump to bb196
bb196:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s5, t4, t3
  XORI s5, s5, 1
  # implict jump to bb197
bb197:
  BNE s5, zero, bb307
  # implict jump to bb198
bb198:
  LW t4, 40(sp)
  LW t3, 76(sp)
  MULW s5, t4, t3
  LW t4, 8(sp)
  ADDW s5, s5, t4
  SLLIW s5, s5, 2
  LA s8, temp
  ADD s5, s8, s5
  LW s5, 0(s5)
  # implict jump to bb199
bb199:
  SLT s5, s5, zero
  XORI s5, s5, 1
  BNE s5, zero, bb294
  # implict jump to bb200
bb200:
  ADD s5, zero, zero
  # implict jump to bb201
bb201:
  ADD s0, s5, zero
  BNE s0, zero, bb206
  # implict jump to bb202
bb202:
  ADDIW t4, s7, 1
  SW t4, 52(sp)
  # implict jump to bb203
bb203:
  LW t4, 52(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb205
  # implict jump to bb204
bb204:
  LW t4, 52(sp)
  ADD s6, t4, zero
  ADD s11, s0, zero
  JAL zero, bb186
bb205:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb191
bb206:
  LW t4, 40(sp)
  BLT t4, zero, bb293
  # implict jump to bb207
bb207:
  LW t4, 40(sp)
  LW t3, 76(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  # implict jump to bb208
bb208:
  BNE s3, zero, bb292
  # implict jump to bb209
bb209:
  SLT s3, s7, zero
  # implict jump to bb210
bb210:
  BNE s3, zero, bb291
  # implict jump to bb211
bb211:
  LW t4, 76(sp)
  SLT s3, s7, t4
  XORI s3, s3, 1
  # implict jump to bb212
bb212:
  BNE s3, zero, bb290
  # implict jump to bb213
bb213:
  LW t4, 40(sp)
  LW t3, 76(sp)
  MULW s3, t4, t3
  ADDW s3, s3, s7
  SLLIW s3, s3, 2
  LA s5, temp
  ADD s3, s5, s3
  LW s3, 0(s3)
  # implict jump to bb214
bb214:
  BLT s3, zero, bb265
  # implict jump to bb215
bb215:
  LW t4, 40(sp)
  LW t3, 76(sp)
  MULW s3, t4, t3
  ADDW s5, s3, s7
  SLLIW s5, s5, 2
  LA s8, temp
  ADD s5, s8, s5
  LW s8, 0(s5)
  LW t4, 40(sp)
  BLT t4, zero, bb264
  # implict jump to bb216
bb216:
  LW t4, 40(sp)
  LW t3, 76(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb217
bb217:
  BNE s10, zero, bb263
  # implict jump to bb218
bb218:
  LW t4, 8(sp)
  SLT s10, t4, zero
  # implict jump to bb219
bb219:
  BNE s10, zero, bb262
  # implict jump to bb220
bb220:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s10, t4, t3
  XORI s10, s10, 1
  # implict jump to bb221
bb221:
  BNE s10, zero, bb261
  # implict jump to bb222
bb222:
  LW t4, 8(sp)
  ADDW s10, s3, t4
  SLLIW s10, s10, 2
  LA s2, temp
  ADD s2, s2, s10
  LW s2, 0(s2)
  # implict jump to bb223
bb223:
  LW t4, 8(sp)
  SLT s10, t4, zero
  LW t4, 8(sp)
  BLT t4, zero, bb260
  # implict jump to bb224
bb224:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb225
bb225:
  BNE s1, zero, bb259
  # implict jump to bb226
bb226:
  SLT s1, s7, zero
  # implict jump to bb227
bb227:
  BNE s1, zero, bb258
  # implict jump to bb228
bb228:
  LW t4, 76(sp)
  SLT s1, s7, t4
  XORI s1, s1, 1
  # implict jump to bb229
bb229:
  BNE s1, zero, bb257
  # implict jump to bb230
bb230:
  LW t4, 8(sp)
  LW t3, 76(sp)
  MULW s1, t4, t3
  ADDW s1, s1, s7
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s1, s4, s1
  LW s1, 0(s1)
  # implict jump to bb231
bb231:
  ADDW s1, s2, s1
  BLT s1, s8, bb232
  JAL zero, bb202
bb232:
  LW t4, 40(sp)
  BLT t4, zero, bb256
  # implict jump to bb233
bb233:
  LW t4, 40(sp)
  LW t3, 76(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb234
bb234:
  BNE s1, zero, bb255
  # implict jump to bb235
bb235:
  ADD s1, s10, zero
  # implict jump to bb236
bb236:
  BNE s1, zero, bb254
  # implict jump to bb237
bb237:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb238
bb238:
  BNE s1, zero, bb253
  # implict jump to bb239
bb239:
  LW t4, 8(sp)
  ADDW s1, s3, t4
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s1, 0(s1)
  # implict jump to bb240
bb240:
  LW t4, 8(sp)
  BLT t4, zero, bb252
  # implict jump to bb241
bb241:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s2, t4, t3
  XORI s2, s2, 1
  # implict jump to bb242
bb242:
  BNE s2, zero, bb251
  # implict jump to bb243
bb243:
  SLT s2, s7, zero
  # implict jump to bb244
bb244:
  BNE s2, zero, bb250
  # implict jump to bb245
bb245:
  LW t4, 76(sp)
  SLT s2, s7, t4
  XORI s2, s2, 1
  # implict jump to bb246
bb246:
  BNE s2, zero, bb249
  # implict jump to bb247
bb247:
  LW t4, 8(sp)
  LW t3, 76(sp)
  MULW s2, t4, t3
  ADDW s2, s2, s7
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW s2, 0(s2)
  # implict jump to bb248
bb248:
  ADDW s1, s1, s2
  SW s1, 0(s5)
  JAL zero, bb202
bb249:
  ADDI s2, zero, -1
  JAL zero, bb248
bb250:
  ADDI s2, zero, 1
  JAL zero, bb246
bb251:
  ADDI s2, zero, 1
  JAL zero, bb244
bb252:
  ADDI s2, zero, 1
  JAL zero, bb242
bb253:
  ADDI s1, zero, -1
  JAL zero, bb240
bb254:
  ADDI s1, zero, 1
  JAL zero, bb238
bb255:
  ADDI s1, zero, 1
  JAL zero, bb236
bb256:
  ADDI s1, zero, 1
  JAL zero, bb234
bb257:
  ADDI s1, zero, -1
  JAL zero, bb231
bb258:
  ADDI s1, zero, 1
  JAL zero, bb229
bb259:
  ADDI s1, zero, 1
  JAL zero, bb227
bb260:
  ADDI s1, zero, 1
  JAL zero, bb225
bb261:
  ADDI s2, zero, -1
  JAL zero, bb223
bb262:
  ADDI s10, zero, 1
  JAL zero, bb221
bb263:
  ADDI s10, zero, 1
  JAL zero, bb219
bb264:
  ADDI s10, zero, 1
  JAL zero, bb217
bb265:
  LW t4, 40(sp)
  LW t3, 76(sp)
  MULW s1, t4, t3
  ADDW s2, s1, s7
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW t4, 40(sp)
  BLT t4, zero, bb289
  # implict jump to bb266
bb266:
  LW t4, 40(sp)
  LW t3, 76(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  # implict jump to bb267
bb267:
  BNE s3, zero, bb288
  # implict jump to bb268
bb268:
  LW t4, 8(sp)
  SLT s3, t4, zero
  # implict jump to bb269
bb269:
  BNE s3, zero, bb287
  # implict jump to bb270
bb270:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  # implict jump to bb271
bb271:
  BNE s3, zero, bb286
  # implict jump to bb272
bb272:
  LW t4, 8(sp)
  ADDW s1, s1, t4
  SLLIW s1, s1, 2
  LA s3, temp
  ADD s1, s3, s1
  LW s1, 0(s1)
  # implict jump to bb273
bb273:
  LW t4, 8(sp)
  BLT t4, zero, bb285
  # implict jump to bb274
bb274:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  # implict jump to bb275
bb275:
  BNE s3, zero, bb284
  # implict jump to bb276
bb276:
  SLT s3, s7, zero
  # implict jump to bb277
bb277:
  BNE s3, zero, bb283
  # implict jump to bb278
bb278:
  LW t4, 76(sp)
  SLT s3, s7, t4
  XORI s3, s3, 1
  # implict jump to bb279
bb279:
  BNE s3, zero, bb282
  # implict jump to bb280
bb280:
  LW t4, 8(sp)
  LW t3, 76(sp)
  MULW s3, t4, t3
  ADDW s3, s3, s7
  SLLIW s3, s3, 2
  LA s4, temp
  ADD s3, s4, s3
  LW s3, 0(s3)
  # implict jump to bb281
bb281:
  ADDW s1, s1, s3
  SW s1, 0(s2)
  JAL zero, bb202
bb282:
  ADDI s3, zero, -1
  JAL zero, bb281
bb283:
  ADDI s3, zero, 1
  JAL zero, bb279
bb284:
  ADDI s3, zero, 1
  JAL zero, bb277
bb285:
  ADDI s3, zero, 1
  JAL zero, bb275
bb286:
  ADDI s1, zero, -1
  JAL zero, bb273
bb287:
  ADDI s3, zero, 1
  JAL zero, bb271
bb288:
  ADDI s3, zero, 1
  JAL zero, bb269
bb289:
  ADDI s3, zero, 1
  JAL zero, bb267
bb290:
  ADDI s3, zero, -1
  JAL zero, bb214
bb291:
  ADDI s3, zero, 1
  JAL zero, bb212
bb292:
  ADDI s3, zero, 1
  JAL zero, bb210
bb293:
  ADDI s3, zero, 1
  JAL zero, bb208
bb294:
  LW t4, 8(sp)
  BLT t4, zero, bb306
  # implict jump to bb295
bb295:
  LW t4, 8(sp)
  LW t3, 76(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb296
bb296:
  BNE s8, zero, bb305
  # implict jump to bb297
bb297:
  SLT s8, s7, zero
  # implict jump to bb298
bb298:
  BNE s8, zero, bb304
  # implict jump to bb299
bb299:
  LW t4, 76(sp)
  SLT s8, s7, t4
  XORI s8, s8, 1
  # implict jump to bb300
bb300:
  BNE s8, zero, bb303
  # implict jump to bb301
bb301:
  LW t4, 8(sp)
  LW t3, 76(sp)
  MULW s8, t4, t3
  ADDW s8, s8, s7
  SLLIW s8, s8, 2
  LA s3, temp
  ADD s3, s3, s8
  LW s3, 0(s3)
  # implict jump to bb302
bb302:
  SLT s3, s3, zero
  XORI s3, s3, 1
  ADD s5, s3, zero
  JAL zero, bb201
bb303:
  ADDI s3, zero, -1
  JAL zero, bb302
bb304:
  ADDI s8, zero, 1
  JAL zero, bb300
bb305:
  ADDI s8, zero, 1
  JAL zero, bb298
bb306:
  ADDI s8, zero, 1
  JAL zero, bb296
bb307:
  ADDI s5, zero, -1
  JAL zero, bb199
bb308:
  ADDI s5, zero, 1
  JAL zero, bb197
bb309:
  ADDI s5, zero, 1
  JAL zero, bb195
bb310:
  ADDI s5, zero, 1
  JAL zero, bb193
bb311:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb312
bb312:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 76(sp)
  BLT zero, t4, bb316
  # implict jump to bb313
bb313:
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb314
bb314:
  LW t4, 56(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb315
  JAL zero, bb170
bb315:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb312
bb316:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb317
bb317:
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 76(sp)
  MULW s11, s3, t4
  LW t4, 72(sp)
  ADDW s11, s11, t4
  SLLIW s11, s11, 2
  LA s6, temp
  ADD s6, s6, s11
  BLT s3, zero, bb331
  # implict jump to bb318
bb318:
  LW t4, 76(sp)
  SLT s5, s3, t4
  XORI s5, s5, 1
  # implict jump to bb319
bb319:
  BNE s5, zero, bb330
  # implict jump to bb320
bb320:
  LW t4, 72(sp)
  SLT s5, t4, zero
  # implict jump to bb321
bb321:
  BNE s5, zero, bb329
  # implict jump to bb322
bb322:
  LW t4, 72(sp)
  LW t3, 76(sp)
  SLT s5, t4, t3
  XORI s5, s5, 1
  # implict jump to bb323
bb323:
  BNE s5, zero, bb328
  # implict jump to bb324
bb324:
  LA s5, w
  ADD s5, s5, s11
  LW s5, 0(s5)
  # implict jump to bb325
bb325:
  SW s5, 0(s6)
  ADDIW t4, s3, 1
  SW t4, 64(sp)
  # implict jump to bb326
bb326:
  LW t4, 64(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb327
  JAL zero, bb313
bb327:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb317
bb328:
  ADDI s5, zero, -1
  JAL zero, bb325
bb329:
  ADDI s5, zero, 1
  JAL zero, bb323
bb330:
  ADDI s5, zero, 1
  JAL zero, bb321
bb331:
  ADDI s5, zero, 1
  JAL zero, bb319
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT a2, zero, bb343
  # implict jump to bb333
bb333:
  SLT s1, a2, a1
  XORI s1, s1, 1
  # implict jump to bb334
bb334:
  BNE s1, zero, bb342
  # implict jump to bb335
bb335:
  SLT s1, a3, zero
  # implict jump to bb336
bb336:
  BNE s1, zero, bb341
  # implict jump to bb337
bb337:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb338
bb338:
  BNE s1, zero, bb340
  # implict jump to bb339
bb339:
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
bb340:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb341:
  ADDI s1, zero, 1
  JAL zero, bb338
bb342:
  ADDI s1, zero, 1
  JAL zero, bb336
bb343:
  ADDI s1, zero, 1
  JAL zero, bb334
