.global main
.section .bss

.section .data
a:
.word 0x00000007
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s1, a
  ADD s0, zero, zero
  ADD a0, zero, zero
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s2, s1, 1
  # implict jump to bb1
bb1:   # loop depth 1
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb11
  # implict jump to bb4
bb4:   # loop depth 1
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s0, s0, 1
  SLTI s1, s0, 100
  BNE s1, zero, bb10
  # implict jump to bb6
bb6:   # loop depth 0
  SLTI a0, a0, 100
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb8
bb8:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:   # loop depth 0
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb8
bb10:   # loop depth 1
  JAL zero, bb1
bb11:   # loop depth 1
  ADDIW a0, a0, 1
  JAL zero, bb5
bb12:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb3
