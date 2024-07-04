.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 10
  SW s0, 24(sp)
  ADDI s0, zero, 4
  SW s0, 16(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 2
  SW s0, 0(sp)
  ADDI s0, zero, 4
  ADDI s1, zero, 10
  MULW s2, s0, s1
  ADDIW s0, s2, 2
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
