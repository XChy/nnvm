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
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s3, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  ADDI t4, zero, 256
  SW t4, 32(sp)
  # implict jump to bb1
bb1:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  BNE t4, zero, bb179
  # implict jump to bb2
bb2:
  ADDI t4, zero, 256
  SW t4, 0(sp)
  # implict jump to bb3
bb3:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  BNE t4, zero, bb178
  # implict jump to bb4
bb4:
  LA s4, cur_token
  LW s4, 0(s4)
  BNE s4, zero, bb177
  # implict jump to bb5
bb5:
  LA s4, num
  LW s4, 0(s4)
  LW s5, 1176(sp)
  ADDIW s5, s5, 1
  SW s5, 1176(sp)
  SLLIW s5, s5, 2
  ADDI t5, sp, 1176
  ADD s5, t5, s5
  SW s4, 0(s5)
  # implict jump to bb6
bb6:
  LA s4, last_char
  LW s4, 0(s4)
  XORI s5, s4, 32
  SLTIU s5, s5, 1
  BNE s5, zero, bb176
  # implict jump to bb7
bb7:
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  # implict jump to bb8
bb8:
  BNE s4, zero, bb175
  # implict jump to bb9
bb9:
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  BNE s4, zero, bb174
  # implict jump to bb11
bb11:
  LA s4, last_char
  LW s4, 0(s4)
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb173
  # implict jump to bb12
bb12:
  ADD s5, zero, zero
  # implict jump to bb13
bb13:
  BNE s5, zero, bb172
  # implict jump to bb14
bb14:
  ADD s4, zero, zero
  # implict jump to bb15
bb15:
  BNE s4, zero, bb162
  # implict jump to bb16
bb16:
  LA s4, last_char
  LW s4, 0(s4)
  LA s5, other
  SW s4, 0(s5)
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  LA s4, cur_token
  ADDI s5, zero, 1
  SW s5, 0(s4)
  # implict jump to bb17
