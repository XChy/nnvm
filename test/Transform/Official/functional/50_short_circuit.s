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
  ADD s0, a0, zero
  ADDI s1, zero, 10
  BLT s1, s0, bb10
  # implict jump to bb1
bb1:
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 11
  BLT s1, s0, bb9
  # implict jump to bb2
bb2:
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 99
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb4
  # implict jump to bb3
bb3:
  LA s1, g
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb4
bb4:
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 100
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb6
  # implict jump to bb5
bb5:
  LA s1, g
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb6
bb6:
  LA s0, g
  LW s0, 0(s0)
  ADDIW s0, s0, 99
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, g
  LW s0, 0(s0)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb8:
  LA s0, g
  LW s0, 0(s0)
  ADDIW s0, s0, 100
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb7
bb9:
  LA s1, g
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb2
bb10:
  LA s1, g
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, g
  SW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb1
