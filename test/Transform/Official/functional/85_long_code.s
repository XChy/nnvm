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
  ADDIW s6, a1, 1
  LW s2, 0(a0)
  SLLIW s5, a1, 2
  BLT a1, s4, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s0, a1, zero
  # implict jump to bb4
bb4:   # loop depth 0
  ADDIW a2, s0, -1
  ADD s0, s3, s5
  ADD a0, s3, zero
  SW s2, 0(s0)
  CALL QuickSort
  ADD a2, s4, zero
  ADD a1, s6, zero
  ADD a0, s3, zero
  CALL QuickSort
  JAL zero, bb1
bb5:   # loop depth 0
  ADD a2, s4, zero
  ADD s0, a1, zero
  ADDIW s7, s2, -1
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  ADD s1, a2, zero
  BLT s0, s1, bb26
  # implict jump to bb8
bb8:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  ADDIW a2, s1, -1
  BNE a0, zero, bb25
  # implict jump to bb10
bb10:   # loop depth 1
  BLT s0, s1, bb24
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s6, s0, zero
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 2
  ADD s0, s6, zero
  SLLIW s5, s0, 2
  BLT s0, s1, bb23
  # implict jump to bb14
bb14:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  BNE a0, zero, bb22
  # implict jump to bb16
bb16:   # loop depth 1
  BLT s0, s1, bb21
  # implict jump to bb17
bb17:   # loop depth 1
  ADD a2, s1, zero
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW s6, s0, 1
  BLT s0, a2, bb20
  # implict jump to bb19
bb19:   # loop depth 0
  JAL zero, bb4
bb20:   # loop depth 1
  JAL zero, bb6
bb21:   # loop depth 1
  SH2ADD s6, s0, s3
  SH2ADD a0, s1, s3
  LW s1, 0(s6)
  SW s1, 0(a0)
  JAL zero, bb18
bb22:   # loop depth 2
  ADDIW s6, s0, 1
  JAL zero, bb13
bb23:   # loop depth 2
  SH2ADD a0, s0, s3
  LW a0, 0(a0)
  SLT a0, a0, s2
  JAL zero, bb15
bb24:   # loop depth 1
  SH2ADD s0, s1, s3
  ADD a0, s3, s5
  LW s0, 0(s0)
  SW s0, 0(a0)
  JAL zero, bb12
bb25:   # loop depth 2
  JAL zero, bb7
bb26:   # loop depth 2
  SH2ADD a0, s1, s3
  LW a0, 0(a0)
  SLT a0, s7, a0
  JAL zero, bb9
main:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, -240
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  LA a0, n
  ADDI s0, zero, 32
  ADDI s1, zero, 7
  ADDI s2, zero, 23
  SW s0, 0(a0)
  ADDI a0, zero, 89
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 0(t6)
  ADDI s0, zero, 26
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s2, 4(t6)
  ADDI s1, zero, 282
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 8(t6)
  ADDI a0, zero, 254
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 12(t6)
  ADDI s0, zero, 27
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 16(t6)
  ADDI s1, zero, 5
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 20(t6)
  ADDI a0, zero, 83
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 24(t6)
  ADDI s0, zero, 273
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 28(t6)
  ADDI s1, zero, 574
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 32(t6)
  ADDI a0, zero, 905
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 36(t6)
  ADDI s0, zero, 354
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 40(t6)
  ADDI s1, zero, 657
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 44(t6)
  ADDI a0, zero, 935
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 48(t6)
  ADDI s0, zero, 264
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 52(t6)
  ADDI s1, zero, 639
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 56(t6)
  ADDI a0, zero, 459
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 60(t6)
  ADDI s0, zero, 29
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 64(t6)
  ADDI s1, zero, 68
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 68(t6)
  ADDI a0, zero, 929
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 72(t6)
  ADDI s0, zero, 756
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 76(t6)
  ADDI s1, zero, 452
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 80(t6)
  ADDI a0, zero, 279
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 84(t6)
  ADDI s0, zero, 58
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 88(t6)
  ADDI s1, zero, 87
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 92(t6)
  ADDI a0, zero, 96
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 96(t6)
  ADDI s0, zero, 36
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 100(t6)
  ADDI s1, zero, 39
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 104(t6)
  ADDI a0, zero, 28
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 108(t6)
  ADDI s0, zero, 1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 112(t6)
  ADDI s1, zero, 290
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW a0, 116(t6)
  ADDI a0, zero, 7
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s0, 120(t6)
  ADDI s0, zero, 23
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  SW s1, 124(t6)
  ADDI s1, zero, 89
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 0(t6)
  ADDI a0, zero, 26
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 4(t6)
  ADDI s0, zero, 282
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 8(t6)
  ADDI s1, zero, 254
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 12(t6)
  ADDI a0, zero, 27
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 16(t6)
  ADDI s0, zero, 5
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 20(t6)
  ADDI s1, zero, 83
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 24(t6)
  ADDI a0, zero, 273
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 28(t6)
  ADDI s0, zero, 574
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 32(t6)
  ADDI s1, zero, 905
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 36(t6)
  ADDI a0, zero, 354
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 40(t6)
  ADDI s0, zero, 657
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 44(t6)
  ADDI s1, zero, 935
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 48(t6)
  ADDI a0, zero, 264
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 52(t6)
  ADDI s0, zero, 639
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 56(t6)
  ADDI s1, zero, 459
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 60(t6)
  ADDI a0, zero, 29
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 64(t6)
  ADDI s0, zero, 68
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 68(t6)
  ADDI s1, zero, 929
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 72(t6)
  ADDI a0, zero, 756
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 76(t6)
  ADDI s0, zero, 452
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 80(t6)
  ADDI s1, zero, 279
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 84(t6)
  ADDI a0, zero, 58
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 88(t6)
  ADDI s0, zero, 87
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 92(t6)
  ADDI s1, zero, 96
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 96(t6)
  ADDI a0, zero, 36
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 100(t6)
  ADDI s0, zero, 39
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 104(t6)
  ADDI s1, zero, 28
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 108(t6)
  ADDI a0, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 112(t6)
  ADDI s0, zero, 290
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 116(t6)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW a0, 120(t6)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s0, 124(t6)
  # implict jump to bb28
