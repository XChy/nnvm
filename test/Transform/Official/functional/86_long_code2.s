.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LUI t0, 1
  ADDIW t0, t0, -96
  ADD a0, zero, t0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
