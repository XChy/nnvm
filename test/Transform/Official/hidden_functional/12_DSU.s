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
main:   # loop depth 0
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
  ADD s3, zero, zero
  ADD s1, a0, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI s0, s1, 48
  BNE s0, zero, bb128
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s0, zero, bb124
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s2, s1, zero
  SLTI s1, s2, 48
  XORI s1, s1, 1
  BNE s1, zero, bb123
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s1, zero, bb122
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s3, zero, bb121
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  LA s1, n
  ADD s3, zero, zero
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLTI s1, s0, 48
  BNE s1, zero, bb120
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s1, zero, bb116
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s1, s0, zero
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb114
  # implict jump to bb18
bb18:   # loop depth 0
  BNE s3, zero, bb113
  # implict jump to bb19
bb19:   # loop depth 0
  # implict jump to bb20
bb20:   # loop depth 0
  LA s0, m
  LA s1, n
  SW s2, 0(s0)
  LW s3, 0(s1)
  SLTI s0, s3, 1
  XORI s0, s0, 1
  BNE s0, zero, bb110
  # implict jump to bb21
bb21:   # loop depth 0
  BNE s2, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 0
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
bb23:   # loop depth 0
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb25
bb25:   # loop depth 2
  XORI s1, s0, 81
  BNE s1, zero, bb109
  # implict jump to bb26
bb26:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb27
bb27:   # loop depth 2
  BNE s1, zero, bb108
  # implict jump to bb28
bb28:   # loop depth 1
  XORI s0, s0, 81
  SLTIU s0, s0, 1
  BNE s0, zero, bb68
  # implict jump to bb29
bb29:   # loop depth 1
  CALL getch
  ADD s4, zero, zero
  ADD s0, a0, zero
  # implict jump to bb30
bb30:   # loop depth 2
  SLTI s1, s0, 48
  BNE s1, zero, bb67
  # implict jump to bb31
bb31:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb32
bb32:   # loop depth 2
  BNE s1, zero, bb63
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb34
bb34:   # loop depth 2
  ADD s5, s0, zero
  SLTI s0, s5, 48
  XORI s0, s0, 1
  BNE s0, zero, bb62
  # implict jump to bb35
bb35:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  BNE s0, zero, bb61
  # implict jump to bb37
bb37:   # loop depth 1
  BNE s4, zero, bb60
  # implict jump to bb38
bb38:   # loop depth 1
  # implict jump to bb39
bb39:   # loop depth 1
  ADD s0, zero, zero
  ADD a0, s1, zero
  CALL find
  ADD s4, a0, zero
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb40
bb40:   # loop depth 2
  SLTI s5, s1, 48
  BNE s5, zero, bb59
  # implict jump to bb41
bb41:   # loop depth 2
  ADDI s5, zero, 57
  SLT s5, s5, s1
  # implict jump to bb42
bb42:   # loop depth 2
  BNE s5, zero, bb55
  # implict jump to bb43
bb43:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb44
bb44:   # loop depth 2
  ADD s5, s1, zero
  SLTI s1, s5, 48
  XORI s1, s1, 1
  BNE s1, zero, bb54
  # implict jump to bb45
bb45:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb46
bb46:   # loop depth 2
  BNE s1, zero, bb53
  # implict jump to bb47
bb47:   # loop depth 1
  BNE s0, zero, bb52
  # implict jump to bb48
bb48:   # loop depth 1
  # implict jump to bb49
bb49:   # loop depth 1
  LA s1, fa
  ADD a0, s6, zero
  SLLIW s0, s4, 2
  CALL find
  ADD s1, s1, s0
  ADD s0, a0, zero
  ADD s5, s0, zero
  SW s0, 0(s1)
  # implict jump to bb50
bb50:   # loop depth 1
  LA s0, m
  LA s1, m
  LW s0, 0(s0)
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  BNE s0, zero, bb51
  JAL zero, bb22
bb51:   # loop depth 1
  JAL zero, bb24
bb52:   # loop depth 1
  SUBW s6, zero, s6
  JAL zero, bb49
bb53:   # loop depth 2
  ADDI s1, zero, 10
  CALL getch
  MULW s6, s6, s1
  ADD s1, a0, zero
  ADDW s5, s6, s5
  ADDIW s6, s5, -48
  JAL zero, bb44
bb54:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s5
  XORI s1, s1, 1
  JAL zero, bb46
bb55:   # loop depth 2
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb58
  # implict jump to bb56
bb56:   # loop depth 2
  # implict jump to bb57
bb57:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb40
bb58:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb57
bb59:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb42
bb60:   # loop depth 1
  SUBW s1, zero, s1
  JAL zero, bb39
bb61:   # loop depth 2
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s0, a0, zero
  ADDW s1, s1, s5
  ADDIW s1, s1, -48
  JAL zero, bb34
