.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb106
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI s1, zero, 57
  SLT s2, s1, s0
  SLTI s1, s0, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s1, s1, s2
  BNE s1, zero, bb103
  # implict jump to bb3
bb3:   # loop depth 0
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb96
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI s0, zero, 57
  SLT s2, s0, s1
  SLTI s0, s1, 48
  XORI s2, s2, 1
  XORI s0, s0, 1
  AND s0, s0, s2
  BNE s0, zero, bb92
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 0
  SUBW s3, zero, s0
  BNE s4, zero, bb91
  # implict jump to bb8
bb8:   # loop depth 0
  ADD s3, s0, zero
  # implict jump to bb9
bb9:   # loop depth 0
  BLT zero, s3, bb34
  # implict jump to bb10
bb10:   # loop depth 0
  LA a0, m
  LW s2, 0(a0)
  BLT zero, s2, bb22
  # implict jump to bb11
bb11:   # loop depth 0
  LA a0, n
  LW s1, 0(a0)
  SLTI a0, s1, 1
  BEQ a0, zero, bb19
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LA a0, m
  LW a0, 0(a0)
  BLT s1, a0, bb15
  # implict jump to bb14
bb14:   # loop depth 0
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
bb15:   # loop depth 1
  LA a0, u
  LA s2, v
  SH2ADD s5, s1, a0
  SH2ADD s3, s1, s2
  LW a0, 0(s5)
  LW s2, 0(s3)
  CALL find
  ADD s4, a0, zero
  ADD a0, s2, zero
  CALL find
  BEQ s4, a0, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  LA s4, c
  LA s2, fa
  ADDIW a0, s1, 1
  SH2ADD s4, s1, s4
  ADD s1, a0, zero
  LW s4, 0(s4)
  LW a0, 0(s5)
  ADDW s0, s0, s4
  CALL find
  LW s3, 0(s3)
  SH2ADD a0, a0, s2
  SW s3, 0(a0)
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb13
bb18:   # loop depth 1
  JAL zero, bb17
bb19:   # loop depth 0
  ADDI a0, zero, 1
  # implict jump to bb20
bb20:   # loop depth 1
  LA s2, fa
  ADDIW s0, a0, 1
  SH2ADD s2, a0, s2
  SW a0, 0(s2)
  BGE s1, s0, bb21
  JAL zero, bb12
bb21:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb20
bb22:   # loop depth 0
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW s1, s0, 1
  BLT s1, s2, bb27
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  BLT s1, s2, bb26
  JAL zero, bb11
bb26:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb23
bb27:   # loop depth 1
  LA s5, v
  LA s4, u
  LA s6, c
  ADD s3, s1, zero
  SH2ADD s5, s0, s5
  SH2ADD s4, s0, s4
  SH2ADD s6, s0, s6
  # implict jump to bb28
bb28:   # loop depth 2
  LA s7, c
  LW s0, 0(s6)
  SH2ADD s7, s3, s7
  LW s8, 0(s7)
  BLT s8, s0, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  # implict jump to bb30
bb30:   # loop depth 2
  ADDIW s3, s3, 1
  BLT s3, s2, bb32
  # implict jump to bb31
bb31:   # loop depth 1
  JAL zero, bb25
bb32:   # loop depth 2
  JAL zero, bb28
bb33:   # loop depth 2
  LA s0, u
  LW a0, 0(s4)
  LA s9, v
  SH2ADD s0, s3, s0
  LW s8, 0(s0)
  SH2ADD s9, s3, s9
  SW s8, 0(s4)
  SW a0, 0(s0)
  LW a0, 0(s5)
  LW s0, 0(s9)
  SW s0, 0(s5)
  SW a0, 0(s9)
  LW s0, 0(s6)
  LW s8, 0(s7)
  ADD a0, s0, zero
  SW s8, 0(s6)
  SW s0, 0(s7)
  JAL zero, bb30
bb34:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  LA s0, u
  CALL getch
  ADDI s5, zero, 57
  ADD s1, a0, zero
  SH2ADD s4, s2, s0
  SLT s5, s5, s1
  SLTI s0, s1, 48
  OR s0, s0, s5
  BNE s0, zero, bb84
  # implict jump to bb36
bb36:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  ADDI s0, zero, 57
  SLT s6, s0, s1
  SLTI s0, s1, 48
  XORI s6, s6, 1
  XORI s0, s0, 1
  AND s0, s0, s6
  BNE s0, zero, bb80
  # implict jump to bb38
bb38:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  SUBW s1, zero, s0
  BNE s5, zero, bb79
  # implict jump to bb40
bb40:   # loop depth 1
  ADD s1, s0, zero
  # implict jump to bb41
bb41:   # loop depth 1
  ADDI s5, zero, 57
  SW s1, 0(s4)
  LA s0, v
  CALL getch
  ADD s1, a0, zero
  SH2ADD s4, s2, s0
  SLT s5, s5, s1
  SLTI s0, s1, 48
  OR s0, s0, s5
  BNE s0, zero, bb72
  # implict jump to bb42
bb42:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb43
bb43:   # loop depth 1
  ADDI s0, zero, 57
  SLT s6, s0, s1
  SLTI s0, s1, 48
  XORI s6, s6, 1
  XORI s0, s0, 1
  AND s0, s0, s6
  BNE s0, zero, bb68
  # implict jump to bb44
bb44:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  SUBW s1, zero, s0
  BNE s5, zero, bb67
  # implict jump to bb46
bb46:   # loop depth 1
  ADD s1, s0, zero
  # implict jump to bb47
