.global main
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
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
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, zero, 10
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s3, s0, bb6
  # implict jump to bb2
bb2:
  ADD s5, zero, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  LA s7, n
  LW s7, 0(s7)
  BLT s6, s7, bb5
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  SLLIW s7, s6, 2
  ADDI a0, sp, 0
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb3
bb6:
  ADDI s5, zero, 10
  SUBW s5, s5, s3
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  ADD s8, s4, zero
  BLT s7, s5, bb9
  # implict jump to bb8
bb8:
  ADDIW s9, s3, 1
  ADD s1, s8, zero
  ADD s2, s9, zero
  JAL zero, bb1
bb9:
  SLLIW s1, s7, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDIW s7, s7, 1
  SLLIW s9, s7, 2
  ADDI t5, sp, 0
  ADD s9, t5, s9
  LW s10, 0(s9)
  BLT s10, s2, bb12
  # implict jump to bb10
bb10:
  ADD s2, s8, zero
  # implict jump to bb11
bb11:
  ADD s4, s2, zero
  ADD s6, s7, zero
  JAL zero, bb7
bb12:
  LW s8, 0(s9)
  LW s10, 0(s1)
  SW s10, 0(s9)
  SW s8, 0(s1)
  ADD s2, s8, zero
  JAL zero, bb11
bubblesort:
  ADDI sp, sp, -96
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT s3, s5, bb16
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, n
  LW s8, 0(s8)
  SUBW s8, s8, s3
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  BLT s6, s8, bb19
  # implict jump to bb18
bb18:
  ADDIW s8, s3, 1
  ADD s1, s7, zero
  ADD s2, s8, zero
  JAL zero, bb14
bb19:
  SLLIW s1, s6, 2
  ADD s1, s0, s1
  LW s2, 0(s1)
  ADDIW s6, s6, 1
  SLLIW s8, s6, 2
  ADD s8, s0, s8
  LW s9, 0(s8)
  BLT s9, s2, bb22
  # implict jump to bb20
bb20:
  ADD s2, s7, zero
  # implict jump to bb21
bb21:
  ADD s4, s2, zero
  ADD s5, s6, zero
  JAL zero, bb17
bb22:
  LW s7, 0(s8)
  LW s9, 0(s1)
  SW s9, 0(s8)
  SW s7, 0(s1)
  ADD s2, s7, zero
  JAL zero, bb21
