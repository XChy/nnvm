.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  LA a0, n
  ADDI s0, zero, 10
  SW s0, 0(a0)
  ADDI a0, zero, 4
  SW a0, 0(sp)
  ADDI a0, zero, 3
  SW a0, 4(sp)
  ADDI a0, zero, 9
  SW a0, 8(sp)
  ADDI a0, zero, 2
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 1
  SW a0, 20(sp)
  ADDI a0, zero, 6
  SW a0, 24(sp)
  ADDI a0, zero, 5
  SW a0, 28(sp)
  ADDI a0, zero, 7
  SW a0, 32(sp)
  ADDI a0, zero, 8
  SW a0, 36(sp)
  ADDI s1, zero, 1
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW a0, s1, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW s2, 0(a0)
  ADDIW s0, s1, -1
  # implict jump to bb2
bb2:   # loop depth 2
  ADDI a0, zero, -1
  SLLIW s3, s0, 2
  BLT a0, s0, bb13
  # implict jump to bb3
bb3:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 2
  ADDIW s4, s0, 1
  BNE a0, zero, bb12
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW a0, s4, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  SW s2, 0(a0)
  ADDIW s1, s1, 1
  SLTI a0, s1, 10
  BNE a0, zero, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW a0, s0, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb10
  JAL zero, bb7
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 1
  JAL zero, bb1
bb12:   # loop depth 2
  SLLIW a0, s4, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  ADDI t6, sp, 0
  ADD s3, t6, s3
  LW s3, 0(s3)
  SW s3, 0(a0)
  ADDIW s0, s0, -1
  JAL zero, bb2
bb13:   # loop depth 2
  ADDI a0, sp, 0
  ADD a0, a0, s3
  LW a0, 0(a0)
  SLT a0, s2, a0
  JAL zero, bb4
