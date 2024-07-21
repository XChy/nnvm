.global detect_item
.global main
.global skip_space
.global is_number
.section .bss
buffer:
.space 200000000

.section .data

pos:
.word 0x00000000
.section .text
detect_item:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  LA s4, pos
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb308
  # implict jump to bb1
bb1:
  LA s4, pos
  LW s0, 0(s4)
  SLT s4, s0, s3
  XORI s4, s4, 1
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  SLLIW s4, s0, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb307
  # implict jump to bb3
bb3:
  SLLIW s4, s0, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb306
  # implict jump to bb4
bb4:
  SLLIW s4, s0, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb305
  # implict jump to bb5
bb5:
  SLLIW s4, s0, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb304
  # implict jump to bb6
bb6:
  SLTIU s4, s1, 1
  BNE s4, zero, bb280
  # implict jump to bb7
bb7:
  XORI s4, s1, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb232
  # implict jump to bb8
bb8:
  XORI s4, s1, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb221
  # implict jump to bb9
bb9:
  XORI s4, s1, 3
  SLTIU s4, s4, 1
  BNE s4, zero, bb161
  # implict jump to bb10
bb10:
  XORI s4, s1, 4
  SLTIU s4, s4, 1
  BNE s4, zero, bb51
  # implict jump to bb11
bb11:
  XORI s4, s1, 5
  SLTIU s4, s4, 1
  BNE s4, zero, bb40
  # implict jump to bb12
bb12:
  XORI s4, s1, 6
  SLTIU s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb13
bb13:
  XORI s1, s1, 7
  SLTIU s1, s1, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb15:
  ADDI s1, zero, 110
  SW s1, 112(sp)
  ADDI s1, sp, 116
  ADDI s4, zero, 117
  SW s4, 0(s1)
  ADDI s4, sp, 120
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 124
  ADDI s6, zero, 108
  SW s6, 0(s5)
  ADDIW s5, s0, 3
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb26
  # implict jump to bb16
bb16:
  SLLIW s5, s0, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  LW s6, 112(sp)
  BNE s5, s6, bb25
  # implict jump to bb17
bb17:
  ADDIW s5, s0, 1
  SLLIW s5, s5, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  LW s1, 0(s1)
  BNE s5, s1, bb24
  # implict jump to bb18
bb18:
  ADDIW s1, s0, 2
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  LW s4, 0(s4)
  BNE s1, s4, bb23
  # implict jump to bb19
bb19:
  ADDIW s1, s0, 3
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 108
  BNE s1, zero, bb22
  # implict jump to bb20
bb20:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 4
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb21
bb21:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb22:
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb27:
  ADDI s1, zero, 102
  SW s1, 88(sp)
  ADDI s1, sp, 92
  ADDI s4, zero, 97
  SW s4, 0(s1)
  ADDI s4, sp, 96
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 100
  ADDI s6, zero, 115
  SW s6, 0(s5)
  ADDI s6, sp, 104
  ADDI s7, zero, 101
  SW s7, 0(s6)
  ADDIW s6, s0, 4
  SLT s6, s6, s3
  XORI s6, s6, 1
  BNE s6, zero, bb39
  # implict jump to bb28
bb28:
  SLLIW s6, s0, 2
  ADD s6, s2, s6
  LW s6, 0(s6)
  LW s7, 88(sp)
  BNE s6, s7, bb38
  # implict jump to bb29
bb29:
  ADDIW s6, s0, 1
  SLLIW s6, s6, 2
  ADD s6, s2, s6
  LW s6, 0(s6)
  LW s1, 0(s1)
  BNE s6, s1, bb37
  # implict jump to bb30
bb30:
  ADDIW s1, s0, 2
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  LW s4, 0(s4)
  BNE s1, s4, bb36
  # implict jump to bb31
bb31:
  ADDIW s1, s0, 3
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  LW s4, 0(s5)
  BNE s1, s4, bb35
  # implict jump to bb32
bb32:
  ADDIW s1, s0, 4
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 101
  BNE s1, zero, bb34
  # implict jump to bb33
