.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  LA t0, n
  ADDI t1, zero, 10
  ADDI t2, zero, 4
  ADDI a0, zero, 3
  SW t1, 0(t0)
  ADDI t0, zero, 9
  SW t2, 0(sp)
  ADDI t1, zero, 2
  SW a0, 4(sp)
  ADDI t2, zero, 0
  SW t0, 8(sp)
  ADDI t0, zero, 1
  SW t1, 12(sp)
  ADDI t1, zero, 6
  SW t2, 16(sp)
  ADDI t2, zero, 5
  SW t0, 20(sp)
  ADDI t0, zero, 7
  SW t1, 24(sp)
  ADDI t1, zero, 8
  SW t2, 28(sp)
  ADDI a1, zero, 4
  SW t0, 32(sp)
  SW t1, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW t0, a1, 1
  ADDIW t0, t0, 1
  SLTI t1, t0, 10
  BNE t1, zero, bb23
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI t0, zero, -1
  ADDIW a1, a1, -1
  BLT t0, a1, bb22
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a1, zero, 9
  # implict jump to bb4
bb4:   # loop depth 1
  LW t0, 0(sp)
  SLLIW t1, a1, 2
  ADDI a0, zero, 1
  ADDI a2, sp, 0
  ADD t1, a2, t1
  ADDIW a2, a1, -1
  LW t2, 0(t1)
  SW t2, 0(sp)
  SW t0, 0(t1)
  BLT a0, a1, bb12
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, a2, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s1, n
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb10
  JAL zero, bb7
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 1
  ADD a1, a2, zero
  JAL zero, bb4
bb12:   # loop depth 1
  ADDI t0, zero, 1
  ADD t2, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  BLT t0, a2, bb21
  # implict jump to bb14
bb14:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  ADDIW t1, t0, 1
  BNE a0, zero, bb20
  # implict jump to bb16
bb16:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb17
bb17:   # loop depth 2
  SLLIW t0, t2, 2
  ADD t2, t1, zero
  ADDI t1, sp, 0
  ADD t1, t1, t0
  SLLIW a0, t2, 2
  LW t0, 0(t1)
  ADDI a3, sp, 0
  ADD a0, a3, a0
  LW a3, 0(a0)
  BLT a3, t0, bb5
  # implict jump to bb18
bb18:   # loop depth 2
  LW a3, 0(t1)
  SLLIW t0, t2, 1
  ADDIW t0, t0, 1
  LW a4, 0(a0)
  SW a4, 0(t1)
  SW a3, 0(a0)
  BLT t0, a1, bb19
  JAL zero, bb5
bb19:   # loop depth 2
  JAL zero, bb13
bb20:   # loop depth 2
  JAL zero, bb17
bb21:   # loop depth 2
  SLLIW t1, t0, 2
  ADDI a0, sp, 0
  ADD t1, a0, t1
  LW a0, 0(t1)
  LW t1, 4(t1)
  SLT a0, a0, t1
  JAL zero, bb15
bb22:   # loop depth 1
  JAL zero, bb1
bb23:   # loop depth 1
  ADD t2, a1, zero
  # implict jump to bb24
bb24:   # loop depth 2
  SLTI t1, t0, 9
  BNE t1, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb26
bb26:   # loop depth 2
  ADDIW t1, t0, 1
  BNE a0, zero, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb28
bb28:   # loop depth 2
  SLLIW t0, t2, 2
  ADD t2, t1, zero
  ADDI t1, sp, 0
  ADD t1, t1, t0
  SLLIW a0, t2, 2
  LW t0, 0(t1)
  ADDI a2, sp, 0
  ADD a0, a2, a0
  LW a2, 0(a0)
  BLT a2, t0, bb2
  # implict jump to bb29
bb29:   # loop depth 2
  LW a2, 0(t1)
  SLLIW t0, t2, 1
  ADDIW t0, t0, 1
  SLTI a4, t0, 10
  LW a3, 0(a0)
  SW a3, 0(t1)
  SW a2, 0(a0)
  BNE a4, zero, bb30
  JAL zero, bb2
bb30:   # loop depth 2
  JAL zero, bb24
bb31:   # loop depth 2
  JAL zero, bb28
bb32:   # loop depth 2
  SLLIW t1, t0, 2
  ADDI a0, sp, 0
  ADD t1, a0, t1
  LW a0, 0(t1)
  LW t1, 4(t1)
  SLT a0, a0, t1
  JAL zero, bb26
