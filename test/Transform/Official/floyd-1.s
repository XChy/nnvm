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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  SLLIW s5, s4, 2
  ADD s6, s1, s5
  ADD s7, s0, s5
  LW s5, 0(s7)
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb87
  # implict jump to bb6
bb6:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb7
bb7:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  SLT s11, s8, s2
  BNE s11, zero, bb12
  # implict jump to bb8
bb8:
  MULW s11, s2, s2
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD t1, t0, zero
  SLT t2, t1, s11
  BNE t2, zero, bb11
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
  SLLIW t2, t1, 2
  ADD a0, s1, t2
  LA a1, temp
  ADD a2, a1, t2
  LW t2, 0(a2)
  SW t2, 0(a0)
  ADDIW t2, t1, 1
  ADD t0, t2, zero
  JAL zero, bb9
bb12:
  ADD s11, s10, zero
  ADD s10, zero, zero
  ADD t0, s9, zero
  # implict jump to bb13
bb13:
  ADD s9, t0, zero
  ADD t1, s10, zero
  ADD t2, s11, zero
  SLT a0, t1, s2
  BNE a0, zero, bb15
  # implict jump to bb14
bb14:
  ADDIW a0, s8, 1
  ADD s5, t2, zero
  ADD s6, s9, zero
  ADD s7, a0, zero
  JAL zero, bb7
bb15:
  ADD s5, t2, zero
  ADD s6, zero, zero
  # implict jump to bb16
bb16:
  ADD s7, s6, zero
  ADD s9, s5, zero
  SLT t2, s7, s2
  BNE t2, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW t2, t1, 1
  ADD s11, s9, zero
  ADD s10, t2, zero
  ADD t0, s7, zero
  JAL zero, bb13
bb18:
  SLT s9, t1, zero
  BNE s9, zero, bb86
  # implict jump to bb19
bb19:
  SLT s10, t1, s2
  XORI s11, s10, 1
  ADD s10, s11, zero
  # implict jump to bb20
bb20:
  ADD s11, s10, zero
  BNE s11, zero, bb85
  # implict jump to bb21
bb21:
  SLT s10, s8, zero
  ADD s11, s10, zero
  # implict jump to bb22
bb22:
  ADD s10, s11, zero
  BNE s10, zero, bb84
  # implict jump to bb23
bb23:
  SLT s10, s8, s2
  XORI s11, s10, 1
  ADD s10, s11, zero
  # implict jump to bb24
bb24:
  ADD s11, s10, zero
  BNE s11, zero, bb83
  # implict jump to bb25
bb25:
  MULW s10, t1, s2
  ADDW s11, s10, s8
  SLLIW s10, s11, 2
  LA s11, temp
  ADD t0, s11, s10
  LW s10, 0(t0)
  ADD s11, s10, zero
  # implict jump to bb26
bb26:
  ADD s10, s11, zero
  SLT s11, s10, zero
  XORI t0, s11, 1
  BNE t0, zero, bb70
  # implict jump to bb27
bb27:
  ADD s11, zero, zero
  # implict jump to bb28
bb28:
  ADD t0, s11, zero
  BNE t0, zero, bb30
  # implict jump to bb29
bb29:
  ADDIW s9, s7, 1
  ADD s5, t0, zero
  ADD s6, s9, zero
  JAL zero, bb16
bb30:
  BNE s9, zero, bb69
  # implict jump to bb31
bb31:
  SLT s9, t1, s2
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb32
bb32:
  ADD s11, s9, zero
  BNE s11, zero, bb68
  # implict jump to bb33
bb33:
  SLT s9, s7, zero
  ADD s11, s9, zero
  # implict jump to bb34
bb34:
  ADD s9, s11, zero
  BNE s9, zero, bb67
  # implict jump to bb35
bb35:
  SLT s9, s7, s2
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb36
bb36:
  ADD s11, s9, zero
  BNE s11, zero, bb66
  # implict jump to bb37