bb33:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 5
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb21
bb34:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb40:
  ADDI s1, zero, 116
  SW s1, 72(sp)
  ADDI s1, sp, 76
  ADDI s4, zero, 114
  SW s4, 0(s1)
  ADDI s4, sp, 80
  ADDI s5, zero, 117
  SW s5, 0(s4)
  ADDI s5, sp, 84
  ADDI s6, zero, 101
  SW s6, 0(s5)
  ADDIW s5, s0, 3
  SLT s5, s5, s3
  XORI s5, s5, 1
  BNE s5, zero, bb50
  # implict jump to bb41
bb41:
  SLLIW s5, s0, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  LW s6, 72(sp)
  BNE s5, s6, bb49
  # implict jump to bb42
bb42:
  ADDIW s5, s0, 1
  SLLIW s5, s5, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  LW s1, 0(s1)
  BNE s5, s1, bb48
  # implict jump to bb43
bb43:
  ADDIW s1, s0, 2
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  LW s4, 0(s4)
  BNE s1, s4, bb47
  # implict jump to bb44
bb44:
  ADDIW s1, s0, 3
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 101
  BNE s1, zero, bb46
  # implict jump to bb45
bb45:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 4
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb21
bb46:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb51:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb52
bb52:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb57
  # implict jump to bb53
bb53:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb160
  # implict jump to bb54
bb54:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb159
  # implict jump to bb55
bb55:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb158
  # implict jump to bb56
bb56:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb157
  # implict jump to bb57
bb57:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb155
  # implict jump to bb58
bb58:
  ADDI a0, zero, 2
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb154
  # implict jump to bb59
bb59:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb64
  # implict jump to bb60
bb60:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb153
  # implict jump to bb61
bb61:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb152
  # implict jump to bb62
bb62:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb151
  # implict jump to bb63
bb63:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb150
  # implict jump to bb64
bb64:
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb149
  # implict jump to bb65
bb65:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 58
  BNE s1, zero, bb148
  # implict jump to bb66
bb66:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb67
bb67:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb72
  # implict jump to bb68
bb68:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb147
  # implict jump to bb69
bb69:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb146
  # implict jump to bb70
bb70:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb145
  # implict jump to bb71
bb71:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb144
  # implict jump to bb72
bb72:
  ADD a0, zero, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb143
  # implict jump to bb73
bb73:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb78
  # implict jump to bb74
bb74:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb142
  # implict jump to bb75
bb75:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb141
  # implict jump to bb76
bb76:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb140
  # implict jump to bb77
bb77:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb139
  # implict jump to bb78
bb78:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 44
  SLTIU s1, s1, 1
  BNE s1, zero, bb93
  # implict jump to bb79
bb79:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb84
  # implict jump to bb80
bb80:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb92
  # implict jump to bb81
bb81:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb91
  # implict jump to bb82
bb82:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb90
  # implict jump to bb83
bb83:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb89
  # implict jump to bb84
bb84:
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb88
  # implict jump to bb85
bb85:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 125
  BNE s1, zero, bb87
  # implict jump to bb86
bb86:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb21
bb87:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb89:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb79
bb90:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb79
bb91:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb79
bb92:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb79
bb93:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb94
bb94:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb99
  # implict jump to bb95
bb95:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb138
  # implict jump to bb96
bb96:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb137
  # implict jump to bb97
bb97:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb136
  # implict jump to bb98
bb98:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb135
  # implict jump to bb99
bb99:
  ADDI a0, zero, 2
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb134
  # implict jump to bb100
bb100:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb105
  # implict jump to bb101
bb101:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb133
  # implict jump to bb102
bb102:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb132
  # implict jump to bb103
bb103:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb131
  # implict jump to bb104
bb104:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb130
  # implict jump to bb105
bb105:
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb129
  # implict jump to bb106
bb106:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 58
  BNE s1, zero, bb128
  # implict jump to bb107
bb107:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb108
bb108:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb113
  # implict jump to bb109
bb109:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb127
  # implict jump to bb110
bb110:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb126
  # implict jump to bb111
bb111:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb125
  # implict jump to bb112
bb112:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb124
  # implict jump to bb113
bb113:
  ADD a0, zero, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb123
  # implict jump to bb114
bb114:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb78
  # implict jump to bb115
bb115:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb122
  # implict jump to bb116
bb116:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb121
  # implict jump to bb117
bb117:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb120
  # implict jump to bb118
bb118:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb119
  JAL zero, bb78
