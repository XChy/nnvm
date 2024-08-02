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
  SLTI t2, t1, 100
  BNE t2, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  XORI t2, t1, 50
  SLTIU t2, t2, 1
  BNE t2, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t0, t0, t1
  ADDIW t1, t1, 1
  JAL zero, bb1
bb5:
  ADDIW t1, t1, 1
  JAL zero, bb1
