.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD s4, 8(sp)
  SD ra, 16(sp)
  SD s7, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  LA s0, k
  LUI s1, 1
  ADDI s1, s1, -707
  SW s1, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -707
  LUI s1, 2
  ADDI s1, s1, 1808
  SLT s2, s0, s1
  BNE s2, zero, bb1
  JAL zero, bb2
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
  LD s8, 0(sp)
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  ADDI s4, zero, 10
  SLT s5, s4, s2
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s4, zero, 88
  SUBW s5, s2, s4
  SLTI s4, s5, 1000
  BNE s4, zero, bb6
  JAL zero, bb8
bb5:
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb2
bb6:
  ADDI s4, zero, 10
  SUBW s6, s5, s4
  ADDIW s4, s6, 11
  ADDIW s6, s4, 11
  ADDI s4, zero, 11
  ADDI s7, zero, 11
  ADD s8, s6, zero
  ADDI s6, zero, 10
  JAL zero, bb7
bb7:
  ADD s0, s4, zero
  ADD s1, s7, zero
  ADD s2, s8, zero
  ADD s3, s6, zero
  JAL zero, bb3
bb8:
  ADD s4, s0, zero
  ADD s7, s1, zero
  ADD s8, s5, zero
  ADD s6, s3, zero
  JAL zero, bb7
