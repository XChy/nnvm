.global main
.section .bss

.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:
  SLLIW t2, t0, 2
  LA a0, arr
  ADD t2, a0, t2
  LW t2, 0(t2)
  ADDW t1, t1, t2
  ADDIW t0, t0, 1
  SLTI t2, t0, 6
  BNE t2, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  JAL zero, bb1
