.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDIW t0, t0, 1952
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getch
  # implict jump to bb1
bb1:   # loop depth 1
  LA s1, last_char
  LW s2, 0(s1)
  XORI s1, s2, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb210
  # implict jump to bb2
bb2:   # loop depth 1
  XORI s1, s2, 10
  SLTIU s1, s1, 1
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s1, zero, bb209
  # implict jump to bb4
bb4:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE s1, zero, bb208
  # implict jump to bb6
bb6:   # loop depth 0
  SLTI s1, s2, 48
  XORI s1, s1, 1
  BNE s1, zero, bb207
  # implict jump to bb7
bb7:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s1, zero, bb206
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s1, zero, bb196
  # implict jump to bb11
bb11:   # loop depth 0
  LA s1, last_char
  LA s2, other
  LA s3, last_char
  LA s4, cur_token
  LW s1, 0(s1)
  ADDI s5, zero, 1
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s3)
  SW s5, 0(s4)
  # implict jump to bb12
bb12:   # loop depth 0
  BNE s0, zero, bb14
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LUI t0, 1
  ADDIW t0, t0, -1952
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb14:   # loop depth 0
  # implict jump to bb15
bb15:   # loop depth 1
  ADDI s1, zero, 256
  ADD s10, s0, zero
  # implict jump to bb16
bb16:   # loop depth 2
  SLLIW s0, s1, 2
  ADDIW s1, s1, -1
  ADDI t6, sp, 96
  ADD s0, t6, s0
  SW zero, -4(s0)
  BNE s1, zero, bb195
  # implict jump to bb17
bb17:   # loop depth 1
  ADDI s0, zero, 256
  # implict jump to bb18
bb18:   # loop depth 2
  SLLIW s1, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 1120
  ADD s1, t6, s1
  SW zero, -4(s1)
  BNE s0, zero, bb194
  # implict jump to bb19
bb19:   # loop depth 1
  LA s0, cur_token
  LW s0, 0(s0)
  BNE s0, zero, bb193
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, num
  LW s0, 0(s0)
  LW s1, 96(sp)
  SLLIW s2, s1, 2
  ADDIW s1, s1, 1
  ADDI t6, sp, 96
  ADD s2, t6, s2
  SW s1, 96(sp)
  SW s0, 4(s2)
  # implict jump to bb21
bb21:   # loop depth 2
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb192
  # implict jump to bb22
bb22:   # loop depth 2
  XORI s0, s1, 10
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
  SLTI s0, s1, 48
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
  LA s1, other
  LA s2, last_char
  LA s3, cur_token
  LW s0, 0(s0)
  ADDI s4, zero, 1
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s2)
  SW s4, 0(s3)
  # implict jump to bb32
bb32:   # loop depth 1
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  LA s3, cur_token
  LW s3, 0(s3)
  XORI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb76
  # implict jump to bb34
bb34:   # loop depth 2
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb75
  # implict jump to bb35
bb35:   # loop depth 2
  XORI s0, s1, 10
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
  SLTI s0, s1, 48
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
  LA s1, other
  LA s2, last_char
  LA s3, cur_token
  LW s0, 0(s0)
  ADDI s4, zero, 1
  SW s0, 0(s1)
  CALL getch
  SW a0, 0(s2)
  SW s4, 0(s3)
  # implict jump to bb45
bb45:   # loop depth 2
  LW a0, 1120(sp)
  BNE a0, zero, bb49
  # implict jump to bb46
bb46:   # loop depth 1
  LW a0, 96(sp)
  SLLIW a0, a0, 2
  ADDI t6, sp, 96
  ADD a0, t6, a0
  LW s1, 0(a0)
  # implict jump to bb47
bb47:   # loop depth 1
  ADDIW s0, s10, -1
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb48
  JAL zero, bb13
bb48:   # loop depth 1
  JAL zero, bb15
