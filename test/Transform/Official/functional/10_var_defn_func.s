.global defn
.global main
.section .bss
.section .data
.section .text
defn:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 4
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  CALL defn
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
