.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global tree
.global main
.section .bss
head:
.space 40020
next:
.space 40020
to:
.space 40020
dep:
.space 40020
f:
.space 800400



.section .data





n:
.word 0x00000000
cnt:
.word 0x00000000
m:
.word 0x00000000
.section .text
tree:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI t0, zero, 80
  MULW t1, a0, t0
  LA t0, dep
  LA a6, f
  SH2ADD t0, a0, t0
  ADD a4, a6, t1
  SW a1, 0(t0)
  LW t0, 0(a4)
  BNE t0, zero, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, head
  SH2ADD t0, a0, t0
  LW t0, 0(t0)
  XORI t1, t0, -1
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDIW s1, a1, 1
  # implict jump to bb4
bb4:   # loop depth 1
  LA t1, to
  LA t2, next
  ADD a1, s1, zero
  SH2ADD t1, t0, t1
  LW a0, 0(t1)
  SH2ADD s0, t0, t2
  CALL tree
  LW t0, 0(s0)
  XORI t1, t0, -1
  BNE t1, zero, bb5
  JAL zero, bb2
bb5:   # loop depth 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADD t0, zero, zero
  ADD t2, zero, zero
  ADD a3, a4, zero
  # implict jump to bb7
bb7:   # loop depth 1
  ADD a2, a3, zero
  ADDI a5, zero, 80
  LW a3, 0(a2)
  ADD t1, t2, zero
  ADDIW t0, t0, 1
  MULW a5, a3, a5
  SH2ADD a3, t0, a4
  SLLIW t2, t0, 2
  ADD a5, a6, a5
  ADD t1, a5, t1
  LW t1, 0(t1)
  SW t1, 4(a2)
  LW t1, 0(a3)
  BNE t1, zero, bb8
  JAL zero, bb1
bb8:   # loop depth 1
  JAL zero, bb7
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
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
  BNE t0, zero, bb154
  # implict jump to bb10
bb10:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s3, t0, zero
  BNE t1, zero, bb150
  # implict jump to bb12
bb12:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  LA s10, n
  SUB t1, zero, t0
  BNE s3, zero, bb149
  # implict jump to bb14
bb14:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb15
bb15:   # loop depth 0
  ADDI s0, zero, 57
  SW t1, 0(s10)
  CALL getch
  SLT t1, s0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb142
  # implict jump to bb16
bb16:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s4, t0, zero
  BNE t1, zero, bb138
  # implict jump to bb18
bb18:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  LA s9, m
  LA s3, dep
  LA s7, head
  SUB t1, zero, t0
  BNE s4, zero, bb137
  # implict jump to bb20
bb20:   # loop depth 0
  ADD t1, t0, zero
  # implict jump to bb21
bb21:   # loop depth 0
  LUI t0, 259060
  ADDIW t0, t0, -193
  SW t1, 0(s9)
  SW t0, 0(s3)
  LW t2, 0(s10)
  SLTI t0, t2, 1
  BEQ t0, zero, bb134
  # implict jump to bb22
bb22:   # loop depth 0
  LA s2, f
  XORI t0, t2, 1
  BNE t0, zero, bb95
  # implict jump to bb23
bb23:   # loop depth 0
  ADDI a1, zero, 1
  ADDI a0, zero, 1
  CALL tree
  LW t0, 0(s9)
  BNE t0, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb25:   # loop depth 1
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb88
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
  ADD s5, t0, zero
  BNE t1, zero, bb84
  # implict jump to bb28
bb28:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SUB t1, zero, t0
  BNE s5, zero, bb83
  # implict jump to bb30
bb30:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s0, t1, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb76
  # implict jump to bb32
bb32:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s6, t0, zero
  BNE t1, zero, bb72
  # implict jump to bb34
bb34:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  SUB a0, zero, t0
  BNE s6, zero, bb71
  # implict jump to bb36
bb36:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb37
bb37:   # loop depth 1
  SH2ADD t0, s0, s3
  LW t1, 0(t0)
  SH2ADD t0, a0, s3
  LW t2, 0(t0)
  BLT t1, t2, bb70
  # implict jump to bb38
bb38:   # loop depth 1
  ADD t0, a0, zero
  # implict jump to bb39
bb39:   # loop depth 1
  BLT t1, t2, bb69
  # implict jump to bb40
bb40:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb41
bb41:   # loop depth 1
  SH2ADD t2, t0, s3
  SH2ADD t1, a0, s3
  LW t1, 0(t1)
  LW a2, 0(t2)
  BLT a2, t1, bb59
  # implict jump to bb42
bb42:   # loop depth 1
  # implict jump to bb43
bb43:   # loop depth 1
  BEQ a0, t0, bb58
  # implict jump to bb44
