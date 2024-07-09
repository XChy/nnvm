.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s2, 0(sp)
  SD s4, 8(sp)
  SD s6, 16(sp)
  SD s1, 24(sp)
  SD s3, 32(sp)
  SD ra, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  JAL zero, bb3
bb1:
  ADD a0, s0, zero
  LD s2, 0(sp)
  LD s4, 8(sp)
  LD s6, 16(sp)
  LD s1, 24(sp)
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  ADD s0, s3, zero
  JAL zero, bb1
bb3:
  ADDI s5, zero, 3
  ADD s1, zero, zero
  JAL zero, bb7
bb4:
  XORI s1, s0, 2
  SLTIU s4, s1, 1
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s0, s0, 2
  JAL zero, bb4
bb6:
  ADDIW s2, s0, 25
  ADD s3, s2, zero
  JAL zero, bb2
bb7:
  ADD s0, s1, zero
  ADD s2, s5, zero
  SLTI s4, s0, 5
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s4, zero, 2
  MULW s6, s2, s4
  ADDIW s4, s0, 1
  ADD s5, s6, zero
  ADD s1, s4, zero
  JAL zero, bb7
bb9:
  ADD s3, s2, zero
  JAL zero, bb2
ifWhile:
  ADDI sp, sp, -64
  SD s2, 0(sp)
  SD s4, 8(sp)
  SD s6, 16(sp)
  SD s1, 24(sp)
  SD s3, 32(sp)
  SD ra, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  JAL zero, bb12
bb11:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s2, 0(sp)
  LD s4, 8(sp)
  LD s6, 16(sp)
  LD s1, 24(sp)
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:
  ADDI s3, zero, 3
  ADD s0, zero, zero
  JAL zero, bb16
bb13:
  XORI s0, s1, 2
  SLTIU s4, s0, 1
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADDIW s1, s1, 2
  JAL zero, bb13
bb15:
  ADDIW s2, s1, 25
  ADD s5, s2, zero
  JAL zero, bb11
bb16:
  ADD s1, s0, zero
  ADD s2, s3, zero
  SLTI s4, s1, 5
  BNE s4, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s4, zero, 2
  MULW s6, s2, s4
  ADDIW s4, s1, 1
  ADD s3, s6, zero
  ADD s0, s4, zero
  JAL zero, bb16
bb18:
  ADD s5, s2, zero
  JAL zero, bb11
