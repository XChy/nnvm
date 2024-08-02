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
tree:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  ADD s2, a1, zero
  SLLIW s3, s0, 2
  LA a0, dep
  ADD a0, a0, s3
  SW s2, 0(a0)
  ADDI a0, zero, 80
  MULW a1, s0, a0
  LA a0, f
  ADD s4, a0, a1
  LW a0, 0(s4)
  BNE a0, zero, bb6
  # implict jump to bb1
bb1:
  LA a0, head
  ADD a0, a0, s3
  LW a1, 0(a0)
  XORI a0, a1, -1
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADDIW s0, s2, 1
  ADD a0, a1, zero
  # implict jump to bb4
bb4:
  SLLIW s1, a0, 2
  LA a0, to
  ADD a0, a0, s1
  LW a0, 0(a0)
  ADD a1, s0, zero
  CALL tree
  LA a0, next
  ADD a0, a0, s1
  LW a1, 0(a0)
  XORI a0, a1, -1
  BNE a0, zero, bb5
  JAL zero, bb2
bb5:
  ADD a0, a1, zero
  JAL zero, bb4
bb6:
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADD s1, s4, zero
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s5, s0, zero
  ADD s0, s1, zero
  ADDIW s5, s5, 1
  SLLIW s1, s5, 2
  ADD s0, s0, s1
  LW s6, 0(a0)
  ADDI a0, zero, 80
  MULW s6, s6, a0
  LA a0, f
  ADD a0, a0, s6
  ADD a0, a0, a1
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADD a0, s4, s1
  LW a1, 0(a0)
  BNE a1, zero, bb8
  JAL zero, bb1
bb8:
  ADD a1, s1, zero
  ADD s1, s4, zero
  ADD s0, s5, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb10
bb10:
  ADD s3, s0, zero
  ADD s2, s1, zero
  SLTI s0, s3, 48
  BNE s0, zero, bb154
  # implict jump to bb11
bb11:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  # implict jump to bb12
bb12:
  BNE s0, zero, bb150
  # implict jump to bb13
bb13:
  ADD s1, zero, zero
  ADD s0, s3, zero
  # implict jump to bb14
bb14:
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  BNE s0, zero, bb148
  # implict jump to bb17
bb17:
  BNE s2, zero, bb147
  # implict jump to bb18
bb18:
  ADD s0, s1, zero
  # implict jump to bb19
bb19:
  ADD s1, s0, zero
  LA s0, n
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb20
bb20:
  ADD s3, s0, zero
  ADD s2, s1, zero
  SLTI s0, s3, 48
  BNE s0, zero, bb146
  # implict jump to bb21
bb21:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  # implict jump to bb22
bb22:
  BNE s0, zero, bb142
  # implict jump to bb23
bb23:
  ADD s1, zero, zero
  ADD s0, s3, zero
  # implict jump to bb24
bb24:
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb25
bb25:
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  BNE s0, zero, bb140
  # implict jump to bb27
bb27:
  BNE s2, zero, bb139
  # implict jump to bb28
bb28:
  ADD s0, s1, zero
  # implict jump to bb29
bb29:
  ADD s1, s0, zero
  LA s0, m
  SW s1, 0(s0)
  LA s1, dep
  LUI s0, 259060
  ADDIW s0, s0, -193
  SW s0, 0(s1)
  LA s0, n
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb136
  # implict jump to bb30
bb30:
  LA s0, n
  LW s0, 0(s0)
  XORI s0, s0, 1
  BNE s0, zero, bb97
  # implict jump to bb31
bb31:
  ADDI a0, zero, 1
  ADDI a1, zero, 1
  CALL tree
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb33
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb33:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  ADD s3, s0, zero
  ADD s2, s1, zero
  SLTI s0, s3, 48
  BNE s0, zero, bb96
  # implict jump to bb35
