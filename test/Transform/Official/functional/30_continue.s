.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  SLTI s2, s1, 100
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  XORI s2, s1, 50
  SLTIU s3, s2, 1
  BNE s3, zero, bb4
  JAL zero, bb5
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADDIW s2, s1, 1
  ADD s0, s0, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb5:
  ADDW s2, s0, s1
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb1
