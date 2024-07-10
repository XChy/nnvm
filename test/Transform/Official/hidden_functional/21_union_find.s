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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLLIW s2, s1, 2
  LA s1, parent
  ADD s3, s1, s2
  SW s0, 0(s3)
  JAL zero, bb1
main:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb17
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb14
  # implict jump to bb7
bb7:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb8
bb8:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s8, s0
  BNE s10, zero, bb10
  # implict jump to bb9
bb9:
  ADD a0, s9, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:
  SLLIW s10, s8, 2
  LA s11, parent
  ADD s1, s11, s10
  LW s10, 0(s1)
  XOR s1, s10, s8
  SLTIU s10, s1, 1
  BNE s10, zero, bb13
  # implict jump to bb11
bb11:
  ADD s1, s9, zero
  # implict jump to bb12
bb12:
  ADD s9, s1, zero
  ADDIW s1, s8, 1
  ADD s6, s9, zero
  ADD s7, s1, zero
  JAL zero, bb8
bb13:
  ADDIW s10, s9, 1
  ADD s1, s10, zero
  JAL zero, bb12
bb14:
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s6, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  ADD a0, s6, zero
  CALL find
  ADD s6, a0, zero
  XOR s7, s1, s6
  SLTU s8, zero, s7
  BNE s8, zero, bb16
  # implict jump to bb15
bb15:
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb6
bb16:
  SLLIW s7, s6, 2
  LA s6, parent
  ADD s8, s6, s7
  SW s1, 0(s8)
  JAL zero, bb15
bb17:
  SLLIW s1, s3, 2
  LA s4, parent
  ADD s5, s4, s1
  SW s3, 0(s5)
  ADDIW s1, s3, 1
  ADD s2, s1, zero
  JAL zero, bb4
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, parent
  ADD s3, s2, s1
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb20
  # implict jump to bb19
bb19:
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb20:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
