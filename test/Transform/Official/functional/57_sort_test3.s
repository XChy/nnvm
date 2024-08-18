.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s2, a2, zero
  ADD s0, a0, zero
  BLT a1, s2, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  SH2ADD t0, a1, s0
  ADDIW s1, a1, 1
  LW a4, 0(t0)
  SLLIW a3, a1, 2
  BLT a1, s2, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, a1, zero
  # implict jump to bb4
bb4:   # loop depth 0
  ADDIW a2, a0, -1
  ADD t0, s0, a3
  ADD a0, s0, zero
  SW a4, 0(t0)
  CALL QuickSort
  ADD a2, s2, zero
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL QuickSort
  JAL zero, bb1
bb5:   # loop depth 0
  ADD a0, a1, zero
  ADD t0, s2, zero
  ADDIW a2, a4, -1
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  BLT a0, t0, bb26
  # implict jump to bb8
bb8:   # loop depth 2
  ADD t2, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  ADDIW t1, t0, -1
  BNE t2, zero, bb25
  # implict jump to bb10
bb10:   # loop depth 1
  BLT a0, t0, bb24
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 2
  SLLIW a3, a0, 2
  BLT a0, t0, bb23
  # implict jump to bb14
bb14:   # loop depth 2
  ADD t2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  BNE t2, zero, bb22
  # implict jump to bb16
bb16:   # loop depth 1
  BLT a0, t0, bb21
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW s1, a0, 1
  BLT a0, t0, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb4
bb20:   # loop depth 1
  JAL zero, bb6
bb21:   # loop depth 1
  SH2ADD a5, a0, s0
  SH2ADD t2, t0, s0
  LW a5, 0(a5)
  ADD t0, t1, zero
  SW a5, 0(t2)
  JAL zero, bb18
bb22:   # loop depth 2
  ADDIW a0, a0, 1
  JAL zero, bb13
bb23:   # loop depth 2
  SH2ADD t2, a0, s0
  LW t2, 0(t2)
  SLT t2, t2, a4
  JAL zero, bb15
bb24:   # loop depth 1
  SH2ADD a0, t0, s0
  ADD t2, s0, a3
  LW a3, 0(a0)
  ADD a0, s1, zero
  SW a3, 0(t2)
  JAL zero, bb12
bb25:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb7
bb26:   # loop depth 2
  SH2ADD t1, t0, s0
  LW t1, 0(t1)
  SLT t2, a2, t1
  JAL zero, bb9
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  LA s1, n
  ADDI t0, zero, 10
  ADDI t1, zero, 4
  ADDI t2, zero, 3
  SW t0, 0(s1)
  ADDI t0, zero, 9
  SW t1, 0(sp)
  ADDI t1, zero, 2
  SW t2, 4(sp)
  ADDI t2, zero, 1
  SW t0, 8(sp)
  ADDI t0, zero, 6
  SW t1, 12(sp)
  ADDI t1, zero, 5
  SW zero, 16(sp)
  ADDI a0, zero, 7
  SW t2, 20(sp)
  ADDI t2, zero, 8
  SW t0, 24(sp)
  ADDI a2, zero, 9
  SW t1, 28(sp)
  ADD a1, zero, zero
  SW a0, 32(sp)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  SW t2, 36(sp)
  CALL QuickSort
  LW t0, 0(s1)
  BLT a0, t0, bb29
  # implict jump to bb28
bb28:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb29:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb31
  JAL zero, bb28
bb31:   # loop depth 1
  JAL zero, bb30
