.global detect_item
.global main
.section .bss
buffer:
.space 200000000

.section .data

pos:
.word 0x00000000
.section .text
detect_item:
  ADDI sp, sp, -96
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  ADD s1, a0, zero
  ADD s0, a1, zero
  ADD a0, a2, zero
  ADD a1, a0, zero
  ADD a0, s1, zero
  # implict jump to bb1
bb1:
  ADD a2, a0, zero
  ADD s1, s0, zero
  ADD s0, a1, zero
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb308
  # implict jump to bb2
bb2:
  LA a0, pos
  LW a0, 0(a0)
  SLT a1, a0, s0
  XORI a1, a1, 1
  BNE a1, zero, bb7
  # implict jump to bb3
bb3:
  SLLIW a1, a0, 2
  ADD s2, s1, a1
  LW a1, 0(s2)
  XORI a1, a1, 32
  SLTIU a1, a1, 1
  BNE a1, zero, bb307
  # implict jump to bb4
bb4:
  LW a1, 0(s2)
  XORI a1, a1, 9
  SLTIU a1, a1, 1
  BNE a1, zero, bb306
  # implict jump to bb5
bb5:
  LW a1, 0(s2)
  XORI a1, a1, 10
  SLTIU a1, a1, 1
  BNE a1, zero, bb305
  # implict jump to bb6
bb6:
  LW a1, 0(s2)
  XORI a1, a1, 13
  SLTIU a1, a1, 1
  BNE a1, zero, bb304
  # implict jump to bb7
bb7:
  SLTIU a1, a2, 1
  BNE a1, zero, bb280
  # implict jump to bb8
bb8:
  XORI a1, a2, 1
  SLTIU a1, a1, 1
  BNE a1, zero, bb233
  # implict jump to bb9
bb9:
  XORI a1, a2, 2
  SLTIU a1, a1, 1
  BNE a1, zero, bb222
  # implict jump to bb10
bb10:
  XORI a1, a2, 3
  SLTIU a1, a1, 1
  BNE a1, zero, bb162
  # implict jump to bb11
bb11:
  XORI a1, a2, 4
  SLTIU a1, a1, 1
  BNE a1, zero, bb52
  # implict jump to bb12
bb12:
  XORI t0, a2, 5
  SLTIU t0, t0, 1
  BNE t0, zero, bb41
  # implict jump to bb13
bb13:
  XORI t0, a2, 6
  SLTIU t0, t0, 1
  BNE t0, zero, bb28
  # implict jump to bb14
bb14:
  XORI t0, a2, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  ADDI t0, zero, 110
  SW t0, 0(sp)
  ADDI t0, zero, 117
  SW t0, 4(sp)
  ADDI t0, zero, 108
  SW t0, 8(sp)
  ADDI t0, zero, 108
  SW t0, 12(sp)
  ADDIW t1, a0, 3
  SLT t0, t1, s0
  XORI t0, t0, 1
  BNE t0, zero, bb27
  # implict jump to bb17
bb17:
  SLLIW t0, a0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 110
  BNE t0, zero, bb26
  # implict jump to bb18
bb18:
  ADDIW t0, a0, 1
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 117
  BNE t0, zero, bb25
  # implict jump to bb19
bb19:
  ADDIW t0, a0, 2
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 108
  BNE t0, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 108
  BNE t0, zero, bb23
  # implict jump to bb21
bb21:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 4
  LA t0, pos
  SW t1, 0(t0)
  # implict jump to bb22
bb22:
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb23:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb25:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb26:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb27:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb28:
  ADDI t0, zero, 102
  SW t0, 16(sp)
  ADDI t0, zero, 97
  SW t0, 20(sp)
  ADDI t0, zero, 108
  SW t0, 24(sp)
  ADDI t0, zero, 115
  SW t0, 28(sp)
  ADDI t0, zero, 101
  SW t0, 32(sp)
  ADDIW t1, a0, 4
  SLT t0, t1, s0
  XORI t0, t0, 1
  BNE t0, zero, bb40
  # implict jump to bb29
bb29:
  SLLIW t0, a0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 102
  BNE t0, zero, bb39
  # implict jump to bb30
bb30:
  ADDIW t0, a0, 1
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 97
  BNE t0, zero, bb38
  # implict jump to bb31
bb31:
  ADDIW t0, a0, 2
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 108
  BNE t0, zero, bb37
  # implict jump to bb32
bb32:
  ADDIW t0, a0, 3
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 115
  BNE t0, zero, bb36
  # implict jump to bb33
