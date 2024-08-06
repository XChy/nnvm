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
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  CALL getint
  SW a0, 4(sp)
  LA a0, w
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI a0, zero, 0
  SW a0, 8(sp)
  LW a0, 8(sp)
  LW s0, 4(sp)
  BLT a0, s0, bb138
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 8(sp)
  LW s0, 4(sp)
  BLT a0, s0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  LW a0, 4(sp)
  LW s0, 4(sp)
  MULW s0, a0, s0
  BLT zero, s0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA a1, dst
  CALL putarray
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
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
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 0
  ADD s7, zero, zero
  ADD s5, zero, zero
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW s1, 8(sp)
  LW a0, 4(sp)
  BLT s1, a0, bb12
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  ADDIW s7, s7, 1
  LW a0, 4(sp)
  BLT s7, a0, bb11
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb8
bb12:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  LW a0, 8(sp)
  LW s1, 4(sp)
  BLT a0, s1, bb18
  # implict jump to bb14
bb14:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  ADDIW s6, s6, 1
  LW a0, 4(sp)
  BLT s6, a0, bb17
  # implict jump to bb16
bb16:   # loop depth 2
  JAL zero, bb10
bb17:   # loop depth 2
  JAL zero, bb13
bb18:   # loop depth 2
  LW a0, 4(sp)
  SLT a0, s6, a0
  XORI a0, a0, 1
  SB a0, 0(sp)
  LW a0, 4(sp)
  MULW a0, s7, a0
  SW a0, 28(sp)
  SLT a0, s7, zero
  SB a0, 2(sp)
  LW a0, 4(sp)
  SLT a0, s7, a0
  XORI a0, a0, 1
  SB a0, 3(sp)
  LW a0, 4(sp)
  MULW a0, s6, a0
  SW a0, 24(sp)
  ADD s5, zero, zero
  # implict jump to bb19
bb19:   # loop depth 3
  BLT s6, zero, bb137
  # implict jump to bb20
bb20:   # loop depth 3
  LB a0, 0(sp)
  # implict jump to bb21
bb21:   # loop depth 3
  BNE a0, zero, bb136
  # implict jump to bb22
bb22:   # loop depth 3
  LB a0, 2(sp)
  # implict jump to bb23
bb23:   # loop depth 3
  BNE a0, zero, bb135
  # implict jump to bb24
bb24:   # loop depth 3
  LB a0, 3(sp)
  # implict jump to bb25
bb25:   # loop depth 3
  BNE a0, zero, bb134
  # implict jump to bb26
bb26:   # loop depth 3
  LW a0, 24(sp)
  ADDW a0, a0, s7
  SLLIW a0, a0, 2
  LA s1, temp
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb27
bb27:   # loop depth 3
  SLT a0, a0, zero
  XORI s2, a0, 1
  SLT a0, s5, zero
  LW s0, 4(sp)
  SLT s1, s5, s0
  XORI s1, s1, 1
  BNE s2, zero, bb121
  # implict jump to bb28
bb28:   # loop depth 3
  ADD s2, zero, zero
  # implict jump to bb29
bb29:   # loop depth 3
  SB s2, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb33
  # implict jump to bb30
bb30:   # loop depth 3
  ADDIW s5, s5, 1
  LW a0, 4(sp)
  BLT s5, a0, bb32
  # implict jump to bb31
bb31:   # loop depth 3
  LB s0, 1(sp)
  JAL zero, bb15
bb32:   # loop depth 3
  JAL zero, bb19
bb33:   # loop depth 3
  BLT s6, zero, bb120
  # implict jump to bb34
bb34:   # loop depth 3
  LB s3, 0(sp)
  # implict jump to bb35
bb35:   # loop depth 3
  BNE s3, zero, bb119
  # implict jump to bb36
bb36:   # loop depth 3
  ADD s3, a0, zero
  # implict jump to bb37
bb37:   # loop depth 3
  BNE s3, zero, bb118
  # implict jump to bb38
