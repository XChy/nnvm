.global main
.section .bss

head:
.space 4020
inq:
.space 4020
next:
.space 20020
que:
.space 4020
to:
.space 20020




.section .data
h:
.word 0x00000000





cnt:
.word 0x00000000
m:
.word 0x00000000
tail:
.word 0x00000000
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s1, 48
  BNE s2, zero, bb143
  # implict jump to bb2
bb2:
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb3
bb3:
  BNE s2, zero, bb139
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, s1, zero
  ADD s1, s3, zero
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb138
  # implict jump to bb6
bb6:
  ADD s3, zero, zero
  # implict jump to bb7
bb7:
  BNE s3, zero, bb137
  # implict jump to bb8
bb8:
  BNE s0, zero, bb136
  # implict jump to bb9
bb9:
  ADD s0, s1, zero
  # implict jump to bb10
bb10:
  LA s1, n
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s1, 48
  BNE s2, zero, bb135
  # implict jump to bb12
bb12:
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb13
bb13:
  BNE s2, zero, bb131
  # implict jump to bb14
bb14:
  ADD s3, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  ADD s1, s3, zero
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb130
  # implict jump to bb16
bb16:
  ADD s3, zero, zero
  # implict jump to bb17
bb17:
  BNE s3, zero, bb129
  # implict jump to bb18
bb18:
  BNE s0, zero, bb128
  # implict jump to bb19
bb19:
  ADD s0, s1, zero
  # implict jump to bb20
bb20:
  LA s1, m
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  SLLIW s1, s0, 2
  LA s2, head
  ADD s1, s2, s1
  ADDI s2, zero, -1
  SW s2, 0(s1)
  ADDIW s0, s0, 1
  SLTI s1, s0, 1005
  BNE s1, zero, bb127
  # implict jump to bb22
bb22:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb24:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  ADD s3, s0, zero
  ADD s2, s1, zero
  ADD s1, s5, zero
  ADD s0, s4, zero
  CALL getch
  ADD s4, a0, zero
  # implict jump to bb26
bb26:
  XORI s5, s4, 81
  BNE s5, zero, bb126
  # implict jump to bb27
bb27:
  ADD s5, zero, zero
  # implict jump to bb28
bb28:
  BNE s5, zero, bb125
  # implict jump to bb29
bb29:
  XORI s4, s4, 81
  SLTIU s4, s4, 1
  BNE s4, zero, bb69
  # implict jump to bb30
bb30:
  CALL getch
  ADD s2, a0, zero
  ADD s4, zero, zero
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  ADD s2, s4, zero
  SLTI s4, s3, 48
  BNE s4, zero, bb68
  # implict jump to bb32
bb32:
  ADDI s4, zero, 57
  SLT s4, s4, s3
  # implict jump to bb33
bb33:
  BNE s4, zero, bb64
  # implict jump to bb34
bb34:
  ADD s5, zero, zero
  # implict jump to bb35
bb35:
  ADD s4, s3, zero
  ADD s3, s5, zero
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb63
  # implict jump to bb36
bb36:
  ADD s5, zero, zero
  # implict jump to bb37
bb37:
  BNE s5, zero, bb62
  # implict jump to bb38
bb38:
  BNE s2, zero, bb61
  # implict jump to bb39
bb39:
  ADD s2, s3, zero
  # implict jump to bb40
bb40:
  CALL getch
  ADD s3, a0, zero
  ADD s5, zero, zero
  # implict jump to bb41
bb41:
  ADD s4, s3, zero
  ADD s3, s5, zero
  SLTI s5, s4, 48
  BNE s5, zero, bb60
  # implict jump to bb42
bb42:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  # implict jump to bb43
bb43:
  BNE s5, zero, bb56
  # implict jump to bb44
bb44:
  ADD s6, zero, zero
  # implict jump to bb45
bb45:
  ADD s5, s4, zero
  ADD s4, s6, zero
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb55
  # implict jump to bb46
bb46:
  ADD s6, zero, zero
  # implict jump to bb47
bb47:
  BNE s6, zero, bb54
  # implict jump to bb48
bb48:
  BNE s3, zero, bb53
  # implict jump to bb49
bb49:
  ADD s3, s4, zero
  # implict jump to bb50
bb50:
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s5, s4, 2
  LA s6, to
  ADD s6, s6, s5
  SW s3, 0(s6)
  LA s6, next
  ADD s5, s6, s5
  SLLIW s6, s2, 2
  LA s7, head
  ADD s6, s7, s6
  LW s7, 0(s6)
  SW s7, 0(s5)
  SW s4, 0(s6)
  ADDIW s5, s4, 1
  LA s6, cnt
  SW s5, 0(s6)
  SLLIW s6, s5, 2
  LA s7, to
  ADD s7, s7, s6
  SW s2, 0(s7)
  LA s7, next
  ADD s6, s7, s6
  SLLIW s7, s3, 2
  LA s8, head
  ADD s7, s8, s7
  LW s8, 0(s7)
  SW s8, 0(s6)
  SW s5, 0(s7)
  ADDIW s4, s4, 2
  LA s5, cnt
  SW s4, 0(s5)
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb51
bb51:
  ADD s3, s0, zero
  ADD s2, s1, zero
  ADD s1, s5, zero
  ADD s0, s4, zero
  LA s4, m
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  LA s5, m
  SW s4, 0(s5)
  LA s4, m
  LW s4, 0(s4)
  BNE s4, zero, bb52
  JAL zero, bb23
