.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 10
  SW s0, 8(sp)
  ADDI s0, zero, 30
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 5
  SUBW s3, s1, s2
  SUBW s1, s0, s3
  ADDIW s0, s1, 30
  ADDI s1, zero, 0
  ADDI s2, zero, 5
  SUBW s3, s1, s2
  ADDW s1, s0, s3
  ADD a0, s1, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
