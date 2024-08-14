.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADD t1, t2, zero
  XORI t2, t1, 50
  BEQ t2, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 1
  ADDIW t2, t1, 1
  ADDW a0, t0, t1
  SLTI t0, t2, 100
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t0, a0, zero
  JAL zero, bb1
