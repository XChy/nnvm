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
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
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
  BNE s3, zero, bb180
  # implict jump to bb1
bb1:
  XORI s4, zero, 256
  BNE s4, zero, bb176
  # implict jump to bb2
bb2:
  LA s5, cur_token
  LW s5, 0(s5)
  BNE s5, zero, bb175
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
  BNE s6, zero, bb174
  # implict jump to bb5
bb5:
  XORI s6, s5, 10
  SLTIU s6, s6, 1
  # implict jump to bb6
bb6:
  BNE s6, zero, bb173
  # implict jump to bb7
bb7:
  ADD s6, zero, zero
  # implict jump to bb8
bb8:
  BNE s6, zero, bb172
  # implict jump to bb9
bb9:
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb171
  # implict jump to bb10
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  BNE s6, zero, bb170
  # implict jump to bb12
bb12:
  ADD s6, zero, zero
  # implict jump to bb13
bb13:
  BNE s6, zero, bb160
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
  SW t4, 20(sp)
  ADD t4, s7, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 4(sp)
  LA s3, cur_token
  LW s3, 0(s3)
  XORI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb58
  # implict jump to bb17
bb17:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb57
  # implict jump to bb18
bb18:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb19
bb19:
  BNE s1, zero, bb56
  # implict jump to bb20
bb20:
  ADD s1, zero, zero
  # implict jump to bb21
bb21:
  BNE s1, zero, bb55
  # implict jump to bb22
bb22:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb54
  # implict jump to bb23
bb23:
  ADD s1, zero, zero
  # implict jump to bb24
bb24:
  BNE s1, zero, bb53
  # implict jump to bb25
bb25:
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  BNE s1, zero, bb43
  # implict jump to bb27
bb27:
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
  # implict jump to bb28
bb28:
  LW s1, 152(sp)
  BNE s1, zero, bb30
  # implict jump to bb29
bb29:
  LW s1, 1176(sp)
  SLLIW s1, s1, 2
  ADDI a0, sp, 1176
  ADD s1, a0, s1
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
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
bb30:
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
  BNE s1, zero, bb42
  # implict jump to bb31
bb31:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb41
  # implict jump to bb32
bb32:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb40
  # implict jump to bb33
bb33:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb39
  # implict jump to bb34
bb34:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb38
  # implict jump to bb35
bb35:
  ADD s1, zero, zero
  # implict jump to bb36
