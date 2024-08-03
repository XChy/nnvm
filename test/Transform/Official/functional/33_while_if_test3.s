.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 4
  ADD t1, zero, zero
  # implict jump to bb1
bb1:
  SLTI t2, t0, 100
  BNE t2, zero, bb7
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADD t2, t0, zero
  SLTI t0, t2, 75
  BNE t0, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD a0, t2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb6:
  ADD t0, t2, zero
  JAL zero, bb1
bb7:
  ADDIW t2, t0, 42
  ADDI t0, zero, 99
  BLT t0, t2, bb10
  # implict jump to bb8
bb8:
  ADD t0, t2, zero
  # implict jump to bb9
bb9:
  ADD t2, t0, zero
  ADD t0, t1, zero
  ADD t1, t0, zero
  ADD t0, t2, zero
  JAL zero, bb3
bb10:
  ADDI t1, zero, 84
  ADDI t0, zero, 168
  JAL zero, bb9
