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
  SD s7, 64(sp)
  SD ra, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  LA s0, k
  LUI s1, 1
  ADDI s1, s1, -707
  SW s1, 0(s0)
  JAL zero, bb1
bb1:
  LA s0, k
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, k
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADDI s2, zero, 112
  ADD s3, zero, zero
  JAL zero, bb3
bb2:
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
  LD s7, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDI s8, zero, 10
  SLT s9, s8, s5
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s8, zero, 88
  SUBW s9, s5, s8
  SLTI s8, s9, 1000
  BNE s8, zero, bb6
  JAL zero, bb8
bb5:
  ADD a0, s5, zero
  CALL putint
  JAL zero, bb2
bb6:
  ADDI s8, zero, 10
  SUBW s10, s9, s8
  ADDIW s8, s10, 11
  ADDIW s10, s8, 11
  ADDI s8, zero, 11
  ADDI s11, zero, 11
  ADD ra, s10, zero
  ADDI s10, zero, 10
  JAL zero, bb7
bb7:
  ADD t0, s10, zero
  ADD t1, ra, zero
  ADD t2, s11, zero
  ADD a0, s8, zero
  ADD s0, a0, zero
  ADD s1, t2, zero
  ADD s2, t1, zero
  ADD s3, t0, zero
  JAL zero, bb3
bb8:
  ADD s8, s7, zero
  ADD s11, s6, zero
  ADD ra, s9, zero
  ADD s10, s4, zero
  JAL zero, bb7
