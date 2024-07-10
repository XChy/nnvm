.global main
.global insertsort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -128
  SD s8, 40(sp)
  SD s4, 48(sp)
  SD ra, 56(sp)
  SD s7, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s6, 88(sp)
  SD s1, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
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
  ADDI s0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD s8, 40(sp)
  LD s4, 48(sp)
  LD ra, 56(sp)
  LD s7, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb6:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADD s3, s4, zero
  # implict jump to bb7
bb7:
  ADD s4, s3, zero
  ADDI s5, zero, -1
  SLT s6, s5, s4
  BNE s6, zero, bb12
  # implict jump to bb8
bb8:
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  ADD s6, s5, zero
  BNE s6, zero, bb11
  # implict jump to bb10
bb10:
  ADDIW s3, s4, 1
  SLLIW s6, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s6
  SW s2, 0(s3)
  ADDIW s3, s1, 1
  ADD s0, s3, zero
  JAL zero, bb1
bb11:
  ADDIW s6, s4, 1
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s6, t5, s7
  SLLIW s7, s4, 2
  ADDI t5, sp, 0
  ADD s8, t5, s7
  LW s7, 0(s8)
  SW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s7, s4, s6
  ADD s3, s7, zero
  JAL zero, bb7
bb12:
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLT s6, s2, s5
  ADD s5, s6, zero
  JAL zero, bb9
insertsort:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  SLLIW s3, s2, 2
  ADD s4, s0, s3
  LW s3, 0(s4)
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  ADD s4, s5, zero
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  ADDI s6, zero, -1
  SLT s7, s6, s5
  BNE s7, zero, bb22
  # implict jump to bb18
bb18:
  ADD s6, zero, zero
  # implict jump to bb19
bb19:
  ADD s7, s6, zero
  BNE s7, zero, bb21
  # implict jump to bb20
bb20:
  ADDIW s4, s5, 1
  SLLIW s7, s4, 2
  ADD s4, s0, s7
  SW s3, 0(s4)
  ADDIW s4, s2, 1
  ADD s1, s4, zero
  JAL zero, bb14
bb21:
  ADDIW s7, s5, 1
  SLLIW s8, s7, 2
  ADD s7, s0, s8
  SLLIW s8, s5, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  SW s8, 0(s7)
  ADDI s7, zero, 1
  SUBW s8, s5, s7
  ADD s4, s8, zero
  JAL zero, bb17
bb22:
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s6, 0(s7)
  SLT s7, s3, s6
  ADD s6, s7, zero
  JAL zero, bb19
