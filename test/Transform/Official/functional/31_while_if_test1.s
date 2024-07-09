.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb4
  JAL zero, bb6
bb3:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADDI s4, zero, 25
  JAL zero, bb5
bb5:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb1
bb6:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb7
  JAL zero, bb9
bb7:
  ADDI s0, zero, 42
  JAL zero, bb8
bb8:
  ADD s1, s0, zero
  ADD s4, s1, zero
  JAL zero, bb5
bb9:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  JAL zero, bb8
whileIf:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb11
bb11:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb12
  JAL zero, bb13
bb12:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb14
  JAL zero, bb16
bb13:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb14:
  ADDI s4, zero, 25
  JAL zero, bb15
bb15:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb11
bb16:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb17
  JAL zero, bb19
bb17:
  ADDI s0, zero, 42
  JAL zero, bb18
bb18:
  ADD s1, s0, zero
  ADD s4, s1, zero
  JAL zero, bb15
bb19:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  JAL zero, bb18
