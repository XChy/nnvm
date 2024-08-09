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
  SD s5, 88(sp)
  LA a0, n
  ADDI s0, zero, 10
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SW s1, 0(sp)
  ADDI s0, zero, 2
  SW s2, 4(sp)
  ADDI s1, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 1
  SW s0, 12(sp)
  ADDI s0, zero, 6
  SW s1, 16(sp)
  ADDI s1, zero, 5
  SW a0, 20(sp)
  ADDI a0, zero, 7
  SW s0, 24(sp)
  ADDI s0, zero, 8
  SW s1, 28(sp)
  ADD s2, zero, zero
  SW a0, 32(sp)
  ADD a0, zero, zero
  SW s0, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s0, zero, 10
  SUBW s0, s0, s2
  ADDIW s3, s0, -1
  BLT zero, s3, bb10
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDIW s2, s2, 1
  SLTI s0, s2, 9
  BNE s0, zero, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LA s1, n
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  BLT s0, a0, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 1
  JAL zero, bb1
bb10:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb11
bb11:   # loop depth 2
  SLLIW s0, s1, 2
  ADDIW s1, s1, 1
  ADDI t6, sp, 0
  ADD s4, t6, s0
  LW s0, 0(s4)
  LW s5, 4(s4)
  BLT s5, s0, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  BLT s1, s3, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  JAL zero, bb3
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  LW s0, 4(s4)
  LW s5, 0(s4)
  ADD a0, s0, zero
  SW s5, 4(s4)
  SW s0, 0(s4)
  JAL zero, bb13
