.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 3
  SLTI t0, t0, 2
  BEQ t0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADDI t0, zero, -1
  BGE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 10
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADDI a0, zero, 6
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
