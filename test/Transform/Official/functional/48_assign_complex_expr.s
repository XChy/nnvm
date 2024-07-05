.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  ADDI s0, zero, 1
  MULW s1, s2, s0
  ADDI s0, zero, 2
  DIVW s3, s1, s0
  ADDI s0, zero, 5
  ADDI s1, zero, 5
  SUBW s4, s0, s1
  ADDW s0, s3, s4
  ADDI s1, zero, 3
  ADDIW s3, s1, 1
  ADDI s1, zero, 0
  SUBW s4, s1, s3
  ADDI s1, zero, 2
  REMW s3, s4, s1
  SUBW s1, s0, s3
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 2
  REMW s1, s2, s0
  ADDIW s0, s1, 67
  ADDI s1, zero, 5
  ADDI s2, zero, 5
  SUBW s3, s1, s2
  ADDI s1, zero, 0
  SUBW s2, s1, s3
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDIW s2, s0, 1
  ADDI s0, zero, 2
  REMW s3, s2, s0
  ADDI s0, zero, 0
  SUBW s2, s0, s3
  SUBW s0, s1, s2
  ADDIW s1, s0, 3
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
