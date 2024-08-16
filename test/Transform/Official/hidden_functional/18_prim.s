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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb108
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb105
  # implict jump to bb3
bb3:   # loop depth 0
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb98
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb94
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 0
  LA t0, u
  SD t0, 24(sp)
  LA s11, v
  LA s10, c
  SUBW s3, zero, s1
  BNE s2, zero, bb93
  # implict jump to bb8
bb8:   # loop depth 0
  ADD s3, s1, zero
  # implict jump to bb9
bb9:   # loop depth 0
  BLT zero, s3, bb36
  # implict jump to bb10
bb10:   # loop depth 0
  LA t0, m
  SD t0, 16(sp)
  LD t0, 16(sp)
  LW a1, 0(t0)
  BLT zero, a1, bb23
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s3, zero, zero
  ADD s2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 0
  LA a0, n
  LA s9, fa
  LW a1, 0(a0)
  SLTI t2, a1, 1
  BEQ t2, zero, bb20
  # implict jump to bb13
bb13:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  LD t0, 16(sp)
  LW t0, 0(t0)
  BLT s1, t0, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb16:   # loop depth 1
  LD t0, 24(sp)
  SH2ADD s6, s1, t0
  SH2ADD s7, s1, s11
  LW a0, 0(s6)
  LW s4, 0(s7)
  CALL find
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL find
  BEQ s5, a0, bb19
  # implict jump to bb17
bb17:   # loop depth 1
  SH2ADD t1, s1, s10
  ADDIW s1, s1, 1
  LW t2, 0(t1)
  LW a0, 0(s6)
  ADDW s0, s0, t2
  CALL find
  LW t1, 0(s7)
  SH2ADD t0, a0, s9
  SW t1, 0(t0)
  # implict jump to bb18
bb18:   # loop depth 1
  JAL zero, bb14
bb19:   # loop depth 1
  JAL zero, bb14
bb20:   # loop depth 0
  ADDI t2, zero, 1
  # implict jump to bb21
bb21:   # loop depth 1
  SH2ADD a3, t2, s9
  ADDIW a0, t2, 1
  SW t2, 0(a3)
  BGE a1, a0, bb22
  JAL zero, bb13
bb22:   # loop depth 1
  ADD t2, a0, zero
  JAL zero, bb21
bb23:   # loop depth 0
  ADD s3, zero, zero
  ADD a0, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  ADDIW a3, a0, 1
  BLT a3, a1, bb29
  # implict jump to bb25
bb25:   # loop depth 1
  ADD s2, a3, zero
  # implict jump to bb26
bb26:   # loop depth 1
  BLT a3, a1, bb28
  # implict jump to bb27
bb27:   # loop depth 0
  JAL zero, bb12
bb28:   # loop depth 1
  ADD a0, a3, zero
  JAL zero, bb24
bb29:   # loop depth 1
  ADD s2, a3, zero
  SH2ADD a5, a0, s11
  LD t0, 24(sp)
  SH2ADD a4, a0, t0
  SH2ADD a0, a0, s10
  # implict jump to bb30
bb30:   # loop depth 2
  LW t2, 0(a0)
  SH2ADD a6, s2, s10
  LW a7, 0(a6)
  BLT a7, t2, bb35
  # implict jump to bb31
bb31:   # loop depth 2
  # implict jump to bb32
bb32:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, a1, bb34
  # implict jump to bb33
bb33:   # loop depth 1
  JAL zero, bb26
bb34:   # loop depth 2
  JAL zero, bb30
bb35:   # loop depth 2
  LW t1, 0(a4)
  LD t0, 24(sp)
  SH2ADD t2, s2, t0
  SH2ADD t3, s2, s11
  LW a7, 0(t2)
  SW a7, 0(a4)
  SW t1, 0(t2)
  LW t1, 0(a5)
  LW t2, 0(t3)
  SW t2, 0(a5)
  SW t1, 0(t3)
  LW t2, 0(a0)
  LW a7, 0(a6)
  ADD s3, t2, zero
  SW a7, 0(a0)
  SW t2, 0(a6)
  JAL zero, bb32
bb36:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  LD t0, 24(sp)
  SH2ADD s5, s4, t0
  BNE t1, zero, bb86
  # implict jump to bb38
bb38:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb82
  # implict jump to bb40
bb40:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  SUBW t1, zero, s1
  BNE s2, zero, bb81
  # implict jump to bb42
bb42:   # loop depth 1
  ADD t1, s1, zero
  # implict jump to bb43
