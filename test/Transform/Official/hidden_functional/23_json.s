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
  ADDI sp, sp, -144
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  # implict jump to bb1
bb1:
  ADD s3, s0, zero
  ADD s4, s1, zero
  ADD s5, s2, zero
  LA s6, pos
  LW s6, 0(s6)
  SLT s6, s6, s5
  XORI s6, s6, 1
  BNE s6, zero, bb308
  # implict jump to bb2
bb2:
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb7
  # implict jump to bb3
bb3:
  SLLIW s7, s6, 2
  ADD s7, s4, s7
  LW s8, 0(s7)
  XORI s8, s8, 32
  SLTIU s8, s8, 1
  BNE s8, zero, bb307
  # implict jump to bb4
bb4:
  LW s8, 0(s7)
  XORI s8, s8, 9
  SLTIU s8, s8, 1
  BNE s8, zero, bb306
  # implict jump to bb5
bb5:
  LW s8, 0(s7)
  XORI s8, s8, 10
  SLTIU s8, s8, 1
  BNE s8, zero, bb305
  # implict jump to bb6
bb6:
  LW s7, 0(s7)
  XORI s7, s7, 13
  SLTIU s7, s7, 1
  BNE s7, zero, bb304
  # implict jump to bb7
bb7:
  SLTIU s7, s3, 1
  BNE s7, zero, bb280
  # implict jump to bb8
bb8:
  XORI s7, s3, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb233
  # implict jump to bb9
bb9:
  XORI s7, s3, 2
  SLTIU s7, s7, 1
  BNE s7, zero, bb222
  # implict jump to bb10
bb10:
  XORI s7, s3, 3
  SLTIU s7, s7, 1
  BNE s7, zero, bb162
  # implict jump to bb11
bb11:
  XORI s7, s3, 4
  SLTIU s7, s7, 1
  BNE s7, zero, bb52
  # implict jump to bb12
bb12:
  XORI s7, s3, 5
  SLTIU s7, s7, 1
  BNE s7, zero, bb41
  # implict jump to bb13
bb13:
  XORI s7, s3, 6
  SLTIU s7, s7, 1
  BNE s7, zero, bb28
  # implict jump to bb14
bb14:
  XORI s3, s3, 7
  SLTIU s3, s3, 1
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb16:
  ADDI s3, zero, 110
  SW s3, 128(sp)
  ADDI s3, zero, 117
  SW s3, 132(sp)
  ADDI s3, zero, 108
  SW s3, 136(sp)
  ADDI s3, zero, 108
  SW s3, 140(sp)
  ADDIW s3, s6, 3
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb17
bb17:
  SLLIW s7, s6, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 110
  BNE s7, zero, bb26
  # implict jump to bb18
bb18:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 117
  BNE s7, zero, bb25
  # implict jump to bb19
bb19:
  ADDIW s7, s6, 2
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 108
  BNE s7, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 108
  BNE s3, zero, bb23
  # implict jump to bb21
bb21:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 4
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb22
bb22:
  ADDI a0, zero, 1
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb23:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb24:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb25:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb26:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb27:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb28:
  ADDI s3, zero, 102
  SW s3, 104(sp)
  ADDI s3, zero, 97
  SW s3, 108(sp)
  ADDI s3, zero, 108
  SW s3, 112(sp)
  ADDI s3, zero, 115
  SW s3, 116(sp)
  ADDI s3, zero, 101
  SW s3, 120(sp)
  ADDIW s3, s6, 4
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb40
  # implict jump to bb29
bb29:
  SLLIW s7, s6, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 102
  BNE s7, zero, bb39
  # implict jump to bb30
bb30:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 97
  BNE s7, zero, bb38
  # implict jump to bb31
bb31:
  ADDIW s7, s6, 2
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 108
  BNE s7, zero, bb37
  # implict jump to bb32
bb32:
  ADDIW s7, s6, 3
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 115
  BNE s7, zero, bb36
  # implict jump to bb33
