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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, pos
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb322
  # implict jump to bb1
bb1:
  # implict jump to bb2
bb2:
  LA s3, pos
  LW s3, 0(s3)
  SLT s4, s3, s2
  XORI s4, s4, 1
  BNE s4, zero, bb7
  # implict jump to bb3
bb3:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s5, 0(s4)
  XORI s5, s5, 32
  SLTIU s5, s5, 1
  BNE s5, zero, bb321
  # implict jump to bb4
bb4:
  LW s5, 0(s4)
  XORI s5, s5, 9
  SLTIU s5, s5, 1
  BNE s5, zero, bb320
  # implict jump to bb5
bb5:
  LW s5, 0(s4)
  XORI s5, s5, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb319
  # implict jump to bb6
bb6:
  LW s4, 0(s4)
  XORI s4, s4, 13
  SLTIU s4, s4, 1
  BNE s4, zero, bb318
  # implict jump to bb7
bb7:
  SLTIU s4, s0, 1
  BNE s4, zero, bb294
  # implict jump to bb8
bb8:
  XORI s4, s0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb243
  # implict jump to bb9
bb9:
  XORI s4, s0, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb232
  # implict jump to bb10
bb10:
  XORI s4, s0, 3
  SLTIU s4, s4, 1
  BNE s4, zero, bb168
  # implict jump to bb11
bb11:
  XORI s4, s0, 4
  SLTIU s4, s4, 1
  BNE s4, zero, bb52
  # implict jump to bb12
bb12:
  XORI s4, s0, 5
  SLTIU s4, s4, 1
  BNE s4, zero, bb41
  # implict jump to bb13
bb13:
  XORI s4, s0, 6
  SLTIU s4, s4, 1
  BNE s4, zero, bb28
  # implict jump to bb14
bb14:
  XORI s0, s0, 7
  SLTIU s0, s0, 1
  BNE s0, zero, bb16
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb16:
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
  BNE s4, zero, bb27
  # implict jump to bb17
bb17:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 110
  BNE s4, zero, bb26
  # implict jump to bb18
bb18:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 117
  BNE s4, zero, bb25
  # implict jump to bb19
bb19:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 108
  BNE s4, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 108
  BNE s0, zero, bb23
  # implict jump to bb21
bb21:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 4
  LA s4, pos
  SW s0, 0(s4)
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
bb28:
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
  BNE s4, zero, bb40
  # implict jump to bb29
bb29:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 102
  BNE s4, zero, bb39
  # implict jump to bb30
bb30:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 97
  BNE s4, zero, bb38
  # implict jump to bb31
bb31:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 108
  BNE s4, zero, bb37
  # implict jump to bb32
bb32:
  ADDIW s4, s3, 3
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 115
  BNE s4, zero, bb36
  # implict jump to bb33
bb33:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 5
  LA s4, pos
  SW s0, 0(s4)
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
bb41:
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
  BNE s4, zero, bb51
  # implict jump to bb42
bb42:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 116
  BNE s4, zero, bb50
  # implict jump to bb43
bb43:
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 114
  BNE s4, zero, bb49
  # implict jump to bb44
bb44:
  ADDIW s4, s3, 2
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  XORI s4, s4, 117
  BNE s4, zero, bb48
  # implict jump to bb45
bb45:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 4
  LA s4, pos
  SW s0, 0(s4)
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
bb52:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb53
bb53:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb58
  # implict jump to bb54
bb54:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb55
bb55:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb166
  # implict jump to bb56
bb56:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb165
  # implict jump to bb57
bb57:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb164
  # implict jump to bb58
bb58:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb162
  # implict jump to bb59
bb59:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb161
  # implict jump to bb60
bb60:
  # implict jump to bb61
bb61:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb66
  # implict jump to bb62
bb62:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb160
  # implict jump to bb63
bb63:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb159
  # implict jump to bb64
bb64:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb158
  # implict jump to bb65
bb65:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb157
  # implict jump to bb66
bb66:
  BNE s4, zero, bb156
  # implict jump to bb67
bb67:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 58
  BNE s0, zero, bb155
  # implict jump to bb68
bb68:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb69
bb69:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb74
  # implict jump to bb70
bb70:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb154
  # implict jump to bb71
bb71:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb153
  # implict jump to bb72
bb72:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb152
  # implict jump to bb73
