.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  SD s8, 72(sp)
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb117
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb113
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  SUBW s1, zero, s0
  BNE s3, zero, bb112
  # implict jump to bb5
bb5:   # loop depth 0
  ADD s1, s0, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LA s0, n
  ADDI s2, zero, 57
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  SLT s2, s2, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb105
  # implict jump to bb7
bb7:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb101
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  SUBW s1, zero, s0
  BNE s3, zero, bb100
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s1, s0, zero
  # implict jump to bb12
bb12:   # loop depth 0
  LA s0, m
  LA s2, n
  SW s1, 0(s0)
  LW s4, 0(s2)
  SLTI s0, s4, 1
  BEQ s0, zero, bb97
  # implict jump to bb13
bb13:   # loop depth 0
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 0
  ADD a0, zero, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb15:   # loop depth 0
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb16
bb16:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  XORI s6, s0, 85
  XORI s1, s0, 81
  SLTU s6, zero, s6
  SLTU s1, zero, s1
  AND s1, s1, s6
  BNE s1, zero, bb95
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  XORI s0, s0, 81
  BEQ s0, zero, bb58
  # implict jump to bb19
bb19:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s4, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s4
  BNE s0, zero, bb51
  # implict jump to bb20
bb20:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  ADDI s0, zero, 57
  SLT s4, s0, s1
  SLTI s0, s1, 48
  XORI s4, s4, 1
  XORI s0, s0, 1
  AND s0, s0, s4
  BNE s0, zero, bb47
  # implict jump to bb22
bb22:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  SUBW a0, zero, s0
  BNE s5, zero, bb46
  # implict jump to bb24
bb24:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb25
bb25:   # loop depth 1
  ADDI s0, zero, 57
  CALL find
  ADD s4, a0, zero
  CALL getch
  ADD s1, a0, zero
  SLT s5, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s5
  BNE s0, zero, bb39
  # implict jump to bb26
bb26:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI s0, zero, 57
  SLT s6, s0, s1
  SLTI s0, s1, 48
  XORI s6, s6, 1
  XORI s0, s0, 1
  AND s0, s0, s6
  BNE s0, zero, bb35
  # implict jump to bb28
bb28:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SUBW a0, zero, s0
  BNE s5, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb31
bb31:   # loop depth 1
  LA s0, fa
  ADD s5, s4, zero
  CALL find
  SH2ADD s1, s4, s0
  ADD s0, a0, zero
  ADD s4, s0, zero
  SW s0, 0(s1)
  # implict jump to bb32
bb32:   # loop depth 1
  LA s0, m
  LA s1, m
  LW s0, 0(s0)
  ADDIW s0, s0, -1
  SW s0, 0(s1)
  BNE s0, zero, bb33
  JAL zero, bb14
bb33:   # loop depth 1
  JAL zero, bb16
bb34:   # loop depth 1
  JAL zero, bb31
bb35:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW s0, s0, s6
  ADDI s7, zero, 57
  ADD s6, a0, zero
  SLT s8, s7, s6
  SLTI s7, s6, 48
  XORI s8, s8, 1
  XORI s7, s7, 1
  ADDW s0, s0, s1
  AND s1, s7, s8
  ADDIW s0, s0, -48
  BNE s1, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 1
  JAL zero, bb29
bb38:   # loop depth 2
  ADD s1, s6, zero
  JAL zero, bb36
bb39:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  # implict jump to bb42
bb42:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s6, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s6
  BNE s0, zero, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb27
bb44:   # loop depth 2
  JAL zero, bb40
bb45:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb42
bb46:   # loop depth 1
  JAL zero, bb25
bb47:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s0, s0, s4
  ADDI s6, zero, 57
  ADD s4, a0, zero
  SLT s7, s6, s4
  SLTI s6, s4, 48
  XORI s7, s7, 1
  XORI s6, s6, 1
  ADDW s0, s0, s1
  AND s1, s6, s7
  ADDIW s0, s0, -48
  BNE s1, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 1
  JAL zero, bb23
bb50:   # loop depth 2
  ADD s1, s4, zero
  JAL zero, bb48
bb51:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb52
bb52:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s4, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s4
  BNE s0, zero, bb56
  # implict jump to bb55
bb55:   # loop depth 1
  JAL zero, bb21
bb56:   # loop depth 2
  JAL zero, bb52
bb57:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb54
bb58:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb88
  # implict jump to bb59
bb59:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb60
bb60:   # loop depth 1
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb84
  # implict jump to bb61