bb38:   # loop depth 3
  ADD s3, s1, zero
  # implict jump to bb39
bb39:   # loop depth 3
  BNE s3, zero, bb117
  # implict jump to bb40
bb40:   # loop depth 3
  LW s0, 24(sp)
  ADDW s3, s0, s5
  SLLIW s3, s3, 2
  LA s4, temp
  ADD s3, s4, s3
  LW s3, 0(s3)
  # implict jump to bb41
bb41:   # loop depth 3
  BLT s3, zero, bb92
  # implict jump to bb42
bb42:   # loop depth 3
  LW s0, 24(sp)
  ADDW s3, s0, s5
  SLLIW s3, s3, 2
  LA s4, temp
  ADD s0, s4, s3
  SD s0, 120(sp)
  LD s0, 120(sp)
  LW s0, 0(s0)
  SW s0, 16(sp)
  BLT s6, zero, bb91
  # implict jump to bb43
bb43:   # loop depth 3
  LB s3, 0(sp)
  # implict jump to bb44
bb44:   # loop depth 3
  BNE s3, zero, bb90
  # implict jump to bb45
bb45:   # loop depth 3
  LB s3, 2(sp)
  # implict jump to bb46
bb46:   # loop depth 3
  BNE s3, zero, bb89
  # implict jump to bb47
bb47:   # loop depth 3
  LB s3, 3(sp)
  # implict jump to bb48
bb48:   # loop depth 3
  LW s0, 24(sp)
  ADDW s9, s0, s7
  BNE s3, zero, bb88
  # implict jump to bb49
bb49:   # loop depth 3
  SLLIW s3, s9, 2
  LA s4, temp
  ADD s3, s4, s3
  LW s3, 0(s3)
  # implict jump to bb50
bb50:   # loop depth 3
  SW s3, 12(sp)
  BLT s7, zero, bb87
  # implict jump to bb51
bb51:   # loop depth 3
  LB s4, 3(sp)
  # implict jump to bb52
bb52:   # loop depth 3
  BNE s4, zero, bb86
  # implict jump to bb53
bb53:   # loop depth 3
  ADD s4, a0, zero
  # implict jump to bb54
bb54:   # loop depth 3
  BNE s4, zero, bb85
  # implict jump to bb55
bb55:   # loop depth 3
  ADD s4, s1, zero
  # implict jump to bb56
bb56:   # loop depth 3
  BNE s4, zero, bb84
  # implict jump to bb57
bb57:   # loop depth 3
  LW s0, 28(sp)
  ADDW s4, s0, s5
  SLLIW s0, s4, 2
  SW s0, 20(sp)
  LA s4, temp
  LW s0, 20(sp)
  ADD s4, s4, s0
  LW s4, 0(s4)
  # implict jump to bb58
bb58:   # loop depth 3
  LW s0, 12(sp)
  ADDW s3, s0, s4
  LW s0, 16(sp)
  BLT s3, s0, bb59
  JAL zero, bb30
bb59:   # loop depth 3
  BLT s6, zero, bb83
  # implict jump to bb60
bb60:   # loop depth 3
  LB s3, 0(sp)
  # implict jump to bb61
bb61:   # loop depth 3
  BNE s3, zero, bb82
  # implict jump to bb62
bb62:   # loop depth 3
  LB s3, 2(sp)
  # implict jump to bb63
bb63:   # loop depth 3
  BNE s3, zero, bb81
  # implict jump to bb64
bb64:   # loop depth 3
  LB s3, 3(sp)
  # implict jump to bb65
bb65:   # loop depth 3
  BNE s3, zero, bb80
  # implict jump to bb66
bb66:   # loop depth 3
  SLLIW s3, s9, 2
  LA s4, temp
  ADD s3, s4, s3
  LW s4, 0(s3)
  # implict jump to bb67
bb67:   # loop depth 3
  BLT s7, zero, bb79
  # implict jump to bb68
bb68:   # loop depth 3
  LB s3, 3(sp)
  # implict jump to bb69
