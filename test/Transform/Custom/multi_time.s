.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 2
  CALL _sysy_starttime
  ADDI a0, zero, 3
  CALL _sysy_stoptime
  ADDI a0, zero, 4
  CALL _sysy_starttime
  ADDI a0, zero, 5
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
