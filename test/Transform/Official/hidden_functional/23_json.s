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
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb307
  # implict jump to bb1
bb1:
  LA s3, pos
  LW s3, 0(s3)
  SLT s4, s3, s2
  XORI s4, s4, 1
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s5, 0(s4)
  XORI s5, s5, 32
  SLTIU s5, s5, 1
  BNE s5, zero, bb306
  # implict jump to bb3
bb3:
  LW s5, 0(s4)
  XORI s5, s5, 9
  SLTIU s5, s5, 1
  BNE s5, zero, bb305
  # implict jump to bb4
bb4:
  LW s5, 0(s4)
  XORI s5, s5, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb304
  # implict jump to bb5
bb5:
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb303
  # implict jump to bb6
bb6:
  SLTIU s4, s0, 1
  BNE s4, zero, bb279
  # implict jump to bb7
bb7:
  XORI s4, s0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb232
  # implict jump to bb8
bb8:
  XORI s4, s0, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb221
  # implict jump to bb9
bb9:
  XORI s4, s0, 3
  SLTIU s4, s4, 1
  BNE s4, zero, bb161
  # implict jump to bb10
bb10:
  XORI s4, s0, 4
  SLTIU s4, s4, 1
  BNE s4, zero, bb51
  # implict jump to bb11
bb11:
  XORI s4, s0, 5
  SLTIU s4, s4, 1
  BNE s4, zero, bb40
  # implict jump to bb12
bb12:
  XORI s4, s0, 6
  SLTIU s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb13
bb13:
  XORI s0, s0, 7
  SLTIU s0, s0, 1
  BNE s0, zero, bb15
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb15:
  ADDI s0, zero, 110
  SW s0, 104(sp)
  ADDI s0, zero, 117
  SW s0, 108(sp)
  ADDI s0, zero, 108
  SW s0, 112(sp)
  ADDI s0, zero, 108
  SW s0, 116(sp)
  ADDIW s0, s3, 3
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb26
  # implict jump to bb16
bb16:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 110
  BNE s4, zero, bb25
  # implict jump to bb17
bb17:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 117
  BNE s4, zero, bb24
  # implict jump to bb18
bb18:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 108
  BNE s4, zero, bb23
  # implict jump to bb19
bb19:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 108
  BNE s0, zero, bb22
  # implict jump to bb20
bb20:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 4
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb27:
  ADDI s0, zero, 102
  SW s0, 80(sp)
  ADDI s0, zero, 97
  SW s0, 84(sp)
  ADDI s0, zero, 108
  SW s0, 88(sp)
  ADDI s0, zero, 115
  SW s0, 92(sp)
  ADDI s0, zero, 101
  SW s0, 96(sp)
  ADDIW s0, s3, 4
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb39
  # implict jump to bb28
bb28:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 102
  BNE s4, zero, bb38
  # implict jump to bb29
bb29:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 97
  BNE s4, zero, bb37
  # implict jump to bb30
bb30:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 108
  BNE s4, zero, bb36
  # implict jump to bb31
bb31:
  ADDIW s4, s3, 3
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 115
  BNE s4, zero, bb35
  # implict jump to bb32
bb32:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  BNE s0, zero, bb34
  # implict jump to bb33
bb33:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 5
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb40:
  ADDI s0, zero, 116
  SW s0, 64(sp)
  ADDI s0, zero, 114
  SW s0, 68(sp)
  ADDI s0, zero, 117
  SW s0, 72(sp)
  ADDI s0, zero, 101
  SW s0, 76(sp)
  ADDIW s0, s3, 3
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb50
  # implict jump to bb41
bb41:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 116
  BNE s4, zero, bb49
  # implict jump to bb42
bb42:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 114
  BNE s4, zero, bb48
  # implict jump to bb43
bb43:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 117
  BNE s4, zero, bb47
  # implict jump to bb44
bb44:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  BNE s0, zero, bb46
  # implict jump to bb45
bb45:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 4
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb51:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb52
bb52:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb53
bb53:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb160
  # implict jump to bb54
bb54:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb159
  # implict jump to bb55
bb55:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb158
  # implict jump to bb56
bb56:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb57
bb57:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb155
  # implict jump to bb58
bb58:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb154
  # implict jump to bb59
bb59:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb64
  # implict jump to bb60
bb60:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb153
  # implict jump to bb61
