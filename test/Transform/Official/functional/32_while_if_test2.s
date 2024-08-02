.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADDI t1, zero, 3
  # implict jump to bb1
bb1:
  SLLIW t1, t1, 1
  ADDIW t0, t0, 1
  SLTI t2, t0, 5
  BNE t2, zero, bb4
  # implict jump to bb2
bb2:
  ADD t0, t1, zero
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:
  JAL zero, bb1
