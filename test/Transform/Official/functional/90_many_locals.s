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
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 1
  SW s0, 4(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 3
  SW s0, 12(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADDI s0, zero, 2
  SW s0, 24(sp)
  ADDI s0, zero, 3
  SW s0, 28(sp)
  ADDI s0, zero, 0
  SW s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 36(sp)
  ADDI s0, zero, 2
  SW s0, 40(sp)
  ADDI s0, zero, 3
  SW s0, 44(sp)
  ADDI s0, zero, 0
  SW s0, 48(sp)
  ADDI s0, zero, 1
  SW s0, 52(sp)
  ADDI s0, zero, 2
  SW s0, 56(sp)
  ADDI s0, zero, 3
  SW s0, 60(sp)
  ADDI s0, zero, 101
  ADDIW s0, s0, 3
  ADDI s1, zero, 112
  ADDIW s1, s1, 3
  ADDW s0, s0, s1
  ADDIW s0, s0, 35
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
foo:
  ADDI sp, sp, -80
  SD ra, 64(sp)
  SD s0, 72(sp)
  SW zero, 0(sp)
  ADDI s0, zero, 1
  SW s0, 4(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 3
  SW s0, 12(sp)
  SW zero, 16(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADDI s0, zero, 2
  SW s0, 24(sp)
  ADDI s0, zero, 3
  SW s0, 28(sp)
  SW zero, 32(sp)
  ADDI s0, zero, 1
  SW s0, 36(sp)
  ADDI s0, zero, 2
  SW s0, 40(sp)
  ADDI s0, zero, 3
  SW s0, 44(sp)
  SW zero, 48(sp)
  ADDI s0, zero, 1
  SW s0, 52(sp)
  ADDI s0, zero, 2
  SW s0, 56(sp)
  ADDI s0, zero, 3
  SW s0, 60(sp)
  ADDI s0, zero, 71
  ADDIW s0, s0, 3
  ADD a0, s0, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
