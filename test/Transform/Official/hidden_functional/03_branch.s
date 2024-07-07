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
  JAL zero, bb2
bb2:
  ADDI s0, zero, 1
  BNE s0, zero, bb3
  JAL zero, bb4
bb3:
  JAL zero, bb5
bb4:
  ADDI a0, zero, 1
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  JAL zero, bb6
bb6:
  ADDI s0, zero, 1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  JAL zero, bb9
bb8:
  ADDI a0, zero, 2
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
  ADDI a0, zero, 3
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  JAL zero, bb13
bb13:
  JAL zero, bb14
bb14:
  ADDI s0, zero, 0
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
  ADDI a0, zero, 4
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb16:
  ADDI s0, zero, 3
  SLTI s1, s0, 2
  XORI s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, -1
  SLT s1, s0, zero
  XORI s0, s1, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb18:
  ADDI a0, zero, 5
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb19:
  ADDI s0, zero, 1
  JAL zero, bb21
bb20:
  ADD s0, zero, zero
  JAL zero, bb21
bb21:
  ADD s1, s0, zero
  BNE s1, zero, bb22
  JAL zero, bb23
bb22:
  ADDI a0, zero, 6
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb23:
  ADDI s1, zero, 1
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  ADDI a0, zero, 9
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb25:
  ADDI a0, zero, 10
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
