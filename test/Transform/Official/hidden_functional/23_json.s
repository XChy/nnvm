.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global detect_item
.global main
.section .bss
buffer:
.space 200000000

.section .data

pos:
.word 0x00000000
.section .text
detect_item:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s1, a1, zero
  ADD s0, a2, zero
  # implict jump to bb1
bb1:   # loop depth 1
  LA a1, pos
  LW a1, 0(a1)
  SLT a1, a1, s0
  XORI a1, a1, 1
  BNE a1, zero, bb309
  # implict jump to bb2
bb2:   # loop depth 2
  LA a1, pos
  LW a2, 0(a1)
  SLT a1, a2, s0
  XORI a1, a1, 1
  BNE a1, zero, bb7
  # implict jump to bb3
bb3:   # loop depth 2
  SH2ADD a1, a2, s1
  LW a1, 0(a1)
  XORI s2, a1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb308
  # implict jump to bb4
bb4:   # loop depth 2
  XORI s2, a1, 9
  SLTIU s2, s2, 1
  BNE s2, zero, bb307
  # implict jump to bb5
bb5:   # loop depth 2
  XORI s2, a1, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb306
  # implict jump to bb6
bb6:   # loop depth 2
  XORI a1, a1, 13
  SLTIU a1, a1, 1
  BNE a1, zero, bb305
  # implict jump to bb7
bb7:   # loop depth 1
  SLTIU a1, a0, 1
  BNE a1, zero, bb280
  # implict jump to bb8
bb8:   # loop depth 0
  XORI a1, a0, 1
  SLTIU a1, a1, 1
  BNE a1, zero, bb233
  # implict jump to bb9
bb9:   # loop depth 0
  XORI a1, a0, 2
  SLTIU a1, a1, 1
  BNE a1, zero, bb222
  # implict jump to bb10
bb10:   # loop depth 0
  XORI a1, a0, 3
  SLTIU a1, a1, 1
  BNE a1, zero, bb162
  # implict jump to bb11
bb11:   # loop depth 0
  XORI a1, a0, 4
  SLTIU a1, a1, 1
  BNE a1, zero, bb52
  # implict jump to bb12
bb12:   # loop depth 0
  XORI t0, a0, 5
  SLTIU t0, t0, 1
  BNE t0, zero, bb41
  # implict jump to bb13
bb13:   # loop depth 0
  XORI t0, a0, 6
  SLTIU t0, t0, 1
  BNE t0, zero, bb28
  # implict jump to bb14
bb14:   # loop depth 0
  XORI t0, a0, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb16:   # loop depth 0
  ADDIW t0, a2, 3
  SLT t0, t0, s0
  XORI t0, t0, 1
  BNE t0, zero, bb27
  # implict jump to bb17
bb17:   # loop depth 0
  SH2ADD t0, a2, s1
  LW t1, 0(t0)
  XORI t1, t1, 110
  BNE t1, zero, bb26
  # implict jump to bb18
bb18:   # loop depth 0
  LW t1, 4(t0)
  XORI t1, t1, 117
  BNE t1, zero, bb25
  # implict jump to bb19
bb19:   # loop depth 0
  LW t1, 8(t0)
  XORI t1, t1, 108
  BNE t1, zero, bb24
  # implict jump to bb20
bb20:   # loop depth 0
  LW t0, 12(t0)
  XORI t0, t0, 108
  BNE t0, zero, bb23
  # implict jump to bb21
bb21:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 4
  SW t0, 0(t1)
  # implict jump to bb22
bb22:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb23:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb24:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb25:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb26:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb27:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb28:   # loop depth 0
  ADDIW t0, a2, 4
  SLT t0, t0, s0
  XORI t0, t0, 1
  BNE t0, zero, bb40
  # implict jump to bb29
bb29:   # loop depth 0
  SH2ADD t0, a2, s1
  LW t1, 0(t0)
  XORI t1, t1, 102
  BNE t1, zero, bb39
  # implict jump to bb30
bb30:   # loop depth 0
  LW t1, 4(t0)
  XORI t1, t1, 97
  BNE t1, zero, bb38
  # implict jump to bb31
bb31:   # loop depth 0
  LW t1, 8(t0)
  XORI t1, t1, 108
  BNE t1, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 0
  LW t1, 12(t0)
  XORI t1, t1, 115
  BNE t1, zero, bb36
  # implict jump to bb33
