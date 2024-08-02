.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, zero, zero
  ADDI t0, zero, 3
  # implict jump to bb1
bb1:
  SLLIW t0, t0, 1
  ADDIW t2, t1, 1
  SLTI t1, t2, 5
  BNE t1, zero, bb5
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  ADD t1, t2, zero
  JAL zero, bb1
