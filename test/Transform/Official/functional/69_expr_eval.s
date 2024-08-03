.global main
.section .bss




.section .data
cur_token:
.word 0x00000000
other:
.word 0x00000000
num:
.word 0x00000000
last_char:
.word 0x00000020
.section .text
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1968
  ADD sp, sp, t0
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
  CALL getint
  ADD s2, a0, zero
  CALL getch
  # implict jump to bb1
bb1:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb210
  # implict jump to bb2
bb2:
  XORI s0, s1, 10
  SLTIU s0, s0, 1
  # implict jump to bb3
bb3:
  BNE s0, zero, bb209
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  BNE s0, zero, bb208
  # implict jump to bb6
bb6:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb207
  # implict jump to bb7
bb7:
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  BNE s0, zero, bb206
  # implict jump to bb9
bb9:
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  BNE s0, zero, bb196
  # implict jump to bb11
bb11:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  LA s1, cur_token
  ADDI s0, zero, 1
  SW s0, 0(s1)
  # implict jump to bb12
bb12:
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
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
  LUI t0, 1
  ADDIW t0, t0, -1968
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb14:
  ADD s0, s2, zero
  # implict jump to bb15
bb15:
  ADD s4, s0, zero
  ADDI s0, zero, 256
  # implict jump to bb16
bb16:
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  SLLIW s1, s0, 2
  ADDI t5, sp, 80
  ADD s1, t5, s1
  SW zero, 0(s1)
  BNE s0, zero, bb195
  # implict jump to bb17
bb17:
  ADDI s0, zero, 256
  # implict jump to bb18
bb18:
  ADD s1, s0, zero
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  SLLIW s1, s0, 2
  ADDI t5, sp, 1104
  ADD s1, t5, s1
  SW zero, 0(s1)
  BNE s0, zero, bb194
  # implict jump to bb19
bb19:
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb193
  # implict jump to bb20