bb37:
  MULW s9, t1, s2
  ADDW s11, s9, s7
  SLLIW s9, s11, 2
  LA s11, temp
  ADD t2, s11, s9
  LW s9, 0(t2)
  ADD s11, s9, zero
  # implict jump to bb38
bb38:
  ADD s9, s11, zero
  SLT s11, s9, zero
  BNE s11, zero, bb53
  # implict jump to bb39
bb39:
  MULW s9, t1, s2
  ADDW s11, s9, s7
  SLLIW s9, s11, 2
  LA s11, temp
  ADD t2, s11, s9
  LW s9, 0(t2)
  SLT s11, s8, zero
  BNE s11, zero, bb52
  # implict jump to bb40
bb40:
  SLT s11, s8, s2
  XORI a0, s11, 1
  ADD s11, a0, zero
  # implict jump to bb41
bb41:
  ADD a0, s11, zero
  BNE a0, zero, bb51
  # implict jump to bb42
bb42:
  SLT s11, s7, zero
  ADD a0, s11, zero
  # implict jump to bb43
bb43:
  ADD s11, a0, zero
  BNE s11, zero, bb50
  # implict jump to bb44
bb44:
  SLT s11, s7, s2
  XORI a0, s11, 1
  ADD s11, a0, zero
  # implict jump to bb45
bb45:
  ADD a0, s11, zero
  BNE a0, zero, bb49
  # implict jump to bb46
bb46:
  MULW s11, s8, s2
  ADDW a0, s11, s7
  SLLIW s11, a0, 2
  LA a0, temp
  ADD a1, a0, s11
  LW s11, 0(a1)
  ADD a0, s11, zero
  # implict jump to bb47
bb47:
  ADD s11, a0, zero
  ADDW a0, s10, s11
  SLT s11, a0, s9
  BNE s11, zero, bb48
  JAL zero, bb29
bb48:
  SW a0, 0(t2)
  JAL zero, bb29
bb49:
  ADDI a0, zero, -1
  JAL zero, bb47
bb50:
  ADDI s11, zero, 1
  JAL zero, bb45
bb51:
  ADDI a0, zero, 1
  JAL zero, bb43
bb52:
  ADDI s11, zero, 1
  JAL zero, bb41
bb53:
  MULW s9, t1, s2
  ADDW s11, s9, s7
  SLLIW s9, s11, 2
  LA s11, temp
  ADD t2, s11, s9
  SLT s9, s8, zero
  BNE s9, zero, bb65
  # implict jump to bb54
bb54:
  SLT s9, s8, s2
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb55
bb55:
  ADD s11, s9, zero
  BNE s11, zero, bb64
  # implict jump to bb56
bb56:
  SLT s9, s7, zero
  ADD s11, s9, zero
  # implict jump to bb57
bb57:
  ADD s9, s11, zero
  BNE s9, zero, bb63
  # implict jump to bb58
bb58:
  SLT s9, s7, s2
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb59
bb59:
  ADD s11, s9, zero
  BNE s11, zero, bb62
  # implict jump to bb60
bb60:
  MULW s9, s8, s2
  ADDW s11, s9, s7
  SLLIW s9, s11, 2
  LA s11, temp
  ADD a0, s11, s9
  LW s9, 0(a0)
  ADD s11, s9, zero
  # implict jump to bb61
bb61:
  ADD s9, s11, zero
  ADDW s11, s10, s9
  SW s11, 0(t2)
  JAL zero, bb29
bb62:
  ADDI s11, zero, -1
  JAL zero, bb61
bb63:
  ADDI s9, zero, 1
  JAL zero, bb59
bb64:
  ADDI s11, zero, 1
  JAL zero, bb57
bb65:
  ADDI s9, zero, 1
  JAL zero, bb55
bb66:
  ADDI s11, zero, -1
  JAL zero, bb38
bb67:
  ADDI s9, zero, 1
  JAL zero, bb36
bb68:
  ADDI s11, zero, 1
  JAL zero, bb34