bb33:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 101
  BNE s3, zero, bb35
  # implict jump to bb34
bb34:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 5
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb22
bb35:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb36:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb37:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb38:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb39:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb40:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb41:
  ADDI s3, zero, 116
  SW s3, 88(sp)
  ADDI s3, zero, 114
  SW s3, 92(sp)
  ADDI s3, zero, 117
  SW s3, 96(sp)
  ADDI s3, zero, 101
  SW s3, 100(sp)
  ADDIW s3, s6, 3
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb51
  # implict jump to bb42
bb42:
  SLLIW s7, s6, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 116
  BNE s7, zero, bb50
  # implict jump to bb43
bb43:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 114
  BNE s7, zero, bb49
  # implict jump to bb44
bb44:
  ADDIW s7, s6, 2
  SLLIW s7, s7, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  XORI s7, s7, 117
  BNE s7, zero, bb48
  # implict jump to bb45
bb45:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 101
  BNE s3, zero, bb47
  # implict jump to bb46
bb46:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 4
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb22
bb47:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb48:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb49:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb50:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb51:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb52:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb53
bb53:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb58
  # implict jump to bb54
bb54:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb161
  # implict jump to bb55
bb55:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb160
  # implict jump to bb56
bb56:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb159
  # implict jump to bb57
bb57:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb158
  # implict jump to bb58
bb58:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb156
  # implict jump to bb59
bb59:
  ADDI a0, zero, 2
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb155
  # implict jump to bb60
bb60:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb65
  # implict jump to bb61
bb61:
  SLLIW s8, s3, 2
  ADD s8, s4, s8
  LW s9, 0(s8)
  XORI s9, s9, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb154
  # implict jump to bb62
bb62:
  LW s9, 0(s8)
  XORI s9, s9, 9
  SLTIU s9, s9, 1
  BNE s9, zero, bb153
  # implict jump to bb63
bb63:
  LW s9, 0(s8)
  XORI s9, s9, 10
  SLTIU s9, s9, 1
  BNE s9, zero, bb152
  # implict jump to bb64
bb64:
  LW s8, 0(s8)
  XORI s8, s8, 13
  SLTIU s8, s8, 1
  BNE s8, zero, bb151
  # implict jump to bb65
bb65:
  BNE s7, zero, bb150
  # implict jump to bb66
bb66:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 58
  BNE s3, zero, bb149
  # implict jump to bb67
bb67:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb68
bb68:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb73
  # implict jump to bb69
bb69:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb148
  # implict jump to bb70
bb70:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb147
  # implict jump to bb71
bb71:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb146
  # implict jump to bb72
bb72:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb145
  # implict jump to bb73
bb73:
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb144
  # implict jump to bb74
bb74:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb79
  # implict jump to bb75
bb75:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s7, 0(s3)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb143
  # implict jump to bb76
bb76:
  LW s7, 0(s3)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb142
  # implict jump to bb77
bb77:
  LW s7, 0(s3)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb141
  # implict jump to bb78
bb78:
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb140
  # implict jump to bb79
bb79:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 44
  SLTIU s3, s3, 1
  BNE s3, zero, bb94
  # implict jump to bb80
bb80:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb85
  # implict jump to bb81
bb81:
  SLLIW s8, s3, 2
  ADD s8, s4, s8
  LW s9, 0(s8)
  XORI s9, s9, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb93
  # implict jump to bb82
bb82:
  LW s9, 0(s8)
  XORI s9, s9, 9
  SLTIU s9, s9, 1
  BNE s9, zero, bb92
  # implict jump to bb83
bb83:
  LW s9, 0(s8)
  XORI s9, s9, 10
  SLTIU s9, s9, 1
  BNE s9, zero, bb91
  # implict jump to bb84
bb84:
  LW s8, 0(s8)
  XORI s8, s8, 13
  SLTIU s8, s8, 1
  BNE s8, zero, bb90
  # implict jump to bb85
bb85:
  BNE s7, zero, bb89
  # implict jump to bb86
