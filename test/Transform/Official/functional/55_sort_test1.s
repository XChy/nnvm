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
  ADDI a0, zero, 7
  SW t1, 24(sp)
  ADDI t1, zero, 8
  SW t2, 28(sp)
  ADD t0, zero, zero
  SW a0, 32(sp)
  ADD a0, zero, zero
  SW t1, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI t1, zero, 10
  SUBW t1, t1, a0
  ADDIW a1, t1, -1
  BLT zero, a1, bb10
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDIW a0, a0, 1
  SLTI t1, a0, 9
  BNE t1, zero, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 1
  JAL zero, bb1
bb10:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb11
bb11:   # loop depth 2
  SLLIW t1, t2, 2
  ADDIW t2, t2, 1
  ADDI a2, sp, 0
  ADD a2, a2, t1
  LW t1, 0(a2)
  LW a3, 4(a2)
  BLT a3, t1, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  BLT t2, a1, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  JAL zero, bb3
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  LW t1, 4(a2)
  LW a3, 0(a2)
  ADD t0, t1, zero
  SW a3, 4(a2)
  SW t1, 0(a2)
  JAL zero, bb13
