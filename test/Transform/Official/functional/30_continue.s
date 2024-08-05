.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  SLTI t1, t0, 100
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  XORI t1, t0, 50
  SLTIU t1, t1, 1
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  ADDW a0, a0, t0
  ADDIW t0, t0, 1
  JAL zero, bb1
bb5:
  ADDIW t0, t0, 1
  JAL zero, bb1
