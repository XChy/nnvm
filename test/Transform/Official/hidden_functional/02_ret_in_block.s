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
  ADDI s0, zero, 128
  ADDIW s1, s0, 837
  ADDIW s0, s1, 716
  ADDIW s0, s1, 241
  ADDI s1, zero, 412
  SUBW s2, s0, s1
  ADDI s0, zero, 771
  ADDIW s1, s0, 241
  ADDI s0, zero, 18
  SUBW s3, s1, s0
  ADDIW s0, s3, 66
  ADDW s0, s3, s2
  ADDI s1, zero, 33
  SUBW s2, s0, s1
  ADDI s0, zero, 55
  SUBW s1, s2, s0
  ADDW s0, s1, s2
  ADDI s1, zero, 21
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
