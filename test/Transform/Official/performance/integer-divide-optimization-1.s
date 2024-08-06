.global main
.section .bss



.section .data
size:
.word 0x000003e8
multi:
.word 0x00000002
loopCount:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  LA s0, loopCount
  SW a0, 0(s0)
  ADDI a0, zero, 1016
  CALL _sysy_starttime
  LA a0, loopCount
  LW s3, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s3, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 1031
  CALL _sysy_stoptime
  ADD a0, s1, zero
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
bb3:   # loop depth 0
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LA a0, multi
  LW a0, 0(a0)
  MULW a0, s2, a0
  SRAIW s0, a0, 31
  SRLIW s0, s0, 31
  ADD a0, a0, s0
  SRAIW a0, a0, 1
  ADDI s0, zero, 1000
  MULW a0, a0, s0
  LA s0, size
  LW s0, 0(s0)
  DIVW s4, a0, s0
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 2
  ADDW s0, s0, s4
  ADDIW a0, a0, 1
  SLTI s5, a0, 300
  BNE s5, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI a0, zero, 300
  DIVW a0, s0, a0
  ADDW a0, s1, a0
  LUI s0, 524264
  ADDIW s0, s0, 3
  REMW s1, a0, s0
  ADDIW s2, s2, 1
  BLT s2, s3, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  JAL zero, bb5
