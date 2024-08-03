.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI s0, zero, 4
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, a0, zero
  ADD a0, s0, zero
  SLTI s0, a0, 100
  BNE s0, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, s2, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLTI s0, a0, 75
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb1
bb6:
  ADDIW s1, a0, 42
  ADDI a0, zero, 99
  BLT a0, s1, bb9
  # implict jump to bb7
bb7:
  ADD s0, s2, zero
  ADD a0, s1, zero
  # implict jump to bb8
bb8:
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb3
bb9:
  ADDI s0, zero, 84
  ADDI a0, zero, 168
  JAL zero, bb8
