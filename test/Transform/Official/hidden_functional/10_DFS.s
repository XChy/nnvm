.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
same:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s2, vis
  ADDI t1, zero, 1
  ADD s1, a1, zero
  SH2ADD t0, a0, s2
  SW t1, 0(t0)
  BEQ a0, s1, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, head
  SH2ADD t0, a0, t0
  LW s0, 0(t0)
  # implict jump to bb2
bb2:   # loop depth 1
  XORI t0, s0, -1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LA t0, to
  SH2ADD t0, s0, t0
  LW a0, 0(t0)
  SH2ADD t0, a0, s2
  LW t0, 0(t0)
  SLTU t0, zero, t0
  BEQ t0, zero, bb9
  # implict jump to bb5
bb5:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  BNE t0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LA t0, next
  SH2ADD t0, s0, t0
  LW s0, 0(t0)
  JAL zero, bb2
bb8:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:   # loop depth 1
  ADD a1, s1, zero
  CALL same
  SLTU t0, zero, a0
  JAL zero, bb6
bb10:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb131
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb127
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 0
  LA t0, n
  SD t0, 16(sp)
  SUB t0, zero, s0
  BNE s2, zero, bb126
  # implict jump to bb16
bb16:   # loop depth 0
  ADD t0, s0, zero
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI s0, zero, 57
  LD t1, 16(sp)
  SW t0, 0(t1)
  CALL getch
  SLT t2, s0, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb119
  # implict jump to bb18
bb18:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb115
  # implict jump to bb20
bb20:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 0
  LA s9, m
  LA s11, head
  SUB t1, zero, s0
  BNE s2, zero, bb114
  # implict jump to bb22
bb22:   # loop depth 0
  ADD t1, s0, zero
  # implict jump to bb23
bb23:   # loop depth 0
  ADD t0, zero, zero
  SW t1, 0(s9)
  # implict jump to bb24
bb24:   # loop depth 1
  ADDI a1, zero, -1
  ADDIW t2, t0, 1
  SH2ADD t0, t0, s11
  SLTI a0, t2, 1005
  SW a1, 0(t0)
  BNE a0, zero, bb113
  # implict jump to bb25
bb25:   # loop depth 0
  BNE t1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb27:   # loop depth 0
  LA t0, next
  SD t0, 24(sp)
  LA s10, cnt
  ADD s1, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  CALL getch
  XORI t2, a0, 85
  XORI t1, a0, 81
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb111
  # implict jump to bb29
bb29:   # loop depth 1
  # implict jump to bb30
bb30:   # loop depth 1
  XORI t0, a0, 81
  BEQ t0, zero, bb70
  # implict jump to bb31
bb31:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb63
  # implict jump to bb32
bb32:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb59
  # implict jump to bb34
bb34:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  SUB s4, zero, s2
  BNE s1, zero, bb58
  # implict jump to bb36
bb36:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb37
bb37:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb51
  # implict jump to bb38
bb38:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb47
  # implict jump to bb40
bb40:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  SUB s1, zero, s2
  BNE s3, zero, bb46
  # implict jump to bb42
bb42:   # loop depth 1
  ADD s1, s2, zero
  # implict jump to bb43
bb43:   # loop depth 1
  LW t1, 0(s10)
  LA t2, to
  SH2ADD a0, s4, s11
  SH2ADD a4, s1, s11
  SH2ADD t0, t1, t2
  LD t2, 24(sp)
  SH2ADD t2, t1, t2
  SW s1, 0(t0)
  ADDIW a2, t1, 1
  LW a1, 0(a0)
  LD a3, 24(sp)
  SH2ADD a3, a2, a3
  ADDIW a5, t1, 2
  ADD s6, s4, zero
  SW a1, 0(t2)
  SW t1, 0(a0)
  SW a2, 0(s10)
  SW s4, 4(t0)
  LW t0, 0(a4)
  SW t0, 0(a3)
  SW a2, 0(a4)
  SW a5, 0(s10)
  # implict jump to bb44
bb44:   # loop depth 1
  LW a1, 0(s9)
  ADDIW a1, a1, -1
  SW a1, 0(s9)
  BNE a1, zero, bb45
  JAL zero, bb26
bb45:   # loop depth 1
  JAL zero, bb28
bb46:   # loop depth 1
  JAL zero, bb43
bb47:   # loop depth 1
  ADD s2, zero, zero
  ADD s1, a0, zero
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s6, zero, 10
  CALL getch
  MULW t0, s2, s6
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s1
  AND t2, t2, a1
  ADDIW s2, t0, -48
  BNE t2, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 1
  JAL zero, bb41
bb50:   # loop depth 2
  ADD s1, a0, zero
  JAL zero, bb48
bb51:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb52
bb52:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb56
  # implict jump to bb55
bb55:   # loop depth 1
  JAL zero, bb39
bb56:   # loop depth 2
  JAL zero, bb52
bb57:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb54
bb58:   # loop depth 1
  JAL zero, bb37
bb59:   # loop depth 1
  ADD s2, zero, zero
  ADD s3, a0, zero
  # implict jump to bb60
bb60:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW t0, s2, s4
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s3
  AND t2, t2, a1
  ADDIW s2, t0, -48
  BNE t2, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 1
  JAL zero, bb35