bb33:   # loop depth 0
  LW t0, 16(t0)
  XORI t0, t0, 101
  BNE t0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 5
  SW t0, 0(t1)
  JAL zero, bb22
bb35:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb36:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb37:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb38:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb39:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb40:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb41:   # loop depth 0
  ADDIW t0, a2, 3
  SLT t0, t0, s0
  XORI t0, t0, 1
  BNE t0, zero, bb51
  # implict jump to bb42
bb42:   # loop depth 0
  SH2ADD t0, a2, s1
  LW t1, 0(t0)
  XORI t1, t1, 116
  BNE t1, zero, bb50
  # implict jump to bb43
bb43:   # loop depth 0
  LW t1, 4(t0)
  XORI t1, t1, 114
  BNE t1, zero, bb49
  # implict jump to bb44
bb44:   # loop depth 0
  LW t1, 8(t0)
  XORI t1, t1, 117
  BNE t1, zero, bb48
  # implict jump to bb45
bb45:   # loop depth 0
  LW t0, 12(t0)
  XORI t0, t0, 101
  BNE t0, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 4
  SW t0, 0(t1)
  JAL zero, bb22
bb47:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb48:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb49:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb50:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb51:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb52:   # loop depth 0
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb53
bb53:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb58
  # implict jump to bb54
bb54:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb161
  # implict jump to bb55
bb55:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb160
  # implict jump to bb56
bb56:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb159
  # implict jump to bb57
bb57:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb158
  # implict jump to bb58
bb58:   # loop depth 0
  LA a0, pos
  LW a0, 0(a0)
  BLT a0, s0, bb156
  # implict jump to bb59
bb59:   # loop depth 0
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADDI a0, zero, 2
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb155
  # implict jump to bb60
bb60:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb65
  # implict jump to bb61
bb61:   # loop depth 1
  SH2ADD a2, a0, s1
  LW a2, 0(a2)
  XORI s2, a2, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb154
  # implict jump to bb62
bb62:   # loop depth 1
  XORI s2, a2, 9
  SLTIU s2, s2, 1
  BNE s2, zero, bb153
  # implict jump to bb63
bb63:   # loop depth 1
  XORI s2, a2, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb152
  # implict jump to bb64
bb64:   # loop depth 1
  XORI a2, a2, 13
  SLTIU a2, a2, 1
  BNE a2, zero, bb151
  # implict jump to bb65
bb65:   # loop depth 0
  BNE a1, zero, bb150
  # implict jump to bb66
bb66:   # loop depth 0
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 58
  BNE a0, zero, bb149
  # implict jump to bb67
bb67:   # loop depth 0
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb68
bb68:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb73
  # implict jump to bb69
bb69:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb148
  # implict jump to bb70
bb70:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb147
  # implict jump to bb71
bb71:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb146
  # implict jump to bb72
bb72:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb145
  # implict jump to bb73
bb73:   # loop depth 0
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADD a0, zero, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb144
  # implict jump to bb74
bb74:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb79
  # implict jump to bb75
bb75:   # loop depth 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a1, a0, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb143
  # implict jump to bb76
bb76:   # loop depth 1
  XORI a1, a0, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb142
  # implict jump to bb77
bb77:   # loop depth 1
  XORI a1, a0, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb141
  # implict jump to bb78
bb78:   # loop depth 1
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb140
  # implict jump to bb79
bb79:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 44
  SLTIU a0, a0, 1
  BNE a0, zero, bb94
  # implict jump to bb80
bb80:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SLT t1, t0, s0
  XORI t1, t1, 1
  BNE t1, zero, bb85
  # implict jump to bb81
bb81:   # loop depth 1
  SH2ADD t2, t0, s1
  LW t2, 0(t2)
  XORI a0, t2, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb93
  # implict jump to bb82
bb82:   # loop depth 1
  XORI a0, t2, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb92
  # implict jump to bb83
bb83:   # loop depth 1
  XORI a0, t2, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb91
  # implict jump to bb84
bb84:   # loop depth 1
  XORI t2, t2, 13
  SLTIU t2, t2, 1
  BNE t2, zero, bb90
  # implict jump to bb85
bb85:   # loop depth 0
  BNE t1, zero, bb89
  # implict jump to bb86
bb86:   # loop depth 0
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 125
  BNE t0, zero, bb88
  # implict jump to bb87
bb87:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb22
bb88:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb89:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb90:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb80
bb91:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb80
bb92:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb80
bb93:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb80
bb94:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb95
bb95:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb100
  # implict jump to bb96
