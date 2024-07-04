.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADDI s0, zero, 5
  SW s0, 32(sp)
  ADDI s0, zero, 5
  SW s0, 24(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  SW s2, 8(sp)
  ADDI s0, zero, 1
  MULW s1, s2, s0
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  LW s0, 32(sp)
  LW s1, 24(sp)
  SUBW s3, s0, s1
  ADDW s0, s2, s3
  LW s1, 16(sp)
  ADDIW s2, s1, 3
  ADDI s1, zero, 0
  SUBW s3, s1, s2
  ADDI s1, zero, 2
  REMW s2, s3, s1
  SUBW s1, s0, s2
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 8(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  ADDIW s0, s2, 67
  LW s1, 32(sp)
  LW s2, 24(sp)
  SUBW s3, s1, s2
  ADDI s1, zero, 0
  SUBW s2, s1, s3
  ADDW s1, s0, s2
  LW s0, 16(sp)
  ADDIW s2, s0, 2
  ADDI s0, zero, 2
  REMW s3, s2, s0
  ADDI s0, zero, 0
  SUBW s2, s0, s3
  SUBW s0, s1, s2
  SW s0, 0(sp)
  ADDIW s1, s0, 3
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
