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
main:   # loop depth 0
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
  ADD s1, a0, zero
  CALL getch
  # implict jump to bb1
bb1:   # loop depth 1
  LA s0, last_char
  LW s2, 0(s0)
  XORI s0, s2, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb210
  # implict jump to bb2
bb2:   # loop depth 1
  XORI s0, s2, 10
  SLTIU s0, s0, 1
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s0, zero, bb209
  # implict jump to bb4
bb4:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE s0, zero, bb208
  # implict jump to bb6
bb6:   # loop depth 0
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb207
  # implict jump to bb7
bb7:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s0, zero, bb206
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s0, zero, bb196
  # implict jump to bb11
bb11:   # loop depth 0
  LA s0, last_char
  LW s0, 0(s0)
  LA s2, other
  SW s0, 0(s2)
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  LA s0, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s0)
  # implict jump to bb12
bb12:   # loop depth 0
  BNE s1, zero, bb14
  # implict jump to bb13
bb13:   # loop depth 0
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
bb14:   # loop depth 0
  # implict jump to bb15
bb15:   # loop depth 1
  ADDI s0, zero, 256
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW s2, s0, -1
  SLLIW s0, s0, 2
  ADDI t6, sp, 80
  ADD s0, t6, s0
  SW zero, -4(s0)
  BNE s2, zero, bb195
  # implict jump to bb17
bb17:   # loop depth 1
  ADDI s0, zero, 256
  # implict jump to bb18
bb18:   # loop depth 2
  ADDIW s2, s0, -1
  SLLIW s0, s0, 2
  ADDI t6, sp, 1104
  ADD s0, t6, s0
  SW zero, -4(s0)
  BNE s2, zero, bb194
  # implict jump to bb19
bb19:   # loop depth 1
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb193
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, num
  LW s0, 0(s0)
  LW s2, 80(sp)
  ADDIW s3, s2, 1
  SW s3, 80(sp)
  SLLIW s2, s2, 2
  ADDI t6, sp, 80
  ADD s2, t6, s2
  SW s0, 4(s2)
  # implict jump to bb21
bb21:   # loop depth 2
  LA s0, last_char
  LW s2, 0(s0)
  XORI s0, s2, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb192
  # implict jump to bb22
bb22:   # loop depth 2
  XORI s0, s2, 10
  SLTIU s0, s0, 1
  # implict jump to bb23
bb23:   # loop depth 2
  BNE s0, zero, bb191
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  BNE s0, zero, bb190
  # implict jump to bb26
bb26:   # loop depth 1
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb189
  # implict jump to bb27
bb27:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  BNE s0, zero, bb188
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb30
bb30:   # loop depth 1
  BNE s0, zero, bb178
  # implict jump to bb31
bb31:   # loop depth 1
  LA s0, last_char
  LW s0, 0(s0)
  LA s2, other
  SW s0, 0(s2)
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  LA s0, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s0)
  # implict jump to bb32
bb32:   # loop depth 1
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  LA s0, cur_token
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb76
  # implict jump to bb34
bb34:   # loop depth 2
  LA s0, last_char
  LW s2, 0(s0)
  XORI s0, s2, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb75
  # implict jump to bb35
bb35:   # loop depth 2
  XORI s0, s2, 10
  SLTIU s0, s0, 1
  # implict jump to bb36
bb36:   # loop depth 2
  BNE s0, zero, bb74
  # implict jump to bb37
bb37:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  BNE s0, zero, bb73
  # implict jump to bb39
bb39:   # loop depth 1
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb72
  # implict jump to bb40
bb40:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  BNE s0, zero, bb71
  # implict jump to bb42
bb42:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb43
bb43:   # loop depth 1
  BNE s0, zero, bb61
  # implict jump to bb44
bb44:   # loop depth 1
  LA s0, last_char
  LW s0, 0(s0)
  LA s2, other
  SW s0, 0(s2)
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  LA a0, cur_token
  ADDI s0, zero, 1
  SW s0, 0(a0)
  # implict jump to bb45
