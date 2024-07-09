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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb2
bb2:
  ADDI a0, zero, 4
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
