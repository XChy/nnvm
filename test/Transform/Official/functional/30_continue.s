.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  XORI s4, s2, 50
  SLTIU s5, s4, 1
  BNE s5, zero, bb4
  JAL zero, bb5
bb3:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADDIW s4, s2, 1
  ADD s0, s3, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb5:
  ADDW s4, s3, s2
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb1