bb49:   # loop depth 2
  LW a0, 1120(sp)
  SLLIW s0, a0, 2
  ADDIW s1, a0, -1
  ADDI a0, sp, 1120
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW s1, 1120(sp)
  XORI s1, a0, 43
  LW s0, 96(sp)
  SLTIU s4, s1, 1
  SLLIW s1, s0, 2
  ADDIW s2, s0, -1
  ADDI t6, sp, 96
  ADD s1, t6, s1
  SLLIW s3, s2, 2
  LW s1, 0(s1)
  ADDI t6, sp, 96
  ADD s3, t6, s3
  ADDIW s5, s0, -2
  SW s2, 96(sp)
  LW s0, 0(s3)
  SW s5, 96(sp)
  BNE s4, zero, bb60
  # implict jump to bb50
bb50:   # loop depth 2
  XORI s2, a0, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb59
  # implict jump to bb51
bb51:   # loop depth 2
  XORI s2, a0, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb58
  # implict jump to bb52
bb52:   # loop depth 2
  XORI s2, a0, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb56
  # implict jump to bb54
bb54:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb55
bb55:   # loop depth 2
  LW s0, 96(sp)
  SLLIW s1, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 96
  ADD s1, t6, s1
  SW s0, 96(sp)
  SW a0, 4(s1)
  JAL zero, bb45
bb56:   # loop depth 2
  REMW a0, s0, s1
  JAL zero, bb55
bb57:   # loop depth 2
  DIVW a0, s0, s1
  JAL zero, bb55
bb58:   # loop depth 2
  MULW a0, s0, s1
  JAL zero, bb55
bb59:   # loop depth 2
  SUBW a0, s0, s1
  JAL zero, bb55
bb60:   # loop depth 2
  ADDW a0, s0, s1
  JAL zero, bb55
bb61:   # loop depth 1
  LA s2, num
  ADDIW s0, s1, -48
  SW s0, 0(s2)
  # implict jump to bb62
bb62:   # loop depth 2
  CALL getch
  LA s2, last_char
  ADD s1, a0, zero
  SLTI s0, s1, 48
  SW s1, 0(s2)
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
  ADDI s2, zero, 10
  LA s3, num
  LW s0, 0(s0)
  MULW s0, s0, s2
  ADDW s0, s0, s1
  ADDIW s0, s0, -48
  SW s0, 0(s3)
  JAL zero, bb62
bb69:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb66
bb70:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb64
bb71:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb43
bb72:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb41
bb73:   # loop depth 2
  LA s1, last_char
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb34
bb74:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb38
bb75:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb36
bb76:   # loop depth 2
  LA s3, other
  LW s3, 0(s3)
  XORI s4, s3, 43
  SLTIU s4, s4, 1
  BNE s4, zero, bb177
  # implict jump to bb77
bb77:   # loop depth 2
  XORI s4, s3, 45
  SLTIU s4, s4, 1
  # implict jump to bb78
bb78:   # loop depth 2
  BNE s4, zero, bb176
  # implict jump to bb79
bb79:   # loop depth 2
  XORI s4, s3, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb175
  # implict jump to bb80
bb80:   # loop depth 2
  XORI s4, s3, 47
  SLTIU s4, s4, 1
  # implict jump to bb81
bb81:   # loop depth 2
  BNE s4, zero, bb174
  # implict jump to bb82
bb82:   # loop depth 2
  XORI s4, s3, 37
  SLTIU s4, s4, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s4, zero, bb173
  # implict jump to bb84
bb84:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  SLTU s5, zero, s4
  XORI s5, s5, 1
  BNE s5, zero, bb34
  # implict jump to bb86
bb86:   # loop depth 3
  LA s5, last_char
  LW s6, 0(s5)
  XORI s5, s6, 32
  SLTIU s5, s5, 1
  BNE s5, zero, bb172
  # implict jump to bb87
bb87:   # loop depth 3
  XORI s5, s6, 10
  SLTIU s5, s5, 1
  # implict jump to bb88
bb88:   # loop depth 3
  BNE s5, zero, bb171
  # implict jump to bb89
bb89:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb90
bb90:   # loop depth 3
  BNE s5, zero, bb170
  # implict jump to bb91
bb91:   # loop depth 2
  SLTI s5, s6, 48
  XORI s5, s5, 1
  BNE s5, zero, bb169
  # implict jump to bb92
