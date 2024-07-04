.global main
.global func
.section .bss

.section .data
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, a
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI a0, zero, 10
  CALL func
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADD a0, s2, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
