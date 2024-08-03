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
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s0, zero
  ADD s2, s1, zero
  SLTI s0, s3, 48
  BNE s0, zero, bb143
  # implict jump to bb2
bb2:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  # implict jump to bb3
bb3:
  BNE s0, zero, bb139
  # implict jump to bb4
bb4:
  ADD s1, zero, zero
  ADD s0, s3, zero
  # implict jump to bb5
bb5:
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  BNE s0, zero, bb137
  # implict jump to bb8
bb8:
  BNE s2, zero, bb136
  # implict jump to bb9
bb9:
  ADD s0, s1, zero
  # implict jump to bb10
bb10:
  ADD s1, s0, zero
  LA s0, n
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s3, s0, zero
  ADD s2, s1, zero
  SLTI s0, s3, 48
  BNE s0, zero, bb135
  # implict jump to bb12
bb12:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  # implict jump to bb13
bb13:
  BNE s0, zero, bb131
  # implict jump to bb14
bb14:
  ADD s1, zero, zero
  ADD s0, s3, zero
  # implict jump to bb15
bb15:
  ADD s3, s0, zero
  SLTI s0, s3, 48
  XORI s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb16
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  BNE s0, zero, bb129
  # implict jump to bb18
bb18:
  BNE s2, zero, bb128
  # implict jump to bb19
bb19:
  ADD s0, s1, zero
  # implict jump to bb20
bb20:
  ADD s1, s0, zero
  LA s0, m
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  ADD s2, s0, zero
  SLLIW s1, s2, 2
  LA s0, head
  ADD s1, s0, s1
  ADDI s0, zero, -1
  SW s0, 0(s1)
  ADDIW s1, s2, 1
  SLTI s0, s1, 1005
  BNE s0, zero, bb127
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
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb25
bb25:
  ADD s4, s1, zero
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb26
bb26:
  ADD s5, s0, zero
  XORI s0, s5, 81
  BNE s0, zero, bb126
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  BNE s0, zero, bb125
  # implict jump to bb29
bb29:
  XORI s0, s5, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb69
  # implict jump to bb30
bb30:
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  ADD s5, s0, zero
  ADD s4, s2, zero
  SLTI s0, s5, 48
  BNE s0, zero, bb68
  # implict jump to bb32
bb32:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  # implict jump to bb33
bb33:
  BNE s0, zero, bb64
  # implict jump to bb34
bb34:
  ADD s2, zero, zero
  ADD s0, s5, zero
  # implict jump to bb35
bb35:
  ADD s5, s0, zero
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb63
  # implict jump to bb36
bb36:
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  BNE s0, zero, bb62
  # implict jump to bb38
bb38:
  BNE s4, zero, bb61
  # implict jump to bb39
bb39:
  ADD s0, s2, zero
  # implict jump to bb40
bb40:
  ADD s2, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s4, zero, zero
  # implict jump to bb41
bb41:
  ADD s6, s0, zero
  SLTI s0, s6, 48
  BNE s0, zero, bb60
  # implict jump to bb42
bb42:
  ADDI s0, zero, 57
  SLT s0, s0, s6
  # implict jump to bb43
bb43:
  BNE s0, zero, bb56
  # implict jump to bb44
bb44:
  ADD s5, zero, zero
  ADD s0, s6, zero
  # implict jump to bb45
bb45:
  ADD s6, s0, zero
  SLTI s0, s6, 48
  XORI s0, s0, 1
  BNE s0, zero, bb55
  # implict jump to bb46
bb46:
  ADD s0, zero, zero
  # implict jump to bb47
bb47:
  BNE s0, zero, bb54
  # implict jump to bb48
bb48:
  BNE s4, zero, bb53
  # implict jump to bb49
bb49:
  ADD s0, s5, zero
  # implict jump to bb50
bb50:
  ADD s4, s0, zero
  LA s0, cnt
  LW s5, 0(s0)
  SLLIW s6, s5, 2
  LA s0, to
  ADD s0, s0, s6
  SW s4, 0(s0)
  LA s0, next
  ADD s7, s0, s6
  SLLIW s6, s2, 2
  LA s0, head
  ADD s0, s0, s6
  LW s6, 0(s0)
  SW s6, 0(s7)
  SW s5, 0(s0)
  ADDIW s6, s5, 1
  LA s0, cnt
  SW s6, 0(s0)
  SLLIW s7, s6, 2
  LA s0, to
  ADD s0, s0, s7
  SW s2, 0(s0)
  LA s0, next
  ADD s8, s0, s7
  SLLIW s7, s4, 2
  LA s0, head
  ADD s0, s0, s7
  LW s7, 0(s0)
  SW s7, 0(s8)
  SW s6, 0(s0)
  ADDIW s5, s5, 2
  LA s0, cnt
  SW s5, 0(s0)
  ADD s5, s4, zero
  ADD s4, s2, zero
  ADD s2, s3, zero
  ADD s0, s1, zero
  # implict jump to bb51
