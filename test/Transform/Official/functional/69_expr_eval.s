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
  ADDIW t0, t0, 1872
  ADD sp, sp, t0
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  CALL getch
  # implict jump to bb1
bb1:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb210
  # implict jump to bb2
bb2:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb3
bb3:
  BNE s2, zero, bb209
  # implict jump to bb4
bb4:
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
  BNE s2, zero, bb208
  # implict jump to bb6
bb6:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb207
  # implict jump to bb7
bb7:
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  BNE s2, zero, bb206
  # implict jump to bb9
bb9:
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  BNE s2, zero, bb196
  # implict jump to bb11
bb11:
  LA s2, last_char
  LW s2, 0(s2)
  LA s3, other
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  LA s3, last_char
  SW s2, 0(s3)
  LA s2, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s2)
  # implict jump to bb12
bb12:
  LW t4, 56(sp)
  BNE t4, zero, bb14
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  LUI t0, 1
  ADDIW t0, t0, -1872
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb14:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb15
bb15:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADDI t4, zero, 256
  SW t4, 44(sp)
  # implict jump to bb16
bb16:
  LW t4, 44(sp)
  ADD s5, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s5, s6
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 168
  ADD s6, t4, s6
  SW zero, 0(s6)
  LW t4, 40(sp)
  BNE t4, zero, bb195
  # implict jump to bb17
bb17:
  ADDI t4, zero, 256
  SW t4, 0(sp)
  # implict jump to bb18
bb18:
  LW t4, 0(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s7, s8
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLLIW s8, t4, 2
  ADDI t4, sp, 1192
  ADD s8, t4, s8
  SW zero, 0(s8)
  LW t4, 36(sp)
  BNE t4, zero, bb194
  # implict jump to bb19
bb19:
  LA s8, cur_token
  LW s8, 0(s8)
  BNE s8, zero, bb193
  # implict jump to bb20
bb20:
  LA s8, num
  LW s8, 0(s8)
  LW s9, 168(sp)
  ADDIW s9, s9, 1
  SW s9, 168(sp)
  SLLIW s9, s9, 2
  ADDI t5, sp, 168
  ADD s9, t5, s9
  SW s8, 0(s9)
  # implict jump to bb21
bb21:
  LA s8, last_char
  LW s8, 0(s8)
  XORI s9, s8, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb192
  # implict jump to bb22
bb22:
  XORI s9, s8, 10
  SLTIU s9, s9, 1
  # implict jump to bb23
bb23:
  BNE s9, zero, bb191
  # implict jump to bb24
bb24:
  ADD s9, zero, zero
  # implict jump to bb25
bb25:
  BNE s9, zero, bb190
  # implict jump to bb26
bb26:
  SLTI s9, s8, 48
  XORI s9, s9, 1
  BNE s9, zero, bb189
  # implict jump to bb27
bb27:
  ADD s9, zero, zero
  # implict jump to bb28
bb28:
  BNE s9, zero, bb188
  # implict jump to bb29
bb29:
  ADD s9, zero, zero
  # implict jump to bb30
bb30:
  BNE s9, zero, bb178
  # implict jump to bb31
bb31:
  LA s9, last_char
  LW s9, 0(s9)
  LA s10, other
  SW s9, 0(s10)
  CALL getch
  ADD s9, a0, zero
  LA s10, last_char
  SW s9, 0(s10)
  LA s9, cur_token
  ADDI s10, zero, 1
  SW s10, 0(s9)
  # implict jump to bb32
bb32:
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb33
bb33:
  ADD t4, s11, zero
  SW t4, 8(sp)
  ADD t4, s10, zero
  SW t4, 12(sp)
  ADD t4, s9, zero
  SW t4, 16(sp)
  LA s4, cur_token
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb76
  # implict jump to bb34
bb34:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb75
  # implict jump to bb35
bb35:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb36
bb36:
  BNE s2, zero, bb74
  # implict jump to bb37
bb37:
  ADD s2, zero, zero
  # implict jump to bb38
bb38:
  BNE s2, zero, bb73
  # implict jump to bb39
bb39:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb72
  # implict jump to bb40
bb40:
  ADD s2, zero, zero
  # implict jump to bb41
bb41:
  BNE s2, zero, bb71
  # implict jump to bb42
bb42:
  ADD s2, zero, zero
  # implict jump to bb43
bb43:
  BNE s2, zero, bb61
  # implict jump to bb44
bb44:
  LA s2, last_char
  LW s2, 0(s2)
  LA s3, other
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  LA s3, last_char
  SW s2, 0(s3)
  LA s2, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s2)
  # implict jump to bb45