bb20:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 80(sp)
  ADDIW s0, s0, 1
  SW s0, 80(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  SW s1, 0(s0)
  # implict jump to bb21
bb21:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb192
  # implict jump to bb22
bb22:
  XORI s0, s1, 10
  SLTIU s0, s0, 1
  # implict jump to bb23
bb23:
  BNE s0, zero, bb191
  # implict jump to bb24
bb24:
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  BNE s0, zero, bb190
  # implict jump to bb26
bb26:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb189
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  BNE s0, zero, bb188
  # implict jump to bb29
bb29:
  ADD s0, zero, zero
  # implict jump to bb30
bb30:
  BNE s0, zero, bb178
  # implict jump to bb31
bb31:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  LA s1, cur_token
  ADDI s0, zero, 1
  SW s0, 0(s1)
  # implict jump to bb32
bb32:
  ADD s5, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb33
bb33:
  ADD s1, s0, zero
  ADD s3, s2, zero
  ADD s2, s5, zero
  LA s0, cur_token
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb76
  # implict jump to bb34
bb34:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb75
  # implict jump to bb35
bb35:
  XORI s0, s1, 10
  SLTIU s0, s0, 1
  # implict jump to bb36
bb36:
  BNE s0, zero, bb74
  # implict jump to bb37
bb37:
  ADD s0, zero, zero
  # implict jump to bb38
bb38:
  BNE s0, zero, bb73
  # implict jump to bb39
bb39:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb72
  # implict jump to bb40
bb40:
  ADD s0, zero, zero
  # implict jump to bb41
bb41:
  BNE s0, zero, bb71
  # implict jump to bb42
bb42:
  ADD s0, zero, zero
  # implict jump to bb43
bb43:
  BNE s0, zero, bb61
  # implict jump to bb44
bb44:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA a0, last_char
  SW s0, 0(a0)
  LA s0, cur_token
  ADDI a0, zero, 1
  SW a0, 0(s0)
  # implict jump to bb45
bb45:
  LW a0, 1104(sp)
  BNE a0, zero, bb49
  # implict jump to bb46
bb46:
  LW a0, 80(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  # implict jump to bb47
bb47:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s0, s4, s0
  BNE s0, zero, bb48
  JAL zero, bb13
bb48:
  JAL zero, bb15
bb49:
  LW s0, 1104(sp)
  SLLIW a0, s0, 2
  ADDI t5, sp, 1104
  ADD a0, t5, a0
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SW a0, 1104(sp)
  LW s3, 80(sp)
  SLLIW a0, s3, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  SW a0, 80(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s2, 0(a0)
  ADDI a0, zero, 2
  SUBW a0, s3, a0
  SW a0, 80(sp)
  XORI a0, s1, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb60
  # implict jump to bb50
bb50:
  XORI a0, s1, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb59
  # implict jump to bb51
bb51:
  XORI a0, s1, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb58
  # implict jump to bb52
bb52:
  XORI a0, s1, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb57
  # implict jump to bb53
bb53:
  XORI a0, s1, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb56
  # implict jump to bb54
bb54:
  ADD a0, zero, zero
  # implict jump to bb55
bb55:
  LW s0, 80(sp)
  ADDIW s0, s0, 1
  SW s0, 80(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  SW a0, 0(s0)
  JAL zero, bb45
bb56:
  REMW a0, s2, s0
  JAL zero, bb55
bb57:
  DIVW a0, s2, s0
  JAL zero, bb55
bb58:
  MULW a0, s2, s0
  JAL zero, bb55
bb59:
  SUBW a0, s2, s0
  JAL zero, bb55
bb60:
  ADDW a0, s2, s0
  JAL zero, bb55
bb61:
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  # implict jump to bb62
bb62:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb70
  # implict jump to bb63
bb63:
  ADD s0, zero, zero
  # implict jump to bb64
bb64:
  BNE s0, zero, bb69
  # implict jump to bb65
bb65:
  ADD s0, zero, zero
  # implict jump to bb66
bb66:
  BNE s0, zero, bb68
  # implict jump to bb67
bb67:
  LA a0, cur_token
  SW zero, 0(a0)
  JAL zero, bb45
bb68:
  LA s0, num
  LW s2, 0(s0)
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s1, s0, s1
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  JAL zero, bb62
bb69:
  ADDI s0, zero, 1
  JAL zero, bb66
bb70:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb64
bb71:
  ADDI s0, zero, 1
  JAL zero, bb43
bb72:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb41
bb73:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  JAL zero, bb34
bb74:
  ADDI s0, zero, 1
  JAL zero, bb38
bb75:
  ADDI s0, zero, 1
  JAL zero, bb36
bb76:
  LA s0, other
  LW s5, 0(s0)
  XORI s0, s5, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb177
  # implict jump to bb77
bb77:
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  # implict jump to bb78
bb78:
  BNE s0, zero, bb176
  # implict jump to bb79
bb79:
  XORI s0, s5, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb175
  # implict jump to bb80
bb80:
  XORI s0, s5, 47
  SLTIU s0, s0, 1
  # implict jump to bb81
bb81:
  BNE s0, zero, bb174
  # implict jump to bb82
bb82:
  XORI s0, s5, 37
  SLTIU s0, s0, 1
  # implict jump to bb83
bb83:
  BNE s0, zero, bb173
  # implict jump to bb84
bb84:
  ADD s0, zero, zero
  # implict jump to bb85
bb85:
  ADD s6, s0, zero
  SLTU s0, zero, s6
  XORI s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb86
bb86:
  LA s0, last_char
  LW s7, 0(s0)
  XORI s0, s7, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb172
  # implict jump to bb87
bb87:
  XORI s0, s7, 10
  SLTIU s0, s0, 1
  # implict jump to bb88
bb88:
  BNE s0, zero, bb171
  # implict jump to bb89
bb89:
  ADD s0, zero, zero
  # implict jump to bb90
bb90:
  BNE s0, zero, bb170
  # implict jump to bb91
bb91:
  SLTI s0, s7, 48
  XORI s0, s0, 1
  BNE s0, zero, bb169
  # implict jump to bb92
bb92:
  ADD s0, zero, zero
  # implict jump to bb93
bb93:
  BNE s0, zero, bb168
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  # implict jump to bb95
bb95:
  BNE s0, zero, bb158
  # implict jump to bb96
bb96:
  LA s0, last_char
  LW s7, 0(s0)
  LA s0, other
  SW s7, 0(s0)
  CALL getch
  ADD s7, a0, zero
  LA s0, last_char
  SW s7, 0(s0)
  LA s7, cur_token
  ADDI s0, zero, 1
  SW s0, 0(s7)
  # implict jump to bb97
bb97:
  ADD s0, s2, zero
  ADD s2, s3, zero
  # implict jump to bb98
bb98:
  ADD s3, s2, zero
  ADD s2, s0, zero
  LW s0, 1104(sp)
  BNE s0, zero, bb143
  # implict jump to bb99
bb99:
  ADD s0, zero, zero
  # implict jump to bb100
bb100:
  BNE s0, zero, bb131
  # implict jump to bb101
bb101:
  LW s0, 1104(sp)
  ADDIW s0, s0, 1
  SW s0, 1104(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 1104
  ADD s0, t5, s0
  SW s5, 0(s0)
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb130
  # implict jump to bb102
bb102:
  LA s0, num
  LW s5, 0(s0)
  LW s0, 80(sp)
  ADDIW s0, s0, 1
  SW s0, 80(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  SW s5, 0(s0)
  # implict jump to bb103
bb103:
  LA s0, last_char
  LW s5, 0(s0)
  XORI s0, s5, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb129
  # implict jump to bb104
bb104:
  XORI s0, s5, 10
  SLTIU s0, s0, 1
  # implict jump to bb105
bb105:
  BNE s0, zero, bb128
  # implict jump to bb106
bb106:
  ADD s0, zero, zero
  # implict jump to bb107
bb107:
  BNE s0, zero, bb127
  # implict jump to bb108
bb108:
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb109
bb109:
  ADD s0, zero, zero
  # implict jump to bb110
bb110:
  BNE s0, zero, bb125
  # implict jump to bb111
bb111:
  ADD s0, zero, zero
  # implict jump to bb112
bb112:
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:
  LA s0, last_char
  LW s5, 0(s0)
  LA s0, other
  SW s5, 0(s0)
  CALL getch
  ADD s5, a0, zero
  LA s0, last_char
  SW s5, 0(s0)
  LA s5, cur_token
  ADDI s0, zero, 1
  SW s0, 0(s5)
  # implict jump to bb114
bb114:
  ADD s5, s2, zero
  ADD s2, s3, zero
  ADD s0, s1, zero
  JAL zero, bb33
bb115:
  ADDI s0, zero, 48
  SUBW s5, s5, s0
  LA s0, num
  SW s5, 0(s0)
  # implict jump to bb116
bb116:
  CALL getch
  ADD s5, a0, zero
  LA s0, last_char
  SW s5, 0(s0)
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb117
bb117:
  ADD s0, zero, zero
  # implict jump to bb118
bb118:
  BNE s0, zero, bb123
  # implict jump to bb119
bb119:
  ADD s0, zero, zero
  # implict jump to bb120
bb120:
  BNE s0, zero, bb122
  # implict jump to bb121
bb121:
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb114
bb122:
  LA s0, num
  LW s6, 0(s0)
  ADDI s0, zero, 10
  MULW s0, s6, s0
  ADDW s5, s0, s5
  ADDI s0, zero, 48
  SUBW s5, s5, s0
  LA s0, num
  SW s5, 0(s0)
  JAL zero, bb116
bb123:
  ADDI s0, zero, 1
  JAL zero, bb120
bb124:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb118
bb125:
  ADDI s0, zero, 1
  JAL zero, bb112
bb126:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb110
bb127:
  CALL getch
  ADD s5, a0, zero
  LA s0, last_char
  SW s5, 0(s0)
  JAL zero, bb103
bb128:
  ADDI s0, zero, 1
  JAL zero, bb107
bb129:
  ADDI s0, zero, 1
  JAL zero, bb105
bb130:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, -1
  JAL zero, bb47
bb131:
  LW s2, 1104(sp)
  SLLIW s0, s2, 2
  ADDI t5, sp, 1104
  ADD s0, t5, s0
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s2, s0
  SW s0, 1104(sp)
  LW s7, 80(sp)
  SLLIW s0, s7, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  SW s0, 80(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s3, 0(s0)
  ADDI s0, zero, 2
  SUBW s0, s7, s0
  SW s0, 80(sp)
  XORI s0, s1, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb132
bb132:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb133
bb133:
  XORI s0, s1, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb140
  # implict jump to bb134
bb134:
  XORI s0, s1, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb139
  # implict jump to bb135
bb135:
  XORI s0, s1, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:
  ADD s0, zero, zero
  # implict jump to bb137
bb137:
  ADD s7, s0, zero
  LW s0, 80(sp)
  ADDIW s0, s0, 1
  SW s0, 80(sp)
  SLLIW s0, s0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  SW s7, 0(s0)
  ADD s0, s3, zero
  JAL zero, bb98
bb138:
  REMW s0, s3, s2
  JAL zero, bb137
bb139:
  DIVW s0, s3, s2
  JAL zero, bb137
bb140:
  MULW s0, s3, s2
  JAL zero, bb137
bb141:
  SUBW s0, s3, s2
  JAL zero, bb137
bb142:
  ADDW s0, s3, s2
  JAL zero, bb137
bb143:
  SLLIW s0, s0, 2
  ADDI t5, sp, 1104
  ADD s0, t5, s0
  LW s7, 0(s0)
  XORI s0, s7, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb144
bb144:
  XORI s0, s7, 45
  SLTIU s0, s0, 1
  # implict jump to bb145
bb145:
  BNE s0, zero, bb156
  # implict jump to bb146
bb146:
  XORI s0, s7, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb155
  # implict jump to bb147
bb147:
  XORI s0, s7, 47
  SLTIU s0, s0, 1
  # implict jump to bb148
bb148:
  BNE s0, zero, bb154
  # implict jump to bb149
bb149:
  XORI s0, s7, 37
  SLTIU s0, s0, 1
  # implict jump to bb150
bb150:
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:
  ADD s0, zero, zero
  # implict jump to bb152
bb152:
  SLT s0, s0, s6
  XORI s0, s0, 1
  JAL zero, bb100
bb153:
  ADDI s0, zero, 20
  JAL zero, bb152
bb154:
  ADDI s0, zero, 1
  JAL zero, bb150
bb155:
  ADDI s0, zero, 1
  JAL zero, bb148
bb156:
  ADDI s0, zero, 10
  JAL zero, bb152
bb157:
  ADDI s0, zero, 1
  JAL zero, bb145
bb158:
  ADDI s0, zero, 48
  SUBW s7, s7, s0
  LA s0, num
  SW s7, 0(s0)
  # implict jump to bb159
bb159:
  CALL getch
  ADD s7, a0, zero
  LA s0, last_char
  SW s7, 0(s0)
  SLTI s0, s7, 48
  XORI s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb160
bb160:
  ADD s0, zero, zero
  # implict jump to bb161
bb161:
  BNE s0, zero, bb166
  # implict jump to bb162
bb162:
  ADD s0, zero, zero
  # implict jump to bb163
bb163:
  BNE s0, zero, bb165
  # implict jump to bb164
bb164:
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb97
bb165:
  LA s0, num
  LW s8, 0(s0)
  ADDI s0, zero, 10
  MULW s0, s8, s0
  ADDW s7, s0, s7
  ADDI s0, zero, 48
  SUBW s7, s7, s0
  LA s0, num
  SW s7, 0(s0)
  JAL zero, bb159
bb166:
  ADDI s0, zero, 1
  JAL zero, bb163
bb167:
  ADDI s0, zero, 57
  SLT s0, s0, s7
  XORI s0, s0, 1
  JAL zero, bb161
bb168:
  ADDI s0, zero, 1
  JAL zero, bb95
bb169:
  ADDI s0, zero, 57
  SLT s0, s0, s7
  XORI s0, s0, 1
  JAL zero, bb93
bb170:
  CALL getch
  ADD s7, a0, zero
  LA s0, last_char
  SW s7, 0(s0)
  JAL zero, bb86
bb171:
  ADDI s0, zero, 1
  JAL zero, bb90
bb172:
  ADDI s0, zero, 1
  JAL zero, bb88
bb173:
  ADDI s0, zero, 20
  JAL zero, bb85
bb174:
  ADDI s0, zero, 1
  JAL zero, bb83
bb175:
  ADDI s0, zero, 1
  JAL zero, bb81
bb176:
  ADDI s0, zero, 10
  JAL zero, bb85
bb177:
  ADDI s0, zero, 1
  JAL zero, bb78
bb178:
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  # implict jump to bb179
bb179:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb187
  # implict jump to bb180
bb180:
  ADD s0, zero, zero
  # implict jump to bb181
bb181:
  BNE s0, zero, bb186
  # implict jump to bb182
bb182:
  ADD s0, zero, zero
  # implict jump to bb183
bb183:
  BNE s0, zero, bb185
  # implict jump to bb184
bb184:
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb32
bb185:
  LA s0, num
  LW s2, 0(s0)
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s1, s0, s1
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  JAL zero, bb179
bb186:
  ADDI s0, zero, 1
  JAL zero, bb183
bb187:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb181
bb188:
  ADDI s0, zero, 1
  JAL zero, bb30
bb189:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb28
bb190:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  JAL zero, bb21
bb191:
  ADDI s0, zero, 1
  JAL zero, bb25
bb192:
  ADDI s0, zero, 1
  JAL zero, bb23
bb193:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, -1
  JAL zero, bb47
bb194:
  JAL zero, bb18
bb195:
  JAL zero, bb16
bb196:
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  # implict jump to bb197
bb197:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb205
  # implict jump to bb198
bb198:
  ADD s0, zero, zero
  # implict jump to bb199
bb199:
  BNE s0, zero, bb204
  # implict jump to bb200
bb200:
  ADD s0, zero, zero
  # implict jump to bb201
bb201:
  BNE s0, zero, bb203
  # implict jump to bb202
bb202:
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb12
bb203:
  LA s0, num
  LW s3, 0(s0)
  ADDI s0, zero, 10
  MULW s0, s3, s0
  ADDW s1, s0, s1
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  LA s0, num
  SW s1, 0(s0)
  JAL zero, bb197
bb204:
  ADDI s0, zero, 1
  JAL zero, bb201
bb205:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb199
bb206:
  ADDI s0, zero, 1
  JAL zero, bb10
bb207:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb8
bb208:
  CALL getch
  ADD s1, a0, zero
  LA s0, last_char
  SW s1, 0(s0)
  JAL zero, bb1
bb209:
  ADDI s0, zero, 1
  JAL zero, bb5
bb210:
  ADDI s0, zero, 1
  JAL zero, bb3
