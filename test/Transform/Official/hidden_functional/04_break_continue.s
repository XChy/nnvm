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
  ADD t1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADD a1, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  ADD a2, zero, zero
  # implict jump to bb3
bb3:   # loop depth 3
  ADD a4, zero, zero
  # implict jump to bb4
bb4:   # loop depth 4
  ADD a3, a4, zero
  SLTI a4, a3, 3
  BNE a4, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 4
  # implict jump to bb6
bb6:   # loop depth 3
  ADDIW a2, a2, 1
  SLTI a3, a2, 5
  BNE a3, zero, bb12
  # implict jump to bb7
bb7:   # loop depth 2
  ADDIW a1, a1, 1
  SLTI a2, a1, 10
  BNE a2, zero, bb11
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW t1, t1, 1
  SLTI a1, t1, 20
  BNE a1, zero, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb10:   # loop depth 1
  JAL zero, bb1
bb11:   # loop depth 2
  JAL zero, bb2
bb12:   # loop depth 3
  JAL zero, bb3
bb13:   # loop depth 4
  ADDIW a4, a3, 1
  SLTI a6, a4, 3
  BEQ a6, zero, bb17
  # implict jump to bb14
bb14:   # loop depth 4
  # implict jump to bb15
bb15:   # loop depth 4
  # implict jump to bb16
bb16:   # loop depth 4
  ADDIW a0, a0, 1
  ADDI t2, zero, 2
  JAL zero, bb4
bb17:   # loop depth 4
  SLTU a5, zero, a3
  BNE a3, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 4
  # implict jump to bb19
bb19:   # loop depth 4
  JAL zero, bb15
bb20:   # loop depth 4
  XORI t0, a5, 1
  OR t0, a5, t0
  BNE t0, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 4
  JAL zero, bb15
bb22:   # loop depth 4
  BEQ a6, zero, bb23
  JAL zero, bb15
bb23:   # loop depth 4
  JAL zero, bb6