bb61:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb152
  # implict jump to bb62
bb62:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb151
  # implict jump to bb63
bb63:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb150
  # implict jump to bb64
bb64:
  BNE s4, zero, bb149
  # implict jump to bb65
bb65:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 58
  BNE s0, zero, bb148
  # implict jump to bb66
bb66:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb67
bb67:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb72
  # implict jump to bb68
bb68:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb147
  # implict jump to bb69
bb69:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb146
  # implict jump to bb70
bb70:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb71
bb71:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb144
  # implict jump to bb72
bb72:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb143
  # implict jump to bb73
bb73:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb78
  # implict jump to bb74
bb74:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb142
  # implict jump to bb75
bb75:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb141
  # implict jump to bb76
bb76:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb140
  # implict jump to bb77
bb77:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb139
  # implict jump to bb78
bb78:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 44
  SLTIU s0, s0, 1
  BNE s0, zero, bb93
  # implict jump to bb79
bb79:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb84
  # implict jump to bb80
bb80:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb92
  # implict jump to bb81
bb81:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb91
  # implict jump to bb82
bb82:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb90
  # implict jump to bb83
bb83:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb89
  # implict jump to bb84
bb84:
  BNE s4, zero, bb88
  # implict jump to bb85
bb85:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 125
  BNE s0, zero, bb87
  # implict jump to bb86
bb86:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb89:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb79
bb90:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb79
bb91:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb79
bb92:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb79
bb93:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb94
bb94:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb99
  # implict jump to bb95
bb95:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb96
bb96:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb137
  # implict jump to bb97
bb97:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb136
  # implict jump to bb98
bb98:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb135
  # implict jump to bb99
bb99:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb100
bb100:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb105
  # implict jump to bb101
bb101:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb133
  # implict jump to bb102
bb102:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb132
  # implict jump to bb103
bb103:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb131
  # implict jump to bb104
bb104:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb130
  # implict jump to bb105
bb105:
  BNE s4, zero, bb129
  # implict jump to bb106
bb106:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 58
  BNE s0, zero, bb128
  # implict jump to bb107
bb107:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb108
bb108:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb113
  # implict jump to bb109
bb109:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb127
  # implict jump to bb110
bb110:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb111
bb111:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb125
  # implict jump to bb112
bb112:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb124
  # implict jump to bb113
bb113:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb114
bb114:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb78
  # implict jump to bb115
bb115:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb122
  # implict jump to bb116
bb116:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb121
  # implict jump to bb117
bb117:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb120
  # implict jump to bb118
bb118:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  JAL zero, bb78
bb119:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb120:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb121:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb122:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb124:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb108
bb125:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb108
bb126:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb108
bb127:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb130:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb100
bb131:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb100
bb132:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb100
bb133:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb135:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb94
bb136:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb94
bb137:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb94
bb138:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb94
bb139:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb73
bb140:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb73
bb141:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb73
bb142:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb144:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb67
bb145:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb67
bb146:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb67
bb147:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb150:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb59
bb151:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb59
bb152:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb59
bb153:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb155:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 125
  SLTIU s0, s0, 1
  BNE s0, zero, bb156
  JAL zero, bb58
bb156:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb157:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb52
bb158:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb52
bb159:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb52
bb160:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb52
bb161:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb162
bb162:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb163
bb163:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb220
  # implict jump to bb164
bb164:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb219
  # implict jump to bb165
bb165:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb218
  # implict jump to bb166
bb166:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb217
  # implict jump to bb167
bb167:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb215
  # implict jump to bb168
bb168:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb214
  # implict jump to bb169
bb169:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb174
  # implict jump to bb170
bb170:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb213
  # implict jump to bb171
bb171:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb212
  # implict jump to bb172
bb172:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb211
  # implict jump to bb173
bb173:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb210
  # implict jump to bb174
bb174:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 44
  SLTIU s0, s0, 1
  BNE s0, zero, bb189
  # implict jump to bb175
bb175:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb180
  # implict jump to bb176
bb176:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb188
  # implict jump to bb177
bb177:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb187
  # implict jump to bb178
bb178:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb186
  # implict jump to bb179
bb179:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb185
  # implict jump to bb180
bb180:
  BNE s4, zero, bb184
  # implict jump to bb181
bb181:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 93
  BNE s0, zero, bb183
  # implict jump to bb182
