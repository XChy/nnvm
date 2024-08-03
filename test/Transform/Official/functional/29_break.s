.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:
  ADD t2, t1, zero
  XORI t1, a0, 50
  SLTIU t1, t1, 1
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:
  ADDW t0, t2, a0
  ADDIW t2, a0, 1
  SLTI t1, t2, 100
  BNE t1, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:
  ADD a0, t2, zero
  ADD t1, t0, zero
  JAL zero, bb1