bb96:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb139
  # implict jump to bb97
bb97:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb138
  # implict jump to bb98
bb98:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb137
  # implict jump to bb99
bb99:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb136
  # implict jump to bb100
bb100:   # loop depth 1
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADDI a0, zero, 2
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb135
  # implict jump to bb101
bb101:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb106
  # implict jump to bb102
bb102:   # loop depth 2
  SH2ADD a2, a0, s1
  LW a2, 0(a2)
  XORI s2, a2, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb134
  # implict jump to bb103
bb103:   # loop depth 2
  XORI s2, a2, 9
  SLTIU s2, s2, 1
  BNE s2, zero, bb133
  # implict jump to bb104
bb104:   # loop depth 2
  XORI s2, a2, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb132
  # implict jump to bb105
bb105:   # loop depth 2
  XORI a2, a2, 13
  SLTIU a2, a2, 1
  BNE a2, zero, bb131
  # implict jump to bb106
bb106:   # loop depth 1
  BNE a1, zero, bb130
  # implict jump to bb107
bb107:   # loop depth 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 58
  BNE a0, zero, bb129
  # implict jump to bb108
bb108:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb109
bb109:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb114
  # implict jump to bb110
bb110:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb128
  # implict jump to bb111
bb111:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb127
  # implict jump to bb112
bb112:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb126
  # implict jump to bb113
bb113:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb125
  # implict jump to bb114
bb114:   # loop depth 1
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADD a0, zero, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb124
  # implict jump to bb115
bb115:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb79
  # implict jump to bb116
bb116:   # loop depth 2
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a1, a0, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb123
  # implict jump to bb117
bb117:   # loop depth 2
  XORI a1, a0, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb122
  # implict jump to bb118
bb118:   # loop depth 2
  XORI a1, a0, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb121
  # implict jump to bb119
bb119:   # loop depth 2
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb120
  JAL zero, bb79
bb120:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb115
bb121:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb115
bb122:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb115
bb123:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb115
bb124:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb125:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb109
bb126:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb109
bb127:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb109
bb128:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb109
bb129:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb130:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb131:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb101
bb132:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb101
bb133:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb101
bb134:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb101
bb135:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb136:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb95
bb137:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb95
bb138:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb95
bb139:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb95
bb140:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb74
bb141:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb74
bb142:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb74
bb143:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb74
bb144:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb145:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb68
bb146:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb68
bb147:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb68
bb148:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb68
bb149:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb150:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb151:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb60
bb152:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb60
bb153:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb60
bb154:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb60
bb155:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb156:   # loop depth 0
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 125
  SLTIU a0, a0, 1
  BNE a0, zero, bb157
  JAL zero, bb59
bb157:   # loop depth 0
  LA t0, pos
  LA t1, pos
  ADDI a0, zero, 1
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb158:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb53
bb159:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb53
bb160:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb53
bb161:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb53
bb162:   # loop depth 0
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb163
bb163:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb168
  # implict jump to bb164
bb164:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb221
  # implict jump to bb165
bb165:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb220
  # implict jump to bb166
bb166:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb219
  # implict jump to bb167
bb167:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb218
  # implict jump to bb168
bb168:   # loop depth 0
  LA a0, pos
  LW a0, 0(a0)
  BLT a0, s0, bb216
  # implict jump to bb169
bb169:   # loop depth 0
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADD a0, zero, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb215
  # implict jump to bb170
bb170:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb175
  # implict jump to bb171
bb171:   # loop depth 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a1, a0, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb214
  # implict jump to bb172
bb172:   # loop depth 1
  XORI a1, a0, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb213
  # implict jump to bb173
bb173:   # loop depth 1
  XORI a1, a0, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb212
  # implict jump to bb174
bb174:   # loop depth 1
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb211
  # implict jump to bb175
bb175:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 44
  SLTIU a0, a0, 1
  BNE a0, zero, bb190
  # implict jump to bb176
bb176:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SLT t1, t0, s0
  XORI t1, t1, 1
  BNE t1, zero, bb181
  # implict jump to bb177
bb177:   # loop depth 1
  SH2ADD t2, t0, s1
  LW t2, 0(t2)
  XORI a0, t2, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb189
  # implict jump to bb178
bb178:   # loop depth 1
  XORI a0, t2, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb188
  # implict jump to bb179
bb179:   # loop depth 1
  XORI a0, t2, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb187
  # implict jump to bb180