bb45:   # loop depth 2
  LW a0, 1104(sp)
  BNE a0, zero, bb49
  # implict jump to bb46
bb46:   # loop depth 1
  LW a0, 80(sp)
  SLLIW a0, a0, 2
  ADDI t6, sp, 80
  ADD a0, t6, a0
  LW a0, 0(a0)
  # implict jump to bb47
bb47:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, -1
  BNE s1, zero, bb48
  JAL zero, bb13
bb48:   # loop depth 1
  JAL zero, bb15
bb49:   # loop depth 2
  LW a0, 1104(sp)
  SLLIW s0, a0, 2
  ADDI t6, sp, 1104
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDIW a0, a0, -1
  SW a0, 1104(sp)
  LW a0, 80(sp)
  SLLIW s2, a0, 2
  ADDI t6, sp, 80
  ADD s2, t6, s2
  LW s2, 0(s2)
  ADDIW s3, a0, -1
  SW s3, 80(sp)
  SLLIW s3, s3, 2
  ADDI t6, sp, 80
  ADD s3, t6, s3
  LW s3, 0(s3)
  ADDIW a0, a0, -2
  SW a0, 80(sp)
  XORI a0, s0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb60
  # implict jump to bb50
bb50:   # loop depth 2
  XORI a0, s0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb59
  # implict jump to bb51
bb51:   # loop depth 2
  XORI a0, s0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb58
  # implict jump to bb52
bb52:   # loop depth 2
  XORI a0, s0, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  XORI a0, s0, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb56
  # implict jump to bb54
bb54:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb55
bb55:   # loop depth 2
  LW s0, 80(sp)
  ADDIW s2, s0, 1
  SW s2, 80(sp)
  SLLIW s0, s0, 2
  ADDI t6, sp, 80
  ADD s0, t6, s0
  SW a0, 4(s0)
  JAL zero, bb45
bb56:   # loop depth 2
  REMW a0, s3, s2
  JAL zero, bb55
bb57:   # loop depth 2
  DIVW a0, s3, s2
  JAL zero, bb55
bb58:   # loop depth 2
  MULW a0, s3, s2
  JAL zero, bb55
bb59:   # loop depth 2
  SUBW a0, s3, s2
  JAL zero, bb55
bb60:   # loop depth 2
  ADDW a0, s3, s2
  JAL zero, bb55
bb61:   # loop depth 1
  ADDIW s0, s2, -48
  LA s2, num
  SW s0, 0(s2)
  # implict jump to bb62
bb62:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  LA s0, last_char
  SW s2, 0(s0)
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb70
  # implict jump to bb63
bb63:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb64
bb64:   # loop depth 2
  BNE s0, zero, bb69
  # implict jump to bb65
bb65:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb66
bb66:   # loop depth 2
  BNE s0, zero, bb68
  # implict jump to bb67
bb67:   # loop depth 1
  LA a0, cur_token
  SW zero, 0(a0)
  JAL zero, bb45
bb68:   # loop depth 2
  LA s0, num
  LW s0, 0(s0)
  ADDI s3, zero, 10
  MULW s0, s0, s3
  ADDW s0, s0, s2
  ADDIW s0, s0, -48
  LA s2, num
  SW s0, 0(s2)
  JAL zero, bb62
bb69:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb66
bb70:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb64
bb71:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb43
bb72:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb41
bb73:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  JAL zero, bb34
bb74:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb38
bb75:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb36
bb76:   # loop depth 2
  LA s0, other
  LW s5, 0(s0)
  XORI s0, s5, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb177
  # implict jump to bb77
bb77:   # loop depth 2
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  # implict jump to bb78
bb78:   # loop depth 2
  BNE s0, zero, bb176
  # implict jump to bb79
bb79:   # loop depth 2
  XORI s0, s5, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb175
  # implict jump to bb80
bb80:   # loop depth 2
  XORI s0, s5, 47
  SLTIU s0, s0, 1
  # implict jump to bb81