bb44:   # loop depth 1
  ADDI t1, zero, 80
  ADDI t2, zero, 19
  MULW t1, a0, t1
  BGE t2, zero, bb48
  # implict jump to bb45
bb45:   # loop depth 1
  # implict jump to bb46
bb46:   # loop depth 1
  ADD t0, s2, t1
  LW a0, 0(t0)
  # implict jump to bb47
bb47:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s9)
  ADDIW t0, t0, -1
  SW t0, 0(s9)
  BNE t0, zero, bb25
  JAL zero, bb24
bb48:   # loop depth 1
  ADDI a1, zero, 19
  # implict jump to bb49
bb49:   # loop depth 2
  ADDI t2, zero, 80
  ADD t1, s2, t1
  MULW t2, t0, t2
  SH2ADD t1, a1, t1
  LW t1, 0(t1)
  ADD t2, s2, t2
  SH2ADD t2, a1, t2
  LW t2, 0(t2)
  BNE t1, t2, bb57
  # implict jump to bb50
bb50:   # loop depth 2
  # implict jump to bb51
bb51:   # loop depth 2
  BNE t1, t2, bb56
  # implict jump to bb52
bb52:   # loop depth 2
  # implict jump to bb53
bb53:   # loop depth 2
  ADDI t1, zero, 80
  MULW t1, a0, t1
  ADDIW a1, a1, -1
  BGE a1, zero, bb55
  # implict jump to bb54
bb54:   # loop depth 2
  JAL zero, bb46
bb55:   # loop depth 2
  JAL zero, bb49
bb56:   # loop depth 2
  ADD a0, t1, zero
  JAL zero, bb53
bb57:   # loop depth 2
  ADD t0, t2, zero
  JAL zero, bb51
bb58:   # loop depth 1
  JAL zero, bb47
bb59:   # loop depth 1
  ADDI a1, zero, 19
  # implict jump to bb60
bb60:   # loop depth 2
  ADDI t1, zero, 80
  MULW t1, a0, t1
  ADD t1, s2, t1
  SH2ADD t1, a1, t1
  LW t1, 0(t1)
  BNE t1, zero, bb68
  # implict jump to bb61
bb61:   # loop depth 2
  ADD t2, zero, zero
  # implict jump to bb62
bb62:   # loop depth 2
  BNE t2, zero, bb67
  # implict jump to bb63
bb63:   # loop depth 2
  # implict jump to bb64
bb64:   # loop depth 2
  ADDIW a1, a1, -1
  SH2ADD t1, a0, s3
  LW t1, 0(t1)
  BLT a2, t1, bb66
  # implict jump to bb65
bb65:   # loop depth 2
  JAL zero, bb43
bb66:   # loop depth 2
  JAL zero, bb60
bb67:   # loop depth 2
  ADD a0, t1, zero
  JAL zero, bb64
bb68:   # loop depth 2
  SH2ADD t2, t1, s3
  LW t2, 0(t2)
  SLT t2, t2, a2
  XORI t2, t2, 1
  JAL zero, bb62
bb69:   # loop depth 1
  JAL zero, bb41
bb70:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb39
bb71:   # loop depth 1
  JAL zero, bb37
bb72:   # loop depth 1
  ADD t0, zero, zero
  ADD s4, a0, zero
  # implict jump to bb73
bb73:   # loop depth 2
  ADDI s5, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s5
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s4, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 2
  JAL zero, bb35
bb75:   # loop depth 2
  ADD s4, a0, zero
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
bb80:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb33
bb81:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb77
bb82:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb79
bb83:   # loop depth 1
  JAL zero, bb31
bb84:   # loop depth 1
  ADD t0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADDI s4, zero, 10
  ADD s0, t0, zero
  CALL getch
  MULW t1, s0, s4
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
bb86:   # loop depth 2
  JAL zero, bb29
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
bb92:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb27
bb93:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb89
bb94:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb91
bb95:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb96
bb96:   # loop depth 1
  ADD s8, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb127
  # implict jump to bb97
bb97:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb98
bb98:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s5, t0, zero
  BNE t1, zero, bb123
  # implict jump to bb99
bb99:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb100
bb100:   # loop depth 1
  SUB t1, zero, t0
  BNE s5, zero, bb122
  # implict jump to bb101
bb101:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb102
bb102:   # loop depth 1
  ADD s0, t1, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb115
  # implict jump to bb103
bb103:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb104
bb104:   # loop depth 1
  ADDI t1, zero, 57
  SLT t2, t1, a0
  SLTI t1, a0, 48
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  ADD s6, t0, zero
  BNE t1, zero, bb111
  # implict jump to bb105
bb105:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb106
bb106:   # loop depth 1
  LA a4, cnt
  SUB t1, zero, t0
  BNE s6, zero, bb110
  # implict jump to bb107
