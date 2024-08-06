.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI a0, zero, 324
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 0
  BLT a0, s0, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADDIW s1, s1, 1
  LUI s2, 1
  ADDIW s2, s2, 854
  ADDW a0, a0, s2
  LUI s2, 16
  ADDIW s2, s2, -1
  REMW a0, a0, s2
  BLT s1, s0, bb6
  # implict jump to bb5
bb5:
  JAL zero, bb2
bb6:
  JAL zero, bb4