bb73:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb151
  # implict jump to bb74
bb74:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb150
  # implict jump to bb75
bb75:
  # implict jump to bb76
bb76:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb81
  # implict jump to bb77
bb77:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb149
  # implict jump to bb78
bb78:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb148
  # implict jump to bb79
bb79:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb147
  # implict jump to bb80
bb80:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb146
  # implict jump to bb81
bb81:
  # implict jump to bb82
bb82:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 44
  SLTIU s0, s0, 1
  BNE s0, zero, bb98
  # implict jump to bb83
bb83:
  # implict jump to bb84
bb84:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb89
  # implict jump to bb85
bb85:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb97
  # implict jump to bb86
bb86:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb96
  # implict jump to bb87
bb87:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb95
  # implict jump to bb88
bb88:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb94
  # implict jump to bb89
bb89:
  BNE s4, zero, bb93
  # implict jump to bb90
bb90:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 125
  BNE s0, zero, bb92
  # implict jump to bb91
bb91:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb22
bb92:
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
bb93:
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
bb94:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb84
bb95:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb84
bb96:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb84
bb97:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb84
bb98:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb99
bb99:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb104
  # implict jump to bb100
bb100:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb101
bb101:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb144
  # implict jump to bb102
bb102:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb143
  # implict jump to bb103
bb103:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb104
bb104:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb105
bb105:
  # implict jump to bb106
bb106:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb111
  # implict jump to bb107
bb107:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb140
  # implict jump to bb108
bb108:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb139
  # implict jump to bb109
bb109:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb138
  # implict jump to bb110
bb110:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb137
  # implict jump to bb111
bb111:
  BNE s4, zero, bb136
  # implict jump to bb112
bb112:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 58
  BNE s0, zero, bb135
  # implict jump to bb113
bb113:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb114
bb114:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb115
bb115:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb116
bb116:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb133
  # implict jump to bb117
bb117:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb132
  # implict jump to bb118
bb118:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb131
  # implict jump to bb119
bb119:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb120
bb120:
  # implict jump to bb121
bb121:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb82
  # implict jump to bb122
bb122:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb129
  # implict jump to bb123
bb123:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb128
  # implict jump to bb124
bb124:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb127
  # implict jump to bb125
bb125:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  JAL zero, bb82
bb126:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb121
bb127:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb121
bb128:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb121
bb129:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb121
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb131:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb132:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb133:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
bb134:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb114
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb136:
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
bb137:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb106
bb138:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb106
bb139:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb106
bb140:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb106
bb141:
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
bb142:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb99
bb143:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb99
bb144:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb99
bb145:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb99
bb146:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb76
bb147:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb76
bb148:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb76
bb149:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb76
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb151:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb69
bb152:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb69
bb153:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb69
bb154:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb69
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb156:
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
bb157:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb61
bb158:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb61
bb159:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb61
bb160:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb61
bb161:
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
bb162:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 125
  SLTIU s0, s0, 1
  BNE s0, zero, bb163
  JAL zero, bb59
bb163:
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
bb164:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb53
bb165:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb53
bb166:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb53
bb167:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb53
bb168:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb169
bb169:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb174
  # implict jump to bb170
bb170:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb231
  # implict jump to bb171
bb171:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb230
  # implict jump to bb172
bb172:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb229
  # implict jump to bb173
bb173:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb228
  # implict jump to bb174
bb174:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb226
  # implict jump to bb175
bb175:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb225
  # implict jump to bb176
bb176:
  # implict jump to bb177
bb177:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb182
  # implict jump to bb178
bb178:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb224
  # implict jump to bb179
bb179:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb223
  # implict jump to bb180
bb180:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb222
  # implict jump to bb181
bb181:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb221
  # implict jump to bb182
bb182:
  # implict jump to bb183
bb183:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 44
  SLTIU s0, s0, 1
  BNE s0, zero, bb199
  # implict jump to bb184
bb184:
  # implict jump to bb185
bb185:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb190
  # implict jump to bb186
bb186:
  SLLIW s5, s0, 2
  ADD s5, s1, s5
  LW s6, 0(s5)
  XORI s6, s6, 32
  SLTIU s6, s6, 1
  BNE s6, zero, bb198
  # implict jump to bb187
bb187:
  LW s6, 0(s5)
  XORI s6, s6, 9
  SLTIU s6, s6, 1
  BNE s6, zero, bb197
  # implict jump to bb188