bb69:
  ADDI s9, zero, 1
  JAL zero, bb32
bb70:
  SLT t0, s8, zero
  BNE t0, zero, bb82
  # implict jump to bb71
bb71:
  SLT t0, s8, s2
  XORI t2, t0, 1
  ADD t0, t2, zero
  # implict jump to bb72
bb72:
  ADD t2, t0, zero
  BNE t2, zero, bb81
  # implict jump to bb73
bb73:
  SLT t0, s7, zero
  ADD t2, t0, zero
  # implict jump to bb74
bb74:
  ADD t0, t2, zero
  BNE t0, zero, bb80
  # implict jump to bb75
bb75:
  SLT t0, s7, s2
  XORI t2, t0, 1
  ADD t0, t2, zero
  # implict jump to bb76
bb76:
  ADD t2, t0, zero
  BNE t2, zero, bb79
  # implict jump to bb77
bb77:
  MULW t0, s8, s2
  ADDW t2, t0, s7
  SLLIW t0, t2, 2
  LA t2, temp
  ADD a0, t2, t0
  LW t0, 0(a0)
  ADD t2, t0, zero
  # implict jump to bb78
bb78:
  ADD t0, t2, zero
  SLT t2, t0, zero
  XORI t0, t2, 1
  ADD s11, t0, zero
  JAL zero, bb28
bb79:
  ADDI t2, zero, -1
  JAL zero, bb78
bb80:
  ADDI t0, zero, 1
  JAL zero, bb76
bb81:
  ADDI t2, zero, 1
  JAL zero, bb74
bb82:
  ADDI t0, zero, 1
  JAL zero, bb72
bb83:
  ADDI s11, zero, -1
  JAL zero, bb26
bb84:
  ADDI s10, zero, 1
  JAL zero, bb24
bb85:
  ADDI s11, zero, 1
  JAL zero, bb22
bb86:
  ADDI s10, zero, 1
  JAL zero, bb20
bb87:
  ADD s5, zero, zero
  # implict jump to bb88
bb88:
  ADD s6, s5, zero
  SLT s7, s6, s2
  BNE s7, zero, bb90
  # implict jump to bb89
bb89:
  ADDIW s7, s4, 1
  ADD s3, s7, zero
  JAL zero, bb5
bb90:
  MULW s3, s6, s2
  ADDW s7, s3, s4
  SLLIW s3, s7, 2
  LA s7, temp
  ADD s8, s7, s3
  SLT s7, s6, zero
  BNE s7, zero, bb102
  # implict jump to bb91
bb91:
  SLT s7, s6, s2
  XORI s9, s7, 1
  ADD s7, s9, zero
  # implict jump to bb92
bb92:
  ADD s9, s7, zero
  BNE s9, zero, bb101
  # implict jump to bb93
bb93:
  SLT s7, s4, zero
  ADD s9, s7, zero
  # implict jump to bb94
bb94:
  ADD s7, s9, zero
  BNE s7, zero, bb100
  # implict jump to bb95
bb95:
  SLT s7, s4, s2
  XORI s9, s7, 1
  ADD s7, s9, zero
  # implict jump to bb96
bb96:
  ADD s9, s7, zero
  BNE s9, zero, bb99
  # implict jump to bb97
bb97:
  ADD s7, s0, s3
  LW s3, 0(s7)
  ADD s7, s3, zero
  # implict jump to bb98
bb98:
  ADD s3, s7, zero
  SW s3, 0(s8)
  ADDIW s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb88
bb99:
  ADDI s7, zero, -1
  JAL zero, bb98
bb100:
  ADDI s7, zero, 1
  JAL zero, bb96
bb101:
  ADDI s9, zero, 1
  JAL zero, bb94
bb102:
  ADDI s7, zero, 1
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
  ADD s1, a0, zero
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
  ADD t0, ra, s2
  LA ra, temp
  ADD t1, ra, s2
  LW s2, 0(t1)
  SW s2, 0(t0)
  ADDIW s2, s11, 1
  ADD s10, s2, zero
  JAL zero, bb108