bb81:   # loop depth 2
  BNE s0, zero, bb174
  # implict jump to bb82
bb82:   # loop depth 2
  XORI s0, s5, 37
  SLTIU s0, s0, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s0, zero, bb173
  # implict jump to bb84
bb84:   # loop depth 2
  ADD s6, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  SLTU s0, zero, s6
  XORI s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb86
bb86:   # loop depth 3
  LA s0, last_char
  LW s7, 0(s0)
  XORI s0, s7, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb172
  # implict jump to bb87
bb87:   # loop depth 3
  XORI s0, s7, 10
  SLTIU s0, s0, 1
  # implict jump to bb88
bb88:   # loop depth 3
  BNE s0, zero, bb171
  # implict jump to bb89
bb89:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb90
bb90:   # loop depth 3
  BNE s0, zero, bb170
  # implict jump to bb91
bb91:   # loop depth 2
  SLTI s0, s7, 48
  XORI s0, s0, 1
  BNE s0, zero, bb169
  # implict jump to bb92
bb92:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  BNE s0, zero, bb168
  # implict jump to bb94
bb94:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb95
bb95:   # loop depth 2
  BNE s0, zero, bb158
  # implict jump to bb96
bb96:   # loop depth 2
  LA s0, last_char
  LW s0, 0(s0)
  LA s7, other
  SW s0, 0(s7)
  CALL getch
  ADD s0, a0, zero
  LA s7, last_char
  SW s0, 0(s7)
  LA s0, cur_token
  ADDI s7, zero, 1
  SW s7, 0(s0)
  # implict jump to bb97
bb97:   # loop depth 2
  # implict jump to bb98
bb98:   # loop depth 3
  LW s0, 1104(sp)
  BNE s0, zero, bb143
  # implict jump to bb99
bb99:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb100
bb100:   # loop depth 3
  BNE s0, zero, bb131
  # implict jump to bb101
bb101:   # loop depth 2
  LW s0, 1104(sp)
  ADDIW s6, s0, 1
  SW s6, 1104(sp)
  SLLIW s0, s0, 2
  ADDI t6, sp, 1104
  ADD s0, t6, s0
  SW s5, 4(s0)
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb130
  # implict jump to bb102
bb102:   # loop depth 2
  LA s0, num
  LW s0, 0(s0)
  LW s5, 80(sp)
  ADDIW s6, s5, 1
  SW s6, 80(sp)
  SLLIW s5, s5, 2
  ADDI t6, sp, 80
  ADD s5, t6, s5
  SW s0, 4(s5)
  # implict jump to bb103
bb103:   # loop depth 3
  LA s0, last_char
  LW s5, 0(s0)
  XORI s0, s5, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb129
  # implict jump to bb104
bb104:   # loop depth 3
  XORI s0, s5, 10
  SLTIU s0, s0, 1
  # implict jump to bb105
bb105:   # loop depth 3
  BNE s0, zero, bb128
  # implict jump to bb106
bb106:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb107
bb107:   # loop depth 3
  BNE s0, zero, bb127
  # implict jump to bb108
bb108:   # loop depth 2
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb109
bb109:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb110
bb110:   # loop depth 2
  BNE s0, zero, bb125
  # implict jump to bb111
bb111:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb112
bb112:   # loop depth 2
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:   # loop depth 2
  LA s0, last_char
  LW s0, 0(s0)
  LA s5, other
  SW s0, 0(s5)
  CALL getch
  ADD s0, a0, zero
  LA s5, last_char
  SW s0, 0(s5)
  LA s0, cur_token
  ADDI s5, zero, 1
  SW s5, 0(s0)
  # implict jump to bb114
bb114:   # loop depth 2
  JAL zero, bb33
bb115:   # loop depth 2
  ADDIW s0, s5, -48
  LA s5, num
  SW s0, 0(s5)
  # implict jump to bb116
