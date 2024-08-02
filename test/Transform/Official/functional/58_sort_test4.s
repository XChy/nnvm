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
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADD a0, s1, zero
  ADDIW s1, a0, 1
  SLTI s2, s1, 10
  BNE s2, zero, bb13
  # implict jump to bb2
bb2:
  ADD s2, a0, zero
  # implict jump to bb3
bb3:
  BNE s2, a0, bb12
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  # implict jump to bb5
bb5:
  SLTI s0, s1, 9
  BNE s0, zero, bb11
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
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb10
  JAL zero, bb7
bb10:
  JAL zero, bb9
bb11:
  JAL zero, bb1
bb12:
  SLLIW s0, s2, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  LW s2, 0(s0)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s3, 0(a0)
  SW s3, 0(s0)
  SW s2, 0(a0)
  ADD a0, s2, zero
  JAL zero, bb5
bb13:
  ADD s2, s1, zero
  ADD s3, a0, zero
  # implict jump to bb14
bb14:
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s5, s2, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s5, 0(s5)
  BLT s5, s4, bb19
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADDIW s2, s2, 1
  SLTI s4, s2, 10
  BNE s4, zero, bb18
  # implict jump to bb17
bb17:
  ADD s2, s3, zero
  JAL zero, bb3
bb18:
  JAL zero, bb14
bb19:
  ADD s3, s2, zero
  JAL zero, bb16
