.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  XORI t1, t0, 50
  BEQ t1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 1
  ADDIW t1, t0, 1
  ADDW a0, t2, t0
  SLTI t0, t1, 100
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t2, a0, zero
  ADD t0, t1, zero
  JAL zero, bb1
