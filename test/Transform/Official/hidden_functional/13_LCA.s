.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global tree
.global main
.section .bss
head:
.space 40020
next:
.space 40020
to:
.space 40020
dep:
.space 40020
f:
.space 800400



.section .data





n:
.word 0x00000000
cnt:
.word 0x00000000
m:
.word 0x00000000
.section .text
tree:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI s0, zero, 80
  MULW s1, a0, s0
  LA s0, dep
  LA s2, f
  SH2ADD s0, a0, s0
  ADD s3, s2, s1
  SW a1, 0(s0)
  LW s0, 0(s3)
  BNE s0, zero, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, head
  SH2ADD a0, a0, s0
  LW s0, 0(a0)
  XORI a0, s0, -1
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDIW s1, a1, 1
  # implict jump to bb4
bb4:   # loop depth 1
  LA a0, to
  LA s2, next
  ADD a1, s1, zero
  SH2ADD a0, s0, a0
  LW a0, 0(a0)
  SH2ADD s0, s0, s2
  CALL tree
  LW s0, 0(s0)
  XORI a0, s0, -1
  BNE a0, zero, bb5
  JAL zero, bb2
bb5:   # loop depth 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s4, s3, zero
  # implict jump to bb7
bb7:   # loop depth 1
  ADDI s5, zero, 80
  LW s2, 0(s4)
  LA s6, f
  ADDIW s0, s0, 1
  MULW s7, s2, s5
  SH2ADD s5, s0, s3
  SLLIW s2, s0, 2
  ADD s6, s6, s7
  ADD s1, s6, s1
  LW s1, 0(s1)
  SW s1, 4(s4)
  LW s1, 0(s5)
  BNE s1, zero, bb8
  JAL zero, bb1
bb8:   # loop depth 1
  ADD s1, s2, zero
  ADD s4, s5, zero
  JAL zero, bb7
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  CALL getch
  ADD s2, zero, zero
  ADD s0, a0, zero
  # implict jump to bb10
bb10:   # loop depth 1
  SLTI s1, s0, 48
  BNE s1, zero, bb154
  # implict jump to bb11
bb11:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb12
bb12:   # loop depth 1
  BNE s1, zero, bb150
  # implict jump to bb13
bb13:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 1
  BNE s0, zero, bb148
  # implict jump to bb17
bb17:   # loop depth 0
  BNE s2, zero, bb147
  # implict jump to bb18
bb18:   # loop depth 0
  # implict jump to bb19
bb19:   # loop depth 0
  LA s0, n
  ADD s2, zero, zero
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb20
bb20:   # loop depth 1
  SLTI s1, s0, 48
  BNE s1, zero, bb146
  # implict jump to bb21
bb21:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb22
bb22:   # loop depth 1
  BNE s1, zero, bb142
  # implict jump to bb23
bb23:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb25
bb25:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  BNE s0, zero, bb140
  # implict jump to bb27
bb27:   # loop depth 0
  BNE s2, zero, bb139
  # implict jump to bb28
bb28:   # loop depth 0
  # implict jump to bb29
bb29:   # loop depth 0
  LA s0, m
  LUI s3, 259060
  LA s2, dep
  LA s4, n
  ADDIW s3, s3, -193
  SW s1, 0(s0)
  SW s3, 0(s2)
  LW s2, 0(s4)
  SLTI s0, s2, 1
  XORI s0, s0, 1
  BNE s0, zero, bb136
  # implict jump to bb30
bb30:   # loop depth 0
  XORI s0, s2, 1
  BNE s0, zero, bb97
  # implict jump to bb31
bb31:   # loop depth 0
  LA s0, m
  ADDI a1, zero, 1
  ADDI a0, zero, 1
  CALL tree
  LW s0, 0(s0)
  BNE s0, zero, bb33
  # implict jump to bb32
bb32:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb33:   # loop depth 1
  CALL getch
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb34
bb34:   # loop depth 2
  SLTI s2, s0, 48
  BNE s2, zero, bb96
  # implict jump to bb35
bb35:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s0
  # implict jump to bb36
bb36:   # loop depth 2
  BNE s2, zero, bb92
  # implict jump to bb37
bb37:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  ADD s2, s0, zero
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb91
  # implict jump to bb39
bb39:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  BNE s0, zero, bb90
  # implict jump to bb41
bb41:   # loop depth 1
  BNE s1, zero, bb89
  # implict jump to bb42
bb42:   # loop depth 1
  # implict jump to bb43
bb43:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb44
bb44:   # loop depth 2
  SLTI s1, s0, 48
  BNE s1, zero, bb88
  # implict jump to bb45
