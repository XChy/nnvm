.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a1, zero, zero
  ADD t1, zero, zero
  ADD a3, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADD a2, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  ADD a4, zero, zero
  # implict jump to bb3
bb3:   # loop depth 3
  ADD t2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 4
  SLTI a0, t2, 3
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 4
  # implict jump to bb6
bb6:   # loop depth 3
  ADDIW a4, a4, 1
  SLTI t2, a4, 5
  BNE t2, zero, bb12
  # implict jump to bb7
bb7:   # loop depth 2
  ADDIW a2, a2, 1
  SLTI t2, a2, 10
  BNE t2, zero, bb11
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW a3, a3, 1
  SLTI t2, a3, 20
  BNE t2, zero, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  ADD a0, t0, zero
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
  ADDIW a0, t2, 1
  SLTI a6, a0, 3
  BEQ a6, zero, bb16
  # implict jump to bb14
bb14:   # loop depth 4
  # implict jump to bb15
bb15:   # loop depth 4
  ADDIW t0, t0, 1
  ADD t2, a0, zero
  ADDI a1, zero, 2
  JAL zero, bb4
bb16:   # loop depth 4
  SLTU a5, zero, t2
  BNE t2, zero, bb19
  # implict jump to bb17
bb17:   # loop depth 4
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb15
bb19:   # loop depth 4
  XORI t1, a5, 1
  SLTU t1, zero, t1
  OR t1, a5, t1
  BNE t1, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 4
  JAL zero, bb18
bb21:   # loop depth 4
  BEQ a6, zero, bb22
  JAL zero, bb20
bb22:   # loop depth 3
  JAL zero, bb6
