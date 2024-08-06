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
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s11, 120(sp)
  CALL getint
  SW a0, 8(sp)
  LA a0, w
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI a0, zero, 0
  SW a0, 12(sp)
  LW a0, 12(sp)
  LW s0, 8(sp)
  BLT a0, s0, bb138
  # implict jump to bb1
bb1:
  LW a0, 12(sp)
  LW s0, 8(sp)
  BLT a0, s0, bb7
  # implict jump to bb2
bb2:
  LW a0, 8(sp)
  LW s0, 8(sp)
  MULW s0, a0, s0
  BLT zero, s0, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA a1, dst
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW s1, a0, 2
  LA s2, dst
  ADD s2, s2, s1
  LA s3, temp
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb6
  JAL zero, bb3
bb6:
  JAL zero, bb5
bb7:
  ADD a0, zero, zero
  SW a0, 24(sp)
  ADD s6, zero, zero
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  LW a0, 24(sp)
  SW a0, 24(sp)
  LW s1, 12(sp)
  LW a0, 8(sp)
  BLT s1, a0, bb12
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LW a0, 24(sp)
  ADDIW a0, a0, 1
  SW a0, 24(sp)
  LW a0, 24(sp)
  LW s1, 8(sp)
  BLT a0, s1, bb11
  JAL zero, bb2
bb11:
  LW a0, 24(sp)
  SW a0, 24(sp)
  JAL zero, bb8
bb12:
  ADD s7, zero, zero
  # implict jump to bb13
bb13:
  LW a0, 12(sp)
  LW s1, 8(sp)
  BLT a0, s1, bb18
  # implict jump to bb14
bb14:
  ADD s6, zero, zero
  # implict jump to bb15
bb15:
  ADDIW s7, s7, 1
  LW a0, 8(sp)
  BLT s7, a0, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb10
bb17:
  JAL zero, bb13
bb18:
  LW a0, 8(sp)
  SLT a0, s7, a0
  XORI a0, a0, 1
  SB a0, 0(sp)
  ADD s6, zero, zero
  # implict jump to bb19
bb19:
  BLT s7, zero, bb137
  # implict jump to bb20
bb20:
  LB a0, 0(sp)
  # implict jump to bb21
bb21:
  LW s0, 24(sp)
  SLT s2, s0, zero
  BNE a0, zero, bb136
  # implict jump to bb22
bb22:
  ADD a0, s2, zero
  # implict jump to bb23
bb23:
  LW s0, 24(sp)
  LW s1, 8(sp)
  SLT s0, s0, s1
  XORI s8, s0, 1
  BNE a0, zero, bb135
  # implict jump to bb24
bb24:
  ADD a0, s8, zero
  # implict jump to bb25
bb25:
  LW s0, 8(sp)
  MULW s11, s7, s0
  BNE a0, zero, bb134
  # implict jump to bb26
bb26:
  LW a0, 24(sp)
  ADDW a0, s11, a0
  SLLIW a0, a0, 2
  LA s0, temp
  ADD a0, s0, a0
  LW a0, 0(a0)
  # implict jump to bb27
bb27:
  SLT a0, a0, zero
  XORI s0, a0, 1
  SLT s3, s6, zero
  LW a0, 8(sp)
  SLT s1, s6, a0
  XORI s5, s1, 1
  LW a0, 24(sp)
  LW s1, 8(sp)
  MULW s1, a0, s1
  SW s1, 28(sp)
  BNE s0, zero, bb121
  # implict jump to bb28
bb28:
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  BNE s0, zero, bb33
  # implict jump to bb30
bb30:
  ADDIW s6, s6, 1
  LW a0, 8(sp)
  BLT s6, a0, bb32
  # implict jump to bb31
bb31:
  JAL zero, bb15
bb32:
  JAL zero, bb19
bb33:
  BLT s7, zero, bb120
  # implict jump to bb34
bb34:
  LB s1, 0(sp)
  # implict jump to bb35
bb35:
  BNE s1, zero, bb119
  # implict jump to bb36
bb36:
  ADD s1, s3, zero
  # implict jump to bb37
bb37:
  BNE s1, zero, bb118
  # implict jump to bb38
bb38:
  ADD s1, s5, zero
  # implict jump to bb39
bb39:
  BNE s1, zero, bb117
  # implict jump to bb40
bb40:
  ADDW s1, s11, s6
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s1, s4, s1
  LW s1, 0(s1)
  # implict jump to bb41
bb41:
  BLT s1, zero, bb92
  # implict jump to bb42
