.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s2, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s2, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s2, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s2, s0
  LW s0, 0(s1)
  LUI s1, 78
  ADDI s1, s1, 512
  LA s2, a
  ADD s3, s2, s1
  LUI s1, 20
  ADDI s1, s1, -1924
  ADD s2, s3, s1
  LW s1, 0(s2)
  ADDW s2, s0, s1
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s1, a
  ADD s3, s1, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s1, s3, s0
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LUI s0, 78
  ADDI s0, s0, 512
  LA s2, a
  ADD s3, s2, s0
  LUI s0, 20
  ADDI s0, s0, -1924
  ADD s2, s3, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
