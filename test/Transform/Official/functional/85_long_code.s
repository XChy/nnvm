.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s1, a0, zero
  ADD s0, a2, zero
  BLT a1, s0, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLLIW a0, a1, 2
  ADD a0, s1, a0
  LW a2, 0(a0)
  BLT a1, s0, bb5
  # implict jump to bb3
bb3:
  ADD a0, a1, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  SW a2, 0(a0)
  ADDI a0, zero, 1
  SUBW a2, s2, a0
  ADD a0, s1, zero
  CALL QuickSort
  ADDIW a1, s2, 1
  ADD a0, s1, zero
  ADD a2, s0, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD a0, a1, zero
  ADD s2, s0, zero
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  ADD s2, a0, zero
  ADD a0, s3, zero
  # implict jump to bb7
bb7:
  ADD s3, a0, zero
  BLT s2, s3, bb26
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  BNE a0, zero, bb25
  # implict jump to bb10
bb10:
  BLT s2, s3, bb24
  # implict jump to bb11
bb11:
  ADD a0, s2, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s2, a0, zero
  BLT s2, s3, bb23
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  BNE a0, zero, bb22
  # implict jump to bb16
bb16:
  BLT s2, s3, bb21
  # implict jump to bb17
bb17:
  ADD a0, s3, zero
  # implict jump to bb18
bb18:
  ADD s3, a0, zero
  BLT s2, s3, bb20
  # implict jump to bb19
bb19:
  ADD a0, s2, zero
  JAL zero, bb4
bb20:
  ADD a0, s2, zero
  ADD s2, s3, zero
  JAL zero, bb6
bb21:
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  SLLIW s4, s2, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb18
bb22:
  ADDIW a0, s2, 1
  JAL zero, bb13
bb23:
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SLT a0, a0, a2
  JAL zero, bb15
bb24:
  SLLIW a0, s2, 2
  ADD s4, s1, a0
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDIW a0, s2, 1
  JAL zero, bb12
bb25:
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb7
bb26:
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  LW s4, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLT a0, a0, s4
  JAL zero, bb9
main:
  LUI t0, 1048575
  ADDIW t0, t0, -240
  ADD sp, sp, t0
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
  LA s0, n
  ADDI a0, zero, 32
  SW a0, 0(s0)
  ADDI a0, zero, 7
  SW a0, 80(sp)
  ADDI a0, zero, 23
  SW a0, 84(sp)
  ADDI a0, zero, 89
  SW a0, 88(sp)
  ADDI a0, zero, 26
  SW a0, 92(sp)
  ADDI a0, zero, 282
  SW a0, 96(sp)
  ADDI a0, zero, 254
  SW a0, 100(sp)
  ADDI a0, zero, 27
  SW a0, 104(sp)
  ADDI a0, zero, 5
  SW a0, 108(sp)
  ADDI a0, zero, 83
  SW a0, 112(sp)
  ADDI a0, zero, 273
  SW a0, 116(sp)
  ADDI a0, zero, 574
  SW a0, 120(sp)
  ADDI a0, zero, 905
  SW a0, 124(sp)
  ADDI a0, zero, 354
  SW a0, 128(sp)
  ADDI a0, zero, 657
  SW a0, 132(sp)
  ADDI a0, zero, 935
  SW a0, 136(sp)
  ADDI a0, zero, 264
  SW a0, 140(sp)
  ADDI a0, zero, 639
  SW a0, 144(sp)
  ADDI a0, zero, 459
  SW a0, 148(sp)
  ADDI a0, zero, 29
  SW a0, 152(sp)
  ADDI a0, zero, 68
  SW a0, 156(sp)
  ADDI a0, zero, 929
  SW a0, 160(sp)
  ADDI a0, zero, 756
  SW a0, 164(sp)
  ADDI a0, zero, 452
  SW a0, 168(sp)
  ADDI a0, zero, 279
  SW a0, 172(sp)
  ADDI a0, zero, 58
  SW a0, 176(sp)
  ADDI a0, zero, 87
  SW a0, 180(sp)
  ADDI a0, zero, 96
  SW a0, 184(sp)
  ADDI a0, zero, 36
  SW a0, 188(sp)
  ADDI a0, zero, 39
  SW a0, 192(sp)
  ADDI a0, zero, 28
  SW a0, 196(sp)
  ADDI a0, zero, 1
  SW a0, 200(sp)
  ADDI a0, zero, 290
  SW a0, 204(sp)
  ADD a0, zero, zero
  # implict jump to bb28
