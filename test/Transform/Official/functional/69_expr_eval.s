.global eval
.global eval_op
.global stack_size
.global stack_peek
.global stack_pop
.global get_op_prec
.global stack_push
.global is_num
.global is_space
.global main
.global panic
.global next_token
.global next_char
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
TOKEN_OTHER:
.word 0x00000001
TOKEN_NUM:
.word 0x00000000
.section .text
eval:
  LUI t0, 1048575
  ADDIW t0, t0, 1888
  ADD sp, sp, t0
  SD s1, 48(sp)
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  ADDI s3, zero, 0
  XORI s3, s3, 256
  BNE s3, zero, bb184
  # implict jump to bb1
bb1:
  XORI s4, zero, 256
  BNE s4, zero, bb179
  # implict jump to bb2
bb2:
  LA s5, cur_token
  LW s5, 0(s5)
  BNE s5, zero, bb178
  # implict jump to bb3
bb3:
  LA s5, num
  LW s5, 0(s5)
  LW s6, 1176(sp)
  ADDIW s6, s6, 1
  SW s6, 1176(sp)
  SLLIW s6, s6, 2
  ADDI t5, sp, 1176
  ADD s6, t5, s6
  SW s5, 0(s6)
  # implict jump to bb4
bb4:
  LA s5, last_char
  LW s5, 0(s5)
  XORI s6, s5, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb177
  # implict jump to bb5
bb5:
  XORI s6, s5, 10
  SLTIU s6, s6, 1
  # implict jump to bb6
bb6:
  BNE s6, zero, bb176
  # implict jump to bb7
bb7:
  ADD s6, zero, zero
  # implict jump to bb8
bb8:
  BNE s6, zero, bb175
  # implict jump to bb9
bb9:
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb174
  # implict jump to bb10
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  BNE s6, zero, bb173
  # implict jump to bb12
bb12:
  ADD s6, zero, zero
  # implict jump to bb13
bb13:
  BNE s6, zero, bb163
  # implict jump to bb14
bb14:
  LA s6, last_char
  LW s6, 0(s6)
  LA s7, other
  SW s6, 0(s7)
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  LA s6, cur_token
  ADDI s7, zero, 1
  SW s7, 0(s6)
  # implict jump to bb15
bb15:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, s8, zero
  SW t4, 28(sp)
  ADD t4, s7, zero
  SW t4, 32(sp)
  ADD t4, s6, zero
  SW t4, 36(sp)
  LA s3, cur_token
  LW s3, 0(s3)
  XORI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb60
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb59
  # implict jump to bb19
bb19:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb20
bb20:
  BNE s1, zero, bb58
  # implict jump to bb21
bb21:
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  BNE s1, zero, bb57
  # implict jump to bb23
bb23:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb56
  # implict jump to bb24
bb24:
  ADD s1, zero, zero
  # implict jump to bb25
bb25:
  BNE s1, zero, bb55
  # implict jump to bb26
bb26:
  ADD s1, zero, zero
  # implict jump to bb27
bb27:
  BNE s1, zero, bb45
  # implict jump to bb28
bb28:
  LA s1, last_char
  LW s1, 0(s1)
  LA s2, other
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  LA s1, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s1)
  # implict jump to bb29
bb29:
  LW s1, 152(sp)
  BNE s1, zero, bb31
  # implict jump to bb30
bb30:
  LW s1, 1176(sp)
  SLLIW s1, s1, 2
  ADDI a0, sp, 1176
  ADD s1, a0, s1
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD s1, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb31:
  # implict jump to bb32
bb32:
  LW s1, 152(sp)
  SLLIW s2, s1, 2
  ADDI t5, sp, 152
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  SW s1, 152(sp)
  LW s1, 1176(sp)
  SLLIW s3, s1, 2
  ADDI t5, sp, 1176
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s1, s1, s4
  SW s1, 1176(sp)
  SLLIW s4, s1, 2
  ADDI t5, sp, 1176
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s1, s1, s5
  SW s1, 1176(sp)
  XORI s1, s2, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb44
  # implict jump to bb33
bb33:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb34
bb34:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb42
  # implict jump to bb35
bb35:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb41
  # implict jump to bb36
bb36:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb40
  # implict jump to bb37
