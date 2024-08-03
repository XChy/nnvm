.global main
.section .bss
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608
.section .data



.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s11, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  CALL getint
  ADD s3, a0, zero
  LA a0, w
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI s0, zero, 0
  BLT s0, s3, bb138
  # implict jump to bb1
bb1:
  BLT s0, s3, bb7
  # implict jump to bb2
bb2:
  MULW s2, s3, s3
  BLT zero, s2, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s2, zero
  LA a1, dst
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA a0, dst
  ADD s3, a0, s1
  LA a0, temp
  ADD a0, a0, s1
  LW a0, 0(a0)
  SW a0, 0(s3)
  ADDIW a0, s0, 1
  BLT a0, s2, bb6
  JAL zero, bb3
bb6:
  JAL zero, bb5
bb7:
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  ADD s4, a0, zero
  ADD a0, s1, zero
  ADD s6, s2, zero
  BLT s0, s3, bb12
  # implict jump to bb9
bb9:
  ADD s1, s4, zero
  # implict jump to bb10
bb10:
  ADD s4, s1, zero
  ADDIW s1, s6, 1
  BLT s1, s3, bb11
  JAL zero, bb2
bb11:
  ADD s2, s1, zero
  ADD s1, a0, zero
  ADD a0, s4, zero
  JAL zero, bb8
bb12:
  ADD s1, zero, zero
  ADD a0, s4, zero
  # implict jump to bb13
bb13:
  ADD s2, a0, zero
  ADD s11, s1, zero
  BLT s0, s3, bb18
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  ADD s1, s2, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  ADDIW s1, s11, 1
  BLT s1, s3, bb17
  # implict jump to bb16
bb16:
  ADD s1, s2, zero
  JAL zero, bb10
bb17:
  ADD a0, s2, zero
  JAL zero, bb13
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  ADD s2, a0, zero
  BLT s11, zero, bb137
  # implict jump to bb20
bb20:
  SLT a0, s11, s3
  XORI a0, a0, 1
  # implict jump to bb21
bb21:
  BNE a0, zero, bb136
  # implict jump to bb22
bb22:
  SLT a0, s6, zero
  # implict jump to bb23
bb23:
  BNE a0, zero, bb135
  # implict jump to bb24
bb24:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb25
bb25:
  BNE a0, zero, bb134
  # implict jump to bb26
bb26:
  MULW a0, s11, s3
  ADDW a0, a0, s6
  SLLIW s1, a0, 2
  LA a0, temp
  ADD a0, a0, s1
  LW a0, 0(a0)
  # implict jump to bb27
bb27:
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb121
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  # implict jump to bb29
bb29:
  ADD s10, a0, zero
  BNE s10, zero, bb33
  # implict jump to bb30
bb30:
  ADDIW a0, s2, 1
  BLT a0, s3, bb32
  # implict jump to bb31
bb31:
  ADD s1, s10, zero
  JAL zero, bb15
bb32:
  JAL zero, bb19
bb33:
  BLT s11, zero, bb120
  # implict jump to bb34
bb34:
  SLT a0, s11, s3
  XORI a0, a0, 1
  # implict jump to bb35
bb35:
  BNE a0, zero, bb119
  # implict jump to bb36
bb36:
  SLT a0, s2, zero
  # implict jump to bb37
bb37:
  BNE a0, zero, bb118
  # implict jump to bb38
bb38:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb39
bb39:
  BNE a0, zero, bb117
  # implict jump to bb40
bb40:
  MULW a0, s11, s3
  ADDW a0, a0, s2
  SLLIW s1, a0, 2
  LA a0, temp
  ADD a0, a0, s1
  LW a0, 0(a0)
  # implict jump to bb41
bb41:
  BLT a0, zero, bb92
  # implict jump to bb42
bb42:
  MULW s9, s11, s3
  ADDW a0, s9, s2
  SLLIW s1, a0, 2
  LA a0, temp
  ADD s1, a0, s1
  LW s4, 0(s1)
  BLT s11, zero, bb91
  # implict jump to bb43
bb43:
  SLT a0, s11, s3
  XORI a0, a0, 1
  # implict jump to bb44
bb44:
  BNE a0, zero, bb90
  # implict jump to bb45
bb45:
  SLT a0, s6, zero
  # implict jump to bb46
bb46:
  BNE a0, zero, bb89
  # implict jump to bb47
bb47:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb48
bb48:
  BNE a0, zero, bb88
  # implict jump to bb49
bb49:
  ADDW a0, s9, s6
  SLLIW s5, a0, 2
  LA a0, temp
  ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb50
