.global main
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -128
  SD s9, 40(sp)
  SD s8, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD ra, 72(sp)
  SD s7, 80(sp)
  SD s4, 88(sp)
  SD s6, 96(sp)
  SD s1, 104(sp)
  SD s5, 112(sp)
  SD s0, 120(sp)
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
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s2, s6
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  ADD s4, zero, zero
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD ra, 72(sp)
  LD s7, 80(sp)
  LD s4, 88(sp)
  LD s6, 96(sp)
  LD s1, 104(sp)
  LD s5, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb3
bb6:
  ADD s4, s3, zero
  ADD s3, zero, zero
  # implict jump to bb7
bb7:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n
  LW s8, 0(s7)
  SUBW s7, s8, s2
  ADDI s8, zero, 1
  SUBW s9, s7, s8
  SLT s7, s5, s9
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW s7, s2, 1
  ADD s0, s6, zero
  ADD s1, s7, zero
  JAL zero, bb1
bb9:
  SLLIW s0, s5, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADDIW s7, s5, 1
  SLLIW s5, s7, 2
  ADDI t5, sp, 0
  ADD s8, t5, s5
  LW s5, 0(s8)
  SLT s9, s5, s0
  BNE s9, zero, bb12
  # implict jump to bb10
bb10:
  ADD s0, s6, zero
  # implict jump to bb11
bb11:
  ADD s1, s0, zero
  ADD s4, s1, zero
  ADD s3, s7, zero
  JAL zero, bb7
bb12:
  LW s5, 0(s8)
  LW s6, 0(s1)
  SW s6, 0(s8)
  SW s5, 0(s1)
  ADD s0, s5, zero
  JAL zero, bb11
bubblesort:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  ADD s5, s4, zero
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s8, s3, 1
  ADD s1, s7, zero
  ADD s2, s8, zero
  JAL zero, bb14
bb19:
  SLLIW s1, s6, 2
  ADD s2, s0, s1
  LW s1, 0(s2)
  ADDIW s8, s6, 1
  SLLIW s6, s8, 2
  ADD s9, s0, s6
  LW s6, 0(s9)
  SLT s10, s6, s1
  BNE s10, zero, bb22
  # implict jump to bb20
bb20:
  ADD s1, s7, zero
  # implict jump to bb21
bb21:
  ADD s2, s1, zero
  ADD s5, s2, zero
  ADD s4, s8, zero
  JAL zero, bb17
bb22:
  LW s6, 0(s9)
  LW s7, 0(s2)
  SW s7, 0(s9)
  SW s6, 0(s2)
  ADD s1, s6, zero
  JAL zero, bb21
