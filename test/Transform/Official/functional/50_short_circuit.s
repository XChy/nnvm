.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, g
  CALL getint
  ADDI t0, zero, 10
  BLT t0, a0, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  CALL getint
  ADDI t0, zero, 11
  BLT t0, a0, bb9
  # implict jump to bb2
bb2:   # loop depth 0
  CALL getint
  ADDI t0, zero, 99
  BGE t0, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LW t0, 0(s0)
  ADDW t0, t0, a0
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  # implict jump to bb4
bb4:   # loop depth 0
  CALL getint
  ADDI t0, zero, 100
  BGE t0, a0, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LW t0, 0(s0)
  ADDW t0, t0, a0
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  # implict jump to bb6
bb6:   # loop depth 0
  LW t0, 0(s0)
  ADDIW t0, t0, 99
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  LW t0, 0(s0)
  SLTU t0, zero, t0
  BEQ t0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb8:   # loop depth 0
  LW t0, 0(s0)
  ADDIW t0, t0, 100
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  JAL zero, bb7
bb9:   # loop depth 0
  LW t0, 0(s0)
  ADDW t0, t0, a0
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  JAL zero, bb2
bb10:   # loop depth 0
  LW t0, 0(s0)
  ADDW t0, t0, a0
  ADD a0, t0, zero
  SW t0, 0(s0)
  CALL putint
  JAL zero, bb1
