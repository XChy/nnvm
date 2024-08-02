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
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADDI s5, zero, 0
  BLT s5, s0, bb17
  # implict jump to bb1
bb1:
  BLT zero, s1, bb12
  # implict jump to bb2
bb2:
  BLT s5, s0, bb5
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
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb6
bb6:
  SLLIW s2, a0, 2
  LA s3, parent
  ADD s2, s3, s2
  LW s2, 0(s2)
  XOR s2, s2, a0
  SLTIU s2, s2, 1
  BNE s2, zero, bb11
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDIW a0, a0, 1
  BLT a0, s0, bb10
  # implict jump to bb9
bb9:
  ADD a0, s1, zero
  JAL zero, bb4
bb10:
  JAL zero, bb6
bb11:
  ADDIW s1, s1, 1
  JAL zero, bb8
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL find
  ADD s3, a0, zero
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  BNE s3, s4, bb16
  # implict jump to bb14
bb14:
  ADDIW s2, s2, 1
  BLT s2, s1, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb13
bb16:
  SLLIW s4, s4, 2
  LA s6, parent
  ADD s4, s6, s4
  SW s3, 0(s4)
  JAL zero, bb14
bb17:
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  SLLIW s3, s2, 2
  LA s4, parent
  ADD s3, s4, s3
  SW s2, 0(s3)
  ADDIW s2, s2, 1
  BLT s2, s0, bb19
  JAL zero, bb1
bb19:
  JAL zero, bb18
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  LA s0, parent
  ADD s0, s0, a0
  LW a0, 0(s0)
  XOR a0, a0, s1
  SLTIU a0, a0, 1
  BNE a0, zero, bb22
  # implict jump to bb21
bb21:
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  SW t0, 0(s0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