bb36:
  LW s2, 1176(sp)
  ADDIW s2, s2, 1
  SW s2, 1176(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1176
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb37
bb37:
  LW s1, 152(sp)
  BNE s1, zero, bb30
  JAL zero, bb29
bb38:
  REMW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb36
bb39:
  DIVW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb36
bb40:
  MULW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb36
bb41:
  SUBW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb36
bb42:
  ADDW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb36
bb43:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb44
bb44:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb52
  # implict jump to bb45
bb45:
  ADD s1, zero, zero
  # implict jump to bb46
bb46:
  BNE s1, zero, bb51
  # implict jump to bb47
bb47:
  ADD s1, zero, zero
  # implict jump to bb48
bb48:
  BNE s1, zero, bb50
  # implict jump to bb49
bb49:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb28
bb50:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb44
bb51:
  ADDI s1, zero, 1
  JAL zero, bb48
bb52:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb46
bb53:
  ADDI s1, zero, 1
  JAL zero, bb26
bb54:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb24
bb55:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb17
bb56:
  ADDI s1, zero, 1
  JAL zero, bb21
bb57:
  ADDI s1, zero, 1
  JAL zero, bb19
bb58:
  LA s3, other
  LW t4, 0(s3)
  SW t4, 24(sp)
  LW t4, 24(sp)
  XORI s0, t4, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb159
  # implict jump to bb59
bb59:
  LW t4, 24(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  # implict jump to bb60
bb60:
  BNE s0, zero, bb158
  # implict jump to bb61
bb61:
  LW t4, 24(sp)
  XORI s0, t4, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb62
bb62:
  LW t4, 24(sp)
  XORI s0, t4, 47
  SLTIU s0, s0, 1
  # implict jump to bb63
bb63:
  BNE s0, zero, bb156
  # implict jump to bb64
bb64:
  LW t4, 24(sp)
  XORI s0, t4, 37
  SLTIU s0, s0, 1
  # implict jump to bb65
bb65:
  BNE s0, zero, bb155
  # implict jump to bb66
bb66:
  ADD s0, zero, zero
  # implict jump to bb67
bb67:
  ADD t4, s0, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTU s4, zero, t4
  XORI s4, s4, 1
  BNE s4, zero, bb17
  # implict jump to bb68
bb68:
  LA s4, last_char
  LW s4, 0(s4)
  XORI s1, s4, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb154
  # implict jump to bb69
bb69:
  XORI s1, s4, 10
  SLTIU s1, s1, 1
  # implict jump to bb70
bb70:
  BNE s1, zero, bb153
  # implict jump to bb71
bb71:
  ADD s1, zero, zero
  # implict jump to bb72
bb72:
  BNE s1, zero, bb152
  # implict jump to bb73
bb73:
  SLTI s1, s4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb151
  # implict jump to bb74
bb74:
  ADD s1, zero, zero
  # implict jump to bb75
bb75:
  BNE s1, zero, bb150
  # implict jump to bb76
bb76:
  ADD s1, zero, zero
  # implict jump to bb77
bb77:
  BNE s1, zero, bb140
  # implict jump to bb78
bb78:
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
  # implict jump to bb79
bb79:
  LA s4, cur_token
  LW t4, 0(s4)
  SW t4, 12(sp)
  LW t4, 4(sp)
  ADD s4, t4, zero
  LW t4, 16(sp)
  ADD s5, t4, zero
  LW t4, 20(sp)
  ADD s0, t4, zero
  # implict jump to bb80
bb80:
  ADD s3, s0, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  LW s11, 152(sp)
  BNE s11, zero, bb125
  # implict jump to bb81
bb81:
  ADD s1, zero, zero
  # implict jump to bb82
bb82:
  BNE s1, zero, bb113
  # implict jump to bb83
bb83:
  LW s1, 152(sp)
  ADDIW s1, s1, 1
  SW s1, 152(sp)
  SLLIW s1, s1, 2
  ADDI t4, sp, 152
  ADD s1, t4, s1
  LW t4, 24(sp)
  SW t4, 0(s1)
  LW t4, 12(sp)
  BNE t4, zero, bb112
  # implict jump to bb84
bb84:
  LA s1, num
  LW s1, 0(s1)
  LW s2, 1176(sp)
  ADDIW s2, s2, 1
  SW s2, 1176(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1176
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb85
bb85:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb111
  # implict jump to bb86
bb86:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb87
bb87:
  BNE s2, zero, bb110
  # implict jump to bb88
bb88:
  ADD s2, zero, zero
  # implict jump to bb89
bb89:
  BNE s2, zero, bb109
  # implict jump to bb90
bb90:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb108
  # implict jump to bb91
bb91:
  ADD s2, zero, zero
  # implict jump to bb92
bb92:
  BNE s2, zero, bb107
  # implict jump to bb93
bb93:
  ADD s2, zero, zero
  # implict jump to bb94
bb94:
  BNE s2, zero, bb97
  # implict jump to bb95
bb95:
  LA s2, last_char
  LW s2, 0(s2)
  LA s11, other
  SW s2, 0(s11)
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  LA s2, cur_token
  ADDI s11, zero, 1
  SW s11, 0(s2)
  # implict jump to bb96
bb96:
  ADD s6, s10, zero
  ADD s7, s9, zero
  ADD s8, s3, zero
  JAL zero, bb16
bb97:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb98
bb98:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb106
  # implict jump to bb99
bb99:
  ADD s2, zero, zero
  # implict jump to bb100
bb100:
  BNE s2, zero, bb105
  # implict jump to bb101
bb101:
  ADD s2, zero, zero
  # implict jump to bb102
bb102:
  BNE s2, zero, bb104
  # implict jump to bb103
bb103:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb96
bb104:
  LA s2, num
  LW s2, 0(s2)
  ADDI s6, zero, 10
  MULW s2, s2, s6
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb98
bb105:
  ADDI s2, zero, 1
  JAL zero, bb102
bb106:
  ADDI s11, zero, 57
  SLT s11, s11, s1
  XORI s11, s11, 1
  ADD s2, s11, zero
  JAL zero, bb100
bb107:
  ADDI s2, zero, 1
  JAL zero, bb94
bb108:
  ADDI s11, zero, 57
  SLT s11, s11, s1
  XORI s11, s11, 1
  ADD s2, s11, zero
  JAL zero, bb92
bb109:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb85
bb110:
  ADDI s2, zero, 1
  JAL zero, bb89
bb111:
  ADDI s2, zero, 1
  JAL zero, bb87
bb112:
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
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
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
bb113:
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
  ADDI s6, zero, 1
  SUBW s1, s1, s6
  SW s1, 1176(sp)
  SLLIW s6, s1, 2
  ADDI t5, sp, 1176
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s1, s1, s7
  SW s1, 1176(sp)
  XORI s1, s2, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb124
  # implict jump to bb114
bb114:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb123
  # implict jump to bb115
bb115:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb122
  # implict jump to bb116
bb116:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb121
  # implict jump to bb117
bb117:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb120
  # implict jump to bb118
bb118:
  ADD s1, zero, zero
  # implict jump to bb119
bb119:
  LW s7, 1176(sp)
  ADDIW s7, s7, 1
  SW s7, 1176(sp)
  SLLIW s7, s7, 2
  ADDI t5, sp, 1176
  ADD s7, t5, s7
  SW s1, 0(s7)
  ADD s4, s3, zero
  ADD s5, s6, zero
  ADD s0, s2, zero
  JAL zero, bb80
bb120:
  REMW s7, s6, s3
  ADD s1, s7, zero
  JAL zero, bb119
bb121:
  DIVW s7, s6, s3
  ADD s1, s7, zero
  JAL zero, bb119
bb122:
  MULW s7, s6, s3
  ADD s1, s7, zero
  JAL zero, bb119
bb123:
  SUBW s7, s6, s3
  ADD s1, s7, zero
  JAL zero, bb119
bb124:
  ADDW s7, s6, s3
  ADD s1, s7, zero
  JAL zero, bb119
bb125:
  SLLIW s11, s11, 2
  ADDI t5, sp, 152
  ADD s11, t5, s11
  LW s11, 0(s11)
  XORI s2, s11, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb139
  # implict jump to bb126
bb126:
  XORI s2, s11, 45
  SLTIU s2, s2, 1
  # implict jump to bb127
bb127:
  BNE s2, zero, bb138
  # implict jump to bb128
bb128:
  XORI s2, s11, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb137
  # implict jump to bb129
bb129:
  XORI s2, s11, 47
  SLTIU s2, s2, 1
  # implict jump to bb130
bb130:
  BNE s2, zero, bb136
  # implict jump to bb131
bb131:
  XORI s2, s11, 37
  SLTIU s2, s2, 1
  # implict jump to bb132
bb132:
  BNE s2, zero, bb135
  # implict jump to bb133
bb133:
  ADD s2, zero, zero
  # implict jump to bb134
bb134:
  LW t4, 28(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb82
bb135:
  ADDI s2, zero, 20
  JAL zero, bb134
bb136:
  ADDI s2, zero, 1
  JAL zero, bb132
bb137:
  ADDI s2, zero, 1
  JAL zero, bb130
bb138:
  ADDI s2, zero, 10
  JAL zero, bb134
bb139:
  ADDI s2, zero, 1
  JAL zero, bb127
bb140:
  ADDI s1, zero, 48
  SUBW s1, s4, s1
  LA s4, num
  SW s1, 0(s4)
  # implict jump to bb141
bb141:
  CALL getch
  ADD t4, a0, zero
  SW t4, 8(sp)
  LA s4, last_char
  LW t4, 8(sp)
  SW t4, 0(s4)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  XORI s4, s4, 1
  BNE s4, zero, bb149
  # implict jump to bb142
bb142:
  ADD s4, zero, zero
  # implict jump to bb143
bb143:
  BNE s4, zero, bb148
  # implict jump to bb144
bb144:
  ADD s4, zero, zero
  # implict jump to bb145
bb145:
  BNE s4, zero, bb147
  # implict jump to bb146
bb146:
  LA s4, cur_token
  SW zero, 0(s4)
  JAL zero, bb79
bb147:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 8(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb141
bb148:
  ADDI s4, zero, 1
  JAL zero, bb145
bb149:
  ADDI s5, zero, 57
  LW t4, 8(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb143
bb150:
  ADDI s1, zero, 1
  JAL zero, bb77
bb151:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  ADD s1, s5, zero
  JAL zero, bb75
bb152:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb68
bb153:
  ADDI s1, zero, 1
  JAL zero, bb72
bb154:
  ADDI s1, zero, 1
  JAL zero, bb70
bb155:
  ADDI s0, zero, 20
  JAL zero, bb67
bb156:
  ADDI s0, zero, 1
  JAL zero, bb65
bb157:
  ADDI s0, zero, 1
  JAL zero, bb63
bb158:
  ADDI s0, zero, 10
  JAL zero, bb67
bb159:
  ADDI s0, zero, 1
  JAL zero, bb60
bb160:
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, num
  SW s5, 0(s6)
  # implict jump to bb161
bb161:
  CALL getch
  ADD t4, a0, zero
  SW t4, 0(sp)
  LA s6, last_char
  LW t4, 0(sp)
  SW t4, 0(s6)
  LW t4, 0(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb169
  # implict jump to bb162
bb162:
  ADD s6, zero, zero
  # implict jump to bb163
bb163:
  BNE s6, zero, bb168
  # implict jump to bb164
bb164:
  ADD s6, zero, zero
  # implict jump to bb165
bb165:
  BNE s6, zero, bb167
  # implict jump to bb166
bb166:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb15
bb167:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 0(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb161
bb168:
  ADDI s6, zero, 1
  JAL zero, bb165
bb169:
  ADDI s7, zero, 57
  LW t4, 0(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb163
bb170:
  ADDI s6, zero, 1
  JAL zero, bb13
bb171:
  ADDI s7, zero, 57
  SLT s7, s7, s5
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb11
bb172:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb4
bb173:
  ADDI s6, zero, 1
  JAL zero, bb8
bb174:
  ADDI s6, zero, 1
  JAL zero, bb6
bb175:
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
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
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
bb176:
  ADDI t4, zero, 256
  SW t4, 36(sp)
  # implict jump to bb177
bb177:
  LW t4, 36(sp)
  ADD s5, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s5, s6
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s5, t4, 2
  ADDI t5, sp, 152
  ADD s5, t5, s5
  SW zero, 0(s5)
  # implict jump to bb178
bb178:
  LW t4, 32(sp)
  BNE t4, zero, bb179
  JAL zero, bb2
bb179:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb177
bb180:
  ADDI t4, zero, 256
  SW t4, 44(sp)
  # implict jump to bb181
bb181:
  LW t4, 44(sp)
  ADD s4, t4, zero
  ADDI s5, zero, 1
  SUBW t4, s4, s5
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLLIW s4, t4, 2
  ADDI t5, sp, 1176
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb182
bb182:
  LW t4, 40(sp)
  BNE t4, zero, bb183
  JAL zero, bb1
bb183:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb181
eval_op:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb194
  # implict jump to bb185
bb185:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb193
  # implict jump to bb186
bb186:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb192
  # implict jump to bb187
bb187:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb191
  # implict jump to bb188
bb188:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb190
  # implict jump to bb189
bb189:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb190:
  REMW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb191:
  DIVW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb192:
  MULW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb193:
  SUBW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb194:
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
  BNE s1, zero, bb211
  # implict jump to bb199
bb199:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  # implict jump to bb200
bb200:
  BNE s1, zero, bb210
  # implict jump to bb201
bb201:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb209
  # implict jump to bb202
bb202:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  # implict jump to bb203
bb203:
  BNE s1, zero, bb208
  # implict jump to bb204
bb204:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb205
bb205:
  BNE s0, zero, bb207
  # implict jump to bb206
bb206:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb207:
  ADDI a0, zero, 20
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb208:
  ADDI s0, zero, 1
  JAL zero, bb205
bb209:
  ADDI s1, zero, 1
  JAL zero, bb203
bb210:
  ADDI a0, zero, 10
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb211:
  ADDI s1, zero, 1
  JAL zero, bb200
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
  BNE s1, zero, bb218
  # implict jump to bb214
bb214:
  ADD s1, zero, zero
  # implict jump to bb215
bb215:
  BNE s1, zero, bb217
  # implict jump to bb216
bb216:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb217:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb218:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb215
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb224
  # implict jump to bb220
bb220:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb221
bb221:
  BNE s0, zero, bb223
  # implict jump to bb222
bb222:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb223:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb224:
  ADDI s0, zero, 1
  JAL zero, bb221
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
  SW t4, 64(sp)
  CALL getch
  # implict jump to bb226
bb226:
  LA s5, last_char
  LW s5, 0(s5)
  XORI s6, s5, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb441
  # implict jump to bb227
bb227:
  XORI s6, s5, 10
  SLTIU s6, s6, 1
  # implict jump to bb228
bb228:
  BNE s6, zero, bb440
  # implict jump to bb229
bb229:
  ADD s6, zero, zero
  # implict jump to bb230
bb230:
  BNE s6, zero, bb439
  # implict jump to bb231
bb231:
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb438
  # implict jump to bb232
bb232:
  ADD s6, zero, zero
  # implict jump to bb233
bb233:
  BNE s6, zero, bb437
  # implict jump to bb234
bb234:
  ADD s6, zero, zero
  # implict jump to bb235
bb235:
  BNE s6, zero, bb427
  # implict jump to bb236
bb236:
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
  # implict jump to bb237
bb237:
  LW t4, 64(sp)
  BNE t4, zero, bb239
  # implict jump to bb238
bb238:
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
bb239:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  # implict jump to bb240
bb240:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  XORI s8, zero, 256
  BNE s8, zero, bb423
  # implict jump to bb241
bb241:
  XORI s9, zero, 256
  BNE s9, zero, bb419
  # implict jump to bb242
bb242:
  LA s10, cur_token
  LW s10, 0(s10)
  BNE s10, zero, bb418
  # implict jump to bb243
bb243:
  LA s10, num
  LW s10, 0(s10)
  LW s11, 1200(sp)
  ADDIW s11, s11, 1
  SW s11, 1200(sp)
  SLLIW s11, s11, 2
  ADDI t5, sp, 1200
  ADD s11, t5, s11
  SW s10, 0(s11)
  # implict jump to bb244
bb244:
  LA s10, last_char
  LW s10, 0(s10)
  XORI s11, s10, 32
  SLTIU s11, s11, 1
  BNE s11, zero, bb417
  # implict jump to bb245
bb245:
  XORI s11, s10, 10
  SLTIU s11, s11, 1
  # implict jump to bb246
bb246:
  BNE s11, zero, bb416
  # implict jump to bb247
bb247:
  ADD s11, zero, zero
  # implict jump to bb248
bb248:
  BNE s11, zero, bb415
  # implict jump to bb249
bb249:
  SLTI s11, s10, 48
  XORI s11, s11, 1
  BNE s11, zero, bb414
  # implict jump to bb250
bb250:
  ADD s11, zero, zero
  # implict jump to bb251
bb251:
  BNE s11, zero, bb413
  # implict jump to bb252
bb252:
  ADD s4, zero, zero
  # implict jump to bb253
bb253:
  BNE s4, zero, bb403
  # implict jump to bb254
bb254:
  LA s4, last_char
  LW s4, 0(s4)
  LA s11, other
  SW s4, 0(s11)
  CALL getch
  ADD s4, a0, zero
  LA s11, last_char
  SW s4, 0(s11)
  LA s4, cur_token
  ADDI s11, zero, 1
  SW s11, 0(s4)
  # implict jump to bb255
bb255:
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD s5, zero, zero
  # implict jump to bb256
bb256:
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s11, zero
  SW t4, 12(sp)
  ADD t4, s10, zero
  SW t4, 16(sp)
  LA s9, cur_token
  LW s9, 0(s9)
  XORI s9, s9, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb301
  # implict jump to bb257
bb257:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb300
  # implict jump to bb258
bb258:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb259
bb259:
  BNE s2, zero, bb299
  # implict jump to bb260
bb260:
  ADD s2, zero, zero
  # implict jump to bb261
bb261:
  BNE s2, zero, bb298
  # implict jump to bb262
bb262:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb297
  # implict jump to bb263
bb263:
  ADD s2, zero, zero
  # implict jump to bb264
bb264:
  BNE s2, zero, bb296
  # implict jump to bb265
bb265:
  ADD s2, zero, zero
  # implict jump to bb266
bb266:
  BNE s2, zero, bb286
  # implict jump to bb267
bb267:
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
  # implict jump to bb268
bb268:
  LW s2, 176(sp)
  BNE s2, zero, bb273
  # implict jump to bb269
bb269:
  LW s2, 1200(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1200
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  # implict jump to bb270
bb270:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  LW t3, 56(sp)
  SUBW t4, t3, s0
  SW t4, 36(sp)
  # implict jump to bb271
bb271:
  LW t4, 36(sp)
  BNE t4, zero, bb272
  JAL zero, bb238
bb272:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb240
bb273:
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
  BNE s2, zero, bb285
  # implict jump to bb274
bb274:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb284
  # implict jump to bb275
bb275:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb283
  # implict jump to bb276
bb276:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb282
  # implict jump to bb277
bb277:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb281
  # implict jump to bb278
bb278:
  ADD s2, zero, zero
  # implict jump to bb279
bb279:
  LW s3, 1200(sp)
  ADDIW s3, s3, 1
  SW s3, 1200(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 1200
  ADD s3, t5, s3
  SW s2, 0(s3)
  # implict jump to bb280
bb280:
  LW s2, 176(sp)
  BNE s2, zero, bb273
  JAL zero, bb269
bb281:
  REMW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb279
bb282:
  DIVW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb279
bb283:
  MULW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb279
bb284:
  SUBW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb279
bb285:
  ADDW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb279
bb286:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb287
bb287:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb295
  # implict jump to bb288
bb288:
  ADD s2, zero, zero
  # implict jump to bb289
bb289:
  BNE s2, zero, bb294
  # implict jump to bb290
bb290:
  ADD s2, zero, zero
  # implict jump to bb291
bb291:
  BNE s2, zero, bb293
  # implict jump to bb292
bb292:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb268
bb293:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb287
bb294:
  ADDI s2, zero, 1
  JAL zero, bb291
bb295:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb289
bb296:
  ADDI s2, zero, 1
  JAL zero, bb266
bb297:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb264
bb298:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb257
bb299:
  ADDI s2, zero, 1
  JAL zero, bb261
bb300:
  ADDI s2, zero, 1
  JAL zero, bb259
bb301:
  LA s9, other
  LW t4, 0(s9)
  SW t4, 4(sp)
  LW t4, 4(sp)
  XORI s2, t4, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb402
  # implict jump to bb302
bb302:
  LW t4, 4(sp)
  XORI s2, t4, 45
  SLTIU s2, s2, 1
  # implict jump to bb303
bb303:
  BNE s2, zero, bb401
  # implict jump to bb304
bb304:
  LW t4, 4(sp)
  XORI s2, t4, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb400
  # implict jump to bb305
bb305:
  LW t4, 4(sp)
  XORI s2, t4, 47
  SLTIU s2, s2, 1
  # implict jump to bb306
bb306:
  BNE s2, zero, bb399
  # implict jump to bb307
bb307:
  LW t4, 4(sp)
  XORI s2, t4, 37
  SLTIU s2, s2, 1
  # implict jump to bb308
bb308:
  BNE s2, zero, bb398
  # implict jump to bb309
bb309:
  ADD s2, zero, zero
  # implict jump to bb310
bb310:
  ADD t4, s2, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb257
  # implict jump to bb311
bb311:
  LA s6, last_char
  LW s6, 0(s6)
  XORI s3, s6, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb397
  # implict jump to bb312
bb312:
  XORI s3, s6, 10
  SLTIU s3, s3, 1
  # implict jump to bb313
bb313:
  BNE s3, zero, bb396
  # implict jump to bb314
bb314:
  ADD s3, zero, zero
  # implict jump to bb315
bb315:
  BNE s3, zero, bb395
  # implict jump to bb316
bb316:
  SLTI s3, s6, 48
  XORI s3, s3, 1
  BNE s3, zero, bb394
  # implict jump to bb317
bb317:
  ADD s3, zero, zero
  # implict jump to bb318
bb318:
  BNE s3, zero, bb393
  # implict jump to bb319
bb319:
  ADD s3, zero, zero
  # implict jump to bb320
bb320:
  BNE s3, zero, bb383
  # implict jump to bb321
bb321:
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
  # implict jump to bb322
bb322:
  LA s4, cur_token
  LW t4, 0(s4)
  SW t4, 24(sp)
  LW t4, 16(sp)
  ADD s4, t4, zero
  LW t4, 12(sp)
  ADD s6, t4, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  # implict jump to bb323
bb323:
  ADD s9, s2, zero
  ADD s7, s6, zero
  ADD s8, s4, zero
  LW s1, 176(sp)
  BNE s1, zero, bb368
  # implict jump to bb324
bb324:
  ADD s3, zero, zero
  # implict jump to bb325
bb325:
  BNE s3, zero, bb356
  # implict jump to bb326
bb326:
  LW s0, 176(sp)
  ADDIW s0, s0, 1
  SW s0, 176(sp)
  SLLIW s0, s0, 2
  ADDI t4, sp, 176
  ADD s0, t4, s0
  LW t4, 4(sp)
  SW t4, 0(s0)
  LW t4, 24(sp)
  BNE t4, zero, bb355
  # implict jump to bb327
bb327:
  LA s0, num
  LW s0, 0(s0)
  LW s1, 1200(sp)
  ADDIW s1, s1, 1
  SW s1, 1200(sp)
  SLLIW s1, s1, 2
  ADDI t5, sp, 1200
  ADD s1, t5, s1
  SW s0, 0(s1)
  # implict jump to bb328
bb328:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb354
  # implict jump to bb329
bb329:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb330
bb330:
  BNE s1, zero, bb353
  # implict jump to bb331
bb331:
  ADD s1, zero, zero
  # implict jump to bb332
bb332:
  BNE s1, zero, bb352
  # implict jump to bb333
bb333:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb351
  # implict jump to bb334
bb334:
  ADD s1, zero, zero
  # implict jump to bb335
bb335:
  BNE s1, zero, bb350
  # implict jump to bb336
bb336:
  ADD s1, zero, zero
  # implict jump to bb337
bb337:
  BNE s1, zero, bb340
  # implict jump to bb338
bb338:
  LA s1, last_char
  LW s1, 0(s1)
  LA s3, other
  SW s1, 0(s3)
  CALL getch
  ADD s1, a0, zero
  LA s3, last_char
  SW s1, 0(s3)
  LA s1, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s1)
  # implict jump to bb339
bb339:
  ADD s10, s8, zero
  ADD s11, s7, zero
  ADD s5, s9, zero
  JAL zero, bb256
bb340:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb341
bb341:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb349
  # implict jump to bb342
bb342:
  ADD s1, zero, zero
  # implict jump to bb343
bb343:
  BNE s1, zero, bb348
  # implict jump to bb344
bb344:
  ADD s1, zero, zero
  # implict jump to bb345
bb345:
  BNE s1, zero, bb347
  # implict jump to bb346
bb346:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb339
bb347:
  LA s1, num
  LW s1, 0(s1)
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb341
bb348:
  ADDI s1, zero, 1
  JAL zero, bb345
bb349:
  ADDI s3, zero, 57
  SLT s3, s3, s0
  XORI s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb343
bb350:
  ADDI s1, zero, 1
  JAL zero, bb337
bb351:
  ADDI s3, zero, 57
  SLT s3, s3, s0
  XORI s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb335
bb352:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb328
bb353:
  ADDI s1, zero, 1
  JAL zero, bb332
bb354:
  ADDI s1, zero, 1
  JAL zero, bb330
bb355:
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
  JAL zero, bb270
bb356:
  LW s1, 176(sp)
  SLLIW s3, s1, 2
  ADDI t5, sp, 176
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s5, zero, 1
  SUBW s1, s1, s5
  SW s1, 176(sp)
  LW s1, 1200(sp)
  SLLIW s5, s1, 2
  ADDI t5, sp, 1200
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDI s7, zero, 1
  SUBW s1, s1, s7
  SW s1, 1200(sp)
  SLLIW s7, s1, 2
  ADDI t5, sp, 1200
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDI s8, zero, 1
  SUBW s1, s1, s8
  SW s1, 1200(sp)
  XORI s1, s3, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb367
  # implict jump to bb357
bb357:
  XORI s1, s3, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb366
  # implict jump to bb358
bb358:
  XORI s1, s3, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb365
  # implict jump to bb359
bb359:
  XORI s1, s3, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb364
  # implict jump to bb360
bb360:
  XORI s1, s3, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb363
  # implict jump to bb361
bb361:
  ADD s1, zero, zero
  # implict jump to bb362
bb362:
  LW s8, 1200(sp)
  ADDIW s8, s8, 1
  SW s8, 1200(sp)
  SLLIW s8, s8, 2
  ADDI t5, sp, 1200
  ADD s8, t5, s8
  SW s1, 0(s8)
  ADD s4, s5, zero
  ADD s6, s7, zero
  ADD s2, s3, zero
  JAL zero, bb323
bb363:
  REMW s8, s7, s5
  ADD s1, s8, zero
  JAL zero, bb362
bb364:
  DIVW s8, s7, s5
  ADD s1, s8, zero
  JAL zero, bb362
bb365:
  MULW s8, s7, s5
  ADD s1, s8, zero
  JAL zero, bb362
bb366:
  SUBW s8, s7, s5
  ADD s1, s8, zero
  JAL zero, bb362
bb367:
  ADDW s8, s7, s5
  ADD s1, s8, zero
  JAL zero, bb362
bb368:
  SLLIW s1, s1, 2
  ADDI t5, sp, 176
  ADD s1, t5, s1
  LW s1, 0(s1)
  XORI s0, s1, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb382
  # implict jump to bb369
bb369:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  # implict jump to bb370
bb370:
  BNE s0, zero, bb381
  # implict jump to bb371
bb371:
  XORI s0, s1, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb380
  # implict jump to bb372
bb372:
  XORI s0, s1, 47
  SLTIU s0, s0, 1
  # implict jump to bb373
bb373:
  BNE s0, zero, bb379
  # implict jump to bb374
bb374:
  XORI s0, s1, 37
  SLTIU s0, s0, 1
  # implict jump to bb375
bb375:
  BNE s0, zero, bb378
  # implict jump to bb376
bb376:
  ADD s0, zero, zero
  # implict jump to bb377
bb377:
  LW t4, 28(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb325
bb378:
  ADDI s0, zero, 20
  JAL zero, bb377
bb379:
  ADDI s0, zero, 1
  JAL zero, bb375
bb380:
  ADDI s0, zero, 1
  JAL zero, bb373
bb381:
  ADDI s0, zero, 10
  JAL zero, bb377
bb382:
  ADDI s0, zero, 1
  JAL zero, bb370
bb383:
  ADDI s3, zero, 48
  SUBW s3, s6, s3
  LA s4, num
  SW s3, 0(s4)
  # implict jump to bb384
bb384:
  CALL getch
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s4, last_char
  LW t4, 20(sp)
  SW t4, 0(s4)
  LW t4, 20(sp)
  SLTI s4, t4, 48
  XORI s4, s4, 1
  BNE s4, zero, bb392
  # implict jump to bb385
bb385:
  ADD s4, zero, zero
  # implict jump to bb386
bb386:
  BNE s4, zero, bb391
  # implict jump to bb387
bb387:
  ADD s4, zero, zero
  # implict jump to bb388
bb388:
  BNE s4, zero, bb390
  # implict jump to bb389
bb389:
  LA s4, cur_token
  SW zero, 0(s4)
  JAL zero, bb322
bb390:
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
  JAL zero, bb384
bb391:
  ADDI s4, zero, 1
  JAL zero, bb388
bb392:
  ADDI s6, zero, 57
  LW t4, 20(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s4, s6, zero
  JAL zero, bb386
bb393:
  ADDI s3, zero, 1
  JAL zero, bb320
bb394:
  ADDI s4, zero, 57
  SLT s4, s4, s6
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb318
bb395:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb311
bb396:
  ADDI s3, zero, 1
  JAL zero, bb315
bb397:
  ADDI s3, zero, 1
  JAL zero, bb313
bb398:
  ADDI s2, zero, 20
  JAL zero, bb310
bb399:
  ADDI s2, zero, 1
  JAL zero, bb308
bb400:
  ADDI s2, zero, 1
  JAL zero, bb306
bb401:
  ADDI s2, zero, 10
  JAL zero, bb310
bb402:
  ADDI s2, zero, 1
  JAL zero, bb303
bb403:
  ADDI s4, zero, 48
  SUBW s4, s10, s4
  LA s10, num
  SW s4, 0(s10)
  # implict jump to bb404
bb404:
  CALL getch
  ADD t4, a0, zero
  SW t4, 32(sp)
  LA s10, last_char
  LW t4, 32(sp)
  SW t4, 0(s10)
  LW t4, 32(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb412
  # implict jump to bb405
bb405:
  ADD s10, zero, zero
  # implict jump to bb406
bb406:
  BNE s10, zero, bb411
  # implict jump to bb407
bb407:
  ADD s10, zero, zero
  # implict jump to bb408
bb408:
  BNE s10, zero, bb410
  # implict jump to bb409
bb409:
  LA s10, cur_token
  SW zero, 0(s10)
  JAL zero, bb255
bb410:
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
  JAL zero, bb404
bb411:
  ADDI s10, zero, 1
  JAL zero, bb408
bb412:
  ADDI s11, zero, 57
  LW t4, 32(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb406
bb413:
  ADDI s4, zero, 1
  JAL zero, bb253
bb414:
  ADDI s4, zero, 57
  SLT s4, s4, s10
  XORI s4, s4, 1
  ADD s11, s4, zero
  JAL zero, bb251
bb415:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb244
bb416:
  ADDI s11, zero, 1
  JAL zero, bb248
bb417:
  ADDI s11, zero, 1
  JAL zero, bb246
bb418:
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
  JAL zero, bb270
bb419:
  ADDI t4, zero, 256
  SW t4, 44(sp)
  # implict jump to bb420
bb420:
  LW t4, 44(sp)
  ADD s10, t4, zero
  ADDI s11, zero, 1
  SUBW t4, s10, s11
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLLIW s10, t4, 2
  ADDI t5, sp, 176
  ADD s10, t5, s10
  SW zero, 0(s10)
  # implict jump to bb421
bb421:
  LW t4, 40(sp)
  BNE t4, zero, bb422
  JAL zero, bb242
bb422:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb420
bb423:
  ADDI t4, zero, 256
  SW t4, 52(sp)
  # implict jump to bb424
bb424:
  LW t4, 52(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLLIW s9, t4, 2
  ADDI t5, sp, 1200
  ADD s9, t5, s9
  SW zero, 0(s9)
  # implict jump to bb425
bb425:
  LW t4, 48(sp)
  BNE t4, zero, bb426
  JAL zero, bb241
bb426:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb424
bb427:
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, num
  SW s5, 0(s6)
  # implict jump to bb428
bb428:
  CALL getch
  ADD t4, a0, zero
  SW t4, 60(sp)
  LA s6, last_char
  LW t4, 60(sp)
  SW t4, 0(s6)
  LW t4, 60(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb436
  # implict jump to bb429
bb429:
  ADD s6, zero, zero
  # implict jump to bb430
bb430:
  BNE s6, zero, bb435
  # implict jump to bb431
bb431:
  ADD s6, zero, zero
  # implict jump to bb432
bb432:
  BNE s6, zero, bb434
  # implict jump to bb433
bb433:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb237
bb434:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 60(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb428
bb435:
  ADDI s6, zero, 1
  JAL zero, bb432
bb436:
  ADDI s7, zero, 57
  LW t4, 60(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb430
bb437:
  ADDI s6, zero, 1
  JAL zero, bb235
bb438:
  ADDI s7, zero, 57
  SLT s7, s7, s5
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb233
bb439:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb226
bb440:
  ADDI s6, zero, 1
  JAL zero, bb230
bb441:
  ADDI s6, zero, 1
  JAL zero, bb228
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
  # implict jump to bb444
bb444:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb470
  # implict jump to bb445
bb445:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb446
bb446:
  BNE s1, zero, bb469
  # implict jump to bb447
bb447:
  ADD s1, zero, zero
  # implict jump to bb448
bb448:
  BNE s1, zero, bb468
  # implict jump to bb449
bb449:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb467
  # implict jump to bb450
bb450:
  ADD s1, zero, zero
  # implict jump to bb451
bb451:
  BNE s1, zero, bb466
  # implict jump to bb452
bb452:
  ADD s1, zero, zero
  # implict jump to bb453
bb453:
  BNE s1, zero, bb456
  # implict jump to bb454
bb454:
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
  # implict jump to bb455
bb455:
  LA s1, cur_token
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb456:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb457
bb457:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb465
  # implict jump to bb458
bb458:
  ADD s1, zero, zero
  # implict jump to bb459
bb459:
  BNE s1, zero, bb464
  # implict jump to bb460
bb460:
  ADD s1, zero, zero
  # implict jump to bb461
bb461:
  BNE s1, zero, bb463
  # implict jump to bb462
bb462:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb455
bb463:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb457
bb464:
  ADDI s1, zero, 1
  JAL zero, bb461
bb465:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb459
bb466:
  ADDI s1, zero, 1
  JAL zero, bb453
bb467:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb451
bb468:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb444
bb469:
  ADDI s1, zero, 1
  JAL zero, bb448
bb470:
  ADDI s1, zero, 1
  JAL zero, bb446
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
