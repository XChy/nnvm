.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI s1, zero, 4
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADD a0, s1, zero
  SLTI s1, a0, 100
  BNE s1, zero, bb6
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  # implict jump to bb3
bb3:
  ADD s0, a0, zero
  ADD a0, s1, zero
  SLTI s1, s0, 75
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADD s1, s0, zero
  JAL zero, bb1
bb6:
  ADDIW a0, a0, 42
  ADDI s1, zero, 99
  BLT s1, a0, bb9
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  # implict jump to bb8
bb8:
  ADD s0, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, s0, zero
  JAL zero, bb3
bb9:
  ADDI s1, zero, 84
  ADDI a0, zero, 168
  JAL zero, bb8