bb28:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LA s0, n
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW s2, 0(s0)
  ADDIW s3, s2, -1
  BLT zero, s3, bb113
  # implict jump to bb29
bb29:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LA s0, n
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW a0, 0(s0)
  ANDI s0, a0, 1
  BEQ s0, zero, bb112
  # implict jump to bb30
bb30:   # loop depth 0
  SRAIW s0, a0, 31
  SRLIW s0, s0, 31
  ADD a0, a0, s0
  SRAIW a0, a0, 1
  SLLIW a0, a0, 2
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW a0, 0(a0)
  # implict jump to bb31
bb31:   # loop depth 0
  ADD s0, zero, zero
  CALL putint
  # implict jump to bb32
bb32:   # loop depth 1
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 72
  ADD a0, t6, a0
  SLTI s1, s0, 1000
  SW zero, 0(a0)
  BNE s1, zero, bb111
  # implict jump to bb33
bb33:   # loop depth 0
  LA a0, n
  LW s3, 0(a0)
  BLT zero, s3, bb104
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb35
bb35:   # loop depth 0
  LA s0, n
  CALL putint
  LW s2, 0(s0)
  BLT zero, s2, bb100
  # implict jump to bb36
bb36:   # loop depth 0
  ADDIW s3, s2, -1
  BLT zero, s3, bb88
  # implict jump to bb37
bb37:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LA s0, n
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW s2, 0(s0)
  BLT zero, s2, bb84
  # implict jump to bb38
bb38:   # loop depth 0
  ADDI a0, zero, 1
  BLT a0, s2, bb75
  # implict jump to bb39
bb39:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LA s0, n
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW s0, 0(s0)
  BLT zero, s0, bb72
  # implict jump to bb40
bb40:   # loop depth 0
  ADDI a2, zero, 31
  ADD a1, zero, zero
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  ADD a0, a0, zero
  LA s0, n
  CALL QuickSort
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW s2, 0(s0)
  BLT zero, s2, bb68
  # implict jump to bb41
bb41:   # loop depth 0
  BLT zero, s2, bb62
  # implict jump to bb42
bb42:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  LA s0, n
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LW s2, 0(s0)
  BLT zero, s2, bb58
  # implict jump to bb43
bb43:   # loop depth 0
  BLT zero, s2, bb49
  # implict jump to bb44
bb44:   # loop depth 0
  ADDIW a0, s2, -2
  BLT a0, s2, bb46
  # implict jump to bb45
bb45:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
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
  LUI t0, 1
  ADDIW t0, t0, 240
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb46:   # loop depth 0
  # implict jump to bb47
bb47:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  SW zero, 0(s0)
  BLT a0, s2, bb48
  JAL zero, bb45