bb45:
  LW s2, 1192(sp)
  BNE s2, zero, bb49
  # implict jump to bb46
bb46:
  LW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  # implict jump to bb47
bb47:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  LW t4, 48(sp)
  SUBW s0, t4, s0
  BNE s0, zero, bb48
  JAL zero, bb13
bb48:
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb15
bb49:
  LW s2, 1192(sp)
  SLLIW s3, s2, 2
  ADDI t5, sp, 1192
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s2, s2, s4
  SW s2, 1192(sp)
  LW s2, 168(sp)
  SLLIW s4, s2, 2
  ADDI t5, sp, 168
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s2, s5
  SW s5, 168(sp)
  SLLIW s5, s5, 2
  ADDI t5, sp, 168
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDI s6, zero, 2
  SUBW s2, s2, s6
  SW s2, 168(sp)
  XORI s2, s3, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb60
  # implict jump to bb50
bb50:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb59
  # implict jump to bb51
bb51:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb58
  # implict jump to bb52
bb52:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb57
  # implict jump to bb53
bb53:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb56
  # implict jump to bb54
bb54:
  ADD s2, zero, zero
  # implict jump to bb55
bb55:
  LW s3, 168(sp)
  ADDIW s3, s3, 1
  SW s3, 168(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 168
  ADD s3, t5, s3
  SW s2, 0(s3)
  JAL zero, bb45
bb56:
  REMW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb55
bb57:
  DIVW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb55
bb58:
  MULW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb55
bb59:
  SUBW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb55
bb60:
  ADDW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb55
bb61:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb62
bb62:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb70
  # implict jump to bb63
bb63:
  ADD s2, zero, zero
  # implict jump to bb64
bb64:
  BNE s2, zero, bb69
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  BNE s2, zero, bb68
  # implict jump to bb67
bb67:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb45
bb68:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb62
bb69:
  ADDI s2, zero, 1
  JAL zero, bb66
bb70:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb64
bb71:
  ADDI s2, zero, 1
  JAL zero, bb43
bb72:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb41
bb73:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb34
bb74:
  ADDI s2, zero, 1
  JAL zero, bb38
bb75:
  ADDI s2, zero, 1
  JAL zero, bb36
bb76:
  LA s4, other
  LW t4, 0(s4)
  SW t4, 4(sp)
  LW t4, 4(sp)
  XORI s5, t4, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb177
  # implict jump to bb77
bb77:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s5, s5, 1
  # implict jump to bb78
bb78:
  BNE s5, zero, bb176
  # implict jump to bb79
bb79:
  LW t4, 4(sp)
  XORI s5, t4, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb175
  # implict jump to bb80
bb80:
  LW t4, 4(sp)
  XORI s5, t4, 47
  SLTIU s5, s5, 1
  # implict jump to bb81
bb81:
  BNE s5, zero, bb174
  # implict jump to bb82
bb82:
  LW t4, 4(sp)
  XORI s5, t4, 37
  SLTIU s5, s5, 1
  # implict jump to bb83
bb83:
  BNE s5, zero, bb173
  # implict jump to bb84
bb84:
  ADD s5, zero, zero
  # implict jump to bb85
bb85:
  ADD t4, s5, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb34
  # implict jump to bb86
bb86:
  LA s6, last_char
  LW s6, 0(s6)
  XORI s7, s6, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb172
  # implict jump to bb87
bb87:
  XORI s7, s6, 10
  SLTIU s7, s7, 1
  # implict jump to bb88
bb88:
  BNE s7, zero, bb171
  # implict jump to bb89
bb89:
  ADD s7, zero, zero
  # implict jump to bb90
bb90:
  BNE s7, zero, bb170
  # implict jump to bb91
bb91:
  SLTI s7, s6, 48
  XORI s7, s7, 1
  BNE s7, zero, bb169
  # implict jump to bb92
bb92:
  ADD s7, zero, zero
  # implict jump to bb93
bb93:
  BNE s7, zero, bb168
  # implict jump to bb94
bb94:
  ADD s2, zero, zero
  # implict jump to bb95
bb95:
  BNE s2, zero, bb158
  # implict jump to bb96
bb96:
  LA s2, last_char
  LW s2, 0(s2)
  LA s7, other
  SW s2, 0(s7)
  CALL getch
  ADD s2, a0, zero
  LA s7, last_char
  SW s2, 0(s7)
  LA s2, cur_token
  ADDI s7, zero, 1
  SW s7, 0(s2)
  # implict jump to bb97
bb97:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 12(sp)
  ADD s7, t4, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  # implict jump to bb98
bb98:
  ADD s5, s8, zero
  ADD s4, s7, zero
  ADD s0, s6, zero
  LW s1, 1192(sp)
  BNE s1, zero, bb143
  # implict jump to bb99
bb99:
  ADD s3, zero, zero
  # implict jump to bb100
bb100:
  BNE s3, zero, bb131
  # implict jump to bb101
bb101:
  LW s1, 1192(sp)
  ADDIW s1, s1, 1
  SW s1, 1192(sp)
  SLLIW s1, s1, 2
  ADDI t4, sp, 1192
  ADD s1, t4, s1
  LW t4, 4(sp)
  SW t4, 0(s1)
  LA s1, cur_token
  LW s1, 0(s1)
  BNE s1, zero, bb130
  # implict jump to bb102
bb102:
  LA s1, num
  LW s1, 0(s1)
  LW s2, 168(sp)
  ADDIW s2, s2, 1
  SW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb103
bb103:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb129
  # implict jump to bb104
bb104:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb105
bb105:
  BNE s2, zero, bb128
  # implict jump to bb106
bb106:
  ADD s2, zero, zero
  # implict jump to bb107
bb107:
  BNE s2, zero, bb127
  # implict jump to bb108
bb108:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb126
  # implict jump to bb109
bb109:
  ADD s2, zero, zero
  # implict jump to bb110
bb110:
  BNE s2, zero, bb125
  # implict jump to bb111
bb111:
  ADD s2, zero, zero
  # implict jump to bb112
bb112:
  BNE s2, zero, bb115
  # implict jump to bb113
bb113:
  LA s2, last_char
  LW s2, 0(s2)
  LA s3, other
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  LA s3, last_char
  SW s2, 0(s3)
  LA s2, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s2)
  # implict jump to bb114
