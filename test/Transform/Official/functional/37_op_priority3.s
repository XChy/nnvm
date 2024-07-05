.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 5
  SUBW s2, s0, s1
  ADDI s0, zero, 10
  SUBW s1, s0, s2
  ADDIW s0, s1, 30
  ADDI s1, zero, 0
  ADDI s2, zero, 5
  SUBW s3, s1, s2
  ADDW s1, s0, s3
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