bb119:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb114
bb120:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb114
bb121:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb114
bb122:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb114
bb123:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb124:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb108
bb125:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb108
bb126:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb108
bb127:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb108
bb128:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb130:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb100
bb131:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb100
bb132:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb100
bb133:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb100
bb134:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb135:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb94
bb136:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb94
bb137:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb94
bb138:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb94
bb139:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb73
bb140:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb73
bb141:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb73
bb142:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb73
bb143:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb144:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb67
bb145:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb67
bb146:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb67
bb147:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb67
bb148:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb150:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb59
bb151:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb59
bb152:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb59
bb153:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb59
bb154:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb155:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 125
  SLTIU s1, s1, 1
  BNE s1, zero, bb156
  JAL zero, bb58
bb156:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb157:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb52
bb158:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb52
bb159:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb52
bb160:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb52
bb161:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb162
bb162:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb167
  # implict jump to bb163
bb163:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb220
  # implict jump to bb164
bb164:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb219
  # implict jump to bb165
bb165:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb218
  # implict jump to bb166
bb166:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb217
  # implict jump to bb167
bb167:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb215
  # implict jump to bb168
bb168:
  ADD a0, zero, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb214
  # implict jump to bb169
bb169:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb174
  # implict jump to bb170
bb170:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb213
  # implict jump to bb171
bb171:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb212
  # implict jump to bb172
bb172:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb211
  # implict jump to bb173
bb173:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb210
  # implict jump to bb174
bb174:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 44
  SLTIU s1, s1, 1
  BNE s1, zero, bb189
  # implict jump to bb175
bb175:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb180
  # implict jump to bb176
bb176:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb188
  # implict jump to bb177
bb177:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb187
  # implict jump to bb178
bb178:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb186
  # implict jump to bb179
bb179:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb185
  # implict jump to bb180
bb180:
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb184
  # implict jump to bb181
bb181:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 93
  BNE s1, zero, bb183
  # implict jump to bb182
bb182:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb21
bb183:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb185:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb175
bb186:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb175
bb187:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb175
bb188:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb175
bb189:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb190
bb190:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb195
  # implict jump to bb191
bb191:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb209
  # implict jump to bb192
bb192:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb208
  # implict jump to bb193
bb193:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb207
  # implict jump to bb194
bb194:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb206
  # implict jump to bb195
bb195:
  ADD a0, zero, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s1, a0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb205
  # implict jump to bb196
bb196:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb174
  # implict jump to bb197
bb197:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb204
  # implict jump to bb198
bb198:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb203
  # implict jump to bb199
bb199:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb202
  # implict jump to bb200
bb200:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 13
  SLTIU s1, s1, 1
  BNE s1, zero, bb201
  JAL zero, bb174
bb201:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb196
bb202:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb196
bb203:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb196
bb204:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb196
bb205:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb206:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb190
bb207:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb190
bb208:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb190
bb209:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb190
bb210:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb169
bb211:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb169
bb212:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb169
bb213:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb169
bb214:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb215:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 93
  SLTIU s1, s1, 1
  BNE s1, zero, bb216
  JAL zero, bb168
bb216:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb217:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb162
bb218:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb162
bb219:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb162
bb220:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb162
bb221:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb222
bb222:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb228
  # implict jump to bb223
bb223:
  LA s1, pos
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb227
  # implict jump to bb224
bb224:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 34
  BNE s1, zero, bb226
  # implict jump to bb225
bb225:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb21
bb226:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb228:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 34
  SLTIU s1, s1, 1
  BNE s1, zero, bb223
  # implict jump to bb229
bb229:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 92
  SLTIU s1, s1, 1
  BNE s1, zero, bb231
  # implict jump to bb230
bb230:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb222
bb231:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 2
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb222
bb232:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb279
  # implict jump to bb233
bb233:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb278
  # implict jump to bb234
bb234:
  LA s1, pos
  LW s1, 0(s1)
  SLT s4, s1, s3
  XORI s4, s4, 1
  BNE s4, zero, bb277
  # implict jump to bb235
bb235:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  SLTI s4, s1, 48
  XORI s4, s4, 1
  BNE s4, zero, bb274
  # implict jump to bb236
bb236:
  ADD s4, zero, zero
  # implict jump to bb237
bb237:
  SLTIU s1, s4, 1
  BNE s1, zero, bb273
  # implict jump to bb238
