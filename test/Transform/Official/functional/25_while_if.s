.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADDI a0, zero, 4
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t1, a0, 100
  BNE t1, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI t1, a0, 75
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  ADDI a1, zero, 1
  ADDI t2, zero, 99
  ADDIW t1, a0, 42
  BNE a1, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 1
  ADD a0, t1, zero
  # implict jump to bb8
bb8:   # loop depth 1
  BLT t2, t1, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  BLT t2, t1, bb13
  # implict jump to bb11
bb11:   # loop depth 1
  ADD a0, t1, zero
  # implict jump to bb12
bb12:   # loop depth 1
  JAL zero, bb3
bb13:   # loop depth 1
  JAL zero, bb3
bb14:   # loop depth 1
  ADDI t0, zero, 84
  JAL zero, bb10
bb15:   # loop depth 1
  ADDI a0, zero, 168
  JAL zero, bb8
