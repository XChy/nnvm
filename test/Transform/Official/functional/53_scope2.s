.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD ra, 96(sp)
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
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDI s8, zero, 10
  SLT s9, s8, s5
  BNE s9, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s8, zero, 88
  SUBW s9, s5, s8
  SLTI s8, s9, 1000
  BNE s8, zero, bb4
  JAL zero, bb6
bb3:
  ADD a0, s5, zero
  CALL putint
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADDIW s8, s5, -76
  ADDI s10, zero, 11
  ADDI s11, zero, 11
  ADD ra, s8, zero
  ADDI s8, zero, 10
  JAL zero, bb5
bb5:
  ADD t0, s8, zero
  ADD t1, ra, zero
  ADD t2, s11, zero
  ADD a0, s10, zero
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, t0, zero
  JAL zero, bb1
bb6:
  ADD s10, s7, zero
  ADD s11, s6, zero
  ADD ra, s9, zero
  ADD s8, s4, zero
  JAL zero, bb5
