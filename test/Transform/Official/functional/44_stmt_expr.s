.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, k
  ADDI t1, zero, 1
  ADDI t2, zero, 9
  SW t1, 0(t0)
  BGE t2, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, k
  LA s0, k
  LW a0, 0(t0)
  CALL putint
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADD t0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI t2, zero, 9
  SLLIW t1, t1, 1
  ADDIW t0, t0, 1
  BGE t2, t0, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LA t0, k
  SW t1, 0(t0)
  JAL zero, bb1
bb5:   # loop depth 1
  JAL zero, bb3
