.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 7
  ADDI t0, zero, 5
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t1, a0, 100
  ADDIW t0, t0, 30
  BNE t1, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI t1, t0, 100
  ADDIW a0, a0, -100
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  ADDIW a0, a0, 6
  SLTI t1, a0, 100
  BNE t1, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb3
bb9:   # loop depth 2
  JAL zero, bb7