bb33:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 101
  BNE t0, zero, bb35
  # implict jump to bb34
bb34:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 5
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb22
bb35:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb36:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb37:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb38:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb39:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb41:
  ADDI t0, zero, 116
  SW t0, 40(sp)
  ADDI t0, zero, 114
  SW t0, 44(sp)
  ADDI t0, zero, 117
  SW t0, 48(sp)
  ADDI t0, zero, 101
  SW t0, 52(sp)
  ADDIW t1, a0, 3
  SLT t0, t1, s0
  XORI t0, t0, 1
  BNE t0, zero, bb51
  # implict jump to bb42
bb42:
  SLLIW t0, a0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 116
  BNE t0, zero, bb50
  # implict jump to bb43
bb43:
  ADDIW t0, a0, 1
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 114
  BNE t0, zero, bb49
  # implict jump to bb44
bb44:
  ADDIW t0, a0, 2
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 117
  BNE t0, zero, bb48
  # implict jump to bb45
bb45:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 101
  BNE t0, zero, bb47
  # implict jump to bb46
bb46:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 4
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb22
bb47:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb48:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb49:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb50:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb51:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb52:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb53
bb53:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb58
  # implict jump to bb54
bb54:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb161
  # implict jump to bb55
bb55:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb160
  # implict jump to bb56
bb56:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb159
  # implict jump to bb57
bb57:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb158
  # implict jump to bb58
bb58:
  LA a0, pos
  LW a0, 0(a0)
  BLT a0, s0, bb156
  # implict jump to bb59
bb59:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb155
  # implict jump to bb60
bb60:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a2, a0, 1
  BNE a2, zero, bb65
  # implict jump to bb61
bb61:
  SLLIW a0, a1, 2
  ADD s2, s1, a0
  LW a0, 0(s2)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb154
  # implict jump to bb62
bb62:
  LW a0, 0(s2)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb153
  # implict jump to bb63
bb63:
  LW a0, 0(s2)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb152
  # implict jump to bb64
bb64:
  LW a0, 0(s2)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb151
  # implict jump to bb65
bb65:
  BNE a2, zero, bb150
  # implict jump to bb66
bb66:
  SLLIW a0, a1, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 58
  BNE a0, zero, bb149
  # implict jump to bb67
bb67:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb68
bb68:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb73
  # implict jump to bb69
bb69:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb148
  # implict jump to bb70
bb70:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb147
  # implict jump to bb71
bb71:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb146
  # implict jump to bb72
bb72:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb145
  # implict jump to bb73
bb73:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb144
  # implict jump to bb74
bb74:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb79
  # implict jump to bb75
bb75:
  SLLIW a0, a1, 2
  ADD a1, s1, a0
  LW a0, 0(a1)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb143
  # implict jump to bb76
bb76:
  LW a0, 0(a1)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb142
  # implict jump to bb77
bb77:
  LW a0, 0(a1)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb141
  # implict jump to bb78
bb78:
  LW a0, 0(a1)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb140
  # implict jump to bb79
bb79:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 44
  SLTIU a0, a0, 1
  BNE a0, zero, bb94
  # implict jump to bb80
bb80:
  LA t0, pos
  LW a0, 0(t0)
  SLT t0, a0, s0
  XORI t2, t0, 1
  BNE t2, zero, bb85
  # implict jump to bb81
bb81:
  SLLIW t0, a0, 2
  ADD t1, s1, t0
  LW t0, 0(t1)
  XORI t0, t0, 32
  SLTIU t0, t0, 1
  BNE t0, zero, bb93
  # implict jump to bb82
bb82:
  LW t0, 0(t1)
  XORI t0, t0, 9
  SLTIU t0, t0, 1
  BNE t0, zero, bb92
  # implict jump to bb83
bb83:
  LW t0, 0(t1)
  XORI t0, t0, 10
  SLTIU t0, t0, 1
  BNE t0, zero, bb91
  # implict jump to bb84
bb84:
  LW t0, 0(t1)
  XORI t0, t0, 13
  SLTIU t0, t0, 1
  BNE t0, zero, bb90
  # implict jump to bb85
bb85:
  BNE t2, zero, bb89
  # implict jump to bb86
bb86:
  SLLIW t0, a0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 125
  BNE t0, zero, bb88
  # implict jump to bb87
bb87:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb22
bb88:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb89:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb90:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb80
bb91:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb80
bb92:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb80
bb93:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb80
bb94:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb95
bb95:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb100
  # implict jump to bb96
