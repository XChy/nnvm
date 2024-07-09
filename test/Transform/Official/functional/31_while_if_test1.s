.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  JAL zero, bb2
bb1:
  ADD s1, s0, zero
  ADD a0, s1, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb3
bb3:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb4
  JAL zero, bb5
bb4:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb6
  JAL zero, bb8
bb5:
  ADD s0, s3, zero
  JAL zero, bb1
bb6:
  ADDI s4, zero, 25
  JAL zero, bb7
bb7:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb3
bb8:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb9
  JAL zero, bb11
bb9:
  ADDI s0, zero, 42
  JAL zero, bb10
bb10:
  ADD s1, s0, zero
  ADD s4, s1, zero
  JAL zero, bb7
bb11:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  JAL zero, bb10
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
  JAL zero, bb13
bb13:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb16
  JAL zero, bb18
bb15:
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
bb16:
  ADDI s4, zero, 25
  JAL zero, bb17
bb17:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb13
bb18:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb19
  JAL zero, bb21
bb19:
  ADDI s0, zero, 42
  JAL zero, bb20
bb20:
  ADD s1, s0, zero
  ADD s4, s1, zero
  JAL zero, bb17
bb21:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  JAL zero, bb20