bb114:
  ADD s9, s0, zero
  ADD s10, s4, zero
  ADD s11, s5, zero
  JAL zero, bb33
bb115:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb116
bb116:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb124
  # implict jump to bb117
bb117:
  ADD s2, zero, zero
  # implict jump to bb118
bb118:
  BNE s2, zero, bb123
  # implict jump to bb119
bb119:
  ADD s2, zero, zero
  # implict jump to bb120
bb120:
  BNE s2, zero, bb122
  # implict jump to bb121
bb121:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb114
bb122:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb116
bb123:
  ADDI s2, zero, 1
  JAL zero, bb120
bb124:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb118
bb125:
  ADDI s2, zero, 1
  JAL zero, bb112
bb126:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb110
bb127:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb103
bb128:
  ADDI s2, zero, 1
  JAL zero, bb107
bb129:
  ADDI s2, zero, 1
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
  ADDI s0, zero, -1
  JAL zero, bb47
bb131:
  LW s1, 1192(sp)
  SLLIW s2, s1, 2
  ADDI t5, sp, 1192
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  SW s1, 1192(sp)
  LW s1, 168(sp)
  SLLIW s3, s1, 2
  ADDI t5, sp, 168
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s4, s1, s4
  SW s4, 168(sp)
  SLLIW s4, s4, 2
  ADDI t5, sp, 168
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 2
  SUBW s1, s1, s5
  SW s1, 168(sp)
  XORI s1, s2, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb142
  # implict jump to bb132
bb132:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb141
  # implict jump to bb133
bb133:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb140
  # implict jump to bb134
bb134:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb139
  # implict jump to bb135
bb135:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb138
  # implict jump to bb136
bb136:
  ADD s1, zero, zero
  # implict jump to bb137
bb137:
  LW s5, 168(sp)
  ADDIW s5, s5, 1
  SW s5, 168(sp)
  SLLIW s5, s5, 2
  ADDI t5, sp, 168
  ADD s5, t5, s5
  SW s1, 0(s5)
  ADD s6, s3, zero
  ADD s7, s4, zero
  ADD s8, s2, zero
  JAL zero, bb98
bb138:
  REMW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb137
bb139:
  DIVW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb137
bb140:
  MULW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb137
bb141:
  SUBW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb137
bb142:
  ADDW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb137
bb143:
  SLLIW s1, s1, 2
  ADDI t5, sp, 1192
  ADD s1, t5, s1
  LW s1, 0(s1)
  XORI s2, s1, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb157
  # implict jump to bb144
bb144:
  XORI s2, s1, 45
  SLTIU s2, s2, 1
  # implict jump to bb145
bb145:
  BNE s2, zero, bb156
  # implict jump to bb146
bb146:
  XORI s2, s1, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb155
  # implict jump to bb147
bb147:
  XORI s2, s1, 47
  SLTIU s2, s2, 1
  # implict jump to bb148
bb148:
  BNE s2, zero, bb154
  # implict jump to bb149