bb69:   # loop depth 3
  BNE s3, zero, bb78
  # implict jump to bb70
bb70:   # loop depth 3
  # implict jump to bb71
bb71:   # loop depth 3
  BNE a0, zero, bb77
  # implict jump to bb72
bb72:   # loop depth 3
  # implict jump to bb73
bb73:   # loop depth 3
  BNE s1, zero, bb76
  # implict jump to bb74
bb74:   # loop depth 3
  LW a0, 28(sp)
  ADDW a0, a0, s5
  SLLIW a0, a0, 2
  LA s1, temp
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb75
bb75:   # loop depth 3
  ADDW a0, s4, a0
  LD s0, 120(sp)
  SW a0, 0(s0)
  JAL zero, bb30
bb76:   # loop depth 3
  ADDI a0, zero, -1
  JAL zero, bb75
bb77:   # loop depth 3
  ADDI s1, zero, 1
  JAL zero, bb73
bb78:   # loop depth 3
  ADDI a0, zero, 1
  JAL zero, bb71
bb79:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb69
bb80:   # loop depth 3
  ADDI s4, zero, -1
  JAL zero, bb67
bb81:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb65
bb82:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb63
bb83:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb61
bb84:   # loop depth 3
  ADDI s4, zero, -1
  JAL zero, bb58
bb85:   # loop depth 3
  ADDI s4, zero, 1
  JAL zero, bb56
bb86:   # loop depth 3
  ADDI s4, zero, 1
  JAL zero, bb54
bb87:   # loop depth 3
  ADDI s4, zero, 1
  JAL zero, bb52
bb88:   # loop depth 3
  ADDI s3, zero, -1
  JAL zero, bb50
bb89:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb48
bb90:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb46
bb91:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb44
bb92:   # loop depth 3
  LW s0, 24(sp)
  ADDW s3, s0, s5
  SLLIW s3, s3, 2
  LA s4, temp
  ADD s8, s4, s3
  BLT s6, zero, bb116
  # implict jump to bb93
bb93:   # loop depth 3
  LB s3, 0(sp)
  # implict jump to bb94
bb94:   # loop depth 3
  BNE s3, zero, bb115
  # implict jump to bb95
bb95:   # loop depth 3
  LB s3, 2(sp)
  # implict jump to bb96
bb96:   # loop depth 3
  BNE s3, zero, bb114
  # implict jump to bb97
bb97:   # loop depth 3
  LB s3, 3(sp)
  # implict jump to bb98
bb98:   # loop depth 3
  BNE s3, zero, bb113
  # implict jump to bb99
bb99:   # loop depth 3
  LW s0, 24(sp)
  ADDW s3, s0, s7
  SLLIW s3, s3, 2
  LA s4, temp
  ADD s3, s4, s3
  LW s4, 0(s3)
  # implict jump to bb100
bb100:   # loop depth 3
  BLT s7, zero, bb112
  # implict jump to bb101
bb101:   # loop depth 3
  LB s3, 3(sp)
  # implict jump to bb102
bb102:   # loop depth 3
  BNE s3, zero, bb111
  # implict jump to bb103
bb103:   # loop depth 3
  # implict jump to bb104
bb104:   # loop depth 3
  BNE a0, zero, bb110
  # implict jump to bb105
bb105:   # loop depth 3
  # implict jump to bb106
bb106:   # loop depth 3
  BNE s1, zero, bb109
  # implict jump to bb107
bb107:   # loop depth 3
  LW a0, 28(sp)
  ADDW a0, a0, s5
  SLLIW a0, a0, 2
  LA s1, temp
  ADD a0, s1, a0
  LW a0, 0(a0)
  # implict jump to bb108
bb108:   # loop depth 3
  ADDW a0, s4, a0
  SW a0, 0(s8)
  JAL zero, bb30
bb109:   # loop depth 3
  ADDI a0, zero, -1
  JAL zero, bb108
bb110:   # loop depth 3
  ADDI s1, zero, 1
  JAL zero, bb106
bb111:   # loop depth 3
  ADDI a0, zero, 1
  JAL zero, bb104
