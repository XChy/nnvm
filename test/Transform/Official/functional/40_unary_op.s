.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SLTU t0, zero, zero
  XORI t0, t0, 1
  SLTU t0, zero, t0
  XORI t0, t0, 1
  SUBW t0, zero, t0
  BNE t0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb2