bb50:
  ADD s7, a0, zero
  SLT s5, s6, zero
  BLT s6, zero, bb87
  # implict jump to bb51
bb51:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb52
bb52:
  BNE a0, zero, bb86
  # implict jump to bb53
bb53:
  SLT a0, s2, zero
  # implict jump to bb54
bb54:
  BNE a0, zero, bb85
  # implict jump to bb55
bb55:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb56
bb56:
  BNE a0, zero, bb84
  # implict jump to bb57
bb57:
  MULW a0, s6, s3
  ADDW a0, a0, s2
  SLLIW s8, a0, 2
  LA a0, temp
  ADD a0, a0, s8
  LW a0, 0(a0)
  # implict jump to bb58
bb58:
  ADDW a0, s7, a0
  BLT a0, s4, bb59
  JAL zero, bb30
bb59:
  BLT s11, zero, bb83
  # implict jump to bb60
bb60:
  SLT a0, s11, s3
  XORI a0, a0, 1
  # implict jump to bb61
bb61:
  BNE a0, zero, bb82
  # implict jump to bb62
bb62:
  ADD a0, s5, zero
  # implict jump to bb63
bb63:
  BNE a0, zero, bb81
  # implict jump to bb64
bb64:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb65
bb65:
  BNE a0, zero, bb80
  # implict jump to bb66
bb66:
  ADDW a0, s9, s6
  SLLIW s4, a0, 2
  LA a0, temp
  ADD a0, a0, s4
  LW a0, 0(a0)
  # implict jump to bb67
bb67:
  ADD s4, a0, zero
  BLT s6, zero, bb79
  # implict jump to bb68
bb68:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb69
bb69:
  BNE a0, zero, bb78
  # implict jump to bb70
bb70:
  SLT a0, s2, zero
  # implict jump to bb71
bb71:
  BNE a0, zero, bb77
  # implict jump to bb72
bb72:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb73
bb73:
  BNE a0, zero, bb76
  # implict jump to bb74
bb74:
  MULW a0, s6, s3
  ADDW a0, a0, s2
  SLLIW s5, a0, 2
  LA a0, temp
  ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb75
bb75:
  ADDW a0, s4, a0
  SW a0, 0(s1)
  JAL zero, bb30
bb76:
  ADDI a0, zero, -1
  JAL zero, bb75
bb77:
  ADDI a0, zero, 1
  JAL zero, bb73
bb78:
  ADDI a0, zero, 1
  JAL zero, bb71
bb79:
  ADDI a0, zero, 1
  JAL zero, bb69
bb80:
  ADDI a0, zero, -1
  JAL zero, bb67
bb81:
  ADDI a0, zero, 1
  JAL zero, bb65
bb82:
  ADDI a0, zero, 1
  JAL zero, bb63
bb83:
  ADDI a0, zero, 1
  JAL zero, bb61
bb84:
  ADDI a0, zero, -1
  JAL zero, bb58
bb85:
  ADDI a0, zero, 1
  JAL zero, bb56
bb86:
  ADDI a0, zero, 1
  JAL zero, bb54
bb87:
  ADDI a0, zero, 1
  JAL zero, bb52
bb88:
  ADDI a0, zero, -1
  JAL zero, bb50
bb89:
  ADDI a0, zero, 1
  JAL zero, bb48
bb90:
  ADDI a0, zero, 1
  JAL zero, bb46
bb91:
  ADDI a0, zero, 1
  JAL zero, bb44
bb92:
  MULW s4, s11, s3
  ADDW a0, s4, s2
  SLLIW s1, a0, 2
  LA a0, temp
  ADD s1, a0, s1
  BLT s11, zero, bb116
  # implict jump to bb93
bb93:
  SLT a0, s11, s3
  XORI a0, a0, 1
  # implict jump to bb94
bb94:
  BNE a0, zero, bb115
  # implict jump to bb95
bb95:
  SLT a0, s6, zero
  # implict jump to bb96
bb96:
  BNE a0, zero, bb114
  # implict jump to bb97
bb97:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb98
bb98:
  BNE a0, zero, bb113
  # implict jump to bb99
bb99:
  ADDW a0, s4, s6
  SLLIW s4, a0, 2
  LA a0, temp
  ADD a0, a0, s4
  LW a0, 0(a0)
  # implict jump to bb100
bb100:
  ADD s4, a0, zero
  BLT s6, zero, bb112
  # implict jump to bb101
bb101:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb102
bb102:
  BNE a0, zero, bb111
  # implict jump to bb103
