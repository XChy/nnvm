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
  SD s0, 48(sp)
  SD ra, 56(sp)
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
  ADDI t4, zero, 256
  SW t4, 0(sp)
  # implict jump to bb1
bb1:
  LW t4, 0(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 1176
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW t4, 4(sp)
  BNE t4, zero, bb178
  # implict jump to bb2
bb2:
  ADDI t4, zero, 256
  SW t4, 8(sp)
  # implict jump to bb3
bb3:
  LW t4, 8(sp)
  ADD s3, t4, zero
  ADDI s4, zero, 1
  SUBW t4, s3, s4
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLLIW s4, t4, 2
  ADDI t4, sp, 152
  ADD s4, t4, s4
  SW zero, 0(s4)
  LW t4, 12(sp)
  BNE t4, zero, bb177
  # implict jump to bb4
bb4:
  LA s4, cur_token
  LW s4, 0(s4)
  BNE s4, zero, bb176
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
  BNE s5, zero, bb175
  # implict jump to bb7
bb7:
  XORI s5, s4, 10
  SLTIU s5, s5, 1
  # implict jump to bb8
bb8:
  BNE s5, zero, bb174
  # implict jump to bb9
bb9:
  ADD s5, zero, zero
  # implict jump to bb10
bb10:
  BNE s5, zero, bb173
  # implict jump to bb11
bb11:
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb172
  # implict jump to bb12
bb12:
  ADD s5, zero, zero
  # implict jump to bb13
bb13:
  BNE s5, zero, bb171
  # implict jump to bb14
bb14:
  ADD s5, zero, zero
  # implict jump to bb15
bb15:
  BNE s5, zero, bb161
  # implict jump to bb16
bb16:
  LA s5, last_char
  LW s5, 0(s5)
  LA s6, other
  SW s5, 0(s6)
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  LA s5, cur_token
  ADDI s6, zero, 1
  SW s6, 0(s5)
  # implict jump to bb17
bb17:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb18
bb18:
  ADD t4, s7, zero
  SW t4, 28(sp)
  ADD t4, s6, zero
  SW t4, 32(sp)
  ADD t4, s5, zero
  SW t4, 36(sp)
  LA s11, cur_token
  LW s11, 0(s11)
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb59
  # implict jump to bb19
bb19:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb58
  # implict jump to bb20
bb20:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb21
bb21:
  BNE s1, zero, bb57
  # implict jump to bb22
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  BNE s1, zero, bb56
  # implict jump to bb24
bb24:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb55
  # implict jump to bb25
bb25:
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  BNE s1, zero, bb54
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  BNE s1, zero, bb44
  # implict jump to bb29
bb29:
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
  # implict jump to bb30
bb30:
  LW s1, 152(sp)
  BNE s1, zero, bb32
  # implict jump to bb31
bb31:
  LW s1, 1176(sp)
  SLLIW s1, s1, 2
  ADDI a0, sp, 1176
  ADD s1, a0, s1
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD s0, 48(sp)
  LD ra, 56(sp)
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
  SUBW s4, s1, s4
  SW s4, 1176(sp)
  SLLIW s4, s4, 2
  ADDI t5, sp, 1176
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 2
  SUBW s1, s1, s5
  SW s1, 1176(sp)
  XORI s1, s2, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb33
bb33:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb42
  # implict jump to bb34
bb34:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb41
  # implict jump to bb35
bb35:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb40
  # implict jump to bb36
bb36:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb39
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
  JAL zero, bb30
bb39:
  REMW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb40:
  DIVW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb41:
  MULW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb42:
  SUBW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb43:
  ADDW s2, s4, s3
  ADD s1, s2, zero
  JAL zero, bb38
bb44:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb45
bb45:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb53
  # implict jump to bb46
bb46:
  ADD s1, zero, zero
  # implict jump to bb47
bb47:
  BNE s1, zero, bb52
  # implict jump to bb48
bb48:
  ADD s1, zero, zero
  # implict jump to bb49
bb49:
  BNE s1, zero, bb51
  # implict jump to bb50
bb50:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb30
bb51:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb45
bb52:
  ADDI s1, zero, 1
  JAL zero, bb49
bb53:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb47
bb54:
  ADDI s1, zero, 1
  JAL zero, bb28
bb55:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb26
bb56:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb19
bb57:
  ADDI s1, zero, 1
  JAL zero, bb23
bb58:
  ADDI s1, zero, 1
  JAL zero, bb21
bb59:
  LA s11, other
  LW t4, 0(s11)
  SW t4, 24(sp)
  LW t4, 24(sp)
  XORI s0, t4, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb160
  # implict jump to bb60
bb60:
  LW t4, 24(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  # implict jump to bb61
bb61:
  BNE s0, zero, bb159
  # implict jump to bb62
bb62:
  LW t4, 24(sp)
  XORI s0, t4, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb158
  # implict jump to bb63
bb63:
  LW t4, 24(sp)
  XORI s0, t4, 47
  SLTIU s0, s0, 1
  # implict jump to bb64
bb64:
  BNE s0, zero, bb157
  # implict jump to bb65
bb65:
  LW t4, 24(sp)
  XORI s0, t4, 37
  SLTIU s0, s0, 1
  # implict jump to bb66
bb66:
  BNE s0, zero, bb156
  # implict jump to bb67
bb67:
  ADD s0, zero, zero
  # implict jump to bb68
bb68:
  ADD t4, s0, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTU s1, zero, t4
  XORI s1, s1, 1
  BNE s1, zero, bb19
  # implict jump to bb69
bb69:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb155
  # implict jump to bb70
bb70:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb71
bb71:
  BNE s2, zero, bb154
  # implict jump to bb72
bb72:
  ADD s2, zero, zero
  # implict jump to bb73
bb73:
  BNE s2, zero, bb153
  # implict jump to bb74
bb74:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb152
  # implict jump to bb75
bb75:
  ADD s2, zero, zero
  # implict jump to bb76
bb76:
  BNE s2, zero, bb151
  # implict jump to bb77
bb77:
  ADD s2, zero, zero
  # implict jump to bb78
bb78:
  BNE s2, zero, bb141
  # implict jump to bb79
bb79:
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
  # implict jump to bb80
bb80:
  LW t4, 36(sp)
  ADD s2, t4, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  LW t4, 28(sp)
  ADD s4, t4, zero
  # implict jump to bb81
bb81:
  ADD s0, s4, zero
  ADD s11, s3, zero
  ADD s8, s2, zero
  LW s9, 152(sp)
  BNE s9, zero, bb126
  # implict jump to bb82
bb82:
  ADD s10, zero, zero
  # implict jump to bb83
bb83:
  BNE s10, zero, bb114
  # implict jump to bb84
bb84:
  LW s1, 152(sp)
  ADDIW s1, s1, 1
  SW s1, 152(sp)
  SLLIW s1, s1, 2
  ADDI t4, sp, 152
  ADD s1, t4, s1
  LW t4, 24(sp)
  SW t4, 0(s1)
  LA s1, cur_token
  LW s1, 0(s1)
  BNE s1, zero, bb113
  # implict jump to bb85
bb85:
  LA s1, num
  LW s1, 0(s1)
  LW s9, 1176(sp)
  ADDIW s9, s9, 1
  SW s9, 1176(sp)
  SLLIW s9, s9, 2
  ADDI t5, sp, 1176
  ADD s9, t5, s9
  SW s1, 0(s9)
  # implict jump to bb86
bb86:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s9, s1, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb112
  # implict jump to bb87
bb87:
  XORI s9, s1, 10
  SLTIU s9, s9, 1
  # implict jump to bb88
bb88:
  BNE s9, zero, bb111
  # implict jump to bb89
bb89:
  ADD s9, zero, zero
  # implict jump to bb90
bb90:
  BNE s9, zero, bb110
  # implict jump to bb91
bb91:
  SLTI s9, s1, 48
  XORI s9, s9, 1
  BNE s9, zero, bb109
  # implict jump to bb92
bb92:
  ADD s9, zero, zero
  # implict jump to bb93
bb93:
  BNE s9, zero, bb108
  # implict jump to bb94
bb94:
  ADD s9, zero, zero
  # implict jump to bb95
bb95:
  BNE s9, zero, bb98
  # implict jump to bb96
bb96:
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
  # implict jump to bb97
bb97:
  ADD s5, s8, zero
  ADD s6, s11, zero
  ADD s7, s0, zero
  JAL zero, bb18
bb98:
  ADDI s9, zero, 48
  SUBW s1, s1, s9
  LA s9, num
  SW s1, 0(s9)
  # implict jump to bb99
bb99:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  SLTI s9, s1, 48
  XORI s9, s9, 1
  BNE s9, zero, bb107
  # implict jump to bb100
bb100:
  ADD s9, zero, zero
  # implict jump to bb101
bb101:
  BNE s9, zero, bb106
  # implict jump to bb102
bb102:
  ADD s9, zero, zero
  # implict jump to bb103
bb103:
  BNE s9, zero, bb105
  # implict jump to bb104
bb104:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb97
bb105:
  LA s5, num
  LW s5, 0(s5)
  ADDI s6, zero, 10
  MULW s5, s5, s6
  ADDW s1, s5, s1
  ADDI s5, zero, 48
  SUBW s1, s1, s5
  LA s5, num
  SW s1, 0(s5)
  JAL zero, bb99
bb106:
  ADDI s9, zero, 1
  JAL zero, bb103
bb107:
  ADDI s10, zero, 57
  SLT s10, s10, s1
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb101
bb108:
  ADDI s9, zero, 1
  JAL zero, bb95
bb109:
  ADDI s10, zero, 57
  SLT s10, s10, s1
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb93
bb110:
  CALL getch
  ADD s1, a0, zero
  LA s5, last_char
  SW s1, 0(s5)
  JAL zero, bb86
bb111:
  ADDI s9, zero, 1
  JAL zero, bb90
bb112:
  ADDI s9, zero, 1
  JAL zero, bb88
bb113:
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
  LD s0, 48(sp)
  LD ra, 56(sp)
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
bb114:
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
  SUBW s6, s0, s6
  SW s6, 1176(sp)
  SLLIW s6, s6, 2
  ADDI t5, sp, 1176
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDI s7, zero, 2
  SUBW s0, s0, s7
  SW s0, 1176(sp)
  XORI s0, s1, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb125
  # implict jump to bb115
bb115:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb116
bb116:
  XORI s0, s1, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb117
bb117:
  XORI s0, s1, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb118
bb118:
  XORI s0, s1, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb121
  # implict jump to bb119
bb119:
  ADD s0, zero, zero
  # implict jump to bb120
bb120:
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
  JAL zero, bb81
bb121:
  REMW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb120
bb122:
  DIVW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb120
bb123:
  MULW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb120
bb124:
  SUBW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb120
bb125:
  ADDW s7, s6, s5
  ADD s0, s7, zero
  JAL zero, bb120
bb126:
  SLLIW s9, s9, 2
  ADDI t5, sp, 152
  ADD s9, t5, s9
  LW s9, 0(s9)
  XORI s1, s9, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb140
  # implict jump to bb127
bb127:
  XORI s1, s9, 45
  SLTIU s1, s1, 1
  # implict jump to bb128
bb128:
  BNE s1, zero, bb139
  # implict jump to bb129
bb129:
  XORI s1, s9, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb138
  # implict jump to bb130
bb130:
  XORI s1, s9, 47
  SLTIU s1, s1, 1
  # implict jump to bb131
bb131:
  BNE s1, zero, bb137
  # implict jump to bb132
bb132:
  XORI s1, s9, 37
  SLTIU s1, s1, 1
  # implict jump to bb133
bb133:
  BNE s1, zero, bb136
  # implict jump to bb134
bb134:
  ADD s1, zero, zero
  # implict jump to bb135
bb135:
  LW t4, 20(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s10, s1, zero
  JAL zero, bb83
bb136:
  ADDI s1, zero, 20
  JAL zero, bb135
bb137:
  ADDI s1, zero, 1
  JAL zero, bb133
bb138:
  ADDI s1, zero, 1
  JAL zero, bb131
bb139:
  ADDI s1, zero, 10
  JAL zero, bb135
bb140:
  ADDI s1, zero, 1
  JAL zero, bb128
bb141:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb142
bb142:
  CALL getch
  ADD t4, a0, zero
  SW t4, 40(sp)
  LA s2, last_char
  LW t4, 40(sp)
  SW t4, 0(s2)
  LW t4, 40(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb150
  # implict jump to bb143
bb143:
  ADD s2, zero, zero
  # implict jump to bb144
bb144:
  BNE s2, zero, bb149
  # implict jump to bb145
bb145:
  ADD s2, zero, zero
  # implict jump to bb146
bb146:
  BNE s2, zero, bb148
  # implict jump to bb147
bb147:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb80
bb148:
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
  JAL zero, bb142
bb149:
  ADDI s2, zero, 1
  JAL zero, bb146
bb150:
  ADDI s3, zero, 57
  LW t4, 40(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb144
bb151:
  ADDI s2, zero, 1
  JAL zero, bb78
bb152:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb76
bb153:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb69
bb154:
  ADDI s2, zero, 1
  JAL zero, bb73
bb155:
  ADDI s2, zero, 1
  JAL zero, bb71
bb156:
  ADDI s0, zero, 20
  JAL zero, bb68
bb157:
  ADDI s0, zero, 1
  JAL zero, bb66
bb158:
  ADDI s0, zero, 1
  JAL zero, bb64
bb159:
  ADDI s0, zero, 10
  JAL zero, bb68
bb160:
  ADDI s0, zero, 1
  JAL zero, bb61
bb161:
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  LA s5, num
  SW s4, 0(s5)
  # implict jump to bb162
bb162:
  CALL getch
  ADD t4, a0, zero
  SW t4, 16(sp)
  LA s5, last_char
  LW t4, 16(sp)
  SW t4, 0(s5)
  LW t4, 16(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb170
  # implict jump to bb163
bb163:
  ADD s5, zero, zero
  # implict jump to bb164
bb164:
  BNE s5, zero, bb169
  # implict jump to bb165
bb165:
  ADD s5, zero, zero
  # implict jump to bb166
bb166:
  BNE s5, zero, bb168
  # implict jump to bb167
bb167:
  LA s5, cur_token
  SW zero, 0(s5)
  JAL zero, bb17
bb168:
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
  JAL zero, bb162
bb169:
  ADDI s5, zero, 1
  JAL zero, bb166
bb170:
  ADDI s6, zero, 57
  LW t4, 16(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb164
bb171:
  ADDI s5, zero, 1
  JAL zero, bb15
bb172:
  ADDI s6, zero, 57
  SLT s6, s6, s4
  XORI s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb13
bb173:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  JAL zero, bb6
bb174:
  ADDI s5, zero, 1
  JAL zero, bb10
bb175:
  ADDI s5, zero, 1
  JAL zero, bb8
bb176:
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
  LD s0, 48(sp)
  LD ra, 56(sp)
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
bb177:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb3
bb178:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb1
eval_op:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb189
  # implict jump to bb180
bb180:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb188
  # implict jump to bb181
bb181:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb187
  # implict jump to bb182
bb182:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb186
  # implict jump to bb183
bb183:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb185
  # implict jump to bb184
bb184:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb185:
  REMW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb186:
  DIVW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb187:
  MULW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb188:
  SUBW s0, a1, a2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb189:
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
  BNE s1, zero, bb206
  # implict jump to bb194
bb194:
  XORI s1, s0, 45
  SLTIU s1, s1, 1
  # implict jump to bb195
bb195:
  BNE s1, zero, bb205
  # implict jump to bb196
bb196:
  XORI s1, s0, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb204
  # implict jump to bb197
bb197:
  XORI s1, s0, 47
  SLTIU s1, s1, 1
  # implict jump to bb198
bb198:
  BNE s1, zero, bb203
  # implict jump to bb199
bb199:
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb200
bb200:
  BNE s0, zero, bb202
  # implict jump to bb201
bb201:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb202:
  ADDI a0, zero, 20
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb203:
  ADDI s0, zero, 1
  JAL zero, bb200
bb204:
  ADDI s1, zero, 1
  JAL zero, bb198
bb205:
  ADDI a0, zero, 10
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb206:
  ADDI s1, zero, 1
  JAL zero, bb195
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
  BNE s1, zero, bb213
  # implict jump to bb209
bb209:
  ADD s1, zero, zero
  # implict jump to bb210
bb210:
  BNE s1, zero, bb212
  # implict jump to bb211
bb211:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb212:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb210
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb219
  # implict jump to bb215
bb215:
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  # implict jump to bb216
bb216:
  BNE s0, zero, bb218
  # implict jump to bb217
bb217:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb218:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  ADDI s0, zero, 1
  JAL zero, bb216
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
  # implict jump to bb221
bb221:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb430
  # implict jump to bb222
bb222:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb223
bb223:
  BNE s2, zero, bb429
  # implict jump to bb224
bb224:
  ADD s2, zero, zero
  # implict jump to bb225
bb225:
  BNE s2, zero, bb428
  # implict jump to bb226
bb226:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb427
  # implict jump to bb227
bb227:
  ADD s2, zero, zero
  # implict jump to bb228
bb228:
  BNE s2, zero, bb426
  # implict jump to bb229
bb229:
  ADD s2, zero, zero
  # implict jump to bb230
bb230:
  BNE s2, zero, bb416
  # implict jump to bb231
bb231:
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
  # implict jump to bb232
bb232:
  LW t4, 56(sp)
  BNE t4, zero, bb234
  # implict jump to bb233
bb233:
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
bb234:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb235
bb235:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADDI t4, zero, 256
  SW t4, 44(sp)
  # implict jump to bb236
bb236:
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
  BNE t4, zero, bb415
  # implict jump to bb237
bb237:
  ADDI t4, zero, 256
  SW t4, 0(sp)
  # implict jump to bb238
bb238:
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
  BNE t4, zero, bb414
  # implict jump to bb239
bb239:
  LA s8, cur_token
  LW s8, 0(s8)
  BNE s8, zero, bb413
  # implict jump to bb240
bb240:
  LA s8, num
  LW s8, 0(s8)
  LW s9, 168(sp)
  ADDIW s9, s9, 1
  SW s9, 168(sp)
  SLLIW s9, s9, 2
  ADDI t5, sp, 168
  ADD s9, t5, s9
  SW s8, 0(s9)
  # implict jump to bb241
bb241:
  LA s8, last_char
  LW s8, 0(s8)
  XORI s9, s8, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb412
  # implict jump to bb242
bb242:
  XORI s9, s8, 10
  SLTIU s9, s9, 1
  # implict jump to bb243
bb243:
  BNE s9, zero, bb411
  # implict jump to bb244
bb244:
  ADD s9, zero, zero
  # implict jump to bb245
bb245:
  BNE s9, zero, bb410
  # implict jump to bb246
bb246:
  SLTI s9, s8, 48
  XORI s9, s9, 1
  BNE s9, zero, bb409
  # implict jump to bb247
bb247:
  ADD s9, zero, zero
  # implict jump to bb248
bb248:
  BNE s9, zero, bb408
  # implict jump to bb249
bb249:
  ADD s9, zero, zero
  # implict jump to bb250
bb250:
  BNE s9, zero, bb398
  # implict jump to bb251
bb251:
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
  # implict jump to bb252
bb252:
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb253
bb253:
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
  BNE s4, zero, bb296
  # implict jump to bb254
bb254:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb295
  # implict jump to bb255
bb255:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb256
bb256:
  BNE s2, zero, bb294
  # implict jump to bb257
bb257:
  ADD s2, zero, zero
  # implict jump to bb258
bb258:
  BNE s2, zero, bb293
  # implict jump to bb259
bb259:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb292
  # implict jump to bb260
bb260:
  ADD s2, zero, zero
  # implict jump to bb261
bb261:
  BNE s2, zero, bb291
  # implict jump to bb262
bb262:
  ADD s2, zero, zero
  # implict jump to bb263
bb263:
  BNE s2, zero, bb281
  # implict jump to bb264
bb264:
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
  # implict jump to bb265
bb265:
  LW s2, 1192(sp)
  BNE s2, zero, bb269
  # implict jump to bb266
bb266:
  LW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  # implict jump to bb267
bb267:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  LW t4, 48(sp)
  SUBW s0, t4, s0
  BNE s0, zero, bb268
  JAL zero, bb233
bb268:
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb235
bb269:
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
  BNE s2, zero, bb280
  # implict jump to bb270
bb270:
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb279
  # implict jump to bb271
bb271:
  XORI s2, s3, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb278
  # implict jump to bb272
bb272:
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb277
  # implict jump to bb273
bb273:
  XORI s2, s3, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb276
  # implict jump to bb274
bb274:
  ADD s2, zero, zero
  # implict jump to bb275
bb275:
  LW s3, 168(sp)
  ADDIW s3, s3, 1
  SW s3, 168(sp)
  SLLIW s3, s3, 2
  ADDI t5, sp, 168
  ADD s3, t5, s3
  SW s2, 0(s3)
  JAL zero, bb265
bb276:
  REMW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb275
bb277:
  DIVW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb275
bb278:
  MULW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb275
bb279:
  SUBW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb275
bb280:
  ADDW s3, s5, s4
  ADD s2, s3, zero
  JAL zero, bb275
bb281:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb282
bb282:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb290
  # implict jump to bb283
bb283:
  ADD s2, zero, zero
  # implict jump to bb284
bb284:
  BNE s2, zero, bb289
  # implict jump to bb285
bb285:
  ADD s2, zero, zero
  # implict jump to bb286
bb286:
  BNE s2, zero, bb288
  # implict jump to bb287
bb287:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb265
bb288:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb282
bb289:
  ADDI s2, zero, 1
  JAL zero, bb286
bb290:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb284
bb291:
  ADDI s2, zero, 1
  JAL zero, bb263
bb292:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb261
bb293:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb254
bb294:
  ADDI s2, zero, 1
  JAL zero, bb258
bb295:
  ADDI s2, zero, 1
  JAL zero, bb256
bb296:
  LA s4, other
  LW t4, 0(s4)
  SW t4, 4(sp)
  LW t4, 4(sp)
  XORI s5, t4, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb397
  # implict jump to bb297
bb297:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s5, s5, 1
  # implict jump to bb298
bb298:
  BNE s5, zero, bb396
  # implict jump to bb299
bb299:
  LW t4, 4(sp)
  XORI s5, t4, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb395
  # implict jump to bb300
bb300:
  LW t4, 4(sp)
  XORI s5, t4, 47
  SLTIU s5, s5, 1
  # implict jump to bb301
bb301:
  BNE s5, zero, bb394
  # implict jump to bb302
bb302:
  LW t4, 4(sp)
  XORI s5, t4, 37
  SLTIU s5, s5, 1
  # implict jump to bb303
bb303:
  BNE s5, zero, bb393
  # implict jump to bb304
bb304:
  ADD s5, zero, zero
  # implict jump to bb305
bb305:
  ADD t4, s5, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb254
  # implict jump to bb306
bb306:
  LA s6, last_char
  LW s6, 0(s6)
  XORI s7, s6, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb392
  # implict jump to bb307
bb307:
  XORI s7, s6, 10
  SLTIU s7, s7, 1
  # implict jump to bb308
bb308:
  BNE s7, zero, bb391
  # implict jump to bb309
bb309:
  ADD s7, zero, zero
  # implict jump to bb310
bb310:
  BNE s7, zero, bb390
  # implict jump to bb311
bb311:
  SLTI s7, s6, 48
  XORI s7, s7, 1
  BNE s7, zero, bb389
  # implict jump to bb312
bb312:
  ADD s7, zero, zero
  # implict jump to bb313
bb313:
  BNE s7, zero, bb388
  # implict jump to bb314
bb314:
  ADD s2, zero, zero
  # implict jump to bb315
bb315:
  BNE s2, zero, bb378
  # implict jump to bb316
bb316:
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
  # implict jump to bb317
bb317:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 12(sp)
  ADD s7, t4, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  # implict jump to bb318
bb318:
  ADD s5, s8, zero
  ADD s4, s7, zero
  ADD s0, s6, zero
  LW s1, 1192(sp)
  BNE s1, zero, bb363
  # implict jump to bb319
bb319:
  ADD s3, zero, zero
  # implict jump to bb320
bb320:
  BNE s3, zero, bb351
  # implict jump to bb321
bb321:
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
  BNE s1, zero, bb350
  # implict jump to bb322
bb322:
  LA s1, num
  LW s1, 0(s1)
  LW s2, 168(sp)
  ADDIW s2, s2, 1
  SW s2, 168(sp)
  SLLIW s2, s2, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  SW s1, 0(s2)
  # implict jump to bb323
bb323:
  LA s1, last_char
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb349
  # implict jump to bb324
bb324:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  # implict jump to bb325
bb325:
  BNE s2, zero, bb348
  # implict jump to bb326
bb326:
  ADD s2, zero, zero
  # implict jump to bb327
bb327:
  BNE s2, zero, bb347
  # implict jump to bb328
bb328:
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb346
  # implict jump to bb329
bb329:
  ADD s2, zero, zero
  # implict jump to bb330
bb330:
  BNE s2, zero, bb345
  # implict jump to bb331
bb331:
  ADD s2, zero, zero
  # implict jump to bb332
bb332:
  BNE s2, zero, bb335
  # implict jump to bb333
bb333:
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
  # implict jump to bb334
bb334:
  ADD s9, s0, zero
  ADD s10, s4, zero
  ADD s11, s5, zero
  JAL zero, bb253
bb335:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb336
bb336:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb344
  # implict jump to bb337
bb337:
  ADD s2, zero, zero
  # implict jump to bb338
bb338:
  BNE s2, zero, bb343
  # implict jump to bb339
bb339:
  ADD s2, zero, zero
  # implict jump to bb340
bb340:
  BNE s2, zero, bb342
  # implict jump to bb341
bb341:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb334
bb342:
  LA s2, num
  LW s2, 0(s2)
  ADDI s3, zero, 10
  MULW s2, s2, s3
  ADDW s1, s2, s1
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  JAL zero, bb336
bb343:
  ADDI s2, zero, 1
  JAL zero, bb340
bb344:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb338
bb345:
  ADDI s2, zero, 1
  JAL zero, bb332
bb346:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb330
bb347:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb323
bb348:
  ADDI s2, zero, 1
  JAL zero, bb327
bb349:
  ADDI s2, zero, 1
  JAL zero, bb325
bb350:
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
  JAL zero, bb267
bb351:
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
  BNE s1, zero, bb362
  # implict jump to bb352
bb352:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb361
  # implict jump to bb353
bb353:
  XORI s1, s2, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb360
  # implict jump to bb354
bb354:
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb359
  # implict jump to bb355
bb355:
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb358
  # implict jump to bb356
bb356:
  ADD s1, zero, zero
  # implict jump to bb357
bb357:
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
  JAL zero, bb318
bb358:
  REMW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb357
bb359:
  DIVW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb357
bb360:
  MULW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb357
bb361:
  SUBW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb357
bb362:
  ADDW s5, s4, s3
  ADD s1, s5, zero
  JAL zero, bb357
bb363:
  SLLIW s1, s1, 2
  ADDI t5, sp, 1192
  ADD s1, t5, s1
  LW s1, 0(s1)
  XORI s2, s1, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb377
  # implict jump to bb364
bb364:
  XORI s2, s1, 45
  SLTIU s2, s2, 1
  # implict jump to bb365
bb365:
  BNE s2, zero, bb376
  # implict jump to bb366
bb366:
  XORI s2, s1, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb375
  # implict jump to bb367
bb367:
  XORI s2, s1, 47
  SLTIU s2, s2, 1
  # implict jump to bb368
bb368:
  BNE s2, zero, bb374
  # implict jump to bb369
bb369:
  XORI s1, s1, 37
  SLTIU s1, s1, 1
  # implict jump to bb370
bb370:
  BNE s1, zero, bb373
  # implict jump to bb371
bb371:
  ADD s1, zero, zero
  # implict jump to bb372
bb372:
  LW t4, 24(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s3, s1, zero
  JAL zero, bb320
bb373:
  ADDI s1, zero, 20
  JAL zero, bb372
bb374:
  ADDI s1, zero, 1
  JAL zero, bb370
bb375:
  ADDI s2, zero, 1
  JAL zero, bb368
bb376:
  ADDI s1, zero, 10
  JAL zero, bb372
bb377:
  ADDI s2, zero, 1
  JAL zero, bb365
bb378:
  ADDI s2, zero, 48
  SUBW s2, s6, s2
  LA s6, num
  SW s2, 0(s6)
  # implict jump to bb379
bb379:
  CALL getch
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s6, last_char
  LW t4, 20(sp)
  SW t4, 0(s6)
  LW t4, 20(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb387
  # implict jump to bb380
bb380:
  ADD s6, zero, zero
  # implict jump to bb381
bb381:
  BNE s6, zero, bb386
  # implict jump to bb382
bb382:
  ADD s6, zero, zero
  # implict jump to bb383
bb383:
  BNE s6, zero, bb385
  # implict jump to bb384
bb384:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb317
bb385:
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
  JAL zero, bb379
bb386:
  ADDI s6, zero, 1
  JAL zero, bb383
bb387:
  ADDI s7, zero, 57
  LW t4, 20(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb381
bb388:
  ADDI s2, zero, 1
  JAL zero, bb315
bb389:
  ADDI s2, zero, 57
  SLT s2, s2, s6
  XORI s2, s2, 1
  ADD s7, s2, zero
  JAL zero, bb313
bb390:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb306
bb391:
  ADDI s7, zero, 1
  JAL zero, bb310
bb392:
  ADDI s7, zero, 1
  JAL zero, bb308
bb393:
  ADDI s5, zero, 20
  JAL zero, bb305
bb394:
  ADDI s5, zero, 1
  JAL zero, bb303
bb395:
  ADDI s5, zero, 1
  JAL zero, bb301
bb396:
  ADDI s5, zero, 10
  JAL zero, bb305
bb397:
  ADDI s5, zero, 1
  JAL zero, bb298
bb398:
  ADDI s9, zero, 48
  SUBW s8, s8, s9
  LA s9, num
  SW s8, 0(s9)
  # implict jump to bb399
bb399:
  CALL getch
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s9, last_char
  LW t4, 28(sp)
  SW t4, 0(s9)
  LW t4, 28(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb407
  # implict jump to bb400
bb400:
  ADD s9, zero, zero
  # implict jump to bb401
bb401:
  BNE s9, zero, bb406
  # implict jump to bb402
bb402:
  ADD s9, zero, zero
  # implict jump to bb403
bb403:
  BNE s9, zero, bb405
  # implict jump to bb404
bb404:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb252
bb405:
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
  JAL zero, bb399
bb406:
  ADDI s9, zero, 1
  JAL zero, bb403
bb407:
  ADDI s10, zero, 57
  LW t4, 28(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb401
bb408:
  ADDI s9, zero, 1
  JAL zero, bb250
bb409:
  ADDI s10, zero, 57
  SLT s10, s10, s8
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb248
bb410:
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  JAL zero, bb241
bb411:
  ADDI s9, zero, 1
  JAL zero, bb245
bb412:
  ADDI s9, zero, 1
  JAL zero, bb243
bb413:
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
  JAL zero, bb267
bb414:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb238
bb415:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb236
bb416:
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  LA s2, num
  SW s1, 0(s2)
  # implict jump to bb417
bb417:
  CALL getch
  ADD t4, a0, zero
  SW t4, 52(sp)
  LA s2, last_char
  LW t4, 52(sp)
  SW t4, 0(s2)
  LW t4, 52(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb425
  # implict jump to bb418
bb418:
  ADD s2, zero, zero
  # implict jump to bb419
bb419:
  BNE s2, zero, bb424
  # implict jump to bb420
bb420:
  ADD s2, zero, zero
  # implict jump to bb421
bb421:
  BNE s2, zero, bb423
  # implict jump to bb422
bb422:
  LA s2, cur_token
  SW zero, 0(s2)
  JAL zero, bb232
bb423:
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
  JAL zero, bb417
bb424:
  ADDI s2, zero, 1
  JAL zero, bb421
bb425:
  ADDI s3, zero, 57
  LW t4, 52(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb419
bb426:
  ADDI s2, zero, 1
  JAL zero, bb230
bb427:
  ADDI s3, zero, 57
  SLT s3, s3, s1
  XORI s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb228
bb428:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb221
bb429:
  ADDI s2, zero, 1
  JAL zero, bb225
bb430:
  ADDI s2, zero, 1
  JAL zero, bb223
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
  # implict jump to bb433
bb433:
  LA s0, last_char
  LW s0, 0(s0)
  XORI s1, s0, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb459
  # implict jump to bb434
bb434:
  XORI s1, s0, 10
  SLTIU s1, s1, 1
  # implict jump to bb435
bb435:
  BNE s1, zero, bb458
  # implict jump to bb436
bb436:
  ADD s1, zero, zero
  # implict jump to bb437
bb437:
  BNE s1, zero, bb457
  # implict jump to bb438
bb438:
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb456
  # implict jump to bb439
bb439:
  ADD s1, zero, zero
  # implict jump to bb440
bb440:
  BNE s1, zero, bb455
  # implict jump to bb441
bb441:
  ADD s1, zero, zero
  # implict jump to bb442
bb442:
  BNE s1, zero, bb445
  # implict jump to bb443
bb443:
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
  # implict jump to bb444
bb444:
  LA s1, cur_token
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb445:
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  # implict jump to bb446
bb446:
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb454
  # implict jump to bb447
bb447:
  ADD s1, zero, zero
  # implict jump to bb448
bb448:
  BNE s1, zero, bb453
  # implict jump to bb449
bb449:
  ADD s1, zero, zero
  # implict jump to bb450
bb450:
  BNE s1, zero, bb452
  # implict jump to bb451
bb451:
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb444
bb452:
  LA s1, num
  LW s1, 0(s1)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, num
  SW s0, 0(s1)
  JAL zero, bb446
bb453:
  ADDI s1, zero, 1
  JAL zero, bb450
bb454:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb448
bb455:
  ADDI s1, zero, 1
  JAL zero, bb442
bb456:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb440
bb457:
  CALL getch
  LA s0, last_char
  SW a0, 0(s0)
  JAL zero, bb433
bb458:
  ADDI s1, zero, 1
  JAL zero, bb437
bb459:
  ADDI s1, zero, 1
  JAL zero, bb435
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