bb238:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb266
  # implict jump to bb239
bb239:
  BLT s1, s3, bb256
  # implict jump to bb240
bb240:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb241
  JAL zero, bb21
bb241:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 101
  SLTIU s1, s1, 1
  BNE s1, zero, bb242
  JAL zero, bb21
bb242:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  BLT s1, s3, bb254
  # implict jump to bb243
bb243:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb252
  # implict jump to bb244
bb244:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb245
  JAL zero, bb21
bb245:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  SLTI s4, s1, 48
  XORI s4, s4, 1
  BNE s4, zero, bb249
  # implict jump to bb246
bb246:
  ADD s4, zero, zero
  # implict jump to bb247
bb247:
  XORI s1, s4, 1
  BNE s1, zero, bb21
  # implict jump to bb248
bb248:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb244
bb249:
  ADDI s5, zero, 57
  SLT s1, s5, s1
  XORI s1, s1, 1
  BNE s1, zero, bb251
  # implict jump to bb250
bb250:
  ADD s4, zero, zero
  JAL zero, bb247
bb251:
  ADDI s4, zero, 1
  JAL zero, bb247
bb252:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb253
  JAL zero, bb244
bb253:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb244
bb254:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb255
  JAL zero, bb243
bb255:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb243
bb256:
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 46
  SLTIU s1, s1, 1
  BNE s1, zero, bb257
  JAL zero, bb240
bb257:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  # implict jump to bb258
bb258:
  LA s1, pos
  LW s1, 0(s1)
  BLT s1, s3, bb259
  JAL zero, bb240
bb259:
  LA s1, pos
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  SLTI s4, s1, 48
  XORI s4, s4, 1
  BNE s4, zero, bb263
  # implict jump to bb260
bb260:
  ADD s4, zero, zero
  # implict jump to bb261
bb261:
  XORI s1, s4, 1
  BNE s1, zero, bb240
  # implict jump to bb262
bb262:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb258
bb263:
  ADDI s5, zero, 57
  SLT s1, s5, s1
  XORI s1, s1, 1
  BNE s1, zero, bb265
  # implict jump to bb264
bb264:
  ADD s4, zero, zero
  JAL zero, bb261
bb265:
  ADDI s4, zero, 1
  JAL zero, bb261
bb266:
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb270
  # implict jump to bb267
bb267:
  ADD s5, zero, zero
  # implict jump to bb268
bb268:
  XORI s4, s5, 1
  BNE s4, zero, bb239
  # implict jump to bb269
bb269:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb238
bb270:
  ADDI s6, zero, 57
  SLT s4, s6, s4
  XORI s4, s4, 1
  BNE s4, zero, bb272
  # implict jump to bb271
bb271:
  ADD s5, zero, zero
  JAL zero, bb268
bb272:
  ADDI s5, zero, 1
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb274:
  ADDI s5, zero, 57
  SLT s1, s5, s1
  XORI s1, s1, 1
  BNE s1, zero, bb276
  # implict jump to bb275
bb275:
  ADD s4, zero, zero
  JAL zero, bb237
bb276:
  ADDI s4, zero, 1
  JAL zero, bb237
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb278:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb234
bb279:
  LA s1, pos
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, pos
  SW s1, 0(s4)
  JAL zero, bb234
bb280:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 123
  SLTIU s1, s1, 1
  BNE s1, zero, bb303
  # implict jump to bb281
bb281:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 91
  SLTIU s1, s1, 1
  BNE s1, zero, bb302
  # implict jump to bb282
bb282:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 34
  SLTIU s1, s1, 1
  BNE s1, zero, bb301
  # implict jump to bb283
bb283:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  SLTI s4, s1, 48
  XORI s4, s4, 1
  BNE s4, zero, bb298
  # implict jump to bb284
bb284:
  ADD s4, zero, zero
  # implict jump to bb285
bb285:
  XORI s1, s4, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb297
  # implict jump to bb286
bb286:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb296
  # implict jump to bb287
bb287:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb295
  # implict jump to bb288
bb288:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 116
  SLTIU s1, s1, 1
  BNE s1, zero, bb294
  # implict jump to bb289
bb289:
  SLLIW s1, s0, 2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 102
  SLTIU s1, s1, 1
  BNE s1, zero, bb293
  # implict jump to bb290