bb51:
  ADD s3, s0, zero
  ADD s1, s5, zero
  LA s0, m
  LW s5, 0(s0)
  ADDI s0, zero, 1
  SUBW s5, s5, s0
  LA s0, m
  SW s5, 0(s0)
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb52
  JAL zero, bb23
bb52:
  ADD s0, s3, zero
  ADD s3, s2, zero
  ADD s2, s4, zero
  JAL zero, bb25
bb53:
  SUBW s0, zero, s5
  JAL zero, bb50
bb54:
  ADDI s0, zero, 10
  MULW s0, s5, s0
  ADDW s5, s0, s6
  ADDI s0, zero, 48
  SUBW s5, s5, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb45
bb55:
  ADDI s0, zero, 57
  SLT s0, s0, s6
  XORI s0, s0, 1
  JAL zero, bb47
bb56:
  XORI s0, s6, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb57
bb57:
  ADD s0, s4, zero
  # implict jump to bb58
bb58:
  ADD s4, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb41
bb59:
  ADDI s0, zero, 1
  JAL zero, bb58
bb60:
  ADDI s0, zero, 1
  JAL zero, bb43
bb61:
  SUBW s0, zero, s2
  JAL zero, bb40
bb62:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s2, s0, s5
  ADDI s0, zero, 48
  SUBW s2, s2, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb35
bb63:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb37
bb64:
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb67
  # implict jump to bb65
bb65:
  ADD s0, s4, zero
  # implict jump to bb66
bb66:
  ADD s2, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb31
bb67:
  ADDI s0, zero, 1
  JAL zero, bb66
bb68:
  ADDI s0, zero, 1
  JAL zero, bb33
bb69:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb70
bb70:
  ADD s5, s0, zero
  ADD s3, s1, zero
  SLTI s0, s5, 48
  BNE s0, zero, bb124
  # implict jump to bb71
bb71:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  # implict jump to bb72
bb72:
  BNE s0, zero, bb120
  # implict jump to bb73
bb73:
  ADD s1, zero, zero
  ADD s0, s5, zero
  # implict jump to bb74
bb74:
  ADD s5, s0, zero
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb75
bb75:
  ADD s0, zero, zero
  # implict jump to bb76
bb76:
  BNE s0, zero, bb118
  # implict jump to bb77
bb77:
  BNE s3, zero, bb117
  # implict jump to bb78
bb78:
  ADD s0, s1, zero
  # implict jump to bb79
bb79:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s3, zero, zero
  # implict jump to bb80
bb80:
  ADD s6, s0, zero
  SLTI s0, s6, 48
  BNE s0, zero, bb116
  # implict jump to bb81
bb81:
  ADDI s0, zero, 57
  SLT s0, s0, s6
  # implict jump to bb82
bb82:
  BNE s0, zero, bb112
  # implict jump to bb83
bb83:
  ADD s5, zero, zero
  ADD s0, s6, zero
  # implict jump to bb84
bb84:
  ADD s6, s0, zero
  SLTI s0, s6, 48
  XORI s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb85
bb85:
  ADD s0, zero, zero
  # implict jump to bb86
bb86:
  BNE s0, zero, bb110
  # implict jump to bb87
bb87:
  BNE s3, zero, bb109
  # implict jump to bb88
bb88:
  ADD a0, s5, zero
  # implict jump to bb89
bb89:
  ADD s0, a0, zero
  LA a0, h
  SW zero, 0(a0)
  LA a0, tail
  SW zero, 0(a0)
  SLLIW s3, s1, 2
  LA a0, inq
  ADD s3, a0, s3
  ADDI a0, zero, 1
  SW a0, 0(s3)
  LA s3, tail
  ADDI a0, zero, 1
  SW a0, 0(s3)
  LA a0, que
  SW s1, 4(a0)
  LA a0, h
  LW s3, 0(a0)
  LA a0, tail
  LW a0, 0(a0)
  BLT s3, a0, bb96
  # implict jump to bb90
bb90:
  ADD a0, zero, zero
  # implict jump to bb91
bb91:
  ADD s3, a0, zero
  LA a0, tail
  LW a0, 0(a0)
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb93
  # implict jump to bb92
bb92:
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s5, s4, zero
  ADD s4, s2, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb51
bb93:
  ADD a0, zero, zero
  # implict jump to bb94
bb94:
  ADD s6, a0, zero
  SLLIW s5, s6, 2
  LA a0, que
  ADD a0, a0, s5
  LW a0, 0(a0)
  SLLIW s5, a0, 2
  LA a0, inq
  ADD a0, a0, s5
  SW zero, 0(a0)
  ADDIW s5, s6, 1
  LA a0, tail
  LW a0, 0(a0)
  SLT a0, a0, s5
  XORI a0, a0, 1
  BNE a0, zero, bb95
  JAL zero, bb92