bb111:
  ADD s2, s8, zero
  ADD s8, zero, zero
  ADD s9, s7, zero
  # implict jump to bb112
bb112:
  ADD s7, s9, zero
  ADD s10, s8, zero
  ADD s11, s2, zero
  SLT ra, s10, s0
  BNE ra, zero, bb114
  # implict jump to bb113
bb113:
  ADDIW ra, s6, 1
  ADD s3, s11, zero
  ADD s4, s7, zero
  ADD s5, ra, zero
  JAL zero, bb106
bb114:
  ADD s3, s11, zero
  ADD s4, zero, zero
  # implict jump to bb115
bb115:
  ADD s5, s4, zero
  ADD s7, s3, zero
  SLT s11, s5, s0
  BNE s11, zero, bb117
  # implict jump to bb116
bb116:
  ADDIW s11, s10, 1
  ADD s2, s7, zero
  ADD s8, s11, zero
  ADD s9, s5, zero
  JAL zero, bb112
bb117:
  SLT s2, s10, zero
  BNE s2, zero, bb185
  # implict jump to bb118
bb118:
  SLT s7, s10, s0
  XORI s8, s7, 1
  ADD s7, s8, zero
  # implict jump to bb119
bb119:
  ADD s8, s7, zero
  BNE s8, zero, bb184
  # implict jump to bb120
bb120:
  SLT s7, s6, zero
  ADD s8, s7, zero
  # implict jump to bb121
bb121:
  ADD s7, s8, zero
  BNE s7, zero, bb183
  # implict jump to bb122
bb122:
  SLT s7, s6, s0
  XORI s8, s7, 1
  ADD s7, s8, zero
  # implict jump to bb123
bb123:
  ADD s8, s7, zero
  BNE s8, zero, bb182
  # implict jump to bb124
bb124:
  MULW s7, s10, s0
  ADDW s8, s7, s6
  SLLIW s7, s8, 2
  LA s8, temp
  ADD s9, s8, s7
  LW s7, 0(s9)
  ADD s8, s7, zero
  # implict jump to bb125
bb125:
  ADD s7, s8, zero
  SLT s8, s7, zero
  XORI s9, s8, 1
  BNE s9, zero, bb169
  # implict jump to bb126
bb126:
  ADD s8, zero, zero
  # implict jump to bb127
bb127:
  ADD s9, s8, zero
  BNE s9, zero, bb129
  # implict jump to bb128
bb128:
  ADDIW s2, s5, 1
  ADD s3, s9, zero
  ADD s4, s2, zero
  JAL zero, bb115
bb129:
  BNE s2, zero, bb168
  # implict jump to bb130
bb130:
  SLT s2, s10, s0
  XORI s8, s2, 1
  ADD s2, s8, zero
  # implict jump to bb131
bb131:
  ADD s8, s2, zero
  BNE s8, zero, bb167
  # implict jump to bb132
bb132:
  SLT s2, s5, zero
  ADD s8, s2, zero
  # implict jump to bb133
bb133:
  ADD s2, s8, zero
  BNE s2, zero, bb166
  # implict jump to bb134
bb134:
  SLT s2, s5, s0
  XORI s8, s2, 1
  ADD s2, s8, zero
  # implict jump to bb135
bb135:
  ADD s8, s2, zero
  BNE s8, zero, bb165
  # implict jump to bb136
bb136:
  MULW s2, s10, s0
  ADDW s8, s2, s5
  SLLIW s2, s8, 2
  LA s8, temp
  ADD s11, s8, s2
  LW s2, 0(s11)
  ADD s8, s2, zero
  # implict jump to bb137
bb137:
  ADD s2, s8, zero
  SLT s8, s2, zero
  BNE s8, zero, bb152
  # implict jump to bb138
