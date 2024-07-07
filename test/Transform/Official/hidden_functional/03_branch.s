.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD s1, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  JAL zero, bb1
bb1:
  ADDI s0, zero, 1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  JAL zero, bb4
bb3:
  ADDI a0, zero, 1
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADDI s0, zero, 1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  JAL zero, bb7
bb6:
  ADDI a0, zero, 2
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 0
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a0, zero, 3
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  JAL zero, bb10
bb10:
  ADDI s0, zero, 0
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  ADDI a0, zero, 4
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  ADDI s0, zero, 3
  SLTI s1, s0, 2
  XORI s0, s1, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s0, zero, -1
  SLT s1, s0, zero
  XORI s0, s1, 1
  BNE s0, zero, bb15
  JAL zero, bb16
bb14:
  ADDI a0, zero, 5
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb15:
  ADDI s0, zero, 1
  JAL zero, bb17
bb16:
  ADD s0, zero, zero
  JAL zero, bb17
bb17:
  ADD s1, s0, zero
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  ADDI a0, zero, 6
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb19:
  JAL zero, bb20
bb20:
  ADDI s1, zero, 1
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a0, zero, 9
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 10
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
