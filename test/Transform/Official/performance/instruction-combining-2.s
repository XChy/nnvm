.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  LA s0, loopCount
  SW a0, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, 1823
  ADD a0, zero, a0
  CALL _sysy_starttime
  LA a0, loopCount
  LW a0, 0(a0)
  ADDI s0, zero, 0
  BLT s0, a0, bb3
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
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADDW s1, s1, s2
  ADDIW s3, s0, 1
  SLTI s0, s3, 60
  BNE s0, zero, bb10
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI s0, zero, 60
  DIVW s0, s1, s0
  ADDW a0, a0, s0
  LUI s0, 131068
  ADDIW s0, s0, 1
  REMW a0, a0, s0
  ADDIW s0, s2, 1
  LA s1, loopCount
  LW s1, 0(s1)
  BLT s0, s1, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb2
bb9:
  ADD s1, a0, zero
  ADD a0, s0, zero
  JAL zero, bb4
bb10:
  ADD s0, s3, zero
  JAL zero, bb5