bb96:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb139
  # implict jump to bb97
bb97:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb138
  # implict jump to bb98
bb98:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb137
  # implict jump to bb99
bb99:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb136
  # implict jump to bb100
bb100:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb135
  # implict jump to bb101
bb101:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a2, a0, 1
  BNE a2, zero, bb106
  # implict jump to bb102
bb102:
  SLLIW a0, a1, 2
  ADD s2, s1, a0
  LW a0, 0(s2)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb134
  # implict jump to bb103
bb103:
  LW a0, 0(s2)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb133
  # implict jump to bb104
bb104:
  LW a0, 0(s2)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb132
  # implict jump to bb105
bb105:
  LW a0, 0(s2)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb131
  # implict jump to bb106
bb106:
  BNE a2, zero, bb130
  # implict jump to bb107
bb107:
  SLLIW a0, a1, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 58
  BNE a0, zero, bb129
  # implict jump to bb108
bb108:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb109
bb109:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb114
  # implict jump to bb110
bb110:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb128
  # implict jump to bb111
bb111:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb127
  # implict jump to bb112
bb112:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb126
  # implict jump to bb113
bb113:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb125
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb124
  # implict jump to bb115
bb115:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb79
  # implict jump to bb116
bb116:
  SLLIW a0, a1, 2
  ADD a1, s1, a0
  LW a0, 0(a1)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb123
  # implict jump to bb117
bb117:
  LW a0, 0(a1)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb122
  # implict jump to bb118
bb118:
  LW a0, 0(a1)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb121
  # implict jump to bb119
bb119:
  LW a0, 0(a1)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb120
  JAL zero, bb79
bb120:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb115
bb121:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb115
bb122:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb115
bb123:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb115
bb124:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb125:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb109
bb126:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb109
bb127:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb109
bb128:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb109
bb129:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb130:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb131:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb101
bb132:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb101
bb133:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb101
bb134:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb101
bb135:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb136:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb95
bb137:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb95
bb138:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb95
bb139:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb95
bb140:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb74
bb141:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb74
bb142:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb74
bb143:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb74
bb144:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb145:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb68
bb146:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb68
bb147:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb68
bb148:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb68
bb149:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb150:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb151:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb60
bb152:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb60
bb153:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb60
bb154:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb60
bb155:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb156:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 125
  SLTIU a0, a0, 1
  BNE a0, zero, bb157
  JAL zero, bb59
bb157:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb158:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb53
bb159:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb53
bb160:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb53
bb161:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb53
bb162:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb163
bb163:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb168
  # implict jump to bb164
bb164:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb221
  # implict jump to bb165
bb165:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb220
  # implict jump to bb166
bb166:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb219
  # implict jump to bb167
bb167:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb218
  # implict jump to bb168
bb168:
  LA a0, pos
  LW a0, 0(a0)
  BLT a0, s0, bb216
  # implict jump to bb169
bb169:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb215
  # implict jump to bb170
bb170:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb175
  # implict jump to bb171
bb171:
  SLLIW a0, a1, 2
  ADD a1, s1, a0
  LW a0, 0(a1)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb214
  # implict jump to bb172
bb172:
  LW a0, 0(a1)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb213
  # implict jump to bb173
bb173:
  LW a0, 0(a1)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb212
  # implict jump to bb174
bb174:
  LW a0, 0(a1)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb211
  # implict jump to bb175
bb175:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 44
  SLTIU a0, a0, 1
  BNE a0, zero, bb190
  # implict jump to bb176
bb176:
  LA t0, pos
  LW a0, 0(t0)
  SLT t0, a0, s0
  XORI t2, t0, 1
  BNE t2, zero, bb181
  # implict jump to bb177
bb177:
  SLLIW t0, a0, 2
  ADD t1, s1, t0
  LW t0, 0(t1)
  XORI t0, t0, 32
  SLTIU t0, t0, 1
  BNE t0, zero, bb189
  # implict jump to bb178
bb178:
  LW t0, 0(t1)
  XORI t0, t0, 9
  SLTIU t0, t0, 1
  BNE t0, zero, bb188
  # implict jump to bb179
bb179:
  LW t0, 0(t1)
  XORI t0, t0, 10
  SLTIU t0, t0, 1
  BNE t0, zero, bb187
  # implict jump to bb180
bb180:
  LW t0, 0(t1)
  XORI t0, t0, 13
  SLTIU t0, t0, 1
  BNE t0, zero, bb186
  # implict jump to bb181