bb138:
  MULW s2, s10, s0
  ADDW s8, s2, s5
  SLLIW s2, s8, 2
  LA s8, temp
  ADD s11, s8, s2
  LW s2, 0(s11)
  SLT s8, s6, zero
  BNE s8, zero, bb151
  # implict jump to bb139
bb139:
  SLT s8, s6, s0
  XORI ra, s8, 1
  ADD s8, ra, zero
  # implict jump to bb140
bb140:
  ADD ra, s8, zero
  BNE ra, zero, bb150
  # implict jump to bb141
bb141:
  SLT s8, s5, zero
  ADD ra, s8, zero
  # implict jump to bb142
bb142:
  ADD s8, ra, zero
  BNE s8, zero, bb149
  # implict jump to bb143
bb143:
  SLT s8, s5, s0
  XORI ra, s8, 1
  ADD s8, ra, zero
  # implict jump to bb144
bb144:
  ADD ra, s8, zero
  BNE ra, zero, bb148
  # implict jump to bb145
bb145:
  MULW s8, s6, s0
  ADDW ra, s8, s5
  SLLIW s8, ra, 2
  LA ra, temp
  ADD t0, ra, s8
  LW s8, 0(t0)
  ADD ra, s8, zero
  # implict jump to bb146
bb146:
  ADD s8, ra, zero
  ADDW ra, s7, s8
  SLT s8, ra, s2
  BNE s8, zero, bb147
  JAL zero, bb128
bb147:
  SW ra, 0(s11)
  JAL zero, bb128
bb148:
  ADDI ra, zero, -1
  JAL zero, bb146
bb149:
  ADDI s8, zero, 1
  JAL zero, bb144
bb150:
  ADDI ra, zero, 1
  JAL zero, bb142
bb151:
  ADDI s8, zero, 1
  JAL zero, bb140
bb152:
  MULW s2, s10, s0
  ADDW s8, s2, s5
  SLLIW s2, s8, 2
  LA s8, temp
  ADD s11, s8, s2
  SLT s2, s6, zero
  BNE s2, zero, bb164
  # implict jump to bb153
bb153:
  SLT s2, s6, s0
  XORI s8, s2, 1
  ADD s2, s8, zero
  # implict jump to bb154
bb154:
  ADD s8, s2, zero
  BNE s8, zero, bb163
  # implict jump to bb155
bb155:
  SLT s2, s5, zero
  ADD s8, s2, zero
  # implict jump to bb156
bb156:
  ADD s2, s8, zero
  BNE s2, zero, bb162
  # implict jump to bb157
bb157:
  SLT s2, s5, s0
  XORI s8, s2, 1
  ADD s2, s8, zero
  # implict jump to bb158
bb158:
  ADD s8, s2, zero
  BNE s8, zero, bb161
  # implict jump to bb159
bb159:
  MULW s2, s6, s0
  ADDW s8, s2, s5
  SLLIW s2, s8, 2
  LA s8, temp
  ADD ra, s8, s2
  LW s2, 0(ra)
  ADD s8, s2, zero
  # implict jump to bb160
bb160:
  ADD s2, s8, zero
  ADDW s8, s7, s2
  SW s8, 0(s11)
  JAL zero, bb128
bb161:
  ADDI s8, zero, -1
  JAL zero, bb160
bb162:
  ADDI s2, zero, 1
  JAL zero, bb158
bb163:
  ADDI s8, zero, 1
  JAL zero, bb156
bb164:
  ADDI s2, zero, 1
  JAL zero, bb154
bb165:
  ADDI s8, zero, -1
  JAL zero, bb137
bb166:
  ADDI s2, zero, 1
  JAL zero, bb135
bb167:
  ADDI s8, zero, 1
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
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb171
bb171:
  ADD s11, s9, zero
  BNE s11, zero, bb180
  # implict jump to bb172
bb172:
  SLT s9, s5, zero
  ADD s11, s9, zero
  # implict jump to bb173
bb173:
  ADD s9, s11, zero
  BNE s9, zero, bb179
  # implict jump to bb174