bb182:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb185:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb175
bb186:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb175
bb187:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb175
bb188:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb175
bb189:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb190
bb190:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb195
  # implict jump to bb191
bb191:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb209
  # implict jump to bb192
bb192:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb208
  # implict jump to bb193
bb193:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb207
  # implict jump to bb194
bb194:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb206
  # implict jump to bb195
bb195:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb205
  # implict jump to bb196
bb196:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb174
  # implict jump to bb197
bb197:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb204
  # implict jump to bb198
bb198:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb203
  # implict jump to bb199
bb199:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb202
  # implict jump to bb200
bb200:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb201
  JAL zero, bb174
bb201:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb196
bb202:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb196
bb203:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb196
bb204:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb206:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb190
bb207:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb190
bb208:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb190
bb209:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb190
bb210:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb211:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb212:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb213:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb215:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 93
  SLTIU s0, s0, 1
  BNE s0, zero, bb216
  JAL zero, bb168
bb216:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb217:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb162
bb218:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb162
bb219:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb162
bb220:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb162
bb221:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb222
bb222:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb228
  # implict jump to bb223
bb223:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb227
  # implict jump to bb224
bb224:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 34
  BNE s0, zero, bb226
  # implict jump to bb225
bb225:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb228:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 34
  SLTIU s0, s0, 1
  BNE s0, zero, bb223
  # implict jump to bb229
bb229:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 92
  SLTIU s0, s0, 1
  BNE s0, zero, bb231
  # implict jump to bb230
bb230:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb222
bb231:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 2
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb222
bb232:
  SLLIW s0, s3, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 43
  SLTIU s4, s4, 1
  BNE s4, zero, bb278
  # implict jump to bb233
bb233:
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb277
  # implict jump to bb234
bb234:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb276
  # implict jump to bb235
bb235:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb273
  # implict jump to bb236
bb236:
  ADD s4, zero, zero
  # implict jump to bb237
bb237:
  SLTIU s0, s4, 1
  BNE s0, zero, bb272
  # implict jump to bb238
bb238:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb265
  # implict jump to bb239
bb239:
  BLT s0, s2, bb256
  # implict jump to bb240
bb240:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb241
  JAL zero, bb21
bb241:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  SLTIU s0, s0, 1
  BNE s0, zero, bb242
  JAL zero, bb21
bb242:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  BLT s0, s2, bb254
  # implict jump to bb243
bb243:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb252
  # implict jump to bb244
bb244:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb245
  JAL zero, bb21
bb245:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb249
  # implict jump to bb246
bb246:
  ADD s4, zero, zero
  # implict jump to bb247
bb247:
  XORI s0, s4, 1
  BNE s0, zero, bb21
  # implict jump to bb248
bb248:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb244
bb249:
  ADDI s5, zero, 57
  SLT s0, s5, s0
  XORI s0, s0, 1
  BNE s0, zero, bb251
  # implict jump to bb250
bb250:
  ADD s4, zero, zero
  JAL zero, bb247
bb251:
  ADDI s4, zero, 1
  JAL zero, bb247
bb252:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb253
  JAL zero, bb244
bb253:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb244
bb254:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb255
  JAL zero, bb243
bb255:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb243
bb256:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 46
  SLTIU s0, s0, 1
  BNE s0, zero, bb257
  JAL zero, bb240
bb257:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb258
  JAL zero, bb240
bb258:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb262
  # implict jump to bb259
bb259:
  ADD s4, zero, zero
  # implict jump to bb260
bb260:
  XORI s0, s4, 1
  BNE s0, zero, bb240
  # implict jump to bb261
bb261:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb258
  JAL zero, bb240
bb262:
  ADDI s5, zero, 57
  SLT s0, s5, s0
  XORI s0, s0, 1
  BNE s0, zero, bb264
  # implict jump to bb263
bb263:
  ADD s4, zero, zero
  JAL zero, bb260
bb264:
  ADDI s4, zero, 1
  JAL zero, bb260
bb265:
  SLLIW s4, s0, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb269
  # implict jump to bb266
bb266:
  ADD s5, zero, zero
  # implict jump to bb267
bb267:
  XORI s4, s5, 1
  BNE s4, zero, bb239
  # implict jump to bb268
bb268:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb238
bb269:
  ADDI s6, zero, 57
  SLT s4, s6, s4
  XORI s4, s4, 1
  BNE s4, zero, bb271
  # implict jump to bb270