bb48:   # loop depth 1
  JAL zero, bb47
bb49:   # loop depth 0
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD a0, zero, zero
  # implict jump to bb50
bb50:   # loop depth 1
  SLLIW s4, s3, 2
  SLTI s1, s3, 2
  BNE s1, zero, bb57
  # implict jump to bb51
bb51:   # loop depth 1
  XORI s1, s3, 2
  BEQ s1, zero, bb56
  # implict jump to bb52
bb52:   # loop depth 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s4, t6, s4
  ADDI s5, zero, 3
  LW s1, 0(s4)
  ADDW a0, a0, s1
  LW s1, -8(s4)
  SUBW a0, a0, s0
  DIVW s5, a0, s5
  ADD s0, s1, zero
  SW s5, -8(s4)
  # implict jump to bb53
bb53:   # loop depth 1
  # implict jump to bb54
bb54:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s2, bb55
  JAL zero, bb44
bb55:   # loop depth 1
  JAL zero, bb50
bb56:   # loop depth 1
  ADDI s1, zero, 3
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  LW s0, 0(t6)
  DIVW s1, a0, s1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SW s1, 0(t6)
  JAL zero, bb53
bb57:   # loop depth 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s1, t6, s4
  LW s1, 0(s1)
  ADDW a0, a0, s1
  JAL zero, bb54
bb58:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb59
bb59:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD s1, t6, s0
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s1, 0(s1)
  SW s1, 0(s0)
  BLT a0, s2, bb61
  # implict jump to bb60
bb60:   # loop depth 0
  JAL zero, bb43
bb61:   # loop depth 1
  JAL zero, bb59
bb62:   # loop depth 0
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb63
bb63:   # loop depth 1
  SLLI s3, s1, 1
  SLLIW s0, s1, 2
  SRLI s4, s3, 62
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s3, t6, s0
  ADD s4, s1, s4
  LW s0, 0(s3)
  ANDI s4, s4, -4
  SUBW s4, s1, s4
  XORI s4, s4, 3
  ADDW s0, a0, s0
  BNE s4, zero, bb67
  # implict jump to bb64
bb64:   # loop depth 1
  ADD a0, zero, zero
  SW s0, 0(s3)
  # implict jump to bb65
bb65:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s2, bb66
  JAL zero, bb42
bb66:   # loop depth 1
  JAL zero, bb63
bb67:   # loop depth 1
  ADD a0, s0, zero
  SW zero, 0(s3)
  JAL zero, bb65
bb68:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb69
bb69:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD s1, t6, s0
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s1, 0(s1)
  SW s1, 0(s0)
  BLT a0, s2, bb71
  # implict jump to bb70
bb70:   # loop depth 0
  JAL zero, bb41
bb71:   # loop depth 1
  JAL zero, bb69
bb72:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 1
  SLLIW a1, a0, 2
  ADDIW a0, a0, 1
  LUI a2, 1
  ADDIW a2, a2, 104
  ADD a2, a2, sp
  ADD a2, a2, a1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD a1, t6, a1
  LW a2, 0(a2)
  SW a2, 0(a1)
  BLT a0, s0, bb74
  JAL zero, bb40
bb74:   # loop depth 1
  JAL zero, bb73
bb75:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb76
bb76:   # loop depth 1
  SLLIW s0, s1, 2
  ADDIW a0, s1, -1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s3, 0(s0)
  # implict jump to bb77
bb77:   # loop depth 2
  ADDI s0, zero, -1
  SLLIW s4, a0, 2
  BLT s0, a0, bb83
  # implict jump to bb78
bb78:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb79
bb79:   # loop depth 2
  BNE s0, zero, bb82
  # implict jump to bb80
bb80:   # loop depth 1
  LUI a0, 1
  ADDIW a0, a0, -24
  ADD a0, a0, sp
  ADD a0, a0, s4
  ADDIW s1, s1, 1
  SW s3, 4(a0)
  BLT s1, s2, bb81
  JAL zero, bb39
bb81:   # loop depth 1
  JAL zero, bb76
bb82:   # loop depth 2
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s4
  ADDIW a0, a0, -1
  LW s4, 0(s0)
  SW s4, 4(s0)
  JAL zero, bb77
bb83:   # loop depth 2
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s4
  LW s0, 0(s0)
  SLT s0, s3, s0
  JAL zero, bb79
bb84:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb85
bb85:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD s1, t6, s0
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s1, 0(s1)
  SW s1, 0(s0)
  BLT a0, s2, bb87
  # implict jump to bb86