bb174:
  SLT s9, s5, s0
  XORI s11, s9, 1
  ADD s9, s11, zero
  # implict jump to bb175
bb175:
  ADD s11, s9, zero
  BNE s11, zero, bb178
  # implict jump to bb176
bb176:
  MULW s9, s6, s0
  ADDW s11, s9, s5
  SLLIW s9, s11, 2
  LA s11, temp
  ADD ra, s11, s9
  LW s9, 0(ra)
  ADD s11, s9, zero
  # implict jump to bb177
bb177:
  ADD s9, s11, zero
  SLT s11, s9, zero
  XORI s9, s11, 1
  ADD s8, s9, zero
  JAL zero, bb127
bb178:
  ADDI s11, zero, -1
  JAL zero, bb177
bb179:
  ADDI s9, zero, 1
  JAL zero, bb175
bb180:
  ADDI s11, zero, 1
  JAL zero, bb173
bb181:
  ADDI s9, zero, 1
  JAL zero, bb171
bb182:
  ADDI s8, zero, -1
  JAL zero, bb125
bb183:
  ADDI s7, zero, 1
  JAL zero, bb123
bb184:
  ADDI s8, zero, 1
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
  ADDW s4, s1, t4
  SLLIW s1, s4, 2
  LA s4, temp
  ADD s5, s4, s1
  SLT s4, s3, zero
  BNE s4, zero, bb201
  # implict jump to bb190
bb190:
  SLT s4, s3, s0
  XORI s6, s4, 1
  ADD s4, s6, zero
  # implict jump to bb191
bb191:
  ADD s6, s4, zero
  BNE s6, zero, bb200
  # implict jump to bb192
bb192:
  LW t4, 0(sp)
  SLT s4, t4, zero
  ADD s6, s4, zero
  # implict jump to bb193
bb193:
  ADD s4, s6, zero
  BNE s4, zero, bb199
  # implict jump to bb194
bb194:
  LW t4, 0(sp)
  SLT s4, t4, s0
  XORI s6, s4, 1
  ADD s4, s6, zero
  # implict jump to bb195
bb195:
  ADD s6, s4, zero
  BNE s6, zero, bb198
  # implict jump to bb196
bb196:
  LA s4, w
  ADD s6, s4, s1
  LW s1, 0(s6)
  ADD s4, s1, zero
  # implict jump to bb197
bb197:
  ADD s1, s4, zero
  SW s1, 0(s5)
  ADDIW s1, s3, 1
  ADD s2, s1, zero
  JAL zero, bb187
bb198:
  ADDI s4, zero, -1
  JAL zero, bb197
bb199:
  ADDI s4, zero, 1
  JAL zero, bb195
bb200:
  ADDI s6, zero, 1
  JAL zero, bb193
bb201:
  ADDI s4, zero, 1
  JAL zero, bb191
getvalue:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SLT s4, s2, zero
  BNE s4, zero, bb213
  # implict jump to bb203
bb203:
  SLT s4, s2, s1
  XORI s5, s4, 1
  ADD s4, s5, zero
  # implict jump to bb204
bb204:
  ADD s5, s4, zero
  BNE s5, zero, bb212
  # implict jump to bb205
bb205:
  SLT s4, s3, zero
  ADD s5, s4, zero
  # implict jump to bb206
bb206:
  ADD s4, s5, zero
  BNE s4, zero, bb211
  # implict jump to bb207
bb207:
  SLT s4, s3, s1
  XORI s5, s4, 1
  ADD s4, s5, zero
  # implict jump to bb208
bb208:
  ADD s5, s4, zero
  BNE s5, zero, bb210
  # implict jump to bb209
bb209:
  MULW s4, s2, s1
  ADDW s1, s4, s3
  SLLIW s2, s1, 2
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb210:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb211:
  ADDI s4, zero, 1
  JAL zero, bb208
bb212:
  ADDI s5, zero, 1
  JAL zero, bb206
bb213:
  ADDI s4, zero, 1
  JAL zero, bb204