bb45:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb46
bb46:   # loop depth 2
  BNE s1, zero, bb84
  # implict jump to bb47
bb47:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  ADD s4, s0, zero
  SLTI s0, s4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb83
  # implict jump to bb49
bb49:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb50
bb50:   # loop depth 2
  BNE s0, zero, bb82
  # implict jump to bb51
bb51:   # loop depth 1
  BNE s2, zero, bb81
  # implict jump to bb52
bb52:   # loop depth 1
  # implict jump to bb53
bb53:   # loop depth 1
  LA a0, dep
  LA s0, dep
  SH2ADD a0, s3, a0
  SH2ADD s0, s1, s0
  LW a0, 0(a0)
  LW s0, 0(s0)
  BLT a0, s0, bb80
  # implict jump to bb54
bb54:   # loop depth 1
  ADD a0, s3, zero
  # implict jump to bb55
bb55:   # loop depth 1
  LA s0, dep
  LA s2, dep
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  SH2ADD s2, s1, s2
  LW s3, 0(s2)
  BLT s3, s0, bb70
  # implict jump to bb56
bb56:   # loop depth 1
  # implict jump to bb57
bb57:   # loop depth 1
  XOR s0, a0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb69
  # implict jump to bb58
bb58:   # loop depth 1
  ADDI s0, zero, 80
  ADDI s2, zero, 19
  MULW s0, a0, s0
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb62
  # implict jump to bb59
bb59:   # loop depth 1
  # implict jump to bb60
bb60:   # loop depth 1
  LA a0, f
  ADD a0, a0, s0
  LW a0, 0(a0)
  # implict jump to bb61
bb61:   # loop depth 1
  LA s0, m
  LA s1, m
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(s0)
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  BNE s0, zero, bb33
  JAL zero, bb32
bb62:   # loop depth 1
  ADDI s3, zero, 19
  # implict jump to bb63
bb63:   # loop depth 2
  LA s4, f
  ADDI s2, zero, 80
  MULW s2, s1, s2
  ADD s0, s4, s0
  LA s4, f
  SH2ADD s0, s3, s0
  LW s0, 0(s0)
  ADD s2, s4, s2
  SH2ADD s2, s3, s2
  LW s2, 0(s2)
  BNE s0, s2, bb68
  # implict jump to bb64
bb64:   # loop depth 2
  # implict jump to bb65
bb65:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  ADDIW s3, s3, -1
  SLT s2, s3, zero
  XORI s2, s2, 1
  BNE s2, zero, bb67
  # implict jump to bb66
bb66:   # loop depth 1
  JAL zero, bb60
bb67:   # loop depth 2
  JAL zero, bb63
bb68:   # loop depth 2
  ADD a0, s0, zero
  ADD s1, s2, zero
  JAL zero, bb65
bb69:   # loop depth 1
  JAL zero, bb61
bb70:   # loop depth 1
  ADDI s4, zero, 19
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  LA s2, f
  ADD s0, s2, s0
  SH2ADD s0, s4, s0
  LW s0, 0(s0)
  BNE s0, zero, bb79
  # implict jump to bb72
bb72:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  BNE s2, zero, bb78
  # implict jump to bb74
bb74:   # loop depth 2
  # implict jump to bb75
bb75:   # loop depth 2
  LA s0, dep
  ADDIW s4, s4, -1
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  BLT s3, s0, bb77
  # implict jump to bb76
bb76:   # loop depth 1
  JAL zero, bb57
bb77:   # loop depth 2
  JAL zero, bb71
bb78:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb75
bb79:   # loop depth 2
  LA s2, dep
  SH2ADD s2, s0, s2
  LW s2, 0(s2)
  SLT s2, s2, s3
  XORI s2, s2, 1
  JAL zero, bb73
bb80:   # loop depth 1
  ADD a0, s1, zero
  ADD s1, s3, zero
  JAL zero, bb55
bb81:   # loop depth 1
  SUB s1, zero, s1
  JAL zero, bb53
bb82:   # loop depth 2
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s0, a0, zero
  ADDW s1, s1, s4
  ADDIW s1, s1, -48
  JAL zero, bb48
bb83:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s4
  XORI s0, s0, 1
  JAL zero, bb50
bb84:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:   # loop depth 2
  # implict jump to bb86
bb86:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb44
bb87:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb86
bb88:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb46
bb89:   # loop depth 1
  SUB s3, zero, s3
  JAL zero, bb43
bb90:   # loop depth 2
  ADDI s0, zero, 10
  CALL getch
  MULW s3, s3, s0
  ADD s0, a0, zero
  ADDW s2, s3, s2
  ADDIW s3, s2, -48
  JAL zero, bb38