bb86:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 125
  BNE s3, zero, bb88
  # implict jump to bb87
bb87:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb22
bb88:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb89:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb90:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb80
bb91:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb80
bb92:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb80
bb93:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb80
bb94:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb95
bb95:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb100
  # implict jump to bb96
bb96:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb139
  # implict jump to bb97
bb97:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb138
  # implict jump to bb98
bb98:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb137
  # implict jump to bb99
bb99:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb136
  # implict jump to bb100
bb100:
  ADDI a0, zero, 2
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb135
  # implict jump to bb101
bb101:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb106
  # implict jump to bb102
bb102:
  SLLIW s8, s3, 2
  ADD s8, s4, s8
  LW s9, 0(s8)
  XORI s9, s9, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb134
  # implict jump to bb103
bb103:
  LW s9, 0(s8)
  XORI s9, s9, 9
  SLTIU s9, s9, 1
  BNE s9, zero, bb133
  # implict jump to bb104
bb104:
  LW s9, 0(s8)
  XORI s9, s9, 10
  SLTIU s9, s9, 1
  BNE s9, zero, bb132
  # implict jump to bb105
bb105:
  LW s8, 0(s8)
  XORI s8, s8, 13
  SLTIU s8, s8, 1
  BNE s8, zero, bb131
  # implict jump to bb106
bb106:
  BNE s7, zero, bb130
  # implict jump to bb107
bb107:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 58
  BNE s3, zero, bb129
  # implict jump to bb108
bb108:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb109
bb109:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb114
  # implict jump to bb110
bb110:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb128
  # implict jump to bb111
bb111:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb127
  # implict jump to bb112
bb112:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb126
  # implict jump to bb113
bb113:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb125
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb124
  # implict jump to bb115
bb115:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb79
  # implict jump to bb116
bb116:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s7, 0(s3)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb123
  # implict jump to bb117
bb117:
  LW s7, 0(s3)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb122
  # implict jump to bb118
bb118:
  LW s7, 0(s3)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb121
  # implict jump to bb119
bb119:
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb120
  JAL zero, bb79
bb120:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb115
bb121:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb115
bb122:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb115
bb123:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb115
bb124:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb125:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb109
bb126:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb109
bb127:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb109
bb128:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb109
bb129:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb130:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb131:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb101
bb132:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb101
bb133:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb101
bb134:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb101
bb135:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb136:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb95
bb137:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb95
bb138:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb95
bb139:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb95
bb140:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb74
bb141:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb74
bb142:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb74
bb143:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb74
bb144:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb145:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb68
bb146:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb68
bb147:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb68
bb148:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb68
bb149:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb150:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb151:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb60
bb152:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb60
bb153:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb60
bb154:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb60
bb155:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb156:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 125
  SLTIU s3, s3, 1
  BNE s3, zero, bb157
  JAL zero, bb59
bb157:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  ADDI a0, zero, 1
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb158:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb53
bb159:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb53
bb160:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb53
bb161:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb53
bb162:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb163
bb163:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb168
  # implict jump to bb164
bb164:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb221
  # implict jump to bb165
bb165:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb220
  # implict jump to bb166
bb166:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb219
  # implict jump to bb167
bb167:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb218
  # implict jump to bb168
bb168:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb216
  # implict jump to bb169
bb169:
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb215
  # implict jump to bb170
bb170:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb175
  # implict jump to bb171
bb171:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s7, 0(s3)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb214
  # implict jump to bb172
bb172:
  LW s7, 0(s3)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb213
  # implict jump to bb173
bb173:
  LW s7, 0(s3)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb212
  # implict jump to bb174
bb174:
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb211
  # implict jump to bb175
bb175:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 44
  SLTIU s3, s3, 1
  BNE s3, zero, bb190
  # implict jump to bb176
bb176:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb181
  # implict jump to bb177
bb177:
  SLLIW s8, s3, 2
  ADD s8, s4, s8
  LW s9, 0(s8)
  XORI s9, s9, 32
  SLTIU s9, s9, 1
  BNE s9, zero, bb189
  # implict jump to bb178
