.global merge
.global main
.global find
.section .bss
parent:
.space 4020
.section .data

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
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s6, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s11, 48(sp)
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s5, 88(sp)
  SD s7, 96(sp)
  SD s10, 104(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADDI t4, zero, 0
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT t4, s0, bb20
  # implict jump to bb4
bb4:
  LW t4, 4(sp)
  BLT zero, t4, bb15
  # implict jump to bb5
bb5:
  LW t4, 0(sp)
  BLT t4, s0, bb8
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  # implict jump to bb7
bb7:
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s6, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s11, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW s2, s11, 2
  LA s1, parent
  ADD s1, s1, s2
  LW s1, 0(s1)
  XOR s1, s1, s11
  SLTIU s1, s1, 1
  BNE s1, zero, bb14
  # implict jump to bb10
bb10:
  ADD s1, s10, zero
  # implict jump to bb11
bb11:
  ADDIW s2, s11, 1
  BLT s2, s0, bb13
  # implict jump to bb12
bb12:
  ADD s7, s1, zero
  JAL zero, bb7
bb13:
  ADD s8, s2, zero
  ADD s9, s1, zero
  JAL zero, bb9
bb14:
  ADDIW s2, s10, 1
  ADD s1, s2, zero
  JAL zero, bb11
bb15:
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s5, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  ADD a0, s8, zero
  CALL find
  ADD s8, a0, zero
  BNE s7, s8, bb19
  # implict jump to bb17
bb17:
  ADDIW s6, s6, 1
  LW t4, 4(sp)
  BLT s6, t4, bb18
  JAL zero, bb5
bb18:
  ADD s5, s6, zero
  JAL zero, bb16
bb19:
  SLLIW s8, s8, 2
  LA s9, parent
  ADD s8, s9, s8
  SW s7, 0(s8)
  JAL zero, bb17
bb20:
  ADD s3, zero, zero
  # implict jump to bb21
bb21:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, parent
  ADD s5, s6, s5
  SW s4, 0(s5)
  ADDIW s4, s4, 1
  BLT s4, s0, bb22
  JAL zero, bb4
bb22:
  ADD s3, s4, zero
  JAL zero, bb21
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
  BNE s2, zero, bb25
  # implict jump to bb24
bb24:
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
bb25:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