bb92:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  BNE s5, zero, bb168
  # implict jump to bb94
bb94:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb95
bb95:   # loop depth 2
  BNE s5, zero, bb158
  # implict jump to bb96
bb96:   # loop depth 2
  LA s5, last_char
  LA s6, other
  LA s7, last_char
  LA s8, cur_token
  LW s5, 0(s5)
  ADDI s9, zero, 1
  SW s5, 0(s6)
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s7)
  SW s9, 0(s8)
  # implict jump to bb97
bb97:   # loop depth 2
  # implict jump to bb98
bb98:   # loop depth 3
  LW s5, 1120(sp)
  BNE s5, zero, bb143
  # implict jump to bb99
bb99:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb100
bb100:   # loop depth 3
  BNE s5, zero, bb131
  # implict jump to bb101
bb101:   # loop depth 2
  LW s4, 1120(sp)
  LA s6, cur_token
  SLLIW s5, s4, 2
  ADDIW s4, s4, 1
  ADDI t6, sp, 1120
  ADD s5, t6, s5
  SW s4, 1120(sp)
  SW s3, 4(s5)
  LW s3, 0(s6)
  BNE s3, zero, bb130
  # implict jump to bb102
bb102:   # loop depth 2
  LA s3, num
  LW s3, 0(s3)
  LW s4, 96(sp)
  SLLIW s5, s4, 2
  ADDIW s4, s4, 1
  ADDI t6, sp, 96
  ADD s5, t6, s5
  SW s4, 96(sp)
  SW s3, 4(s5)
  # implict jump to bb103
bb103:   # loop depth 3
  LA s3, last_char
  LW s4, 0(s3)
  XORI s3, s4, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb129
  # implict jump to bb104
bb104:   # loop depth 3
  XORI s3, s4, 10
  SLTIU s3, s3, 1
  # implict jump to bb105
bb105:   # loop depth 3
  BNE s3, zero, bb128
  # implict jump to bb106
bb106:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb107
bb107:   # loop depth 3
  BNE s3, zero, bb127
  # implict jump to bb108
bb108:   # loop depth 2
  SLTI s3, s4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb126
  # implict jump to bb109
bb109:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb110
bb110:   # loop depth 2
  BNE s3, zero, bb125
  # implict jump to bb111
bb111:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb112
bb112:   # loop depth 2
  BNE s3, zero, bb115
  # implict jump to bb113
bb113:   # loop depth 2
  LA s3, last_char
  LA s4, other
  LA s5, last_char
  LA s6, cur_token
  LW s3, 0(s3)
  ADDI s7, zero, 1
  SW s3, 0(s4)
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s5)
  SW s7, 0(s6)
  # implict jump to bb114
bb114:   # loop depth 2
  JAL zero, bb33
bb115:   # loop depth 2
  LA s5, num
  ADDIW s3, s4, -48
  SW s3, 0(s5)
  # implict jump to bb116
bb116:   # loop depth 3
  CALL getch
  LA s5, last_char
  ADD s4, a0, zero
  SLTI s3, s4, 48
  SW s4, 0(s5)
  XORI s3, s3, 1
  BNE s3, zero, bb124
  # implict jump to bb117
bb117:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb118
bb118:   # loop depth 3
  BNE s3, zero, bb123
  # implict jump to bb119
bb119:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb120
bb120:   # loop depth 3
  BNE s3, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 2
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb114
bb122:   # loop depth 3
  LA s3, num
  ADDI s6, zero, 10
  LA s5, num
  LW s3, 0(s3)
  MULW s3, s3, s6
  ADDW s3, s3, s4
  ADDIW s3, s3, -48
  SW s3, 0(s5)
  JAL zero, bb116
bb123:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb120
bb124:   # loop depth 3
  ADDI s3, zero, 57
  SLT s3, s3, s4
  XORI s3, s3, 1
  JAL zero, bb118
bb125:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb112
bb126:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s4
  XORI s3, s3, 1
  JAL zero, bb110
bb127:   # loop depth 3
  LA s4, last_char
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s4)
  JAL zero, bb103
