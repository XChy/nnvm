.global main
.section .bss

.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD t2, t0, zero
  SLLIW a0, t1, 2
  LA t0, arr
  ADD t0, t0, a0
  LW t0, 0(t0)
  ADDW t0, t2, t0
  ADDIW t2, t1, 1
  SLTI t1, t2, 6
  BNE t1, zero, bb4
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:
  ADD t1, t2, zero
  JAL zero, bb1