bb43:   # loop depth 1
  ADDI s0, zero, 57
  SW t1, 0(s5)
  SH2ADD s5, s4, s11
  CALL getch
  SLT t2, s0, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb74
  # implict jump to bb44
bb44:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb70
  # implict jump to bb46
bb46:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb47
bb47:   # loop depth 1
  SUBW t1, zero, s1
  BNE s2, zero, bb69
  # implict jump to bb48
bb48:   # loop depth 1
  ADD t1, s1, zero
  # implict jump to bb49
bb49:   # loop depth 1
  ADDI s0, zero, 57
  SW t1, 0(s5)
  SH2ADD s5, s4, s10
  CALL getch
  SLT t2, s0, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb62
  # implict jump to bb50
bb50:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb51
bb51:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb58
  # implict jump to bb52
bb52:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb53
bb53:   # loop depth 1
  SUBW t1, zero, s1
  BNE s2, zero, bb57
  # implict jump to bb54
bb54:   # loop depth 1
  ADD t1, s1, zero
  # implict jump to bb55
bb55:   # loop depth 1
  ADDIW s4, s4, 1
  SW t1, 0(s5)
  BLT s4, s3, bb56
  JAL zero, bb10
bb56:   # loop depth 1
  JAL zero, bb37
bb57:   # loop depth 1
  ADDIW s4, s4, 1
  SW t1, 0(s5)
  BLT s4, s3, bb56
  JAL zero, bb10
bb58:   # loop depth 1
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb59
bb59:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW t0, s1, s6
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s1, t0, -48
  BNE t2, zero, bb61
  # implict jump to bb60
bb60:   # loop depth 1
  JAL zero, bb53
bb61:   # loop depth 2
  ADD s0, a0, zero
  JAL zero, bb59
bb62:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb63
bb63:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb68
  # implict jump to bb64
bb64:   # loop depth 2
  # implict jump to bb65
bb65:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb67
  # implict jump to bb66
bb66:   # loop depth 1
  JAL zero, bb51
bb67:   # loop depth 2
  JAL zero, bb63
bb68:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb65
bb69:   # loop depth 1
  JAL zero, bb49
bb70:   # loop depth 1
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW t0, s1, s6
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s1, t0, -48
  BNE t2, zero, bb73
  # implict jump to bb72
bb72:   # loop depth 1
  JAL zero, bb47
bb73:   # loop depth 2
  ADD s0, a0, zero
  JAL zero, bb71
bb74:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb75
bb75:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb80
  # implict jump to bb76
bb76:   # loop depth 2
  # implict jump to bb77
bb77:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb79
  # implict jump to bb78
bb78:   # loop depth 1
  JAL zero, bb45
bb79:   # loop depth 2
  JAL zero, bb75
bb80:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb77
bb81:   # loop depth 1
  JAL zero, bb43
bb82:   # loop depth 1
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb83
bb83:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW t0, s1, s6
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s1, t0, -48
  BNE t2, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  JAL zero, bb41
bb85:   # loop depth 2
  ADD s0, a0, zero
  JAL zero, bb83
bb86:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb87
bb87:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb92
  # implict jump to bb88
bb88:   # loop depth 2
  # implict jump to bb89
bb89:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  JAL zero, bb39
bb91:   # loop depth 2
  JAL zero, bb87
bb92:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb89
bb93:   # loop depth 0
  JAL zero, bb9
bb94:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb95
bb95:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  MULW t0, s1, s3
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s1, t0, -48
  BNE t2, zero, bb97
  # implict jump to bb96
bb96:   # loop depth 0
  JAL zero, bb7
bb97:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb95
bb98:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb99
bb99:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb104
  # implict jump to bb100
bb100:   # loop depth 1
  # implict jump to bb101
bb101:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb103
  # implict jump to bb102
bb102:   # loop depth 0
  JAL zero, bb5
bb103:   # loop depth 1
  JAL zero, bb99
bb104:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb101
bb105:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb106
bb106:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW t0, s1, s2
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND a1, t2, a1
  ADDIW s1, t0, -48
  BNE a1, zero, bb107
  JAL zero, bb3
bb107:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb106
bb108:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb109
bb109:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb114
  # implict jump to bb110
bb110:   # loop depth 1
  # implict jump to bb111
bb111:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb113
  # implict jump to bb112
bb112:   # loop depth 0
  JAL zero, bb2
bb113:   # loop depth 1
  JAL zero, bb109
bb114:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb111
find:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, fa
  SH2ADD s0, a0, t0
  LW t0, 0(s0)
  BEQ a0, t0, bb117
  # implict jump to bb116
bb116:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb117:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
