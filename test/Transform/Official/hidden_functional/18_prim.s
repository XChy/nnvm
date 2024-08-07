.global main
.global find
.section .bss
c:
.space 4020
v:
.space 4020
fa:
.space 4020

u:
.space 4020

.section .data



n:
.word 0x00000000

m:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI s1, s0, 48
  BNE s1, zero, bb116
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s1, zero, bb112
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb111
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s1, zero, bb110
  # implict jump to bb8
bb8:   # loop depth 0
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SLTI s1, s0, 48
  BNE s1, zero, bb109
  # implict jump to bb10
bb10:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  # implict jump to bb11
bb11:   # loop depth 1
  BNE s1, zero, bb105
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb104
  # implict jump to bb14
bb14:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s1, zero, bb103
  # implict jump to bb16
bb16:   # loop depth 0
  BNE s2, zero, bb102
  # implict jump to bb17
bb17:   # loop depth 0
  # implict jump to bb18
bb18:   # loop depth 0
  BLT zero, s4, bb45
  # implict jump to bb19
bb19:   # loop depth 0
  LA a0, m
  LW s2, 0(a0)
  BLT zero, s2, bb33
  # implict jump to bb20
bb20:   # loop depth 0
  LA a0, n
  LW s0, 0(a0)
  SLTI a0, s0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb21
bb21:   # loop depth 0
  ADD s0, zero, zero
  ADD s5, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  LA a0, m
  LW a0, 0(a0)
  BLT s5, a0, bb24
  # implict jump to bb23
bb23:   # loop depth 0
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:   # loop depth 1
  SLLIW s3, s5, 2
  LA a0, u
  ADD s6, a0, s3
  LW a0, 0(s6)
  LA s1, v
  ADD s4, s1, s3
  LW s1, 0(s4)
  CALL find
  ADD s2, a0, zero
  ADD a0, s1, zero
  CALL find
  XOR a0, s2, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb25
bb25:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  BNE a0, zero, bb28
  # implict jump to bb27
bb27:   # loop depth 1
  LA a0, c
  ADD a0, a0, s3
  LW a0, 0(a0)
  ADDW s0, s0, a0
  LW a0, 0(s6)
  CALL find
  SLLIW a0, a0, 2
  LA s1, fa
  ADD a0, s1, a0
  LW s1, 0(s4)
  SW s1, 0(a0)
  ADDIW s5, s5, 1
  JAL zero, bb22
bb28:   # loop depth 1
  JAL zero, bb22
bb29:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb26
bb30:   # loop depth 0
  ADDI a0, zero, 1
  # implict jump to bb31
bb31:   # loop depth 1
  SLLIW s1, a0, 2
  LA s2, fa
  ADD s1, s2, s1
  SW a0, 0(s1)
  ADDIW a0, a0, 1
  SLT s1, s0, a0
  XORI s1, s1, 1
  BNE s1, zero, bb32
  JAL zero, bb21
bb32:   # loop depth 1
  JAL zero, bb31
bb33:   # loop depth 0
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb34
bb34:   # loop depth 1
  ADDIW s0, s1, 1
  BLT s0, s2, bb38
  # implict jump to bb35
bb35:   # loop depth 1
  # implict jump to bb36
bb36:   # loop depth 1
  BLT s0, s2, bb37
  JAL zero, bb20
bb37:   # loop depth 1
  ADD s1, s0, zero
  JAL zero, bb34
bb38:   # loop depth 1
  SLLIW s3, s1, 2
  LA s1, c
  ADD s4, s1, s3
  ADD s1, s0, zero
  # implict jump to bb39
bb39:   # loop depth 2
  LW s5, 0(s4)
  SLLIW s6, s1, 2
  LA s7, c
  ADD s7, s7, s6
  LW s8, 0(s7)
  BLT s8, s5, bb44
  # implict jump to bb40
bb40:   # loop depth 2
  # implict jump to bb41
bb41:   # loop depth 2
  ADDIW s1, s1, 1
  BLT s1, s2, bb43
  # implict jump to bb42
bb42:   # loop depth 1
  JAL zero, bb36
bb43:   # loop depth 2
  JAL zero, bb39
bb44:   # loop depth 2
  LA a0, u
  ADD a0, a0, s3
  LW s5, 0(a0)
  LA s8, u
  ADD s8, s8, s6
  LW s9, 0(s8)
  SW s9, 0(a0)
  SW s5, 0(s8)
  LA a0, v
  ADD a0, a0, s3
  LW s5, 0(a0)
  LA s8, v
  ADD s6, s8, s6
  LW s8, 0(s6)
  SW s8, 0(a0)
  SW s5, 0(s6)
  LW a0, 0(s4)
  LW s5, 0(s7)
  SW s5, 0(s4)
  SW a0, 0(s7)
  JAL zero, bb41