bb180:   # loop depth 1
  XORI t2, t2, 13
  SLTIU t2, t2, 1
  BNE t2, zero, bb186
  # implict jump to bb181
bb181:   # loop depth 0
  BNE t1, zero, bb185
  # implict jump to bb182
bb182:   # loop depth 0
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 93
  BNE t0, zero, bb184
  # implict jump to bb183
bb183:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb22
bb184:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb185:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb186:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb176
bb187:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb176
bb188:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb176
bb189:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb176
bb190:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb191
bb191:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb196
  # implict jump to bb192
bb192:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb210
  # implict jump to bb193
bb193:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb209
  # implict jump to bb194
bb194:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb208
  # implict jump to bb195
bb195:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb207
  # implict jump to bb196
bb196:   # loop depth 1
  ADD a2, s0, zero
  ADD a1, s1, zero
  ADD a0, zero, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb206
  # implict jump to bb197
bb197:   # loop depth 2
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb175
  # implict jump to bb198
bb198:   # loop depth 2
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a1, a0, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb205
  # implict jump to bb199
bb199:   # loop depth 2
  XORI a1, a0, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb204
  # implict jump to bb200
bb200:   # loop depth 2
  XORI a1, a0, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb203
  # implict jump to bb201
bb201:   # loop depth 2
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb202
  JAL zero, bb175
bb202:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb197
bb203:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb197
bb204:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb197
bb205:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb197
bb206:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb207:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb191
bb208:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb191
bb209:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb191
bb210:   # loop depth 2
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb191
bb211:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb170
bb212:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb170
bb213:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb170
bb214:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb170
bb215:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb216:   # loop depth 0
  LA a0, pos
  LW a0, 0(a0)
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 93
  SLTIU a0, a0, 1
  BNE a0, zero, bb217
  JAL zero, bb169
bb217:   # loop depth 0
  LA t0, pos
  LA t1, pos
  ADDI a0, zero, 1
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb218:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb163
bb219:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb163
bb220:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb163
bb221:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb163
bb222:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  # implict jump to bb223
bb223:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb229
  # implict jump to bb224
bb224:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  SLT t0, t0, s0
  XORI t0, t0, 1
  BNE t0, zero, bb228
  # implict jump to bb225
bb225:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 34
  BNE t0, zero, bb227
  # implict jump to bb226
bb226:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb22
bb227:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb228:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb229:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 34
  SLTIU t0, t0, 1
  BNE t0, zero, bb224
  # implict jump to bb230
bb230:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 92
  SLTIU t0, t0, 1
  BNE t0, zero, bb232
  # implict jump to bb231
bb231:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb223
bb232:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 2
  SW t0, 0(t1)
  JAL zero, bb223
bb233:   # loop depth 0
  SH2ADD t0, a2, s1
  LW t0, 0(t0)
  XORI t1, t0, 43
  SLTIU t1, t1, 1
  BNE t1, zero, bb279
  # implict jump to bb234
bb234:   # loop depth 0
  XORI t0, t0, 45
  SLTIU t0, t0, 1
  BNE t0, zero, bb278
  # implict jump to bb235
bb235:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  SLT t1, t0, s0
  XORI t1, t1, 1
  BNE t1, zero, bb277
  # implict jump to bb236
bb236:   # loop depth 0
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  SLTI t1, t0, 48
  XORI t1, t1, 1
  BNE t1, zero, bb274
  # implict jump to bb237
bb237:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb238
bb238:   # loop depth 0
  SLTIU t0, t0, 1
  BNE t0, zero, bb273
  # implict jump to bb239
bb239:   # loop depth 1
  LA t0, pos
  LW t1, 0(t0)
  BLT t1, s0, bb266
  # implict jump to bb240
bb240:   # loop depth 0
  BLT t1, s0, bb257
  # implict jump to bb241
bb241:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb242
  JAL zero, bb22
bb242:   # loop depth 0
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 101
  SLTIU t0, t0, 1
  BNE t0, zero, bb243
  JAL zero, bb22
bb243:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  BLT t0, s0, bb255
  # implict jump to bb244
bb244:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb253
  # implict jump to bb245
bb245:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb246
  JAL zero, bb22
bb246:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  SLTI t1, t0, 48
  XORI t1, t1, 1
  BNE t1, zero, bb250
  # implict jump to bb247
bb247:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb248
bb248:   # loop depth 1
  XORI t0, t0, 1
  BNE t0, zero, bb22
  # implict jump to bb249