bb91:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb40
bb92:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:   # loop depth 2
  # implict jump to bb94
bb94:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb34
bb95:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb94
bb96:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb36
bb97:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb98
bb98:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  ADD s3, zero, zero
  # implict jump to bb99
bb99:   # loop depth 2
  SLTI s1, s2, 48
  BNE s1, zero, bb135
  # implict jump to bb100
bb100:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb101
bb101:   # loop depth 2
  BNE s1, zero, bb131
  # implict jump to bb102
bb102:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb103
bb103:   # loop depth 2
  ADD s4, s2, zero
  SLTI s2, s4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb130
  # implict jump to bb104
bb104:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb105
bb105:   # loop depth 2
  BNE s2, zero, bb129
  # implict jump to bb106
bb106:   # loop depth 1
  BNE s3, zero, bb128
  # implict jump to bb107
bb107:   # loop depth 1
  # implict jump to bb108
bb108:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  ADD s3, zero, zero
  # implict jump to bb109
bb109:   # loop depth 2
  SLTI s4, s2, 48
  BNE s4, zero, bb127
  # implict jump to bb110
bb110:   # loop depth 2
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb111
bb111:   # loop depth 2
  BNE s4, zero, bb123
  # implict jump to bb112
bb112:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb113
bb113:   # loop depth 2
  ADD s4, s2, zero
  SLTI s2, s4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb122
  # implict jump to bb114
bb114:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s2, zero, bb121
  # implict jump to bb116
bb116:   # loop depth 1
  BNE s3, zero, bb120
  # implict jump to bb117
bb117:   # loop depth 1
  # implict jump to bb118
bb118:   # loop depth 1
  LA s2, cnt
  LA s3, to
  LA s4, head
  LW s2, 0(s2)
  LA s8, next
  SH2ADD s4, s1, s4
  ADDI s6, zero, 80
  MULW s7, s5, s6
  LA s9, f
  SH2ADD s6, s2, s3
  SH2ADD s3, s2, s8
  SW s5, 0(s6)
  LA s8, cnt
  LW s5, 0(s4)
  ADDIW s6, s2, 1
  LA s10, n
  ADD s7, s9, s7
  ADDIW s0, s0, 1
  SW s5, 0(s3)
  SW s2, 0(s4)
  SW s6, 0(s8)
  SW s1, 0(s7)
  LW s1, 0(s10)
  BNE s0, s1, bb119
  JAL zero, bb31
bb119:   # loop depth 1
  JAL zero, bb98
bb120:   # loop depth 1
  SUB s5, zero, s5
  JAL zero, bb118
bb121:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s5, s5, s2
  ADD s2, a0, zero
  ADDW s4, s5, s4
  ADDIW s5, s4, -48
  JAL zero, bb113
bb122:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s4
  XORI s2, s2, 1
  JAL zero, bb115
bb123:   # loop depth 2
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb126
  # implict jump to bb124
bb124:   # loop depth 2
  # implict jump to bb125
bb125:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb109
bb126:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb125
bb127:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb111
bb128:   # loop depth 1
  SUB s1, zero, s1
  JAL zero, bb108
bb129:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADD s2, a0, zero
  ADDW s1, s1, s4
  ADDIW s1, s1, -48
  JAL zero, bb103
bb130:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s4
  XORI s2, s2, 1
  JAL zero, bb105
bb131:   # loop depth 2
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb134
  # implict jump to bb132
bb132:   # loop depth 2
  # implict jump to bb133
bb133:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb99
bb134:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb133
bb135:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb101
bb136:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb137
bb137:   # loop depth 1
  LA s4, head
  ADDIW s1, s0, 1
  ADDI s5, zero, -1
  SLT s3, s2, s1
  SH2ADD s0, s0, s4
  XORI s3, s3, 1
  SW s5, 0(s0)
  BNE s3, zero, bb138
  JAL zero, bb30
bb138:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb137
bb139:   # loop depth 0
  SUB s1, zero, s1
  JAL zero, bb29
bb140:   # loop depth 1
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s0, a0, zero
  ADDW s1, s1, s3
  ADDIW s1, s1, -48
  JAL zero, bb24
bb141:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb26
bb142:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb143
bb143:   # loop depth 1
  # implict jump to bb144
bb144:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb20
bb145:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb144
bb146:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb22
bb147:   # loop depth 0
  SUB s1, zero, s1
  JAL zero, bb19
bb148:   # loop depth 1
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s0, a0, zero
  ADDW s1, s1, s3
  ADDIW s1, s1, -48
  JAL zero, bb14
bb149:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb16
bb150:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:   # loop depth 1
  # implict jump to bb152
bb152:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb10
bb153:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb152
bb154:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb12