bb35:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  # implict jump to bb36
bb36:
  BNE s0, zero, bb92
  # implict jump to bb37
bb37:
  ADD s1, zero, zero
  ADD s0, s3, zero
  # implict jump to bb38
bb38:
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb91
  # implict jump to bb39
bb39:
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  BNE s0, zero, bb90
  # implict jump to bb41
bb41:
  BNE s2, zero, bb89
  # implict jump to bb42
bb42:
  ADD s0, s1, zero
  # implict jump to bb43
bb43:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb44
bb44:
  ADD s4, s0, zero
  ADD s3, s2, zero
  SLTI s0, s4, 48
  BNE s0, zero, bb88
  # implict jump to bb45
bb45:
  ADDI s0, zero, 57
  SLT s0, s0, s4
  # implict jump to bb46
bb46:
  BNE s0, zero, bb84
  # implict jump to bb47
bb47:
  ADD s2, zero, zero
  ADD s0, s4, zero
  # implict jump to bb48
bb48:
  ADD s4, s0, zero
  SLTI s0, s4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb83
  # implict jump to bb49
bb49:
  ADD s0, zero, zero
  # implict jump to bb50
bb50:
  BNE s0, zero, bb82
  # implict jump to bb51
bb51:
  BNE s3, zero, bb81
  # implict jump to bb52
bb52:
  ADD a0, s2, zero
  # implict jump to bb53
bb53:
  ADD s3, a0, zero
  SLLIW s0, s1, 2
  LA a0, dep
  ADD a0, a0, s0
  LW s0, 0(a0)
  SLLIW s2, s3, 2
  LA a0, dep
  ADD a0, a0, s2
  LW a0, 0(a0)
  BLT s0, a0, bb80
  # implict jump to bb54
bb54:
  ADD a0, s3, zero
  ADD s0, s1, zero
  # implict jump to bb55
bb55:
  ADD s3, s0, zero
  ADD s0, a0, zero
  SLLIW s1, s3, 2
  LA a0, dep
  ADD a0, a0, s1
  LW s4, 0(a0)
  SLLIW s1, s0, 2
  LA a0, dep
  ADD s2, a0, s1
  LW a0, 0(s2)
  BLT a0, s4, bb70
  # implict jump to bb56
bb56:
  ADD a0, s3, zero
  # implict jump to bb57
bb57:
  ADD s1, a0, zero
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb69
  # implict jump to bb58
bb58:
  ADDI a0, zero, 19
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb62
  # implict jump to bb59
bb59:
  ADD a0, s1, zero
  # implict jump to bb60
bb60:
  ADD s0, a0, zero
  ADDI a0, zero, 80
  MULW s0, s0, a0
  LA a0, f
  ADD a0, a0, s0
  LW a0, 0(a0)
  # implict jump to bb61
bb61:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s1, s1, s0
  LA s0, m
  SW s1, 0(s0)
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb33
  JAL zero, bb32
bb62:
  ADD a0, s1, zero
  ADD s1, s0, zero
  ADDI s0, zero, 19
  # implict jump to bb63
bb63:
  ADD s3, s0, zero
  ADD s2, a0, zero
  ADDI a0, zero, 80
  MULW s0, s2, a0
  LA a0, f
  ADD a0, a0, s0
  SLLIW s5, s3, 2
  ADD a0, a0, s5
  LW s4, 0(a0)
  ADDI a0, zero, 80
  MULW s0, s1, a0
  LA a0, f
  ADD a0, a0, s0
  ADD a0, a0, s5
  LW a0, 0(a0)
  BNE s4, a0, bb68
  # implict jump to bb64
bb64:
  ADD a0, s1, zero
  ADD s0, s2, zero
  # implict jump to bb65
bb65:
  ADD s1, s0, zero
  ADD s2, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s3, a0
  SLT a0, s0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb67
  # implict jump to bb66
bb66:
  ADD a0, s1, zero
  JAL zero, bb60