bb42:
  ADDW s1, s11, s6
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s1, s4, s1
  SD s1, 136(sp)
  LD s1, 136(sp)
  LW s1, 0(s1)
  SW s1, 20(sp)
  BLT s7, zero, bb91
  # implict jump to bb43
bb43:
  LB s1, 0(sp)
  # implict jump to bb44
bb44:
  BNE s1, zero, bb90
  # implict jump to bb45
bb45:
  ADD s1, s2, zero
  # implict jump to bb46
bb46:
  BNE s1, zero, bb89
  # implict jump to bb47
bb47:
  ADD s1, s8, zero
  # implict jump to bb48
bb48:
  LW a0, 24(sp)
  ADDW s11, s11, a0
  BNE s1, zero, bb88
  # implict jump to bb49
bb49:
  SLLIW s1, s11, 2
  LA s4, temp
  ADD s1, s4, s1
  LW s1, 0(s1)
  # implict jump to bb50
bb50:
  SW s1, 16(sp)
  LW a0, 24(sp)
  BLT a0, zero, bb87
  # implict jump to bb51
bb51:
  ADD s4, s8, zero
  # implict jump to bb52
bb52:
  BNE s4, zero, bb86
  # implict jump to bb53
bb53:
  ADD s4, s3, zero
  # implict jump to bb54
bb54:
  BNE s4, zero, bb85
  # implict jump to bb55
bb55:
  ADD s4, s5, zero
  # implict jump to bb56
bb56:
  BNE s4, zero, bb84
  # implict jump to bb57
bb57:
  LW s1, 28(sp)
  ADDW s4, s1, s6
  SLLIW s4, s4, 2
  LA a0, temp
  SD a0, 128(sp)
  LD a0, 128(sp)
  ADD s4, a0, s4
  LW s4, 0(s4)
  # implict jump to bb58
bb58:
  LW s1, 16(sp)
  ADDW s1, s1, s4
  LW s4, 20(sp)
  BLT s1, s4, bb59
  JAL zero, bb30
bb59:
  BLT s7, zero, bb83
  # implict jump to bb60
bb60:
  LB s1, 0(sp)
  # implict jump to bb61
bb61:
  BNE s1, zero, bb82
  # implict jump to bb62
bb62:
  # implict jump to bb63
bb63:
  BNE s2, zero, bb81
  # implict jump to bb64
bb64:
  ADD s1, s8, zero
  # implict jump to bb65
bb65:
  BNE s1, zero, bb80
  # implict jump to bb66
bb66:
  SLLIW s1, s11, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s2, 0(s1)
  # implict jump to bb67
bb67:
  LW a0, 24(sp)
  BLT a0, zero, bb79
  # implict jump to bb68
bb68:
  # implict jump to bb69
bb69:
  BNE s8, zero, bb78
  # implict jump to bb70
bb70:
  # implict jump to bb71
bb71:
  BNE s3, zero, bb77
  # implict jump to bb72
bb72:
  # implict jump to bb73
bb73:
  BNE s5, zero, bb76
  # implict jump to bb74
bb74:
  LW a0, 28(sp)
  ADDW a0, a0, s6
  SLLIW a0, a0, 2
  LA s1, temp
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb75
bb75:
  ADDW a0, s2, a0
  LD s1, 136(sp)
  SW a0, 0(s1)
  JAL zero, bb30
bb76:
  ADDI a0, zero, -1
  JAL zero, bb75
bb77:
  ADDI s5, zero, 1
  JAL zero, bb73
bb78:
  ADDI s3, zero, 1
  JAL zero, bb71
bb79:
  ADDI s8, zero, 1
  JAL zero, bb69
bb80:
  ADDI s2, zero, -1
  JAL zero, bb67
bb81:
  ADDI s1, zero, 1
  JAL zero, bb65
bb82:
  ADDI s2, zero, 1
  JAL zero, bb63
bb83:
  ADDI s1, zero, 1
  JAL zero, bb61
bb84:
  ADDI s4, zero, -1
  JAL zero, bb58
bb85:
  ADDI s4, zero, 1
  JAL zero, bb56
bb86:
  ADDI s4, zero, 1
  JAL zero, bb54
bb87:
  ADDI s4, zero, 1
  JAL zero, bb52
bb88:
  ADDI s1, zero, -1
  JAL zero, bb50
bb89:
  ADDI s1, zero, 1
  JAL zero, bb48
bb90:
  ADDI s1, zero, 1
  JAL zero, bb46
bb91:
  ADDI s1, zero, 1
  JAL zero, bb44
bb92:
  ADDW s1, s11, s6
  SLLIW s1, s1, 2
  LA s4, temp
  ADD s4, s4, s1
  BLT s7, zero, bb116
  # implict jump to bb93