bb128:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb107
bb129:   # loop depth 3
  ADDI s3, zero, 1
  JAL zero, bb105
bb130:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s1, zero, -1
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
  JAL zero, bb47
bb131:   # loop depth 3
  LW s0, 1120(sp)
  SLLIW s1, s0, 2
  ADDIW s5, s0, -1
  ADDI t6, sp, 1120
  ADD s0, t6, s1
  LW s2, 0(s0)
  SW s5, 1120(sp)
  XORI s1, s2, 43
  LW s0, 96(sp)
  SLTIU s5, s1, 1
  SLLIW s1, s0, 2
  ADDIW s6, s0, -1
  ADDI t6, sp, 96
  ADD s1, t6, s1
  SLLIW s7, s6, 2
  LW s1, 0(s1)
  ADDI t6, sp, 96
  ADD s7, t6, s7
  ADDIW s8, s0, -2
  SW s6, 96(sp)
  LW s0, 0(s7)
  SW s8, 96(sp)
  BNE s5, zero, bb142
  # implict jump to bb132
bb132:   # loop depth 3
  XORI s5, s2, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb141
  # implict jump to bb133
bb133:   # loop depth 3
  XORI s5, s2, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb140
  # implict jump to bb134
bb134:   # loop depth 3
  XORI s5, s2, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb139
  # implict jump to bb135
bb135:   # loop depth 3
  XORI s5, s2, 37
  SLTIU s5, s5, 1
  BNE s5, zero, bb138
  # implict jump to bb136
bb136:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb137
bb137:   # loop depth 3
  LW s6, 96(sp)
  SLLIW s7, s6, 2
  ADDIW s6, s6, 1
  ADDI t6, sp, 96
  ADD s7, t6, s7
  SW s6, 96(sp)
  SW s5, 4(s7)
  JAL zero, bb98
bb138:   # loop depth 3
  REMW s5, s0, s1
  JAL zero, bb137
bb139:   # loop depth 3
  DIVW s5, s0, s1
  JAL zero, bb137
bb140:   # loop depth 3
  MULW s5, s0, s1
  JAL zero, bb137
bb141:   # loop depth 3
  SUBW s5, s0, s1
  JAL zero, bb137
bb142:   # loop depth 3
  ADDW s5, s0, s1
  JAL zero, bb137
bb143:   # loop depth 3
  SLLIW s5, s5, 2
  ADDI t6, sp, 1120
  ADD s5, t6, s5
  LW s6, 0(s5)
  XORI s5, s6, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb157
  # implict jump to bb144
bb144:   # loop depth 3
  XORI s5, s6, 45
  SLTIU s5, s5, 1
  # implict jump to bb145
bb145:   # loop depth 3
  BNE s5, zero, bb156
  # implict jump to bb146
bb146:   # loop depth 3
  XORI s5, s6, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb155
  # implict jump to bb147
bb147:   # loop depth 3
  XORI s5, s6, 47
  SLTIU s5, s5, 1
  # implict jump to bb148
bb148:   # loop depth 3
  BNE s5, zero, bb154
  # implict jump to bb149
bb149:   # loop depth 3
  XORI s5, s6, 37
  SLTIU s5, s5, 1
  # implict jump to bb150
bb150:   # loop depth 3
  BNE s5, zero, bb153
  # implict jump to bb151
bb151:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb152
bb152:   # loop depth 3
  SLT s5, s5, s4
  XORI s5, s5, 1
  JAL zero, bb100
bb153:   # loop depth 3
  ADDI s5, zero, 20
  JAL zero, bb152
bb154:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb150
bb155:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb148
bb156:   # loop depth 3
  ADDI s5, zero, 10
  JAL zero, bb152
bb157:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb145
bb158:   # loop depth 2
  LA s7, num
  ADDIW s5, s6, -48
  SW s5, 0(s7)
  # implict jump to bb159
bb159:   # loop depth 3
  CALL getch
  LA s7, last_char
  ADD s6, a0, zero
  SLTI s5, s6, 48
  SW s6, 0(s7)
  XORI s5, s5, 1
  BNE s5, zero, bb167
  # implict jump to bb160