bb45:   # loop depth 0
  ADD s5, zero, zero
  # implict jump to bb46
bb46:   # loop depth 1
  SLLIW s2, s5, 2
  LA s0, u
  ADD s3, s0, s2
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  # implict jump to bb47
bb47:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb101
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb49
bb49:   # loop depth 2
  BNE s0, zero, bb97
  # implict jump to bb50
bb50:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb51
bb51:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb96
  # implict jump to bb52
bb52:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb53
bb53:   # loop depth 2
  BNE s0, zero, bb95
  # implict jump to bb54
bb54:   # loop depth 1
  BNE s7, zero, bb94
  # implict jump to bb55
bb55:   # loop depth 1
  # implict jump to bb56
bb56:   # loop depth 1
  SW s6, 0(s3)
  LA s0, v
  ADD s3, s0, s2
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  # implict jump to bb57
bb57:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb93
  # implict jump to bb58
bb58:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb59
bb59:   # loop depth 2
  BNE s0, zero, bb89
  # implict jump to bb60
bb60:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb61
bb61:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb88
  # implict jump to bb62
bb62:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb63
bb63:   # loop depth 2
  BNE s0, zero, bb87
  # implict jump to bb64
bb64:   # loop depth 1
  BNE s7, zero, bb86
  # implict jump to bb65
bb65:   # loop depth 1
  # implict jump to bb66
bb66:   # loop depth 1
  SW s6, 0(s3)
  LA s0, c
  ADD s6, s0, s2
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  # implict jump to bb67
bb67:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb85
  # implict jump to bb68
bb68:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb69
bb69:   # loop depth 2
  BNE s0, zero, bb81
  # implict jump to bb70
bb70:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb71
bb71:   # loop depth 2
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb80
  # implict jump to bb72
bb72:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  BNE s0, zero, bb79
  # implict jump to bb74
bb74:   # loop depth 1
  BNE s3, zero, bb78
  # implict jump to bb75
bb75:   # loop depth 1
  # implict jump to bb76
bb76:   # loop depth 1
  SW s2, 0(s6)
  ADDIW s5, s5, 1
  BLT s5, s4, bb77
  JAL zero, bb19
bb77:   # loop depth 1
  JAL zero, bb46
bb78:   # loop depth 1
  SUBW s2, zero, s2
  JAL zero, bb76
bb79:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s2, s0
  ADDW s0, s0, s1
  ADDIW s2, s0, -48
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb71
bb80:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb73
bb81:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb84
  # implict jump to bb82
bb82:   # loop depth 2
  # implict jump to bb83
bb83:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb67
bb84:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb83
bb85:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb69
bb86:   # loop depth 1
  SUBW s6, zero, s6
  JAL zero, bb66
bb87:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s6, s0
  ADDW s0, s0, s1
  ADDIW s6, s0, -48
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb61
bb88:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb63
bb89:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb92
  # implict jump to bb90
bb90:   # loop depth 2
  # implict jump to bb91
bb91:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb57
bb92:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb91
bb93:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb59
bb94:   # loop depth 1
  SUBW s6, zero, s6
  JAL zero, bb56
bb95:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s6, s0
  ADDW s0, s0, s1
  ADDIW s6, s0, -48
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb51
bb96:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb53
bb97:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:   # loop depth 2
  # implict jump to bb99
bb99:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb47
bb100:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb99
bb101:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb49
bb102:   # loop depth 0
  SUBW s4, zero, s4
  JAL zero, bb18
bb103:   # loop depth 1
  ADDI s1, zero, 10
  MULW s1, s4, s1
  ADDW s0, s1, s0
  ADDIW s4, s0, -48
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb13
bb104:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  XORI s1, s1, 1
  JAL zero, bb15
bb105:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb108
  # implict jump to bb106
bb106:   # loop depth 1
  # implict jump to bb107
bb107:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb9
bb108:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb107
bb109:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb11
bb110:   # loop depth 1
  ADDI s1, zero, 10
  MULW s1, s2, s1
  ADDW s0, s1, s0
  ADDIW s2, s0, -48
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb5
bb111:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s0
  XORI s1, s1, 1
  JAL zero, bb7
bb112:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:   # loop depth 1
  # implict jump to bb114
bb114:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb1
bb115:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb114
bb116:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb3
find:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SLLIW s0, a0, 2
  LA s1, fa
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, a0, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb119:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
