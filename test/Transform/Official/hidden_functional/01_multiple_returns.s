.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 8
  SW s0, 16(sp)
  ADDI s0, zero, 12
  SW s0, 8(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 12
  SW s1, 24(sp)
  ADD a0, s1, zero
  JALR zero, 0(ra)
  ADDI s0, zero, 9
  SW s0, 0(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 9
  MULW s2, s0, s1
  SW s2, 24(sp)
  ADD a0, s2, zero
  JALR zero, 0(ra)
  LW s0, 16(sp)
  ADDI s1, zero, 4
  SUBW s2, s1, s0
  LW s0, 8(sp)
  MULW s1, s2, s0
  SW s1, 24(sp)
  ADD a0, s1, zero
  JALR zero, 0(ra)
  ADD a0, s1, zero
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