bb28:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD s0, t5, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb151
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  # implict jump to bb30
bb30:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb150
  # implict jump to bb31
bb31:
  LA a0, n
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  BLT zero, a0, bb138
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  # implict jump to bb33
bb33:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW a0, s0, 1
  SLTI s0, a0, 32
  BNE s0, zero, bb137
  # implict jump to bb34
bb34:
  LA a0, n
  LW s0, 0(a0)
  ADDI a0, zero, 2
  REMW a0, s0, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb136
  # implict jump to bb35
bb35:
  LA a0, n
  LW s0, 0(a0)
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  SLLIW a0, a0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  # implict jump to bb36
bb36:
  CALL putint
  ADD a0, zero, zero
  # implict jump to bb37
bb37:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 336
  ADD a0, t5, a0
  SW zero, 0(a0)
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb135
  # implict jump to bb38
bb38:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb128
  # implict jump to bb39
bb39:
  ADD a0, zero, zero
  # implict jump to bb40
bb40:
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb124
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  ADD s3, a0, zero
  ADDI a0, zero, 1
  SUBW s4, s3, a0
  BLT zero, s4, bb112
  # implict jump to bb43
bb43:
  ADD a0, zero, zero
  # implict jump to bb44
bb44:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb111
  # implict jump to bb45
bb45:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb107
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  BLT a0, s0, bb98
  # implict jump to bb48
bb48:
  ADD a0, zero, zero
  # implict jump to bb49
bb49:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb97
  # implict jump to bb50
bb50:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb94
  # implict jump to bb51
bb51:
  ADDI a0, sp, 208
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD a0, zero, zero
  # implict jump to bb52
bb52:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb93
  # implict jump to bb53
bb53:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb89
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  ADD s2, a0, zero
  BLT zero, s2, bb83
  # implict jump to bb56
bb56:
  ADD a0, zero, zero
  # implict jump to bb57
bb57:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb82
  # implict jump to bb58
bb58:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb78
  # implict jump to bb59
bb59:
  # implict jump to bb60
bb60:
  ADD s2, a0, zero
  BLT zero, s2, bb69
  # implict jump to bb61
bb61:
  ADDIW a0, s2, -2
  BLT a0, s2, bb66
  # implict jump to bb62
bb62:
  ADD a0, zero, zero
  # implict jump to bb63
bb63:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 32
  BNE a0, zero, bb65
  # implict jump to bb64
bb64:
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
  LUI t0, 1
  ADDIW t0, t0, 240
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb65:
  ADD a0, s0, zero
  JAL zero, bb63
bb66:
  # implict jump to bb67
bb67:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  SW zero, 0(a0)
  ADDIW a0, s0, 1
  BLT a0, s2, bb68
  JAL zero, bb62
bb68:
  JAL zero, bb67
bb69:
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb70
bb70:
  ADD s4, a0, zero
  ADD s3, s0, zero
  SLTI a0, s3, 2
  BNE a0, zero, bb77
  # implict jump to bb71
bb71:
  XORI a0, s3, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb76
  # implict jump to bb72
bb72:
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s1, a0
  SUBW s4, a0, s4
  ADDIW a0, s3, -2
  SLLIW a0, a0, 2
  ADDI t5, sp, 208
  ADD s1, t5, a0
  LW s0, 0(s1)
  ADDI a0, zero, 3
  DIVW a0, s4, a0
  SW a0, 0(s1)
  ADD a0, s0, zero
  ADD s0, s4, zero
  # implict jump to bb73
bb73:
  ADD s1, s0, zero
  ADD s0, a0, zero
  ADD a0, s1, zero
  # implict jump to bb74
bb74:
  ADD s1, a0, zero
  ADD s4, s0, zero
  ADDIW a0, s3, 1
  BLT a0, s2, bb75
  JAL zero, bb61
bb75:
  ADD s0, a0, zero
  ADD a0, s4, zero
  JAL zero, bb70
