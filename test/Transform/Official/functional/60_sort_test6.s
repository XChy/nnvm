.global counting_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
counting_sort:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD s4, a0, zero
  ADDI s5, zero, 0
  SLTI s5, s5, 10
  BNE s5, zero, bb17
  # implict jump to bb1
bb1:
  ADDI s6, zero, 0
  BLT s6, a2, bb13
  # implict jump to bb2
bb2:
  ADDI s7, zero, 1
  SLTI s7, s7, 10
  BNE s7, zero, bb9
  # implict jump to bb3
bb3:
  ADDI s8, zero, 0
  BLT s8, a2, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  ADD s8, a2, zero
  # implict jump to bb6
bb6:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s0, s9, s10
  SLLIW s9, s0, 2
  ADD s9, s4, s9
  LW s9, 0(s9)
  SLLIW s10, s9, 2
  ADDI t5, sp, 0
  ADD s10, t5, s10
  LW s11, 0(s10)
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  SW s11, 0(s10)
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s10, a1, s10
  SW s9, 0(s10)
  # implict jump to bb7
bb7:
  ADDI s9, zero, 0
  BLT s9, s0, bb8
  JAL zero, bb4
bb8:
  ADD s8, s0, zero
  JAL zero, bb6
bb9:
  ADDI s7, zero, 1
  # implict jump to bb10
bb10:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 0
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDI s11, zero, 1
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI t5, sp, 0
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  SW s10, 0(s9)
  ADDIW s2, s8, 1
  # implict jump to bb11
bb11:
  SLTI s8, s2, 10
  BNE s8, zero, bb12
  JAL zero, bb3
bb12:
  ADD s7, s2, zero
  JAL zero, bb10
bb13:
  ADD s6, zero, zero
  # implict jump to bb14
bb14:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADD s8, s4, s8
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s9, 0(s8)
  ADDIW s9, s9, 1
  SW s9, 0(s8)
  ADDIW s1, s7, 1
  # implict jump to bb15
bb15:
  BLT s1, a2, bb16
  JAL zero, bb2
bb16:
  ADD s6, s1, zero
  JAL zero, bb14
bb17:
  ADD s5, zero, zero
  # implict jump to bb18
bb18:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  ADDI s8, zero, 0
  SW s8, 0(s7)
  ADDIW s3, s6, 1
  # implict jump to bb19
bb19:
  SLTI s6, s3, 10
  BNE s6, zero, bb20
  JAL zero, bb1
bb20:
  ADD s5, s3, zero
  JAL zero, bb18
main:
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s5, n
  ADDI s6, zero, 10
  SW s6, 0(s5)
  ADDI s5, zero, 4
  SW s5, 104(sp)
  ADDI s5, sp, 108
  ADDI s6, zero, 3
  SW s6, 0(s5)
  ADDI s5, sp, 112
  ADDI s6, zero, 9
  SW s6, 0(s5)
  ADDI s5, sp, 116
  ADDI s6, zero, 2
  SW s6, 0(s5)
  ADDI s5, sp, 120
  SW zero, 0(s5)
  ADDI s5, sp, 124
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDI s5, sp, 128
  ADDI s6, zero, 6
  SW s6, 0(s5)
  ADDI s5, sp, 132
  ADDI s6, zero, 5
  SW s6, 0(s5)
  ADDI s5, sp, 136
  ADDI s6, zero, 7
  SW s6, 0(s5)
  ADDI s5, sp, 140
  ADDI s6, zero, 8
  SW s6, 0(s5)
  SLTI s5, zero, 10
  BNE s5, zero, bb43
  # implict jump to bb22
bb22:
  SLTI s6, zero, 10
  BNE s6, zero, bb39
  # implict jump to bb23
bb23:
  ADDI s7, zero, 1
  SLTI s7, s7, 10
  BNE s7, zero, bb35
  # implict jump to bb24
bb24:
  SLTI s8, zero, 10
  BNE s8, zero, bb31
  # implict jump to bb25
bb25:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb27
  # implict jump to bb26
bb26:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb27:
  ADD s9, zero, zero
  # implict jump to bb28
bb28:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADDI a0, sp, 144
  ADD s11, a0, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s10, 1
  # implict jump to bb29
bb29:
  LA s10, n
  LW s10, 0(s10)
  BLT s4, s10, bb30
  JAL zero, bb26
bb30:
  ADD s9, s4, zero
  JAL zero, bb28
bb31:
  ADDI s8, zero, 10
  # implict jump to bb32
bb32:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s1, s9, s10
  SLLIW s9, s1, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s9, 0(s9)
  SLLIW s10, s9, 2
  ADDI t5, sp, 184
  ADD s10, t5, s10
  LW s11, 0(s10)
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  SW s11, 0(s10)
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADDI t5, sp, 144
  ADD s10, t5, s10
  SW s9, 0(s10)
  # implict jump to bb33
bb33:
  BLT zero, s1, bb34
  JAL zero, bb25
bb34:
  ADD s8, s1, zero
  JAL zero, bb32
bb35:
  ADDI s7, zero, 1
  # implict jump to bb36
bb36:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 184
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDI s11, zero, 1
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI t5, sp, 184
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  SW s10, 0(s9)
  ADDIW s0, s8, 1
  # implict jump to bb37
bb37:
  SLTI s8, s0, 10
  BNE s8, zero, bb38
  JAL zero, bb24
bb38:
  ADD s7, s0, zero
  JAL zero, bb36
bb39:
  ADD s6, zero, zero
  # implict jump to bb40
bb40:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADDI t5, sp, 184
  ADD s8, t5, s8
  LW s9, 0(s8)
  ADDIW s9, s9, 1
  SW s9, 0(s8)
  ADDIW s3, s7, 1
  # implict jump to bb41
bb41:
  SLTI s7, s3, 10
  BNE s7, zero, bb42
  JAL zero, bb23
bb42:
  ADD s6, s3, zero
  JAL zero, bb40
bb43:
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 184
  ADD s7, t5, s7
  SW zero, 0(s7)
  ADDIW s2, s6, 1
  # implict jump to bb45
bb45:
  SLTI s6, s2, 10
  BNE s6, zero, bb46
  JAL zero, bb22
bb46:
  ADD s5, s2, zero
  JAL zero, bb44
