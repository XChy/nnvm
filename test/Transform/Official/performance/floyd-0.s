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
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s11, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADDI t4, zero, 0
  SW t4, 52(sp)
  LW t4, 52(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb138
  # implict jump to bb1
bb1:
  LW t4, 52(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb7
  # implict jump to bb2
bb2:
  LW t4, 44(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  BLT zero, s6, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s6, zero
  LA s9, dst
  ADD a1, s9, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:
  ADD s7, zero, zero
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  LA s10, dst
  ADD s10, s10, s9
  LA s11, temp
  ADD s9, s11, s9
  LW s9, 0(s9)
  SW s9, 0(s10)
  ADDIW s8, s8, 1
  BLT s8, s6, bb6
  JAL zero, bb3
bb6:
  ADD s7, s8, zero
  JAL zero, bb5
bb7:
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb8
bb8:
  LB t4, 0(sp)
  ADD s10, t4, zero
  LW t4, 12(sp)
  ADD s11, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 52(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb12
  # implict jump to bb9
bb9:
  ADD t4, s11, zero
  SW t4, 56(sp)
  ADD s3, s10, zero
  # implict jump to bb10
bb10:
  LW t4, 56(sp)
  ADD s2, t4, zero
  LW t4, 24(sp)
  ADDIW s5, t4, 1
  LW t4, 44(sp)
  BLT s5, t4, bb11
  JAL zero, bb2
bb11:
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s2, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SB t4, 0(sp)
  JAL zero, bb8
bb12:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, s10, zero
  SB t4, 1(sp)
  # implict jump to bb13
bb13:
  LB t4, 1(sp)
  ADD s4, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 52(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb18
  # implict jump to bb14
bb14:
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  LW t4, 28(sp)
  ADDIW s1, t4, 1
  LW t4, 44(sp)
  BLT s1, t4, bb17
  # implict jump to bb16
bb16:
  ADD t4, s2, zero
  SW t4, 56(sp)
  ADD s3, s4, zero
  JAL zero, bb10
bb17:
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s4, zero
  SB t4, 1(sp)
  JAL zero, bb13
bb18:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb19
bb19:
  LW t4, 20(sp)
  ADD s5, t4, zero
  LW t4, 28(sp)
  BLT t4, zero, bb137
  # implict jump to bb20
bb20:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb21
bb21:
  BNE s1, zero, bb136
  # implict jump to bb22
bb22:
  LW t4, 24(sp)
  SLT s1, t4, zero
  # implict jump to bb23
bb23:
  BNE s1, zero, bb135
  # implict jump to bb24
bb24:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  # implict jump to bb25
bb25:
  BNE s1, zero, bb134
  # implict jump to bb26
bb26:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s1, t4, t3
  LW t4, 24(sp)
  ADDW s1, s1, t4
  SLLIW s1, s1, 2
  LA s6, temp
  ADD s1, s6, s1
  LW s1, 0(s1)
  # implict jump to bb27
bb27:
  SLT s1, s1, zero
  XORI s1, s1, 1
  BNE s1, zero, bb121
  # implict jump to bb28
bb28:
  ADD s1, zero, zero
  # implict jump to bb29
bb29:
  BNE s1, zero, bb33
  # implict jump to bb30
bb30:
  ADDIW s0, s5, 1
  LW t4, 44(sp)
  BLT s0, t4, bb32
  # implict jump to bb31
bb31:
  ADD s2, s0, zero
  ADD s4, s1, zero
  JAL zero, bb15
bb32:
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb19
bb33:
  LW t4, 28(sp)
  BLT t4, zero, bb120
  # implict jump to bb34
bb34:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb35
bb35:
  BNE s6, zero, bb119
  # implict jump to bb36
bb36:
  SLT s6, s5, zero
  # implict jump to bb37
bb37:
  BNE s6, zero, bb118
  # implict jump to bb38
bb38:
  LW t4, 44(sp)
  SLT s6, s5, t4
  XORI s6, s6, 1
  # implict jump to bb39
bb39:
  BNE s6, zero, bb117
  # implict jump to bb40
bb40:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  ADDW s6, s6, s5
  SLLIW s6, s6, 2
  LA s10, temp
  ADD s6, s10, s6
  LW s6, 0(s6)
  # implict jump to bb41
bb41:
  BLT s6, zero, bb92
  # implict jump to bb42
bb42:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  ADDW s10, s6, s5
  SLLIW s10, s10, 2
  LA s0, temp
  ADD s0, s0, s10
  LW s10, 0(s0)
  LW t4, 28(sp)
  BLT t4, zero, bb91
  # implict jump to bb43
bb43:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s9, t4, t3
  XORI s9, s9, 1
  # implict jump to bb44
bb44:
  BNE s9, zero, bb90
  # implict jump to bb45
bb45:
  LW t4, 24(sp)
  SLT s9, t4, zero
  # implict jump to bb46
bb46:
  BNE s9, zero, bb89
  # implict jump to bb47
bb47:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s9, t4, t3
  XORI s9, s9, 1
  # implict jump to bb48
bb48:
  BNE s9, zero, bb88
  # implict jump to bb49
bb49:
  LW t4, 24(sp)
  ADDW s9, s6, t4
  SLLIW s9, s9, 2
  LA s8, temp
  ADD s8, s8, s9
  LW s8, 0(s8)
  # implict jump to bb50
bb50:
  LW t4, 24(sp)
  SLT s9, t4, zero
  LW t4, 24(sp)
  BLT t4, zero, bb87
  # implict jump to bb51
bb51:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb52
bb52:
  BNE s7, zero, bb86
  # implict jump to bb53
bb53:
  SLT s7, s5, zero
  # implict jump to bb54
bb54:
  BNE s7, zero, bb85
  # implict jump to bb55
bb55:
  LW t4, 44(sp)
  SLT s7, s5, t4
  XORI s7, s7, 1
  # implict jump to bb56
bb56:
  BNE s7, zero, bb84
  # implict jump to bb57
bb57:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s11, temp
  ADD s7, s11, s7
  LW s7, 0(s7)
  # implict jump to bb58
bb58:
  ADDW s7, s8, s7
  BLT s7, s10, bb59
  JAL zero, bb30
bb59:
  LW t4, 28(sp)
  BLT t4, zero, bb83
  # implict jump to bb60
bb60:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb61
bb61:
  BNE s7, zero, bb82
  # implict jump to bb62
bb62:
  ADD s7, s9, zero
  # implict jump to bb63
bb63:
  BNE s7, zero, bb81
  # implict jump to bb64
bb64:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb65
bb65:
  BNE s7, zero, bb80
  # implict jump to bb66
bb66:
  LW t4, 24(sp)
  ADDW s6, s6, t4
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW s6, 0(s6)
  # implict jump to bb67
bb67:
  LW t4, 24(sp)
  BLT t4, zero, bb79
  # implict jump to bb68
bb68:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb69
bb69:
  BNE s7, zero, bb78
  # implict jump to bb70
bb70:
  SLT s7, s5, zero
  # implict jump to bb71
bb71:
  BNE s7, zero, bb77
  # implict jump to bb72
bb72:
  LW t4, 44(sp)
  SLT s7, s5, t4
  XORI s7, s7, 1
  # implict jump to bb73
bb73:
  BNE s7, zero, bb76
  # implict jump to bb74
bb74:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb75
bb75:
  ADDW s6, s6, s7
  SW s6, 0(s0)
  JAL zero, bb30
bb76:
  ADDI s7, zero, -1
  JAL zero, bb75
bb77:
  ADDI s7, zero, 1
  JAL zero, bb73
bb78:
  ADDI s7, zero, 1
  JAL zero, bb71
bb79:
  ADDI s7, zero, 1
  JAL zero, bb69
bb80:
  ADDI s6, zero, -1
  JAL zero, bb67
bb81:
  ADDI s7, zero, 1
  JAL zero, bb65
bb82:
  ADDI s7, zero, 1
  JAL zero, bb63
bb83:
  ADDI s7, zero, 1
  JAL zero, bb61
bb84:
  ADDI s7, zero, -1
  JAL zero, bb58
bb85:
  ADDI s7, zero, 1
  JAL zero, bb56
bb86:
  ADDI s7, zero, 1
  JAL zero, bb54
bb87:
  ADDI s7, zero, 1
  JAL zero, bb52
bb88:
  ADDI s8, zero, -1
  JAL zero, bb50
bb89:
  ADDI s9, zero, 1
  JAL zero, bb48
bb90:
  ADDI s9, zero, 1
  JAL zero, bb46
bb91:
  ADDI s9, zero, 1
  JAL zero, bb44
bb92:
  LW t4, 28(sp)
  LW t3, 44(sp)
  MULW s0, t4, t3
  ADDW s6, s0, s5
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s6, s7, s6
  LW t4, 28(sp)
  BLT t4, zero, bb116
  # implict jump to bb93
bb93:
  LW t4, 28(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb94
bb94:
  BNE s7, zero, bb115
  # implict jump to bb95
bb95:
  LW t4, 24(sp)
  SLT s7, t4, zero
  # implict jump to bb96
bb96:
  BNE s7, zero, bb114
  # implict jump to bb97
bb97:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb98
bb98:
  BNE s7, zero, bb113
  # implict jump to bb99
bb99:
  LW t4, 24(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s7, temp
  ADD s0, s7, s0
  LW s0, 0(s0)
  # implict jump to bb100
bb100:
  LW t4, 24(sp)
  BLT t4, zero, bb112
  # implict jump to bb101
bb101:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s7, t4, t3
  XORI s7, s7, 1
  # implict jump to bb102
bb102:
  BNE s7, zero, bb111
  # implict jump to bb103
bb103:
  SLT s7, s5, zero
  # implict jump to bb104
bb104:
  BNE s7, zero, bb110
  # implict jump to bb105
bb105:
  LW t4, 44(sp)
  SLT s7, s5, t4
  XORI s7, s7, 1
  # implict jump to bb106
bb106:
  BNE s7, zero, bb109
  # implict jump to bb107
bb107:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s7, t4, t3
  ADDW s7, s7, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb108
bb108:
  ADDW s0, s0, s7
  SW s0, 0(s6)
  JAL zero, bb30
bb109:
  ADDI s7, zero, -1
  JAL zero, bb108
bb110:
  ADDI s7, zero, 1
  JAL zero, bb106
bb111:
  ADDI s7, zero, 1
  JAL zero, bb104
bb112:
  ADDI s7, zero, 1
  JAL zero, bb102
bb113:
  ADDI s0, zero, -1
  JAL zero, bb100
bb114:
  ADDI s7, zero, 1
  JAL zero, bb98
bb115:
  ADDI s7, zero, 1
  JAL zero, bb96
bb116:
  ADDI s7, zero, 1
  JAL zero, bb94
bb117:
  ADDI s6, zero, -1
  JAL zero, bb41
bb118:
  ADDI s6, zero, 1
  JAL zero, bb39
bb119:
  ADDI s6, zero, 1
  JAL zero, bb37
bb120:
  ADDI s6, zero, 1
  JAL zero, bb35
bb121:
  LW t4, 24(sp)
  BLT t4, zero, bb133
  # implict jump to bb122
bb122:
  LW t4, 24(sp)
  LW t3, 44(sp)
  SLT s6, t4, t3
  XORI s6, s6, 1
  # implict jump to bb123
bb123:
  BNE s6, zero, bb132
  # implict jump to bb124
bb124:
  SLT s6, s5, zero
  # implict jump to bb125
bb125:
  BNE s6, zero, bb131
  # implict jump to bb126
bb126:
  LW t4, 44(sp)
  SLT s6, s5, t4
  XORI s6, s6, 1
  # implict jump to bb127
bb127:
  BNE s6, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 24(sp)
  LW t3, 44(sp)
  MULW s6, t4, t3
  ADDW s6, s6, s5
  SLLIW s6, s6, 2
  LA s10, temp
  ADD s6, s10, s6
  LW s6, 0(s6)
  # implict jump to bb129
bb129:
  SLT s6, s6, zero
  XORI s6, s6, 1
  ADD s1, s6, zero
  JAL zero, bb29
bb130:
  ADDI s6, zero, -1
  JAL zero, bb129
bb131:
  ADDI s6, zero, 1
  JAL zero, bb127
bb132:
  ADDI s6, zero, 1
  JAL zero, bb125
bb133:
  ADDI s6, zero, 1
  JAL zero, bb123
bb134:
  ADDI s1, zero, -1
  JAL zero, bb27
bb135:
  ADDI s1, zero, 1
  JAL zero, bb25
bb136:
  ADDI s1, zero, 1
  JAL zero, bb23
bb137:
  ADDI s1, zero, 1
  JAL zero, bb21
bb138:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb139
bb139:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 52(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb142
  # implict jump to bb140
bb140:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb141
  JAL zero, bb1
bb141:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb139
bb142:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb143
bb143:
  LW t4, 40(sp)
  ADD s5, t4, zero
  LW t4, 44(sp)
  MULW s6, s5, t4
  LW t4, 48(sp)
  ADDW s6, s6, t4
  SLLIW s6, s6, 2
  LA s7, temp
  ADD s7, s7, s6
  BLT s5, zero, bb156
  # implict jump to bb144
bb144:
  LW t4, 44(sp)
  SLT s8, s5, t4
  XORI s8, s8, 1
  # implict jump to bb145
bb145:
  BNE s8, zero, bb155
  # implict jump to bb146
bb146:
  LW t4, 48(sp)
  SLT s8, t4, zero
  # implict jump to bb147
bb147:
  BNE s8, zero, bb154
  # implict jump to bb148
bb148:
  LW t4, 48(sp)
  LW t3, 44(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  # implict jump to bb149
bb149:
  BNE s8, zero, bb153
  # implict jump to bb150
bb150:
  LA s8, w
  ADD s6, s8, s6
  LW s6, 0(s6)
  # implict jump to bb151
bb151:
  SW s6, 0(s7)
  ADDIW t4, s5, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb152
  JAL zero, bb140
bb152:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb143
bb153:
  ADDI s6, zero, -1
  JAL zero, bb151
bb154:
  ADDI s8, zero, 1
  JAL zero, bb149
bb155:
  ADDI s8, zero, 1
  JAL zero, bb147
bb156:
  ADDI s8, zero, 1
  JAL zero, bb145
