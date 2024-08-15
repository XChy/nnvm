.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

head:
.space 4020
inq:
.space 4020
next:
.space 20020
que:
.space 4020
to:
.space 20020




.section .data
h:
.word 0x00000000





cnt:
.word 0x00000000
m:
.word 0x00000000
tail:
.word 0x00000000
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -176
  SD s0, 24(sp)
  SD ra, 64(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb135
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb131
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  SUBW t1, zero, s2
  BNE s0, zero, bb130
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t1, s2, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LA t2, n
  ADDI s0, zero, 57
  SW t1, 0(t2)
  CALL getch
  SLT t2, s0, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb123
  # implict jump to bb7
bb7:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb119
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  LA t1, m
  SD t1, 168(sp)
  LA t0, head
  SD t0, 32(sp)
  SUBW t1, zero, s1
  BNE s2, zero, bb118
  # implict jump to bb11
bb11:   # loop depth 0
  ADD t1, s1, zero
  # implict jump to bb12
bb12:   # loop depth 0
  ADD t0, zero, zero
  LD t2, 168(sp)
  SW t1, 0(t2)
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI a1, zero, -1
  ADDIW t2, t0, 1
  LD a0, 32(sp)
  SH2ADD t0, t0, a0
  SLTI a0, t2, 1005
  SW a1, 0(t0)
  BNE a0, zero, bb117
  # implict jump to bb14
bb14:   # loop depth 0
  BNE t1, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  LD s0, 24(sp)
  LD ra, 64(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb16:   # loop depth 0
  LA s11, to
  LA s10, next
  LA t0, cnt
  SD t0, 72(sp)
  LA t0, que
  SD t0, 40(sp)
  LA t0, h
  SD t0, 48(sp)
  LA s9, tail
  LA s8, inq
  ADD s6, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  SW s0, 12(sp)
  SW s1, 8(sp)
  SW s2, 4(sp)
  SW s6, 0(sp)
  CALL getch
  XORI t2, a0, 85
  XORI t1, a0, 81
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb115
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 1
  XORI t0, a0, 81
  BEQ t0, zero, bb59
  # implict jump to bb20
bb20:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb52
  # implict jump to bb21
bb21:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb48
  # implict jump to bb23
bb23:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  SUBW s7, zero, s3
  BNE s4, zero, bb47
  # implict jump to bb25
bb25:   # loop depth 1
  ADD s7, s3, zero
  # implict jump to bb26
bb26:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb40
  # implict jump to bb27
bb27:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb36
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SUBW s6, zero, s3
  BNE s4, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s6, s3, zero
  # implict jump to bb32
bb32:   # loop depth 1
  LD t0, 72(sp)
  LW t2, 0(t0)
  LD t0, 32(sp)
  SH2ADD a1, s7, t0
  LD t0, 32(sp)
  SH2ADD a5, s6, t0
  LW s0, 12(sp)
  LW s1, 8(sp)
  SH2ADD t0, t2, s11
  SH2ADD a0, t2, s10
  SW s6, 0(t0)
  ADDIW a3, t2, 1
  LW a2, 0(a1)
  SH2ADD a4, a3, s10
  ADDIW a6, t2, 2
  ADD s2, s7, zero
  SW a2, 0(a0)
  SW t2, 0(a1)
  LD t1, 72(sp)
  SW a3, 0(t1)
  SW s7, 4(t0)
  LW t0, 0(a5)
  SW t0, 0(a4)
  SW a3, 0(a5)
  LD t0, 72(sp)
  SW a6, 0(t0)
  # implict jump to bb33
bb33:   # loop depth 1
  LD t0, 168(sp)
  LW a1, 0(t0)
  ADDIW a1, a1, -1
  LD a0, 168(sp)
  SW a1, 0(a0)
  BNE a1, zero, bb34
  JAL zero, bb15
bb34:   # loop depth 1
  JAL zero, bb17
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 1
  ADD s3, zero, zero
  ADD s2, a0, zero
  # implict jump to bb37
bb37:   # loop depth 2
  ADDI t0, zero, 10
  SW t0, 16(sp)
  CALL getch
  LW t0, 16(sp)
  MULW t0, s3, t0
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s2
  AND t2, t2, a1
  ADDIW s3, t0, -48
  BNE t2, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 1
  JAL zero, bb30
bb39:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb37
bb40:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb46
  # implict jump to bb42
bb42:   # loop depth 2
  # implict jump to bb43
bb43:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb45
  # implict jump to bb44
bb44:   # loop depth 1
  JAL zero, bb28
bb45:   # loop depth 2
  JAL zero, bb41
bb46:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb43
bb47:   # loop depth 1
  JAL zero, bb26
bb48:   # loop depth 1
  ADD s3, zero, zero
  ADD s2, a0, zero
  # implict jump to bb49
bb49:   # loop depth 2
  ADDI s5, zero, 10
  CALL getch
  MULW t0, s3, s5
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s2
  AND t2, t2, a1
  ADDIW s3, t0, -48
  BNE t2, zero, bb51
  # implict jump to bb50
bb50:   # loop depth 1
  JAL zero, bb24
bb51:   # loop depth 2
  ADD s2, a0, zero
  JAL zero, bb49
bb52:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb53
bb53:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb58
  # implict jump to bb54
bb54:   # loop depth 2
  # implict jump to bb55
bb55:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb57
  # implict jump to bb56
bb56:   # loop depth 1
  JAL zero, bb22
bb57:   # loop depth 2
  JAL zero, bb53
bb58:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb55
bb59:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb108
  # implict jump to bb60
bb60:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb104
  # implict jump to bb62
bb62:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb63
bb63:   # loop depth 1
  SUBW s0, zero, s1
  BNE s4, zero, bb103
  # implict jump to bb64
bb64:   # loop depth 1
  ADD s0, s1, zero
  # implict jump to bb65
bb65:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb96
  # implict jump to bb66
bb66:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb67
bb67:   # loop depth 1
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  AND t2, t2, a1
  BNE t2, zero, bb92
  # implict jump to bb68
bb68:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb69
bb69:   # loop depth 1
  SUBW s1, zero, s4
  BNE s5, zero, bb91
  # implict jump to bb70
bb70:   # loop depth 1
  ADD s1, s4, zero
  # implict jump to bb71
bb71:   # loop depth 1
  LD t0, 48(sp)
  SW zero, 0(t0)
  ADDI a0, zero, 1
  SH2ADD t1, s0, s8
  SW zero, 0(s9)
  ADDI a1, zero, 1
  SW a0, 0(t1)
  SW a1, 0(s9)
  ADDI t1, zero, 1
  LD t0, 40(sp)
  SW s0, 4(t0)
  BNE t1, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 1
  LW t1, 0(s9)
  BGE t1, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 1
  LW s2, 4(sp)
  LW s6, 0(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb33
bb75:   # loop depth 1
  LW a1, 0(s9)
  ADD t1, zero, zero
  # implict jump to bb76
bb76:   # loop depth 2
  LD t0, 40(sp)
  SH2ADD a2, t1, t0
  ADDIW t1, t1, 1
  LW a2, 0(a2)
  SH2ADD a2, a2, s8
  SW zero, 0(a2)
  BGE a1, t1, bb77
  JAL zero, bb74
bb77:   # loop depth 2
  JAL zero, bb76
bb78:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb79
bb79:   # loop depth 2
  LD t0, 48(sp)
  LW t1, 0(t0)
  ADDIW a1, t1, 1
  LD t0, 40(sp)
  SH2ADD t1, t1, t0
  LD t0, 48(sp)
  SW a1, 0(t0)
  LW t1, 4(t1)
  BEQ t1, s1, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  # implict jump to bb81
bb81:   # loop depth 2
  LD t0, 32(sp)
  SH2ADD t1, t1, t0
  LW t1, 0(t1)
  XORI a2, t1, -1
  BNE a2, zero, bb85
  # implict jump to bb82
bb82:   # loop depth 2
  LW t1, 0(s9)
  BLT a1, t1, bb84
  # implict jump to bb83
bb83:   # loop depth 1
  JAL zero, bb73
bb84:   # loop depth 2
  JAL zero, bb79
bb85:   # loop depth 2
  # implict jump to bb86
bb86:   # loop depth 3
  SH2ADD a2, t1, s11
  LW a2, 0(a2)
  SH2ADD a3, a2, s8
  LW a4, 0(a3)
  SLTU a4, zero, a4
  BEQ a4, zero, bb89
  # implict jump to bb87
bb87:   # loop depth 3
  SH2ADD t1, t1, s10
  LW t1, 0(t1)
  XORI a2, t1, -1
  BNE a2, zero, bb88
  JAL zero, bb82
bb88:   # loop depth 3
  JAL zero, bb86
bb89:   # loop depth 3
  ADDI a4, zero, 1
  SW a4, 0(a3)
  LW a3, 0(s9)
  ADDIW a4, a3, 1
  LD t0, 40(sp)
  SH2ADD a3, a3, t0
  SW a4, 0(s9)
  SW a2, 4(a3)
  JAL zero, bb87
bb90:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb81
bb91:   # loop depth 1
  JAL zero, bb71
bb92:   # loop depth 1
  ADD s4, zero, zero
  ADD s1, a0, zero
  # implict jump to bb93
bb93:   # loop depth 2
  ADDI t0, zero, 10
  SW t0, 20(sp)
  CALL getch
  LW t0, 20(sp)
  MULW t0, s4, t0
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s1
  AND t2, t2, a1
  ADDIW s4, t0, -48
  BNE t2, zero, bb95
  # implict jump to bb94
bb94:   # loop depth 1
  JAL zero, bb69
bb95:   # loop depth 2
  ADD s1, a0, zero
  JAL zero, bb93
bb96:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb102
  # implict jump to bb98
bb98:   # loop depth 2
  # implict jump to bb99
bb99:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb101
  # implict jump to bb100
bb100:   # loop depth 1
  JAL zero, bb67
bb101:   # loop depth 2
  JAL zero, bb97
bb102:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb99
bb103:   # loop depth 1
  JAL zero, bb65
bb104:   # loop depth 1
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI s5, zero, 10
  CALL getch
  MULW t0, s1, s5
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s0
  AND t2, t2, a1
  ADDIW s1, t0, -48
  BNE t2, zero, bb107
  # implict jump to bb106
bb106:   # loop depth 1
  JAL zero, bb63
bb107:   # loop depth 2
  ADD s0, a0, zero
  JAL zero, bb105
bb108:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb109
bb109:   # loop depth 2
  XORI t0, a0, 45
  BEQ t0, zero, bb114
  # implict jump to bb110
bb110:   # loop depth 2
  # implict jump to bb111
bb111:   # loop depth 2
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb113
  # implict jump to bb112
bb112:   # loop depth 1
  JAL zero, bb61
bb113:   # loop depth 2
  JAL zero, bb109
bb114:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb111
bb115:   # loop depth 2
  CALL getch
  XORI t2, a0, 85
  XORI t1, a0, 81
  SLTU t2, zero, t2
  SLTU t1, zero, t1
  AND t1, t1, t2
  BNE t1, zero, bb115
  # implict jump to bb116
bb116:   # loop depth 1
  JAL zero, bb19
bb117:   # loop depth 1
  ADD t0, t2, zero
  JAL zero, bb13
bb118:   # loop depth 0
  JAL zero, bb12
bb119:   # loop depth 0
  ADD s1, zero, zero
  ADD s0, a0, zero
  # implict jump to bb120
bb120:   # loop depth 1
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
  BNE t2, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 0
  JAL zero, bb10
bb122:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb120
bb123:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb124
bb124:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb129
  # implict jump to bb125
bb125:   # loop depth 1
  # implict jump to bb126
bb126:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb128
  # implict jump to bb127
bb127:   # loop depth 0
  JAL zero, bb8
bb128:   # loop depth 1
  JAL zero, bb124
bb129:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb126
bb130:   # loop depth 0
  JAL zero, bb6
bb131:   # loop depth 0
  ADD s2, zero, zero
  ADD s1, a0, zero
  # implict jump to bb132
bb132:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  MULW t0, s2, s3
  ADDI t2, zero, 57
  SLT a1, t2, a0
  SLTI t2, a0, 48
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t0, s1
  AND t2, t2, a1
  ADDIW s2, t0, -48
  BNE t2, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 0
  JAL zero, bb4
bb134:   # loop depth 1
  ADD s1, a0, zero
  JAL zero, bb132
bb135:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb136
bb136:   # loop depth 1
  XORI t0, a0, 45
  BEQ t0, zero, bb141
  # implict jump to bb137
bb137:   # loop depth 1
  # implict jump to bb138
bb138:   # loop depth 1
  CALL getch
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  OR t1, t1, t2
  BNE t1, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 0
  JAL zero, bb2
bb140:   # loop depth 1
  JAL zero, bb136
bb141:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb138
