.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD t2, t0, zero
  SLTI t0, t2, 100
  BNE t0, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  XORI t0, t2, 50
  SLTIU t0, t0, 1
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t1, t1, t2
  ADDIW t0, t2, 1
  JAL zero, bb1
bb5:
  ADDIW t0, t2, 1
  JAL zero, bb1
