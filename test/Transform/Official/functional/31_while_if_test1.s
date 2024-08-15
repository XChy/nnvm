.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 0
  BNE t0, zero, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 198
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 0
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 25
  JAL zero, bb4
bb6:   # loop depth 0
  ADDI a0, zero, 42
  JAL zero, bb2
