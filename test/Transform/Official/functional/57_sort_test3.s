.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s4, a2, zero
  ADD s3, a0, zero
  BLT a1, s4, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SH2ADD a0, a1, s3
  ADDIW s0, a1, 1
  LW s1, 0(a0)
  SLLIW s5, a1, 2
  BLT a1, s4, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s6, a1, zero
  # implict jump to bb4
bb4:   # loop depth 0
  ADDIW a2, s6, -1
  ADD s2, s3, s5
  ADD a0, s3, zero
  SW s1, 0(s2)
  CALL QuickSort
  ADD a2, s4, zero
  ADD a1, s0, zero
  ADD a0, s3, zero
  CALL QuickSort
  JAL zero, bb1
bb5:   # loop depth 0
  ADD s6, a1, zero
  ADD a0, s4, zero
  ADDIW s2, s1, -1
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  BLT s6, a0, bb26
  # implict jump to bb8
bb8:   # loop depth 2
  ADD s7, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  ADDIW a2, a0, -1
  BNE s7, zero, bb25
  # implict jump to bb10
bb10:   # loop depth 1
  BLT s6, a0, bb24
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 2
  SLLIW s5, s6, 2
  BLT s6, a0, bb23
  # implict jump to bb14
bb14:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  BNE s0, zero, bb22
  # implict jump to bb16
bb16:   # loop depth 1
  BLT s6, a0, bb21
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW s0, s6, 1
  BLT s6, a0, bb20
  # implict jump to bb19
bb19:   # loop depth 0
  JAL zero, bb4
bb20:   # loop depth 1
  JAL zero, bb6
bb21:   # loop depth 1
  SH2ADD s7, s6, s3
  SH2ADD s0, a0, s3
  LW s7, 0(s7)
  ADD a0, a2, zero
  SW s7, 0(s0)
  JAL zero, bb18
bb22:   # loop depth 2
  ADDIW s6, s6, 1
  JAL zero, bb13
bb23:   # loop depth 2
  SH2ADD s0, s6, s3
  LW s0, 0(s0)
  SLT s0, s0, s1
  JAL zero, bb15
bb24:   # loop depth 1
  SH2ADD s6, a0, s3
  ADD s5, s3, s5
  LW s7, 0(s6)
  ADD s6, s0, zero
  SW s7, 0(s5)
  JAL zero, bb12
bb25:   # loop depth 2
  ADD a0, a2, zero
  JAL zero, bb7
bb26:   # loop depth 2
  SH2ADD a2, a0, s3
  LW a2, 0(a2)
  SLT s7, s2, a2
  JAL zero, bb9
main:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  LA a0, n
  ADDI a1, zero, 10
  ADDI a2, zero, 4
  ADDI s0, zero, 3
  SW a1, 0(a0)
  ADDI a0, zero, 9
  SW a2, 0(sp)
  ADDI a1, zero, 2
  SW s0, 4(sp)
  ADDI a2, zero, 1
  SW a0, 8(sp)
  ADDI a0, zero, 6
  SW a1, 12(sp)
  ADDI a1, zero, 5
  SW zero, 16(sp)
  ADDI s0, zero, 7
  SW a2, 20(sp)
  ADDI s1, zero, 8
  SW a0, 24(sp)
  LA s2, n
  SW a1, 28(sp)
  ADDI a2, zero, 9
  SW s0, 32(sp)
  ADD a1, zero, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  SW s1, 36(sp)
  CALL QuickSort
  LW s0, 0(s2)
  BLT a0, s0, bb29
  # implict jump to bb28
bb28:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb29:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb30
bb30:   # loop depth 1
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
  BLT s0, a0, bb31
  JAL zero, bb28
bb31:   # loop depth 1
  JAL zero, bb30