bb61:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb62
bb62:   # loop depth 1
  SUBW s3, zero, s0
  BNE s6, zero, bb83
  # implict jump to bb63
bb63:   # loop depth 1
  ADD s3, s0, zero
  # implict jump to bb64
bb64:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb76
  # implict jump to bb65
bb65:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb66
bb66:   # loop depth 1
  ADDI s0, zero, 57
  SLT s6, s0, s1
  SLTI s0, s1, 48
  XORI s6, s6, 1
  XORI s0, s0, 1
  AND s0, s0, s6
  BNE s0, zero, bb72
  # implict jump to bb67
bb67:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb68
bb68:   # loop depth 1
  SUBW s1, zero, s0
  BNE s2, zero, bb71
  # implict jump to bb69
bb69:   # loop depth 1
  ADD s1, s0, zero
  # implict jump to bb70
bb70:   # loop depth 1
  ADD a0, s3, zero
  ADD s2, s1, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb32
bb71:   # loop depth 1
  JAL zero, bb70
bb72:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW s0, s0, s6
  ADDI s7, zero, 57
  ADD s6, a0, zero
  SLT s8, s7, s6
  SLTI s7, s6, 48
  XORI s8, s8, 1
  XORI s7, s7, 1
  ADDW s0, s0, s1
  AND s1, s7, s8
  ADDIW s0, s0, -48
  BNE s1, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 1
  JAL zero, bb68
bb75:   # loop depth 2
  ADD s1, s6, zero
  JAL zero, bb73
bb76:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb77
bb77:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb82
  # implict jump to bb78
bb78:   # loop depth 2
  # implict jump to bb79
bb79:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s6, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s6
  BNE s0, zero, bb81
  # implict jump to bb80
bb80:   # loop depth 1
  JAL zero, bb66
bb81:   # loop depth 2
  JAL zero, bb77
bb82:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb79
bb83:   # loop depth 1
  JAL zero, bb64
bb84:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s0, s0, s2
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s7, s3, s2
  SLTI s3, s2, 48
  XORI s7, s7, 1
  XORI s3, s3, 1
  ADDW s0, s0, s1
  AND s1, s3, s7
  ADDIW s0, s0, -48
  BNE s1, zero, bb87
  # implict jump to bb86
bb86:   # loop depth 1
  JAL zero, bb62
bb87:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb85
bb88:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  # implict jump to bb91
bb91:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  JAL zero, bb60
bb93:   # loop depth 2
  JAL zero, bb89
bb94:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb91
bb95:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  XORI s6, s0, 85
  XORI s1, s0, 81
  SLTU s6, zero, s6
  SLTU s1, zero, s1
  AND s1, s1, s6
  BNE s1, zero, bb95
  # implict jump to bb96
bb96:   # loop depth 1
  JAL zero, bb18
bb97:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb98
bb98:   # loop depth 1
  LA s3, fa
  ADDIW s2, s0, 1
  SH2ADD s3, s0, s3
  SW s0, 0(s3)
  BGE s4, s2, bb99
  JAL zero, bb13
bb99:   # loop depth 1
  ADD s0, s2, zero
  JAL zero, bb98
bb100:   # loop depth 0
  JAL zero, bb12
bb101:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb102
bb102:   # loop depth 1
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
  BNE s1, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 0
  JAL zero, bb10
bb104:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb102
bb105:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb106
bb106:   # loop depth 1
  XORI s0, s1, 45
  BEQ s0, zero, bb111
  # implict jump to bb107
bb107:   # loop depth 1
  # implict jump to bb108
bb108:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb110
  # implict jump to bb109
bb109:   # loop depth 0
  JAL zero, bb8
bb110:   # loop depth 1
  JAL zero, bb106
bb111:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb108
bb112:   # loop depth 0
  JAL zero, bb6
bb113:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb114
bb114:   # loop depth 1
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
  BNE s1, zero, bb116
  # implict jump to bb115
bb115:   # loop depth 0
  JAL zero, bb4
bb116:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb114
bb117:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb118
bb118:   # loop depth 1
  XORI s0, s1, 45
  BEQ s0, zero, bb123
  # implict jump to bb119
bb119:   # loop depth 1
  # implict jump to bb120
bb120:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 0
  JAL zero, bb2
bb122:   # loop depth 1
  JAL zero, bb118
bb123:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb120
find:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, fa
  SH2ADD s0, a0, s0
  LW s1, 0(s0)
  BEQ s1, a0, bb126
  # implict jump to bb125
bb125:   # loop depth 0
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
bb126:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
