.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 4
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  SLTI t1, a0, 100
  BNE t1, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  SLTI t1, a0, 75
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  ADDIW a0, a0, 42
  ADDI t1, zero, 99
  BLT t1, a0, bb9
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  ADDI t0, zero, 84
  ADDI a0, zero, 168
  JAL zero, bb8
