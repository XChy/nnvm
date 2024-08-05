.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 15
  # implict jump to bb1
bb1:
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  BNE t0, zero, bb6
  # implict jump to bb2
bb2:
  ADDI t0, zero, 19
  # implict jump to bb3
bb3:
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 4
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb3
bb6:
  JAL zero, bb1
