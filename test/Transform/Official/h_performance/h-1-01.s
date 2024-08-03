.global main
.section .bss

.section .data
lim:
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
  ADD s0, a0, zero
  LA a0, lim
  SW s0, 0(a0)
  ADDI a0, zero, 22
  CALL _sysy_starttime
  LA a0, lim
  LW s0, 0(a0)
  SLTI a0, s0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  ADDI a0, zero, 27
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
  ADD s1, s0, zero
  ADD s0, zero, zero
  ADDI a0, zero, 1
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  ADD s3, s0, zero
  ADD s0, zero, zero
  ADD a0, s2, zero
  # implict jump to bb5
bb5:
  ADD s4, a0, zero
  XORI a0, s4, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb6
bb6:
  ANDI a0, s4, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb13
  # implict jump to bb7
bb7:
  ADDI a0, zero, 3
  MULW a0, s4, a0
  ADDIW s4, a0, 1
  SLT a0, s1, s4
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADDW s0, s3, a0
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW s0, s0, a0
  ADDIW s2, s2, 1
  LA a0, lim
  LW s1, 0(a0)
  SLT a0, s1, s2
  XORI a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  JAL zero, bb2
bb11:
  ADD a0, s2, zero
  JAL zero, bb4
bb12:
  ADDIW a0, s0, 1
  ADD s0, a0, zero
  ADD a0, s4, zero
  JAL zero, bb5
bb13:
  SRAIW a0, s4, 31
  SRLIW a0, a0, 31
  ADD a0, s4, a0
  SRAIW s4, a0, 1
  ADDIW a0, s0, 1
  ADD s0, a0, zero
  ADD a0, s4, zero
  JAL zero, bb5
bb14:
  ADD a0, s0, zero
  JAL zero, bb9
