.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t1, zero, 4
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD t2, t0, zero
  ADD t0, t1, zero
  SLTI t1, t0, 100
  BNE t1, zero, bb6
  # implict jump to bb2
bb2:
  ADD t1, t2, zero
  # implict jump to bb3
bb3:
  ADD t2, t0, zero
  ADD t0, t1, zero
  SLTI t1, t2, 75
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, t2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  ADD t1, t2, zero
  JAL zero, bb1
bb6:
  ADDIW a0, t0, 42
  ADDI t0, zero, 99
  BLT t0, a0, bb9
  # implict jump to bb7
bb7:
  ADD t1, t2, zero
  ADD t0, a0, zero
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  ADDI t1, zero, 84
  ADDI t0, zero, 168
  JAL zero, bb8