bb188:
  LW s6, 0(s5)
  XORI s6, s6, 10
  SLTIU s6, s6, 1
  BNE s6, zero, bb196
  # implict jump to bb189
bb189:
  LW s5, 0(s5)
  XORI s5, s5, 13
  SLTIU s5, s5, 1
  BNE s5, zero, bb195
  # implict jump to bb190
bb190:
  BNE s4, zero, bb194
  # implict jump to bb191
bb191:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 93
  BNE s0, zero, bb193
  # implict jump to bb192
bb192:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb22
bb193:
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
bb194:
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
bb195:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb185
bb196:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb185
bb197:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb185
bb198:
  LA s5, pos
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb185
bb199:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb200
bb200:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb205
  # implict jump to bb201
bb201:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTIU s0, s0, 1
  BNE s0, zero, bb220
  # implict jump to bb202
bb202:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb219
  # implict jump to bb203
bb203:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 10
  SLTIU s0, s0, 1
  BNE s0, zero, bb218
  # implict jump to bb204
bb204:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb217
  # implict jump to bb205
bb205:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s0, a0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb216
  # implict jump to bb206
bb206:
  # implict jump to bb207
bb207:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb183
  # implict jump to bb208
bb208:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 32
  SLTIU s4, s4, 1
  BNE s4, zero, bb215
  # implict jump to bb209
bb209:
  LW s4, 0(s0)
  XORI s4, s4, 9
  SLTIU s4, s4, 1
  BNE s4, zero, bb214
  # implict jump to bb210
bb210:
  LW s4, 0(s0)
  XORI s4, s4, 10
  SLTIU s4, s4, 1
  BNE s4, zero, bb213
  # implict jump to bb211
bb211:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb212
  JAL zero, bb183
bb212:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb207
bb213:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb207
bb214:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb207
bb215:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb207
bb216:
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
bb217:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb200
bb218:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb200
bb219:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb200
bb220:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb200
bb221:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb177
bb222:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb177
bb223:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb177
bb224:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb177
bb225:
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
bb226:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 93
  SLTIU s0, s0, 1
  BNE s0, zero, bb227
  JAL zero, bb175
bb227:
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
bb228:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb229:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb230:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb231:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb169
bb232:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb233
bb233:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb239
  # implict jump to bb234
bb234:
  LA s0, pos
  LW s0, 0(s0)
  SLT s0, s0, s2
  XORI s0, s0, 1
  BNE s0, zero, bb238
  # implict jump to bb235
bb235:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 34
  BNE s0, zero, bb237
  # implict jump to bb236
bb236:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb22
bb237:
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
bb238:
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
bb239:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 34
  SLTIU s0, s0, 1
  BNE s0, zero, bb234
  # implict jump to bb240
bb240:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 92
  SLTIU s0, s0, 1
  BNE s0, zero, bb242
  # implict jump to bb241
bb241:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb233
bb242:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 2
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb233
bb243:
  SLLIW s0, s3, 2
  ADD s0, s1, s0
  LW s4, 0(s0)
  XORI s4, s4, 43
  SLTIU s4, s4, 1
  BNE s4, zero, bb293
  # implict jump to bb244
bb244:
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb292
  # implict jump to bb245
bb245:
  LA s0, pos
  LW s0, 0(s0)
  SLT s4, s0, s2
  XORI s4, s4, 1
  BNE s4, zero, bb291
  # implict jump to bb246
bb246:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb288
  # implict jump to bb247
bb247:
  ADD s4, zero, zero
  # implict jump to bb248
bb248:
  SLTIU s0, s4, 1
  BNE s0, zero, bb287
  # implict jump to bb249
bb249:
  # implict jump to bb250
bb250:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb280
  # implict jump to bb251
bb251:
  BLT s0, s2, bb269
  # implict jump to bb252
bb252:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb253
  JAL zero, bb22
bb253:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 101
  SLTIU s0, s0, 1
  BNE s0, zero, bb254
  JAL zero, bb22
bb254:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  BLT s0, s2, bb267
  # implict jump to bb255
bb255:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb265
  # implict jump to bb256
bb256:
  # implict jump to bb257
bb257:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb258
  JAL zero, bb22
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
  BNE s0, zero, bb22
  # implict jump to bb261
bb261:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb257
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
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb266
  JAL zero, bb256
