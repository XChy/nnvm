.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SLTU t0, zero, zero
  XORI t0, t0, 1
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SUBW t0, zero, t0
  BNE t0, zero, bb3
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  ADDI t0, zero, -1
  JAL zero, bb2
