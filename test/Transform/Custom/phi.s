.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
value:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, value
  ADDI t1, zero, 0
  LW t0, 0(t0)
  BLT t1, t0, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, t0, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
