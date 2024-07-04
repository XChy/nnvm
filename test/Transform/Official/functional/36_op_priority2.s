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
  ADDI s0, zero, 10
  ADDIW s1, s0, 2
  ADDI s0, zero, 4
  ADDI s2, zero, 2
  SUBW s3, s0, s2
  MULW s0, s1, s3
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