bb67:
  ADD a0, s1, zero
  ADD s1, s2, zero
  JAL zero, bb63
bb68:
  ADD s0, s4, zero
  JAL zero, bb65
bb69:
  ADD a0, s1, zero
  JAL zero, bb61
bb70:
  ADDI s1, zero, 19
  # implict jump to bb71
bb71:
  ADD s5, a0, zero
  ADDI a0, zero, 80
  MULW s4, s3, a0
  LA a0, f
  ADD s4, a0, s4
  SLLIW a0, s1, 2
  ADD a0, s4, a0
  LW s4, 0(a0)
  BNE s4, zero, bb79
  # implict jump to bb72
bb72:
  ADD a0, zero, zero
  # implict jump to bb73
bb73:
  BNE a0, zero, bb78
  # implict jump to bb74
bb74:
  ADD a0, s3, zero
  # implict jump to bb75
bb75:
  ADD s3, a0, zero
  ADDI a0, zero, 1
  SUBW s4, s1, a0
  SLLIW s1, s3, 2
  LA a0, dep
  ADD a0, a0, s1
  LW s1, 0(a0)
  LW a0, 0(s2)
  BLT a0, s1, bb77
  # implict jump to bb76
bb76:
  ADD a0, s3, zero
  JAL zero, bb57
bb77:
  ADD s1, s4, zero
  JAL zero, bb71
bb78:
  ADD a0, s4, zero
  JAL zero, bb75
bb79:
  SLLIW s6, s4, 2
  LA a0, dep
  ADD a0, a0, s6
  LW a0, 0(a0)
  SLT a0, a0, s5
  XORI a0, a0, 1
  JAL zero, bb73
bb80:
  ADD a0, s1, zero
  ADD s0, s3, zero
  JAL zero, bb55
bb81:
  SUB a0, zero, s2
  JAL zero, bb53
bb82:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s2, s0, s4
  ADDI s0, zero, 48
  SUBW s2, s2, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb48
bb83:
  ADDI s0, zero, 57
  SLT s0, s0, s4
  XORI s0, s0, 1
  JAL zero, bb50
bb84:
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:
  ADD s0, s3, zero
  # implict jump to bb86
bb86:
  ADD s2, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb44
bb87:
  ADDI s0, zero, 1
  JAL zero, bb86
bb88:
  ADDI s0, zero, 1
  JAL zero, bb46
bb89:
  SUB s0, zero, s1
  JAL zero, bb43
bb90:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb38
bb91:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb40
bb92:
  XORI s0, s3, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  ADD s0, s2, zero
  # implict jump to bb94
bb94:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb34
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s0, zero, 1
  JAL zero, bb36
bb97:
  ADDI s0, zero, 1
  # implict jump to bb98
bb98:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb99
bb99:
  ADD s4, s0, zero
  ADD s3, s2, zero
  SLTI s0, s4, 48
  BNE s0, zero, bb135
  # implict jump to bb100
bb100:
  ADDI s0, zero, 57
  SLT s0, s0, s4
  # implict jump to bb101
bb101:
  BNE s0, zero, bb131
  # implict jump to bb102
bb102:
  ADD s2, zero, zero
  ADD s0, s4, zero
  # implict jump to bb103
bb103:
  ADD s4, s0, zero
  SLTI s0, s4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb104
bb104:
  ADD s0, zero, zero
  # implict jump to bb105
bb105:
  BNE s0, zero, bb129
  # implict jump to bb106
bb106:
  BNE s3, zero, bb128
  # implict jump to bb107
bb107:
  ADD s0, s2, zero
  # implict jump to bb108
bb108:
  ADD s2, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s3, zero, zero
  # implict jump to bb109
bb109:
  ADD s5, s0, zero
  ADD s4, s3, zero
  SLTI s0, s5, 48
  BNE s0, zero, bb127
  # implict jump to bb110