bb62:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  JAL zero, bb36
bb63:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb66
  # implict jump to bb64
bb64:   # loop depth 2
  # implict jump to bb65
bb65:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb30
bb66:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb65
bb67:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb32
bb68:   # loop depth 1
  CALL getch
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb69
bb69:   # loop depth 2
  SLTI s2, s0, 48
  BNE s2, zero, bb107
  # implict jump to bb70
bb70:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s0
  # implict jump to bb71
bb71:   # loop depth 2
  BNE s2, zero, bb103
  # implict jump to bb72
bb72:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  ADD s2, s0, zero
  SLTI s0, s2, 48
  XORI s0, s0, 1
  BNE s0, zero, bb102
  # implict jump to bb74
bb74:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb75
bb75:   # loop depth 2
  BNE s0, zero, bb101
  # implict jump to bb76
bb76:   # loop depth 1
  BNE s1, zero, bb100
  # implict jump to bb77
bb77:   # loop depth 1
  # implict jump to bb78
bb78:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb79
bb79:   # loop depth 2
  SLTI s2, s0, 48
  BNE s2, zero, bb99
  # implict jump to bb80
bb80:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s0
  # implict jump to bb81
bb81:   # loop depth 2
  BNE s2, zero, bb95
  # implict jump to bb82
bb82:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb83
bb83:   # loop depth 2
  ADD s6, s0, zero
  SLTI s0, s6, 48
  XORI s0, s0, 1
  BNE s0, zero, bb94
  # implict jump to bb84
bb84:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s0, zero, bb93
  # implict jump to bb86
bb86:   # loop depth 1
  BNE s1, zero, bb92
  # implict jump to bb87
bb87:   # loop depth 1
  # implict jump to bb88
bb88:   # loop depth 1
  ADD a0, s3, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s2, zero
  CALL find
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb91
  # implict jump to bb89
bb89:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb90
bb90:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb50
bb91:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb90
bb92:   # loop depth 1
  SUBW s2, zero, s2
  JAL zero, bb88
bb93:   # loop depth 2
  ADDI s0, zero, 10
  CALL getch
  MULW s2, s2, s0
  ADD s0, a0, zero
  ADDW s2, s2, s6
  ADDIW s2, s2, -48
  JAL zero, bb83
bb94:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s6
  XORI s0, s0, 1
  JAL zero, bb85
bb95:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb98
  # implict jump to bb96
bb96:   # loop depth 2
  # implict jump to bb97
bb97:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb79
bb98:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb97
bb99:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb81
bb100:   # loop depth 1
  SUBW s3, zero, s3
  JAL zero, bb78
bb101:   # loop depth 2
  ADDI s0, zero, 10
  CALL getch
  MULW s3, s3, s0
  ADD s0, a0, zero
  ADDW s2, s3, s2
  ADDIW s3, s2, -48
  JAL zero, bb73
bb102:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb75
bb103:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb106
  # implict jump to bb104
bb104:   # loop depth 2
  # implict jump to bb105
bb105:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb69
bb106:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb105
bb107:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb71
bb108:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb25
bb109:   # loop depth 2
  XORI s1, s0, 85
  SLTU s1, zero, s1
  JAL zero, bb27
bb110:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb111
bb111:   # loop depth 1
  LA s6, fa
  ADDIW s1, s0, 1
  SLLIW s4, s0, 2
  SLT s5, s3, s1
  ADD s4, s6, s4
  XORI s5, s5, 1
  SW s0, 0(s4)
  BNE s5, zero, bb112
  JAL zero, bb21
bb112:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb111
bb113:   # loop depth 0
  SUBW s2, zero, s2
  JAL zero, bb20
bb114:   # loop depth 1
  ADDI s0, zero, 10
  CALL getch
  MULW s2, s2, s0
  ADD s0, a0, zero
  ADDW s1, s2, s1
  ADDIW s2, s1, -48
  JAL zero, bb15
bb115:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb17
bb116:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:   # loop depth 1
  # implict jump to bb118
bb118:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb11
bb119:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb118
bb120:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb13
bb121:   # loop depth 0
  SUBW s0, zero, s0
  JAL zero, bb10
bb122:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  MULW s0, s0, s1
  ADD s1, a0, zero
  ADDW s0, s0, s2
  ADDIW s0, s0, -48
  JAL zero, bb5
bb123:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  XORI s1, s1, 1
  JAL zero, bb7
bb124:   # loop depth 1
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb127
  # implict jump to bb125
bb125:   # loop depth 1
  # implict jump to bb126
bb126:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb127:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb126
bb128:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb3
find:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s1, fa
  SLLIW s0, a0, 2
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb131
  # implict jump to bb130
bb130:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb131:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
