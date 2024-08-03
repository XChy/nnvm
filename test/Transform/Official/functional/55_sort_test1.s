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
  ADD s1, s0, zero
  ADD s2, a0, zero
  ADDI a0, zero, 10
  SUBW s0, a0, s2
  ADDI a0, zero, 1
  SUBW s4, s0, a0
  BLT zero, s4, bb10
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  ADDIW s0, s2, 1
  SLTI a0, s0, 9
  BNE a0, zero, bb9
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
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb8
  JAL zero, bb5
bb8:
  ADD a0, s0, zero
  JAL zero, bb7
bb9:
  ADD a0, s0, zero
  ADD s0, s1, zero
  JAL zero, bb1
bb10:
  ADD s0, zero, zero
  ADD a0, s1, zero
  # implict jump to bb11
bb11:
  ADD s6, a0, zero
  ADD s1, s0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD s5, t5, a0
  LW s0, 0(s5)
  ADDIW s3, s1, 1
  SLLIW a0, s3, 2
  ADDI t5, sp, 0
  ADD s1, t5, a0
  LW a0, 0(s1)
  BLT a0, s0, bb16
  # implict jump to bb12
bb12:
  ADD a0, s6, zero
  # implict jump to bb13
bb13:
  BLT s3, s4, bb15
  # implict jump to bb14
bb14:
  JAL zero, bb3
bb15:
  ADD s0, s3, zero
  JAL zero, bb11
bb16:
  LW s0, 0(s1)
  LW a0, 0(s5)
  SW a0, 0(s1)
  SW s0, 0(s5)
  ADD a0, s0, zero
  JAL zero, bb13