bb116:   # loop depth 3
  CALL getch
  ADD s5, a0, zero
  LA s0, last_char
  SW s5, 0(s0)
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb117
bb117:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb118
bb118:   # loop depth 3
  BNE s0, zero, bb123
  # implict jump to bb119
bb119:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb120
bb120:   # loop depth 3
  BNE s0, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 2
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb114
bb122:   # loop depth 3
  LA s0, num
  LW s0, 0(s0)
  ADDI s6, zero, 10
  MULW s0, s0, s6
  ADDW s0, s0, s5
  ADDIW s0, s0, -48
  LA s5, num
  SW s0, 0(s5)
  JAL zero, bb116
bb123:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb120
bb124:   # loop depth 3
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb118
bb125:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb112
bb126:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb110
bb127:   # loop depth 3
  CALL getch
  ADD s0, a0, zero
  LA s5, last_char
  SW s0, 0(s5)
  JAL zero, bb103
bb128:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb107
bb129:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb105
bb130:   # loop depth 1
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
bb131:   # loop depth 3
  LW s0, 1104(sp)
  SLLIW s2, s0, 2
  ADDI t6, sp, 1104
  ADD s2, t6, s2
  LW s4, 0(s2)
  ADDIW s0, s0, -1
  SW s0, 1104(sp)
  LW s0, 80(sp)
  SLLIW s2, s0, 2
  ADDI t6, sp, 80
  ADD s2, t6, s2
  LW s3, 0(s2)
  ADDIW s2, s0, -1
  SW s2, 80(sp)
  SLLIW s2, s2, 2
  ADDI t6, sp, 80
  ADD s2, t6, s2
  LW s2, 0(s2)
  ADDIW s0, s0, -2
  SW s0, 80(sp)
  XORI s0, s4, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb132
bb132:   # loop depth 3
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb133
bb133:   # loop depth 3
  XORI s0, s4, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb140
  # implict jump to bb134
bb134:   # loop depth 3
  XORI s0, s4, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb139
  # implict jump to bb135
bb135:   # loop depth 3
  XORI s0, s4, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb137
bb137:   # loop depth 3
  LW s7, 80(sp)
  ADDIW s8, s7, 1
  SW s8, 80(sp)
  SLLIW s7, s7, 2
  ADDI t6, sp, 80
  ADD s7, t6, s7
  SW s0, 4(s7)
  JAL zero, bb98
bb138:   # loop depth 3
  REMW s0, s2, s3
  JAL zero, bb137
bb139:   # loop depth 3
  DIVW s0, s2, s3
  JAL zero, bb137
bb140:   # loop depth 3
  MULW s0, s2, s3
  JAL zero, bb137
bb141:   # loop depth 3
  SUBW s0, s2, s3
  JAL zero, bb137
bb142:   # loop depth 3
  ADDW s0, s2, s3
  JAL zero, bb137
bb143:   # loop depth 3
  SLLIW s0, s0, 2
  ADDI t6, sp, 1104
  ADD s0, t6, s0
  LW s7, 0(s0)
  XORI s0, s7, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb144
bb144:   # loop depth 3
  XORI s0, s7, 45
  SLTIU s0, s0, 1
  # implict jump to bb145
bb145:   # loop depth 3
  BNE s0, zero, bb156
  # implict jump to bb146
bb146:   # loop depth 3
  XORI s0, s7, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb155
  # implict jump to bb147
bb147:   # loop depth 3
  XORI s0, s7, 47
  SLTIU s0, s0, 1
  # implict jump to bb148
bb148:   # loop depth 3
  BNE s0, zero, bb154
  # implict jump to bb149
bb149:   # loop depth 3
  XORI s0, s7, 37
  SLTIU s0, s0, 1
  # implict jump to bb150
bb150:   # loop depth 3
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb152
bb152:   # loop depth 3
  SLT s0, s0, s6
  XORI s0, s0, 1
  JAL zero, bb100
bb153:   # loop depth 3
  ADDI s0, zero, 20
  JAL zero, bb152
