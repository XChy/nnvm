.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 10
  ADDI t1, zero, 7
  ADDI t2, zero, 6
  ADDI a0, zero, 5
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI a1, t2, 10
  ADDIW a0, a0, 3
  BNE a1, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI a1, a0, 20
  ADDIW t2, t2, -2
  BNE a1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADDW t0, t2, t0
  ADDW t0, a0, t0
  ADDW a0, t0, t1
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  XORI a1, t1, 7
  ADDIW t2, t2, 1
  BEQ a1, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 2
  SLTI a1, t2, 10
  ADDIW t1, t1, 1
  BNE a1, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 2
  JAL zero, bb7
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 3
  SLTI a1, t0, 20
  ADDIW t1, t1, -1
  BNE a1, zero, bb18
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  XORI a1, t1, 7
  ADDIW t0, t0, -1
  BEQ a1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 2
  JAL zero, bb9
bb17:   # loop depth 3
  JAL zero, bb13
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 4
  ADDIW t0, t0, 3
  SLTI a1, t0, 20
  BNE a1, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 3
  JAL zero, bb15
bb21:   # loop depth 4
  JAL zero, bb19
