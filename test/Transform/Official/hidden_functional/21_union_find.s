.global main
.global find
.section .bss
parent:
.space 4020
.section .data

.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADDI s1, zero, 0
  BLT s1, s2, bb17
  # implict jump to bb1
bb1:
  BLT zero, s4, bb12
  # implict jump to bb2
bb2:
  BLT s1, s2, bb5
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  ADD s1, a0, zero
  SLLIW s3, s0, 2
  LA a0, parent
  ADD a0, a0, s3
  LW a0, 0(a0)
  XOR a0, a0, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb7
bb7:
  ADD a0, s1, zero
  # implict jump to bb8
bb8:
  ADD s1, a0, zero
  ADDIW a0, s0, 1
  BLT a0, s2, bb10
  # implict jump to bb9
bb9:
  ADD a0, s1, zero
  JAL zero, bb4
bb10:
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb6
bb11:
  ADDIW a0, s1, 1
  JAL zero, bb8
bb12:
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s6, s0, zero
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADD a0, s0, zero
  CALL find
  ADD s5, a0, zero
  ADD a0, s3, zero
  CALL find
  ADD s0, a0, zero
  BNE s5, s0, bb16
  # implict jump to bb14
bb14:
  ADDIW s0, s6, 1
  BLT s0, s4, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb13
bb16:
  SLLIW s3, s0, 2
  LA s0, parent
  ADD s0, s0, s3
  SW s5, 0(s0)
  JAL zero, bb14
bb17:
  ADD s0, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, s0, zero
  SLLIW s5, s3, 2
  LA s0, parent
  ADD s0, s0, s5
  SW s3, 0(s0)
  ADDIW s0, s3, 1
  BLT s0, s2, bb19
  JAL zero, bb1
bb19:
  JAL zero, bb18
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA a0, parent
  ADD s1, a0, s1
  LW a0, 0(s1)
  XOR a0, a0, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb22
  # implict jump to bb21
bb21:
  LW a0, 0(s1)
  CALL find
  ADD t0, a0, zero
  SW t0, 0(s1)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
