.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  LUI s0, 20
  ADDI s0, s0, -1920
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  ADDI s0, zero, 4
  LUI s2, 5
  ADDI s2, s2, -481
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 2
  ADDI s1, zero, 2
  MULW s2, s0, s1
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s1, s2, s0
  LA s0, a
  ADD s2, s0, s1
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s1, zero, 1
  SUBW s3, s0, s1
  ADDI s0, zero, 4
  MULW s1, s3, s0
  ADD s0, s2, s1
  LW s1, 0(s0)
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20
  ADDI s0, s0, -1920
  MULW s2, s3, s0
  LA s0, a
  ADD s3, s0, s2
  LUI s0, 5
  ADDI s0, s0, -480
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s4, s0
  ADD s0, s3, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  ADDI s2, zero, 2
  MULW s3, s1, s2
  LUI s1, 20
  ADDI s1, s1, -1920
  MULW s2, s3, s1
  LA s1, a
  ADD s3, s1, s2
  LUI s1, 5
  ADDI s1, s1, -480
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADDI s1, zero, 4
  MULW s2, s4, s1
  ADD s1, s3, s2
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 2
  ADDI s2, zero, 2
  MULW s3, s0, s2
  LUI s0, 20