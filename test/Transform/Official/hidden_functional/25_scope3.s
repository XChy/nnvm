.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 56(sp)
  SD s3, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SW s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 40(sp)
  LW s0, 48(sp)
  ADDIW s1, s0, 2
  SW s1, 48(sp)
  ADDIW s0, s1, 3
  SW s0, 32(sp)
  ADDIW s1, s0, 4
  SW s1, 32(sp)
  LW s0, 40(sp)
  LW s2, 48(sp)
  ADDW s3, s0, s2
  ADDW s0, s3, s1
  SW s0, 40(sp)
  LW s0, 32(sp)
  ADDIW s1, s0, 5
  SW s1, 32(sp)
  ADDIW s0, s1, 6
  SW s0, 24(sp)
  LW s1, 48(sp)
  ADDW s2, s1, s0
  SW s2, 48(sp)
  LW s0, 40(sp)
  ADDW s1, s0, s2
  LW s0, 32(sp)
  ADDW s2, s1, s0
  LW s0, 24(sp)
  ADDW s1, s2, s0
  SW s1, 40(sp)
  LW s0, 32(sp)
  LW s1, 48(sp)
  ADDW s2, s0, s1
  SW s2, 32(sp)
  LW s0, 24(sp)
  ADDIW s1, s0, 7
  SW s1, 16(sp)
  ADDIW s0, s1, 8
  SW s0, 16(sp)
  LW s1, 40(sp)
  ADDW s2, s1, s0
  LW s0, 32(sp)
  ADDW s1, s2, s0
  LW s0, 24(sp)
  ADDW s2, s1, s0
  SW s2, 40(sp)
  LW s0, 32(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  SW s2, 32(sp)
  LW s0, 24(sp)
  ADDIW s1, s0, 9
  SW s1, 8(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 10
  SW s1, 16(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 12
  SW s1, 8(sp)
  LW s0, 40(sp)
  ADDIW s2, s0, 11
  ADDW s0, s2, s1
  LW s1, 24(sp)
  ADDW s2, s0, s1
  SW s2, 40(sp)
  LW s0, 24(sp)
  LW s1, 8(sp)
  ADDW s2, s0, s1
  SW s2, 24(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 13
  SW s1, 0(sp)
  ADDIW s0, s1, 11
  SW s0, 0(sp)
  LW s1, 40(sp)
  ADDIW s2, s1, 11
  LW s1, 8(sp)
  ADDW s3, s2, s1
  ADDW s1, s3, s0
  SW s1, 40(sp)
  LW s0, 24(sp)
  SUBW s2, s1, s0
  SW s2, 40(sp)
  LW s0, 32(sp)
  SUBW s1, s2, s0
  SW s1, 40(sp)
  LW s0, 48(sp)
  SUBW s2, s1, s0
  SW s2, 40(sp)
  ADDI s0, zero, 77
  REMW s1, s2, s0
  ADD a0, s1, zero
  LD ra, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
