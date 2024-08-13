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
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb155
  # implict jump to bb10
bb10:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb151
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  SUB s1, zero, s0
  BNE s3, zero, bb150
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s1, s0, zero
  # implict jump to bb15
bb15:   # loop depth 0
  LA s0, n
  ADDI s2, zero, 57
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  SLT s2, s2, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb143
  # implict jump to bb16
bb16:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb139
  # implict jump to bb18
bb18:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  SUB s1, zero, s0
  BNE s3, zero, bb138
  # implict jump to bb20
bb20:   # loop depth 0
  ADD s1, s0, zero
  # implict jump to bb21
bb21:   # loop depth 0
  LA s0, m
  LUI s3, 259060
  LA s2, dep
  LA s4, n
  ADDIW s3, s3, -193
  SW s1, 0(s0)
  SW s3, 0(s2)
  LW s2, 0(s4)
  SLTI s0, s2, 1
  BEQ s0, zero, bb135
  # implict jump to bb22
bb22:   # loop depth 0
  XORI s0, s2, 1
  BNE s0, zero, bb96
  # implict jump to bb23
bb23:   # loop depth 0
  LA s0, m
  ADDI a1, zero, 1
  ADDI a0, zero, 1
  CALL tree
  LW s0, 0(s0)
  BNE s0, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
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
bb25:   # loop depth 0
  ADDI s2, zero, 19
  # implict jump to bb26
bb26:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s3, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s3
  BNE s1, zero, bb89
  # implict jump to bb27
bb27:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  ADDI s1, zero, 57
  SLT s3, s1, s0
  SLTI s1, s0, 48
  XORI s3, s3, 1
  XORI s1, s1, 1
  AND s1, s1, s3
  BNE s1, zero, bb85
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SUB s0, zero, s1
  BNE s4, zero, bb84
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s0, s1, zero
  # implict jump to bb32
bb32:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s3, a0, zero
  SLT s4, s1, s3
  SLTI s1, s3, 48
  OR s1, s1, s4
  BNE s1, zero, bb77
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb34
bb34:   # loop depth 1
  ADDI s1, zero, 57
  SLT s4, s1, s3
  SLTI s1, s3, 48
  XORI s4, s4, 1
  XORI s1, s1, 1
  AND s1, s1, s4
  BNE s1, zero, bb73
  # implict jump to bb35
bb35:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb36
bb36:   # loop depth 1
  SUB a0, zero, s1
  BNE s5, zero, bb72
  # implict jump to bb37
bb37:   # loop depth 1
  ADD a0, s1, zero
  # implict jump to bb38
bb38:   # loop depth 1
  LA s1, dep
  LA s3, dep
  SH2ADD s1, s0, s1
  SH2ADD s4, a0, s3
  LW s3, 0(s1)
  LW s4, 0(s4)
  BLT s3, s4, bb71
  # implict jump to bb39
bb39:   # loop depth 1
  ADD s1, a0, zero
  # implict jump to bb40
bb40:   # loop depth 1
  BLT s3, s4, bb70
  # implict jump to bb41
bb41:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb42
bb42:   # loop depth 1
  LA s0, dep
  LA s3, dep
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  SH2ADD s3, s1, s3
  LW s5, 0(s3)
  BLT s5, s0, bb60
  # implict jump to bb43
bb43:   # loop depth 1
  # implict jump to bb44
bb44:   # loop depth 1
  BEQ a0, s1, bb59
  # implict jump to bb45
bb45:   # loop depth 1
  ADDI s0, zero, 80
  MULW s0, a0, s0
  BGE s2, zero, bb49
  # implict jump to bb46
bb46:   # loop depth 1
  # implict jump to bb47
bb47:   # loop depth 1
  LA a0, f
  ADD a0, a0, s0
  LW a0, 0(a0)
  # implict jump to bb48
bb48:   # loop depth 1
  LA s0, m
  LA s1, m
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(s0)
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  BNE s0, zero, bb26
  JAL zero, bb24
bb49:   # loop depth 1
  ADDI s4, zero, 19
  # implict jump to bb50
bb50:   # loop depth 2
  LA s5, f
  ADDI s3, zero, 80
  MULW s3, s1, s3
  ADD s0, s5, s0
  LA s5, f
  SH2ADD s0, s4, s0
  LW s0, 0(s0)
  ADD s3, s5, s3
  SH2ADD s3, s4, s3
  LW s3, 0(s3)
  BNE s0, s3, bb58
  # implict jump to bb51
