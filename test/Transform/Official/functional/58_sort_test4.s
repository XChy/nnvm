.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  LA a0, n
  ADDI s0, zero, 10
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SW s1, 0(sp)
  ADDI s0, zero, 2
  SW s2, 4(sp)
  ADDI s1, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 1
  SW s0, 12(sp)
  ADDI s0, zero, 6
  SW s1, 16(sp)
  ADDI s1, zero, 5
  SW a0, 20(sp)
  ADDI s2, zero, 7
  SW s0, 24(sp)
  ADDI s3, zero, 8
  SW s1, 28(sp)
  ADD a0, zero, zero
  SW s2, 32(sp)
  ADD s0, zero, zero
  SW s3, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW s5, s0, 1
  SLLIW s2, s0, 2
  SLTI s1, s5, 10
  BNE s1, zero, bb13
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s1, s0, zero
  ADD s3, s2, zero
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s1, s0, bb12
  # implict jump to bb4
bb4:   # loop depth 1
  # implict jump to bb5
bb5:   # loop depth 1
  SLTI s0, s5, 9
  BNE s0, zero, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s1, n
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  BLT s0, a0, bb10
  JAL zero, bb7
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 1
  ADD s0, s5, zero
  JAL zero, bb1
bb12:   # loop depth 1
  ADDI t6, sp, 0
  ADD s1, t6, s3
  ADDI t6, sp, 0
  ADD s2, t6, s2
  LW s0, 0(s1)
  LW s3, 0(s2)
  ADD a0, s0, zero
  SW s3, 0(s1)
  SW s0, 0(s2)
  JAL zero, bb5
bb13:   # loop depth 1
  ADD s1, s0, zero
  ADD s4, s5, zero
  ADD s3, s2, zero
  # implict jump to bb14
bb14:   # loop depth 2
  ADDI t6, sp, 0
  ADD s3, t6, s3
  SLLIW s6, s4, 2
  LW s3, 0(s3)
  ADDI t6, sp, 0
  ADD s6, t6, s6
  LW s6, 0(s6)
  BLT s6, s3, bb19
  # implict jump to bb15
bb15:   # loop depth 2
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW s4, s4, 1
  SLLIW s3, s1, 2
  SLTI s6, s4, 10
  BNE s6, zero, bb18
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb3
bb18:   # loop depth 2
  JAL zero, bb14
bb19:   # loop depth 2
  ADD s1, s4, zero
  JAL zero, bb16
