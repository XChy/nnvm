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
  LA t0, n
  ADDI t1, zero, 10
  ADDI t2, zero, 4
  ADDI a0, zero, 3
  SW t1, 0(t0)
  ADDI t0, zero, 9
  SW t2, 80(sp)
  ADDI t1, zero, 2
  SW a0, 84(sp)
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
  ADDI t0, zero, 10
  SW t1, 32(sp)
  SW t2, 36(sp)
  LW t1, 16(sp)
  ADDIW t1, t1, 1
  SW t1, 16(sp)
  LW t1, 12(sp)
  ADDIW t1, t1, 1
  SW t1, 12(sp)
  LW t1, 36(sp)
  ADDIW t1, t1, 1
  SW t1, 36(sp)
  LW t1, 8(sp)
  ADDIW t1, t1, 1
  SW t1, 8(sp)
  LW t1, 0(sp)
  ADDIW t1, t1, 1
  SW t1, 0(sp)
  LW t1, 4(sp)
  ADDIW t1, t1, 1
  SW t1, 4(sp)
  LW t1, 24(sp)
  ADDIW t1, t1, 1
  SW t1, 24(sp)
  LW t1, 20(sp)
  ADDIW t1, t1, 1
  SW t1, 20(sp)
  LW t1, 28(sp)
  ADDIW t1, t1, 1
  SW t1, 28(sp)
  LW t1, 32(sp)
  ADDIW t1, t1, 1
  SW t1, 32(sp)
  LW t1, 4(sp)
  LW t2, 0(sp)
  ADDW t1, t1, t2
  SW t1, 4(sp)
  LW t2, 8(sp)
  ADDW t1, t2, t1
  SW t1, 8(sp)
  LW t2, 12(sp)
  ADDW t1, t2, t1
  SW t1, 12(sp)
  LW t2, 16(sp)
  ADDW t1, t2, t1
  SW t1, 16(sp)
  LW t2, 20(sp)
  ADDW t1, t2, t1
  SW t1, 20(sp)
  LW t2, 24(sp)
  ADDW t1, t2, t1
  SW t1, 24(sp)
  LW t2, 28(sp)
  ADDW t1, t2, t1
  SW t1, 28(sp)
  LW t2, 32(sp)
  ADDW t1, t2, t1
  SW t1, 32(sp)
  LW t2, 36(sp)
  ADDW t1, t2, t1
  SW t1, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
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
  BLT zero, t0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA s1, n
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI a0, sp, 40
  ADD t0, a0, t0
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 1
  JAL zero, bb1