bb249:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb245
bb250:   # loop depth 1
  ADDI t1, zero, 57
  SLT t0, t1, t0
  XORI t0, t0, 1
  BNE t0, zero, bb252
  # implict jump to bb251
bb251:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb248
bb252:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb248
bb253:   # loop depth 0
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 45
  SLTIU t0, t0, 1
  BNE t0, zero, bb254
  JAL zero, bb245
bb254:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb245
bb255:   # loop depth 0
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  XORI t0, t0, 43
  SLTIU t0, t0, 1
  BNE t0, zero, bb256
  JAL zero, bb244
bb256:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb244
bb257:   # loop depth 0
  SH2ADD t0, t1, s1
  LW t0, 0(t0)
  XORI t0, t0, 46
  SLTIU t0, t0, 1
  BNE t0, zero, bb258
  JAL zero, bb241
bb258:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  BLT t0, s0, bb259
  JAL zero, bb241
bb259:   # loop depth 1
  LA t0, pos
  LW t0, 0(t0)
  SH2ADD t0, t0, s1
  LW t0, 0(t0)
  SLTI t1, t0, 48
  XORI t1, t1, 1
  BNE t1, zero, bb263
  # implict jump to bb260
bb260:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb261
bb261:   # loop depth 1
  XORI t0, t0, 1
  BNE t0, zero, bb241
  # implict jump to bb262
bb262:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  BLT t0, s0, bb259
  JAL zero, bb241
bb263:   # loop depth 1
  ADDI t1, zero, 57
  SLT t0, t1, t0
  XORI t0, t0, 1
  BNE t0, zero, bb265
  # implict jump to bb264
bb264:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb261
bb265:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb261
bb266:   # loop depth 1
  SH2ADD t0, t1, s1
  LW t0, 0(t0)
  SLTI t2, t0, 48
  XORI t2, t2, 1
  BNE t2, zero, bb270
  # implict jump to bb267
bb267:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb268
bb268:   # loop depth 1
  XORI t0, t0, 1
  BNE t0, zero, bb240
  # implict jump to bb269
bb269:   # loop depth 1
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb239
bb270:   # loop depth 1
  ADDI t2, zero, 57
  SLT t0, t2, t0
  XORI t0, t0, 1
  BNE t0, zero, bb272
  # implict jump to bb271
bb271:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb268
bb272:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb268
bb273:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb274:   # loop depth 0
  ADDI t1, zero, 57
  SLT t0, t1, t0
  XORI t0, t0, 1
  BNE t0, zero, bb276
  # implict jump to bb275
bb275:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb238
bb276:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb238
bb277:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb278:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb235
bb279:   # loop depth 0
  LA t0, pos
  LA t1, pos
  LW t0, 0(t0)
  ADDIW t0, t0, 1
  SW t0, 0(t1)
  JAL zero, bb235
bb280:   # loop depth 1
  SH2ADD a0, a2, s1
  LW a1, 0(a0)
  XORI a0, a1, 123
  SLTIU a0, a0, 1
  BNE a0, zero, bb304
  # implict jump to bb281
bb281:   # loop depth 1
  XORI a0, a1, 91
  SLTIU a0, a0, 1
  BNE a0, zero, bb303
  # implict jump to bb282
bb282:   # loop depth 1
  XORI a0, a1, 34
  SLTIU a0, a0, 1
  BNE a0, zero, bb302
  # implict jump to bb283
bb283:   # loop depth 1
  SLTI a0, a1, 48
  XORI a0, a0, 1
  BNE a0, zero, bb299
  # implict jump to bb284
bb284:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb285
bb285:   # loop depth 1
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb298
  # implict jump to bb286
bb286:   # loop depth 1
  XORI a0, a1, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb297
  # implict jump to bb287
bb287:   # loop depth 1
  XORI a0, a1, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb296
  # implict jump to bb288
bb288:   # loop depth 1
  XORI a0, a1, 116
  SLTIU a0, a0, 1
  BNE a0, zero, bb295
  # implict jump to bb289
bb289:   # loop depth 1
  XORI a0, a1, 102
  SLTIU a0, a0, 1
  BNE a0, zero, bb294
  # implict jump to bb290
bb290:   # loop depth 1
  XORI a0, a1, 110
  SLTIU a0, a0, 1
  BNE a0, zero, bb292
  # implict jump to bb291
bb291:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb292:   # loop depth 1
  ADDI a0, zero, 7
  # implict jump to bb293
