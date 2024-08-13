.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global findSmallest
.global main
.section .bss
array:
.space 4000
.section .data

.section .text
findSmallest:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  ADD s10, a3, zero
  ADD s8, a2, zero
  ADD s7, a1, zero
  BEQ a0, s7, bb19
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, array
  ADDIW s6, a0, 1
  SLLIW s1, a0, 2
  SH2ADD s2, s7, s0
  LW s3, 0(s2)
  BLT a0, s7, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s3, a0, zero
  ADD s0, s1, zero
  # implict jump to bb3
bb3:   # loop depth 0
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  LW s4, 0(s2)
  SW s4, 0(s0)
  SW s1, 0(s2)
  BEQ s8, s3, bb8
  # implict jump to bb4
bb4:   # loop depth 0
  BLT s8, s3, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a3, s10, zero
  ADD a2, s8, zero
  ADD a1, s7, zero
  ADD a0, s6, zero
  CALL findSmallest
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADDIW a1, s3, -1
  ADD a3, s10, zero
  ADD a2, s8, zero
  CALL findSmallest
  JAL zero, bb6
bb8:   # loop depth 0
  ADDI a0, zero, 0
  BLT a0, s3, bb9
  JAL zero, bb6
bb9:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  LA s1, array
  ADDIW s0, a0, 1
  SH2ADD a0, a0, s1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BLT s0, s3, bb11
  JAL zero, bb6
bb11:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb10
bb12:   # loop depth 0
  ADD s5, a0, zero
  ADD s0, a0, zero
  ADD s4, s1, zero
  ADD s1, s6, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LA s6, array
  SH2ADD s6, s5, s6
  LW s9, 0(s6)
  BGE s3, s9, bb18
  # implict jump to bb14
bb14:   # loop depth 1
  ADD s1, s0, zero
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s0, s1, zero
  ADDIW s4, s5, 1
  ADDIW s6, s0, 1
  SLLIW s1, s0, 2
  BLT s4, s7, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  ADD s3, s0, zero
  ADD s0, s1, zero
  JAL zero, bb3
bb17:   # loop depth 1
  ADD s5, s4, zero
  ADD s4, s1, zero
  ADD s1, s6, zero
  JAL zero, bb13
bb18:   # loop depth 1
  LA s9, array
  LW s0, 0(s6)
  ADD s4, s9, s4
  LW s9, 0(s4)
  SW s9, 0(s6)
  SW s0, 0(s4)
  JAL zero, bb15
bb19:   # loop depth 0
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  BLT zero, s2, bb22
  # implict jump to bb21
bb21:   # loop depth 0
  ADDIW a1, s2, -1
  ADD a3, s2, zero
  ADD a2, s3, zero
  ADD a0, zero, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb22:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  LA s5, array
  CALL getint
  ADDIW s1, s0, 1
  ADD s4, a0, zero
  SH2ADD s0, s0, s5
  SW s4, 0(s0)
  BLT s1, s2, bb24
  JAL zero, bb21
bb24:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb23
