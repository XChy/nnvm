.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t0, t1, 100
  BNE t0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 1
  ADDW t0, a0, t1
  ADDIW t2, t1, 1
  XORI t1, t1, 50
  BEQ t1, zero, bb6
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADD t1, t2, zero
  JAL zero, bb1
bb6:   # loop depth 1
  ADD t1, t2, zero
  JAL zero, bb1