bb270:
  ADD s5, zero, zero
  JAL zero, bb267
bb271:
  ADDI s5, zero, 1
  JAL zero, bb267
bb272:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb273:
  ADDI s5, zero, 57
  SLT s0, s5, s0
  XORI s0, s0, 1
  BNE s0, zero, bb275
  # implict jump to bb274
bb274:
  ADD s4, zero, zero
  JAL zero, bb237
bb275:
  ADDI s4, zero, 1
  JAL zero, bb237
bb276:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb277:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb234
bb278:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb234
bb279:
  SLLIW s0, s3, 2
  ADD s0, s1, s0
  LW s3, 0(s0)
  XORI s3, s3, 123
  SLTIU s3, s3, 1
  BNE s3, zero, bb302
  # implict jump to bb280
bb280:
  LW s3, 0(s0)
  XORI s3, s3, 91
  SLTIU s3, s3, 1
  BNE s3, zero, bb301
  # implict jump to bb281
bb281:
  LW s3, 0(s0)
  XORI s3, s3, 34
  SLTIU s3, s3, 1
  BNE s3, zero, bb300
  # implict jump to bb282
bb282:
  LW s3, 0(s0)
  SLTI s4, s3, 48
  XORI s4, s4, 1
  BNE s4, zero, bb297
  # implict jump to bb283
bb283:
  ADD s4, zero, zero
  # implict jump to bb284
bb284:
  XORI s3, s4, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb296
  # implict jump to bb285
bb285:
  LW s3, 0(s0)
  XORI s3, s3, 43
  SLTIU s3, s3, 1
  BNE s3, zero, bb295
  # implict jump to bb286
bb286:
  LW s3, 0(s0)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb294
  # implict jump to bb287
bb287:
  LW s3, 0(s0)
  XORI s3, s3, 116
  SLTIU s3, s3, 1
  BNE s3, zero, bb293
  # implict jump to bb288
bb288:
  LW s3, 0(s0)
  XORI s3, s3, 102
  SLTIU s3, s3, 1
  BNE s3, zero, bb292
  # implict jump to bb289
bb289:
  LW s0, 0(s0)
  XORI s0, s0, 110
  SLTIU s0, s0, 1
  BNE s0, zero, bb291
  # implict jump to bb290
bb290:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb291:
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb292:
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb293:
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb294:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb295:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb296:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb297:
  ADDI s5, zero, 57
  SLT s3, s5, s3
  XORI s3, s3, 1
  BNE s3, zero, bb299
  # implict jump to bb298
bb298:
  ADD s4, zero, zero
  JAL zero, bb284
bb299:
  ADDI s4, zero, 1
  JAL zero, bb284
bb300:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb301:
  ADDI a0, zero, 3
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb302:
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s2, zero
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb303:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb1
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
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
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
  ADD s1, a0, zero
  XORI s2, s1, 35
  BNE s2, zero, bb333
  # implict jump to bb309
bb309:
  ADD s2, zero, zero
  # implict jump to bb310
bb310:
  # implict jump to bb311
bb311:
  ADD s5, s2, zero
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb316
  # implict jump to bb312
bb312:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb332
  # implict jump to bb313
bb313:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb331
  # implict jump to bb314
bb314:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb330
  # implict jump to bb315
bb315:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb329
  # implict jump to bb316
bb316:
  ADD a0, zero, zero
  LA s2, buffer
  ADD a1, s2, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s2, a0, zero
  # implict jump to bb317
bb317:
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb322
  # implict jump to bb318
bb318:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb328
  # implict jump to bb319
bb319:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb327
  # implict jump to bb320
bb320:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb326
  # implict jump to bb321
bb321:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb325
  # implict jump to bb322
bb322:
  BNE s2, zero, bb324
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
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb317
bb326:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb317
bb327:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb317
bb328:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb317
bb329:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb311
bb330:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb311
bb331:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb311
bb332:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s2, s0, zero
  JAL zero, bb311
bb333:
  ADD s3, zero, zero
  # implict jump to bb334
bb334:
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
  BNE s5, zero, bb336
  # implict jump to bb335
bb335:
  ADD s2, s0, zero
  JAL zero, bb310
bb336:
  ADD s1, s4, zero
  ADD s3, s0, zero
  JAL zero, bb334
