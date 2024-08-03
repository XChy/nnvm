.global main
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 10
  BLT s0, s1, bb10
  # implict jump to bb1
bb1:
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 11
  BLT s0, s1, bb9
  # implict jump to bb2
bb2:
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 99
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA a0, g
  LW a0, 0(a0)
  ADDW s0, a0, s1
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb4
bb4:
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 100
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  LA a0, g
  LW a0, 0(a0)
  ADDW s0, a0, s0
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb6
bb6:
  LA a0, g
  LW a0, 0(a0)
  ADDIW s0, a0, 99
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  LA a0, g
  LW a0, 0(a0)
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb8:
  LA a0, g
  LW a0, 0(a0)
  ADDIW s0, a0, 100
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb7
bb9:
  LA a0, g
  LW a0, 0(a0)
  ADDW s0, a0, s1
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb2
bb10:
  LA a0, g
  LW a0, 0(a0)
  ADDW s0, a0, s1
  LA a0, g
  SW s0, 0(a0)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb1