bb62:   # loop depth 2
  ADD s3, a0, zero
  JAL zero, bb60
bb63:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb64
bb64:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb69
  # implict jump to bb65
bb65:   # loop depth 2
  # implict jump to bb66
bb66:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb68
  # implict jump to bb67
bb67:   # loop depth 1
  JAL zero, bb33
bb68:   # loop depth 2
  JAL zero, bb64
bb69:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb66
bb70:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb104
  # implict jump to bb71
bb71:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb72
bb72:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb100
  # implict jump to bb73
bb73:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb74
bb74:   # loop depth 1
  SUB s0, zero, s2
  BNE s3, zero, bb99
  # implict jump to bb75
bb75:   # loop depth 1
  ADD s0, s2, zero
  # implict jump to bb76
bb76:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb92
  # implict jump to bb77
bb77:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb78
bb78:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb88
  # implict jump to bb79
bb79:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb80
bb80:   # loop depth 1
  SUB s5, zero, s2
  BNE s4, zero, bb87
  # implict jump to bb81
bb81:   # loop depth 1
  ADD s5, s2, zero
  # implict jump to bb82
bb82:   # loop depth 1
  LD t0, 16(sp)
  LW t2, 0(t0)
  SLTI t0, t2, 1
  BEQ t0, zero, bb84
  # implict jump to bb83
bb83:   # loop depth 1
  ADD a1, s5, zero
  ADD a0, s0, zero
  CALL same
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb44
bb84:   # loop depth 1
  ADDI t0, zero, 1
  # implict jump to bb85
bb85:   # loop depth 2
  LA a0, vis
  ADDIW t1, t0, 1
  SH2ADD t0, t0, a0
  SW zero, 0(t0)
  BGE t2, t1, bb86
  JAL zero, bb83
bb86:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb85
bb87:   # loop depth 1
  JAL zero, bb82
bb88:   # loop depth 1
  ADD s2, zero, zero
  ADD s3, a0, zero
  # implict jump to bb89
bb89:   # loop depth 2
  ADDI s5, zero, 10
  CALL getch
  MULW t0, s2, s5
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s3
  AND t2, t2, a1
  ADDIW s2, t0, -48
  BNE t2, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  JAL zero, bb80
bb91:   # loop depth 2
  ADD s3, a0, zero
  JAL zero, bb89
bb92:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb98
  # implict jump to bb94
bb94:   # loop depth 2
  # implict jump to bb95
bb95:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb97
  # implict jump to bb96
bb96:   # loop depth 1
  JAL zero, bb78
bb97:   # loop depth 2
  JAL zero, bb93
bb98:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb95
bb99:   # loop depth 1
  JAL zero, bb76
bb100:   # loop depth 1
  ADD s2, zero, zero
  ADD s0, a0, zero
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW t0, s2, s4
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s2, t0, -48
  BNE t2, zero, bb103
  # implict jump to bb102
bb102:   # loop depth 1
  JAL zero, bb74
bb103:   # loop depth 2
  ADD s0, a0, zero
  JAL zero, bb101
bb104:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb105
bb105:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb110
  # implict jump to bb106
bb106:   # loop depth 2
  # implict jump to bb107
bb107:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb109
  # implict jump to bb108
bb108:   # loop depth 1
  JAL zero, bb72
bb109:   # loop depth 2
  JAL zero, bb105
bb110:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb107
bb111:   # loop depth 2
  CALL getch
  XORI t2, a0, 85
  XORI t1, a0, 81
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb111
  # implict jump to bb112
bb112:   # loop depth 1
  JAL zero, bb30
bb113:   # loop depth 1
  ADD t0, t2, zero
  JAL zero, bb24
bb114:   # loop depth 0
  JAL zero, bb23
bb115:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb116
bb116:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  MULW t0, s0, s3
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s1
  AND t2, t2, a1
  ADDIW s0, t0, -48
  BNE t2, zero, bb118
  # implict jump to bb117
bb117:   # loop depth 0
  JAL zero, bb21
bb118:   # loop depth 1
  ADD s1, a0, zero
  JAL zero, bb116
bb119:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb120
bb120:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb125
  # implict jump to bb121
bb121:   # loop depth 1
  # implict jump to bb122
bb122:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb124
  # implict jump to bb123
bb123:   # loop depth 0
  JAL zero, bb19
bb124:   # loop depth 1
  JAL zero, bb120
bb125:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb122
bb126:   # loop depth 0
  JAL zero, bb17
bb127:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb128
bb128:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  MULW t0, s0, s3
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s1
  AND t2, t2, a1
  ADDIW s0, t0, -48
  BNE t2, zero, bb130
  # implict jump to bb129
bb129:   # loop depth 0
  JAL zero, bb15
bb130:   # loop depth 1
  ADD s1, a0, zero
  JAL zero, bb128
bb131:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb132
bb132:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb137
  # implict jump to bb133
bb133:   # loop depth 1
  # implict jump to bb134
bb134:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb136
  # implict jump to bb135
bb135:   # loop depth 0
  JAL zero, bb13
bb136:   # loop depth 1
  JAL zero, bb132
bb137:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb134
