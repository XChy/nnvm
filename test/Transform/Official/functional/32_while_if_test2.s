.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s6, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 3
  ADD s4, zero, zero
  JAL zero, bb5
bb1:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s6, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  XORI s2, s1, 2
  SLTIU s6, s2, 1
  BNE s6, zero, bb3
  JAL zero, bb4
bb3:
  ADDIW s1, s1, 2
  JAL zero, bb2
bb4:
  ADDIW s3, s1, 25
  ADD s5, s3, zero
  JAL zero, bb1
bb5:
  ADD s2, s4, zero
  ADD s1, s0, zero
  SLTI s3, s2, 5
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s3, zero, 2
  MULW s6, s1, s3
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s4, s3, zero
  JAL zero, bb5
bb7:
  ADD s5, s1, zero
  JAL zero, bb1
ifWhile:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s2, 8(sp)
  SD ra, 16(sp)
  SD s5, 24(sp)
  SD s0, 32(sp)
  SD s4, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  ADDI s1, zero, 3
  ADD s4, zero, zero
  JAL zero, bb13
bb9:
  ADD s0, s6, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s2, 8(sp)
  LD ra, 16(sp)
  LD s5, 24(sp)
  LD s0, 32(sp)
  LD s4, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  XORI s2, s0, 2
  SLTIU s5, s2, 1
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW s0, s0, 2
  JAL zero, bb10
bb12:
  ADDIW s3, s0, 25
  ADD s6, s3, zero
  JAL zero, bb9
bb13:
  ADD s2, s4, zero
  ADD s0, s1, zero
  SLTI s3, s2, 5
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 2
  MULW s5, s0, s3
  ADDIW s3, s2, 1
  ADD s1, s5, zero
  ADD s4, s3, zero
  JAL zero, bb13
bb15:
  ADD s6, s0, zero
  JAL zero, bb9
