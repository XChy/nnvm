.global main
.global deepWhileBr
.global get_one
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 2
  SW s0, 0(sp)
  ADDI a0, zero, 2
  ADDI a1, zero, 2
  CALL deepWhileBr
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
deepWhileBr:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  LW s0, 32(sp)
  ADDW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb2
bb2:
  LW s0, 16(sp)
  SLTI s1, s0, 75
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s0, zero, 42
  SW s0, 8(sp)
  LW s0, 16(sp)
  SLTI s1, s0, 100
  BNE s1, zero, bb5
  JAL zero, bb6
bb4:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADDW s2, s0, s1
  SW s2, 16(sp)
  ADDI s0, zero, 99
  SLT s1, s0, s2
  BNE s1, zero, bb7
  JAL zero, bb8
bb6:
  JAL zero, bb2
bb7:
  LW s0, 8(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 0(sp)
  ADD a0, zero, zero
  CALL get_one
  ADD s0, a0, zero
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb9
  JAL zero, bb10
bb8:
  JAL zero, bb6
bb9:
  LW s0, 0(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb10
bb10:
  JAL zero, bb8
get_one:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI a0, zero, 1
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
