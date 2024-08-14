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
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb117
  # implict jump to bb1
bb1:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s3, t0, zero
  BNE t1, zero, bb113
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  SUBW t1, zero, t0
  BNE s3, zero, bb112
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LA t0, n
  ADDI s0, zero, 57
  SW t1, 0(t0)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb105
  # implict jump to bb7
bb7:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s3, t0, zero
  BNE t1, zero, bb101
  # implict jump to bb9
bb9:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  SUBW t1, zero, t0
  BNE s3, zero, bb100
  # implict jump to bb11
bb11:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb12
bb12:   # loop depth 0
  LA t0, m
  LA t2, n
  SW t1, 0(t0)
  LW a1, 0(t2)
  SLTI t0, a1, 1
  BEQ t0, zero, bb97
  # implict jump to bb13
bb13:   # loop depth 0
  BNE t1, zero, bb15
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
  ADD a0, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s5, t0, zero
  ADD s6, t1, zero
  ADD s7, t2, zero
  ADD s8, a0, zero
  CALL getch
  XORI t1, a0, 85
  XORI t0, a0, 81
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  AND t0, t0, t1
  BNE t0, zero, bb95
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  XORI t0, a0, 81
  BEQ t0, zero, bb58
  # implict jump to bb19
bb19:   # loop depth 1
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb51
  # implict jump to bb20
bb20:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s3, t0, zero
  BNE t1, zero, bb47
  # implict jump to bb22
bb22:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  SUBW a0, zero, t0
  BNE s3, zero, bb46
  # implict jump to bb24
bb24:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb25
bb25:   # loop depth 1
  ADDI s0, zero, 57
  CALL find
  ADD s1, a0, zero
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb39
  # implict jump to bb26
bb26:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s4, t0, zero
  BNE t1, zero, bb35
  # implict jump to bb28
bb28:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SUBW a0, zero, t0
  BNE s4, zero, bb34
  # implict jump to bb30
bb30:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb31
bb31:   # loop depth 1
  LA s2, fa
  ADD s0, s5, zero
  ADD s4, s6, zero
  ADD s3, s1, zero
  CALL find
  SH2ADD t0, s1, s2
  ADD s2, a0, zero
  SW a0, 0(t0)
  # implict jump to bb32
bb32:   # loop depth 1
  LA t0, m
  LA a2, m
  ADD a0, s2, zero
  ADD t2, s3, zero
  LW a1, 0(t0)
  ADD t1, s4, zero
  ADD t0, s0, zero
  ADDIW a1, a1, -1
  SW a1, 0(a2)
  BNE a1, zero, bb33
  JAL zero, bb14
bb33:   # loop depth 1
  JAL zero, bb16
bb34:   # loop depth 1
  JAL zero, bb31
bb35:   # loop depth 1
  ADD t0, zero, zero
  ADD s2, a0, zero
  # implict jump to bb36
bb36:   # loop depth 2
  ADDI s3, zero, 10
  ADD s0, t0, zero
  CALL getch
  MULW t1, s0, s3
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s2, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 1
  JAL zero, bb29
bb38:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb36
bb39:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  # implict jump to bb42
bb42:   # loop depth 2
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb27
bb44:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb40
bb45:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb42
bb46:   # loop depth 1
  JAL zero, bb25
bb47:   # loop depth 1
  ADD t0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s2, zero, 10
  ADD s0, t0, zero
  CALL getch
  MULW t1, s0, s2
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s1, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 1
  JAL zero, bb23
bb50:   # loop depth 2
  ADD s1, a0, zero
  JAL zero, bb48
bb51:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb52
bb52:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb56
  # implict jump to bb55
bb55:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb21
bb56:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb52
bb57:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb54
bb58:   # loop depth 1
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb88
  # implict jump to bb59
bb59:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb60
bb60:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s3, t0, zero
  BNE t1, zero, bb84
  # implict jump to bb61
