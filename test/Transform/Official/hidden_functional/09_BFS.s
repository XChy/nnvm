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
main:   # loop depth 0
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
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI s0, s1, 48
  BNE s0, zero, bb143
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s0, zero, bb139
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s0, zero, bb137
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s3, zero, bb136
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  LA s0, n
  SW s2, 0(s0)
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLTI s0, s1, 48
  BNE s0, zero, bb135
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s0, zero, bb131
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb129
  # implict jump to bb18
bb18:   # loop depth 0
  BNE s3, zero, bb128
  # implict jump to bb19
bb19:   # loop depth 0
  # implict jump to bb20
bb20:   # loop depth 0
  LA s0, m
  SW s2, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  SLLIW s1, s0, 2
  LA s3, head
  ADD s1, s3, s1
  ADDI s3, zero, -1
  SW s3, 0(s1)
  ADDIW s0, s0, 1
  SLTI s1, s0, 1005
  BNE s1, zero, bb127
  # implict jump to bb22
bb22:   # loop depth 0
  BNE s2, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 0
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
bb24:   # loop depth 0
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s2, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb26
bb26:   # loop depth 2
  XORI s0, s1, 81
  BNE s0, zero, bb126
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s0, zero, bb125
  # implict jump to bb29
bb29:   # loop depth 1
  XORI s0, s1, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb69
  # implict jump to bb30
bb30:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb68
  # implict jump to bb32
bb32:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb33
bb33:   # loop depth 2
  BNE s0, zero, bb64
  # implict jump to bb34
bb34:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb35
bb35:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb63
  # implict jump to bb36
bb36:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 2
  BNE s0, zero, bb62
  # implict jump to bb38
bb38:   # loop depth 1
  BNE s2, zero, bb61
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb60
  # implict jump to bb42
bb42:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb43
bb43:   # loop depth 2
  BNE s0, zero, bb56
  # implict jump to bb44
bb44:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb45
bb45:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb55
  # implict jump to bb46
bb46:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb47
bb47:   # loop depth 2
  BNE s0, zero, bb54
  # implict jump to bb48
bb48:   # loop depth 1
  BNE s3, zero, bb53
  # implict jump to bb49
bb49:   # loop depth 1
  # implict jump to bb50
bb50:   # loop depth 1
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  LA s3, to
  ADD s3, s3, s1
  SW s2, 0(s3)
  LA s3, next
  ADD s1, s3, s1
  SLLIW s3, s4, 2
  LA s7, head
  ADD s3, s7, s3
  LW s7, 0(s3)
  SW s7, 0(s1)
  SW s0, 0(s3)
  ADDIW s1, s0, 1
  LA s3, cnt
  SW s1, 0(s3)
  SLLIW s3, s1, 2
  LA s7, to
  ADD s7, s7, s3
  SW s4, 0(s7)
  LA s7, next
  ADD s3, s7, s3
  SLLIW s7, s2, 2
  LA s8, head
  ADD s7, s8, s7
  LW s8, 0(s7)
  SW s8, 0(s3)
  SW s1, 0(s7)
  ADDIW s0, s0, 2
  LA s1, cnt
  SW s0, 0(s1)
  # implict jump to bb51
bb51:   # loop depth 1
  LA s0, m
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, m
  SW s0, 0(s1)
  BNE s0, zero, bb52
  JAL zero, bb23
bb52:   # loop depth 1
  JAL zero, bb25
bb53:   # loop depth 1
  SUBW s2, zero, s2
  JAL zero, bb50
bb54:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb45
bb55:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb47
bb56:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb57
bb57:   # loop depth 2
  # implict jump to bb58
bb58:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb41
bb59:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb58
bb60:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb43
bb61:   # loop depth 1
  SUBW s4, zero, s4
  JAL zero, bb40
bb62:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s4, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s4, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb35
bb63:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb37
bb64:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb67
  # implict jump to bb65
bb65:   # loop depth 2
  # implict jump to bb66
bb66:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb31
bb67:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb66
bb68:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb33
bb69:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb70
bb70:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb124
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb72
bb72:   # loop depth 2
  BNE s0, zero, bb120
  # implict jump to bb73
bb73:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb74
bb74:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb75
bb75:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb76
bb76:   # loop depth 2
  BNE s0, zero, bb118
  # implict jump to bb77
bb77:   # loop depth 1
  BNE s3, zero, bb117
  # implict jump to bb78
bb78:   # loop depth 1
  # implict jump to bb79
bb79:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb80
bb80:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb116
  # implict jump to bb81
bb81:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb82
bb82:   # loop depth 2
  BNE s0, zero, bb112
  # implict jump to bb83
