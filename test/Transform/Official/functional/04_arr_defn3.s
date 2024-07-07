.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -208
  SD ra, 160(sp)
  SD s4, 168(sp)
  SD s3, 176(sp)
  SD s2, 184(sp)
  SD s1, 192(sp)
  SD s0, 200(sp)
  ADDI t5, sp, 128
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 132
  SW zero, 0(s0)
  ADDI s0, sp, 136
  SW zero, 0(s0)
  ADDI s0, sp, 140
  SW zero, 0(s0)
  ADDI s0, sp, 144
  SW zero, 0(s0)
  ADDI s1, sp, 148
  SW zero, 0(s1)
  ADDI s1, sp, 152
  SW zero, 0(s1)
  ADDI s1, sp, 156
  SW zero, 0(s1)
  ADDI t6, sp, 96
  ADD s1, t6, zero
  ADDI s2, zero, 1
  SW s2, 0(s1)
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
  ADDI t5, sp, 64
  ADD s1, t5, zero
  ADDI s2, zero, 1
  SW s2, 0(s1)
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
  ADDI s2, sp, 84
  ADDI s3, zero, 6
  SW s3, 0(s2)
  ADDI s2, sp, 88
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 92
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI t6, sp, 32
  ADD s2, t6, zero
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s2, sp, 36
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 40
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 44
  SW zero, 0(s2)
  ADDI s2, sp, 48
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s3, sp, 52
  SW zero, 0(s3)
  ADDI s3, sp, 56
  ADDI s4, zero, 7
  SW s4, 0(s3)
  ADDI s3, sp, 60
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, s2, 4
  LW s2, 0(s3)
  ADDI s3, s1, 4
  LW s1, 0(s3)
  ADDI t5, sp, 0
  ADD s3, t5, zero
  SW s2, 0(s3)
  ADDI s2, sp, 4
  SW s1, 0(s2)
  ADDI s1, sp, 8
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 12
  ADDI s2, zero, 4
  SW s2, 0(s1)
  ADDI s1, sp, 16
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, sp, 20
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s1, sp, 24
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s2, sp, 28
  ADDI s4, zero, 8
  SW s4, 0(s2)
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADD s2, s3, zero
  LW s4, 0(s2)
  ADDW s2, s1, s4
  ADDI s1, s3, 4
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADD s2, s0, zero
  LW s0, 0(s2)
  ADDW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 160(sp)
  LD s4, 168(sp)
  LD s3, 176(sp)
  LD s2, 184(sp)
  LD s1, 192(sp)
  LD s0, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
