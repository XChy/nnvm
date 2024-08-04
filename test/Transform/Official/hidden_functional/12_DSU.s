.global main
.global find
.section .bss

fa:
.space 400020

.section .data
m:
.word 0x00000000

n:
.word 0x00000000
.section .text
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
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  SLTI s0, s1, 48
  BNE s0, zero, bb128
  # implict jump to bb2
bb2:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb3
bb3:
  BNE s0, zero, bb124
  # implict jump to bb4
bb4:
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  BNE s0, zero, bb122
  # implict jump to bb8
bb8:
  BNE s3, zero, bb121
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LA s0, n
  SW s2, 0(s0)
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb11
bb11:
  SLTI s0, s1, 48
  BNE s0, zero, bb120
  # implict jump to bb12
bb12:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb13
bb13:
  BNE s0, zero, bb116
  # implict jump to bb14
bb14:
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb16
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  BNE s0, zero, bb114
  # implict jump to bb18
bb18:
  BNE s3, zero, bb113
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  LA s0, m
  SW s2, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  SLTI s0, s1, 1
  XORI s0, s0, 1
  BNE s0, zero, bb110
  # implict jump to bb21
bb21:
  BNE s2, zero, bb23
  # implict jump to bb22
bb22:
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
bb23:
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s4, zero, zero
  ADD s6, zero, zero
  # implict jump to bb24
bb24:
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb25
bb25:
  XORI s0, s1, 81
  BNE s0, zero, bb109
  # implict jump to bb26
bb26:
  ADD s0, zero, zero
  # implict jump to bb27
bb27:
  BNE s0, zero, bb108
  # implict jump to bb28
bb28:
  XORI s0, s1, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb68
  # implict jump to bb29
bb29:
  CALL getch
  ADD s1, a0, zero
  ADD s5, zero, zero
  # implict jump to bb30
bb30:
  SLTI s0, s1, 48
  BNE s0, zero, bb67
  # implict jump to bb31
bb31:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb32
bb32:
  BNE s0, zero, bb63
  # implict jump to bb33
bb33:
  ADD s4, zero, zero
  # implict jump to bb34
bb34:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb62
  # implict jump to bb35
bb35:
  ADD s0, zero, zero
  # implict jump to bb36
bb36:
  BNE s0, zero, bb61
  # implict jump to bb37
bb37:
  BNE s5, zero, bb60
  # implict jump to bb38
bb38:
  ADD a0, s4, zero
  # implict jump to bb39
bb39:
  CALL find
  ADD s4, a0, zero
  CALL getch
  ADD s1, a0, zero
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  SLTI s5, s1, 48
  BNE s5, zero, bb59
  # implict jump to bb41
bb41:
  ADDI s5, zero, 57
  SLT s5, s5, s1
  # implict jump to bb42
bb42:
  BNE s5, zero, bb55
  # implict jump to bb43
bb43:
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  SLTI s6, s1, 48
  XORI s6, s6, 1
  BNE s6, zero, bb54
  # implict jump to bb45
bb45:
  ADD s6, zero, zero
  # implict jump to bb46
bb46:
  BNE s6, zero, bb53
  # implict jump to bb47
bb47:
  BNE s0, zero, bb52
  # implict jump to bb48
bb48:
  ADD a0, s5, zero
  # implict jump to bb49
bb49:
  CALL find
  ADD s6, a0, zero
  SLLIW s0, s4, 2
  LA s1, fa
  ADD s0, s1, s0
  SW s6, 0(s0)
  # implict jump to bb50
bb50:
  LA s0, m
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, m
  SW s0, 0(s1)
  BNE s0, zero, bb51
  JAL zero, bb22
bb51:
  JAL zero, bb24
bb52:
  SUBW a0, zero, s5
  JAL zero, bb49
bb53:
  ADDI s6, zero, 10
  MULW s5, s5, s6
  ADDW s1, s5, s1
  ADDI s5, zero, 48
  SUBW s5, s1, s5
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb44
bb54:
  ADDI s6, zero, 57
  SLT s6, s6, s1
  XORI s6, s6, 1
  JAL zero, bb46
bb55:
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb58
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb40
bb58:
  ADDI s0, zero, 1
  JAL zero, bb57
bb59:
  ADDI s5, zero, 1
  JAL zero, bb42
