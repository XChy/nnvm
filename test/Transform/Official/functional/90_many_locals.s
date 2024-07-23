.global main
.global foo
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s1, sp, 16
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 20
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 24
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 28
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 32
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 36
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 40
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 44
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 48
  ADDI s2, zero, 0
  SW s2, 0(s1)
  ADDI s1, sp, 52
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 56
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 60
  ADDI s2, zero, 3
  SW s2, 0(s1)
  LW s0, 0(s0)
  ADDIW s1, s0, 101
  ADDIW s0, s0, 112
  ADDW s0, s1, s0
  ADDIW s0, s0, 35
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
foo:
  ADDI sp, sp, -96
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SW zero, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s1, sp, 16
  SW zero, 0(s1)
  ADDI s1, sp, 20
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 24
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 28
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 32
  SW zero, 0(s1)
  ADDI s1, sp, 36
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 40
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 44
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 48
  SW zero, 0(s1)
  ADDI s1, sp, 52
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 56
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 60
  ADDI s2, zero, 3
  SW s2, 0(s1)
  LW s0, 0(s0)
  ADDIW s0, s0, 71
  ADD a0, s0, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