bb37:
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  LW s2, 1176(sp)
  ADDIW s2, s2, 1
  SW s2, 1176(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1176
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb39
bb39:
  LW s1, 152(sp)
  BNE s1, zero, bb32
  JAL zero, bb30
bb40:
  REMW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb41:
  DIVW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb42:
  MULW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb43:
  SUBW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb44:
  ADDW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb45:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb46
bb46:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb54
  # implict jump to bb47
bb47:
  ADD s1, zero, zero
  # implict jump to bb48
bb48:
  BNE s1, zero, bb53
  # implict jump to bb49
bb49:
  ADD s1, zero, zero
  # implict jump to bb50
bb50:
  BNE s1, zero, bb52
  # implict jump to bb51
bb51:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb29
bb52:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb46
bb53:
  ADDI s1, zero, 1
  JAL zero, bb50
bb54:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb48
bb55:
  ADDI s1, zero, 1
  JAL zero, bb27
bb56:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb25
bb57:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb18
bb58:
  ADDI s1, zero, 1
  JAL zero, bb22
bb59:
  ADDI s1, zero, 1
  JAL zero, bb20
bb60:
  LA s3, other
  LW t4, 0(s3)
  SW t4, 24(sp)
  LW t4, 24(sp)
  XORI s2, t4, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb162
  # implict jump to bb61
bb61:
  LW t4, 24(sp)
  XORI s2, t4, 45
  SLTIU s2, s2, 1
  # implict jump to bb62
bb62:
  BNE s2, zero, bb161
  # implict jump to bb63
bb63:
  LW t4, 24(sp)
  XORI s2, t4, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb160
  # implict jump to bb64
bb64:
  LW t4, 24(sp)
  XORI s2, t4, 47
  SLTIU s2, s2, 1
  # implict jump to bb65
bb65:
  BNE s2, zero, bb159
  # implict jump to bb66
bb66:
  LW t4, 24(sp)
  XORI s2, t4, 37
  SLTIU s2, s2, 1
  # implict jump to bb67
bb67:
  BNE s2, zero, bb158
  # implict jump to bb68
bb68:
  ADD s2, zero, zero
  # implict jump to bb69
bb69:
  ADD t4, s2, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTU s4, zero, t4
  XORI s4, s4, 1
  BNE s4, zero, bb17
  # implict jump to bb70
bb70:
  # implict jump to bb71
bb71:
  LA s4, last_char
  LW s4, 0(s4)
  XORI s1, s4, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb157
  # implict jump to bb72
bb72:
  XORI s1, s4, 10
  SLTIU s1, s1, 1
  # implict jump to bb73
bb73:
  BNE s1, zero, bb156
  # implict jump to bb74
bb74:
  ADD s1, zero, zero
  # implict jump to bb75
bb75:
  BNE s1, zero, bb155
  # implict jump to bb76
bb76:
  SLTI s1, s4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb154
  # implict jump to bb77
bb77:
  ADD s1, zero, zero
  # implict jump to bb78
bb78:
  BNE s1, zero, bb153
  # implict jump to bb79
bb79:
  ADD s1, zero, zero
  # implict jump to bb80
bb80:
  BNE s1, zero, bb143
  # implict jump to bb81
bb81:
  LA s1, last_char
  LW s1, 0(s1)
  LA s5, other
  SW s1, 0(s5)
  CALL getch
  ADD s1, a0, zero
  LA s5, last_char
  SW s1, 0(s5)
  LA s1, cur_token
  ADDI s5, zero, 1
  SW s5, 0(s1)
  # implict jump to bb82
bb82:
  LA s4, cur_token
  LW t4, 0(s4)
  SW t4, 40(sp)
  LW t4, 36(sp)
  ADD s4, t4, zero
  LW t4, 32(sp)
  ADD s5, t4, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb83
bb83:
  ADD s3, s2, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  LW s11, 152(sp)
  BNE s11, zero, bb128
  # implict jump to bb84
bb84:
  ADD s1, zero, zero
  # implict jump to bb85
bb85:
  BNE s1, zero, bb116
  # implict jump to bb86
bb86:
  LW s0, 152(sp)
  ADDIW s0, s0, 1
  SW s0, 152(sp)
  SLLIW s0, s0, 2
  ADDI t4, sp, 152
  ADD s0, t4, s0
  LW t4, 24(sp)
  SW t4, 0(s0)
  LW t4, 40(sp)
  BNE t4, zero, bb115
  # implict jump to bb87
bb87:
  LA s0, num
  LW s0, 0(s0)
  LW s1, 1176(sp)
  ADDIW s1, s1, 1
  SW s1, 1176(sp)
  SLLIW s1, s1, 2
  ADDI t5, sp, 1176
  ADD s1, t5, s1
  SW s0, 0(s1)
  # implict jump to bb88
bb88:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb114
  # implict jump to bb89
bb89:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb90
bb90:
  BNE s1, zero, bb113
  # implict jump to bb91
bb91:
  ADD s1, zero, zero
  # implict jump to bb92
bb92:
  BNE s1, zero, bb112
  # implict jump to bb93
bb93:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb111
  # implict jump to bb94
bb94:
  ADD s1, zero, zero
  # implict jump to bb95
bb95:
  BNE s1, zero, bb110
  # implict jump to bb96
bb96:
  ADD s1, zero, zero
  # implict jump to bb97
bb97:
  BNE s1, zero, bb100
  # implict jump to bb98
bb98:
  LA s1, last_char
  LW s1, 0(s1)
  LA s11, other
  SW s1, 0(s11)
  CALL getch
  ADD s1, a0, zero
  LA s11, last_char
  SW s1, 0(s11)
  LA s1, cur_token
  ADDI s11, zero, 1
  SW s11, 0(s1)
  # implict jump to bb99
bb99:
  ADD s6, s10, zero
  ADD s7, s9, zero
  ADD s8, s3, zero
  JAL zero, bb16
bb100:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb101
bb101:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb109
  # implict jump to bb102
bb102:
  ADD s1, zero, zero
  # implict jump to bb103
bb103:
  BNE s1, zero, bb108
  # implict jump to bb104
bb104:
  ADD s1, zero, zero
  # implict jump to bb105
bb105:
  BNE s1, zero, bb107
  # implict jump to bb106
bb106:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb99
bb107:
  LA s1, num
  LW s1, 0(s1)
  ADDI s6, zero, 10
  MULW s1, s1, s6
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb101
bb108:
  ADDI s1, zero, 1
  JAL zero, bb105
bb109:
  ADDI s11, zero, 57
  SLT s11, s11, s0
  XORI s11, s11, 1
  ADD s1, s11, zero
  JAL zero, bb103
bb110:
  ADDI s1, zero, 1
  JAL zero, bb97
bb111:
  ADDI s11, zero, 57
  SLT s11, s11, s0
  XORI s11, s11, 1
  ADD s1, s11, zero
  JAL zero, bb95
bb112:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb88
bb113:
  ADDI s1, zero, 1
  JAL zero, bb92
bb114:
  ADDI s1, zero, 1
  JAL zero, bb90
bb115:
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
  LD s1, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb116:
  LW s0, 152(sp)
  SLLIW s1, s0, 2
  ADDI t5, sp, 152
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDI s3, zero, 1
  SUBW s0, s0, s3
  SW s0, 152(sp)
  LW s0, 1176(sp)
  SLLIW s3, s0, 2
  ADDI t5, sp, 1176
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s6, zero, 1
  SUBW s0, s0, s6
  SW s0, 1176(sp)
  SLLIW s6, s0, 2
  ADDI t5, sp, 1176
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s0, s0, s7
  SW s0, 1176(sp)
  XORI s0, s1, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb127
  # implict jump to bb117
bb117:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb118
bb118:
  XORI s0, s1, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb125
  # implict jump to bb119
bb119:
  XORI s0, s1, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb120
bb120:
  XORI s0, s1, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb121
bb121:
  ADD s0, zero, zero
  # implict jump to bb122
bb122:
  LW s7, 1176(sp)
  ADDIW s7, s7, 1
  SW s7, 1176(sp)
  SLLIW s7, s7, 2
  ADDI t5, sp, 1176
  ADD s7, t5, s7
  SW s0, 0(s7)
  ADD s4, s3, zero
  ADD s5, s6, zero
  ADD s2, s1, zero
  JAL zero, bb83
bb123:
  REMW s7, s6, s3
  ADD s0, s7, zero
  JAL zero, bb122
bb124:
  DIVW s7, s6, s3
  ADD s0, s7, zero
  JAL zero, bb122
bb125:
  MULW s7, s6, s3
  ADD s0, s7, zero
  JAL zero, bb122
bb126:
  SUBW s7, s6, s3
  ADD s0, s7, zero
  JAL zero, bb122
bb127:
  ADDW s7, s6, s3
  ADD s0, s7, zero
  JAL zero, bb122
bb128:
  SLLIW s11, s11, 2
  ADDI t5, sp, 152
  ADD s11, t5, s11
  LW s11, 0(s11)
  XORI s0, s11, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb129
bb129:
  XORI s0, s11, 45
  SLTIU s0, s0, 1
  # implict jump to bb130
bb130:
  BNE s0, zero, bb141
  # implict jump to bb131
bb131:
  XORI s0, s11, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb140
  # implict jump to bb132
bb132:
  XORI s0, s11, 47
  SLTIU s0, s0, 1
  # implict jump to bb133
bb133:
  BNE s0, zero, bb139
  # implict jump to bb134
bb134:
  XORI s0, s11, 37
  SLTIU s0, s0, 1
  # implict jump to bb135
bb135:
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:
  ADD s0, zero, zero
  # implict jump to bb137
bb137:
  LW t4, 20(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb85
bb138:
  ADDI s0, zero, 20
  JAL zero, bb137
bb139:
  ADDI s0, zero, 1
  JAL zero, bb135
bb140:
  ADDI s0, zero, 1
  JAL zero, bb133
bb141:
  ADDI s0, zero, 10
  JAL zero, bb137
bb142:
  ADDI s0, zero, 1
  JAL zero, bb130
bb143:
  ADDI s1, zero, 48
  SUBW s1, s4, s1
  LA s4, num
  SW s1, 0(s4)
  # implict jump to bb144
bb144:
  CALL getch
  ADD t4, a0, zero
  SW t4, 44(sp)
  LA s4, last_char
  LW t4, 44(sp)
  SW t4, 0(s4)
  LW t4, 44(sp)
  SLTI s4, t4, 48
  XORI s4, s4, 1
  BNE s4, zero, bb152
  # implict jump to bb145
bb145:
  ADD s4, zero, zero
  # implict jump to bb146
bb146:
  BNE s4, zero, bb151
  # implict jump to bb147
bb147:
  ADD s4, zero, zero
  # implict jump to bb148
bb148:
  BNE s4, zero, bb150
  # implict jump to bb149
bb149:
  LA s4, cur_token
  SW zero, 0(s4)
  JAL zero, bb82
bb150:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 44(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb144
bb151:
  ADDI s4, zero, 1
  JAL zero, bb148
bb152:
  ADDI s5, zero, 57
  LW t4, 44(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb146
bb153:
  ADDI s1, zero, 1
  JAL zero, bb80
bb154:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  ADD s1, s5, zero
  JAL zero, bb78
bb155:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb71
bb156:
  ADDI s1, zero, 1
  JAL zero, bb75
bb157:
  ADDI s1, zero, 1
  JAL zero, bb73
bb158:
  ADDI s2, zero, 20
  JAL zero, bb69
bb159:
  ADDI s2, zero, 1
  JAL zero, bb67
bb160:
  ADDI s2, zero, 1
  JAL zero, bb65
bb161:
  ADDI s2, zero, 10
  JAL zero, bb69
bb162:
  ADDI s2, zero, 1
  JAL zero, bb62
bb163:
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, num
  SW s5, 0(s6)
  # implict jump to bb164
bb164:
  CALL getch
  ADD t4, a0, zero
  SW t4, 16(sp)
  LA s6, last_char
  LW t4, 16(sp)
  SW t4, 0(s6)
  LW t4, 16(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb172
  # implict jump to bb165
bb165:
  ADD s6, zero, zero
  # implict jump to bb166
bb166:
  BNE s6, zero, bb171
  # implict jump to bb167
bb167:
  ADD s6, zero, zero
  # implict jump to bb168
bb168:
  BNE s6, zero, bb170
  # implict jump to bb169
bb169:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb15
bb170:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 16(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb164
bb171:
  ADDI s6, zero, 1
  JAL zero, bb168
bb172:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb166
bb173:
  ADDI s6, zero, 1
  JAL zero, bb13
bb174:
  ADDI s7, zero, 57
  SLT s7, s7, s5
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb11
bb175:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb4
bb176:
  ADDI s6, zero, 1
  JAL zero, bb8
bb177:
  ADDI s6, zero, 1
  JAL zero, bb6
bb178:
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
  LD s1, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb179:
  ADDI s4, zero, 256
  # implict jump to bb180
bb180:
  ADD t4, s4, zero
  SW t4, 8(sp)
  # implict jump to bb181
bb181:
  LW t4, 8(sp)
  ADD s5, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s5, s6
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 152
  ADD s5, t5, s5
  SW zero, 0(s5)
  # implict jump to bb182
bb182:
  LW t4, 12(sp)
  BNE t4, zero, bb183
  JAL zero, bb2
bb183:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb181
bb184:
  ADDI s3, zero, 256
  # implict jump to bb185
bb185:
  ADD t4, s3, zero
  SW t4, 0(sp)
  # implict jump to bb186
bb186:
  LW t4, 0(sp)
  ADD s4, t4, zero
  ADDI s5, zero, 1
  SUBW t4, s4, s5
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s4, t4, 2
  ADDI t5, sp, 1176
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb187
bb187:
  LW t4, 4(sp)
  BNE t4, zero, bb188
  JAL zero, bb1
bb188:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb186
eval_op:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb199
  # implict jump to bb190
bb190:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb198
  # implict jump to bb191
bb191:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb197
  # implict jump to bb192
bb192:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb196
  # implict jump to bb193
bb193:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb195
  # implict jump to bb194
bb194:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb195:
  REMW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb196:
  DIVW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb197:
  MULW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb198:
  SUBW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb199:
  ADDW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
stack_size:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
stack_peek:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
stack_pop:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  ADD s2, s0, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  SW s1, 0(s0)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
get_op_prec:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb216
  # implict jump to bb204
bb204:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  # implict jump to bb205
bb205:
  BNE s1, zero, bb215
  # implict jump to bb206
bb206:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb214
  # implict jump to bb207
bb207:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  # implict jump to bb208
bb208:
  BNE s1, zero, bb213
  # implict jump to bb209
bb209:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb210
bb210:
  BNE s0, zero, bb212
  # implict jump to bb211
bb211:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb212:
  ADDI a0, zero, 20
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADDI s0, zero, 1
  JAL zero, bb210
bb214:
  ADDI s1, zero, 1
  JAL zero, bb208
bb215:
  ADDI a0, zero, 10
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb216:
  ADDI s1, zero, 1
  JAL zero, bb205
stack_push:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LW s0, 0(a0)
  ADDIW s0, s0, 1
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  ADD s0, a0, s0
  SW a1, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
is_num:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb223
  # implict jump to bb219
bb219:
  ADD s1, zero, zero
  # implict jump to bb220
bb220:
  BNE s1, zero, bb222
  # implict jump to bb221
bb221:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb222:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb223:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb220
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb229
  # implict jump to bb225
bb225:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb226
bb226:
  BNE s0, zero, bb228
  # implict jump to bb227
bb227:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb228:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb229:
  ADDI s0, zero, 1
  JAL zero, bb226
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1872
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 68(sp)
  CALL getch
  # implict jump to bb231
bb231:
  LA s6, last_char
  LW s6, 0(s6)
  XORI s7, s6, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb452
  # implict jump to bb232
bb232:
  XORI s7, s6, 10
  SLTIU s7, s7, 1
  # implict jump to bb233
bb233:
  BNE s7, zero, bb451
  # implict jump to bb234
bb234:
  ADD s7, zero, zero
  # implict jump to bb235
bb235:
  BNE s7, zero, bb450
  # implict jump to bb236
bb236:
  SLTI s7, s6, 48
  XORI s7, s7, 1
  BNE s7, zero, bb449
  # implict jump to bb237
bb237:
  ADD s7, zero, zero
  # implict jump to bb238
bb238:
  BNE s7, zero, bb448
  # implict jump to bb239
bb239:
  ADD s7, zero, zero
  # implict jump to bb240
bb240:
  BNE s7, zero, bb438
  # implict jump to bb241
bb241:
  LA s7, last_char
  LW s7, 0(s7)
  LA s8, other
  SW s7, 0(s8)
  CALL getch
  ADD s7, a0, zero
  LA s8, last_char
  SW s7, 0(s8)
  LA s7, cur_token
  ADDI s8, zero, 1
  SW s8, 0(s7)
  # implict jump to bb242
bb242:
  LW t4, 68(sp)
  BNE t4, zero, bb244
  # implict jump to bb243
bb243:
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LUI t0, 1
  ADDIW t0, t0, -1872
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb244:
  # implict jump to bb245
bb245:
  XORI t4, zero, 256
  SW t4, 60(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  # implict jump to bb246
bb246:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 60(sp)
  BNE t4, zero, bb433
  # implict jump to bb247
bb247:
  XORI s10, zero, 256
  BNE s10, zero, bb428
  # implict jump to bb248
bb248:
  LA s5, cur_token
  LW s5, 0(s5)
  BNE s5, zero, bb427
  # implict jump to bb249
bb249:
  LA s5, num
  LW s5, 0(s5)
  LW s11, 1200(sp)
  ADDIW s11, s11, 1
  SW s11, 1200(sp)
  SLLIW s11, s11, 2
  ADDI t5, sp, 1200
  ADD s11, t5, s11
  SW s5, 0(s11)
  # implict jump to bb250
bb250:
  LA s5, last_char
  LW s5, 0(s5)
  XORI s11, s5, 32
  SLTIU s11, s11, 1
  BNE s11, zero, bb426
  # implict jump to bb251
bb251:
  XORI s11, s5, 10
  SLTIU s11, s11, 1
  # implict jump to bb252
bb252:
  BNE s11, zero, bb425
  # implict jump to bb253
bb253:
  ADD s11, zero, zero
  # implict jump to bb254
bb254:
  BNE s11, zero, bb424
  # implict jump to bb255
bb255:
  SLTI s11, s5, 48
  XORI s11, s11, 1
  BNE s11, zero, bb423
  # implict jump to bb256
bb256:
  ADD s11, zero, zero
  # implict jump to bb257
bb257:
  BNE s11, zero, bb422
  # implict jump to bb258
bb258:
  ADD s6, zero, zero
  # implict jump to bb259
bb259:
  BNE s6, zero, bb412
  # implict jump to bb260
bb260:
  LA s6, last_char
  LW s6, 0(s6)
  LA s11, other
  SW s6, 0(s11)
  CALL getch
  ADD s6, a0, zero
  LA s11, last_char
  SW s6, 0(s11)
  LA s6, cur_token
  ADDI s11, zero, 1
  SW s11, 0(s6)
  # implict jump to bb261
bb261:
  ADD s6, zero, zero
  ADD s11, zero, zero
  ADD s1, zero, zero
  # implict jump to bb262
bb262:
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s11, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 20(sp)
  LA s10, cur_token
  LW s10, 0(s10)
  XORI s10, s10, 1
  SLTIU s10, s10, 1
  BNE s10, zero, bb309
  # implict jump to bb263
bb263:
  # implict jump to bb264
bb264:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb308
  # implict jump to bb265
bb265:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb266
bb266:
  BNE s2, zero, bb307
  # implict jump to bb267
bb267:
  ADD s2, zero, zero
  # implict jump to bb268
bb268:
  BNE s2, zero, bb306
  # implict jump to bb269
bb269:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb305
  # implict jump to bb270
bb270:
  ADD s2, zero, zero
  # implict jump to bb271
bb271:
  BNE s2, zero, bb304
  # implict jump to bb272
bb272:
  ADD s2, zero, zero
  # implict jump to bb273
bb273:
  BNE s2, zero, bb294
  # implict jump to bb274
bb274:
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
  # implict jump to bb275
bb275:
  LW s2, 176(sp)
  BNE s2, zero, bb280
  # implict jump to bb276
bb276:
  LW s2, 1200(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1200
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  # implict jump to bb277
bb277:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  LW t3, 56(sp)
  SUBW t4, t3, s0
  SW t4, 36(sp)
  # implict jump to bb278
bb278:
  LW t4, 36(sp)
  BNE t4, zero, bb279
  JAL zero, bb243
bb279:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb246
bb280:
  # implict jump to bb281
bb281:
  LW s2, 176(sp)
  SLLIW s3, s2, 2
  ADDI t5, sp, 176
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s2, s2, s4
  SW s2, 176(sp)
  LW s2, 1200(sp)
  SLLIW s4, s2, 2
  ADDI t5, sp, 1200
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  SW s2, 1200(sp)
  SLLIW s5, s2, 2
  ADDI t5, sp, 1200
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s2, s2, s6
  SW s2, 1200(sp)
  XORI s2, s3, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb293
  # implict jump to bb282
bb282:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb292
  # implict jump to bb283
bb283:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb291
  # implict jump to bb284
bb284:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb290
  # implict jump to bb285
bb285:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb289
  # implict jump to bb286
bb286:
  ADD s2, zero, zero
  # implict jump to bb287
bb287:
  LW s3, 1200(sp)
  ADDIW s3, s3, 1
  SW s3, 1200(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 1200
  ADD s3, t5, s3
  SW s2, 0(s3)
  # implict jump to bb288
bb288:
  LW s2, 176(sp)
  BNE s2, zero, bb281
  JAL zero, bb276
bb289:
  REMW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb287
bb290:
  DIVW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb287
bb291:
  MULW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb287
bb292:
  SUBW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb287
bb293:
  ADDW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb287
bb294:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb295
bb295:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb303
  # implict jump to bb296
bb296:
  ADD s2, zero, zero
  # implict jump to bb297
bb297:
  BNE s2, zero, bb302
  # implict jump to bb298
bb298:
  ADD s2, zero, zero
  # implict jump to bb299
bb299:
  BNE s2, zero, bb301
  # implict jump to bb300
bb300:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb275
bb301:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb295
bb302:
  ADDI s2, zero, 1
  JAL zero, bb299
bb303:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb297
bb304:
  ADDI s2, zero, 1
  JAL zero, bb273
bb305:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb271
bb306:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb264
bb307:
  ADDI s2, zero, 1
  JAL zero, bb268
bb308:
  ADDI s2, zero, 1
  JAL zero, bb266
bb309:
  LA s10, other
  LW t4, 0(s10)
  SW t4, 8(sp)
  LW t4, 8(sp)
  XORI s2, t4, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb411
  # implict jump to bb310
bb310:
  LW t4, 8(sp)
  XORI s2, t4, 45
  SLTIU s2, s2, 1
  # implict jump to bb311
bb311:
  BNE s2, zero, bb410
  # implict jump to bb312
bb312:
  LW t4, 8(sp)
  XORI s2, t4, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb409
  # implict jump to bb313
bb313:
  LW t4, 8(sp)
  XORI s2, t4, 47
  SLTIU s2, s2, 1
  # implict jump to bb314
bb314:
  BNE s2, zero, bb408
  # implict jump to bb315
bb315:
  LW t4, 8(sp)
  XORI s2, t4, 37
  SLTIU s2, s2, 1
  # implict jump to bb316
bb316:
  BNE s2, zero, bb407
  # implict jump to bb317
bb317:
  ADD s2, zero, zero
  # implict jump to bb318
bb318:
  ADD t4, s2, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTU s7, zero, t4
  XORI s7, s7, 1
  BNE s7, zero, bb263
  # implict jump to bb319
bb319:
  # implict jump to bb320
bb320:
  LA s7, last_char
  LW s7, 0(s7)
  XORI s3, s7, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb406
  # implict jump to bb321
bb321:
  XORI s3, s7, 10
  SLTIU s3, s3, 1
  # implict jump to bb322
bb322:
  BNE s3, zero, bb405
  # implict jump to bb323
bb323:
  ADD s3, zero, zero
  # implict jump to bb324
bb324:
  BNE s3, zero, bb404
  # implict jump to bb325
bb325:
  SLTI s3, s7, 48
  XORI s3, s3, 1
  BNE s3, zero, bb403
  # implict jump to bb326
bb326:
  ADD s3, zero, zero
  # implict jump to bb327
bb327:
  BNE s3, zero, bb402
  # implict jump to bb328
bb328:
  ADD s3, zero, zero
  # implict jump to bb329
bb329:
  BNE s3, zero, bb392
  # implict jump to bb330
bb330:
  LA s3, last_char
  LW s3, 0(s3)
  LA s5, other
  SW s3, 0(s5)
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  LA s3, cur_token
  ADDI s5, zero, 1
  SW s5, 0(s3)
  # implict jump to bb331
bb331:
  LA s5, cur_token
  LW t4, 0(s5)
  SW t4, 28(sp)
  LW t4, 20(sp)
  ADD s5, t4, zero
  LW t4, 16(sp)
  ADD s7, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  # implict jump to bb332
bb332:
  ADD s10, s2, zero
  ADD s8, s7, zero
  ADD s9, s5, zero
  LW s4, 176(sp)
  BNE s4, zero, bb377
  # implict jump to bb333
bb333:
  ADD s3, zero, zero
  # implict jump to bb334
bb334:
  BNE s3, zero, bb365
  # implict jump to bb335
bb335:
  LW s0, 176(sp)
  ADDIW s0, s0, 1
  SW s0, 176(sp)
  SLLIW s0, s0, 2
  ADDI t4, sp, 176
  ADD s0, t4, s0
  LW t4, 8(sp)
  SW t4, 0(s0)
  LW t4, 28(sp)
  BNE t4, zero, bb364
  # implict jump to bb336
bb336:
  LA s0, num
  LW s0, 0(s0)
  LW s3, 1200(sp)
  ADDIW s3, s3, 1
  SW s3, 1200(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 1200
  ADD s3, t5, s3
  SW s0, 0(s3)
  # implict jump to bb337
bb337:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s3, s0, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb363
  # implict jump to bb338
bb338:
  XORI s3, s0, 10
  SLTIU s3, s3, 1
  # implict jump to bb339
bb339:
  BNE s3, zero, bb362
  # implict jump to bb340
bb340:
  ADD s3, zero, zero
  # implict jump to bb341
bb341:
  BNE s3, zero, bb361
  # implict jump to bb342
bb342:
  SLTI s3, s0, 48
  XORI s3, s3, 1
  BNE s3, zero, bb360
  # implict jump to bb343
bb343:
  ADD s3, zero, zero
  # implict jump to bb344
bb344:
  BNE s3, zero, bb359
  # implict jump to bb345
bb345:
  ADD s3, zero, zero
  # implict jump to bb346
bb346:
  BNE s3, zero, bb349
  # implict jump to bb347
bb347:
  LA s3, last_char
  LW s3, 0(s3)
  LA s4, other
  SW s3, 0(s4)
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  LA s3, cur_token
  ADDI s4, zero, 1
  SW s4, 0(s3)
  # implict jump to bb348
bb348:
  ADD s6, s9, zero
  ADD s11, s8, zero
  ADD s1, s10, zero
  JAL zero, bb262
bb349:
  ADDI s3, zero, 48
  SUBW s0, s0, s3
  LA s3, num
  SW s0, 0(s3)
  # implict jump to bb350
bb350:
  CALL getch
  ADD s0, a0, zero
  LA s3, last_char
  SW s0, 0(s3)
  SLTI s3, s0, 48
  XORI s3, s3, 1
  BNE s3, zero, bb358
  # implict jump to bb351
bb351:
  ADD s3, zero, zero
  # implict jump to bb352
bb352:
  BNE s3, zero, bb357
  # implict jump to bb353
bb353:
  ADD s3, zero, zero
  # implict jump to bb354
bb354:
  BNE s3, zero, bb356
  # implict jump to bb355
bb355:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb348
bb356:
  LA s1, num
  LW s1, 0(s1)
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb350
bb357:
  ADDI s3, zero, 1
  JAL zero, bb354
bb358:
  ADDI s4, zero, 57
  SLT s4, s4, s0
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb352
bb359:
  ADDI s3, zero, 1
  JAL zero, bb346
bb360:
  ADDI s4, zero, 57
  SLT s4, s4, s0
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb344
bb361:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb337
bb362:
  ADDI s3, zero, 1
  JAL zero, bb341
bb363:
  ADDI s3, zero, 1
  JAL zero, bb339
bb364:
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
  JAL zero, bb277
bb365:
  LW s1, 176(sp)
  SLLIW s3, s1, 2
  ADDI t5, sp, 176
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s1, s1, s4
  SW s1, 176(sp)
  LW s1, 1200(sp)
  SLLIW s4, s1, 2
  ADDI t5, sp, 1200
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s6, zero, 1
  SUBW s1, s1, s6
  SW s1, 1200(sp)
  SLLIW s6, s1, 2
  ADDI t5, sp, 1200
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDI s8, zero, 1
  SUBW s1, s1, s8
  SW s1, 1200(sp)
  XORI s1, s3, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb376
  # implict jump to bb366
bb366:
  XORI s1, s3, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb375
  # implict jump to bb367
bb367:
  XORI s1, s3, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb374
  # implict jump to bb368
bb368:
  XORI s1, s3, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb373
  # implict jump to bb369
bb369:
  XORI s1, s3, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb372
  # implict jump to bb370
bb370:
  ADD s1, zero, zero
  # implict jump to bb371
bb371:
  LW s8, 1200(sp)
  ADDIW s8, s8, 1
  SW s8, 1200(sp)
  SLLIW s8, s8, 2
  ADDI t5, sp, 1200
  ADD s8, t5, s8
  SW s1, 0(s8)
  ADD s5, s4, zero
  ADD s7, s6, zero
  ADD s2, s3, zero
  JAL zero, bb332
bb372:
  REMW s8, s6, s4
  ADD s1, s8, zero
  JAL zero, bb371
bb373:
  DIVW s8, s6, s4
  ADD s1, s8, zero
  JAL zero, bb371
bb374:
  MULW s8, s6, s4
  ADD s1, s8, zero
  JAL zero, bb371
bb375:
  SUBW s8, s6, s4
  ADD s1, s8, zero
  JAL zero, bb371
bb376:
  ADDW s8, s6, s4
  ADD s1, s8, zero
  JAL zero, bb371
bb377:
  SLLIW s4, s4, 2
  ADDI t5, sp, 176
  ADD s4, t5, s4
  LW s4, 0(s4)
  XORI s0, s4, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb391
  # implict jump to bb378
bb378:
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  # implict jump to bb379
bb379:
  BNE s0, zero, bb390
  # implict jump to bb380
bb380:
  XORI s0, s4, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb389
  # implict jump to bb381
bb381:
  XORI s0, s4, 47
  SLTIU s0, s0, 1
  # implict jump to bb382
bb382:
  BNE s0, zero, bb388
  # implict jump to bb383
bb383:
  XORI s0, s4, 37
  SLTIU s0, s0, 1
  # implict jump to bb384
bb384:
  BNE s0, zero, bb387
  # implict jump to bb385
bb385:
  ADD s0, zero, zero
  # implict jump to bb386
bb386:
  LW t4, 4(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb334
bb387:
  ADDI s0, zero, 20
  JAL zero, bb386
bb388:
  ADDI s0, zero, 1
  JAL zero, bb384
bb389:
  ADDI s0, zero, 1
  JAL zero, bb382
bb390:
  ADDI s0, zero, 10
  JAL zero, bb386
bb391:
  ADDI s0, zero, 1
  JAL zero, bb379
bb392:
  ADDI s3, zero, 48
  SUBW s3, s7, s3
  LA s5, num
  SW s3, 0(s5)
  # implict jump to bb393
bb393:
  CALL getch
  ADD t4, a0, zero
  SW t4, 24(sp)
  LA s5, last_char
  LW t4, 24(sp)
  SW t4, 0(s5)
  LW t4, 24(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb401
  # implict jump to bb394
bb394:
  ADD s5, zero, zero
  # implict jump to bb395
bb395:
  BNE s5, zero, bb400
  # implict jump to bb396
bb396:
  ADD s5, zero, zero
  # implict jump to bb397
bb397:
  BNE s5, zero, bb399
  # implict jump to bb398
bb398:
  LA s5, cur_token
  SW zero, 0(s5)
  JAL zero, bb331
bb399:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  LW t4, 24(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb393
bb400:
  ADDI s5, zero, 1
  JAL zero, bb397
bb401:
  ADDI s7, zero, 57
  LW t4, 24(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s5, s7, zero
  JAL zero, bb395
bb402:
  ADDI s3, zero, 1
  JAL zero, bb329
bb403:
  ADDI s5, zero, 57
  SLT s5, s5, s7
  XORI s5, s5, 1
  ADD s3, s5, zero
  JAL zero, bb327
bb404:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb320
bb405:
  ADDI s3, zero, 1
  JAL zero, bb324
bb406:
  ADDI s3, zero, 1
  JAL zero, bb322
bb407:
  ADDI s2, zero, 20
  JAL zero, bb318
bb408:
  ADDI s2, zero, 1
  JAL zero, bb316
bb409:
  ADDI s2, zero, 1
  JAL zero, bb314
bb410:
  ADDI s2, zero, 10
  JAL zero, bb318
bb411:
  ADDI s2, zero, 1
  JAL zero, bb311
bb412:
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, num
  SW s5, 0(s6)
  # implict jump to bb413
bb413:
  CALL getch
  ADD t4, a0, zero
  SW t4, 32(sp)
  LA s6, last_char
  LW t4, 32(sp)
  SW t4, 0(s6)
  LW t4, 32(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb421
  # implict jump to bb414
bb414:
  ADD s6, zero, zero
  # implict jump to bb415
bb415:
  BNE s6, zero, bb420
  # implict jump to bb416
bb416:
  ADD s6, zero, zero
  # implict jump to bb417
bb417:
  BNE s6, zero, bb419
  # implict jump to bb418
bb418:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb261
bb419:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  LW t4, 32(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb413
bb420:
  ADDI s6, zero, 1
  JAL zero, bb417
bb421:
  ADDI s11, zero, 57
  LW t4, 32(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s6, s11, zero
  JAL zero, bb415
bb422:
  ADDI s6, zero, 1
  JAL zero, bb259
bb423:
  ADDI s6, zero, 57
  SLT s6, s6, s5
  XORI s6, s6, 1
  ADD s11, s6, zero
  JAL zero, bb257
bb424:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb250
bb425:
  ADDI s11, zero, 1
  JAL zero, bb254
bb426:
  ADDI s11, zero, 1
  JAL zero, bb252
bb427:
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
  JAL zero, bb277
bb428:
  ADDI s10, zero, 256
  # implict jump to bb429
bb429:
  ADD t4, s10, zero
  SW t4, 44(sp)
  # implict jump to bb430
bb430:
  LW t4, 44(sp)
  ADD s11, t4, zero
  ADDI s5, zero, 1
  SUBW t4, s11, s5
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 176
  ADD s5, t5, s5
  SW zero, 0(s5)
  # implict jump to bb431
bb431:
  LW t4, 0(sp)
  BNE t4, zero, bb432
  JAL zero, bb248
bb432:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb430
bb433:
  ADDI s9, zero, 256
  # implict jump to bb434
bb434:
  ADD t4, s9, zero
  SW t4, 52(sp)
  # implict jump to bb435
bb435:
  LW t4, 52(sp)
  ADD s10, t4, zero
  ADDI s11, zero, 1
  SUBW t4, s10, s11
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLLIW s10, t4, 2
  ADDI t5, sp, 1200
  ADD s10, t5, s10
  SW zero, 0(s10)
  # implict jump to bb436
bb436:
  LW t4, 48(sp)
  BNE t4, zero, bb437
  JAL zero, bb247
bb437:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb435
bb438:
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  LA s7, num
  SW s6, 0(s7)
  # implict jump to bb439
bb439:
  CALL getch
  ADD t4, a0, zero
  SW t4, 64(sp)
  LA s7, last_char
  LW t4, 64(sp)
  SW t4, 0(s7)
  LW t4, 64(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb447
  # implict jump to bb440
bb440:
  ADD s7, zero, zero
  # implict jump to bb441
bb441:
  BNE s7, zero, bb446
  # implict jump to bb442
bb442:
  ADD s7, zero, zero
  # implict jump to bb443
bb443:
  BNE s7, zero, bb445
  # implict jump to bb444
bb444:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb242
bb445:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 64(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb439
bb446:
  ADDI s7, zero, 1
  JAL zero, bb443
bb447:
  ADDI s8, zero, 57
  LW t4, 64(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb441
bb448:
  ADDI s7, zero, 1
  JAL zero, bb240
bb449:
  ADDI s8, zero, 57
  SLT s8, s8, s6
  XORI s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb238
bb450:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb231
bb451:
  ADDI s7, zero, 1
  JAL zero, bb235
bb452:
  ADDI s7, zero, 1
  JAL zero, bb233
panic:
  ADDI sp, sp, -16
  SD ra, 0(sp)
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
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
next_token:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  # implict jump to bb455
bb455:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb481
  # implict jump to bb456
bb456:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb457
bb457:
  BNE s1, zero, bb480
  # implict jump to bb458
bb458:
  ADD s1, zero, zero
  # implict jump to bb459
bb459:
  BNE s1, zero, bb479
  # implict jump to bb460
bb460:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb478
  # implict jump to bb461
bb461:
  ADD s1, zero, zero
  # implict jump to bb462
bb462:
  BNE s1, zero, bb477
  # implict jump to bb463
bb463:
  ADD s1, zero, zero
  # implict jump to bb464
bb464:
  BNE s1, zero, bb467
  # implict jump to bb465
bb465:
  LA s1, last_char
  LW s1, 0(s1)
  LA s2, other
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  LA s1, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s1)
  # implict jump to bb466
bb466:
  LA s1, cur_token
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb467:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb468
bb468:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb476
  # implict jump to bb469
bb469:
  ADD s1, zero, zero
  # implict jump to bb470
bb470:
  BNE s1, zero, bb475
  # implict jump to bb471
bb471:
  ADD s1, zero, zero
  # implict jump to bb472
bb472:
  BNE s1, zero, bb474
  # implict jump to bb473
bb473:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb466
bb474:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb468
bb475:
  ADDI s1, zero, 1
  JAL zero, bb472
bb476:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb470
bb477:
  ADDI s1, zero, 1
  JAL zero, bb464
bb478:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb462
bb479:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb455
bb480:
  ADDI s1, zero, 1
  JAL zero, bb459
bb481:
  ADDI s1, zero, 1
  JAL zero, bb457
next_char:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
