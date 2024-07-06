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
  ADDI s0, zero, -2
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  ADDW s0, s2, zero
  ADDI s1, zero, -4
  ADDI s2, zero, 2
  REMW s3, s1, s2
  SUBW s1, s0, s3
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, -2
  ADDI s1, zero, 2
  REMW s2, s0, s1
  ADDIW s0, s2, 67
  ADDW s1, s0, zero
  ADDI s0, zero, 3
  ADDI s2, zero, 2
  REMW s3, s0, s2
  SUBW s0, zero, s3
  SUBW s2, s1, s0
  ADDIW s0, s2, 3
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
