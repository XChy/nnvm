.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 3
  SLTI s1, s0, 2
  XORI s0, s1, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 5
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
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
  XOR s0, zero, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:
  ADDI a0, zero, 9
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 6
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  ADDI s0, zero, 1
  JAL zero, bb4
