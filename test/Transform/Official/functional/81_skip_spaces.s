.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -416
  SD ra, 400(sp)
  SD s0, 408(sp)
  CALL getint
  BNE a0, zero, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  BNE s0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t1, zero, 79
  REMW a0, t0, t1
  LD ra, 400(sp)
  LD s0, 408(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  SLLIW t1, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  LW t1, -4(t1)
  ADDW t0, t0, t1
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  CALL getint
  SLLIW t0, s0, 2
  ADDI t6, sp, 0
  ADD t0, t6, t0
  ADDIW s0, s0, 1
  SW a0, 0(t0)
  CALL getint
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 1
  JAL zero, bb2
bb12:   # loop depth 1
  JAL zero, bb10
