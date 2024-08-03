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
  ADD t2, t0, zero
  XORI t0, t2, 50
  SLTIU t0, t0, 1
  BNE t0, zero, bb6
  # implict jump to bb2
bb2:
  ADDW a0, t1, t2
  ADDIW t1, t2, 1
  SLTI t0, t1, 100
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:
  ADD t0, a0, zero
  # implict jump to bb4
bb4:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  ADD t0, t1, zero
  ADD t1, a0, zero
  JAL zero, bb1
bb6:
  ADD t0, a0, zero
  JAL zero, bb4
