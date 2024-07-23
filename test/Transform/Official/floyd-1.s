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
  ADDI sp, sp, -192
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  SD s5, 144(sp)
  SD s6, 160(sp)
  ADD t4, a0, zero
  SD t4, 176(sp)
  ADD t4, a1, zero
  SD t4, 184(sp)
  ADD t4, a2, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb5
bb5:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb135
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
  LW t4, 36(sp)
  BLT s5, t4, bb12
  # implict jump to bb8
bb8:
  LW t4, 36(sp)
  LW t3, 36(sp)
  MULW s8, t4, t3
  ADD s9, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  BLT s10, s8, bb11
  # implict jump to bb10
bb10:
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  LD s5, 144(sp)
  LD s6, 160(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb11:
  SLLIW s11, s10, 2
  LD t4, 184(sp)
  ADD t0, t4, s11
  LA t1, temp
  ADD s11, t1, s11
  LW s11, 0(s11)
  SW s11, 0(t0)
  ADDIW s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb9
bb12:
  SLT s8, s5, zero
  SLT s9, s5, zero
  LW t4, 36(sp)
  SLT s10, s5, t4
  XORI s10, s10, 1
  LW t4, 36(sp)
  SLT s11, s5, t4
  XORI s11, s11, 1
  LW t4, 36(sp)
  MULW t0, s5, t4
  LW t4, 36(sp)
  SLT t1, s5, t4
  XORI t1, t1, 1
  LW t4, 36(sp)
  SLT t2, s5, t4
  XORI t2, t2, 1
  LW t4, 36(sp)
  MULW a3, s5, t4
  SLT a4, s5, zero
  SLT a5, s5, zero
  LW t4, 36(sp)
  SLT a6, s5, t4
  XORI a6, a6, 1
  LW t4, 36(sp)
  SLT a7, s5, t4
  XORI a7, a7, 1
  LW t4, 36(sp)
  MULW t6, s5, t4
  LW t4, 36(sp)
  SLT a2, s5, t4
  XORI a2, a2, 1
  LW t4, 36(sp)
  SLT a1, s5, t4
  XORI t4, a1, 1
  SB t4, 5(sp)
  LW t3, 36(sp)
  MULW t4, s5, t3
  SW t4, 20(sp)
  ADD s1, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, s6, zero
  ADD t4, s1, zero
  SW t4, 24(sp)
  ADD a0, s7, zero
  LW t4, 24(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb15
  # implict jump to bb14
bb14:
  ADDIW a1, s5, 1
  ADD s2, a0, zero
  ADD s3, s0, zero
  ADD s4, a1, zero
  JAL zero, bb7
bb15:
  LW t3, 24(sp)
  LW t4, 36(sp)
  MULW t4, t3, t4
  SW t4, 8(sp)
  LW t3, 24(sp)
  LW t4, 36(sp)
  MULW t4, t3, t4
  SW t4, 12(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  SLT s3, t4, t3
  XORI t4, s3, 1
  SB t4, 0(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  MULW s4, t4, t3
  ADDW s4, s4, s5
  SLLIW s4, s4, 2
  LA a1, temp
  ADD t4, a1, s4
  SD t4, 168(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  SLT a1, t4, t3
  XORI t4, a1, 1
  SB t4, 4(sp)
  LW t3, 24(sp)
  LW t4, 36(sp)
  MULW t4, t3, t4
  SW t4, 16(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  SLT a1, t4, t3
  XORI t4, a1, 1
  SB t4, 3(sp)
  LW t4, 8(sp)
  ADDW a1, t4, s5
  SLLIW a1, a1, 2
  LA s4, temp
  ADD t4, s4, a1
  SD t4, 152(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  SLT a1, t4, t3
  XORI t4, a1, 1
  SB t4, 2(sp)
  LW t4, 12(sp)
  ADDW a1, t4, s5
  SLLIW a1, a1, 2
  LA s4, temp
  ADD t4, s4, a1
  SD t4, 136(sp)
  LW t4, 24(sp)
  LW t3, 36(sp)
  SLT a1, t4, t3
  XORI t4, a1, 1
  SB t4, 1(sp)
  LW t4, 12(sp)
  ADDW a1, t4, s5
  SLLIW a1, a1, 2
  LA s4, temp
  ADD t4, s4, a1
  SD t4, 88(sp)
  ADD a1, zero, zero
  # implict jump to bb16
bb16:
  ADD s4, a1, zero
  ADD s3, a0, zero
  LW t4, 36(sp)
  BLT s4, t4, bb18
  # implict jump to bb17
bb17:
  LW t4, 24(sp)
  ADDIW s2, t4, 1
  ADD s7, s3, zero
  ADD s1, s2, zero
  ADD s6, s4, zero
  JAL zero, bb13
bb18:
  LW t4, 24(sp)
  BLT t4, zero, bb134
  # implict jump to bb19
bb19:
  LB t4, 0(sp)
  ADD s1, t4, zero
  # implict jump to bb20
bb20:
  BNE s1, zero, bb133
  # implict jump to bb21
bb21:
  ADD s1, s9, zero
  # implict jump to bb22
bb22:
  BNE s1, zero, bb132
  # implict jump to bb23
bb23:
  ADD s1, s10, zero
  # implict jump to bb24
bb24:
  BNE s1, zero, bb131
  # implict jump to bb25
bb25:
  LD t4, 168(sp)
  LW s1, 0(t4)
  # implict jump to bb26
bb26:
  SLT s1, s1, zero
  XORI s1, s1, 1
  BNE s1, zero, bb118
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  BNE s1, zero, bb30
  # implict jump to bb29
bb29:
  ADDIW s0, s4, 1
  ADD a0, s1, zero
  ADD a1, s0, zero
  JAL zero, bb16
bb30:
  LW t4, 24(sp)
  BLT t4, zero, bb117
  # implict jump to bb31
bb31:
  LB t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb32
bb32:
  BNE s2, zero, bb116
  # implict jump to bb33
bb33:
  SLT s2, s4, zero
  # implict jump to bb34
bb34:
  BNE s2, zero, bb115
  # implict jump to bb35
bb35:
  LW t4, 36(sp)
  SLT s2, s4, t4
  XORI s2, s2, 1
  # implict jump to bb36
bb36:
  BNE s2, zero, bb114
  # implict jump to bb37
bb37:
  LW t4, 16(sp)
  ADDW s2, t4, s4
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW s2, 0(s2)
  # implict jump to bb38
bb38:
  BLT s2, zero, bb89
  # implict jump to bb39
bb39:
  LW t4, 12(sp)
  ADDW s2, t4, s4
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW s3, 0(s2)
  LW t4, 24(sp)
  BLT t4, zero, bb88
  # implict jump to bb40
bb40:
  LB t4, 2(sp)
  ADD s6, t4, zero
  # implict jump to bb41
bb41:
  BNE s6, zero, bb87
  # implict jump to bb42
bb42:
  ADD s6, a5, zero
  # implict jump to bb43
bb43:
  BNE s6, zero, bb86
  # implict jump to bb44
bb44:
  ADD s6, a6, zero
  # implict jump to bb45
bb45:
  BNE s6, zero, bb85
  # implict jump to bb46
bb46:
  LD t4, 136(sp)
  LW s6, 0(t4)
  # implict jump to bb47
bb47:
  BLT s5, zero, bb84
  # implict jump to bb48
bb48:
  ADD s7, a7, zero
  # implict jump to bb49
bb49:
  BNE s7, zero, bb83
  # implict jump to bb50
bb50:
  SLT s7, s4, zero
  # implict jump to bb51
bb51:
  BNE s7, zero, bb82
  # implict jump to bb52
bb52:
  LW t4, 36(sp)
  SLT s7, s4, t4
  XORI s7, s7, 1
  # implict jump to bb53
bb53:
  BNE s7, zero, bb81
  # implict jump to bb54
bb54:
  ADDW s7, t6, s4
  SLLIW s7, s7, 2
  LA s0, temp
  ADD s0, s0, s7
  LW s0, 0(s0)
  # implict jump to bb55
bb55:
  ADDW s0, s6, s0
  BLT s0, s3, bb56
  JAL zero, bb29
bb56:
  LW t4, 24(sp)
  BLT t4, zero, bb80
  # implict jump to bb57
bb57:
  LB t4, 1(sp)
  ADD s0, t4, zero
  # implict jump to bb58
bb58:
  BNE s0, zero, bb79
  # implict jump to bb59
bb59:
  ADD s0, a4, zero
  # implict jump to bb60
bb60:
  BNE s0, zero, bb78
  # implict jump to bb61
bb61:
  ADD s0, a2, zero
  # implict jump to bb62
bb62:
  BNE s0, zero, bb77
  # implict jump to bb63
bb63:
  LD t4, 88(sp)
  LW s0, 0(t4)
  # implict jump to bb64
bb64:
  BLT s5, zero, bb76
  # implict jump to bb65
bb65:
  LB t4, 5(sp)
  ADD s3, t4, zero
  # implict jump to bb66
bb66:
  BNE s3, zero, bb75
  # implict jump to bb67
bb67:
  SLT s3, s4, zero
  # implict jump to bb68
bb68:
  BNE s3, zero, bb74
  # implict jump to bb69
bb69:
  LW t4, 36(sp)
  SLT s3, s4, t4
  XORI s3, s3, 1
  # implict jump to bb70
bb70:
  BNE s3, zero, bb73
  # implict jump to bb71
bb71:
  LW t4, 20(sp)
  ADDW s3, t4, s4
  SLLIW s3, s3, 2
  LA s6, temp
  ADD s3, s6, s3
  LW s3, 0(s3)
  # implict jump to bb72
bb72:
  ADDW s0, s0, s3
  SW s0, 0(s2)
  JAL zero, bb29
bb73:
  ADDI s3, zero, -1
  JAL zero, bb72
bb74:
  ADDI s3, zero, 1
  JAL zero, bb70
bb75:
  ADDI s3, zero, 1
  JAL zero, bb68
bb76:
  ADDI s3, zero, 1
  JAL zero, bb66
bb77:
  ADDI s0, zero, -1
  JAL zero, bb64
bb78:
  ADDI s0, zero, 1
  JAL zero, bb62
bb79:
  ADDI s0, zero, 1
  JAL zero, bb60
bb80:
  ADDI s0, zero, 1
  JAL zero, bb58
bb81:
  ADDI s0, zero, -1
  JAL zero, bb55
bb82:
  ADDI s7, zero, 1
  JAL zero, bb53
bb83:
  ADDI s7, zero, 1
  JAL zero, bb51
bb84:
  ADDI s7, zero, 1
  JAL zero, bb49
bb85:
  ADDI s6, zero, -1
  JAL zero, bb47
bb86:
  ADDI s6, zero, 1
  JAL zero, bb45
bb87:
  ADDI s6, zero, 1
  JAL zero, bb43
bb88:
  ADDI s6, zero, 1
  JAL zero, bb41
bb89:
  LW t4, 8(sp)
  ADDW s0, t4, s4
  SLLIW s0, s0, 2
  LA s2, temp
  ADD s0, s2, s0
  LW t4, 24(sp)
  BLT t4, zero, bb113
  # implict jump to bb90
bb90:
  LB t4, 3(sp)
  ADD s2, t4, zero
  # implict jump to bb91
bb91:
  BNE s2, zero, bb112
  # implict jump to bb92
bb92:
  ADD s2, s8, zero
  # implict jump to bb93
bb93:
  BNE s2, zero, bb111
  # implict jump to bb94
bb94:
  ADD s2, t1, zero
  # implict jump to bb95
bb95:
  BNE s2, zero, bb110
  # implict jump to bb96
bb96:
  LD t4, 152(sp)
  LW s2, 0(t4)
  # implict jump to bb97
bb97:
  BLT s5, zero, bb109
  # implict jump to bb98
bb98:
  ADD s3, t2, zero
  # implict jump to bb99
bb99:
  BNE s3, zero, bb108
  # implict jump to bb100
bb100:
  SLT s3, s4, zero
  # implict jump to bb101
bb101:
  BNE s3, zero, bb107
  # implict jump to bb102
bb102:
  LW t4, 36(sp)
  SLT s3, s4, t4
  XORI s3, s3, 1
  # implict jump to bb103
bb103:
  BNE s3, zero, bb106
  # implict jump to bb104
bb104:
  ADDW s3, a3, s4
  SLLIW s3, s3, 2
  LA s6, temp
  ADD s3, s6, s3
  LW s3, 0(s3)
  # implict jump to bb105
bb105:
  ADDW s2, s2, s3
  SW s2, 0(s0)
  JAL zero, bb29
bb106:
  ADDI s3, zero, -1
  JAL zero, bb105
bb107:
  ADDI s3, zero, 1
  JAL zero, bb103
bb108:
  ADDI s3, zero, 1
  JAL zero, bb101
bb109:
  ADDI s3, zero, 1
  JAL zero, bb99
bb110:
  ADDI s2, zero, -1
  JAL zero, bb97
bb111:
  ADDI s2, zero, 1
  JAL zero, bb95
bb112:
  ADDI s2, zero, 1
  JAL zero, bb93
bb113:
  ADDI s2, zero, 1
  JAL zero, bb91
bb114:
  ADDI s2, zero, -1
  JAL zero, bb38
bb115:
  ADDI s2, zero, 1
  JAL zero, bb36
bb116:
  ADDI s2, zero, 1
  JAL zero, bb34
bb117:
  ADDI s2, zero, 1
  JAL zero, bb32
bb118:
  BLT s5, zero, bb130
  # implict jump to bb119
bb119:
  ADD s2, s11, zero
  # implict jump to bb120
bb120:
  BNE s2, zero, bb129
  # implict jump to bb121
bb121:
  SLT s2, s4, zero
  # implict jump to bb122
bb122:
  BNE s2, zero, bb128
  # implict jump to bb123
bb123:
  LW t4, 36(sp)
  SLT s2, s4, t4
  XORI s2, s2, 1
  # implict jump to bb124
bb124:
  BNE s2, zero, bb127
  # implict jump to bb125
bb125:
  ADDW s2, t0, s4
  SLLIW s2, s2, 2
  LA s3, temp
  ADD s2, s3, s2
  LW s2, 0(s2)
  # implict jump to bb126
bb126:
  SLT s2, s2, zero
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb28
bb127:
  ADDI s2, zero, -1
  JAL zero, bb126
bb128:
  ADDI s2, zero, 1
  JAL zero, bb124
bb129:
  ADDI s2, zero, 1
  JAL zero, bb122
bb130:
  ADDI s2, zero, 1
  JAL zero, bb120
bb131:
  ADDI s1, zero, -1
  JAL zero, bb26
bb132:
  ADDI s1, zero, 1
  JAL zero, bb24
bb133:
  ADDI s1, zero, 1
  JAL zero, bb22
bb134:
  ADDI s1, zero, 1
  JAL zero, bb20
bb135:
  LW t4, 32(sp)
  SLT s0, t4, zero
  LW t4, 32(sp)
  LW t3, 36(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  ADD s2, zero, zero
  # implict jump to bb136
bb136:
  ADD s3, s2, zero
  LW t4, 36(sp)
  BLT s3, t4, bb138
  # implict jump to bb137
bb137:
  LW t4, 32(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 28(sp)
  JAL zero, bb5
bb138:
  LW t4, 36(sp)
  MULW s4, s3, t4
  LW t4, 32(sp)
  ADDW s4, s4, t4
  SLLIW s4, s4, 2
  LA s5, temp
  ADD s5, s5, s4
  BLT s3, zero, bb150
  # implict jump to bb139
bb139:
  LW t4, 36(sp)
  SLT s6, s3, t4
  XORI s6, s6, 1
  # implict jump to bb140
bb140:
  BNE s6, zero, bb149
  # implict jump to bb141
bb141:
  ADD s6, s0, zero
  # implict jump to bb142
bb142:
  BNE s6, zero, bb148
  # implict jump to bb143
bb143:
  ADD s6, s1, zero
  # implict jump to bb144
bb144:
  BNE s6, zero, bb147
  # implict jump to bb145
bb145:
  LD t4, 176(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  # implict jump to bb146
bb146:
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb136
bb147:
  ADDI s4, zero, -1
  JAL zero, bb146
bb148:
  ADDI s6, zero, 1
  JAL zero, bb144
bb149:
  ADDI s6, zero, 1
  JAL zero, bb142
bb150:
  ADDI s6, zero, 1
  JAL zero, bb140
main:
  ADDI sp, sp, -176
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
  SD ra, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb152
bb152:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb282
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
  LW t4, 28(sp)
  BLT s6, t4, bb159
  # implict jump to bb155
bb155:
  LW t4, 28(sp)
  LW t3, 28(sp)
  MULW s9, t4, t3
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
  LD ra, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 176
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
  LW t4, 28(sp)
  MULW s2, s6, t4
  SLT s9, s6, zero
  LW t4, 28(sp)
  SLT s10, s6, t4
  XORI s10, s10, 1
  LW t4, 28(sp)
  SLT s11, s6, t4
  XORI s11, s11, 1
  LW t4, 28(sp)
  MULW ra, s6, t4
  SLT t0, s6, zero
  LW t4, 28(sp)
  SLT t1, s6, t4
  XORI t1, t1, 1
  LW t4, 28(sp)
  SLT t2, s6, t4
  XORI t2, t2, 1
  LW t4, 28(sp)
  MULW a0, s6, t4
  SLT a1, s6, zero
  SLT a2, s6, zero
  LW t4, 28(sp)
  SLT a3, s6, t4
  XORI a3, a3, 1
  LW t4, 28(sp)
  SLT a4, s6, t4
  XORI a4, a4, 1
  LW t4, 28(sp)
  MULW a5, s6, t4
  LW t4, 28(sp)
  SLT a6, s6, t4
  XORI a6, a6, 1
  LW t4, 28(sp)
  SLT a7, s6, t4
  XORI t4, a7, 1
  SB t4, 5(sp)
  ADD t6, zero, zero
  # implict jump to bb160
bb160:
  ADD s0, s7, zero
  ADD t4, t6, zero
  SW t4, 20(sp)
  ADD s1, s8, zero
  LW t4, 20(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb162
  # implict jump to bb161
bb161:
  ADDIW a7, s6, 1
  ADD s3, s1, zero
  ADD s4, s0, zero
  ADD s5, a7, zero
  JAL zero, bb154
bb162:
  LW t3, 20(sp)
  LW t4, 28(sp)
  MULW t4, t3, t4
  SW t4, 12(sp)
  LW t3, 20(sp)
  LW t4, 28(sp)
  MULW t4, t3, t4
  SW t4, 16(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT s4, t4, t3
  XORI t4, s4, 1
  SB t4, 0(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  MULW s5, t4, t3
  ADDW s5, s5, s6
  SLLIW s5, s5, 2
  LA a7, temp
  ADD t4, a7, s5
  SD t4, 168(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT a7, t4, t3
  XORI t4, a7, 1
  SB t4, 4(sp)
  LW t3, 20(sp)
  LW t4, 28(sp)
  MULW t4, t3, t4
  SW t4, 8(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT a7, t4, t3
  XORI t4, a7, 1
  SB t4, 3(sp)
  LW t4, 16(sp)
  ADDW a7, t4, s6
  SLLIW a7, a7, 2
  LA s5, temp
  ADD t4, s5, a7
  SD t4, 160(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT a7, t4, t3
  XORI t4, a7, 1
  SB t4, 2(sp)
  LW t4, 12(sp)
  ADDW a7, t4, s6
  SLLIW a7, a7, 2
  LA s5, temp
  ADD t4, s5, a7
  SD t4, 120(sp)
  LW t4, 20(sp)
  LW t3, 28(sp)
  SLT a7, t4, t3
  XORI t4, a7, 1
  SB t4, 1(sp)
  LW t4, 12(sp)
  ADDW a7, t4, s6
  SLLIW a7, a7, 2
  LA s5, temp
  ADD t4, s5, a7
  SD t4, 152(sp)
  ADD a7, zero, zero
  # implict jump to bb163
bb163:
  ADD s5, a7, zero
  ADD s4, s1, zero
  LW t4, 28(sp)
  BLT s5, t4, bb165
  # implict jump to bb164
bb164:
  LW t4, 20(sp)
  ADDIW s3, t4, 1
  ADD s8, s4, zero
  ADD t6, s3, zero
  ADD s7, s5, zero
  JAL zero, bb160
bb165:
  LW t4, 20(sp)
  BLT t4, zero, bb281
  # implict jump to bb166
bb166:
  LB t4, 0(sp)
  ADD s3, t4, zero
  # implict jump to bb167
bb167:
  BNE s3, zero, bb280
  # implict jump to bb168
bb168:
  ADD s3, s9, zero
  # implict jump to bb169
bb169:
  BNE s3, zero, bb279
  # implict jump to bb170
bb170:
  ADD s3, s10, zero
  # implict jump to bb171
bb171:
  BNE s3, zero, bb278
  # implict jump to bb172
bb172:
  LD t4, 168(sp)
  LW s3, 0(t4)
  # implict jump to bb173
bb173:
  SLT s3, s3, zero
  XORI s3, s3, 1
  BNE s3, zero, bb265
  # implict jump to bb174
bb174:
  ADD s3, zero, zero
  # implict jump to bb175
bb175:
  BNE s3, zero, bb177
  # implict jump to bb176
bb176:
  ADDIW s0, s5, 1
  ADD s1, s3, zero
  ADD a7, s0, zero
  JAL zero, bb163
bb177:
  LW t4, 20(sp)
  BLT t4, zero, bb264
  # implict jump to bb178
bb178:
  LB t4, 4(sp)
  ADD s4, t4, zero
  # implict jump to bb179
bb179:
  BNE s4, zero, bb263
  # implict jump to bb180
bb180:
  SLT s4, s5, zero
  # implict jump to bb181
bb181:
  BNE s4, zero, bb262
  # implict jump to bb182
bb182:
  LW t4, 28(sp)
  SLT s4, s5, t4
  XORI s4, s4, 1
  # implict jump to bb183
bb183:
  BNE s4, zero, bb261
  # implict jump to bb184
bb184:
  LW t4, 8(sp)
  ADDW s4, t4, s5
  SLLIW s4, s4, 2
  LA s7, temp
  ADD s4, s7, s4
  LW s4, 0(s4)
  # implict jump to bb185
bb185:
  BLT s4, zero, bb236
  # implict jump to bb186
bb186:
  LW t4, 12(sp)
  ADDW s4, t4, s5
  SLLIW s4, s4, 2
  LA s7, temp
  ADD s4, s7, s4
  LW s7, 0(s4)
  LW t4, 20(sp)
  BLT t4, zero, bb235
  # implict jump to bb187
bb187:
  LB t4, 2(sp)
  ADD s8, t4, zero
  # implict jump to bb188
bb188:
  BNE s8, zero, bb234
  # implict jump to bb189
bb189:
  ADD s8, a2, zero
  # implict jump to bb190
bb190:
  BNE s8, zero, bb233
  # implict jump to bb191
bb191:
  ADD s8, a3, zero
  # implict jump to bb192
bb192:
  BNE s8, zero, bb232
  # implict jump to bb193
bb193:
  LD t4, 120(sp)
  LW s8, 0(t4)
  # implict jump to bb194
bb194:
  BLT s6, zero, bb231
  # implict jump to bb195
bb195:
  ADD t6, a4, zero
  # implict jump to bb196
bb196:
  BNE t6, zero, bb230
  # implict jump to bb197
bb197:
  SLT t6, s5, zero
  # implict jump to bb198
bb198:
  BNE t6, zero, bb229
  # implict jump to bb199
bb199:
  LW t4, 28(sp)
  SLT t6, s5, t4
  XORI t6, t6, 1
  # implict jump to bb200
bb200:
  BNE t6, zero, bb228
  # implict jump to bb201
bb201:
  ADDW t6, a5, s5
  SLLIW t6, t6, 2
  LA s0, temp
  ADD s0, s0, t6
  LW s0, 0(s0)
  # implict jump to bb202
bb202:
  ADDW s0, s8, s0
  BLT s0, s7, bb203
  JAL zero, bb176
bb203:
  LW t4, 20(sp)
  BLT t4, zero, bb227
  # implict jump to bb204
bb204:
  LB t4, 1(sp)
  ADD s0, t4, zero
  # implict jump to bb205
bb205:
  BNE s0, zero, bb226
  # implict jump to bb206
bb206:
  ADD s0, a1, zero
  # implict jump to bb207
bb207:
  BNE s0, zero, bb225
  # implict jump to bb208
bb208:
  ADD s0, a6, zero
  # implict jump to bb209
bb209:
  BNE s0, zero, bb224
  # implict jump to bb210
bb210:
  LD t4, 152(sp)
  LW s0, 0(t4)
  # implict jump to bb211
bb211:
  BLT s6, zero, bb223
  # implict jump to bb212
bb212:
  LB t4, 5(sp)
  ADD s7, t4, zero
  # implict jump to bb213
bb213:
  BNE s7, zero, bb222
  # implict jump to bb214
bb214:
  SLT s7, s5, zero
  # implict jump to bb215
bb215:
  BNE s7, zero, bb221
  # implict jump to bb216
bb216:
  LW t4, 28(sp)
  SLT s7, s5, t4
  XORI s7, s7, 1
  # implict jump to bb217
bb217:
  BNE s7, zero, bb220
  # implict jump to bb218
bb218:
  ADDW s7, s2, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb219
bb219:
  ADDW s0, s0, s7
  SW s0, 0(s4)
  JAL zero, bb176
bb220:
  ADDI s7, zero, -1
  JAL zero, bb219
bb221:
  ADDI s7, zero, 1
  JAL zero, bb217
bb222:
  ADDI s7, zero, 1
  JAL zero, bb215
bb223:
  ADDI s7, zero, 1
  JAL zero, bb213
bb224:
  ADDI s0, zero, -1
  JAL zero, bb211
bb225:
  ADDI s0, zero, 1
  JAL zero, bb209
bb226:
  ADDI s0, zero, 1
  JAL zero, bb207
bb227:
  ADDI s0, zero, 1
  JAL zero, bb205
bb228:
  ADDI s0, zero, -1
  JAL zero, bb202
bb229:
  ADDI t6, zero, 1
  JAL zero, bb200
bb230:
  ADDI t6, zero, 1
  JAL zero, bb198
bb231:
  ADDI t6, zero, 1
  JAL zero, bb196
bb232:
  ADDI s8, zero, -1
  JAL zero, bb194
bb233:
  ADDI s8, zero, 1
  JAL zero, bb192
bb234:
  ADDI s8, zero, 1
  JAL zero, bb190
bb235:
  ADDI s8, zero, 1
  JAL zero, bb188
bb236:
  LW t4, 16(sp)
  ADDW s0, t4, s5
  SLLIW s0, s0, 2
  LA s4, temp
  ADD s0, s4, s0
  LW t4, 20(sp)
  BLT t4, zero, bb260
  # implict jump to bb237
bb237:
  LB t4, 3(sp)
  ADD s4, t4, zero
  # implict jump to bb238
bb238:
  BNE s4, zero, bb259
  # implict jump to bb239
bb239:
  ADD s4, t0, zero
  # implict jump to bb240
bb240:
  BNE s4, zero, bb258
  # implict jump to bb241
bb241:
  ADD s4, t1, zero
  # implict jump to bb242
bb242:
  BNE s4, zero, bb257
  # implict jump to bb243
bb243:
  LD t4, 160(sp)
  LW s4, 0(t4)
  # implict jump to bb244
bb244:
  BLT s6, zero, bb256
  # implict jump to bb245
bb245:
  ADD s7, t2, zero
  # implict jump to bb246
bb246:
  BNE s7, zero, bb255
  # implict jump to bb247
bb247:
  SLT s7, s5, zero
  # implict jump to bb248
bb248:
  BNE s7, zero, bb254
  # implict jump to bb249
bb249:
  LW t4, 28(sp)
  SLT s7, s5, t4
  XORI s7, s7, 1
  # implict jump to bb250
bb250:
  BNE s7, zero, bb253
  # implict jump to bb251
bb251:
  ADDW s7, a0, s5
  SLLIW s7, s7, 2
  LA s8, temp
  ADD s7, s8, s7
  LW s7, 0(s7)
  # implict jump to bb252
bb252:
  ADDW s4, s4, s7
  SW s4, 0(s0)
  JAL zero, bb176
bb253:
  ADDI s7, zero, -1
  JAL zero, bb252
bb254:
  ADDI s7, zero, 1
  JAL zero, bb250
bb255:
  ADDI s7, zero, 1
  JAL zero, bb248
bb256:
  ADDI s7, zero, 1
  JAL zero, bb246
bb257:
  ADDI s4, zero, -1
  JAL zero, bb244
bb258:
  ADDI s4, zero, 1
  JAL zero, bb242
bb259:
  ADDI s4, zero, 1
  JAL zero, bb240
bb260:
  ADDI s4, zero, 1
  JAL zero, bb238
bb261:
  ADDI s4, zero, -1
  JAL zero, bb185
bb262:
  ADDI s4, zero, 1
  JAL zero, bb183
bb263:
  ADDI s4, zero, 1
  JAL zero, bb181
bb264:
  ADDI s4, zero, 1
  JAL zero, bb179
bb265:
  BLT s6, zero, bb277
  # implict jump to bb266
bb266:
  ADD s4, s11, zero
  # implict jump to bb267
bb267:
  BNE s4, zero, bb276
  # implict jump to bb268
bb268:
  SLT s4, s5, zero
  # implict jump to bb269
bb269:
  BNE s4, zero, bb275
  # implict jump to bb270
bb270:
  LW t4, 28(sp)
  SLT s4, s5, t4
  XORI s4, s4, 1
  # implict jump to bb271
bb271:
  BNE s4, zero, bb274
  # implict jump to bb272
bb272:
  ADDW s4, ra, s5
  SLLIW s4, s4, 2
  LA s7, temp
  ADD s4, s7, s4
  LW s4, 0(s4)
  # implict jump to bb273
bb273:
  SLT s4, s4, zero
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb175
bb274:
  ADDI s4, zero, -1
  JAL zero, bb273
bb275:
  ADDI s4, zero, 1
  JAL zero, bb271
bb276:
  ADDI s4, zero, 1
  JAL zero, bb269
bb277:
  ADDI s4, zero, 1
  JAL zero, bb267
bb278:
  ADDI s3, zero, -1
  JAL zero, bb173
bb279:
  ADDI s3, zero, 1
  JAL zero, bb171
bb280:
  ADDI s3, zero, 1
  JAL zero, bb169
bb281:
  ADDI s3, zero, 1
  JAL zero, bb167
bb282:
  LW t4, 32(sp)
  SLT s0, t4, zero
  LW t4, 32(sp)
  LW t3, 28(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  ADD s2, zero, zero
  # implict jump to bb283
bb283:
  ADD s3, s2, zero
  LW t4, 28(sp)
  BLT s3, t4, bb285
  # implict jump to bb284
bb284:
  LW t4, 32(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 24(sp)
  JAL zero, bb152
bb285:
  LW t4, 28(sp)
  MULW s4, s3, t4
  LW t4, 32(sp)
  ADDW s4, s4, t4
  SLLIW s4, s4, 2
  LA s5, temp
  ADD s5, s5, s4
  BLT s3, zero, bb297
  # implict jump to bb286
bb286:
  LW t4, 28(sp)
  SLT s6, s3, t4
  XORI s6, s6, 1
  # implict jump to bb287
bb287:
  BNE s6, zero, bb296
  # implict jump to bb288
bb288:
  ADD s6, s0, zero
  # implict jump to bb289
bb289:
  BNE s6, zero, bb295
  # implict jump to bb290
bb290:
  ADD s6, s1, zero
  # implict jump to bb291
bb291:
  BNE s6, zero, bb294
  # implict jump to bb292
bb292:
  LA s6, w
  ADD s4, s6, s4
  LW s4, 0(s4)
  # implict jump to bb293
bb293:
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb283
bb294:
  ADDI s4, zero, -1
  JAL zero, bb293
bb295:
  ADDI s6, zero, 1
  JAL zero, bb291
bb296:
  ADDI s6, zero, 1
  JAL zero, bb289
bb297:
  ADDI s6, zero, 1
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
