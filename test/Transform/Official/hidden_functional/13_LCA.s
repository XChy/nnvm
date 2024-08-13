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
  BNE s0, zero, bb154
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
  BNE s0, zero, bb150
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  SUB s1, zero, s0
  BNE s3, zero, bb149
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
  BNE s0, zero, bb142
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
  BNE s0, zero, bb138
  # implict jump to bb18
bb18:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  SUB s1, zero, s0
  BNE s3, zero, bb137
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
  LW s3, 0(s4)
  SLTI s0, s3, 1
  XORI s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb22
bb22:   # loop depth 0
  XORI s0, s3, 1
  BNE s0, zero, bb95
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
bb25:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb88
  # implict jump to bb26
bb26:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI s1, zero, 57
  SLT s2, s1, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  BNE s1, zero, bb84
  # implict jump to bb28
bb28:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SUB s0, zero, s1
  BNE s3, zero, bb83
  # implict jump to bb30
bb30:   # loop depth 1
  ADD s0, s1, zero
  # implict jump to bb31
bb31:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s2, a0, zero
  SLT s3, s1, s2
  SLTI s1, s2, 48
  OR s1, s1, s3
  BNE s1, zero, bb76
  # implict jump to bb32
bb32:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI s1, zero, 57
  SLT s3, s1, s2
  SLTI s1, s2, 48
  XORI s3, s3, 1
  XORI s1, s1, 1
  AND s1, s1, s3
  BNE s1, zero, bb72
  # implict jump to bb34
bb34:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  SUB a0, zero, s1
  BNE s4, zero, bb71
  # implict jump to bb36
bb36:   # loop depth 1
  ADD a0, s1, zero
  # implict jump to bb37
bb37:   # loop depth 1
  LA s1, dep
  LA s2, dep
  SH2ADD s1, s0, s1
  SH2ADD s3, a0, s2
  LW s2, 0(s1)
  LW s3, 0(s3)
  BLT s2, s3, bb70
  # implict jump to bb38
bb38:   # loop depth 1
  ADD s1, a0, zero
  # implict jump to bb39
bb39:   # loop depth 1
  BLT s2, s3, bb69
  # implict jump to bb40
bb40:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb41
bb41:   # loop depth 1
  LA s0, dep
  LA s2, dep
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  SH2ADD s2, s1, s2
  LW s4, 0(s2)
  BLT s4, s0, bb59
  # implict jump to bb42
bb42:   # loop depth 1
  # implict jump to bb43
bb43:   # loop depth 1
  XOR s0, a0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb58
  # implict jump to bb44
bb44:   # loop depth 1
  ADDI s0, zero, 80
  ADDI s2, zero, 19
  MULW s0, a0, s0
  SLT s2, s2, zero
  XORI s2, s2, 1
  BNE s2, zero, bb48
  # implict jump to bb45
bb45:   # loop depth 1
  # implict jump to bb46
bb46:   # loop depth 1
  LA a0, f
  ADD a0, a0, s0
  LW a0, 0(a0)
  # implict jump to bb47
bb47:   # loop depth 1
  LA s0, m
  LA s1, m
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(s0)
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  BNE s0, zero, bb25
  JAL zero, bb24
bb48:   # loop depth 1
  ADDI s3, zero, 19
  # implict jump to bb49
bb49:   # loop depth 2
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
  BNE s0, s2, bb57
  # implict jump to bb50
bb50:   # loop depth 2
  # implict jump to bb51
bb51:   # loop depth 2
  BNE s0, s2, bb56
  # implict jump to bb52
bb52:   # loop depth 2
  # implict jump to bb53
bb53:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  ADDIW s3, s3, -1
  SLT s2, s3, zero
  XORI s2, s2, 1
  BNE s2, zero, bb55
  # implict jump to bb54
bb54:   # loop depth 1
  JAL zero, bb46
bb55:   # loop depth 2
  JAL zero, bb49
bb56:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb53
bb57:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb51
bb58:   # loop depth 1
  JAL zero, bb47
bb59:   # loop depth 1
  ADDI s3, zero, 19
  # implict jump to bb60
bb60:   # loop depth 2
  ADDI s0, zero, 80
  MULW s0, a0, s0
  LA s2, f
  ADD s0, s2, s0
  SH2ADD s0, s3, s0
  LW s0, 0(s0)
  BNE s0, zero, bb68
  # implict jump to bb61
bb61:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb62
bb62:   # loop depth 2
  BNE s2, zero, bb67
  # implict jump to bb63
bb63:   # loop depth 2
  # implict jump to bb64
bb64:   # loop depth 2
  LA s0, dep
  ADDIW s3, s3, -1
  SH2ADD s0, a0, s0
  LW s0, 0(s0)
  BLT s4, s0, bb66
  # implict jump to bb65
bb65:   # loop depth 1
  JAL zero, bb43
bb66:   # loop depth 2
  JAL zero, bb60
bb67:   # loop depth 2
  ADD a0, s0, zero
  JAL zero, bb64
bb68:   # loop depth 2
  LA s2, dep
  SH2ADD s2, s0, s2
  LW s2, 0(s2)
  SLT s2, s2, s4
  XORI s2, s2, 1
  JAL zero, bb62
bb69:   # loop depth 1
  JAL zero, bb41
bb70:   # loop depth 1
  ADD s1, s0, zero
  JAL zero, bb39
bb71:   # loop depth 1
  JAL zero, bb37
