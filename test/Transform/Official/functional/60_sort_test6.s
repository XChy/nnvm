.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  SD s3, 152(sp)
  LA a0, n
  ADDI s0, zero, 10
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SW s1, 80(sp)
  ADDI s0, zero, 2
  SW s2, 84(sp)
  ADDI s1, zero, 0
  SW a0, 88(sp)
  ADDI a0, zero, 1
  SW s0, 92(sp)
  ADDI s0, zero, 6
  SW s1, 96(sp)
  ADDI s1, zero, 5
  SW a0, 100(sp)
  ADDI a0, zero, 7
  SW s0, 104(sp)
  ADDI s0, zero, 8
  SW s1, 108(sp)
  ADDI s1, zero, 0
  SW a0, 112(sp)
  ADDI a0, zero, 0
  SW s0, 116(sp)
  ADDI s0, zero, 0
  SW s1, 0(sp)
  ADDI s1, zero, 0
  SW a0, 4(sp)
  ADDI a0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s1, 12(sp)
  ADDI s1, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 0
  SW s0, 20(sp)
  ADDI s0, zero, 0
  SW s1, 24(sp)
  ADDI s1, zero, 0
  SW a0, 28(sp)
  ADDI a0, zero, 10
  SW s0, 32(sp)
  SW s1, 36(sp)
  LW s0, 16(sp)
  ADDIW s0, s0, 1
  SW s0, 16(sp)
  LW s0, 12(sp)
  ADDIW s0, s0, 1
  SW s0, 12(sp)
  LW s0, 36(sp)
  ADDIW s0, s0, 1
  SW s0, 36(sp)
  LW s0, 8(sp)
  ADDIW s0, s0, 1
  SW s0, 8(sp)
  LW s0, 0(sp)
  ADDIW s0, s0, 1
  SW s0, 0(sp)
  LW s0, 4(sp)
  ADDIW s0, s0, 1
  SW s0, 4(sp)
  LW s0, 24(sp)
  ADDIW s0, s0, 1
  SW s0, 24(sp)
  LW s0, 20(sp)
  ADDIW s0, s0, 1
  SW s0, 20(sp)
  LW s0, 28(sp)
  ADDIW s0, s0, 1
  SW s0, 28(sp)
  LW s0, 32(sp)
  ADDIW s0, s0, 1
  SW s0, 32(sp)
  LW s0, 4(sp)
  LW s1, 0(sp)
  ADDW s0, s0, s1
  SW s0, 4(sp)
  LW s1, 8(sp)
  ADDW s0, s1, s0
  SW s0, 8(sp)
  LW s1, 12(sp)
  ADDW s0, s1, s0
  SW s0, 12(sp)
  LW s1, 16(sp)
  ADDW s0, s1, s0
  SW s0, 16(sp)
  LW s1, 20(sp)
  ADDW s0, s1, s0
  SW s0, 20(sp)
  LW s1, 24(sp)
  ADDW s0, s1, s0
  SW s0, 24(sp)
  LW s1, 28(sp)
  ADDW s0, s1, s0
  SW s0, 28(sp)
  LW s1, 32(sp)
  ADDW s0, s1, s0
  SW s0, 32(sp)
  LW s1, 36(sp)
  ADDW s0, s1, s0
  SW s0, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADDI t6, sp, 80
  ADD s0, t6, s0
  LW s0, -4(s0)
  SLLIW s1, s0, 2
  ADDI t6, sp, 0
  ADD s1, t6, s1
  LW s2, 0(s1)
  ADDIW s2, s2, -1
  SLLIW s3, s2, 2
  SW s2, 0(s1)
  ADDI t6, sp, 40
  ADD s1, t6, s3
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
  LD s3, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA s1, n
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 40
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 1
  JAL zero, bb1
