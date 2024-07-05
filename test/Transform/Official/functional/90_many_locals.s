.global main
.global foo
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
  ADDI s0, zero, 7
  ADDIW s1, s0, 3
  ADDIW s0, s1, 5
  ADDIW s1, s0, 6
  ADDIW s0, s1, 1
  ADDW s1, s0, zero
  ADDIW s0, s1, 3
  ADDIW s1, s0, 5
  ADDI s0, zero, 2
  ADDIW s2, s0, 4
  ADDIW s0, s2, 7
  ADDIW s2, s0, 9
  ADDIW s0, s2, 8
  ADDIW s2, s0, 1
  ADDIW s0, s2, 4
  ADDIW s2, s0, 6
  CALL foo
  ADD s0, a0, zero
  ADDW s3, s1, s0
  CALL foo
  ADD s0, a0, zero
  ADDW s1, s2, s0
  ADDI s0, zero, 7
  ADDIW s2, s0, 4
  ADDIW s0, s2, 2
  ADDIW s2, s0, 5
  ADDIW s0, s2, 8
  ADDW s2, s0, zero
  ADDIW s0, s2, 6
  ADDIW s2, s0, 3
  ADDW s0, s3, s1
  ADDW s1, s0, s2
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
foo:
  ADDI sp, sp, -112
  SD ra, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  ADDI t5, sp, 0
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 32
  SW zero, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 40
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 48
  SW zero, 0(s0)
  ADDI s0, sp, 52
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 56
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 60
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 7
  ADDIW s1, s0, 3
  ADDIW s0, s1, 5
  ADDIW s1, s0, 6
  ADDIW s0, s1, 1
  ADDW s1, s0, zero
  ADDIW s0, s1, 3
  ADDIW s1, s0, 5
  ADDI s0, zero, 2
  ADDIW s2, s0, 4
  ADDIW s0, s2, 7
  ADDIW s2, s0, 9
  ADDIW s0, s2, 8
  ADDIW s2, s0, 1
  ADDIW s0, s2, 4
  ADDIW s2, s0, 6
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD a0, s1, zero
  LD ra, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
