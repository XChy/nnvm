.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -128
  SD ra, 56(sp)
  SD s4, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s6, 88(sp)
  SD s1, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SW s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 40(sp)
  ADDI s0, zero, 2
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  ADDIW s0, s1, 3
  SW s0, 32(sp)
  ADDIW s2, s0, 4
  SW s2, 32(sp)
  ADDW s0, s1, zero
  ADDW s3, s0, s2
  SW s3, 40(sp)
  ADDIW s0, s2, 5
  SW s0, 32(sp)
  ADDIW s2, s0, 6
  SW s2, 24(sp)
  ADDW s4, s1, s2
  SW s4, 48(sp)
  ADDW s1, s3, s4
  ADDW s3, s1, s0
  ADDW s1, s3, s2
  SW s1, 40(sp)
  ADDW s3, s0, s4
  SW s3, 32(sp)
  ADDIW s0, s2, 7
  SW s0, 16(sp)
  ADDIW s5, s0, 8
  SW s5, 16(sp)
  ADDW s0, s1, s5
  ADDW s1, s0, s3
  ADDW s0, s1, s2
  SW s0, 40(sp)
  ADDW s1, s3, s5
  SW s1, 32(sp)
  ADDIW s3, s2, 9
  SW s3, 8(sp)
  ADDIW s6, s5, 10
  SW s6, 16(sp)
  ADDIW s5, s3, 12
  SW s5, 8(sp)
  ADDIW s3, s0, 11
  ADDW s0, s3, s5
  ADDW s3, s0, s2
  SW s3, 40(sp)
  ADDW s0, s2, s5
  SW s0, 24(sp)
  ADDIW s2, s5, 13
  SW s2, 0(sp)
  ADDIW s6, s2, 11
  SW s6, 0(sp)
  ADDIW s2, s3, 11
  ADDW s3, s2, s5
  ADDW s2, s3, s6
  SW s2, 40(sp)
  SUBW s3, s2, s0
  SW s3, 40(sp)
  SUBW s0, s3, s1
  SW s0, 40(sp)
  SUBW s1, s0, s4
  SW s1, 40(sp)
  ADDI s0, zero, 77
  REMW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