bb51:   # loop depth 2
  # implict jump to bb52
bb52:   # loop depth 2
  BNE s0, s3, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  ADDIW s4, s4, -1
  BGE s4, zero, bb56
  # implict jump to bb55
bb55:   # loop depth 1
  JAL zero, bb47
bb56:   # loop depth 2
  JAL zero, bb50
bb57:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb54
bb58:   # loop depth 2
  ADD s1, s3, zero
  JAL zero, bb52
bb59:   # loop depth 1
  JAL zero, bb48
bb60:   # loop depth 1
  ADDI s4, zero, 19
  # implict jump to bb61
bb61:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  LA s3, f
  ADD s0, s3, s0
  SH2ADD s0, s4, s0
  LW s0, 0(s0)
  BNE s0, zero, bb69
  # implict jump to bb62
bb62:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb63
bb63:   # loop depth 2
  BNE s3, zero, bb68
  # implict jump to bb64
bb64:   # loop depth 2
  # implict jump to bb65
bb65:   # loop depth 2
  LA s0, dep
  ADDIW s4, s4, -1
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  BLT s5, s0, bb67
  # implict jump to bb66
bb66:   # loop depth 1
  JAL zero, bb44
bb67:   # loop depth 2
  JAL zero, bb61
bb68:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb65
bb69:   # loop depth 2
  LA s3, dep
  SH2ADD s3, s0, s3
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  JAL zero, bb63
bb70:   # loop depth 1
  JAL zero, bb42
bb71:   # loop depth 1
  ADD s1, s0, zero
  JAL zero, bb40
bb72:   # loop depth 1
  JAL zero, bb38
bb73:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb74
bb74:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s1, s1, s4
  ADDI s6, zero, 57
  ADD s4, a0, zero
  SLT s7, s6, s4
  SLTI s6, s4, 48
  XORI s7, s7, 1
  XORI s6, s6, 1
  ADDW s1, s1, s3
  AND s3, s6, s7
  ADDIW s1, s1, -48
  BNE s3, zero, bb76
  # implict jump to bb75
bb75:   # loop depth 1
  JAL zero, bb36
bb76:   # loop depth 2
  ADD s3, s4, zero
  JAL zero, bb74
bb77:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb78
bb78:   # loop depth 2
  XORI s1, s3, 45
  BEQ s1, zero, bb83
  # implict jump to bb79
bb79:   # loop depth 2
  # implict jump to bb80
bb80:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s3, a0, zero
  SLT s4, s1, s3
  SLTI s1, s3, 48
  OR s1, s1, s4
  BNE s1, zero, bb82
  # implict jump to bb81
bb81:   # loop depth 1
  JAL zero, bb34
bb82:   # loop depth 2
  JAL zero, bb78
bb83:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb80
bb84:   # loop depth 1
  JAL zero, bb32
bb85:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb86
bb86:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s1, s1, s3
  ADDI s5, zero, 57
  ADD s3, a0, zero
  SLT s6, s5, s3
  SLTI s5, s3, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  ADDW s0, s1, s0
  AND s5, s5, s6
  ADDIW s1, s0, -48
  BNE s5, zero, bb88
  # implict jump to bb87
bb87:   # loop depth 1
  JAL zero, bb30
bb88:   # loop depth 2
  ADD s0, s3, zero
  JAL zero, bb86
bb89:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb90
bb90:   # loop depth 2
  XORI s0, s0, 45
  BEQ s0, zero, bb95
  # implict jump to bb91
bb91:   # loop depth 2
  # implict jump to bb92
bb92:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s3, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s3
  BNE s1, zero, bb94
  # implict jump to bb93
bb93:   # loop depth 1
  JAL zero, bb28
bb94:   # loop depth 2
  JAL zero, bb90
bb95:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb92
bb96:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb97
bb97:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s3, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s3
  BNE s2, zero, bb128
  # implict jump to bb98
bb98:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb99
bb99:   # loop depth 1
  ADDI s2, zero, 57
  SLT s3, s2, s1
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  BNE s2, zero, bb124
  # implict jump to bb100
bb100:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb101
bb101:   # loop depth 1
  SUB s1, zero, s2
  BNE s4, zero, bb123
  # implict jump to bb102
bb102:   # loop depth 1
  ADD s1, s2, zero
  # implict jump to bb103
bb103:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s4, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s4
  BNE s2, zero, bb116
  # implict jump to bb104
