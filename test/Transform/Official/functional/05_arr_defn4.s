.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -192
  SD ra, 160(sp)
  SD s2, 168(sp)
  SD s1, 176(sp)
  SD s0, 184(sp)
  ADDI t5, sp, 128
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 132
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 144
  SW zero, 0(s0)
  ADDI s0, sp, 148
  SW zero, 0(s0)
  ADDI s0, sp, 152
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 156
  SW zero, 0(s0)
  ADDI t6, sp, 96
  ADD s0, t6, zero
  SW zero, 0(s0)
  ADDI s0, sp, 100
  SW zero, 0(s0)
  ADDI s0, sp, 104
  SW zero, 0(s0)
  ADDI s0, sp, 108
  SW zero, 0(s0)
  ADDI s0, sp, 112
  SW zero, 0(s0)
  ADDI s0, sp, 116
  SW zero, 0(s0)
  ADDI s0, sp, 120
  SW zero, 0(s0)
  ADDI s0, sp, 124
  SW zero, 0(s0)
  ADDI t5, sp, 64
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 68
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 72
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 76
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 80
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 84
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 88
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 92
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 152
  ADD s1, s0, zero
  LW s0, 0(s1)
  ADDI t6, sp, 32
  ADD s1, t6, zero
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 36
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 40
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 44
  SW zero, 0(s1)
  ADDI s1, sp, 48
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, sp, 52
  SW zero, 0(s1)
  ADDI s1, sp, 56
  SW s0, 0(s1)
  ADDI s0, sp, 60
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADDI s1, sp, 80
  ADDI s2, s1, 4
  LW s1, 0(s2)
  ADDI t5, sp, 0
  ADD s2, t5, zero
  SW s0, 0(s2)
  ADDI s0, sp, 4
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, s0, 4
  ADD s0, s1, zero
  LW s1, 0(s0)
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADD s2, s0, zero
  ADD s0, s2, zero
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI t5, sp, 0
  ADD s1, t5, zero
  ADDI s2, s1, 4
  ADD s1, s2, zero
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, sp, 56
  ADD s2, s0, zero
  LW s0, 0(s2)
  ADDW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 160(sp)
  LD s2, 168(sp)
  LD s1, 176(sp)
  LD s0, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