bb154:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb150
bb155:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb148
bb156:   # loop depth 3
  ADDI s0, zero, 10
  JAL zero, bb152
bb157:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb145
bb158:   # loop depth 2
  ADDIW s0, s7, -48
  LA s7, num
  SW s0, 0(s7)
  # implict jump to bb159
bb159:   # loop depth 3
  CALL getch
  ADD s7, a0, zero
  LA s0, last_char
  SW s7, 0(s0)
  SLTI s0, s7, 48
  XORI s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb160
bb160:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb161
bb161:   # loop depth 3
  BNE s0, zero, bb166
  # implict jump to bb162
bb162:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb163
bb163:   # loop depth 3
  BNE s0, zero, bb165
  # implict jump to bb164
bb164:   # loop depth 2
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb97
bb165:   # loop depth 3
  LA s0, num
  LW s0, 0(s0)
  ADDI s8, zero, 10
  MULW s0, s0, s8
  ADDW s0, s0, s7
  ADDIW s0, s0, -48
  LA s7, num
  SW s0, 0(s7)
  JAL zero, bb159
bb166:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb163
bb167:   # loop depth 3
  ADDI s0, zero, 57
  SLT s0, s0, s7
  XORI s0, s0, 1
  JAL zero, bb161
bb168:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb95
bb169:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s7
  XORI s0, s0, 1
  JAL zero, bb93
bb170:   # loop depth 3
  CALL getch
  ADD s0, a0, zero
  LA s7, last_char
  SW s0, 0(s7)
  JAL zero, bb86
bb171:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb90
bb172:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb88
bb173:   # loop depth 2
  ADDI s6, zero, 20
  JAL zero, bb85
bb174:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb83
bb175:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb81
bb176:   # loop depth 2
  ADDI s6, zero, 10
  JAL zero, bb85
bb177:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb78
bb178:   # loop depth 1
  ADDIW s0, s2, -48
  LA s2, num
  SW s0, 0(s2)
  # implict jump to bb179
bb179:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  LA s0, last_char
  SW s2, 0(s0)
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb187
  # implict jump to bb180
bb180:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb181
bb181:   # loop depth 2
  BNE s0, zero, bb186
  # implict jump to bb182
bb182:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb183
bb183:   # loop depth 2
  BNE s0, zero, bb185
  # implict jump to bb184
bb184:   # loop depth 1
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb32
bb185:   # loop depth 2
  LA s0, num
  LW s0, 0(s0)
  ADDI s3, zero, 10
  MULW s0, s0, s3
  ADDW s0, s0, s2
  ADDIW s0, s0, -48
  LA s2, num
  SW s0, 0(s2)
  JAL zero, bb179
bb186:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb183
bb187:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb181
bb188:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb30
bb189:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb28
bb190:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  JAL zero, bb21
bb191:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb25
bb192:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb23
bb193:   # loop depth 1
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
bb194:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb18
bb195:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb16
bb196:   # loop depth 0
  ADDIW s0, s2, -48
  LA s2, num
  SW s0, 0(s2)
  # implict jump to bb197
bb197:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  LA s0, last_char
  SW s2, 0(s0)
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb205
  # implict jump to bb198
bb198:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb199
bb199:   # loop depth 1
  BNE s0, zero, bb204
  # implict jump to bb200
bb200:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb201
bb201:   # loop depth 1
  BNE s0, zero, bb203
  # implict jump to bb202
bb202:   # loop depth 0
  LA s0, cur_token
  SW zero, 0(s0)
  JAL zero, bb12
bb203:   # loop depth 1
  LA s0, num
  LW s0, 0(s0)
  ADDI s3, zero, 10
  MULW s0, s0, s3
  ADDW s0, s0, s2
  ADDIW s0, s0, -48
  LA s2, num
  SW s0, 0(s2)
  JAL zero, bb197
bb204:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb201
bb205:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb199
bb206:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb10
bb207:   # loop depth 0
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb8
bb208:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  JAL zero, bb1
bb209:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb5
bb210:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb3
