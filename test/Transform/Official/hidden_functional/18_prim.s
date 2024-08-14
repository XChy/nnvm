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
  SD s10, 88(sp)
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb106
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb103
  # implict jump to bb3
bb3:   # loop depth 0
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb96
  # implict jump to bb4
bb4:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s6, t0, zero
  BNE t1, zero, bb92
  # implict jump to bb6
bb6:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 0
  LA s5, u
  LA s4, v
  LA s3, c
  SUBW t1, zero, t0
  BNE s6, zero, bb91
  # implict jump to bb8
bb8:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s9, t1, zero
  BLT zero, s9, bb34
  # implict jump to bb10
bb10:   # loop depth 0
  LA s10, m
  LW a1, 0(s10)
  BLT zero, a1, bb22
  # implict jump to bb11
bb11:   # loop depth 0
  LA t0, n
  LA s9, fa
  LW t2, 0(t0)
  SLTI t0, t2, 1
  BEQ t0, zero, bb19
  # implict jump to bb12
bb12:   # loop depth 0
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LW t2, 0(s10)
  ADD s1, t0, zero
  ADD s0, t1, zero
  BLT s0, t2, bb15
  # implict jump to bb14
bb14:   # loop depth 0
  ADD a0, s1, zero
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb15:   # loop depth 1
  SH2ADD s6, s0, s5
  SH2ADD s2, s0, s4
  LW a0, 0(s6)
  LW s7, 0(s2)
  CALL find
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL find
  BEQ s8, a0, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  SH2ADD t1, s0, s3
  ADDIW t0, s0, 1
  LW t1, 0(t1)
  ADD s0, t0, zero
  LW a0, 0(s6)
  ADDW t0, s1, t1
  ADD s1, t0, zero
  CALL find
  LW t1, 0(s2)
  SH2ADD t0, a0, s9
  SW t1, 0(t0)
  # implict jump to bb17
bb17:   # loop depth 1
  ADD t1, s0, zero
  ADD t0, s1, zero
  JAL zero, bb13
bb18:   # loop depth 1
  JAL zero, bb17
bb19:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb20
bb20:   # loop depth 1
  SH2ADD a0, t0, s9
  ADDIW t1, t0, 1
  SW t0, 0(a0)
  BGE t2, t1, bb21
  JAL zero, bb12
bb21:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb20
bb22:   # loop depth 0
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t2, t1, 1
  BLT t2, a1, bb27
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  BLT t2, a1, bb26
  JAL zero, bb11
bb26:   # loop depth 1
  ADD t1, t2, zero
  JAL zero, bb23
bb27:   # loop depth 1
  ADD a0, t2, zero
  SH2ADD a4, t1, s4
  SH2ADD a3, t1, s5
  SH2ADD a2, t1, s3
  # implict jump to bb28
bb28:   # loop depth 2
  LW t1, 0(a2)
  SH2ADD a5, a0, s3
  LW a6, 0(a5)
  BLT a6, t1, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  # implict jump to bb30
bb30:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, a1, bb32
  # implict jump to bb31
bb31:   # loop depth 1
  JAL zero, bb25
bb32:   # loop depth 2
  JAL zero, bb28
bb33:   # loop depth 2
  LW t0, 0(a3)
  SH2ADD t1, a0, s5
  SH2ADD a7, a0, s4
  LW a6, 0(t1)
  SW a6, 0(a3)
  SW t0, 0(t1)
  LW t0, 0(a4)
  LW t1, 0(a7)
  SW t1, 0(a4)
  SW t0, 0(a7)
  LW t1, 0(a2)
  LW a6, 0(a5)
  ADD t0, t1, zero
  SW a6, 0(a2)
  SW t1, 0(a5)
  JAL zero, bb30
bb34:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  SH2ADD s8, s0, s5
  BNE t0, zero, bb84
  # implict jump to bb36
bb36:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb37
bb37:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s7, t0, zero
  BNE t1, zero, bb80
  # implict jump to bb38
bb38:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  SUBW t1, zero, t0
  BNE s7, zero, bb79
  # implict jump to bb40
bb40:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb41
bb41:   # loop depth 1
  ADDI s1, zero, 57
  SW t1, 0(s8)
  SH2ADD s8, s0, s4
  CALL getch
  SLT t1, s1, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb72
  # implict jump to bb42
