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
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s7, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI s6, zero, 0
  LW t4, 4(sp)
  BLT s6, t4, bb22
  # implict jump to bb4
bb4:
  ADDI s7, zero, 0
  LW t4, 0(sp)
  BLT s7, t4, bb16
  # implict jump to bb5
bb5:
  ADDI s8, zero, 0
  LW t4, 4(sp)
  BLT s8, t4, bb8
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  ADD a0, s8, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s7, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb8:
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  ADD s5, s9, zero
  SLLIW s4, s5, 2
  LA s6, parent
  ADD s4, s6, s4
  LW s4, 0(s4)
  XOR s4, s4, s5
  SLTIU s4, s4, 1
  BNE s4, zero, bb15
  # implict jump to bb10
bb10:
  ADD s4, s11, zero
  # implict jump to bb11
bb11:
  ADD s3, s4, zero
  ADDIW s0, s5, 1
  # implict jump to bb12
bb12:
  LW t4, 4(sp)
  BLT s0, t4, bb14
  # implict jump to bb13
bb13:
  ADD s8, s3, zero
  JAL zero, bb7
bb14:
  ADD s9, s0, zero
  ADD s10, s3, zero
  JAL zero, bb9
bb15:
  ADDIW s6, s11, 1
  ADD s4, s6, zero
  JAL zero, bb11
bb16:
  ADD s7, zero, zero
  # implict jump to bb17
bb17:
  ADD s8, s7, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s10, a0, zero
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s10, zero
  CALL find
  ADD s10, a0, zero
  BNE s9, s10, bb21
  # implict jump to bb18
bb18:
  ADDIW s2, s8, 1
  # implict jump to bb19
bb19:
  LW t4, 0(sp)
  BLT s2, t4, bb20
  JAL zero, bb5
bb20:
  ADD s7, s2, zero
  JAL zero, bb17
bb21:
  SLLIW s10, s10, 2
  LA s11, parent
  ADD s10, s11, s10
  SW s9, 0(s10)
  JAL zero, bb18
bb22:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb23
bb23:
  LW t4, 8(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LA s9, parent
  ADD s8, s9, s8
  SW s7, 0(s8)
  ADDIW s1, s7, 1
  # implict jump to bb24
bb24:
  LW t4, 4(sp)
  BLT s1, t4, bb25
  JAL zero, bb4
bb25:
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb23
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
  BNE s2, zero, bb28
  # implict jump to bb27
bb27:
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
bb28:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