bb293:   # loop depth 1
  JAL zero, bb1
bb294:   # loop depth 1
  ADDI a0, zero, 6
  JAL zero, bb293
bb295:   # loop depth 1
  ADDI a0, zero, 5
  JAL zero, bb293
bb296:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb293
bb297:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb293
bb298:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb293
bb299:   # loop depth 1
  ADDI a0, zero, 57
  SLT a0, a0, a1
  XORI a0, a0, 1
  BNE a0, zero, bb301
  # implict jump to bb300
bb300:   # loop depth 1
  ADD a0, zero, zero
  JAL zero, bb285
bb301:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb285
bb302:   # loop depth 1
  ADDI a0, zero, 2
  JAL zero, bb293
bb303:   # loop depth 1
  ADDI a0, zero, 3
  JAL zero, bb293
bb304:   # loop depth 1
  ADDI a0, zero, 4
  JAL zero, bb293
bb305:   # loop depth 2
  LA a1, pos
  LA a2, pos
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  SW a1, 0(a2)
  JAL zero, bb2
bb306:   # loop depth 2
  LA a1, pos
  LA a2, pos
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  SW a1, 0(a2)
  JAL zero, bb2
bb307:   # loop depth 2
  LA a1, pos
  LA a2, pos
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  SW a1, 0(a2)
  JAL zero, bb2
bb308:   # loop depth 2
  LA a1, pos
  LA a2, pos
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  SW a1, 0(a2)
  JAL zero, bb2
bb309:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s0, s2, 35
  BNE s0, zero, bb336
  # implict jump to bb311
bb311:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb312
bb312:   # loop depth 0
  # implict jump to bb313
bb313:   # loop depth 1
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb318
  # implict jump to bb314
bb314:   # loop depth 1
  LA a1, buffer
  SH2ADD a0, a0, a1
  LW a0, 0(a0)
  XORI a1, a0, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb335
  # implict jump to bb315
bb315:   # loop depth 1
  XORI a1, a0, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb334
  # implict jump to bb316
bb316:   # loop depth 1
  XORI a1, a0, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb333
  # implict jump to bb317
bb317:   # loop depth 1
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb331
  # implict jump to bb318
bb318:   # loop depth 0
  LA a1, buffer
  ADD a2, s0, zero
  ADD a0, zero, zero
  CALL detect_item
  # implict jump to bb319
bb319:   # loop depth 1
  LA s1, pos
  LW s1, 0(s1)
  SLT s2, s1, s0
  XORI s2, s2, 1
  BNE s2, zero, bb324
  # implict jump to bb320
bb320:   # loop depth 1
  LA s2, buffer
  SH2ADD s1, s1, s2
  LW s1, 0(s1)
  XORI s2, s1, 32
  SLTIU s2, s2, 1
  BNE s2, zero, bb330
  # implict jump to bb321
bb321:   # loop depth 1
  XORI s2, s1, 9
  SLTIU s2, s2, 1
  BNE s2, zero, bb329
  # implict jump to bb322
bb322:   # loop depth 1
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb328
  # implict jump to bb323
bb323:   # loop depth 1
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb327
  # implict jump to bb324
bb324:   # loop depth 0
  BNE a0, zero, bb326
  # implict jump to bb325
bb325:   # loop depth 0
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb326:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb327:   # loop depth 1
  LA s1, pos
  LA s2, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s2)
  JAL zero, bb319
bb328:   # loop depth 1
  LA s1, pos
  LA s2, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s2)
  JAL zero, bb319
bb329:   # loop depth 1
  LA s1, pos
  LA s2, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s2)
  JAL zero, bb319
bb330:   # loop depth 1
  LA s1, pos
  LA s2, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(s2)
  JAL zero, bb319
bb331:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  # implict jump to bb332
bb332:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb313
bb333:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb332
bb334:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb332
bb335:   # loop depth 1
  LA a0, pos
  LA a1, pos
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(a1)
  JAL zero, bb332
bb336:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb337
bb337:   # loop depth 1
  LA s3, buffer
  ADDIW s1, s0, 1
  SH2ADD s0, s0, s3
  SW s2, 0(s0)
  CALL getch
  ADD s2, a0, zero
  XORI s0, s2, 35
  BNE s0, zero, bb339
  # implict jump to bb338
bb338:   # loop depth 0
  ADD s0, s1, zero
  JAL zero, bb312
bb339:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb337