bb83:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb84
bb84:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb85
bb85:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb86
bb86:   # loop depth 2
  BNE s0, zero, bb110
  # implict jump to bb87
bb87:   # loop depth 1
  BNE s3, zero, bb109
  # implict jump to bb88
bb88:   # loop depth 1
  # implict jump to bb89
bb89:   # loop depth 1
  LA a0, h
  SW zero, 0(a0)
  LA a0, tail
  SW zero, 0(a0)
  SLLIW a0, s6, 2
  LA s0, inq
  ADD a0, s0, a0
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, tail
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, que
  SW s6, 4(a0)
  ADDI a0, zero, 1
  BNE a0, zero, bb96
  # implict jump to bb90
bb90:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb91
bb91:   # loop depth 1
  LA s0, tail
  LW s0, 0(s0)
  SLT s0, s0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb51
bb93:   # loop depth 1
  LA s0, tail
  LW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb94
bb94:   # loop depth 2
  SLLIW s3, s0, 2
  LA s7, que
  ADD s3, s7, s3
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s7, inq
  ADD s3, s7, s3
  SW zero, 0(s3)
  ADDIW s0, s0, 1
  SLT s3, s1, s0
  XORI s3, s3, 1
  BNE s3, zero, bb95
  JAL zero, bb92
bb95:   # loop depth 2
  JAL zero, bb94
bb96:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  LA s0, h
  LW s0, 0(s0)
  ADDIW s1, s0, 1
  LA s0, h
  SW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s3, que
  ADD s0, s3, s0
  LW s0, 0(s0)
  XOR s3, s0, s5
  SLTIU s3, s3, 1
  BNE s3, zero, bb108
  # implict jump to bb98
bb98:   # loop depth 2
  # implict jump to bb99
bb99:   # loop depth 2
  SLLIW s0, s0, 2
  LA s3, head
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s3, s0, -1
  BNE s3, zero, bb103
  # implict jump to bb100
bb100:   # loop depth 2
  LA s0, tail
  LW s0, 0(s0)
  BLT s1, s0, bb102
  # implict jump to bb101
bb101:   # loop depth 2
  JAL zero, bb91
bb102:   # loop depth 2
  JAL zero, bb97
bb103:   # loop depth 2
  # implict jump to bb104
bb104:   # loop depth 3
  SLLIW s0, s0, 2
  LA s3, to
  ADD s3, s3, s0
  LW s3, 0(s3)
  SLLIW s7, s3, 2
  LA s8, inq
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLTU s8, zero, s8
  XORI s8, s8, 1
  BNE s8, zero, bb107
  # implict jump to bb105
bb105:   # loop depth 3
  LA s3, next
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s3, s0, -1
  BNE s3, zero, bb106
  JAL zero, bb100
bb106:   # loop depth 3
  JAL zero, bb104
bb107:   # loop depth 3
  ADDI s8, zero, 1
  SW s8, 0(s7)
  LA s7, tail
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, tail
  SW s7, 0(s8)
  SLLIW s7, s7, 2
  LA s8, que
  ADD s7, s8, s7
  SW s3, 0(s7)
  JAL zero, bb105
bb108:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb99
bb109:   # loop depth 1
  SUBW s5, zero, s5
  JAL zero, bb89
bb110:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s5, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s5, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb84
bb111:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb86
bb112:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:   # loop depth 2
  # implict jump to bb114
bb114:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb80
bb115:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb114
bb116:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb82
bb117:   # loop depth 1
  SUBW s6, zero, s6
  JAL zero, bb79
bb118:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s6, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s6, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb74
bb119:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb76
bb120:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb121
bb121:   # loop depth 2
  # implict jump to bb122
bb122:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb70
bb123:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb122
bb124:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb72
bb125:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb26
bb126:   # loop depth 2
  XORI s0, s1, 85
  SLTU s0, zero, s0
  JAL zero, bb28
bb127:   # loop depth 1
  JAL zero, bb21
bb128:   # loop depth 0
  SUBW s2, zero, s2
  JAL zero, bb20
bb129:   # loop depth 1
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb15
bb130:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb17
bb131:   # loop depth 1
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:   # loop depth 1
  # implict jump to bb133
bb133:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb11
bb134:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb133
bb135:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb13
bb136:   # loop depth 0
  SUBW s2, zero, s2
  JAL zero, bb10
bb137:   # loop depth 1
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb5
bb138:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb7
bb139:   # loop depth 1
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb140
bb140:   # loop depth 1
  # implict jump to bb141
bb141:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb142:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb141
bb143:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb3
