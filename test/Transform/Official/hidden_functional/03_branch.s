.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 3
  SLTI s1, s0, 2
  XORI s0, s1, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 5
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI s0, zero, -1
  SLT s1, s0, zero
  XORI s0, s1, 1
  BNE s0, zero, bb9
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  ADD s1, s0, zero
  BNE s1, zero, bb8
  # implict jump to bb5
bb5:
  ADDI s1, zero, 1
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:
  ADDI a0, zero, 9
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 6
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  ADDI s0, zero, 1
  JAL zero, bb4