bb93:
  LB s1, 0(sp)
  # implict jump to bb94
bb94:
  BNE s1, zero, bb115
  # implict jump to bb95
bb95:
  # implict jump to bb96
bb96:
  BNE s2, zero, bb114
  # implict jump to bb97
bb97:
  ADD s1, s8, zero
  # implict jump to bb98
bb98:
  BNE s1, zero, bb113
  # implict jump to bb99
bb99:
  LW a0, 24(sp)
  ADDW s1, s11, a0
  SLLIW s1, s1, 2
  LA s2, temp
  ADD s1, s2, s1
  LW s2, 0(s1)
  # implict jump to bb100
bb100:
  LW a0, 24(sp)
  BLT a0, zero, bb112
  # implict jump to bb101
bb101:
  # implict jump to bb102
bb102:
  BNE s8, zero, bb111
  # implict jump to bb103
bb103:
  # implict jump to bb104
bb104:
  BNE s3, zero, bb110
  # implict jump to bb105
bb105:
  # implict jump to bb106
bb106:
  BNE s5, zero, bb109
  # implict jump to bb107
bb107:
  LW a0, 28(sp)
  ADDW a0, a0, s6
  SLLIW a0, a0, 2
  LA s1, temp
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb108
bb108:
  ADDW a0, s2, a0
  SW a0, 0(s4)
  JAL zero, bb30
bb109:
  ADDI a0, zero, -1
  JAL zero, bb108
bb110:
  ADDI s5, zero, 1
  JAL zero, bb106
bb111:
  ADDI s3, zero, 1
  JAL zero, bb104
bb112:
  ADDI s8, zero, 1
  JAL zero, bb102
bb113:
  ADDI s2, zero, -1
  JAL zero, bb100
bb114:
  ADDI s1, zero, 1
  JAL zero, bb98
bb115:
  ADDI s2, zero, 1
  JAL zero, bb96
bb116:
  ADDI s1, zero, 1
  JAL zero, bb94
bb117:
  ADDI s1, zero, -1
  JAL zero, bb41
bb118:
  ADDI s1, zero, 1
  JAL zero, bb39
bb119:
  ADDI s1, zero, 1
  JAL zero, bb37
bb120:
  ADDI s1, zero, 1
  JAL zero, bb35
bb121:
  LW a0, 24(sp)
  BLT a0, zero, bb133
  # implict jump to bb122
bb122:
  ADD s0, s8, zero
  # implict jump to bb123
bb123:
  BNE s0, zero, bb132
  # implict jump to bb124
bb124:
  ADD s0, s3, zero
  # implict jump to bb125
bb125:
  BNE s0, zero, bb131
  # implict jump to bb126
bb126:
  ADD s0, s5, zero
  # implict jump to bb127
bb127:
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  LW s0, 28(sp)
  ADDW s0, s0, s6
  SLLIW s0, s0, 2
  LA s1, temp
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb129
bb129:
  SLT s0, s0, zero
  XORI s0, s0, 1
  JAL zero, bb29
bb130:
  ADDI s0, zero, -1
  JAL zero, bb129
bb131:
  ADDI s0, zero, 1
  JAL zero, bb127
bb132:
  ADDI s0, zero, 1
  JAL zero, bb125
bb133:
  ADDI s0, zero, 1
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
  ADD s1, zero, zero
  # implict jump to bb139
bb139:
  LW a0, 12(sp)
  LW s0, 8(sp)
  BLT a0, s0, bb142
  # implict jump to bb140
bb140:
  ADDIW s1, s1, 1
  LW a0, 8(sp)
  BLT s1, a0, bb141
  JAL zero, bb1
bb141:
  JAL zero, bb139
bb142:
  ADD s0, zero, zero
  # implict jump to bb143
bb143:
  LW a0, 8(sp)
  MULW a0, s0, a0
  ADDW a0, a0, s1
  SLLIW s2, a0, 2
  LA a0, temp
  ADD s3, a0, s2
  BLT s0, zero, bb156
  # implict jump to bb144
bb144:
  LW a0, 8(sp)
  SLT a0, s0, a0
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
  LW a0, 8(sp)
  SLT a0, s1, a0
  XORI a0, a0, 1
  # implict jump to bb149
bb149:
  BNE a0, zero, bb153
  # implict jump to bb150
bb150:
  LA a0, w
  ADD a0, a0, s2
  LW a0, 0(a0)
  # implict jump to bb151
bb151:
  SW a0, 0(s3)
  ADDIW s0, s0, 1
  LW a0, 8(sp)
  BLT s0, a0, bb152
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