bb17:
  LA s5, cur_token
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb18
bb18:
  ADD t4, s7, zero
  SW t4, 20(sp)
  ADD t4, s6, zero
  SW t4, 24(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  LA s11, cur_token
  LW s11, 0(s11)
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb60
  # implict jump to bb19
bb19:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb59
  # implict jump to bb20
bb20:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb21
bb21:
  BNE s0, zero, bb58
  # implict jump to bb22
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  BNE s0, zero, bb57
  # implict jump to bb24
bb24:
  LA s0, last_char
  LW s0, 0(s0)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb56
  # implict jump to bb25
bb25:
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  BNE s1, zero, bb55
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  BNE s0, zero, bb45
  # implict jump to bb29
bb29:
  LA s0, last_char
  LW s0, 0(s0)
  LA s1, other
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb30
bb30:
  LA s1, cur_token
  # implict jump to bb31
bb31:
  LW s1, 152(sp)
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
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
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s3, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb33:
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
  # implict jump to bb34
bb34:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb35
bb35:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb42
  # implict jump to bb36
bb36:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb41
  # implict jump to bb37
bb37:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb40
  # implict jump to bb38
bb38:
  ADD s1, zero, zero
  # implict jump to bb39
bb39:
  LW s2, 1176(sp)
  ADDIW s2, s2, 1
  SW s2, 1176(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 1176
  ADD s2, t5, s2
  SW s1, 0(s2)
  JAL zero, bb31
bb40:
  REMW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb39
bb41:
  DIVW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb39
bb42:
  MULW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb39
bb43:
  SUBW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb39
bb44:
  ADDW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb39
bb45:
  LA s0, last_char
  LW s0, 0(s0)
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
  JAL zero, bb30
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
  ADDI s0, zero, 1
  JAL zero, bb28
bb56:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb26
bb57:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb19
bb58:
  ADDI s0, zero, 1
  JAL zero, bb23
bb59:
  ADDI s0, zero, 1
  JAL zero, bb21
bb60:
  LA s11, other
  LW t4, 0(s11)
  SW t4, 16(sp)
  LW t4, 16(sp)
  XORI s0, t4, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb161
  # implict jump to bb61
bb61:
  LW t4, 16(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  # implict jump to bb62
bb62:
  BNE s0, zero, bb160
  # implict jump to bb63
bb63:
  LW t4, 16(sp)
  XORI s0, t4, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb159
  # implict jump to bb64
bb64:
  LW t4, 16(sp)
  XORI s0, t4, 47
  SLTIU s0, s0, 1
  # implict jump to bb65
bb65:
  BNE s0, zero, bb158
  # implict jump to bb66
bb66:
  LW t4, 16(sp)
  XORI s0, t4, 37
  SLTIU s0, s0, 1
  # implict jump to bb67
bb67:
  BNE s0, zero, bb157
  # implict jump to bb68
bb68:
  ADD s0, zero, zero
  # implict jump to bb69
bb69:
  ADD t4, s0, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTU s1, zero, t4
  XORI s1, s1, 1
  BNE s1, zero, bb19
  # implict jump to bb70
bb70:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb156
  # implict jump to bb71
bb71:
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  # implict jump to bb72
bb72:
  BNE s1, zero, bb155
  # implict jump to bb73
bb73:
  ADD s1, zero, zero
  # implict jump to bb74
bb74:
  BNE s1, zero, bb154
  # implict jump to bb75
bb75:
  LA s1, last_char
  LW s1, 0(s1)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb153
  # implict jump to bb76
bb76:
  ADD s2, zero, zero
  # implict jump to bb77
bb77:
  BNE s2, zero, bb152
  # implict jump to bb78
bb78:
  ADD s1, zero, zero
  # implict jump to bb79
bb79:
  BNE s1, zero, bb142
  # implict jump to bb80
bb80:
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
  # implict jump to bb81
bb81:
  LA s2, cur_token
  LW t4, 28(sp)
  ADD s2, t4, zero
  LW t4, 24(sp)
  ADD s3, t4, zero
  LW t4, 20(sp)
  ADD s4, t4, zero
  # implict jump to bb82
bb82:
  ADD s0, s4, zero
  ADD s11, s3, zero
  ADD s8, s2, zero
  LW s9, 152(sp)
  BNE s9, zero, bb127
  # implict jump to bb83
bb83:
  ADD s9, zero, zero
  # implict jump to bb84
bb84:
  BNE s9, zero, bb115
  # implict jump to bb85
bb85:
  LW s1, 152(sp)
  ADDIW s1, s1, 1
  SW s1, 152(sp)
  SLLIW s1, s1, 2
  ADDI t4, sp, 152
  ADD s1, t4, s1
  LW t4, 16(sp)
  SW t4, 0(s1)
  LA s1, cur_token
  LW s1, 0(s1)
  BNE s1, zero, bb114
  # implict jump to bb86
bb86:
  LA s1, num
  LW s1, 0(s1)
  LW s9, 1176(sp)
  ADDIW s9, s9, 1
  SW s9, 1176(sp)
  SLLIW s9, s9, 2
  ADDI t5, sp, 1176
  ADD s9, t5, s9
  SW s1, 0(s9)
  # implict jump to bb87
bb87:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s9, s1, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb113
  # implict jump to bb88
bb88:
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  # implict jump to bb89
bb89:
  BNE s1, zero, bb112
  # implict jump to bb90
bb90:
  ADD s1, zero, zero
  # implict jump to bb91
bb91:
  BNE s1, zero, bb111
  # implict jump to bb92
bb92:
  LA s1, last_char
  LW s1, 0(s1)
  SLTI s9, s1, 48
  XORI s9, s9, 1
  BNE s9, zero, bb110
  # implict jump to bb93
bb93:
  ADD s9, zero, zero
  # implict jump to bb94
bb94:
  BNE s9, zero, bb109
  # implict jump to bb95
bb95:
  ADD s1, zero, zero
  # implict jump to bb96
bb96:
  BNE s1, zero, bb99
  # implict jump to bb97
bb97:
  LA s1, last_char
  LW s1, 0(s1)
  LA s9, other
  SW s1, 0(s9)
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  LA s1, cur_token
  ADDI s9, zero, 1
  SW s9, 0(s1)
  # implict jump to bb98
bb98:
  LA s9, cur_token
  ADD s5, s8, zero
  ADD s6, s11, zero
  ADD s7, s0, zero
  JAL zero, bb18
bb99:
  LA s1, last_char
  LW s1, 0(s1)
  ADDI s9, zero, 48
  SUBW s1, s1, s9
  LA s9, num
  SW s1, 0(s9)
  # implict jump to bb100
bb100:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  SLTI s9, s1, 48
  XORI s9, s9, 1
  BNE s9, zero, bb108
  # implict jump to bb101
bb101:
  ADD s9, zero, zero
  # implict jump to bb102
bb102:
  BNE s9, zero, bb107
  # implict jump to bb103
bb103:
  ADD s9, zero, zero
  # implict jump to bb104
bb104:
  BNE s9, zero, bb106
  # implict jump to bb105
bb105:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb98
bb106:
  LA s5, num
  LW s5, 0(s5)
  ADDI s6, zero, 10
  MULW s5, s5, s6
  ADDW s1, s5, s1
  ADDI s5, zero, 48
  SUBW s1, s1, s5
  LA s5, num
  SW s1, 0(s5)
  JAL zero, bb100
bb107:
  ADDI s9, zero, 1
  JAL zero, bb104
bb108:
  ADDI s10, zero, 57
  SLT s10, s10, s1
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb102
bb109:
  ADDI s1, zero, 1
  JAL zero, bb96
bb110:
  ADDI s10, zero, 57
  SLT s1, s10, s1
  XORI s1, s1, 1
  ADD s9, s1, zero
  JAL zero, bb94
bb111:
  CALL getch
  ADD s1, a0, zero
  LA s5, last_char
  SW s1, 0(s5)
  JAL zero, bb87
bb112:
  ADDI s1, zero, 1
  JAL zero, bb91
bb113:
  ADDI s1, zero, 1
  JAL zero, bb89
bb114:
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
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s3, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  LW s0, 152(sp)
  SLLIW s1, s0, 2
  ADDI t5, sp, 152
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDI s5, zero, 1
  SUBW s0, s0, s5
  SW s0, 152(sp)
  LW s0, 1176(sp)
  SLLIW s5, s0, 2
  ADDI t5, sp, 1176
  ADD s5, t5, s5
  LW s5, 0(s5)
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
  BNE s0, zero, bb126
  # implict jump to bb116
bb116:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb125
  # implict jump to bb117
bb117:
  XORI s0, s1, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb118
bb118:
  XORI s0, s1, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb119
bb119:
  XORI s0, s1, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb120
bb120:
  ADD s0, zero, zero
  # implict jump to bb121
bb121:
  LW s7, 1176(sp)
  ADDIW s7, s7, 1
  SW s7, 1176(sp)
  SLLIW s7, s7, 2
  ADDI t5, sp, 1176
  ADD s7, t5, s7
  SW s0, 0(s7)
  ADD s2, s5, zero
  ADD s3, s6, zero
  ADD s4, s1, zero
  JAL zero, bb82
bb122:
  REMW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb121
bb123:
  DIVW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb121
bb124:
  MULW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb121
bb125:
  SUBW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb121
bb126:
  ADDW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb121
bb127:
  LW s10, 152(sp)
  SLLIW s10, s10, 2
  ADDI t5, sp, 152
  ADD s10, t5, s10
  LW s10, 0(s10)
  XORI s1, s10, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb141
  # implict jump to bb128
bb128:
  XORI s1, s10, 45
  SLTIU s1, s1, 1
  # implict jump to bb129
bb129:
  BNE s1, zero, bb140
  # implict jump to bb130
bb130:
  XORI s1, s10, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb139
  # implict jump to bb131
bb131:
  XORI s1, s10, 47
  SLTIU s1, s1, 1
  # implict jump to bb132
bb132:
  BNE s1, zero, bb138
  # implict jump to bb133
bb133:
  XORI s1, s10, 37
  SLTIU s1, s1, 1
  # implict jump to bb134
bb134:
  BNE s1, zero, bb137
  # implict jump to bb135
bb135:
  ADD s1, zero, zero
  # implict jump to bb136
bb136:
  LW t4, 12(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s9, s1, zero
  JAL zero, bb84
bb137:
  ADDI s1, zero, 20
  JAL zero, bb136
bb138:
  ADDI s1, zero, 1
  JAL zero, bb134
bb139:
  ADDI s1, zero, 1
  JAL zero, bb132
bb140:
  ADDI s1, zero, 10
  JAL zero, bb136
bb141:
  ADDI s1, zero, 1
  JAL zero, bb129
bb142:
  LA s1, last_char
  LW s1, 0(s1)
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb143
bb143:
  CALL getch
  ADD t4, a0, zero
  SW t4, 40(sp)
  LA s2, last_char
  LW t4, 40(sp)
  SW t4, 0(s2)
  LW t4, 40(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb151
  # implict jump to bb144
bb144:
  ADD s2, zero, zero
  # implict jump to bb145
bb145:
  BNE s2, zero, bb150
  # implict jump to bb146
bb146:
  ADD s2, zero, zero
  # implict jump to bb147
bb147:
  BNE s2, zero, bb149
  # implict jump to bb148
bb148:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb81
bb149:
  LA s0, num
  LW s0, 0(s0)
  ADDI s1, zero, 10
  MULW s0, s0, s1
  LW t4, 40(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb143
bb150:
  ADDI s2, zero, 1
  JAL zero, bb147
bb151:
  ADDI s3, zero, 57
  LW t4, 40(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb145
bb152:
  ADDI s1, zero, 1
  JAL zero, bb79
bb153:
  ADDI s3, zero, 57
  SLT s1, s3, s1
  XORI s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb77
bb154:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb70
bb155:
  ADDI s1, zero, 1
  JAL zero, bb74
bb156:
  ADDI s1, zero, 1
  JAL zero, bb72
bb157:
  ADDI s0, zero, 20
  JAL zero, bb69
bb158:
  ADDI s0, zero, 1
  JAL zero, bb67
bb159:
  ADDI s0, zero, 1
  JAL zero, bb65
bb160:
  ADDI s0, zero, 10
  JAL zero, bb69
bb161:
  ADDI s0, zero, 1
  JAL zero, bb62
bb162:
  LA s4, last_char
  LW s4, 0(s4)
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  LA s5, num
  SW s4, 0(s5)
  # implict jump to bb163
bb163:
  CALL getch
  ADD t4, a0, zero
  SW t4, 8(sp)
  LA s5, last_char
  LW t4, 8(sp)
  SW t4, 0(s5)
  LW t4, 8(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb171
  # implict jump to bb164
bb164:
  ADD s5, zero, zero
  # implict jump to bb165
bb165:
  BNE s5, zero, bb170
  # implict jump to bb166
bb166:
  ADD s5, zero, zero
  # implict jump to bb167
bb167:
  BNE s5, zero, bb169
  # implict jump to bb168
bb168:
  LA s5, cur_token
  SW zero, 0(s5)
  JAL zero, bb17
bb169:
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
  JAL zero, bb163
bb170:
  ADDI s5, zero, 1
  JAL zero, bb167
bb171:
  ADDI s6, zero, 57
  LW t4, 8(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb165
bb172:
  ADDI s4, zero, 1
  JAL zero, bb15
bb173:
  ADDI s6, zero, 57
  SLT s4, s6, s4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb13
bb174:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb6
bb175:
  ADDI s4, zero, 1
  JAL zero, bb10
bb176:
  ADDI s4, zero, 1
  JAL zero, bb8
bb177:
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
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s3, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb178:
  ADDI s0, zero, 1
  LW t4, 4(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 152
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb3
bb179:
  ADDI s0, zero, 1
  LW t4, 36(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 1176
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb1
eval_op:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb190
  # implict jump to bb181
bb181:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb189
  # implict jump to bb182
bb182:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb188
  # implict jump to bb183
bb183:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb187
  # implict jump to bb184
bb184:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb186
  # implict jump to bb185
bb185:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb186:
  REMW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb187:
  DIVW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb188:
  MULW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb189:
  SUBW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb190:
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
  BNE s1, zero, bb207
  # implict jump to bb195
bb195:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  # implict jump to bb196
bb196:
  BNE s1, zero, bb206
  # implict jump to bb197
bb197:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb205
  # implict jump to bb198
bb198:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  # implict jump to bb199
bb199:
  BNE s1, zero, bb204
  # implict jump to bb200
bb200:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb201
bb201:
  BNE s0, zero, bb203
  # implict jump to bb202
bb202:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb203:
  ADDI a0, zero, 20
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb204:
  ADDI s0, zero, 1
  JAL zero, bb201
bb205:
  ADDI s1, zero, 1
  JAL zero, bb199
bb206:
  ADDI a0, zero, 10
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb207:
  ADDI s1, zero, 1
  JAL zero, bb196
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
  BNE s1, zero, bb214
  # implict jump to bb210
bb210:
  ADD s1, zero, zero
  # implict jump to bb211
bb211:
  BNE s1, zero, bb213
  # implict jump to bb212
bb212:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb214:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb211
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb220
  # implict jump to bb216
bb216:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb217
bb217:
  BNE s0, zero, bb219
  # implict jump to bb218
bb218:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb220:
  ADDI s0, zero, 1
  JAL zero, bb217
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
  # implict jump to bb222
bb222:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb431
  # implict jump to bb223
bb223:
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  # implict jump to bb224
bb224:
  BNE s1, zero, bb430
  # implict jump to bb225
bb225:
  ADD s1, zero, zero
  # implict jump to bb226
bb226:
  BNE s1, zero, bb429
  # implict jump to bb227
bb227:
  LA s1, last_char
  LW s1, 0(s1)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb428
  # implict jump to bb228
bb228:
  ADD s2, zero, zero
  # implict jump to bb229
bb229:
  BNE s2, zero, bb427
  # implict jump to bb230
bb230:
  ADD s1, zero, zero
  # implict jump to bb231
bb231:
  BNE s1, zero, bb417
  # implict jump to bb232
bb232:
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
  # implict jump to bb233
bb233:
  LA s2, cur_token
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb234
bb234:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  BNE t4, zero, bb236
  # implict jump to bb235
bb235:
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
bb236:
  ADDI t4, zero, 256
  SW t4, 44(sp)
  # implict jump to bb237
bb237:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  BNE t4, zero, bb416
  # implict jump to bb238
bb238:
  ADDI t4, zero, 256
  SW t4, 0(sp)
  # implict jump to bb239
bb239:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  BNE t4, zero, bb415
  # implict jump to bb240
bb240:
  LA s8, cur_token
  LW s8, 0(s8)
  BNE s8, zero, bb414
  # implict jump to bb241
bb241:
  LA s8, num
  LW s8, 0(s8)
  LW s9, 168(sp)
  ADDIW s9, s9, 1
  SW s9, 168(sp)
  SLLIW s9, s9, 2
  ADDI t5, sp, 168
  ADD s9, t5, s9
  SW s8, 0(s9)
  # implict jump to bb242
bb242:
  LA s8, last_char
  LW s8, 0(s8)
  XORI s9, s8, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb413
  # implict jump to bb243
bb243:
  XORI s8, s8, 10
  SLTIU s8, s8, 1
  # implict jump to bb244
bb244:
  BNE s8, zero, bb412
  # implict jump to bb245
bb245:
  ADD s8, zero, zero
  # implict jump to bb246
bb246:
  BNE s8, zero, bb411
  # implict jump to bb247
bb247:
  LA s8, last_char
  LW s8, 0(s8)
  SLTI s9, s8, 48
  XORI s9, s9, 1
  BNE s9, zero, bb410
  # implict jump to bb248
bb248:
  ADD s9, zero, zero
  # implict jump to bb249
bb249:
  BNE s9, zero, bb409
  # implict jump to bb250
bb250:
  ADD s8, zero, zero
  # implict jump to bb251
bb251:
  BNE s8, zero, bb399
  # implict jump to bb252
bb252:
  LA s8, last_char
  LW s8, 0(s8)
  LA s9, other
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  LA s9, last_char
  SW s8, 0(s9)
  LA s8, cur_token
  ADDI s9, zero, 1
  SW s9, 0(s8)
  # implict jump to bb253
bb253:
  LA s9, cur_token
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb254
bb254:
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
  BNE s4, zero, bb297
  # implict jump to bb255
bb255:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb296
  # implict jump to bb256
bb256:
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  # implict jump to bb257
bb257:
  BNE s1, zero, bb295
  # implict jump to bb258
bb258:
  ADD s1, zero, zero
  # implict jump to bb259
bb259:
  BNE s1, zero, bb294
  # implict jump to bb260
bb260:
  LA s1, last_char
  LW s1, 0(s1)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb293
  # implict jump to bb261
bb261:
  ADD s2, zero, zero
  # implict jump to bb262
bb262:
  BNE s2, zero, bb292
  # implict jump to bb263
bb263:
  ADD s1, zero, zero
  # implict jump to bb264
bb264:
  BNE s1, zero, bb282
  # implict jump to bb265
bb265:
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
  # implict jump to bb266
bb266:
  LA s2, cur_token
  # implict jump to bb267
bb267:
  LW s2, 1192(sp)
  BNE s2, zero, bb270
  # implict jump to bb268
bb268:
  LW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  # implict jump to bb269
bb269:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  LW t4, 48(sp)
  SUBW s0, t4, s0
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb234
bb270:
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
  SUBW s2, s2, s5
  SW s2, 168(sp)
  SLLIW s5, s2, 2
  ADDI t5, sp, 168
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s2, s2, s6
  SW s2, 168(sp)
  XORI s2, s3, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb281
  # implict jump to bb271
bb271:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb280
  # implict jump to bb272
bb272:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb279
  # implict jump to bb273
bb273:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb278
  # implict jump to bb274
bb274:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb277
  # implict jump to bb275
bb275:
  ADD s2, zero, zero
  # implict jump to bb276
bb276:
  LW s3, 168(sp)
  ADDIW s3, s3, 1
  SW s3, 168(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 168
  ADD s3, t5, s3
  SW s2, 0(s3)
  JAL zero, bb267
bb277:
  REMW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb276
bb278:
  DIVW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb276
bb279:
  MULW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb276
bb280:
  SUBW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb276
bb281:
  ADDW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb276
bb282:
  LA s1, last_char
  LW s1, 0(s1)
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb283
bb283:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb291
  # implict jump to bb284
bb284:
  ADD s2, zero, zero
  # implict jump to bb285
bb285:
  BNE s2, zero, bb290
  # implict jump to bb286
bb286:
  ADD s2, zero, zero
  # implict jump to bb287
bb287:
  BNE s2, zero, bb289
  # implict jump to bb288
bb288:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb266
bb289:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb283
bb290:
  ADDI s2, zero, 1
  JAL zero, bb287
bb291:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb285
bb292:
  ADDI s1, zero, 1
  JAL zero, bb264
bb293:
  ADDI s3, zero, 57
  SLT s1, s3, s1
  XORI s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb262
bb294:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb255
bb295:
  ADDI s1, zero, 1
  JAL zero, bb259
bb296:
  ADDI s1, zero, 1
  JAL zero, bb257
bb297:
  LA s4, other
  LW t4, 0(s4)
  SW t4, 4(sp)
  LW t4, 4(sp)
  XORI s5, t4, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb398
  # implict jump to bb298
bb298:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s5, s5, 1
  # implict jump to bb299
bb299:
  BNE s5, zero, bb397
  # implict jump to bb300
bb300:
  LW t4, 4(sp)
  XORI s5, t4, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb396
  # implict jump to bb301
bb301:
  LW t4, 4(sp)
  XORI s5, t4, 47
  SLTIU s5, s5, 1
  # implict jump to bb302
bb302:
  BNE s5, zero, bb395
  # implict jump to bb303
bb303:
  LW t4, 4(sp)
  XORI s5, t4, 37
  SLTIU s5, s5, 1
  # implict jump to bb304
bb304:
  BNE s5, zero, bb394
  # implict jump to bb305
bb305:
  ADD s5, zero, zero
  # implict jump to bb306
bb306:
  ADD t4, s5, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb255
  # implict jump to bb307
bb307:
  LA s6, last_char
  LW s6, 0(s6)
  XORI s7, s6, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb393
  # implict jump to bb308
bb308:
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  # implict jump to bb309
bb309:
  BNE s6, zero, bb392
  # implict jump to bb310
bb310:
  ADD s6, zero, zero
  # implict jump to bb311
bb311:
  BNE s6, zero, bb391
  # implict jump to bb312
bb312:
  LA s6, last_char
  LW s6, 0(s6)
  SLTI s7, s6, 48
  XORI s7, s7, 1
  BNE s7, zero, bb390
  # implict jump to bb313
bb313:
  ADD s7, zero, zero
  # implict jump to bb314
bb314:
  BNE s7, zero, bb389
  # implict jump to bb315
bb315:
  ADD s2, zero, zero
  # implict jump to bb316
bb316:
  BNE s2, zero, bb379
  # implict jump to bb317
bb317:
  LA s2, last_char
  LW s2, 0(s2)
  LA s6, other
  SW s2, 0(s6)
  CALL getch
  ADD s2, a0, zero
  LA s6, last_char
  SW s2, 0(s6)
  LA s2, cur_token
  ADDI s6, zero, 1
  SW s6, 0(s2)
  # implict jump to bb318
bb318:
  LA s6, cur_token
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 12(sp)
  ADD s7, t4, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  # implict jump to bb319
bb319:
  ADD s5, s8, zero
  ADD s4, s7, zero
  ADD s0, s6, zero
  LW s1, 1192(sp)
  BNE s1, zero, bb364
  # implict jump to bb320
bb320:
  ADD s1, zero, zero
  # implict jump to bb321
bb321:
  BNE s1, zero, bb352
  # implict jump to bb322
bb322:
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
  BNE s1, zero, bb351
  # implict jump to bb323
bb323:
  LA s1, num
  LW s1, 0(s1)
  LW s2, 168(sp)
  ADDIW s2, s2, 1
  SW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb324
bb324:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb350
  # implict jump to bb325
bb325:
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  # implict jump to bb326
bb326:
  BNE s1, zero, bb349
  # implict jump to bb327
bb327:
  ADD s1, zero, zero
  # implict jump to bb328
bb328:
  BNE s1, zero, bb348
  # implict jump to bb329
bb329:
  LA s1, last_char
  LW s1, 0(s1)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb347
  # implict jump to bb330
bb330:
  ADD s2, zero, zero
  # implict jump to bb331
bb331:
  BNE s2, zero, bb346
  # implict jump to bb332
bb332:
  ADD s1, zero, zero
  # implict jump to bb333
bb333:
  BNE s1, zero, bb336
  # implict jump to bb334
bb334:
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
  # implict jump to bb335
bb335:
  LA s2, cur_token
  ADD s9, s0, zero
  ADD s10, s4, zero
  ADD s11, s5, zero
  JAL zero, bb254
bb336:
  LA s1, last_char
  LW s1, 0(s1)
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb337
bb337:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb345
  # implict jump to bb338
bb338:
  ADD s2, zero, zero
  # implict jump to bb339
bb339:
  BNE s2, zero, bb344
  # implict jump to bb340
bb340:
  ADD s2, zero, zero
  # implict jump to bb341
bb341:
  BNE s2, zero, bb343
  # implict jump to bb342
bb342:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb335
bb343:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb337
bb344:
  ADDI s2, zero, 1
  JAL zero, bb341
bb345:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb339
bb346:
  ADDI s1, zero, 1
  JAL zero, bb333
bb347:
  ADDI s3, zero, 57
  SLT s1, s3, s1
  XORI s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb331
bb348:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb324
bb349:
  ADDI s1, zero, 1
  JAL zero, bb328
bb350:
  ADDI s1, zero, 1
  JAL zero, bb326
bb351:
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
  JAL zero, bb269
bb352:
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
  SUBW s1, s1, s4
  SW s1, 168(sp)
  SLLIW s4, s1, 2
  ADDI t5, sp, 168
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s1, s1, s5
  SW s1, 168(sp)
  XORI s1, s2, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb363
  # implict jump to bb353
bb353:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb362
  # implict jump to bb354
bb354:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb361
  # implict jump to bb355
bb355:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb360
  # implict jump to bb356
bb356:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb359
  # implict jump to bb357
bb357:
  ADD s1, zero, zero
  # implict jump to bb358
bb358:
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
  JAL zero, bb319
bb359:
  REMW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb358
bb360:
  DIVW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb358
bb361:
  MULW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb358
bb362:
  SUBW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb358
bb363:
  ADDW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb358
bb364:
  LW s3, 1192(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 1192
  ADD s3, t5, s3
  LW s3, 0(s3)
  XORI s2, s3, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb378
  # implict jump to bb365
bb365:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  # implict jump to bb366
bb366:
  BNE s2, zero, bb377
  # implict jump to bb367
bb367:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb376
  # implict jump to bb368
bb368:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  # implict jump to bb369
bb369:
  BNE s2, zero, bb375
  # implict jump to bb370
bb370:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  # implict jump to bb371
bb371:
  BNE s2, zero, bb374
  # implict jump to bb372
bb372:
  ADD s2, zero, zero
  # implict jump to bb373
bb373:
  LW t4, 24(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb321
bb374:
  ADDI s2, zero, 20
  JAL zero, bb373
bb375:
  ADDI s2, zero, 1
  JAL zero, bb371
bb376:
  ADDI s2, zero, 1
  JAL zero, bb369
bb377:
  ADDI s2, zero, 10
  JAL zero, bb373
bb378:
  ADDI s2, zero, 1
  JAL zero, bb366
bb379:
  LA s2, last_char
  LW s2, 0(s2)
  ADDI s6, zero, 48
  SUBW s2, s2, s6
  LA s6, num
  SW s2, 0(s6)
  # implict jump to bb380
bb380:
  CALL getch
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s6, last_char
  LW t4, 20(sp)
  SW t4, 0(s6)
  LW t4, 20(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb388
  # implict jump to bb381
bb381:
  ADD s6, zero, zero
  # implict jump to bb382
bb382:
  BNE s6, zero, bb387
  # implict jump to bb383
bb383:
  ADD s6, zero, zero
  # implict jump to bb384
bb384:
  BNE s6, zero, bb386
  # implict jump to bb385
bb385:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb318
bb386:
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
  JAL zero, bb380
bb387:
  ADDI s6, zero, 1
  JAL zero, bb384
bb388:
  ADDI s7, zero, 57
  LW t4, 20(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb382
bb389:
  ADDI s2, zero, 1
  JAL zero, bb316
bb390:
  ADDI s2, zero, 57
  SLT s2, s2, s6
  XORI s2, s2, 1
  ADD s7, s2, zero
  JAL zero, bb314
bb391:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb307
bb392:
  ADDI s6, zero, 1
  JAL zero, bb311
bb393:
  ADDI s6, zero, 1
  JAL zero, bb309
bb394:
  ADDI s5, zero, 20
  JAL zero, bb306
bb395:
  ADDI s5, zero, 1
  JAL zero, bb304
bb396:
  ADDI s5, zero, 1
  JAL zero, bb302
bb397:
  ADDI s5, zero, 10
  JAL zero, bb306
bb398:
  ADDI s5, zero, 1
  JAL zero, bb299
bb399:
  LA s8, last_char
  LW s8, 0(s8)
  ADDI s9, zero, 48
  SUBW s8, s8, s9
  LA s9, num
  SW s8, 0(s9)
  # implict jump to bb400
bb400:
  CALL getch
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s9, last_char
  LW t4, 28(sp)
  SW t4, 0(s9)
  LW t4, 28(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb408
  # implict jump to bb401
bb401:
  ADD s9, zero, zero
  # implict jump to bb402
bb402:
  BNE s9, zero, bb407
  # implict jump to bb403
bb403:
  ADD s9, zero, zero
  # implict jump to bb404
bb404:
  BNE s9, zero, bb406
  # implict jump to bb405
bb405:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb253
bb406:
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
  JAL zero, bb400
bb407:
  ADDI s9, zero, 1
  JAL zero, bb404
bb408:
  ADDI s10, zero, 57
  LW t4, 28(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb402
bb409:
  ADDI s8, zero, 1
  JAL zero, bb251
bb410:
  ADDI s10, zero, 57
  SLT s8, s10, s8
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb249
bb411:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb242
bb412:
  ADDI s8, zero, 1
  JAL zero, bb246
bb413:
  ADDI s8, zero, 1
  JAL zero, bb244
bb414:
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
  JAL zero, bb269
bb415:
  ADDI s0, zero, 1
  LW t4, 36(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 1192
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb239
bb416:
  ADDI s0, zero, 1
  LW t4, 40(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 168
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb237
bb417:
  LA s1, last_char
  LW s1, 0(s1)
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb418
bb418:
  CALL getch
  ADD t4, a0, zero
  SW t4, 52(sp)
  LA s2, last_char
  LW t4, 52(sp)
  SW t4, 0(s2)
  LW t4, 52(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb426
  # implict jump to bb419
bb419:
  ADD s2, zero, zero
  # implict jump to bb420
bb420:
  BNE s2, zero, bb425
  # implict jump to bb421
bb421:
  ADD s2, zero, zero
  # implict jump to bb422
bb422:
  BNE s2, zero, bb424
  # implict jump to bb423
bb423:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb233
bb424:
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
  JAL zero, bb418
bb425:
  ADDI s2, zero, 1
  JAL zero, bb422
bb426:
  ADDI s3, zero, 57
  LW t4, 52(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb420
bb427:
  ADDI s1, zero, 1
  JAL zero, bb231
bb428:
  ADDI s3, zero, 57
  SLT s1, s3, s1
  XORI s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb229
bb429:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb222
bb430:
  ADDI s1, zero, 1
  JAL zero, bb226
bb431:
  ADDI s1, zero, 1
  JAL zero, bb224
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
  # implict jump to bb434
bb434:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb460
  # implict jump to bb435
bb435:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb436
bb436:
  BNE s0, zero, bb459
  # implict jump to bb437
bb437:
  ADD s0, zero, zero
  # implict jump to bb438
bb438:
  BNE s0, zero, bb458
  # implict jump to bb439
bb439:
  LA s0, last_char
  LW s0, 0(s0)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb457
  # implict jump to bb440
bb440:
  ADD s1, zero, zero
  # implict jump to bb441
bb441:
  BNE s1, zero, bb456
  # implict jump to bb442
bb442:
  ADD s0, zero, zero
  # implict jump to bb443
bb443:
  BNE s0, zero, bb446
  # implict jump to bb444
bb444:
  LA s0, last_char
  LW s0, 0(s0)
  LA s1, other
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb445
bb445:
  LA s1, cur_token
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb446:
  LA s0, last_char
  LW s0, 0(s0)
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb447
bb447:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb455
  # implict jump to bb448
bb448:
  ADD s1, zero, zero
  # implict jump to bb449
bb449:
  BNE s1, zero, bb454
  # implict jump to bb450
bb450:
  ADD s1, zero, zero
  # implict jump to bb451
bb451:
  BNE s1, zero, bb453
  # implict jump to bb452
bb452:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb445
bb453:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb447
bb454:
  ADDI s1, zero, 1
  JAL zero, bb451
bb455:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb449
bb456:
  ADDI s0, zero, 1
  JAL zero, bb443
bb457:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb441
bb458:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb434
bb459:
  ADDI s0, zero, 1
  JAL zero, bb438
bb460:
  ADDI s0, zero, 1
  JAL zero, bb436
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