bb103:
  SLT a0, s2, zero
  # implict jump to bb104
bb104:
  BNE a0, zero, bb110
  # implict jump to bb105
bb105:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb106
bb106:
  BNE a0, zero, bb109
  # implict jump to bb107
bb107:
  MULW a0, s6, s3
  ADDW a0, a0, s2
  SLLIW s5, a0, 2
  LA a0, temp
  ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb108
bb108:
  ADDW a0, s4, a0
  SW a0, 0(s1)
  JAL zero, bb30
bb109:
  ADDI a0, zero, -1
  JAL zero, bb108
bb110:
  ADDI a0, zero, 1
  JAL zero, bb106
bb111:
  ADDI a0, zero, 1
  JAL zero, bb104
bb112:
  ADDI a0, zero, 1
  JAL zero, bb102
bb113:
  ADDI a0, zero, -1
  JAL zero, bb100
bb114:
  ADDI a0, zero, 1
  JAL zero, bb98
bb115:
  ADDI a0, zero, 1
  JAL zero, bb96
bb116:
  ADDI a0, zero, 1
  JAL zero, bb94
bb117:
  ADDI a0, zero, -1
  JAL zero, bb41
bb118:
  ADDI a0, zero, 1
  JAL zero, bb39
bb119:
  ADDI a0, zero, 1
  JAL zero, bb37
bb120:
  ADDI a0, zero, 1
  JAL zero, bb35
bb121:
  BLT s6, zero, bb133
  # implict jump to bb122
bb122:
  SLT a0, s6, s3
  XORI a0, a0, 1
  # implict jump to bb123
bb123:
  BNE a0, zero, bb132
  # implict jump to bb124
bb124:
  SLT a0, s2, zero
  # implict jump to bb125
bb125:
  BNE a0, zero, bb131
  # implict jump to bb126
bb126:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb127
bb127:
  BNE a0, zero, bb130
  # implict jump to bb128
bb128:
  MULW a0, s6, s3
  ADDW a0, a0, s2
  SLLIW s1, a0, 2
  LA a0, temp
  ADD a0, a0, s1
  LW a0, 0(a0)
  # implict jump to bb129
bb129:
  SLT a0, a0, zero
  XORI a0, a0, 1
  JAL zero, bb29
bb130:
  ADDI a0, zero, -1
  JAL zero, bb129
bb131:
  ADDI a0, zero, 1
  JAL zero, bb127
bb132:
  ADDI a0, zero, 1
  JAL zero, bb125
bb133:
  ADDI a0, zero, 1
  JAL zero, bb123
bb134:
  ADDI a0, zero, -1
  JAL zero, bb27
bb135:
  ADDI a0, zero, 1
  JAL zero, bb25
bb136:
  ADDI a0, zero, 1
  JAL zero, bb23
bb137:
  ADDI a0, zero, 1
  JAL zero, bb21
bb138:
  ADD a0, zero, zero
  # implict jump to bb139
bb139:
  ADD s1, a0, zero
  BLT s0, s3, bb142
  # implict jump to bb140
bb140:
  ADDIW a0, s1, 1
  BLT a0, s3, bb141
  JAL zero, bb1
bb141:
  JAL zero, bb139
bb142:
  ADD a0, zero, zero
  # implict jump to bb143
bb143:
  ADD s2, a0, zero
  MULW a0, s2, s3
  ADDW a0, a0, s1
  SLLIW s5, a0, 2
  LA a0, temp
  ADD s4, a0, s5
  BLT s2, zero, bb156
  # implict jump to bb144
bb144:
  SLT a0, s2, s3
  XORI a0, a0, 1
  # implict jump to bb145
bb145:
  BNE a0, zero, bb155
  # implict jump to bb146
bb146:
  SLT a0, s1, zero
  # implict jump to bb147
bb147:
  BNE a0, zero, bb154
  # implict jump to bb148
bb148:
  SLT a0, s1, s3
  XORI a0, a0, 1
  # implict jump to bb149
bb149:
  BNE a0, zero, bb153
  # implict jump to bb150
bb150:
  LA a0, w
  ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb151
bb151:
  SW a0, 0(s4)
  ADDIW a0, s2, 1
  BLT a0, s3, bb152
  JAL zero, bb140
bb152:
  JAL zero, bb143
bb153:
  ADDI a0, zero, -1
  JAL zero, bb151
bb154:
  ADDI a0, zero, 1
  JAL zero, bb149
bb155:
  ADDI a0, zero, 1
  JAL zero, bb147
bb156:
  ADDI a0, zero, 1
  JAL zero, bb145
