.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
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
  ADD s2, zero, zero
  ADDI s3, zero, 112
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDI s8, zero, 10
  BLT s8, s4, bb3
  # implict jump to bb2
bb2:
  ADD a0, s4, zero
  CALL putint
  LA s8, k
  LW s8, 0(s8)
  ADD a0, s8, zero
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
bb3:
  ADDI s8, zero, 88
  SUBW s8, s4, s8
  SLTI s9, s8, 1000
  BNE s9, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD s0, s7, zero
  ADD s1, s6, zero
  ADD s2, s5, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb6:
  ADDIW s4, s4, -76
  ADDI s7, zero, 11
  ADDI s6, zero, 11
  ADDI s5, zero, 10
  ADD s8, s4, zero
  JAL zero, bb5
