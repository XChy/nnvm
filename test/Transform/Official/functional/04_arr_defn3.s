.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -208
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  ADDI s0, zero, 0
  SW s0, 128(sp)
  ADDI s0, sp, 132
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 144
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s1, sp, 148
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 152
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 156
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, zero, 1
  SW s1, 96(sp)
  ADDI s1, sp, 100
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 104
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 108
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 112
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, sp, 116
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s1, sp, 120
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 124
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI s1, zero, 1
  SW s1, 64(sp)
  ADDI s1, sp, 68
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 72
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 76
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 80
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, sp, 84
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s2, sp, 88
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 92
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, zero, 1
  SW s2, 32(sp)
  ADDI s2, sp, 36
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 40
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 44
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 48
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, sp, 52
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s3, sp, 56
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 60
  ADDI s4, zero, 8
  SW s4, 0(s3)
  LW s2, 0(s2)
  LW s1, 0(s1)
  SW s2, 0(sp)
  ADDI s2, sp, 4
  SW s1, 0(s2)
  ADDI s1, sp, 8
  ADDI s3, zero, 3
  SW s3, 0(s1)
  ADDI s1, sp, 12
  ADDI s3, zero, 4
  SW s3, 0(s1)
  ADDI s1, sp, 16
  ADDI s3, zero, 5
  SW s3, 0(s1)
  ADDI s1, sp, 20
  ADDI s3, zero, 6
  SW s3, 0(s1)
  ADDI s1, sp, 24
  ADDI s3, zero, 7
  SW s3, 0(s1)
  ADDI s1, sp, 28
  ADDI s3, zero, 8
  SW s3, 0(s1)
  LW s1, 0(sp)
  ADDIW s1, s1, 8
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LW s0, 0(s0)
  ADDW s0, s1, s0
  ADD a0, s0, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