bb42:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb43
bb43:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s7, t0, zero
  BNE t1, zero, bb68
  # implict jump to bb44
bb44:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb45
bb45:   # loop depth 1
  SUBW t1, zero, t0
  BNE s7, zero, bb67
  # implict jump to bb46
bb46:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb47
bb47:   # loop depth 1
  ADDI s1, zero, 57
  SW t1, 0(s8)
  SH2ADD s8, s0, s3
  CALL getch
  SLT t1, s1, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb60
  # implict jump to bb48
bb48:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb49
bb49:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s7, t0, zero
  BNE t1, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb51
bb51:   # loop depth 1
  SUBW t1, zero, t0
  BNE s7, zero, bb55
  # implict jump to bb52
bb52:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb53
bb53:   # loop depth 1
  ADDIW t0, s0, 1
  SW t1, 0(s8)
  BLT t0, s9, bb54
  JAL zero, bb10
bb54:   # loop depth 1
  JAL zero, bb35
bb55:   # loop depth 1
  JAL zero, bb53
bb56:   # loop depth 1
  ADD t0, zero, zero
  ADD s2, a0, zero
  # implict jump to bb57
bb57:   # loop depth 2
  ADDI s6, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s6
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s2, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb59
  # implict jump to bb58
bb58:   # loop depth 1
  JAL zero, bb51
bb59:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb57
bb60:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb61
bb61:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb66
  # implict jump to bb62
bb62:   # loop depth 2
  # implict jump to bb63
bb63:   # loop depth 2
  ADD s1, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb65
  # implict jump to bb64
bb64:   # loop depth 1
  ADD t0, s1, zero
  JAL zero, bb49
bb65:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb61
bb66:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb63
bb67:   # loop depth 1
  JAL zero, bb47
bb68:   # loop depth 1
  ADD t0, zero, zero
  ADD s2, a0, zero
  # implict jump to bb69
bb69:   # loop depth 2
  ADDI s6, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s6
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s2, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb71
  # implict jump to bb70
bb70:   # loop depth 1
  JAL zero, bb45
bb71:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb69
bb72:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb78
  # implict jump to bb74
bb74:   # loop depth 2
  # implict jump to bb75
bb75:   # loop depth 2
  ADD s1, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb77
  # implict jump to bb76
bb76:   # loop depth 1
  ADD t0, s1, zero
  JAL zero, bb43
bb77:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb73
bb78:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb75
bb79:   # loop depth 1
  JAL zero, bb41
bb80:   # loop depth 1
  ADD t0, zero, zero
  ADD s2, a0, zero
  # implict jump to bb81
bb81:   # loop depth 2
  ADDI s6, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s6
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s2, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb83
  # implict jump to bb82
bb82:   # loop depth 1
  JAL zero, bb39
bb83:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb81
bb84:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb90
  # implict jump to bb86
bb86:   # loop depth 2
  # implict jump to bb87
bb87:   # loop depth 2
  ADD s1, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  ADD t0, s1, zero
  JAL zero, bb37
bb89:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb85
bb90:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb87
bb91:   # loop depth 0
  JAL zero, bb9
bb92:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb93
bb93:   # loop depth 1
  ADDI s2, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s2
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s0, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb95
  # implict jump to bb94
bb94:   # loop depth 0
  JAL zero, bb7
bb95:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb93
bb96:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb97
bb97:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb102
  # implict jump to bb98
bb98:   # loop depth 1
  # implict jump to bb99
bb99:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb101
  # implict jump to bb100
bb100:   # loop depth 0
  ADD t0, s0, zero
  JAL zero, bb5
bb101:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb97
bb102:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb99
bb103:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb104
bb104:   # loop depth 1
  ADDI s2, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s2
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s0, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb105
  JAL zero, bb3
bb105:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb104
bb106:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb107
bb107:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb112
  # implict jump to bb108
bb108:   # loop depth 1
  # implict jump to bb109
bb109:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb111
  # implict jump to bb110
bb110:   # loop depth 0
  JAL zero, bb2
bb111:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb107
bb112:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb109
find:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, fa
  SH2ADD s0, a0, t0
  LW t0, 0(s0)
  BEQ a0, t0, bb115
  # implict jump to bb114
bb114:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb115:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