bb47:   # loop depth 1
  ADDI s5, zero, 57
  SW s1, 0(s4)
  LA s0, c
  CALL getch
  ADD s1, a0, zero
  SH2ADD s4, s2, s0
  SLT s5, s5, s1
  SLTI s0, s1, 48
  OR s0, s0, s5
  BNE s0, zero, bb60
  # implict jump to bb48
bb48:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb49
bb49:   # loop depth 1
  ADDI s0, zero, 57
  SLT s6, s0, s1
  SLTI s0, s1, 48
  XORI s6, s6, 1
  XORI s0, s0, 1
  AND s0, s0, s6
  BNE s0, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb51
bb51:   # loop depth 1
  SUBW s1, zero, s0
  BNE s5, zero, bb55
  # implict jump to bb52
bb52:   # loop depth 1
  ADD s1, s0, zero
  # implict jump to bb53
bb53:   # loop depth 1
  ADDIW s2, s2, 1
  SW s1, 0(s4)
  BLT s2, s3, bb54
  JAL zero, bb10
bb54:   # loop depth 1
  JAL zero, bb35
bb55:   # loop depth 1
  JAL zero, bb53
bb56:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb57
bb57:   # loop depth 2
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
  BNE s1, zero, bb59
  # implict jump to bb58
bb58:   # loop depth 1
  JAL zero, bb51
bb59:   # loop depth 2
  ADD s1, s6, zero
  JAL zero, bb57
bb60:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb61
bb61:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb66
  # implict jump to bb62
bb62:   # loop depth 2
  # implict jump to bb63
bb63:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s6, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s6
  BNE s0, zero, bb65
  # implict jump to bb64
bb64:   # loop depth 1
  JAL zero, bb49
bb65:   # loop depth 2
  JAL zero, bb61
bb66:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb63
bb67:   # loop depth 1
  JAL zero, bb47
bb68:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb69
bb69:   # loop depth 2
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
  BNE s1, zero, bb71
  # implict jump to bb70
bb70:   # loop depth 1
  JAL zero, bb45
bb71:   # loop depth 2
  ADD s1, s6, zero
  JAL zero, bb69
bb72:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb78
  # implict jump to bb74
bb74:   # loop depth 2
  # implict jump to bb75
bb75:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s6, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s6
  BNE s0, zero, bb77
  # implict jump to bb76
bb76:   # loop depth 1
  JAL zero, bb43
bb77:   # loop depth 2
  JAL zero, bb73
bb78:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb75
bb79:   # loop depth 1
  JAL zero, bb41
bb80:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb81
bb81:   # loop depth 2
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
  BNE s1, zero, bb83
  # implict jump to bb82
bb82:   # loop depth 1
  JAL zero, bb39
bb83:   # loop depth 2
  ADD s1, s6, zero
  JAL zero, bb81
bb84:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  XORI s0, s1, 45
  BEQ s0, zero, bb90
  # implict jump to bb86
bb86:   # loop depth 2
  # implict jump to bb87
bb87:   # loop depth 2
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s6, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s6
  BNE s0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  JAL zero, bb37
bb89:   # loop depth 2
  JAL zero, bb85
bb90:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb87
bb91:   # loop depth 0
  JAL zero, bb9
bb92:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb93
bb93:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW s0, s0, s2
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s5, s3, s2
  SLTI s3, s2, 48
  XORI s5, s5, 1
  XORI s3, s3, 1
  ADDW s0, s0, s1
  AND s1, s3, s5
  ADDIW s0, s0, -48
  BNE s1, zero, bb95
  # implict jump to bb94
bb94:   # loop depth 0
  JAL zero, bb7
bb95:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb93
bb96:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb97
bb97:   # loop depth 1
  XORI s0, s1, 45
  BEQ s0, zero, bb102
  # implict jump to bb98
bb98:   # loop depth 1
  # implict jump to bb99
bb99:   # loop depth 1
  CALL getch
  ADDI s0, zero, 57
  ADD s1, a0, zero
  SLT s2, s0, s1
  SLTI s0, s1, 48
  OR s0, s0, s2
  BNE s0, zero, bb101
  # implict jump to bb100
bb100:   # loop depth 0
  JAL zero, bb5
bb101:   # loop depth 1
  JAL zero, bb97
bb102:   # loop depth 1
  ADDI s4, zero, 1
  JAL zero, bb99
bb103:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb104
bb104:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  MULW s2, s2, s1
  ADDI s3, zero, 57
  ADD s1, a0, zero
  SLT s4, s3, s1
  SLTI s3, s1, 48
  XORI s4, s4, 1
  XORI s3, s3, 1
  ADDW s0, s2, s0
  AND s3, s3, s4
  ADDIW s2, s0, -48
  BNE s3, zero, bb105
  JAL zero, bb3
bb105:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb104
bb106:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb107
bb107:   # loop depth 1
  XORI s0, s0, 45
  BEQ s0, zero, bb112
  # implict jump to bb108
bb108:   # loop depth 1
  # implict jump to bb109
bb109:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s0, a0, zero
  SLT s3, s2, s0
  SLTI s2, s0, 48
  OR s2, s2, s3
  BNE s2, zero, bb111
  # implict jump to bb110
bb110:   # loop depth 0
  JAL zero, bb2
bb111:   # loop depth 1
  JAL zero, bb107
bb112:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb109
find:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, fa
  SH2ADD s0, a0, s0
  LW s1, 0(s0)
  BEQ a0, s1, bb115
  # implict jump to bb114
bb114:   # loop depth 0
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
bb115:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
