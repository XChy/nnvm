.global same
.global main
.section .bss
vis:
.space 4020
head:
.space 4020
next:
.space 20020
to:
.space 20020



.section .data




cnt:
.word 0x00000000
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW a0, s0, 2
  LA a1, vis
  ADD a1, a1, a0
  ADDI s2, zero, 1
  SW s2, 0(a1)
  XOR a1, s0, s1
  SLTIU a1, a1, 1
  BNE a1, zero, bb10
  # implict jump to bb1
bb1:
  LA a1, head
  ADD a0, a1, a0
  LW a0, 0(a0)
  # implict jump to bb2
bb2:
  XORI a1, a0, -1
  BNE a1, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  SLLIW s0, a0, 2
  LA a0, to
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a1, a0, 2
  LA s2, vis
  ADD a1, s2, a1
  LW a1, 0(a1)
  SLTU a1, zero, a1
  XORI a1, a1, 1
  BNE a1, zero, bb9
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LA a0, next
  ADD a0, a0, s0
  LW a0, 0(a0)
  JAL zero, bb2
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  ADD a1, s1, zero
  CALL same
  SLTU a0, zero, a0
  JAL zero, bb6
bb10:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s1, 48
  BNE s2, zero, bb139
  # implict jump to bb13
bb13:
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb14
bb14:
  BNE s2, zero, bb135
  # implict jump to bb15
bb15:
  ADD s3, zero, zero
  # implict jump to bb16
bb16:
  ADD s2, s1, zero
  ADD s1, s3, zero
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb134
  # implict jump to bb17
bb17:
  ADD s3, zero, zero
  # implict jump to bb18
bb18:
  BNE s3, zero, bb133
  # implict jump to bb19
bb19:
  BNE s0, zero, bb132
  # implict jump to bb20
bb20:
  ADD s0, s1, zero
  # implict jump to bb21
bb21:
  LA s1, n
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s1, 48
  BNE s2, zero, bb131
  # implict jump to bb23
bb23:
  ADDI s2, zero, 57
  SLT s2, s2, s1
  # implict jump to bb24
bb24:
  BNE s2, zero, bb127
  # implict jump to bb25
bb25:
  ADD s3, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, s1, zero
  ADD s1, s3, zero
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb126
  # implict jump to bb27
bb27:
  ADD s3, zero, zero
  # implict jump to bb28
bb28:
  BNE s3, zero, bb125
  # implict jump to bb29
bb29:
  BNE s0, zero, bb124
  # implict jump to bb30
bb30:
  ADD s0, s1, zero
  # implict jump to bb31
bb31:
  LA s1, m
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  SLLIW s1, s0, 2
  LA s2, head
  ADD s1, s2, s1
  ADDI s2, zero, -1
  SW s2, 0(s1)
  ADDIW s0, s0, 1
  SLTI s1, s0, 1005
  BNE s1, zero, bb123
  # implict jump to bb33
bb33:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:
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
bb35:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb36
bb36:
  ADD s3, s0, zero
  ADD s2, s1, zero
  ADD s1, s5, zero
  ADD s0, s4, zero
  CALL getch
  ADD s4, a0, zero
  # implict jump to bb37
bb37:
  XORI s5, s4, 81
  BNE s5, zero, bb122
  # implict jump to bb38
bb38:
  ADD s5, zero, zero
  # implict jump to bb39
bb39:
  BNE s5, zero, bb121
  # implict jump to bb40
bb40:
  XORI s4, s4, 81
  SLTIU s4, s4, 1
  BNE s4, zero, bb80
  # implict jump to bb41
bb41:
  CALL getch
  ADD s1, a0, zero
  ADD s4, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  ADD s1, s4, zero
  SLTI s4, s3, 48
  BNE s4, zero, bb79
  # implict jump to bb43
bb43:
  ADDI s4, zero, 57
  SLT s4, s4, s3
  # implict jump to bb44
bb44:
  BNE s4, zero, bb75
  # implict jump to bb45
bb45:
  ADD s5, zero, zero
  # implict jump to bb46
bb46:
  ADD s4, s3, zero
  ADD s3, s5, zero
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb74
  # implict jump to bb47
bb47:
  ADD s5, zero, zero
  # implict jump to bb48