bb266:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb256
bb267:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb268
  JAL zero, bb255
bb268:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb255
bb269:
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 46
  SLTIU s0, s0, 1
  BNE s0, zero, bb270
  JAL zero, bb252
bb270:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb271
  JAL zero, bb252
bb271:
  # implict jump to bb272
bb272:
  LA s0, pos
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb277
  # implict jump to bb273
bb273:
  ADD s4, zero, zero
  # implict jump to bb274
bb274:
  XORI s0, s4, 1
  BNE s0, zero, bb252
  # implict jump to bb275
bb275:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  # implict jump to bb276
bb276:
  LA s0, pos
  LW s0, 0(s0)
  BLT s0, s2, bb272
  JAL zero, bb252
bb277:
  ADDI s5, zero, 57
  SLT s0, s5, s0
  XORI s0, s0, 1
  BNE s0, zero, bb279
  # implict jump to bb278
bb278:
  ADD s4, zero, zero
  JAL zero, bb274
bb279:
  ADDI s4, zero, 1
  JAL zero, bb274
bb280:
  SLLIW s4, s0, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  SLTI s5, s4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb284
  # implict jump to bb281
bb281:
  ADD s5, zero, zero
  # implict jump to bb282
bb282:
  XORI s4, s5, 1
  BNE s4, zero, bb251
  # implict jump to bb283
bb283:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb250
bb284:
  ADDI s6, zero, 57
  SLT s4, s6, s4
  XORI s4, s4, 1
  BNE s4, zero, bb286
  # implict jump to bb285
bb285:
  ADD s5, zero, zero
  JAL zero, bb282
bb286:
  ADDI s5, zero, 1
  JAL zero, bb282
bb287:
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
bb288:
  ADDI s5, zero, 57
  SLT s0, s5, s0
  XORI s0, s0, 1
  BNE s0, zero, bb290
  # implict jump to bb289
bb289:
  ADD s4, zero, zero
  JAL zero, bb248
bb290:
  ADDI s4, zero, 1
  JAL zero, bb248
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb292:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb245
bb293:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, pos
  SW s0, 0(s4)
  JAL zero, bb245
bb294:
  SLLIW s0, s3, 2
  ADD s0, s1, s0
  LW s3, 0(s0)
  XORI s3, s3, 123
  SLTIU s3, s3, 1
  BNE s3, zero, bb317
  # implict jump to bb295
bb295:
  LW s3, 0(s0)
  XORI s3, s3, 91
  SLTIU s3, s3, 1
  BNE s3, zero, bb316
  # implict jump to bb296
bb296:
  LW s3, 0(s0)
  XORI s3, s3, 34
  SLTIU s3, s3, 1
  BNE s3, zero, bb315
  # implict jump to bb297
bb297:
  LW s3, 0(s0)
  SLTI s4, s3, 48
  XORI s4, s4, 1
  BNE s4, zero, bb312
  # implict jump to bb298
bb298:
  ADD s4, zero, zero
  # implict jump to bb299
bb299:
  XORI s3, s4, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb311
  # implict jump to bb300
bb300:
  LW s3, 0(s0)
  XORI s3, s3, 43
  SLTIU s3, s3, 1
  BNE s3, zero, bb310
  # implict jump to bb301
bb301:
  LW s3, 0(s0)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb309
  # implict jump to bb302
bb302:
  LW s3, 0(s0)
  XORI s3, s3, 116
  SLTIU s3, s3, 1
  BNE s3, zero, bb308
  # implict jump to bb303
bb303:
  LW s3, 0(s0)
  XORI s3, s3, 102
  SLTIU s3, s3, 1
  BNE s3, zero, bb307
  # implict jump to bb304
bb304:
  LW s0, 0(s0)
  XORI s0, s0, 110
  SLTIU s0, s0, 1
  BNE s0, zero, bb306
  # implict jump to bb305
bb305:
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
bb306:
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
bb307:
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
bb308:
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
bb309:
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
bb310:
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
bb311:
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
bb312:
  ADDI s5, zero, 57
  SLT s3, s5, s3
  XORI s3, s3, 1
  BNE s3, zero, bb314
  # implict jump to bb313
bb313:
  ADD s4, zero, zero
  JAL zero, bb299
bb314:
  ADDI s4, zero, 1
  JAL zero, bb299