bb178:
  LW s9, 0(s8)
  XORI s9, s9, 9
  SLTIU s9, s9, 1
  BNE s9, zero, bb188
  # implict jump to bb179
bb179:
  LW s9, 0(s8)
  XORI s9, s9, 10
  SLTIU s9, s9, 1
  BNE s9, zero, bb187
  # implict jump to bb180
bb180:
  LW s8, 0(s8)
  XORI s8, s8, 13
  SLTIU s8, s8, 1
  BNE s8, zero, bb186
  # implict jump to bb181
bb181:
  BNE s7, zero, bb185
  # implict jump to bb182
bb182:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 93
  BNE s3, zero, bb184
  # implict jump to bb183
bb183:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb22
bb184:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb185:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb186:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb176
bb187:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb176
bb188:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb176
bb189:
  LA s8, pos
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, pos
  SW s8, 0(s9)
  JAL zero, bb176
bb190:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb191
bb191:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb196
  # implict jump to bb192
bb192:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 32
  SLTIU s3, s3, 1
  BNE s3, zero, bb210
  # implict jump to bb193
bb193:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 9
  SLTIU s3, s3, 1
  BNE s3, zero, bb209
  # implict jump to bb194
bb194:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb208
  # implict jump to bb195
bb195:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb207
  # implict jump to bb196
bb196:
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  SLTIU s3, s3, 1
  BNE s3, zero, bb206
  # implict jump to bb197
bb197:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb175
  # implict jump to bb198
bb198:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s7, 0(s3)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb205
  # implict jump to bb199
bb199:
  LW s7, 0(s3)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb204
  # implict jump to bb200
bb200:
  LW s7, 0(s3)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb203
  # implict jump to bb201
bb201:
  LW s3, 0(s3)
  XORI s3, s3, 13
  SLTIU s3, s3, 1
  BNE s3, zero, bb202
  JAL zero, bb175
bb202:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb197
bb203:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb197
bb204:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb197
bb205:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb197
bb206:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb207:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb191
bb208:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb191
bb209:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb191
bb210:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb191
bb211:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb170
bb212:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb170
bb213:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb170
bb214:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb170
bb215:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb216:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 93
  SLTIU s3, s3, 1
  BNE s3, zero, bb217
  JAL zero, bb169
bb217:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  ADDI a0, zero, 1
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb218:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb163
bb219:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb163
bb220:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb163
bb221:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb163
bb222:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  # implict jump to bb223
bb223:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb229
  # implict jump to bb224
bb224:
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s5
  XORI s3, s3, 1
  BNE s3, zero, bb228
  # implict jump to bb225
bb225:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 34
  BNE s3, zero, bb227
  # implict jump to bb226
bb226:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb22
bb227:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb228:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb229:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 34
  SLTIU s3, s3, 1
  BNE s3, zero, bb224
  # implict jump to bb230
bb230:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 92
  SLTIU s3, s3, 1
  BNE s3, zero, bb232
  # implict jump to bb231
bb231:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb223
bb232:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 2
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb223
bb233:
  SLLIW s3, s6, 2
  ADD s3, s4, s3
  LW s7, 0(s3)
  XORI s7, s7, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb279
  # implict jump to bb234
bb234:
  LW s3, 0(s3)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb278
  # implict jump to bb235
bb235:
  LA s3, pos
  LW s3, 0(s3)
  SLT s7, s3, s5
  XORI s7, s7, 1
  BNE s7, zero, bb277
  # implict jump to bb236
bb236:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  SLTI s7, s3, 48
  XORI s7, s7, 1
  BNE s7, zero, bb274
  # implict jump to bb237
bb237:
  ADD s7, zero, zero
  # implict jump to bb238
bb238:
  SLTIU s3, s7, 1
  BNE s3, zero, bb273
  # implict jump to bb239
bb239:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb266
  # implict jump to bb240
bb240:
  BLT s3, s5, bb257
  # implict jump to bb241