bb48:
  BNE s5, zero, bb73
  # implict jump to bb49
bb49:
  BNE s1, zero, bb72
  # implict jump to bb50
bb50:
  ADD s1, s3, zero
  # implict jump to bb51
bb51:
  CALL getch
  ADD s3, a0, zero
  ADD s5, zero, zero
  # implict jump to bb52
bb52:
  ADD s4, s3, zero
  ADD s3, s5, zero
  SLTI s5, s4, 48
  BNE s5, zero, bb71
  # implict jump to bb53
bb53:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  # implict jump to bb54
bb54:
  BNE s5, zero, bb67
  # implict jump to bb55
bb55:
  ADD s6, zero, zero
  # implict jump to bb56
bb56:
  ADD s5, s4, zero
  ADD s4, s6, zero
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb66
  # implict jump to bb57
bb57:
  ADD s6, zero, zero
  # implict jump to bb58
bb58:
  BNE s6, zero, bb65
  # implict jump to bb59
bb59:
  BNE s3, zero, bb64
  # implict jump to bb60
bb60:
  ADD s3, s4, zero
  # implict jump to bb61
bb61:
  LA s4, cnt
  LW s4, 0(s4)
  SLLIW s5, s4, 2
  LA s6, to
  ADD s6, s6, s5
  SW s3, 0(s6)
  LA s6, next
  ADD s5, s6, s5
  SLLIW s6, s1, 2
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
  SW s1, 0(s7)
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
  # implict jump to bb62
bb62:
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
  BNE s4, zero, bb63
  JAL zero, bb34
bb63:
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb36
bb64:
  SUB s3, zero, s4
  JAL zero, bb61
bb65:
  ADDI s6, zero, 10
  MULW s4, s4, s6
  ADDW s4, s4, s5
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  CALL getch
  ADD s5, a0, zero
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb56
bb66:
  ADDI s6, zero, 57
  SLT s6, s6, s5
  XORI s6, s6, 1
  JAL zero, bb58
bb67:
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb70
  # implict jump to bb68
bb68:
  # implict jump to bb69
bb69:
  CALL getch
  ADD s4, a0, zero
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb52
bb70:
  ADDI s3, zero, 1
  JAL zero, bb69
bb71:
  ADDI s5, zero, 1
  JAL zero, bb54
bb72:
  SUB s1, zero, s3
  JAL zero, bb51
bb73:
  ADDI s5, zero, 10
  MULW s3, s3, s5
  ADDW s3, s3, s4
  ADDI s4, zero, 48
  SUBW s3, s3, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb46
bb74:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  JAL zero, bb48
bb75:
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb78
  # implict jump to bb76
bb76:
  # implict jump to bb77
bb77:
  CALL getch
  ADD s3, a0, zero
  ADD s4, s1, zero
  ADD s1, s3, zero
  JAL zero, bb42
bb78:
  ADDI s1, zero, 1
  JAL zero, bb77
bb79:
  ADDI s4, zero, 1
  JAL zero, bb44
bb80:
  CALL getch
  ADD s0, a0, zero
  ADD s4, zero, zero
  # implict jump to bb81
bb81:
  ADD s2, s0, zero
  ADD s0, s4, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb120
  # implict jump to bb82
bb82:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb83
bb83:
  BNE s4, zero, bb116
  # implict jump to bb84
bb84:
  ADD s5, zero, zero
  # implict jump to bb85
bb85:
  ADD s4, s2, zero
  ADD s2, s5, zero
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb115
  # implict jump to bb86
bb86:
  ADD s5, zero, zero
  # implict jump to bb87
bb87:
  BNE s5, zero, bb114
  # implict jump to bb88
bb88:
  BNE s0, zero, bb113
  # implict jump to bb89
bb89:
  ADD s0, s2, zero
  # implict jump to bb90
bb90:
  CALL getch
  ADD s2, a0, zero
  ADD s5, zero, zero
  # implict jump to bb91
bb91:
  ADD s4, s2, zero
  ADD s2, s5, zero
  SLTI s5, s4, 48
  BNE s5, zero, bb112
  # implict jump to bb92
bb92:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  # implict jump to bb93
bb93:
  BNE s5, zero, bb108
  # implict jump to bb94
