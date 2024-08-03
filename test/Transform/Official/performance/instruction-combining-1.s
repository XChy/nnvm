.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getint
  LA s0, loopCount
  SW a0, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, 1823
  ADD a0, zero, a0
  CALL _sysy_starttime
  LA a0, loopCount
  LW s0, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s0, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  LUI a0, 2
  ADDIW a0, a0, 1838
  ADD a0, zero, a0
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
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  ADDI a0, zero, 60
  MULW a0, s2, a0
  ADDI s1, zero, 60
  DIVW a0, a0, s1
  ADDW s0, s0, a0
  LUI a0, 131068
  ADDIW a0, a0, 1
  REMW s1, s0, a0
  ADDIW a0, s2, 1
  LA s0, loopCount
  LW s0, 0(s0)
  BLT a0, s0, bb6
  # implict jump to bb5
bb5:
  ADD a0, s1, zero
  JAL zero, bb2
bb6:
  ADD s0, s1, zero
  JAL zero, bb4