bb110:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  # implict jump to bb111
bb111:
  BNE s0, zero, bb123
  # implict jump to bb112
bb112:
  ADD s3, zero, zero
  ADD s0, s5, zero
  # implict jump to bb113
bb113:
  ADD s5, s0, zero
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb114
bb114:
  ADD s0, zero, zero
  # implict jump to bb115
bb115:
  BNE s0, zero, bb121
  # implict jump to bb116
bb116:
  BNE s4, zero, bb120
  # implict jump to bb117
bb117:
  ADD s0, s3, zero
  # implict jump to bb118
bb118:
  ADD s4, s0, zero
  LA s0, cnt
  LW s5, 0(s0)
  SLLIW s3, s5, 2
  LA s0, to
  ADD s0, s0, s3
  SW s4, 0(s0)
  LA s0, next
  ADD s6, s0, s3
  SLLIW s3, s2, 2
  LA s0, head
  ADD s0, s0, s3
  LW s3, 0(s0)
  SW s3, 0(s6)
  SW s5, 0(s0)
  ADDIW s3, s5, 1
  LA s0, cnt
  SW s3, 0(s0)
  ADDI s0, zero, 80
  MULW s3, s4, s0
  LA s0, f
  ADD s0, s0, s3
  SW s2, 0(s0)
  ADDIW s1, s1, 1
  LA s0, n
  LW s0, 0(s0)
  BNE s1, s0, bb119
  JAL zero, bb31
bb119:
  ADD s0, s1, zero
  JAL zero, bb98
bb120:
  SUB s0, zero, s3
  JAL zero, bb118
bb121:
  ADDI s0, zero, 10
  MULW s0, s3, s0
  ADDW s3, s0, s5
  ADDI s0, zero, 48
  SUBW s3, s3, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb113
bb122:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb115
bb123:
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb124
bb124:
  ADD s0, s4, zero
  # implict jump to bb125
bb125:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb109
bb126:
  ADDI s0, zero, 1
  JAL zero, bb125
bb127:
  ADDI s0, zero, 1
  JAL zero, bb111
bb128:
  SUB s0, zero, s2
  JAL zero, bb108
bb129:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s2, s0, s4
  ADDI s0, zero, 48
  SUBW s2, s2, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb103
bb130:
  ADDI s0, zero, 57
  SLT s0, s0, s4
  XORI s0, s0, 1
  JAL zero, bb105
bb131:
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:
  ADD s0, s3, zero
  # implict jump to bb133
bb133:
  ADD s2, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb99
bb134:
  ADDI s0, zero, 1
  JAL zero, bb133
bb135:
  ADDI s0, zero, 1
  JAL zero, bb101
bb136:
  ADDI s0, zero, 1
  # implict jump to bb137
bb137:
  ADD s2, s0, zero
  SLLIW s1, s2, 2
  LA s0, head
  ADD s1, s0, s1
  ADDI s0, zero, -1
  SW s0, 0(s1)
  ADDIW s1, s2, 1
  LA s0, n
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb138
  JAL zero, bb30
bb138:
  ADD s0, s1, zero
  JAL zero, bb137
bb139:
  SUB s0, zero, s1
  JAL zero, bb29
bb140:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb24
bb141:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb26
bb142:
  XORI s0, s3, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb143
bb143:
  ADD s0, s2, zero
  # implict jump to bb144
bb144:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb20
bb145:
  ADDI s0, zero, 1
  JAL zero, bb144
bb146:
  ADDI s0, zero, 1
  JAL zero, bb22
bb147:
  SUB s0, zero, s1
  JAL zero, bb19
bb148:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb14
bb149:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb16
bb150:
  XORI s0, s3, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:
  ADD s0, s2, zero
  # implict jump to bb152
bb152:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb10
bb153:
  ADDI s0, zero, 1
  JAL zero, bb152
bb154:
  ADDI s0, zero, 1
  JAL zero, bb12