bb60:
  SUBW a0, zero, s4
  JAL zero, bb39
bb61:
  ADDI s0, zero, 10
  MULW s0, s4, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s4, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb34
bb62:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb36
bb63:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb66
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb30
bb66:
  ADDI s5, zero, 1
  JAL zero, bb65
bb67:
  ADDI s0, zero, 1
  JAL zero, bb32
bb68:
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb69
bb69:
  SLTI s0, s1, 48
  BNE s0, zero, bb107
  # implict jump to bb70
bb70:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb71
bb71:
  BNE s0, zero, bb103
  # implict jump to bb72
bb72:
  ADD s3, zero, zero
  # implict jump to bb73
bb73:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb102
  # implict jump to bb74
bb74:
  ADD s0, zero, zero
  # implict jump to bb75
bb75:
  BNE s0, zero, bb101
  # implict jump to bb76
bb76:
  BNE s2, zero, bb100
  # implict jump to bb77
bb77:
  # implict jump to bb78
bb78:
  CALL getch
  ADD s1, a0, zero
  ADD s5, zero, zero
  # implict jump to bb79
bb79:
  SLTI s0, s1, 48
  BNE s0, zero, bb99
  # implict jump to bb80
bb80:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb81
bb81:
  BNE s0, zero, bb95
  # implict jump to bb82
bb82:
  ADD s2, zero, zero
  # implict jump to bb83
bb83:
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb94
  # implict jump to bb84
bb84:
  ADD s0, zero, zero
  # implict jump to bb85
bb85:
  BNE s0, zero, bb93
  # implict jump to bb86
bb86:
  BNE s5, zero, bb92
  # implict jump to bb87
bb87:
  # implict jump to bb88
bb88:
  ADD a0, s3, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s2, zero
  CALL find
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb91
  # implict jump to bb89
bb89:
  ADD a0, zero, zero
  # implict jump to bb90
bb90:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb50
bb91:
  ADDI a0, zero, 1
  JAL zero, bb90
bb92:
  SUBW s2, zero, s2
  JAL zero, bb88
bb93:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb83
bb94:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb85
bb95:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb98
  # implict jump to bb96
bb96:
  # implict jump to bb97
bb97:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb79
bb98:
  ADDI s5, zero, 1
  JAL zero, bb97
bb99:
  ADDI s0, zero, 1
  JAL zero, bb81
bb100:
  SUBW s3, zero, s3
  JAL zero, bb78
bb101:
  ADDI s0, zero, 10
  MULW s0, s3, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s3, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb73
bb102:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb75
bb103:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb106
  # implict jump to bb104
bb104:
  # implict jump to bb105
bb105:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb69
bb106:
  ADDI s2, zero, 1
  JAL zero, bb105
bb107:
  ADDI s0, zero, 1
  JAL zero, bb71
bb108:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb25
bb109:
  XORI s0, s1, 85
  SLTU s0, zero, s0
  JAL zero, bb27
bb110:
  ADDI s0, zero, 1
  # implict jump to bb111
bb111:
  SLLIW s3, s0, 2
  LA s4, fa
  ADD s3, s4, s3
  SW s0, 0(s3)
  ADDIW s0, s0, 1
  SLT s3, s1, s0
  XORI s3, s3, 1
  BNE s3, zero, bb112
  JAL zero, bb21
bb112:
  JAL zero, bb111
bb113:
  SUBW s2, zero, s2
  JAL zero, bb20
bb114:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb15
bb115:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb17
bb116:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  # implict jump to bb118
bb118:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb11
bb119:
  ADDI s3, zero, 1
  JAL zero, bb118
bb120:
  ADDI s0, zero, 1
  JAL zero, bb13
bb121:
  SUBW s2, zero, s2
  JAL zero, bb10
bb122:
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb5
bb123:
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb7
bb124:
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb127
  # implict jump to bb125
bb125:
  # implict jump to bb126
bb126:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb127:
  ADDI s3, zero, 1
  JAL zero, bb126
bb128:
  ADDI s0, zero, 1
  JAL zero, bb3
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SLLIW s0, a0, 2
  LA s1, fa
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb131
  # implict jump to bb130
bb130:
  LW a0, 0(s0)
  CALL find
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb131:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