bb52:
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb25
bb53:
  SUBW s3, zero, s4
  JAL zero, bb50
bb54:
  ADDI s6, zero, 10
  MULW s4, s4, s6
  ADDW s4, s4, s5
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  CALL getch
  ADD s5, a0, zero
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb45
bb55:
  ADDI s6, zero, 57
  SLT s6, s6, s5
  XORI s6, s6, 1
  JAL zero, bb47
bb56:
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb59
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  CALL getch
  ADD s4, a0, zero
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb41
bb59:
  ADDI s3, zero, 1
  JAL zero, bb58
bb60:
  ADDI s5, zero, 1
  JAL zero, bb43
bb61:
  SUBW s2, zero, s3
  JAL zero, bb40
bb62:
  ADDI s5, zero, 10
  MULW s3, s3, s5
  ADDW s3, s3, s4
  ADDI s4, zero, 48
  SUBW s3, s3, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb35
bb63:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  JAL zero, bb37
bb64:
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb67
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  CALL getch
  ADD s3, a0, zero
  ADD s4, s2, zero
  ADD s2, s3, zero
  JAL zero, bb31
bb67:
  ADDI s2, zero, 1
  JAL zero, bb66
bb68:
  ADDI s4, zero, 1
  JAL zero, bb33
bb69:
  CALL getch
  ADD s0, a0, zero
  ADD s4, zero, zero
  # implict jump to bb70
bb70:
  ADD s1, s0, zero
  ADD s0, s4, zero
  SLTI s4, s1, 48
  BNE s4, zero, bb124
  # implict jump to bb71
bb71:
  ADDI s4, zero, 57
  SLT s4, s4, s1
  # implict jump to bb72
bb72:
  BNE s4, zero, bb120
  # implict jump to bb73
bb73:
  ADD s5, zero, zero
  # implict jump to bb74
bb74:
  ADD s4, s1, zero
  ADD s1, s5, zero
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb119
  # implict jump to bb75
bb75:
  ADD s5, zero, zero
  # implict jump to bb76
bb76:
  BNE s5, zero, bb118
  # implict jump to bb77
bb77:
  BNE s0, zero, bb117
  # implict jump to bb78
bb78:
  ADD s0, s1, zero
  # implict jump to bb79
bb79:
  CALL getch
  ADD s1, a0, zero
  ADD s5, zero, zero
  # implict jump to bb80
bb80:
  ADD s4, s1, zero
  ADD s1, s5, zero
  SLTI s5, s4, 48
  BNE s5, zero, bb116
  # implict jump to bb81
bb81:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  # implict jump to bb82
bb82:
  BNE s5, zero, bb112
  # implict jump to bb83
bb83:
  ADD s6, zero, zero
  # implict jump to bb84
bb84:
  ADD s5, s4, zero
  ADD s4, s6, zero
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb111
  # implict jump to bb85
bb85:
  ADD s6, zero, zero
  # implict jump to bb86
bb86:
  BNE s6, zero, bb110
  # implict jump to bb87
bb87:
  BNE s1, zero, bb109
  # implict jump to bb88
bb88:
  ADD a0, s4, zero
  # implict jump to bb89
bb89:
  ADD s1, a0, zero
  LA a0, h
  SW zero, 0(a0)
  LA a0, tail
  SW zero, 0(a0)
  SLLIW a0, s0, 2
  LA s4, inq
  ADD a0, s4, a0
  ADDI s4, zero, 1
  SW s4, 0(a0)
  LA a0, tail
  ADDI s4, zero, 1
  SW s4, 0(a0)
  LA a0, que
  SW s0, 4(a0)
  LA a0, h
  LW a0, 0(a0)
  LA s4, tail
  LW s4, 0(s4)
  BLT a0, s4, bb96
  # implict jump to bb90
bb90:
  ADD a0, zero, zero
  # implict jump to bb91
bb91:
  LA s4, tail
  LW s4, 0(s4)
  SLT s4, s4, zero
  XORI s4, s4, 1
  BNE s4, zero, bb93
  # implict jump to bb92
bb92:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb51
bb93:
  ADD s4, zero, zero
  # implict jump to bb94