bb181:
  BNE t2, zero, bb185
  # implict jump to bb182
bb182:
  SLLIW t0, a0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 93
  BNE t0, zero, bb184
  # implict jump to bb183
bb183:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb22
bb184:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb185:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb186:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb176
bb187:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb176
bb188:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb176
bb189:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb176
bb190:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  # implict jump to bb191
bb191:
  LA a0, pos
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb196
  # implict jump to bb192
bb192:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb210
  # implict jump to bb193
bb193:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb209
  # implict jump to bb194
bb194:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb208
  # implict jump to bb195
bb195:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb207
  # implict jump to bb196
bb196:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL detect_item
  SLTIU a0, a0, 1
  BNE a0, zero, bb206
  # implict jump to bb197
bb197:
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb175
  # implict jump to bb198
bb198:
  SLLIW a0, a1, 2
  ADD a1, s1, a0
  LW a0, 0(a1)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb205
  # implict jump to bb199
bb199:
  LW a0, 0(a1)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb204
  # implict jump to bb200
bb200:
  LW a0, 0(a1)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb203
  # implict jump to bb201
bb201:
  LW a0, 0(a1)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb202
  JAL zero, bb175
bb202:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb197
bb203:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb197
bb204:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb197
bb205:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb197
bb206:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb207:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb191
bb208:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb191
bb209:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb191
bb210:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb191
bb211:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb170
bb212:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb170
bb213:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb170
bb214:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb170
bb215:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb216:
  LA a0, pos
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 93
  SLTIU a0, a0, 1
  BNE a0, zero, bb217
  JAL zero, bb169
bb217:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  ADDI a0, zero, 1
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb218:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb163
bb219:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb163
bb220:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb163
bb221:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb163
bb222:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  # implict jump to bb223
bb223:
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb229
  # implict jump to bb224
bb224:
  LA t0, pos
  LW t0, 0(t0)
  SLT t0, t0, s0
  XORI t0, t0, 1
  BNE t0, zero, bb228
  # implict jump to bb225
bb225:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 34
  BNE t0, zero, bb227
  # implict jump to bb226
bb226:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb22
bb227:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb228:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb229:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 34
  SLTIU t0, t0, 1
  BNE t0, zero, bb224
  # implict jump to bb230
bb230:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 92
  SLTIU t0, t0, 1
  BNE t0, zero, bb232
  # implict jump to bb231
bb231:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb223
bb232:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 2
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb223
bb233:
  SLLIW t0, a0, 2
  ADD t1, s1, t0
  LW t0, 0(t1)
  XORI t0, t0, 43
  SLTIU t0, t0, 1
  BNE t0, zero, bb279
  # implict jump to bb234
bb234:
  LW t0, 0(t1)
  XORI t0, t0, 45
  SLTIU t0, t0, 1
  BNE t0, zero, bb278
  # implict jump to bb235
bb235:
  LA t0, pos
  LW t1, 0(t0)
  SLT t0, t1, s0
  XORI t0, t0, 1
  BNE t0, zero, bb277
  # implict jump to bb236
bb236:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t1, 0(t0)
  SLTI t0, t1, 48
  XORI t0, t0, 1
  BNE t0, zero, bb274
  # implict jump to bb237
bb237:
  ADD t0, zero, zero
  # implict jump to bb238
bb238:
  SLTIU t0, t0, 1
  BNE t0, zero, bb273
  # implict jump to bb239
bb239:
  LA t0, pos
  LW t1, 0(t0)
  BLT t1, s0, bb266
  # implict jump to bb240
bb240:
  BLT t1, s0, bb257
  # implict jump to bb241
bb241:
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb242
  JAL zero, bb22
bb242:
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 101
  SLTIU t0, t0, 1
  BNE t0, zero, bb243
  JAL zero, bb22
bb243:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  BLT t1, s0, bb255
  # implict jump to bb244
bb244:
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb253
  # implict jump to bb245
bb245:
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb246
  JAL zero, bb22
bb246:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t1, 0(t0)
  SLTI t0, t1, 48
  XORI t0, t0, 1
  BNE t0, zero, bb250
  # implict jump to bb247
bb247:
  ADD t0, zero, zero
  # implict jump to bb248
bb248:
  XORI t0, t0, 1
  BNE t0, zero, bb22
  # implict jump to bb249