bb290:
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 110
  SLTIU s0, s0, 1
  BNE s0, zero, bb292
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb292:
  ADDI a0, zero, 7
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb293:
  ADDI a0, zero, 6
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb294:
  ADDI a0, zero, 5
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb295:
  ADDI a0, zero, 1
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb296:
  ADDI a0, zero, 1
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb297:
  ADDI a0, zero, 1
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb298:
  ADDI s5, zero, 57
  SLT s1, s5, s1
  XORI s1, s1, 1
  BNE s1, zero, bb300
  # implict jump to bb299
bb299:
  ADD s4, zero, zero
  JAL zero, bb285
bb300:
  ADDI s4, zero, 1
  JAL zero, bb285
bb301:
  ADDI a0, zero, 2
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb302:
  ADDI a0, zero, 3
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb303:
  ADDI a0, zero, 4
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb304:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb1
bb305:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb1
bb306:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb1
bb307:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb1
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
  ADDI sp, sp, 128
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb310
bb310:
  ADD s2, s0, zero
  ADD s3, s1, zero
  XORI s4, s2, 35
  BNE s4, zero, bb333
  # implict jump to bb311
bb311:
  LA s4, pos
  LW s4, 0(s4)
  SLT s5, s4, s3
  XORI s5, s5, 1
  BNE s5, zero, bb316
  # implict jump to bb312
bb312:
  SLLIW s5, s4, 2
  LA s6, buffer
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  SLTIU s5, s5, 1
  BNE s5, zero, bb332
  # implict jump to bb313
bb313:
  SLLIW s5, s4, 2
  LA s6, buffer
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 9
  SLTIU s5, s5, 1
  BNE s5, zero, bb331
  # implict jump to bb314
bb314:
  SLLIW s5, s4, 2
  LA s6, buffer
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb330
  # implict jump to bb315
bb315:
  SLLIW s4, s4, 2
  LA s5, buffer
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb329
  # implict jump to bb316
bb316:
  ADD a0, zero, zero
  LA s4, buffer
  ADD a1, s4, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s4, a0, zero
  # implict jump to bb317
bb317:
  LA s5, pos
  LW s5, 0(s5)
  SLT s6, s5, s3
  XORI s6, s6, 1
  BNE s6, zero, bb322
  # implict jump to bb318
bb318:
  SLLIW s6, s5, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb328
  # implict jump to bb319
bb319:
  SLLIW s6, s5, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb327
  # implict jump to bb320
bb320:
  SLLIW s6, s5, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb326
  # implict jump to bb321
bb321:
  SLLIW s5, s5, 2
  LA s6, buffer
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb325
  # implict jump to bb322
bb322:
  BNE s4, zero, bb324
  # implict jump to bb323
bb323:
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
bb324:
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
bb325:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb317
bb326:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb317
bb327:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb317
bb328:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb317
bb329:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb311
bb330:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb311
bb331:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb311
bb332:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb311
bb333:
  SLLIW s4, s3, 2
  LA s5, buffer
  ADD s4, s5, s4
  SW s2, 0(s4)
  ADDIW s2, s3, 1
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb310
skip_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  # implict jump to bb335
bb335:
  LA s0, pos
  LW s0, 0(s0)
  SLT s1, s0, a1
  XORI s1, s1, 1
  BNE s1, zero, bb340
  # implict jump to bb336
bb336:
  SLLIW s1, s0, 2
  ADD s1, a0, s1
  LW s1, 0(s1)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb344
  # implict jump to bb337
bb337:
  SLLIW s1, s0, 2
  ADD s1, a0, s1
  LW s1, 0(s1)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb343
  # implict jump to bb338
bb338:
  SLLIW s1, s0, 2
  ADD s1, a0, s1
  LW s1, 0(s1)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb342
  # implict jump to bb339
bb339:
  SLLIW s0, s0, 2
  ADD s0, a0, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb341
  # implict jump to bb340
bb340:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb341:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb335
bb342:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb335
bb343:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb335
bb344:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb335
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb347
  # implict jump to bb346
bb346:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb347:
  ADDI s1, zero, 57
  SLT s0, s1, s0
  XORI s0, s0, 1
  BNE s0, zero, bb349
  # implict jump to bb348
bb348:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb349:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
