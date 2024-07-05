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
  ADDI s0, zero, 128
  ADDIW s1, s0, 837
  ADDIW s0, s1, 716
  ADDIW s2, s1, 241
  ADDI s1, zero, 412
  SUBW s3, s2, s1
  ADDI s1, zero, 771
  ADDIW s2, s1, 241
  ADDI s1, zero, 18
  SUBW s4, s2, s1
  ADDIW s1, s4, 66
  ADDW s1, s4, s3
  ADDI s2, zero, 33
  SUBW s3, s1, s2
  ADDI s1, zero, 55
  SUBW s2, s3, s1
  ADDW s1, s2, s3
  ADDI s3, zero, 21
  REMW s4, s1, s3
  ADD a0, s4, zero
  JALR zero, 0(ra)
  ADDW s1, s0, s2
  ADDI s2, zero, 97
  SUBW s3, s1, s2
  SUBW s1, s0, s3
  ADDI s0, zero, 62
  REMW s2, s1, s0
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
  ADDW s0, s3, s2
  ADDI s1, zero, 771
  SUBW s2, s0, s1
  ADDW s0, s3, s2
  ADDI s1, zero, 11
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