bb249:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb245
bb250:
  ADDI t0, zero, 57
  SLT t0, t0, t1
  XORI t0, t0, 1
  BNE t0, zero, bb252
  # implict jump to bb251
bb251:
  ADD t0, zero, zero
  JAL zero, bb248
bb252:
  ADDI t0, zero, 1
  JAL zero, bb248
bb253:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 45
  SLTIU t0, t0, 1
  BNE t0, zero, bb254
  JAL zero, bb245
bb254:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb245
bb255:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 43
  SLTIU t0, t0, 1
  BNE t0, zero, bb256
  JAL zero, bb244
bb256:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb244
bb257:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t0, 0(t0)
  XORI t0, t0, 46
  SLTIU t0, t0, 1
  BNE t0, zero, bb258
  JAL zero, bb241
bb258:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb259
  JAL zero, bb241
bb259:
  LA t0, pos
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, s1, t0
  LW t1, 0(t0)
  SLTI t0, t1, 48
  XORI t0, t0, 1
  BNE t0, zero, bb263
  # implict jump to bb260
bb260:
  ADD t0, zero, zero
  # implict jump to bb261
bb261:
  XORI t0, t0, 1
  BNE t0, zero, bb241
  # implict jump to bb262
bb262:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  LA t0, pos
  LW t0, 0(t0)
  BLT t0, s0, bb259
  JAL zero, bb241
bb263:
  ADDI t0, zero, 57
  SLT t0, t0, t1
  XORI t0, t0, 1
  BNE t0, zero, bb265
  # implict jump to bb264
bb264:
  ADD t0, zero, zero
  JAL zero, bb261
bb265:
  ADDI t0, zero, 1
  JAL zero, bb261
bb266:
  SLLIW t0, t1, 2
  ADD t0, s1, t0
  LW t2, 0(t0)
  SLTI t0, t2, 48
  XORI t0, t0, 1
  BNE t0, zero, bb270
  # implict jump to bb267
bb267:
  ADD t0, zero, zero
  # implict jump to bb268
bb268:
  XORI t0, t0, 1
  BNE t0, zero, bb240
  # implict jump to bb269
bb269:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb239
bb270:
  ADDI t0, zero, 57
  SLT t0, t0, t2
  XORI t0, t0, 1
  BNE t0, zero, bb272
  # implict jump to bb271
bb271:
  ADD t0, zero, zero
  JAL zero, bb268
bb272:
  ADDI t0, zero, 1
  JAL zero, bb268
bb273:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb274:
  ADDI t0, zero, 57
  SLT t0, t0, t1
  XORI t0, t0, 1
  BNE t0, zero, bb276
  # implict jump to bb275
bb275:
  ADD t0, zero, zero
  JAL zero, bb238
bb276:
  ADDI t0, zero, 1
  JAL zero, bb238
bb277:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb278:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb235
bb279:
  LA t0, pos
  LW t0, 0(t0)
  ADDIW t1, t0, 1
  LA t0, pos
  SW t1, 0(t0)
  JAL zero, bb235
bb280:
  SLLIW a0, a0, 2
  ADD a1, s1, a0
  LW a0, 0(a1)
  XORI a0, a0, 123
  SLTIU a0, a0, 1
  BNE a0, zero, bb303
  # implict jump to bb281
bb281:
  LW a0, 0(a1)
  XORI a0, a0, 91
  SLTIU a0, a0, 1
  BNE a0, zero, bb302
  # implict jump to bb282
bb282:
  LW a0, 0(a1)
  XORI a0, a0, 34
  SLTIU a0, a0, 1
  BNE a0, zero, bb301
  # implict jump to bb283
bb283:
  LW a2, 0(a1)
  SLTI a0, a2, 48
  XORI a0, a0, 1
  BNE a0, zero, bb298
  # implict jump to bb284
bb284:
  ADD a0, zero, zero
  # implict jump to bb285
bb285:
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb297
  # implict jump to bb286
bb286:
  LW a0, 0(a1)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb296
  # implict jump to bb287
bb287:
  LW a0, 0(a1)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb295
  # implict jump to bb288
bb288:
  LW a0, 0(a1)
  XORI a0, a0, 116
  SLTIU a0, a0, 1
  BNE a0, zero, bb294
  # implict jump to bb289
bb289:
  LW a0, 0(a1)
  XORI a0, a0, 102
  SLTIU a0, a0, 1
  BNE a0, zero, bb293
  # implict jump to bb290
bb290:
  LW a0, 0(a1)
  XORI a0, a0, 110
  SLTIU a0, a0, 1
  BNE a0, zero, bb292
  # implict jump to bb291
