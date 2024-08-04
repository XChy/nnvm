.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI a0, zero, 4
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  SLTI s1, a0, 100
  BNE s1, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  SLTI s1, a0, 75
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  ADDIW a0, a0, 42
  ADDI s1, zero, 99
  BLT s1, a0, bb9
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  ADDI s0, zero, 84
  ADDI a0, zero, 168
  JAL zero, bb8
