.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 40(sp)
  SD s4, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADDI s0, zero, 893
  SW s0, 32(sp)
  ADDI s0, zero, 716
  SW s0, 24(sp)
  ADDI s0, zero, 837
  SW s0, 16(sp)
  ADDI s0, zero, 128
  ADDIW s1, s0, 837
  SW s1, 16(sp)
  ADDIW s0, s1, 716
  SW s0, 24(sp)
  ADDI s2, zero, 241
  SW s2, 8(sp)
  ADDIW s2, s1, 241
  ADDI s1, zero, 412
  SUBW s3, s2, s1
  SW s3, 16(sp)
  ADDI s1, zero, 771
  SW s1, 0(sp)
  ADDI s1, zero, 771
  ADDIW s2, s1, 241
  ADDI s1, zero, 18
  SUBW s4, s2, s1
  SW s4, 8(sp)
  ADDIW s1, s4, 66
  SW s1, 0(sp)
  ADDW s1, s4, s3
  ADDI s2, zero, 33
  SUBW s3, s1, s2
  SW s3, 8(sp)
  ADDI s1, zero, 55
  SUBW s2, s3, s1
  SW s2, 16(sp)
  ADDW s1, s2, s3
  ADDI s3, zero, 21
  REMW s4, s1, s3
  ADD a0, s4, zero
  JALR zero, 0(ra)
  ADDW s1, s0, s2
  ADDI s2, zero, 97
  SUBW s3, s1, s2
  SW s3, 16(sp)
  SUBW s1, s0, s3
  ADDI s0, zero, 62
  REMW s2, s1, s0
  SW s2, 24(sp)
  ADDW s0, s3, s2
  ADDI s1, zero, 17
  REMW s4, s0, s1
  ADD a0, s4, zero
  JALR zero, 0(ra)
  ADDW s0, s3, s2
  ADDI s1, zero, 13
  REMW s3, s0, s1
  ADD a0, s3, zero
  JALR zero, 0(ra)
  ADDI s0, zero, 893
  MULW s1, s2, s0
  ADDI s0, zero, 83
  REMW s3, s1, s0
  SW s3, 32(sp)
  ADDW s0, s3, s2
  ADDI s1, zero, 771
  SUBW s2, s0, s1
  SW s2, 24(sp)
  ADDW s0, s3, s2
  ADDI s1, zero, 11
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
