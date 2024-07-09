.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s2, 8(sp)
  SD s4, 16(sp)
  SD ra, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  JAL zero, bb3
bb1:
  ADD s0, s1, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s2, 8(sp)
  LD s4, 16(sp)
  LD ra, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  ADD s0, s4, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb3:
  ADDI s6, zero, 3
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  ADD s2, s3, zero
  XORI s5, s2, 2
  SLTIU s1, s5, 1
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s1, s2, 2
  ADD s3, s1, zero
  JAL zero, bb4
bb6:
  ADDIW s0, s2, 25
  ADD s4, s0, zero
  JAL zero, bb2
bb7:
  ADD s1, s0, zero
  ADD s2, s6, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 2
  MULW s5, s2, s3
  ADDIW s3, s1, 1
  ADD s6, s5, zero
  ADD s0, s3, zero
  JAL zero, bb7
bb9:
  ADD s4, s2, zero
  JAL zero, bb2
ifWhile:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s6, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  JAL zero, bb12
bb11:
  ADD s0, s4, zero
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
bb12:
  ADDI s5, zero, 3
  ADD s0, zero, zero
  JAL zero, bb16
bb13:
  ADD s2, s1, zero
  XORI s6, s2, 2
  SLTIU s1, s6, 1
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDIW s3, s2, 2
  ADD s1, s3, zero
  JAL zero, bb13
bb15:
  ADDIW s0, s2, 25
  ADD s4, s0, zero
  JAL zero, bb11
bb16:
  ADD s1, s0, zero
  ADD s2, s5, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s3, zero, 2
  MULW s6, s2, s3
  ADDIW s3, s1, 1
  ADD s5, s6, zero
  ADD s0, s3, zero
  JAL zero, bb16
bb18:
  ADD s4, s2, zero
  JAL zero, bb11
