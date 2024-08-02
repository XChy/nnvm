.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t1, zero, 5
  ADDI t0, zero, 7
  # implict jump to bb1
bb1:
  ADD t2, t0, zero
  ADD t0, t1, zero
  ADDIW a0, t0, 30
  SLTI t0, t2, 100
  BNE t0, zero, bb7
  # implict jump to bb2
bb2:
  ADD t0, t2, zero
  # implict jump to bb3
bb3:
  ADD t1, t0, zero
  ADDI t0, zero, 100
  SUBW t2, t1, t0
  SLTI t0, a0, 100
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
  ADD t1, a0, zero
  ADD t0, t2, zero
  JAL zero, bb1
bb7:
  ADD t0, t2, zero
  # implict jump to bb8
bb8:
  ADDIW t1, t0, 6
  SLTI t0, t1, 100
  BNE t0, zero, bb10
  # implict jump to bb9
bb9:
  ADD t0, t1, zero
  JAL zero, bb3
bb10:
  ADD t0, t1, zero
  JAL zero, bb8
