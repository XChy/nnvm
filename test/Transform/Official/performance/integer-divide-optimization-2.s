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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  LA s1, loopCount
  CALL getint
  ADD s0, a0, zero
  LA s2, loopCount
  ADDI a0, zero, 1016
  SW s0, 0(s1)
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW s3, 0(s2)
  BLT s0, s3, bb3
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
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LA a0, multi
  LA s5, size
  ADDI s6, zero, 1000
  LW s4, 0(a0)
  ADD a0, zero, zero
  ADD s0, zero, zero
  MULW s4, s2, s4
  LW s5, 0(s5)
  SRAIW s7, s4, 31
  SRLIW s7, s7, 31
  ADD s4, s4, s7
  SRAIW s4, s4, 1
  MULW s4, s4, s6
  DIVW s4, s4, s5
  # implict jump to bb5
bb5:   # loop depth 2
  ADDIW a0, a0, 1
  ADDW s0, s0, s4
  SLTI s5, a0, 300
  BNE s5, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI a0, zero, 300
  LUI s4, 524264
  DIVW a0, s0, a0
  ADDIW s4, s4, 3
  ADDIW s2, s2, 1
  ADDW a0, s1, a0
  REMW s1, a0, s4
  BLT s2, s3, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  JAL zero, bb5