bb86:   # loop depth 0
  JAL zero, bb38
bb87:   # loop depth 1
  JAL zero, bb85
bb88:   # loop depth 0
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb89
bb89:   # loop depth 1
  SUBW s1, s2, a0
  ADDIW s5, s1, -1
  BLT zero, s5, bb93
  # implict jump to bb90
bb90:   # loop depth 1
  # implict jump to bb91
bb91:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s3, bb92
  JAL zero, bb37
bb92:   # loop depth 1
  JAL zero, bb89
bb93:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb94
bb94:   # loop depth 2
  SLLIW s4, s1, 2
  ADDIW s1, s1, 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s6, t6, s4
  LW s4, 0(s6)
  LW s7, 4(s6)
  BLT s7, s4, bb99
  # implict jump to bb95
bb95:   # loop depth 2
  # implict jump to bb96
bb96:   # loop depth 2
  BLT s1, s5, bb98
  # implict jump to bb97
bb97:   # loop depth 1
  JAL zero, bb91
bb98:   # loop depth 2
  JAL zero, bb94
bb99:   # loop depth 2
  LW s4, 4(s6)
  LW s7, 0(s6)
  ADD s0, s4, zero
  SW s7, 4(s6)
  SW s4, 0(s6)
  JAL zero, bb96
bb100:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb101
bb101:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, 1
  LUI t6, 1
  ADDIW t6, t6, 104
  ADD t6, t6, sp
  ADD s1, t6, s0
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s0, t6, s0
  LW s1, 0(s1)
  SW s1, 0(s0)
  BLT a0, s2, bb103
  # implict jump to bb102
bb102:   # loop depth 0
  JAL zero, bb36
bb103:   # loop depth 1
  JAL zero, bb101
bb104:   # loop depth 0
  ADD a0, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb105
bb105:   # loop depth 1
  SLLIW s1, s0, 2
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s1, t6, s1
  LW s1, 0(s1)
  SLLIW s4, s1, 2
  ADDI t6, sp, 72
  ADD s4, t6, s4
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  BLT s2, s5, bb110
  # implict jump to bb106
bb106:   # loop depth 1
  # implict jump to bb107
bb107:   # loop depth 1
  ADDIW s0, s0, 1
  MAX s2, s5, s2
  BLT s0, s3, bb109
  # implict jump to bb108
bb108:   # loop depth 0
  JAL zero, bb35
bb109:   # loop depth 1
  JAL zero, bb105
bb110:   # loop depth 1
  ADD a0, s1, zero
  JAL zero, bb107
bb111:   # loop depth 1
  JAL zero, bb32
bb112:   # loop depth 0
  SRAIW s0, a0, 31
  SRLIW s0, s0, 31
  ADD a0, a0, s0
  SRAIW a0, a0, 1
  SLLIW a0, a0, 2
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW s0, 0(a0)
  LW a0, -4(a0)
  ADDW a0, s0, a0
  SRAIW s0, a0, 31
  SRLIW s0, s0, 31
  ADD a0, a0, s0
  SRAIW a0, a0, 1
  JAL zero, bb31
bb113:   # loop depth 0
  ADD a0, zero, zero
  ADD s4, zero, zero
  # implict jump to bb114
bb114:   # loop depth 1
  SUBW s0, s2, s4
  ADDIW s5, s0, -1
  BLT zero, s5, bb118
  # implict jump to bb115
bb115:   # loop depth 1
  # implict jump to bb116
bb116:   # loop depth 1
  ADDIW s4, s4, 1
  BLT s4, s3, bb117
  JAL zero, bb29
bb117:   # loop depth 1
  JAL zero, bb114
bb118:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb119
bb119:   # loop depth 2
  SLLIW s1, s0, 2
  ADDIW s0, s0, 1
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  ADD s6, t6, s1
  LW s1, 0(s6)
  LW s7, 4(s6)
  BLT s7, s1, bb124
  # implict jump to bb120
bb120:   # loop depth 2
  # implict jump to bb121
bb121:   # loop depth 2
  BLT s0, s5, bb123
  # implict jump to bb122
bb122:   # loop depth 1
  JAL zero, bb116
bb123:   # loop depth 2
  JAL zero, bb119
bb124:   # loop depth 2
  LW s1, 4(s6)
  LW s7, 0(s6)
  ADD a0, s1, zero
  SW s7, 4(s6)
  SW s1, 0(s6)
  JAL zero, bb121
