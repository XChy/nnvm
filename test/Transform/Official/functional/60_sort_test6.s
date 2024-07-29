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
  BNE s5, zero, bb20
  # implict jump to bb1
bb1:
  ADDI s6, zero, 0
  BLT s6, a2, bb15
  # implict jump to bb2
bb2:
  ADDI s7, zero, 1
  SLTI s7, s7, 10
  BNE s7, zero, bb10
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
  # implict jump to bb6
bb6:
  ADD s8, a2, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s3, s9, s10
  SLLIW s9, s3, 2
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
  # implict jump to bb8
bb8:
  ADDI s9, zero, 0
  BLT s9, s3, bb9
  JAL zero, bb4
bb9:
  ADD s8, s3, zero
  JAL zero, bb7
bb10:
  ADDI s7, zero, 1
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
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
  ADDIW s0, s8, 1
  # implict jump to bb13
bb13:
  SLTI s8, s0, 10
  BNE s8, zero, bb14
  JAL zero, bb3
bb14:
  ADD s7, s0, zero
  JAL zero, bb12
bb15:
  # implict jump to bb16
bb16:
  ADD s6, zero, zero
  # implict jump to bb17
bb17:
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
  ADDIW s2, s7, 1
  # implict jump to bb18
bb18:
  BLT s2, a2, bb19
  JAL zero, bb2
bb19:
  ADD s6, s2, zero
  JAL zero, bb17
bb20:
  # implict jump to bb21
bb21:
  ADD s5, zero, zero
  # implict jump to bb22
bb22:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  ADDI s8, zero, 0
  SW s8, 0(s7)
  ADDIW s1, s6, 1
  # implict jump to bb23
bb23:
  SLTI s6, s1, 10
  BNE s6, zero, bb24
  JAL zero, bb1
bb24:
  ADD s5, s1, zero
  JAL zero, bb22
main:
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  LA s5, n
  ADDI s6, zero, 10
  SW s6, 0(s5)
  ADDI s5, zero, 4
  SW s5, 104(sp)
  ADDI s5, zero, 3
  SW s5, 108(sp)
  ADDI s5, zero, 9
  SW s5, 112(sp)
  ADDI s5, zero, 2
  SW s5, 116(sp)
  SW zero, 120(sp)
  ADDI s5, zero, 1
  SW s5, 124(sp)
  ADDI s5, zero, 6
  SW s5, 128(sp)
  ADDI s5, zero, 5
  SW s5, 132(sp)
  ADDI s5, zero, 7
  SW s5, 136(sp)
  ADDI s5, zero, 8
  SW s5, 140(sp)
  SLTI s5, zero, 10
  BNE s5, zero, bb51
  # implict jump to bb26
bb26:
  SLTI s6, zero, 10
  BNE s6, zero, bb46
  # implict jump to bb27
bb27:
  ADDI s7, zero, 1
  SLTI s7, s7, 10
  BNE s7, zero, bb41
  # implict jump to bb28
bb28:
  SLTI s8, zero, 10
  BNE s8, zero, bb36
  # implict jump to bb29
bb29:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb31
  # implict jump to bb30
bb30:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb31:
  # implict jump to bb32
bb32:
  ADD s9, zero, zero
  # implict jump to bb33
bb33:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADDI a0, sp, 144
  ADD s11, a0, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s10, 1
  # implict jump to bb34
bb34:
  LA s10, n
  LW s10, 0(s10)
  BLT s2, s10, bb35
  JAL zero, bb30
bb35:
  ADD s9, s2, zero
  JAL zero, bb33
bb36:
  ADDI s8, zero, 10
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s3, s9, s10
  SLLIW s9, s3, 2
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
  # implict jump to bb39
bb39:
  BLT zero, s3, bb40
  JAL zero, bb29
bb40:
  ADD s8, s3, zero
  JAL zero, bb38
bb41:
  ADDI s7, zero, 1
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
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
  ADDIW s1, s8, 1
  # implict jump to bb44
bb44:
  SLTI s8, s1, 10
  BNE s8, zero, bb45
  JAL zero, bb28
bb45:
  ADD s7, s1, zero
  JAL zero, bb43
bb46:
  # implict jump to bb47
bb47:
  ADD s6, zero, zero
  # implict jump to bb48
bb48:
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
  ADDIW s0, s7, 1
  # implict jump to bb49
bb49:
  SLTI s7, s0, 10
  BNE s7, zero, bb50
  JAL zero, bb27
bb50:
  ADD s6, s0, zero
  JAL zero, bb48
bb51:
  # implict jump to bb52
bb52:
  ADD s5, zero, zero
  # implict jump to bb53
bb53:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 184
  ADD s7, t5, s7
  SW zero, 0(s7)
  ADDIW s4, s6, 1
  # implict jump to bb54
bb54:
  SLTI s6, s4, 10
  BNE s6, zero, bb55
  JAL zero, bb26
bb55:
  ADD s5, s4, zero
  JAL zero, bb53
