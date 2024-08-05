.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:
  XORI t2, t0, 50
  SLTIU t2, t2, 1
  BNE t2, zero, bb3
  # implict jump to bb2
bb2:
  ADDW a0, t1, t0
  ADDIW t0, t0, 1
  SLTI t1, t0, 100
  BNE t1, zero, bb4
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:
  ADD t1, a0, zero
  JAL zero, bb1