bb104:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb105
bb105:   # loop depth 1
  ADDI s2, zero, 57
  SLT s4, s2, s3
  SLTI s2, s3, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb112
  # implict jump to bb106
bb106:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb107
bb107:   # loop depth 1
  SUB s5, zero, s2
  BNE s6, zero, bb111
  # implict jump to bb108
bb108:   # loop depth 1
  ADD s5, s2, zero
  # implict jump to bb109
bb109:   # loop depth 1
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
  BNE s0, s1, bb110
  JAL zero, bb23
bb110:   # loop depth 1
  JAL zero, bb97
bb111:   # loop depth 1
  JAL zero, bb109
bb112:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb113
bb113:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s2, s2, s4
  ADDI s5, zero, 57
  ADD s4, a0, zero
  SLT s7, s5, s4
  SLTI s5, s4, 48
  XORI s7, s7, 1
  XORI s5, s5, 1
  ADDW s2, s2, s3
  AND s3, s5, s7
  ADDIW s2, s2, -48
  BNE s3, zero, bb115
  # implict jump to bb114
bb114:   # loop depth 1
  JAL zero, bb107
bb115:   # loop depth 2
  ADD s3, s4, zero
  JAL zero, bb113
bb116:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb117
bb117:   # loop depth 2
  XORI s2, s3, 45
  BEQ s2, zero, bb122
  # implict jump to bb118
bb118:   # loop depth 2
  # implict jump to bb119
bb119:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s4, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s4
  BNE s2, zero, bb121
  # implict jump to bb120
bb120:   # loop depth 1
  JAL zero, bb105
bb121:   # loop depth 2
  JAL zero, bb117
bb122:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb119
bb123:   # loop depth 1
  JAL zero, bb103
bb124:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb125
bb125:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s2, s2, s3
  ADDI s5, zero, 57
  ADD s3, a0, zero
  SLT s6, s5, s3
  SLTI s5, s3, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  ADDW s1, s2, s1
  AND s5, s5, s6
  ADDIW s2, s1, -48
  BNE s5, zero, bb127
  # implict jump to bb126
bb126:   # loop depth 1
  JAL zero, bb101
bb127:   # loop depth 2
  ADD s1, s3, zero
  JAL zero, bb125
bb128:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s1, s1, 45
  BEQ s1, zero, bb134
  # implict jump to bb130
bb130:   # loop depth 2
  # implict jump to bb131
bb131:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s3, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s3
  BNE s2, zero, bb133
  # implict jump to bb132
bb132:   # loop depth 1
  JAL zero, bb99
bb133:   # loop depth 2
  JAL zero, bb129
bb134:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb131
bb135:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb136
bb136:   # loop depth 1
  LA s3, head
  ADDI s4, zero, -1
  ADDIW s1, s0, 1
  SH2ADD s0, s0, s3
  SW s4, 0(s0)
  BGE s2, s1, bb137
  JAL zero, bb22
bb137:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb136
bb138:   # loop depth 0
  JAL zero, bb21
bb139:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb140
bb140:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW s0, s0, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s0, s1
  AND s1, s4, s5
  ADDIW s0, s0, -48
  BNE s1, zero, bb142
  # implict jump to bb141
bb141:   # loop depth 0
  JAL zero, bb19
bb142:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb140
bb143:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb144
bb144:   # loop depth 1
  XORI s0, s1, 45
  BEQ s0, zero, bb149
  # implict jump to bb145
bb145:   # loop depth 1
  # implict jump to bb146
bb146:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb148
  # implict jump to bb147
bb147:   # loop depth 0
  JAL zero, bb17
bb148:   # loop depth 1
  JAL zero, bb144
bb149:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb146
bb150:   # loop depth 0
  JAL zero, bb15
bb151:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb152
bb152:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW s0, s0, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s0, s1
  AND s1, s4, s5
  ADDIW s0, s0, -48
  BNE s1, zero, bb154
  # implict jump to bb153
bb153:   # loop depth 0
  JAL zero, bb13
bb154:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb152
bb155:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb156
bb156:   # loop depth 1
  XORI s0, s1, 45
  BEQ s0, zero, bb161
  # implict jump to bb157
bb157:   # loop depth 1
  # implict jump to bb158
bb158:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb160
  # implict jump to bb159
bb159:   # loop depth 0
  JAL zero, bb11
bb160:   # loop depth 1
  JAL zero, bb156
bb161:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb158