bb94:
  SLLIW s5, s4, 2
  LA s6, que
  ADD s5, s6, s5
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, inq
  ADD s5, s6, s5
  SW zero, 0(s5)
  ADDIW s4, s4, 1
  LA s5, tail
  LW s5, 0(s5)
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb95
  JAL zero, bb92
bb95:
  JAL zero, bb94
bb96:
  ADD a0, zero, zero
  # implict jump to bb97
bb97:
  LA s4, h
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, h
  SW s4, 0(s5)
  SLLIW s4, s4, 2
  LA s5, que
  ADD s4, s5, s4
  LW s4, 0(s4)
  XOR s5, s4, s1
  SLTIU s5, s5, 1
  BNE s5, zero, bb108
  # implict jump to bb98
bb98:
  # implict jump to bb99
bb99:
  SLLIW s4, s4, 2
  LA s5, head
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s5, s4, -1
  BNE s5, zero, bb103
  # implict jump to bb100
bb100:
  LA s4, h
  LW s4, 0(s4)
  LA s5, tail
  LW s5, 0(s5)
  BLT s4, s5, bb102
  # implict jump to bb101
bb101:
  JAL zero, bb91
bb102:
  JAL zero, bb97
bb103:
  # implict jump to bb104
bb104:
  SLLIW s4, s4, 2
  LA s5, to
  ADD s5, s5, s4
  LW s5, 0(s5)
  SLLIW s6, s5, 2
  LA s7, inq
  ADD s6, s7, s6
  LW s7, 0(s6)
  SLTU s7, zero, s7
  XORI s7, s7, 1
  BNE s7, zero, bb107
  # implict jump to bb105
bb105:
  LA s5, next
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s5, s4, -1
  BNE s5, zero, bb106
  JAL zero, bb100
bb106:
  JAL zero, bb104
bb107:
  ADDI s7, zero, 1
  SW s7, 0(s6)
  LA s6, tail
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, tail
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, que
  ADD s6, s7, s6
  SW s5, 0(s6)
  JAL zero, bb105
bb108:
  ADDI a0, zero, 1
  JAL zero, bb99
bb109:
  SUBW a0, zero, s4
  JAL zero, bb89
bb110:
  ADDI s6, zero, 10
  MULW s4, s4, s6
  ADDW s4, s4, s5
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  CALL getch
  ADD s5, a0, zero
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb84
bb111:
  ADDI s6, zero, 57
  SLT s6, s6, s5
  XORI s6, s6, 1
  JAL zero, bb86
bb112:
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb115
  # implict jump to bb113
bb113:
  # implict jump to bb114
bb114:
  CALL getch
  ADD s4, a0, zero
  ADD s5, s1, zero
  ADD s1, s4, zero
  JAL zero, bb80
bb115:
  ADDI s1, zero, 1
  JAL zero, bb114
bb116:
  ADDI s5, zero, 1
  JAL zero, bb82
bb117:
  SUBW s0, zero, s1
  JAL zero, bb79
bb118:
  ADDI s5, zero, 10
  MULW s1, s1, s5
  ADDW s1, s1, s4
  ADDI s4, zero, 48
  SUBW s1, s1, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s1, zero
  ADD s1, s4, zero
  JAL zero, bb74
bb119:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  JAL zero, bb76
bb120:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb123
  # implict jump to bb121
bb121:
  # implict jump to bb122
bb122:
  CALL getch
  ADD s1, a0, zero
  ADD s4, s0, zero
  ADD s0, s1, zero
  JAL zero, bb70
bb123:
  ADDI s0, zero, 1
  JAL zero, bb122
bb124:
  ADDI s4, zero, 1
  JAL zero, bb72
bb125:
  CALL getch
  ADD s4, a0, zero
  JAL zero, bb26
bb126:
  XORI s5, s4, 85
  SLTU s5, zero, s5
  JAL zero, bb28
bb127:
  JAL zero, bb21
bb128:
  SUBW s0, zero, s1
  JAL zero, bb20
bb129:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  JAL zero, bb15
bb130:
  ADDI s3, zero, 57
  SLT s3, s3, s2
  XORI s3, s3, 1
  JAL zero, bb17
bb131:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb134
  # implict jump to bb132
bb132:
  # implict jump to bb133
bb133:
  CALL getch
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb11
bb134:
  ADDI s0, zero, 1
  JAL zero, bb133
bb135:
  ADDI s2, zero, 1
  JAL zero, bb13
bb136:
  SUBW s0, zero, s1
  JAL zero, bb10
bb137:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  JAL zero, bb5
bb138:
  ADDI s3, zero, 57
  SLT s3, s3, s2
  XORI s3, s3, 1
  JAL zero, bb7
bb139:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb142
  # implict jump to bb140
bb140:
  # implict jump to bb141
bb141:
  CALL getch
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb1
bb142:
  ADDI s0, zero, 1
  JAL zero, bb141
bb143:
  ADDI s2, zero, 1
  JAL zero, bb3