bb149:
  XORI s1, s1, 37
  SLTIU s1, s1, 1
  # implict jump to bb150
bb150:
  BNE s1, zero, bb153
  # implict jump to bb151
bb151:
  ADD s1, zero, zero
  # implict jump to bb152
bb152:
  LW t4, 24(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s3, s1, zero
  JAL zero, bb100
bb153:
  ADDI s1, zero, 20
  JAL zero, bb152
bb154:
  ADDI s1, zero, 1
  JAL zero, bb150
bb155:
  ADDI s2, zero, 1
  JAL zero, bb148
bb156:
  ADDI s1, zero, 10
  JAL zero, bb152
bb157:
  ADDI s2, zero, 1
  JAL zero, bb145
bb158:
  ADDI s2, zero, 48
  SUBW s2, s6, s2
  LA s6, num
  SW s2, 0(s6)
  # implict jump to bb159
bb159:
  CALL getch
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s6, last_char
  LW t4, 20(sp)
  SW t4, 0(s6)
  LW t4, 20(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb167
  # implict jump to bb160
bb160:
  ADD s6, zero, zero
  # implict jump to bb161
bb161:
  BNE s6, zero, bb166
  # implict jump to bb162
bb162:
  ADD s6, zero, zero
  # implict jump to bb163
bb163:
  BNE s6, zero, bb165
  # implict jump to bb164
bb164:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb97
bb165:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  LW t4, 20(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb159
bb166:
  ADDI s6, zero, 1
  JAL zero, bb163
bb167:
  ADDI s7, zero, 57
  LW t4, 20(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb161
bb168:
  ADDI s2, zero, 1
  JAL zero, bb95
bb169:
  ADDI s2, zero, 57
  SLT s2, s2, s6
  XORI s2, s2, 1
  ADD s7, s2, zero
  JAL zero, bb93
bb170:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb86
bb171:
  ADDI s7, zero, 1
  JAL zero, bb90
bb172:
  ADDI s7, zero, 1
  JAL zero, bb88
bb173:
  ADDI s5, zero, 20
  JAL zero, bb85
bb174:
  ADDI s5, zero, 1
  JAL zero, bb83
bb175:
  ADDI s5, zero, 1
  JAL zero, bb81
bb176:
  ADDI s5, zero, 10
  JAL zero, bb85
bb177:
  ADDI s5, zero, 1
  JAL zero, bb78
bb178:
  ADDI s9, zero, 48
  SUBW s8, s8, s9
  LA s9, num
  SW s8, 0(s9)
  # implict jump to bb179
bb179:
  CALL getch
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s9, last_char
  LW t4, 28(sp)
  SW t4, 0(s9)
  LW t4, 28(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb187
  # implict jump to bb180
bb180:
  ADD s9, zero, zero
  # implict jump to bb181
bb181:
  BNE s9, zero, bb186
  # implict jump to bb182
bb182:
  ADD s9, zero, zero
  # implict jump to bb183
bb183:
  BNE s9, zero, bb185
  # implict jump to bb184
bb184:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb32
bb185:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  LW t4, 28(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb179
bb186:
  ADDI s9, zero, 1
  JAL zero, bb183
bb187:
  ADDI s10, zero, 57
  LW t4, 28(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb181
bb188:
  ADDI s9, zero, 1
  JAL zero, bb30
bb189:
  ADDI s10, zero, 57
  SLT s10, s10, s8
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb28
bb190:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb21
bb191:
  ADDI s9, zero, 1
  JAL zero, bb25
bb192:
  ADDI s9, zero, 1
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
  ADDI s0, zero, -1
  JAL zero, bb47
bb194:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb18
bb195:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb16
bb196:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb197
bb197:
  CALL getch
  ADD t4, a0, zero
  SW t4, 52(sp)
  LA s2, last_char
  LW t4, 52(sp)
  SW t4, 0(s2)
  LW t4, 52(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb205
  # implict jump to bb198
bb198:
  ADD s2, zero, zero
  # implict jump to bb199
bb199:
  BNE s2, zero, bb204
  # implict jump to bb200
bb200:
  ADD s2, zero, zero
  # implict jump to bb201
bb201:
  BNE s2, zero, bb203
  # implict jump to bb202
bb202:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb12
bb203:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 52(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb197
bb204:
  ADDI s2, zero, 1
  JAL zero, bb201
bb205:
  ADDI s3, zero, 57
  LW t4, 52(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb199
bb206:
  ADDI s2, zero, 1
  JAL zero, bb10
bb207:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb8
bb208:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb1
bb209:
  ADDI s2, zero, 1
  JAL zero, bb5
bb210:
  ADDI s2, zero, 1
  JAL zero, bb3
