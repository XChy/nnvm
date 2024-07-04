.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 10
  SW s0, 24(sp)
  ADDI s0, zero, 4
  SW s0, 16(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 2
  SW s0, 0(sp)
  LW s0, 8(sp)
  LW s1, 24(sp)
  LW s2, 16(sp)
  MULW s3, s1, s2
  ADDW s1, s0, s3
  ADDI s0, zero, 2
  SUBW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