bb76:
  LW s0, 208(sp)
  ADDI a0, zero, 3
  DIVW a0, s1, a0
  SW a0, 208(sp)
  ADD a0, s0, zero
  ADD s0, s1, zero
  JAL zero, bb73
bb77:
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s1, a0
  ADD s0, s4, zero
  JAL zero, bb74
bb78:
  ADD a0, zero, zero
  # implict jump to bb79
bb79:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD s0, t5, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb81
  # implict jump to bb80
bb80:
  JAL zero, bb60
bb81:
  ADD a0, s0, zero
  JAL zero, bb79
bb82:
  ADD a0, s0, zero
  JAL zero, bb57
bb83:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb84
bb84:
  ADD s3, s0, zero
  ADD s0, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD s1, t5, a0
  LW a0, 0(s1)
  ADDW s0, s0, a0
  ADDI a0, zero, 4
  REMW a0, s3, a0
  XORI a0, a0, 3
  BNE a0, zero, bb88
  # implict jump to bb85
bb85:
  SW s0, 0(s1)
  ADD a0, zero, zero
  # implict jump to bb86
bb86:
  ADDIW s0, s3, 1
  BLT s0, s2, bb87
  JAL zero, bb56
bb87:
  JAL zero, bb84
bb88:
  SW zero, 0(s1)
  ADD a0, s0, zero
  JAL zero, bb86
bb89:
  ADD a0, zero, zero
  # implict jump to bb90
bb90:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD s0, t5, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb92
  # implict jump to bb91
bb91:
  JAL zero, bb55
bb92:
  ADD a0, s0, zero
  JAL zero, bb90
bb93:
  ADD a0, s0, zero
  JAL zero, bb52
bb94:
  ADD a0, zero, zero
  # implict jump to bb95
bb95:
  ADD a2, a0, zero
  SLLIW a0, a2, 2
  ADDI a1, sp, 208
  ADD a1, a1, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW a1, a2, 1
  LA a0, n
  LW a0, 0(a0)
  BLT a1, a0, bb96
  JAL zero, bb51
bb96:
  ADD a0, a1, zero
  JAL zero, bb95
bb97:
  ADD a0, s0, zero
  JAL zero, bb49
bb98:
  ADDI a0, zero, 1
  # implict jump to bb99
bb99:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  # implict jump to bb100
bb100:
  ADD s3, a0, zero
  ADDI a0, zero, -1
  BLT a0, s3, bb106
  # implict jump to bb101
bb101:
  ADD a0, zero, zero
  # implict jump to bb102
bb102:
  BNE a0, zero, bb105
  # implict jump to bb103
bb103:
  ADDIW a0, s3, 1
  SLLIW a0, a0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  SW s1, 0(a0)
  ADDIW a0, s2, 1
  BLT a0, s0, bb104
  JAL zero, bb48
bb104:
  JAL zero, bb99
bb105:
  ADDIW a0, s3, 1
  SLLIW a0, a0, 2
  ADDI t5, sp, 208
  ADD s4, t5, a0
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb100
bb106:
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  SLT a0, s1, a0
  JAL zero, bb102
bb107:
  ADD a0, zero, zero
  # implict jump to bb108
bb108:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD s0, t5, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb110
  # implict jump to bb109
bb109:
  JAL zero, bb47
bb110:
  ADD a0, s0, zero
  JAL zero, bb108
bb111:
  ADD a0, s0, zero
  JAL zero, bb44
bb112:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb113
bb113:
  ADD s2, a0, zero
  SUBW a0, s3, s2
  ADDI s1, zero, 1
  SUBW s1, a0, s1
  BLT zero, s1, bb117
  # implict jump to bb114
bb114:
  ADD a0, s0, zero
  # implict jump to bb115
bb115:
  ADD s0, a0, zero
  ADDIW a0, s2, 1
  BLT a0, s4, bb116
  JAL zero, bb43
bb116:
  JAL zero, bb113
bb117:
  ADD a0, zero, zero
  # implict jump to bb118
