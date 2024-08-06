.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -160
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  LA a0, n
  ADDI s0, zero, 10
  SW s0, 0(a0)
  ADDI a0, zero, 4
  SW a0, 80(sp)
  ADDI a0, zero, 3
  SW a0, 84(sp)
  ADDI a0, zero, 9
  SW a0, 88(sp)
  ADDI a0, zero, 2
  SW a0, 92(sp)
  ADDI a0, zero, 0
  SW a0, 96(sp)
  ADDI a0, zero, 1
  SW a0, 100(sp)
  ADDI a0, zero, 6
  SW a0, 104(sp)
  ADDI a0, zero, 5
  SW a0, 108(sp)
  ADDI a0, zero, 7
  SW a0, 112(sp)
  ADDI a0, zero, 8
  SW a0, 116(sp)
  ADDI a0, zero, 0
  SW a0, 0(sp)
  ADDI a0, zero, 0
  SW a0, 4(sp)
  ADDI a0, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 0
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 0
  SW a0, 20(sp)
  ADDI a0, zero, 0
  SW a0, 24(sp)
  ADDI a0, zero, 0
  SW a0, 28(sp)
  ADDI a0, zero, 0
  SW a0, 32(sp)
  ADDI a0, zero, 0
  SW a0, 36(sp)
  LW a0, 16(sp)
  ADDIW a0, a0, 1
  SW a0, 16(sp)
  LW a0, 12(sp)
  ADDIW a0, a0, 1
  SW a0, 12(sp)
  LW a0, 36(sp)
  ADDIW a0, a0, 1
  SW a0, 36(sp)
  LW a0, 8(sp)
  ADDIW a0, a0, 1
  SW a0, 8(sp)
  LW a0, 0(sp)
  ADDIW a0, a0, 1
  SW a0, 0(sp)
  LW a0, 4(sp)
  ADDIW a0, a0, 1
  SW a0, 4(sp)
  LW a0, 24(sp)
  ADDIW a0, a0, 1
  SW a0, 24(sp)
  LW a0, 20(sp)
  ADDIW a0, a0, 1
  SW a0, 20(sp)
  LW a0, 28(sp)
  ADDIW a0, a0, 1
  SW a0, 28(sp)
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  SW a0, 32(sp)
  LW a0, 4(sp)
  LW s0, 0(sp)
  ADDW a0, a0, s0
  SW a0, 4(sp)
  LW s0, 8(sp)
  ADDW a0, s0, a0
  SW a0, 8(sp)
  LW s0, 12(sp)
  ADDW a0, s0, a0
  SW a0, 12(sp)
  LW s0, 16(sp)
  ADDW a0, s0, a0
  SW a0, 16(sp)
  LW s0, 20(sp)
  ADDW a0, s0, a0
  SW a0, 20(sp)
  LW s0, 24(sp)
  ADDW a0, s0, a0
  SW a0, 24(sp)
  LW s0, 28(sp)
  ADDW a0, s0, a0
  SW a0, 28(sp)
  LW s0, 32(sp)
  ADDW a0, s0, a0
  SW a0, 32(sp)
  LW s0, 36(sp)
  ADDW a0, s0, a0
  SW a0, 36(sp)
  ADDI a0, zero, 10
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDI t6, sp, 80
  ADD s0, t6, s0
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  ADDI t6, sp, 0
  ADD s1, t6, s1
  LW s2, 0(s1)
  ADDIW s2, s2, -1
  SW s2, 0(s1)
  SLLIW s1, s2, 2
  ADDI t6, sp, 40
  ADD s1, t6, s1
  SW s0, 0(s1)
  BLT zero, a0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW a0, s0, 2
  ADDI t6, sp, 40
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 1
  JAL zero, bb1