bb94:
  ADD s6, zero, zero
  # implict jump to bb95
bb95:
  ADD s5, s4, zero
  ADD s4, s6, zero
  SLTI s6, s5, 48
  XORI s6, s6, 1
  BNE s6, zero, bb107
  # implict jump to bb96
bb96:
  ADD s6, zero, zero
  # implict jump to bb97
bb97:
  BNE s6, zero, bb106
  # implict jump to bb98
bb98:
  BNE s2, zero, bb105
  # implict jump to bb99
bb99:
  ADD a0, s4, zero
  # implict jump to bb100
bb100:
  ADD s2, a0, zero
  LA a0, n
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb102
  # implict jump to bb101
bb101:
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL same
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb62
bb102:
  ADDI a0, zero, 1
  # implict jump to bb103
bb103:
  SLLIW a1, a0, 2
  LA s4, vis
  ADD a1, s4, a1
  SW zero, 0(a1)
  ADDIW a0, a0, 1
  LA a1, n
  LW a1, 0(a1)
  SLT a1, a1, a0
  XORI a1, a1, 1
  BNE a1, zero, bb104
  JAL zero, bb101
bb104:
  JAL zero, bb103
bb105:
  SUB a0, zero, s4
  JAL zero, bb100
bb106:
  ADDI s6, zero, 10
  MULW s4, s4, s6
  ADDW s4, s4, s5
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  CALL getch
  ADD s5, a0, zero
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb95
bb107:
  ADDI s6, zero, 57
  SLT s6, s6, s5
  XORI s6, s6, 1
  JAL zero, bb97
bb108:
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb111
  # implict jump to bb109
bb109:
  # implict jump to bb110
bb110:
  CALL getch
  ADD s4, a0, zero
  ADD s5, s2, zero
  ADD s2, s4, zero
  JAL zero, bb91
bb111:
  ADDI s2, zero, 1
  JAL zero, bb110
bb112:
  ADDI s5, zero, 1
  JAL zero, bb93
bb113:
  SUB s0, zero, s2
  JAL zero, bb90
bb114:
  ADDI s5, zero, 10
  MULW s2, s2, s5
  ADDW s2, s2, s4
  ADDI s4, zero, 48
  SUBW s2, s2, s4
  CALL getch
  ADD s4, a0, zero
  ADD s5, s2, zero
  ADD s2, s4, zero
  JAL zero, bb85
bb115:
  ADDI s5, zero, 57
  SLT s5, s5, s4
  XORI s5, s5, 1
  JAL zero, bb87
bb116:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb119
  # implict jump to bb117
bb117:
  # implict jump to bb118
bb118:
  CALL getch
  ADD s2, a0, zero
  ADD s4, s0, zero
  ADD s0, s2, zero
  JAL zero, bb81
bb119:
  ADDI s0, zero, 1
  JAL zero, bb118
bb120:
  ADDI s4, zero, 1
  JAL zero, bb83
bb121:
  CALL getch
  ADD s4, a0, zero
  JAL zero, bb37
bb122:
  XORI s5, s4, 85
  SLTU s5, zero, s5
  JAL zero, bb39
bb123:
  JAL zero, bb32
bb124:
  SUB s0, zero, s1
  JAL zero, bb31
bb125:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  JAL zero, bb26
bb126:
  ADDI s3, zero, 57
  SLT s3, s3, s2
  XORI s3, s3, 1
  JAL zero, bb28
bb127:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb130
  # implict jump to bb128
bb128:
  # implict jump to bb129
bb129:
  CALL getch
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb22
bb130:
  ADDI s0, zero, 1
  JAL zero, bb129
bb131:
  ADDI s2, zero, 1
  JAL zero, bb24
bb132:
  SUB s0, zero, s1
  JAL zero, bb21
bb133:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s1, zero
  ADD s1, s2, zero
  JAL zero, bb16
bb134:
  ADDI s3, zero, 57
  SLT s3, s3, s2
  XORI s3, s3, 1
  JAL zero, bb18
bb135:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb138
  # implict jump to bb136
bb136:
  # implict jump to bb137
bb137:
  CALL getch
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb12
bb138:
  ADDI s0, zero, 1
  JAL zero, bb137
bb139:
  ADDI s2, zero, 1
  JAL zero, bb14
