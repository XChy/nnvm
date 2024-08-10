.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADDI a0, zero, 324
  ADDI s1, zero, 0
  CALL _sysy_starttime
  CALL getint
  ADD s0, a0, zero
  BLT s1, s0, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
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
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LUI s2, 1
  LUI s3, 16
  ADDIW s2, s2, 854
  ADDIW s3, s3, -1
  ADDW a0, a0, s2
  REMW a0, a0, s3
  ADDIW s1, s1, 1
  BLT s1, s0, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
