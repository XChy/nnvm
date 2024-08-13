.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getint
  ADDI s1, zero, 10
  ADD s0, a0, zero
  BLT s1, s0, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  CALL getint
  ADDI s1, zero, 11
  ADD s0, a0, zero
  BLT s1, s0, bb9
  # implict jump to bb2
bb2:   # loop depth 0
  CALL getint
  ADDI s1, zero, 99
  ADD s0, a0, zero
  BGE s1, s0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA a0, g
  LA s1, g
  LW a0, 0(a0)
  ADDW s0, a0, s0
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  # implict jump to bb4
bb4:   # loop depth 0
  CALL getint
  ADDI s0, zero, 100
  BGE s0, a0, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LA s0, g
  LA s1, g
  LW s0, 0(s0)
  ADDW s0, s0, a0
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, g
  LA s1, g
  LA s2, g
  LW a0, 0(a0)
  ADDIW s0, a0, 99
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  LW a0, 0(s2)
  SLTU a0, zero, a0
  BEQ a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb8:   # loop depth 0
  LA a0, g
  LA s1, g
  LW a0, 0(a0)
  ADDIW s0, a0, 100
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  JAL zero, bb7
bb9:   # loop depth 0
  LA a0, g
  LA s1, g
  LW a0, 0(a0)
  ADDW s0, a0, s0
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  JAL zero, bb2
bb10:   # loop depth 0
  LA a0, g
  LA s1, g
  LW a0, 0(a0)
  ADDW s0, a0, s0
  ADD a0, s0, zero
  SW s0, 0(s1)
  CALL putint
  JAL zero, bb1