bb315:
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
bb316:
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
bb317:
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
bb318:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb2
bb319:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb2
bb320:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb2
bb321:
  LA s4, pos
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, pos
  SW s4, 0(s5)
  JAL zero, bb2
bb322:
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
  SD s8, 72(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s3, s2, 35
  BNE s3, zero, bb348
  # implict jump to bb324
bb324:
  ADD s3, zero, zero
  # implict jump to bb325
bb325:
  # implict jump to bb326
bb326:
  ADD s5, s3, zero
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb331
  # implict jump to bb327
bb327:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb347
  # implict jump to bb328
bb328:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb346
  # implict jump to bb329
bb329:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb345
  # implict jump to bb330
bb330:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb344
  # implict jump to bb331
bb331:
  ADD a0, zero, zero
  LA s3, buffer
  ADD a1, s3, zero
  ADD a2, s5, zero
  CALL detect_item
  ADD s3, a0, zero
  # implict jump to bb332
bb332:
  LA s6, pos
  LW s6, 0(s6)
  SLT s7, s6, s5
  XORI s7, s7, 1
  BNE s7, zero, bb337
  # implict jump to bb333
bb333:
  SLLIW s6, s6, 2
  LA s7, buffer
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 32
  SLTIU s7, s7, 1
  BNE s7, zero, bb343
  # implict jump to bb334
bb334:
  LW s7, 0(s6)
  XORI s7, s7, 9
  SLTIU s7, s7, 1
  BNE s7, zero, bb342
  # implict jump to bb335
bb335:
  LW s7, 0(s6)
  XORI s7, s7, 10
  SLTIU s7, s7, 1
  BNE s7, zero, bb341
  # implict jump to bb336
bb336:
  LW s6, 0(s6)
  XORI s6, s6, 13
  SLTIU s6, s6, 1
  BNE s6, zero, bb340
  # implict jump to bb337
bb337:
  BNE s3, zero, bb339
  # implict jump to bb338
bb338:
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb339:
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb340:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb332
bb341:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb332
bb342:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb332
bb343:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb332
bb344:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s3, s0, zero
  JAL zero, bb326
bb345:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s3, s0, zero
  JAL zero, bb326
bb346:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s3, s0, zero
  JAL zero, bb326
bb347:
  LA s6, pos
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, pos
  SW s6, 0(s7)
  ADD s3, s0, zero
  JAL zero, bb326
bb348:
  # implict jump to bb349
bb349:
  ADD s4, zero, zero
  # implict jump to bb350
bb350:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLLIW s7, s5, 2
  LA s8, buffer
  ADD s7, s8, s7
  SW s6, 0(s7)
  ADDIW s0, s5, 1
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb351
bb351:
  XORI s5, s1, 35
  BNE s5, zero, bb353
  # implict jump to bb352
bb352:
  ADD s3, s0, zero
  JAL zero, bb325
bb353:
  ADD s2, s1, zero
  ADD s4, s0, zero
  JAL zero, bb350
skip_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  # implict jump to bb355
bb355:
  LA s0, pos
  LW s0, 0(s0)
  SLT s1, s0, a1
  XORI s1, s1, 1
  BNE s1, zero, bb360
  # implict jump to bb356
bb356:
  SLLIW s0, s0, 2
  ADD s0, a0, s0
  LW s1, 0(s0)
  XORI s1, s1, 32
  SLTIU s1, s1, 1
  BNE s1, zero, bb364
  # implict jump to bb357
bb357:
  LW s1, 0(s0)
  XORI s1, s1, 9
  SLTIU s1, s1, 1
  BNE s1, zero, bb363
  # implict jump to bb358
bb358:
  LW s1, 0(s0)
  XORI s1, s1, 10
  SLTIU s1, s1, 1
  BNE s1, zero, bb362
  # implict jump to bb359
bb359:
  LW s0, 0(s0)
  XORI s0, s0, 13
  SLTIU s0, s0, 1
  BNE s0, zero, bb361
  # implict jump to bb360
bb360:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb361:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb355
bb362:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb355
bb363:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb355
bb364:
  LA s0, pos
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb355
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb367
  # implict jump to bb366
bb366:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb367:
  ADDI s1, zero, 57
  SLT s0, s1, s0
  XORI s0, s0, 1
  BNE s0, zero, bb369
  # implict jump to bb368
bb368:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb369:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
