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
  ADDI sp, sp, -144
  SD s9, 56(sp)
  SD s8, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD ra, 136(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb308
  # implict jump to bb1
bb1:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb307
  # implict jump to bb3
bb3:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb306
  # implict jump to bb4
bb4:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb305
  # implict jump to bb5
bb5:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb304
  # implict jump to bb6
bb6:
  XOR s3, s0, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb280
  # implict jump to bb7
bb7:
  XORI s3, s0, 1
  SLTIU s4, s3, 1
  BNE s4, zero, bb232
  # implict jump to bb8
bb8:
  XORI s3, s0, 2
  SLTIU s4, s3, 1
  BNE s4, zero, bb221
  # implict jump to bb9
bb9:
  XORI s3, s0, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb161
  # implict jump to bb10
bb10:
  XORI s3, s0, 4
  SLTIU s4, s3, 1
  BNE s4, zero, bb51
  # implict jump to bb11
bb11:
  XORI s3, s0, 5
  SLTIU s4, s3, 1
  BNE s4, zero, bb40
  # implict jump to bb12
bb12:
  XORI s3, s0, 6
  SLTIU s4, s3, 1
  BNE s4, zero, bb27
  # implict jump to bb13
bb13:
  XORI s3, s0, 7
  SLTIU s4, s3, 1
  BNE s4, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb15:
  ADDI s3, zero, 110
  SW s3, 0(sp)
  ADDI s3, sp, 4
  ADDI s4, zero, 117
  SW s4, 0(s3)
  ADDI s4, sp, 8
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 12
  ADDI s6, zero, 108
  SW s6, 0(s5)
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 3
  SLT s7, s6, s2
  XORI s6, s7, 1
  BNE s6, zero, bb26
  # implict jump to bb16
bb16:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  LW s7, 0(sp)
  XOR s8, s6, s7
  SLTU s6, zero, s8
  BNE s6, zero, bb25
  # implict jump to bb17
bb17:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  SLLIW s7, s6, 2
  ADD s6, s1, s7
  LW s7, 0(s6)
  LW s6, 0(s3)
  XOR s3, s7, s6
  SLTU s6, zero, s3
  BNE s6, zero, bb24
  # implict jump to bb18
bb18:
  LA s3, pos
  LW s6, 0(s3)
  ADDIW s3, s6, 2
  SLLIW s6, s3, 2
  ADD s3, s1, s6
  LW s6, 0(s3)
  LW s3, 0(s4)
  XOR s4, s6, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb23
  # implict jump to bb19
bb19:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  SLLIW s4, s3, 2
  ADD s3, s1, s4
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb22
  # implict jump to bb20
bb20:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb21
bb21:
  ADDI a0, zero, 1
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb22:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb23:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb24:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb25:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb26:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb27:
  ADDI s3, zero, 102
  SW s3, 16(sp)
  ADDI s3, sp, 20
  ADDI s4, zero, 97
  SW s4, 0(s3)
  ADDI s4, sp, 24
  ADDI s5, zero, 108
  SW s5, 0(s4)
  ADDI s5, sp, 28
  ADDI s6, zero, 115
  SW s6, 0(s5)
  ADDI s6, sp, 32
  ADDI s7, zero, 101
  SW s7, 0(s6)
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 4
  SLT s8, s7, s2
  XORI s7, s8, 1
  BNE s7, zero, bb39
  # implict jump to bb28
bb28:
  LA s7, pos
  LW s8, 0(s7)
  SLLIW s7, s8, 2
  ADD s8, s1, s7
  LW s7, 0(s8)
  LW s8, 16(sp)
  XOR s9, s7, s8
  SLTU s7, zero, s9
  BNE s7, zero, bb38
  # implict jump to bb29
bb29:
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  SLLIW s8, s7, 2
  ADD s7, s1, s8
  LW s8, 0(s7)
  LW s7, 0(s3)
  XOR s3, s8, s7
  SLTU s7, zero, s3
  BNE s7, zero, bb37
  # implict jump to bb30
bb30:
  LA s3, pos
  LW s7, 0(s3)
  ADDIW s3, s7, 2
  SLLIW s7, s3, 2
  ADD s3, s1, s7
  LW s7, 0(s3)
  LW s3, 0(s4)
  XOR s4, s7, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb36
  # implict jump to bb31
bb31:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  SLLIW s4, s3, 2
  ADD s3, s1, s4
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb35
  # implict jump to bb32
bb32:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  SLLIW s4, s3, 2
  ADD s3, s1, s4
  LW s4, 0(s3)
  LW s3, 0(s6)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb34
  # implict jump to bb33
bb33:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 5
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb21
bb34:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb35:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb36:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb37:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb38:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb39:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb40:
  ADDI s3, zero, 116
  SW s3, 40(sp)
  ADDI s3, sp, 44
  ADDI s4, zero, 114
  SW s4, 0(s3)
  ADDI s4, sp, 48
  ADDI s5, zero, 117
  SW s5, 0(s4)
  ADDI s5, sp, 52
  ADDI s6, zero, 101
  SW s6, 0(s5)
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 3
  SLT s7, s6, s2
  XORI s6, s7, 1
  BNE s6, zero, bb50
  # implict jump to bb41
bb41:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  LW s7, 40(sp)
  XOR s8, s6, s7
  SLTU s6, zero, s8
  BNE s6, zero, bb49
  # implict jump to bb42
bb42:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  SLLIW s7, s6, 2
  ADD s6, s1, s7
  LW s7, 0(s6)
  LW s6, 0(s3)
  XOR s3, s7, s6
  SLTU s6, zero, s3
  BNE s6, zero, bb48
  # implict jump to bb43
bb43:
  LA s3, pos
  LW s6, 0(s3)
  ADDIW s3, s6, 2
  SLLIW s6, s3, 2
  ADD s3, s1, s6
  LW s6, 0(s3)
  LW s3, 0(s4)
  XOR s4, s6, s3
  SLTU s3, zero, s4
  BNE s3, zero, bb47
  # implict jump to bb44
bb44:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 3
  SLLIW s4, s3, 2
  ADD s3, s1, s4
  LW s4, 0(s3)
  LW s3, 0(s5)
  XOR s5, s4, s3
  SLTU s3, zero, s5
  BNE s3, zero, bb46
  # implict jump to bb45
bb45:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 4
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb21
bb46:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb47:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb48:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb49:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb50:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb51:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb52
bb52:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb57
  # implict jump to bb53
bb53:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb160
  # implict jump to bb54
bb54:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb159
  # implict jump to bb55
bb55:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb158
  # implict jump to bb56
bb56:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb157
  # implict jump to bb57
bb57:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb155
  # implict jump to bb58
bb58:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb154
  # implict jump to bb59
bb59:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb64
  # implict jump to bb60
bb60:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb153
  # implict jump to bb61
bb61:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb152
  # implict jump to bb62
bb62:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb151
  # implict jump to bb63
bb63:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb150
  # implict jump to bb64
bb64:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb149
  # implict jump to bb65
bb65:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 58
  SLTU s3, zero, s4
  BNE s3, zero, bb148
  # implict jump to bb66
bb66:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb67
bb67:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb72
  # implict jump to bb68
bb68:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb147
  # implict jump to bb69
bb69:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb146
  # implict jump to bb70
bb70:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb145
  # implict jump to bb71
bb71:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb144
  # implict jump to bb72
bb72:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb143
  # implict jump to bb73
bb73:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb78
  # implict jump to bb74
bb74:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb142
  # implict jump to bb75
bb75:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb141
  # implict jump to bb76
bb76:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb140
  # implict jump to bb77
bb77:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb139
  # implict jump to bb78
bb78:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 44
  SLTIU s3, s4, 1
  BNE s3, zero, bb93
  # implict jump to bb79
bb79:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb84
  # implict jump to bb80
bb80:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb92
  # implict jump to bb81
bb81:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb91
  # implict jump to bb82
bb82:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb90
  # implict jump to bb83
bb83:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb89
  # implict jump to bb84
bb84:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb88
  # implict jump to bb85
bb85:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 125
  SLTU s3, zero, s4
  BNE s3, zero, bb87
  # implict jump to bb86
bb86:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb21
bb87:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb88:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb89:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb79
bb90:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb79
bb91:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb79
bb92:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb79
bb93:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb94
bb94:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb99
  # implict jump to bb95
bb95:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb138
  # implict jump to bb96
bb96:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb137
  # implict jump to bb97
bb97:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb136
  # implict jump to bb98
bb98:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb135
  # implict jump to bb99
bb99:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb134
  # implict jump to bb100
bb100:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb105
  # implict jump to bb101
bb101:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb133
  # implict jump to bb102
bb102:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb132
  # implict jump to bb103
bb103:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb131
  # implict jump to bb104
bb104:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb130
  # implict jump to bb105
bb105:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb129
  # implict jump to bb106
bb106:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 58
  SLTU s3, zero, s4
  BNE s3, zero, bb128
  # implict jump to bb107
bb107:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb108
bb108:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb113
  # implict jump to bb109
bb109:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb127
  # implict jump to bb110
bb110:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb126
  # implict jump to bb111
bb111:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb125
  # implict jump to bb112
bb112:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb124
  # implict jump to bb113
bb113:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb123
  # implict jump to bb114
bb114:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb78
  # implict jump to bb115
bb115:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb122
  # implict jump to bb116
bb116:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb121
  # implict jump to bb117
bb117:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb120
  # implict jump to bb118
bb118:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb119
  JAL zero, bb78
bb119:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb114
bb120:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb114
bb121:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb114
bb122:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb114
bb123:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb124:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb108
bb125:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb108
bb126:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb108
bb127:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb108
bb128:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb129:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb130:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb100
bb131:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb100
bb132:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb100
bb133:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb100
bb134:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb135:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb94
bb136:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb94
bb137:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb94
bb138:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb94
bb139:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb73
bb140:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb73
bb141:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb73
bb142:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb73
bb143:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb144:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb67
bb145:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb67
bb146:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb67
bb147:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb67
bb148:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb149:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb150:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb151:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb152:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb153:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb59
bb154:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb155:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 125
  SLTIU s3, s4, 1
  BNE s3, zero, bb156
  JAL zero, bb58
bb156:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb157:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb52
bb158:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb52
bb159:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb52
bb160:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb52
bb161:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb162
bb162:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb167
  # implict jump to bb163
bb163:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb220
  # implict jump to bb164
bb164:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb219
  # implict jump to bb165
bb165:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb218
  # implict jump to bb166
bb166:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb217
  # implict jump to bb167
bb167:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb215
  # implict jump to bb168
bb168:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb214
  # implict jump to bb169
bb169:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb174
  # implict jump to bb170
bb170:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb213
  # implict jump to bb171
bb171:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb212
  # implict jump to bb172
bb172:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb211
  # implict jump to bb173
bb173:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb210
  # implict jump to bb174
bb174:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 44
  SLTIU s3, s4, 1
  BNE s3, zero, bb189
  # implict jump to bb175
bb175:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb180
  # implict jump to bb176
bb176:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb188
  # implict jump to bb177
bb177:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb187
  # implict jump to bb178
bb178:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb186
  # implict jump to bb179
bb179:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb185
  # implict jump to bb180
bb180:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb184
  # implict jump to bb181
bb181:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 93
  SLTU s3, zero, s4
  BNE s3, zero, bb183
  # implict jump to bb182
bb182:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb21
bb183:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb184:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb185:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb175
bb186:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb175
bb187:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb175
bb188:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb175
bb189:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb190
bb190:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb195
  # implict jump to bb191
bb191:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb209
  # implict jump to bb192
bb192:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb208
  # implict jump to bb193
bb193:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb207
  # implict jump to bb194
bb194:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb206
  # implict jump to bb195
bb195:
  ADD a0, zero, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb205
  # implict jump to bb196
bb196:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb174
  # implict jump to bb197
bb197:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 32
  SLTIU s3, s4, 1
  BNE s3, zero, bb204
  # implict jump to bb198
bb198:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 9
  SLTIU s3, s4, 1
  BNE s3, zero, bb203
  # implict jump to bb199
bb199:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb202
  # implict jump to bb200
bb200:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 13
  SLTIU s3, s4, 1
  BNE s3, zero, bb201
  JAL zero, bb174
bb201:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb196
bb202:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb196
bb203:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb196
bb204:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb196
bb205:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb206:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb190
bb207:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb190
bb208:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb190
bb209:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb190
bb210:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb169
bb211:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb169
bb212:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb169
bb213:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb169
bb214:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb215:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 93
  SLTIU s3, s4, 1
  BNE s3, zero, bb216
  JAL zero, bb168
bb216:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  ADDI a0, zero, 1
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb217:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb162
bb218:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb162
bb219:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb162
bb220:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb162
bb221:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  # implict jump to bb222
bb222:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  BNE s3, zero, bb228
  # implict jump to bb223
bb223:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb227
  # implict jump to bb224
bb224:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 34
  SLTU s3, zero, s4
  BNE s3, zero, bb226
  # implict jump to bb225
bb225:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb21
bb226:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb227:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb228:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 34
  SLTIU s3, s4, 1
  BNE s3, zero, bb223
  # implict jump to bb229
bb229:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 92
  SLTIU s3, s4, 1
  BNE s3, zero, bb231
  # implict jump to bb230
bb230:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb222
bb231:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 2
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb222
bb232:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 43
  SLTIU s3, s4, 1
  BNE s3, zero, bb279
  # implict jump to bb233
bb233:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 45
  SLTIU s3, s4, 1
  BNE s3, zero, bb278
  # implict jump to bb234
bb234:
  LA s3, pos
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb277
  # implict jump to bb235
bb235:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  SLTI s4, s3, 48
  XORI s5, s4, 1
  BNE s5, zero, bb274
  # implict jump to bb236
bb236:
  ADD s3, zero, zero
  # implict jump to bb237
bb237:
  ADD s4, s3, zero
  XOR s5, s4, zero
  SLTIU s4, s5, 1
  BNE s4, zero, bb273
  # implict jump to bb238
bb238:
  LA s4, pos
  LW s5, 0(s4)
  SLT s4, s5, s2
  BNE s4, zero, bb266
  # implict jump to bb239
bb239:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb256
  # implict jump to bb240
bb240:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb241
  JAL zero, bb21
bb241:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  XORI s7, s6, 101
  SLTIU s6, s7, 1
  BNE s6, zero, bb242
  JAL zero, bb21
bb242:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  SLT s7, s6, s2
  BNE s7, zero, bb254
  # implict jump to bb243
bb243:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb252
  # implict jump to bb244
bb244:
  LA s6, pos
  LW s7, 0(s6)
  SLT s6, s7, s2
  BNE s6, zero, bb245
  JAL zero, bb21
bb245:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb249
  # implict jump to bb246
bb246:
  ADD s6, zero, zero
  # implict jump to bb247
bb247:
  ADD s7, s6, zero
  XORI s8, s7, 1
  SLTU s7, zero, s8
  BNE s7, zero, bb21
  # implict jump to bb248
bb248:
  LA s7, pos
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, pos
  SW s7, 0(s8)
  JAL zero, bb244
bb249:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  BNE s6, zero, bb251
  # implict jump to bb250
bb250:
  ADD s6, zero, zero
  JAL zero, bb247
bb251:
  ADDI s6, zero, 1
  JAL zero, bb247
bb252:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  XORI s7, s6, 45
  SLTIU s6, s7, 1
  BNE s6, zero, bb253
  JAL zero, bb244
bb253:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb244
bb254:
  LA s6, pos
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  XORI s7, s6, 43
  SLTIU s6, s7, 1
  BNE s6, zero, bb255
  JAL zero, bb243
bb255:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb243
bb256:
  LA s5, pos
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  ADD s6, s1, s5
  LW s5, 0(s6)
  XORI s6, s5, 46
  SLTIU s5, s6, 1
  BNE s5, zero, bb257
  JAL zero, bb240
bb257:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  # implict jump to bb258
bb258:
  LA s5, pos
  LW s6, 0(s5)
  SLT s5, s6, s2
  BNE s5, zero, bb259
  JAL zero, bb240
bb259:
  LA s5, pos
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  ADD s6, s1, s5
  LW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb263
  # implict jump to bb260
bb260:
  ADD s5, zero, zero
  # implict jump to bb261
bb261:
  ADD s6, s5, zero
  XORI s7, s6, 1
  SLTU s6, zero, s7
  BNE s6, zero, bb240
  # implict jump to bb262
bb262:
  LA s6, pos
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, pos
  SW s6, 0(s7)
  JAL zero, bb258
bb263:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  BNE s5, zero, bb265
  # implict jump to bb264
bb264:
  ADD s5, zero, zero
  JAL zero, bb261
bb265:
  ADDI s5, zero, 1
  JAL zero, bb261
bb266:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s6, s5, 1
  BNE s6, zero, bb270
  # implict jump to bb267
bb267:
  ADD s4, zero, zero
  # implict jump to bb268
bb268:
  ADD s5, s4, zero
  XORI s6, s5, 1
  SLTU s5, zero, s6
  BNE s5, zero, bb239
  # implict jump to bb269
bb269:
  LA s5, pos
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, pos
  SW s5, 0(s6)
  JAL zero, bb238
bb270:
  ADDI s5, zero, 57
  SLT s6, s5, s4
  XORI s4, s6, 1
  BNE s4, zero, bb272
  # implict jump to bb271
bb271:
  ADD s4, zero, zero
  JAL zero, bb268
bb272:
  ADDI s4, zero, 1
  JAL zero, bb268
bb273:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb274:
  ADDI s4, zero, 57
  SLT s5, s4, s3
  XORI s3, s5, 1
  BNE s3, zero, bb276
  # implict jump to bb275
bb275:
  ADD s3, zero, zero
  JAL zero, bb237
bb276:
  ADDI s3, zero, 1
  JAL zero, bb237
bb277:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb278:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb234
bb279:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb234
bb280:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 123
  SLTIU s3, s4, 1
  BNE s3, zero, bb303
  # implict jump to bb281
bb281:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 91
  SLTIU s3, s4, 1
  BNE s3, zero, bb302
  # implict jump to bb282
bb282:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  XORI s4, s3, 34
  SLTIU s3, s4, 1
  BNE s3, zero, bb301
  # implict jump to bb283
bb283:
  LA s3, pos
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  ADD s4, s1, s3
  LW s3, 0(s4)
  SLTI s4, s3, 48
  XORI s5, s4, 1
  BNE s5, zero, bb298
  # implict jump to bb284
bb284:
  ADD s3, zero, zero
  # implict jump to bb285
bb285:
  ADD s4, s3, zero
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb297
  # implict jump to bb286
bb286:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  XORI s5, s4, 43
  SLTIU s4, s5, 1
  BNE s4, zero, bb296
  # implict jump to bb287
bb287:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  XORI s5, s4, 45
  SLTIU s4, s5, 1
  BNE s4, zero, bb295
  # implict jump to bb288
bb288:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  XORI s5, s4, 116
  SLTIU s4, s5, 1
  BNE s4, zero, bb294
  # implict jump to bb289
bb289:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  XORI s5, s4, 102
  SLTIU s4, s5, 1
  BNE s4, zero, bb293
  # implict jump to bb290
bb290:
  LA s4, pos
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  ADD s5, s1, s4
  LW s4, 0(s5)
  XORI s5, s4, 110
  SLTIU s4, s5, 1
  BNE s4, zero, bb292
  # implict jump to bb291
bb291:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb292:
  ADDI a0, zero, 7
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb293:
  ADDI a0, zero, 6
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb294:
  ADDI a0, zero, 5
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb295:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb296:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb297:
  ADDI a0, zero, 1
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s4, a0, zero
  ADD a0, s4, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb298:
  ADDI s4, zero, 57
  SLT s5, s4, s3
  XORI s3, s5, 1
  BNE s3, zero, bb300
  # implict jump to bb299
bb299:
  ADD s3, zero, zero
  JAL zero, bb285
bb300:
  ADDI s3, zero, 1
  JAL zero, bb285
bb301:
  ADDI a0, zero, 2
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb302:
  ADDI a0, zero, 3
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb303:
  ADDI a0, zero, 4
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL detect_item
  ADD s3, a0, zero
  ADD a0, s3, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb304:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb1
bb305:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb1
bb306:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb1
bb307:
  LA s3, pos
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, pos
  SW s3, 0(s4)
  JAL zero, bb1
bb308:
  ADD a0, zero, zero
  LD s9, 56(sp)
  LD s8, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb310
bb310:
  ADD s0, s2, zero
  ADD s3, s1, zero
  XORI s4, s0, 35
  SLTU s5, zero, s4
  BNE s5, zero, bb333
  # implict jump to bb311
bb311:
  LA s0, pos
  LW s1, 0(s0)
  SLT s0, s1, s3
  XORI s1, s0, 1
  BNE s1, zero, bb316
  # implict jump to bb312
bb312:
  LA s0, pos
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, buffer
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 32
  SLTIU s0, s1, 1
  BNE s0, zero, bb332
  # implict jump to bb313
bb313:
  LA s0, pos
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, buffer
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 9
  SLTIU s0, s1, 1
  BNE s0, zero, bb331
  # implict jump to bb314
bb314:
  LA s0, pos
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, buffer
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb330
  # implict jump to bb315
bb315:
  LA s0, pos
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, buffer
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 13
  SLTIU s0, s1, 1
  BNE s0, zero, bb329
  # implict jump to bb316
bb316:
  ADD a0, zero, zero
  LA s0, buffer
  ADD a1, s0, zero
  ADD a2, s3, zero
  CALL detect_item
  ADD s0, a0, zero
  # implict jump to bb317
bb317:
  LA s1, pos
  LW s2, 0(s1)
  SLT s1, s2, s3
  XORI s2, s1, 1
  BNE s2, zero, bb322
  # implict jump to bb318
bb318:
  LA s1, pos
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, buffer
  ADD s4, s2, s1
  LW s1, 0(s4)
  XORI s2, s1, 32
  SLTIU s1, s2, 1
  BNE s1, zero, bb328
  # implict jump to bb319
bb319:
  LA s1, pos
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, buffer
  ADD s4, s2, s1
  LW s1, 0(s4)
  XORI s2, s1, 9
  SLTIU s1, s2, 1
  BNE s1, zero, bb327
  # implict jump to bb320
bb320:
  LA s1, pos
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, buffer
  ADD s4, s2, s1
  LW s1, 0(s4)
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  BNE s1, zero, bb326
  # implict jump to bb321
bb321:
  LA s1, pos
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, buffer
  ADD s4, s2, s1
  LW s1, 0(s4)
  XORI s2, s1, 13
  SLTIU s1, s2, 1
  BNE s1, zero, bb325
  # implict jump to bb322
bb322:
  XOR s1, s0, zero
  SLTU s2, zero, s1
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb325:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb317
bb326:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb317
bb327:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb317
bb328:
  LA s1, pos
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, pos
  SW s1, 0(s2)
  JAL zero, bb317
bb329:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb311
bb330:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb311
bb331:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb311
bb332:
  LA s0, pos
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, pos
  SW s0, 0(s1)
  JAL zero, bb311
bb333:
  SLLIW s4, s3, 2
  LA s5, buffer
  ADD s6, s5, s4
  SW s0, 0(s6)
  ADDIW s0, s3, 1
  CALL getch
  ADD s4, a0, zero
  ADD s1, s0, zero
  ADD s2, s4, zero
  JAL zero, bb310
skip_space:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  # implict jump to bb335
bb335:
  LA s2, pos
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb340
  # implict jump to bb336
bb336:
  LA s2, pos
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  XORI s3, s2, 32
  SLTIU s2, s3, 1
  BNE s2, zero, bb344
  # implict jump to bb337
bb337:
  LA s2, pos
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  XORI s3, s2, 9
  SLTIU s2, s3, 1
  BNE s2, zero, bb343
  # implict jump to bb338
bb338:
  LA s2, pos
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  XORI s3, s2, 10
  SLTIU s2, s3, 1
  BNE s2, zero, bb342
  # implict jump to bb339
bb339:
  LA s2, pos
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  XORI s3, s2, 13
  SLTIU s2, s3, 1
  BNE s2, zero, bb341
  # implict jump to bb340
bb340:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb341:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb342:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb343:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
bb344:
  LA s2, pos
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, pos
  SW s2, 0(s3)
  JAL zero, bb335
is_number:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb347
  # implict jump to bb346
bb346:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb347:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb349
  # implict jump to bb348
bb348:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb349:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