bb118:
  ADD s8, s0, zero
  ADD s5, a0, zero
  SLLIW a0, s5, 2
  ADDI t5, sp, 208
  ADD s7, t5, a0
  LW s0, 0(s7)
  ADDIW s6, s5, 1
  SLLIW a0, s6, 2
  ADDI t5, sp, 208
  ADD s5, t5, a0
  LW a0, 0(s5)
  BLT a0, s0, bb123
  # implict jump to bb119
bb119:
  ADD a0, s8, zero
  # implict jump to bb120
bb120:
  ADD s0, a0, zero
  BLT s6, s1, bb122
  # implict jump to bb121
bb121:
  ADD a0, s0, zero
  JAL zero, bb115
bb122:
  ADD a0, s6, zero
  JAL zero, bb118
bb123:
  LW s0, 0(s5)
  LW a0, 0(s7)
  SW a0, 0(s5)
  SW s0, 0(s7)
  ADD a0, s0, zero
  JAL zero, bb120
bb124:
  ADD a0, zero, zero
  # implict jump to bb125
bb125:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD s0, t5, a0
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb127
  # implict jump to bb126
bb126:
  JAL zero, bb42
bb127:
  ADD a0, s0, zero
  JAL zero, bb125
bb128:
  ADD a0, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb129
bb129:
  ADD s4, s0, zero
  ADD s5, s1, zero
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW s2, 0(a0)
  SLLIW a0, s2, 2
  ADDI t5, sp, 336
  ADD s1, t5, a0
  LW a0, 0(s1)
  ADDIW s0, a0, 1
  SW s0, 0(s1)
  BLT s5, s0, bb134
  # implict jump to bb130
bb130:
  ADD a0, s4, zero
  ADD s0, s5, zero
  # implict jump to bb131
bb131:
  ADD s1, s0, zero
  ADD s2, a0, zero
  ADDIW s0, s3, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb133
  # implict jump to bb132
bb132:
  ADD a0, s2, zero
  JAL zero, bb40
bb133:
  ADD a0, s0, zero
  ADD s0, s2, zero
  JAL zero, bb129
bb134:
  ADD a0, s2, zero
  JAL zero, bb131
bb135:
  ADD a0, s0, zero
  JAL zero, bb37
bb136:
  LA a0, n
  LW s0, 0(a0)
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s1, a0, 1
  SLLIW a0, s1, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 208
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  JAL zero, bb36
bb137:
  JAL zero, bb33
bb138:
  LA a0, n
  LW s1, 0(a0)
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb139
bb139:
  ADD s3, s0, zero
  ADD s2, a0, zero
  SUBW s0, s1, s2
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  BLT zero, a0, bb143
  # implict jump to bb140
bb140:
  ADD a0, s3, zero
  # implict jump to bb141
bb141:
  ADD s3, a0, zero
  ADDIW s2, s2, 1
  LA a0, n
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  BLT s2, a0, bb142
  JAL zero, bb32
bb142:
  ADD a0, s2, zero
  ADD s0, s3, zero
  JAL zero, bb139
bb143:
  ADD a0, zero, zero
  ADD s0, s3, zero
  # implict jump to bb144
bb144:
  ADD s6, s0, zero
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD s5, t5, a0
  LW s0, 0(s5)
  ADDIW s3, s3, 1
  SLLIW a0, s3, 2
  ADDI t5, sp, 208
  ADD s4, t5, a0
  LW a0, 0(s4)
  BLT a0, s0, bb149
  # implict jump to bb145
bb145:
  ADD a0, s6, zero
  # implict jump to bb146
bb146:
  ADD s0, a0, zero
  LA a0, n
  LW a0, 0(a0)
  SUBW a0, a0, s2
  ADDI s4, zero, 1
  SUBW a0, a0, s4
  BLT s3, a0, bb148
  # implict jump to bb147
bb147:
  ADD a0, s0, zero
  JAL zero, bb141
bb148:
  ADD a0, s3, zero
  JAL zero, bb144
bb149:
  LW s0, 0(s4)
  LW a0, 0(s5)
  SW a0, 0(s4)
  SW s0, 0(s5)
  ADD a0, s0, zero
  JAL zero, bb146
bb150:
  ADD a0, s0, zero
  JAL zero, bb30
bb151:
  ADD a0, s0, zero
  JAL zero, bb28
