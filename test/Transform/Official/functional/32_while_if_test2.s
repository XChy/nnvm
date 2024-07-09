.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s2, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s5, 24(sp)
  SD s0, 32(sp)
  SD s4, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  ADDI s1, zero, 3
  ADD s4, zero, zero
  JAL zero, bb5
bb1:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s2, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s5, 24(sp)
  LD s0, 32(sp)
  LD s4, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  XORI s0, s3, 2
  SLTIU s6, s0, 1
  BNE s6, zero, bb3
  JAL zero, bb4
bb3:
  ADDIW s3, s3, 2
  JAL zero, bb2
bb4:
  ADDIW s2, s3, 25
  ADD s5, s2, zero
  JAL zero, bb1
bb5:
  ADD s0, s4, zero
  ADD s2, s1, zero
  SLTI s3, s0, 5
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s3, zero, 2
  MULW s6, s2, s3
  ADDIW s3, s0, 1
  ADD s1, s6, zero
  ADD s4, s3, zero
  JAL zero, bb5
bb7:
  ADD s5, s2, zero
  JAL zero, bb1
ifWhile:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s6, 8(sp)
  SD s1, 16(sp)
  SD ra, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s4, 48(sp)
  SD s2, 56(sp)
  ADDI s2, zero, 3
  ADD s4, zero, zero
  JAL zero, bb13
bb9:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s6, 8(sp)
  LD s1, 16(sp)
  LD ra, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s4, 48(sp)
  LD s2, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  XORI s1, s0, 2
  SLTIU s6, s1, 1
  BNE s6, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW s0, s0, 2
  JAL zero, bb10
bb12:
  ADDIW s3, s0, 25
  ADD s5, s3, zero
  JAL zero, bb9
bb13:
  ADD s1, s4, zero
  ADD s0, s2, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 2
  MULW s6, s0, s3
  ADDIW s3, s1, 1
  ADD s2, s6, zero
  ADD s4, s3, zero
  JAL zero, bb13
bb15:
  ADD s5, s0, zero
  JAL zero, bb9
