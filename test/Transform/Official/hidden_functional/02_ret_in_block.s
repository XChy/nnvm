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
  ADDI s0, zero, 893
  SW s0, 32(sp)
  ADDI s0, zero, 716
  SW s0, 24(sp)
  ADDI s0, zero, 837
  SW s0, 16(sp)
  ADDI s0, zero, 128
  ADDIW s1, s0, 837
  SW s1, 16(sp)
  LW s0, 24(sp)
  ADDW s2, s0, s1
  SW s2, 24(sp)
  ADDI s0, zero, 241
  SW s0, 8(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 241
  ADDI s0, zero, 412
  SUBW s2, s1, s0
  SW s2, 16(sp)
  ADDI s0, zero, 771
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 771
  ADDI s0, zero, 18
  SUBW s2, s1, s0
  SW s2, 8(sp)
  ADDIW s0, s2, 66
  SW s0, 0(sp)
  LW s0, 8(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 33
  SUBW s1, s2, s0
  SW s1, 8(sp)
  ADDI s0, zero, 55
  SUBW s2, s1, s0
  SW s2, 16(sp)
  LW s0, 8(sp)
  ADDW s1, s2, s0
  ADDI s0, zero, 21
  REMW s3, s1, s0
  ADD a0, s3, zero
  JALR zero, 0(ra)
  LW s0, 24(sp)
  ADDW s1, s0, s2
  ADDI s0, zero, 97
  SUBW s2, s1, s0
  SW s2, 16(sp)
  LW s0, 24(sp)
  SUBW s1, s0, s2
  ADDI s0, zero, 62
  REMW s2, s1, s0
  SW s2, 24(sp)
  LW s0, 16(sp)
  ADDW s1, s0, s2
  ADDI s0, zero, 17
  REMW s3, s1, s0
  ADD a0, s3, zero
  JALR zero, 0(ra)
  LW s0, 16(sp)
  ADDW s1, s0, s2
  ADDI s0, zero, 13
  REMW s3, s1, s0
  ADD a0, s3, zero
  JALR zero, 0(ra)
  LW s0, 32(sp)
  MULW s1, s2, s0
  ADDI s0, zero, 83
  REMW s2, s1, s0
  SW s2, 32(sp)
  LW s0, 24(sp)
  ADDW s1, s2, s0
  ADDI s0, zero, 771
  SUBW s2, s1, s0
  SW s2, 24(sp)
  LW s0, 32(sp)
  ADDW s1, s0, s2
  ADDI s0, zero, 11
  REMW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
