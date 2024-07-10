.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s8, 16(sp)
  SD s7, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s6, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  LA s0, k
  LUI s1, 1
  ADDIW s1, s1, -707
  SW s1, 0(s0)
  LA s0, k
  LUI s1, 1
  ADDIW s1, s1, -706
  SW s1, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADDI s2, zero, 112
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDI s8, zero, 10
  SLT s9, s8, s5
  BNE s9, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, s5, zero
  CALL putint
  LA s8, k
  LW s9, 0(s8)
  ADD a0, s9, zero
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s8, 16(sp)
  LD s7, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s6, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  ADDI s8, zero, 88
  SUBW s9, s5, s8
  SLTI s8, s9, 1000
  BNE s8, zero, bb6
  # implict jump to bb4
bb4:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD s6, s9, zero
  ADD s9, s4, zero
  # implict jump to bb5
bb5:
  ADD s4, s9, zero
  ADD s5, s6, zero
  ADD s6, s7, zero
  ADD s7, s8, zero
  ADD s0, s7, zero
  ADD s1, s6, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb1
bb6:
  ADDIW s4, s5, -76
  ADDI s8, zero, 11
  ADDI s7, zero, 11
  ADD s6, s4, zero
  ADDI s9, zero, 10
  JAL zero, bb5