bb241:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb242
  JAL zero, bb22
bb242:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 101
  SLTIU s3, s3, 1
  BNE s3, zero, bb243
  JAL zero, bb22
bb243:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  BLT s3, s5, bb255
  # implict jump to bb244
bb244:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb253
  # implict jump to bb245
bb245:
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb246
  JAL zero, bb22
bb246:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  SLTI s7, s3, 48
  XORI s7, s7, 1
  BNE s7, zero, bb250
  # implict jump to bb247
bb247:
  ADD s7, zero, zero
  # implict jump to bb248
bb248:
  XORI s3, s7, 1
  BNE s3, zero, bb22
  # implict jump to bb249
bb249:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb245
bb250:
  ADDI s8, zero, 57
  SLT s3, s8, s3
  XORI s3, s3, 1
  BNE s3, zero, bb252
  # implict jump to bb251
bb251:
  ADD s7, zero, zero
  JAL zero, bb248
bb252:
  ADDI s7, zero, 1
  JAL zero, bb248
bb253:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb254
  JAL zero, bb245
bb254:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb245
bb255:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 43
  SLTIU s3, s3, 1
  BNE s3, zero, bb256
  JAL zero, bb244
bb256:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb244
bb257:
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, 46
  SLTIU s3, s3, 1
  BNE s3, zero, bb258
  JAL zero, bb241
bb258:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb259
  JAL zero, bb241
bb259:
  LA s3, pos
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s3, s4, s3
  LW s3, 0(s3)
  SLTI s7, s3, 48
  XORI s7, s7, 1
  BNE s7, zero, bb263
  # implict jump to bb260
bb260:
  ADD s7, zero, zero
  # implict jump to bb261
bb261:
  XORI s3, s7, 1
  BNE s3, zero, bb241
  # implict jump to bb262
bb262:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  LA s3, pos
  LW s3, 0(s3)
  BLT s3, s5, bb259
  JAL zero, bb241
bb263:
  ADDI s8, zero, 57
  SLT s3, s8, s3
  XORI s3, s3, 1
  BNE s3, zero, bb265
  # implict jump to bb264
bb264:
  ADD s7, zero, zero
  JAL zero, bb261
bb265:
  ADDI s7, zero, 1
  JAL zero, bb261
bb266:
  SLLIW s7, s3, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  SLTI s8, s7, 48
  XORI s8, s8, 1
  BNE s8, zero, bb270
  # implict jump to bb267
bb267:
  ADD s8, zero, zero
  # implict jump to bb268
bb268:
  XORI s7, s8, 1
  BNE s7, zero, bb240
  # implict jump to bb269
bb269:
  LA s7, pos
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb239
bb270:
  ADDI s9, zero, 57
  SLT s7, s9, s7
  XORI s7, s7, 1
  BNE s7, zero, bb272
  # implict jump to bb271
bb271:
  ADD s8, zero, zero
  JAL zero, bb268
bb272:
  ADDI s8, zero, 1
  JAL zero, bb268
bb273:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb274:
  ADDI s8, zero, 57
  SLT s3, s8, s3
  XORI s3, s3, 1
  BNE s3, zero, bb276
  # implict jump to bb275
bb275:
  ADD s7, zero, zero
  JAL zero, bb238
bb276:
  ADDI s7, zero, 1
  JAL zero, bb238
bb277:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb278:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb235
bb279:
  LA s3, pos
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s7, pos
  SW s3, 0(s7)
  JAL zero, bb235
bb280:
  SLLIW s3, s6, 2
  ADD s3, s4, s3
  LW s6, 0(s3)
  XORI s6, s6, 123
  SLTIU s6, s6, 1
  BNE s6, zero, bb303
  # implict jump to bb281
bb281:
  LW s6, 0(s3)
  XORI s6, s6, 91
  SLTIU s6, s6, 1
  BNE s6, zero, bb302
  # implict jump to bb282