bb160:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb161
bb161:   # loop depth 3
  BNE s5, zero, bb166
  # implict jump to bb162
bb162:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb163
bb163:   # loop depth 3
  BNE s5, zero, bb165
  # implict jump to bb164
bb164:   # loop depth 2
  LA s5, cur_token
  SW zero, 0(s5)
  JAL zero, bb97
bb165:   # loop depth 3
  LA s5, num
  ADDI s8, zero, 10
  LA s7, num
  LW s5, 0(s5)
  MULW s5, s5, s8
  ADDW s5, s5, s6
  ADDIW s5, s5, -48
  SW s5, 0(s7)
  JAL zero, bb159
bb166:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb163
bb167:   # loop depth 3
  ADDI s5, zero, 57
  SLT s5, s5, s6
  XORI s5, s5, 1
  JAL zero, bb161
bb168:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb95
bb169:   # loop depth 2
  ADDI s5, zero, 57
  SLT s5, s5, s6
  XORI s5, s5, 1
  JAL zero, bb93
bb170:   # loop depth 3
  LA s6, last_char
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s6)
  JAL zero, bb86
bb171:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb90
bb172:   # loop depth 3
  ADDI s5, zero, 1
  JAL zero, bb88
bb173:   # loop depth 2
  ADDI s4, zero, 20
  JAL zero, bb85
bb174:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb83
bb175:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb81
bb176:   # loop depth 2
  ADDI s4, zero, 10
  JAL zero, bb85
bb177:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb78
bb178:   # loop depth 1
  LA s2, num
  ADDIW s0, s1, -48
  SW s0, 0(s2)
  # implict jump to bb179
bb179:   # loop depth 2
  CALL getch
  LA s2, last_char
  ADD s1, a0, zero
  SLTI s0, s1, 48
  SW s1, 0(s2)
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
  ADDI s2, zero, 10
  LA s3, num
  LW s0, 0(s0)
  MULW s0, s0, s2
  ADDW s0, s0, s1
  ADDIW s0, s0, -48
  SW s0, 0(s3)
  JAL zero, bb179
bb186:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb183
bb187:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb181
bb188:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb30
bb189:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb28
bb190:   # loop depth 2
  LA s1, last_char
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  JAL zero, bb21
bb191:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb25
bb192:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb23
bb193:   # loop depth 1
  ADDI a0, zero, 112
  ADDI s1, zero, -1
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
  JAL zero, bb47
bb194:   # loop depth 2
  JAL zero, bb18
bb195:   # loop depth 2
  JAL zero, bb16
bb196:   # loop depth 0
  LA s3, num
  ADDIW s1, s2, -48
  SW s1, 0(s3)
  # implict jump to bb197
bb197:   # loop depth 1
  CALL getch
  LA s3, last_char
  ADD s2, a0, zero
  SLTI s1, s2, 48
  SW s2, 0(s3)
  XORI s1, s1, 1
  BNE s1, zero, bb205
  # implict jump to bb198
bb198:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb199
bb199:   # loop depth 1
  BNE s1, zero, bb204
  # implict jump to bb200
bb200:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb201
bb201:   # loop depth 1
  BNE s1, zero, bb203
  # implict jump to bb202
bb202:   # loop depth 0
  LA s1, cur_token
  SW zero, 0(s1)
  JAL zero, bb12
bb203:   # loop depth 1
  LA s1, num
  ADDI s3, zero, 10
  LA s4, num
  LW s1, 0(s1)
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADDIW s1, s1, -48
  SW s1, 0(s4)
  JAL zero, bb197
bb204:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb201
bb205:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  XORI s1, s1, 1
  JAL zero, bb199
bb206:   # loop depth 0
  ADDI s1, zero, 1
  JAL zero, bb10
bb207:   # loop depth 0
  ADDI s1, zero, 57
  SLT s1, s1, s2
  XORI s1, s1, 1
  JAL zero, bb8
bb208:   # loop depth 1
  LA s2, last_char
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s2)
  JAL zero, bb1
bb209:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb5
bb210:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb3
