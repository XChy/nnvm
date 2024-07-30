.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  ADDI a0, zero, 121
  CALL _sysy_starttime
  LA s0, loopCount
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb3
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADDI a0, zero, 123
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADDIW s3, s3, 15
  LUI s5, 366211
  ADDIW s5, s5, -255
  REMW s3, s3, s5
  ADDIW s4, s4, 1
  LA s5, loopCount
  LW s5, 0(s5)
  BLT s4, s5, bb6
  # implict jump to bb5
bb5:
  ADD s0, s3, zero
  JAL zero, bb2
bb6:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb4
