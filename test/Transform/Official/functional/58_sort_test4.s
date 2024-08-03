.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  LA s0, n
  ADDI a0, zero, 10
  SW a0, 0(s0)
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
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s0, zero
  ADD s4, a0, zero
  ADDIW s2, s4, 1
  SLTI a0, s2, 10
  BNE a0, zero, bb13
  # implict jump to bb2
bb2:
  ADD a0, s4, zero
  # implict jump to bb3
bb3:
  BNE a0, s4, bb12
  # implict jump to bb4
bb4:
  ADD a0, s3, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLTI a0, s2, 9
  BNE a0, zero, bb11
  # implict jump to bb6
bb6:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb8
  # implict jump to bb7
bb7:
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
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb10
  JAL zero, bb7
bb10:
  ADD a0, s0, zero
  JAL zero, bb9
bb11:
  ADD a0, s2, zero
  JAL zero, bb1
bb12:
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s3, t5, a0
  LW s1, 0(s3)
  SLLIW a0, s4, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  SW a0, 0(s3)
  SW s1, 0(s0)
  ADD a0, s1, zero
  JAL zero, bb5
bb13:
  ADD s0, s2, zero
  ADD a0, s4, zero
  # implict jump to bb14
bb14:
  ADD s1, a0, zero
  ADD s5, s0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  SLLIW a0, s5, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  BLT a0, s0, bb19
  # implict jump to bb15
bb15:
  ADD a0, s1, zero
  # implict jump to bb16
bb16:
  ADD s1, a0, zero
  ADDIW s0, s5, 1
  SLTI a0, s0, 10
  BNE a0, zero, bb18
  # implict jump to bb17
bb17:
  ADD a0, s1, zero
  JAL zero, bb3
bb18:
  ADD a0, s1, zero
  JAL zero, bb14
bb19:
  ADD a0, s5, zero
  JAL zero, bb16
