.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
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
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADDI s1, zero, 10
  SUBW s1, s1, a0
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BLT zero, s1, bb10
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADDIW a0, a0, 1
  SLTI s1, a0, 9
  BNE s1, zero, bb9
  # implict jump to bb4
bb4:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb6
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
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
  BLT a0, s0, bb8
  JAL zero, bb5
bb8:
  JAL zero, bb7
bb9:
  JAL zero, bb1
bb10:
  ADD s3, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s0, zero
  ADD s0, s3, zero
  SLLIW s3, s0, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s4, 0(s3)
  ADDIW s0, s0, 1
  SLLIW s5, s0, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s6, 0(s5)
  BLT s6, s4, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  BLT s0, s1, bb15
  # implict jump to bb14
bb14:
  ADD s0, s2, zero
  JAL zero, bb3
bb15:
  ADD s3, s0, zero
  ADD s0, s2, zero
  JAL zero, bb11
bb16:
  LW s2, 0(s5)
  LW s4, 0(s3)
  SW s4, 0(s5)
  SW s2, 0(s3)
  JAL zero, bb13