bb95:
  ADD a0, s5, zero
  JAL zero, bb94
bb96:
  ADD a0, zero, zero
  # implict jump to bb97
bb97:
  ADD s3, a0, zero
  LA a0, h
  LW a0, 0(a0)
  ADDIW s5, a0, 1
  LA a0, h
  SW s5, 0(a0)
  SLLIW s5, s5, 2
  LA a0, que
  ADD a0, a0, s5
  LW s5, 0(a0)
  XOR a0, s5, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb108
  # implict jump to bb98
bb98:
  ADD a0, s3, zero
  # implict jump to bb99
bb99:
  ADD s3, a0, zero
  SLLIW s5, s5, 2
  LA a0, head
  ADD a0, a0, s5
  LW s5, 0(a0)
  XORI a0, s5, -1
  BNE a0, zero, bb103
  # implict jump to bb100
bb100:
  LA a0, h
  LW s5, 0(a0)
  LA a0, tail
  LW a0, 0(a0)
  BLT s5, a0, bb102
  # implict jump to bb101
bb101:
  ADD a0, s3, zero
  JAL zero, bb91
bb102:
  ADD a0, s3, zero
  JAL zero, bb97
bb103:
  ADD a0, s5, zero
  # implict jump to bb104
bb104:
  SLLIW s5, a0, 2
  LA a0, to
  ADD a0, a0, s5
  LW s6, 0(a0)
  SLLIW s7, s6, 2
  LA a0, inq
  ADD s7, a0, s7
  LW a0, 0(s7)
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb107
  # implict jump to bb105
bb105:
  LA a0, next
  ADD a0, a0, s5
  LW s5, 0(a0)
  XORI a0, s5, -1
  BNE a0, zero, bb106
  JAL zero, bb100
bb106:
  ADD a0, s5, zero
  JAL zero, bb104
bb107:
  ADDI a0, zero, 1
  SW a0, 0(s7)
  LA a0, tail
  LW a0, 0(a0)
  ADDIW s7, a0, 1
  LA a0, tail
  SW s7, 0(a0)
  SLLIW s7, s7, 2
  LA a0, que
  ADD a0, a0, s7
  SW s6, 0(a0)
  JAL zero, bb105
bb108:
  ADDI a0, zero, 1
  JAL zero, bb99
bb109:
  SUBW a0, zero, s5
  JAL zero, bb89
bb110:
  ADDI s0, zero, 10
  MULW s0, s5, s0
  ADDW s5, s0, s6
  ADDI s0, zero, 48
  SUBW s5, s5, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb84
bb111:
  ADDI s0, zero, 57
  SLT s0, s0, s6
  XORI s0, s0, 1
  JAL zero, bb86
bb112:
  XORI s0, s6, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:
  ADD s0, s3, zero
  # implict jump to bb114
bb114:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb80
bb115:
  ADDI s0, zero, 1
  JAL zero, bb114
bb116:
  ADDI s0, zero, 1
  JAL zero, bb82
bb117:
  SUBW s0, zero, s1
  JAL zero, bb79
bb118:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s5
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb74
bb119:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb76
bb120:
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb121
bb121:
  ADD s0, s3, zero
  # implict jump to bb122
bb122:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb70
bb123:
  ADDI s0, zero, 1
  JAL zero, bb122
bb124:
  ADDI s0, zero, 1
  JAL zero, bb72
bb125:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb26
bb126:
  XORI s0, s5, 85
  SLTU s0, zero, s0
  JAL zero, bb28
bb127:
  ADD s0, s1, zero
  JAL zero, bb21
bb128:
  SUBW s0, zero, s1
  JAL zero, bb20
bb129:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb15
bb130:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb17
bb131:
  XORI s0, s3, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:
  ADD s0, s2, zero
  # implict jump to bb133
bb133:
  CALL getch
  ADD s2, a0, zero
  ADD s1, s0, zero
  ADD s0, s2, zero
  JAL zero, bb11
bb134:
  ADDI s0, zero, 1
  JAL zero, bb133
bb135:
  ADDI s0, zero, 1
  JAL zero, bb13
bb136:
  SUBW s0, zero, s1
  JAL zero, bb10
bb137:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb5
bb138:
  ADDI s0, zero, 57
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb7
bb139:
  XORI s0, s3, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb140
bb140:
  ADD s0, s2, zero
  # implict jump to bb141
bb141:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb1
bb142:
  ADDI s0, zero, 1
  JAL zero, bb141
bb143:
  ADDI s0, zero, 1
  JAL zero, bb3
