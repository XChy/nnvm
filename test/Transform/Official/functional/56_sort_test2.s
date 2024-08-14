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
  LA s1, n
  ADDI t0, zero, 10
  ADDI t1, zero, 4
  ADDI t2, zero, 3
  SW t0, 0(s1)
  ADDI t0, zero, 9
  SW t1, 0(sp)
  ADDI t1, zero, 2
  SW t2, 4(sp)
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
  ADDI t2, zero, 1
  SW t0, 32(sp)
  SW t1, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW t0, t2, 2
  ADDIW t1, t2, -1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  # implict jump to bb2
bb2:   # loop depth 2
  ADDI t0, zero, -1
  SLLIW a1, t1, 2
  BLT t0, t1, bb13
  # implict jump to bb3
bb3:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 2
  BNE t0, zero, bb12
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW t2, t2, 1
  ADDI t0, sp, 0
  ADD t0, t0, a1
  SLTI t1, t2, 10
  SW a0, 4(t0)
  BNE t1, zero, bb11
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
  JAL zero, bb1
bb12:   # loop depth 2
  ADDI t0, sp, 0
  ADD t0, t0, a1
  ADDIW t1, t1, -1
  LW a1, 0(t0)
  SW a1, 4(t0)
  JAL zero, bb2
bb13:   # loop depth 2
  ADDI t0, sp, 0
  ADD t0, t0, a1
  LW t0, 0(t0)
  SLT t0, a0, t0
  JAL zero, bb4
