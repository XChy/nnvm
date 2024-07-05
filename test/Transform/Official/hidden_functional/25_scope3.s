.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 2
  ADDIW s1, s0, 1
  ADDIW s0, s1, 3
  ADDIW s2, s0, 4
  ADDW s0, s1, zero
  ADDW s3, s0, s2
  ADDIW s0, s2, 5
  ADDIW s2, s0, 6
  ADDW s4, s1, s2
  ADDW s1, s3, s4
  ADDW s3, s1, s0
  ADDW s1, s3, s2
  ADDW s3, s0, s4
  ADDIW s0, s2, 7
  ADDIW s5, s0, 8
  ADDW s0, s1, s5
  ADDW s1, s0, s3
  ADDW s0, s1, s2
  ADDW s1, s3, s5
  ADDIW s3, s2, 9
  ADDIW s6, s5, 10
  ADDIW s5, s3, 12
  ADDIW s3, s0, 11
  ADDW s0, s3, s5
  ADDW s3, s0, s2
  ADDW s0, s2, s5
  ADDIW s2, s5, 13
  ADDIW s6, s2, 11
  ADDIW s2, s3, 11
  ADDW s3, s2, s5
  ADDW s2, s3, s6
  SUBW s3, s2, s0
  SUBW s0, s3, s1
  SUBW s1, s0, s4
  ADDI s0, zero, 77
  REMW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
