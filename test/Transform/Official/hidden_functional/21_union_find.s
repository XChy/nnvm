.global merge
.global main
.global find
.section .bss
parent:
.space 4020

.section .data

maxN:
.word 0x000003ed
.section .text
merge:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  BNE s0, a0, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  SLLIW s1, a0, 2
  LA s2, parent
  ADD s1, s2, s1
  SW s0, 0(s1)
  JAL zero, bb1
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  BLT s3, s0, bb17
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  BLT s5, s1, bb14
  # implict jump to bb7
bb7:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb8
bb8:
  ADD s8, s7, zero
  ADD s9, s6, zero
  BLT s8, s0, bb10
  # implict jump to bb9
bb9:
  ADD a0, s9, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:
  SLLIW s10, s8, 2
  LA s11, parent
  ADD s10, s11, s10
  LW s10, 0(s10)
  XOR s10, s10, s8
  SLTIU s10, s10, 1
  BNE s10, zero, bb13
  # implict jump to bb11
bb11:
  ADD s10, s9, zero
  # implict jump to bb12
bb12:
  ADDIW s8, s8, 1
  ADD s6, s10, zero
  ADD s7, s8, zero
  JAL zero, bb8
bb13:
  ADDIW s9, s9, 1
  ADD s10, s9, zero
  JAL zero, bb12
bb14:
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  ADD a0, s6, zero
  CALL find
  ADD s6, a0, zero
  ADD a0, s7, zero
  CALL find
  BNE s6, a0, bb16
  # implict jump to bb15
bb15:
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb6
bb16:
  SLLIW s7, a0, 2
  LA s8, parent
  ADD s7, s8, s7
  SW s6, 0(s7)
  JAL zero, bb15
bb17:
  SLLIW s4, s3, 2
  LA s5, parent
  ADD s4, s5, s4
  SW s3, 0(s4)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb4
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, parent
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s2, s0
  SLTIU s2, s2, 1
  BNE s2, zero, bb20
  # implict jump to bb19
bb19:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL find
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb20:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
