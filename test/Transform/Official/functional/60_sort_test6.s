.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -144
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  LA s1, n
  ADDI t0, zero, 10
  ADDI t1, zero, 4
  ADDI t2, zero, 3
  SW t0, 0(s1)
  ADDI t0, zero, 9
  SW t1, 80(sp)
  ADDI t1, zero, 2
  SW t2, 84(sp)
  ADDI t2, zero, 0
  SW t0, 88(sp)
  ADDI t0, zero, 1
  SW t1, 92(sp)
  ADDI t1, zero, 6
  SW t2, 96(sp)
  ADDI t2, zero, 5
  SW t0, 100(sp)
  ADDI t0, zero, 7
  SW t1, 104(sp)
  ADDI t1, zero, 8
  SW t2, 108(sp)
  ADDI t2, zero, 0
  SW t0, 112(sp)
  ADDI t0, zero, 0
  SW t1, 116(sp)
  ADDI t1, zero, 0
  SW t2, 0(sp)
  ADDI t2, zero, 0
  SW t0, 4(sp)
  ADDI t0, zero, 0
  SW t1, 8(sp)
  ADDI t1, zero, 0
  SW t2, 12(sp)
  ADDI t2, zero, 0
  SW t0, 16(sp)
  ADDI t0, zero, 0
  SW t1, 20(sp)
  ADDI t1, zero, 0
  SW t2, 24(sp)
  ADDI t2, zero, 0
  SW t0, 28(sp)
  ADD t0, zero, zero
  SW t1, 32(sp)
  SW t2, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI a0, sp, 80
  ADD t1, a0, t1
  SLTI a0, t0, 10
  LW t1, 0(t1)
  SLLIW t1, t1, 2
  ADDI t2, sp, 0
  ADD t1, t2, t1
  LW t2, 0(t1)
  ADDIW t2, t2, 1
  SW t2, 0(t1)
  BNE a0, zero, bb13
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI t0, zero, 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI a1, sp, 0
  ADD t1, a1, t1
  SLTI a1, t0, 10
  LW t2, 0(t1)
  LW a0, -4(t1)
  ADDW t2, t2, a0
  SW t2, 0(t1)
  BNE a1, zero, bb12
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI t0, zero, 10
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t2, sp, 80
  ADD t1, t2, t1
  LW t1, -4(t1)
  SLLIW t2, t1, 2
  ADDI a0, sp, 0
  ADD t2, a0, t2
  LW a0, 0(t2)
  ADDIW a0, a0, -1
  SLLIW a1, a0, 2
  SW a0, 0(t2)
  ADDI t2, sp, 40
  ADD t2, t2, a1
  SW t1, 0(t2)
  BLT zero, t0, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 40
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
  JAL zero, bb5
bb12:   # loop depth 1
  JAL zero, bb3
bb13:   # loop depth 1
  JAL zero, bb1