bb72:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s1, s1, s3
  ADDI s5, zero, 57
  ADD s3, a0, zero
  SLT s6, s5, s3
  SLTI s5, s3, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  ADDW s1, s1, s2
  AND s2, s5, s6
  ADDIW s1, s1, -48
  BNE s2, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 1
  JAL zero, bb35
bb75:   # loop depth 2
  ADD s2, s3, zero
  JAL zero, bb73
bb76:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb77
bb77:   # loop depth 2
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb82
  # implict jump to bb78
bb78:   # loop depth 2
  # implict jump to bb79
bb79:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s2, a0, zero
  SLT s3, s1, s2
  SLTI s1, s2, 48
  OR s1, s1, s3
  BNE s1, zero, bb81
  # implict jump to bb80
bb80:   # loop depth 1
  JAL zero, bb33
bb81:   # loop depth 2
  JAL zero, bb77
bb82:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb79
bb83:   # loop depth 1
  JAL zero, bb31
bb84:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s1, s0
  AND s4, s4, s5
  ADDIW s1, s0, -48
  BNE s4, zero, bb87
  # implict jump to bb86
bb86:   # loop depth 1
  JAL zero, bb29
bb87:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb85
bb88:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  # implict jump to bb91
bb91:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  JAL zero, bb27
bb93:   # loop depth 2
  JAL zero, bb89
bb94:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb91
bb95:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb96
bb96:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s3, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s3
  BNE s2, zero, bb127
  # implict jump to bb97
bb97:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb98
bb98:   # loop depth 1
  ADDI s2, zero, 57
  SLT s3, s2, s1
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  BNE s2, zero, bb123
  # implict jump to bb99
bb99:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb100
bb100:   # loop depth 1
  SUB s1, zero, s2
  BNE s4, zero, bb122
  # implict jump to bb101
bb101:   # loop depth 1
  ADD s1, s2, zero
  # implict jump to bb102
bb102:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s4, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s4
  BNE s2, zero, bb115
  # implict jump to bb103
bb103:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb104
bb104:   # loop depth 1
  ADDI s2, zero, 57
  SLT s4, s2, s3
  SLTI s2, s3, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb111
  # implict jump to bb105
bb105:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb106
bb106:   # loop depth 1
  SUB s5, zero, s2
  BNE s6, zero, bb110
  # implict jump to bb107
bb107:   # loop depth 1
  ADD s5, s2, zero
  # implict jump to bb108
bb108:   # loop depth 1
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
  BNE s0, s1, bb109
  JAL zero, bb23
bb109:   # loop depth 1
  JAL zero, bb96
bb110:   # loop depth 1
  JAL zero, bb108
bb111:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb112
bb112:   # loop depth 2
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
  BNE s3, zero, bb114
  # implict jump to bb113
bb113:   # loop depth 1
  JAL zero, bb106
bb114:   # loop depth 2
  ADD s3, s4, zero
  JAL zero, bb112
bb115:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s2, s3, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb121
  # implict jump to bb117
bb117:   # loop depth 2
  # implict jump to bb118
bb118:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s4, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s4
  BNE s2, zero, bb120
  # implict jump to bb119
bb119:   # loop depth 1
  JAL zero, bb104
bb120:   # loop depth 2
  JAL zero, bb116
bb121:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb118
bb122:   # loop depth 1
  JAL zero, bb102
bb123:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb124
bb124:   # loop depth 2
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
  BNE s5, zero, bb126
  # implict jump to bb125
bb125:   # loop depth 1
  JAL zero, bb100
bb126:   # loop depth 2
  ADD s1, s3, zero
  JAL zero, bb124
bb127:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb128
bb128:   # loop depth 2
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb133
  # implict jump to bb129
bb129:   # loop depth 2
  # implict jump to bb130
bb130:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s3, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s3
  BNE s2, zero, bb132
  # implict jump to bb131
bb131:   # loop depth 1
  JAL zero, bb98
bb132:   # loop depth 2
  JAL zero, bb128
bb133:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb130
bb134:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb135
bb135:   # loop depth 1
  LA s4, head
  ADDIW s1, s0, 1
  ADDI s5, zero, -1
  SLT s2, s3, s1
  SH2ADD s0, s0, s4
  XORI s2, s2, 1
  SW s5, 0(s0)
  BNE s2, zero, bb136
  JAL zero, bb22
bb136:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb135
bb137:   # loop depth 0
  JAL zero, bb21
bb138:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb139
bb139:   # loop depth 1
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
  BNE s1, zero, bb141
  # implict jump to bb140
bb140:   # loop depth 0
  JAL zero, bb19
bb141:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb139
bb142:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb143
bb143:   # loop depth 1
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb148
  # implict jump to bb144
bb144:   # loop depth 1
  # implict jump to bb145
bb145:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb147
  # implict jump to bb146
bb146:   # loop depth 0
  JAL zero, bb17
bb147:   # loop depth 1
  JAL zero, bb143
bb148:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb145
bb149:   # loop depth 0
  JAL zero, bb15
bb150:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb151
bb151:   # loop depth 1
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
  BNE s1, zero, bb153
  # implict jump to bb152
bb152:   # loop depth 0
  JAL zero, bb13
bb153:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb151
bb154:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb155
bb155:   # loop depth 1
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb160
  # implict jump to bb156
bb156:   # loop depth 1
  # implict jump to bb157
bb157:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb159
  # implict jump to bb158
bb158:   # loop depth 0
  JAL zero, bb11
bb159:   # loop depth 1
  JAL zero, bb155
bb160:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb157
