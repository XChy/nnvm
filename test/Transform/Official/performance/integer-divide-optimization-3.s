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
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  LA s0, loopCount
  SW a0, 0(s0)
  ADDI a0, zero, 1016
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
  ADDI a0, zero, 1031
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  LA s1, multi
  LW s1, 0(s1)
  MULW s1, s0, s1
  SRAIW s2, s1, 31
  SRLIW s2, s2, 31
  ADD s1, s1, s2
  SRAIW s1, s1, 1
  ADDI s2, zero, 1000
  MULW s1, s1, s2
  LA s2, size
  LW s2, 0(s2)
  DIVW s1, s1, s2
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADDW s2, s2, s1
  ADDIW s3, s3, 1
  SLTI s4, s3, 300
  BNE s4, zero, bb9
  # implict jump to bb6
bb6:
  ADDI s1, zero, 300
  DIVW s1, s2, s1
  ADDW a0, a0, s1
  LUI s1, 524264
  ADDIW s1, s1, 3
  REMW a0, a0, s1
  ADDIW s0, s0, 1
  LA s1, loopCount
  LW s1, 0(s1)
  BLT s0, s1, bb8
  # implict jump to bb7
bb7:
  JAL zero, bb2
bb8:
  JAL zero, bb4
bb9:
  JAL zero, bb5