bb291:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb292:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 7
  JAL zero, bb1
bb293:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 6
  JAL zero, bb1
bb294:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 5
  JAL zero, bb1
bb295:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 1
  JAL zero, bb1
bb296:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 1
  JAL zero, bb1
bb297:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 1
  JAL zero, bb1
bb298:
  ADDI a0, zero, 57
  SLT a0, a0, a2
  XORI a0, a0, 1
  BNE a0, zero, bb300
  # implict jump to bb299
bb299:
  ADD a0, zero, zero
  JAL zero, bb285
bb300:
  ADDI a0, zero, 1
  JAL zero, bb285
bb301:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 2
  JAL zero, bb1
bb302:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 3
  JAL zero, bb1
bb303:
  ADD a1, s0, zero
  ADD s0, s1, zero
  ADDI a0, zero, 4
  JAL zero, bb1
bb304:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb2
bb305:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb2
bb306:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb2
bb307:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  JAL zero, bb2
bb308:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s0, s2, 35
  BNE s0, zero, bb334
  # implict jump to bb310
bb310:
  ADD a0, zero, zero
  # implict jump to bb311
bb311:
  # implict jump to bb312
bb312:
  ADD s0, a0, zero
  LA a0, pos
  LW a1, 0(a0)
  SLT a0, a1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb317
  # implict jump to bb313
bb313:
  SLLIW a1, a1, 2
  LA a0, buffer
  ADD a1, a0, a1
  LW a0, 0(a1)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb333
  # implict jump to bb314
bb314:
  LW a0, 0(a1)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb332
  # implict jump to bb315
bb315:
  LW a0, 0(a1)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb331
  # implict jump to bb316
bb316:
  LW a0, 0(a1)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb330
  # implict jump to bb317
bb317:
  ADD a0, zero, zero
  LA a1, buffer
  ADD a2, s0, zero
  CALL detect_item
  ADD s1, a0, zero
  # implict jump to bb318
bb318:
  LA a0, pos
  LW s2, 0(a0)
  SLT a0, s2, s0
  XORI a0, a0, 1
  BNE a0, zero, bb323
  # implict jump to bb319
bb319:
  SLLIW s2, s2, 2
  LA a0, buffer
  ADD s2, a0, s2
  LW a0, 0(s2)
  XORI a0, a0, 32
  SLTIU a0, a0, 1
  BNE a0, zero, bb329
  # implict jump to bb320
bb320:
  LW a0, 0(s2)
  XORI a0, a0, 9
  SLTIU a0, a0, 1
  BNE a0, zero, bb328
  # implict jump to bb321
bb321:
  LW a0, 0(s2)
  XORI a0, a0, 10
  SLTIU a0, a0, 1
  BNE a0, zero, bb327
  # implict jump to bb322
bb322:
  LW a0, 0(s2)
  XORI a0, a0, 13
  SLTIU a0, a0, 1
  BNE a0, zero, bb326
  # implict jump to bb323
bb323:
  BNE s1, zero, bb325
  # implict jump to bb324
bb324:
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
bb325:
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
bb326:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, pos
  SW s2, 0(a0)
  JAL zero, bb318
bb327:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, pos
  SW s2, 0(a0)
  JAL zero, bb318
bb328:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, pos
  SW s2, 0(a0)
  JAL zero, bb318
bb329:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, pos
  SW s2, 0(a0)
  JAL zero, bb318
bb330:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  ADD a0, s1, zero
  JAL zero, bb312
bb331:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  ADD a0, s1, zero
  JAL zero, bb312
bb332:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  ADD a0, s1, zero
  JAL zero, bb312
bb333:
  LA a0, pos
  LW a0, 0(a0)
  ADDIW a1, a0, 1
  LA a0, pos
  SW a1, 0(a0)
  ADD a0, s1, zero
  JAL zero, bb312
bb334:
  ADD s0, s2, zero
  ADD s1, zero, zero
  # implict jump to bb335
bb335:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLLIW s1, s2, 2
  LA s0, buffer
  ADD s0, s0, s1
  SW s3, 0(s0)
  ADDIW s1, s2, 1
  CALL getch
  ADD s2, a0, zero
  XORI s0, s2, 35
  BNE s0, zero, bb337
  # implict jump to bb336
bb336:
  ADD a0, s1, zero
  JAL zero, bb311
bb337:
  ADD s0, s2, zero
  JAL zero, bb335