bb61:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb62
bb62:   # loop depth 1
  SUBW t1, zero, t0
  BNE s3, zero, bb83
  # implict jump to bb63
bb63:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb64
bb64:   # loop depth 1
  ADD s0, t1, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb76
  # implict jump to bb65
bb65:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb66
bb66:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s4, t0, zero
  BNE t1, zero, bb72
  # implict jump to bb67
bb67:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb68
bb68:   # loop depth 1
  SUBW t1, zero, t0
  BNE s4, zero, bb71
  # implict jump to bb69
bb69:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb70
bb70:   # loop depth 1
  ADD a0, s0, zero
  ADD s1, t1, zero
  ADD s4, s1, zero
  ADD s3, s7, zero
  ADD s2, s8, zero
  CALL find
  ADD s5, a0, zero
  ADD a0, s1, zero
  CALL find
  XOR t0, s5, a0
  SLTIU a0, t0, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb32
bb71:   # loop depth 1
  JAL zero, bb70
bb72:   # loop depth 1
  ADD t0, zero, zero
  ADD s2, a0, zero
  # implict jump to bb73
bb73:   # loop depth 2
  ADDI s3, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s3
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s2, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 1
  JAL zero, bb68
bb75:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb73
bb76:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb77
bb77:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb82
  # implict jump to bb78
bb78:   # loop depth 2
  # implict jump to bb79
bb79:   # loop depth 2
  ADD s1, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb81
  # implict jump to bb80
bb80:   # loop depth 1
  ADD t0, s1, zero
  JAL zero, bb66
bb81:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb77
bb82:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb79
bb83:   # loop depth 1
  JAL zero, bb64
bb84:   # loop depth 1
  ADD t0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADDI s2, zero, 10
  ADD s0, t0, zero
  CALL getch
  MULW t1, s0, s2
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s1, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb87
  # implict jump to bb86
bb86:   # loop depth 1
  JAL zero, bb62
bb87:   # loop depth 2
  ADD s1, a0, zero
  JAL zero, bb85
bb88:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  # implict jump to bb91
bb91:   # loop depth 2
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb60
bb93:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb89
bb94:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb91
bb95:   # loop depth 2
  CALL getch
  XORI t1, a0, 85
  XORI t0, a0, 81
  SLTU t1, zero, t1
  SLTU t0, zero, t0
  AND t0, t0, t1
  BNE t0, zero, bb95
  # implict jump to bb96
bb96:   # loop depth 1
  JAL zero, bb18
bb97:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb98
bb98:   # loop depth 1
  LA a0, fa
  ADDIW t2, t0, 1
  SH2ADD a0, t0, a0
  SW t0, 0(a0)
  BGE a1, t2, bb99
  JAL zero, bb13
bb99:   # loop depth 1
  ADD t0, t2, zero
  JAL zero, bb98
bb100:   # loop depth 0
  JAL zero, bb12
bb101:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb102
bb102:   # loop depth 1
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
  BNE t1, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 0
  JAL zero, bb10
bb104:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb102
bb105:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb106
bb106:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb111
  # implict jump to bb107
bb107:   # loop depth 1
  # implict jump to bb108
bb108:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb110
  # implict jump to bb109
bb109:   # loop depth 0
  ADD t0, s0, zero
  JAL zero, bb8
bb110:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb106
bb111:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb108
bb112:   # loop depth 0
  JAL zero, bb6
bb113:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb114
bb114:   # loop depth 1
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
  BNE t1, zero, bb116
  # implict jump to bb115
bb115:   # loop depth 0
  JAL zero, bb4
bb116:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb114
bb117:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb118
bb118:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb123
  # implict jump to bb119
bb119:   # loop depth 1
  # implict jump to bb120
bb120:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 0
  ADD t0, s0, zero
  JAL zero, bb2
bb122:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb118
bb123:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb120
find:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, fa
  SH2ADD s0, a0, t0
  LW t0, 0(s0)
  BEQ t0, a0, bb126
  # implict jump to bb125
bb125:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb126:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