bb282:
  LW s6, 0(s3)
  XORI s6, s6, 34
  SLTIU s6, s6, 1
  BNE s6, zero, bb301
  # implict jump to bb283
bb283:
  LW s6, 0(s3)
  SLTI s7, s6, 48
  XORI s7, s7, 1
  BNE s7, zero, bb298
  # implict jump to bb284
bb284:
  ADD s7, zero, zero
  # implict jump to bb285
bb285:
  XORI s6, s7, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb297
  # implict jump to bb286
bb286:
  LW s6, 0(s3)
  XORI s6, s6, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb296
  # implict jump to bb287
bb287:
  LW s6, 0(s3)
  XORI s6, s6, 45
  SLTIU s6, s6, 1
  BNE s6, zero, bb295
  # implict jump to bb288
bb288:
  LW s6, 0(s3)
  XORI s6, s6, 116
  SLTIU s6, s6, 1
  BNE s6, zero, bb294
  # implict jump to bb289
bb289:
  LW s6, 0(s3)
  XORI s6, s6, 102
  SLTIU s6, s6, 1
  BNE s6, zero, bb293
  # implict jump to bb290
bb290:
  LW s3, 0(s3)
  XORI s3, s3, 110
  SLTIU s3, s3, 1
  BNE s3, zero, bb292
  # implict jump to bb291
bb291:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb292:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 7
  JAL zero, bb1
bb293:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 6
  JAL zero, bb1
bb294:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 5
  JAL zero, bb1
bb295:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 1
  JAL zero, bb1
bb296:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 1
  JAL zero, bb1
bb297:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 1
  JAL zero, bb1
bb298:
  ADDI s8, zero, 57
  SLT s6, s8, s6
  XORI s6, s6, 1
  BNE s6, zero, bb300
  # implict jump to bb299
bb299:
  ADD s7, zero, zero
  JAL zero, bb285
bb300:
  ADDI s7, zero, 1
  JAL zero, bb285
bb301:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 2
  JAL zero, bb1
bb302:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 3
  JAL zero, bb1
bb303:
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADDI s0, zero, 4
  JAL zero, bb1
bb304:
  LA s7, pos
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb2
bb305:
  LA s7, pos
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb2
bb306:
  LA s7, pos
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb2
bb307:
  LA s7, pos
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb2
bb308:
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
  LD s9, 80(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
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
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 35
  BNE s2, zero, bb334
  # implict jump to bb310
bb310:
  ADD s2, zero, zero
  # implict jump to bb311
bb311:
  # implict jump to bb312
bb312:
  ADD s5, s2, zero
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb317
  # implict jump to bb313
bb313:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb333
  # implict jump to bb314
bb314:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb332
  # implict jump to bb315
bb315:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb331
  # implict jump to bb316
bb316:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb330
  # implict jump to bb317
bb317:
  ADD a0, zero, zero
  LA s2, buffer
  ADD a1, s2, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s2, a0, zero
  # implict jump to bb318
bb318:
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb323
  # implict jump to bb319
bb319:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb329
  # implict jump to bb320
bb320:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb328
  # implict jump to bb321
bb321:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb327
  # implict jump to bb322
bb322:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb326
  # implict jump to bb323
bb323:
  BNE s2, zero, bb325
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
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
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
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb326:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb318
bb327:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb318
bb328:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb318
bb329:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb318
bb330:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb312
bb331:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb312
bb332:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb312
bb333:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb312
bb334:
  ADD s3, zero, zero
  # implict jump to bb335
bb335:
  ADD s4, s3, zero
  ADD s5, s1, zero
  SLLIW s6, s4, 2
  LA s7, buffer
  ADD s6, s7, s6
  SW s5, 0(s6)
  ADDIW s0, s4, 1
  CALL getch
  ADD s4, a0, zero
  XORI s5, s4, 35
  BNE s5, zero, bb337
  # implict jump to bb336
bb336:
  ADD s2, s0, zero
  JAL zero, bb311
bb337:
  ADD s1, s4, zero
  ADD s3, s0, zero
  JAL zero, bb335