bb112:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb102
bb113:   # loop depth 3
  ADDI s4, zero, -1
  JAL zero, bb100
bb114:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb98
bb115:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb96
bb116:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb94
bb117:   # loop depth 3
  ADDI s3, zero, -1
  JAL zero, bb41
bb118:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb39
bb119:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb37
bb120:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb35
bb121:   # loop depth 3
  BLT s7, zero, bb133
  # implict jump to bb122
bb122:   # loop depth 3
  LB s2, 3(sp)
  # implict jump to bb123
bb123:   # loop depth 3
  BNE s2, zero, bb132
  # implict jump to bb124
bb124:   # loop depth 3
  ADD s2, a0, zero
  # implict jump to bb125
bb125:   # loop depth 3
  BNE s2, zero, bb131
  # implict jump to bb126
bb126:   # loop depth 3
  ADD s2, s1, zero
  # implict jump to bb127
bb127:   # loop depth 3
  BNE s2, zero, bb130
  # implict jump to bb128
bb128:   # loop depth 3
  LW s0, 28(sp)
  ADDW s2, s0, s5
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW s2, 0(s2)
  # implict jump to bb129
bb129:   # loop depth 3
  SLT s2, s2, zero
  XORI s2, s2, 1
  JAL zero, bb29
bb130:   # loop depth 3
  ADDI s2, zero, -1
  JAL zero, bb129
bb131:   # loop depth 3
  ADDI s2, zero, 1
  JAL zero, bb127
bb132:   # loop depth 3
  ADDI s2, zero, 1
  JAL zero, bb125
bb133:   # loop depth 3
  ADDI s2, zero, 1
  JAL zero, bb123
bb134:   # loop depth 3
  ADDI a0, zero, -1
  JAL zero, bb27
bb135:   # loop depth 3
  ADDI a0, zero, 1
  JAL zero, bb25
bb136:   # loop depth 3
  ADDI a0, zero, 1
  JAL zero, bb23
bb137:   # loop depth 3
  ADDI a0, zero, 1
  JAL zero, bb21
bb138:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb139
bb139:   # loop depth 1
  LW a0, 8(sp)
  LW s0, 4(sp)
  BLT a0, s0, bb142
  # implict jump to bb140
bb140:   # loop depth 1
  ADDIW s1, s1, 1
  LW a0, 4(sp)
  BLT s1, a0, bb141
  JAL zero, bb1
bb141:   # loop depth 1
  JAL zero, bb139
bb142:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb143
bb143:   # loop depth 2
  LW a0, 4(sp)
  MULW a0, s0, a0
  ADDW a0, a0, s1
  SLLIW s2, a0, 2
  LA a0, temp
  ADD s3, a0, s2
  BLT s0, zero, bb156
  # implict jump to bb144
bb144:   # loop depth 2
  LW a0, 4(sp)
  SLT a0, s0, a0
  XORI a0, a0, 1
  # implict jump to bb145
bb145:   # loop depth 2
  BNE a0, zero, bb155
  # implict jump to bb146
bb146:   # loop depth 2
  SLT a0, s1, zero
  # implict jump to bb147
bb147:   # loop depth 2
  BNE a0, zero, bb154
  # implict jump to bb148
bb148:   # loop depth 2
  LW a0, 4(sp)
  SLT a0, s1, a0
  XORI a0, a0, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BNE a0, zero, bb153
  # implict jump to bb150
bb150:   # loop depth 2
  LA a0, w
  ADD a0, a0, s2
  LW a0, 0(a0)
  # implict jump to bb151
bb151:   # loop depth 2
  SW a0, 0(s3)
  ADDIW s0, s0, 1
  LW a0, 4(sp)
  BLT s0, a0, bb152
  JAL zero, bb140
bb152:   # loop depth 2
  JAL zero, bb143
bb153:   # loop depth 2
  ADDI a0, zero, -1
  JAL zero, bb151
bb154:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb149
bb155:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb147
bb156:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb145
