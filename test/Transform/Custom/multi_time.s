.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, 0
  ADDI a0, zero, 2
  CALL _sysy_starttime
  ADDI a0, zero, 3
  CALL _sysy_stoptime
  ADDI a0, zero, 4
  CALL _sysy_starttime
  ADDI a0, zero, 5
  CALL _sysy_stoptime