bb107:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb108
bb108:   # loop depth 1
  LW t2, 0(a4)
  LA t0, to
  SH2ADD a0, s0, s7
  LA a1, next
  ADDI a2, zero, 80
  SH2ADD t0, t2, t0
  MULW a3, t1, a2
  SW t1, 0(t0)
  SH2ADD t1, t2, a1
  LW a1, 0(a0)
  ADDIW a2, t2, 1
  ADD a3, s2, a3
  ADDIW t0, s8, 1
  SW a1, 0(t1)
  SW t2, 0(a0)
  SW a2, 0(a4)
  SW s0, 0(a3)
  LW t1, 0(s10)
  BNE t0, t1, bb109
  JAL zero, bb23
bb109:   # loop depth 1
  JAL zero, bb96
bb110:   # loop depth 1
  JAL zero, bb108
bb111:   # loop depth 1
  ADD t0, zero, zero
  ADD s4, a0, zero
  # implict jump to bb112
bb112:   # loop depth 2
  ADDI s5, zero, 10
  ADD s1, t0, zero
  CALL getch
  MULW t1, s1, s5
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s4, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb114
  # implict jump to bb113
bb113:   # loop depth 2
  JAL zero, bb106
bb114:   # loop depth 2
  ADD s4, a0, zero
  JAL zero, bb112
bb115:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb116
bb116:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb121
  # implict jump to bb117
bb117:   # loop depth 2
  # implict jump to bb118
bb118:   # loop depth 2
  ADD s1, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb120
  # implict jump to bb119
bb119:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb104
bb120:   # loop depth 2
  ADD t0, s1, zero
  JAL zero, bb116
bb121:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb118
bb122:   # loop depth 1
  JAL zero, bb102
bb123:   # loop depth 1
  ADD t0, zero, zero
  ADD s1, a0, zero
  # implict jump to bb124
bb124:   # loop depth 2
  ADDI s4, zero, 10
  ADD s0, t0, zero
  CALL getch
  MULW t1, s0, s4
  ADDI t0, zero, 57
  SLT a1, t0, a0
  SLTI t2, a0, 48
  ADD t0, s1, zero
  XORI a1, a1, 1
  XORI t2, t2, 1
  ADDW t0, t1, t0
  AND t1, t2, a1
  ADDIW t0, t0, -48
  BNE t1, zero, bb126
  # implict jump to bb125
bb125:   # loop depth 2
  JAL zero, bb100
bb126:   # loop depth 2
  ADD s1, a0, zero
  JAL zero, bb124
bb127:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb128
bb128:   # loop depth 2
  XORI t1, a0, 45
  BEQ t1, zero, bb133
  # implict jump to bb129
bb129:   # loop depth 2
  # implict jump to bb130
bb130:   # loop depth 2
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb132
  # implict jump to bb131
bb131:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb98
bb132:   # loop depth 2
  ADD t0, s0, zero
  JAL zero, bb128
bb133:   # loop depth 2
  ADDI t0, zero, 1
  JAL zero, bb130
bb134:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb135
bb135:   # loop depth 1
  ADDI a0, zero, -1
  SH2ADD t1, t0, s7
  ADDIW t0, t0, 1
  SW a0, 0(t1)
  BGE t2, t0, bb136
  JAL zero, bb22
bb136:   # loop depth 1
  JAL zero, bb135
bb137:   # loop depth 0
  JAL zero, bb21
bb138:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb139
bb139:   # loop depth 1
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
  BNE t1, zero, bb141
  # implict jump to bb140
bb140:   # loop depth 1
  JAL zero, bb19
bb141:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb139
bb142:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb143
bb143:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb148
  # implict jump to bb144
bb144:   # loop depth 1
  # implict jump to bb145
bb145:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb147
  # implict jump to bb146
bb146:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb17
bb147:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb143
bb148:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb145
bb149:   # loop depth 0
  JAL zero, bb15
bb150:   # loop depth 0
  ADD t0, zero, zero
  ADD s0, a0, zero
  # implict jump to bb151
bb151:   # loop depth 1
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
  BNE t1, zero, bb153
  # implict jump to bb152
bb152:   # loop depth 1
  JAL zero, bb13
bb153:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb151
bb154:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb155
bb155:   # loop depth 1
  XORI t1, a0, 45
  BEQ t1, zero, bb160
  # implict jump to bb156
bb156:   # loop depth 1
  # implict jump to bb157
bb157:   # loop depth 1
  ADD s0, t0, zero
  CALL getch
  ADDI t0, zero, 57
  SLT t1, t0, a0
  SLTI t0, a0, 48
  OR t0, t0, t1
  BNE t0, zero, bb159
  # implict jump to bb158
bb158:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb11
bb159:   # loop depth 1
  ADD t0, s0, zero
  JAL zero, bb155
bb160:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb157
