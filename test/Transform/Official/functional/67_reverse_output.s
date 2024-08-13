.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global reverse
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 200
  CALL reverse
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
reverse:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI s1, zero, 1
  ADD s0, a0, zero
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  ADDIW s1, s0, -1
  CALL getint
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL reverse
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  CALL getint
  CALL putint
  JAL zero, bb3
