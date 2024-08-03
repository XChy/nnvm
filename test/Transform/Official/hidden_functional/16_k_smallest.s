.global findSmallest
.global main
.section .bss
array:
.space 4000
.section .data

.section .text
findSmallest:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  ADD s3, a0, zero
  ADD s2, a1, zero
  ADD s1, a2, zero
  ADD s0, a3, zero
  XOR a0, s3, s2
  SLTIU a0, a0, 1
  BNE a0, zero, bb19
  # implict jump to bb1
bb1:
  SLLIW s4, s2, 2
  LA a0, array
  ADD s5, a0, s4
  LW s4, 0(s5)
  BLT s3, s2, bb12
  # implict jump to bb2
bb2:
  ADD a0, s3, zero
  # implict jump to bb3
bb3:
  ADD s4, a0, zero
  SLLIW s6, s4, 2
  LA a0, array
  ADD s6, a0, s6
  LW a0, 0(s6)
  LW s7, 0(s5)
  SW s7, 0(s6)
  SW a0, 0(s5)
  XOR a0, s1, s4
  SLTIU a0, a0, 1
  BNE a0, zero, bb8
  # implict jump to bb4
bb4:
  BLT s1, s4, bb7
  # implict jump to bb5
bb5:
  ADDIW a0, s4, 1
  ADD a1, s2, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:
  ADDI a0, zero, 1
  SUBW a1, s4, a0
  ADD a0, s3, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADDI a0, zero, 0
  BLT a0, s4, bb9
  JAL zero, bb6
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, a0, zero
  SLLIW s0, s1, 2
  LA a0, array
  ADD a0, a0, s0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW a0, s1, 1
  BLT a0, s4, bb11
  JAL zero, bb6
bb11:
  JAL zero, bb10
bb12:
  ADD s6, s3, zero
  ADD a0, s3, zero
  # implict jump to bb13
bb13:
  ADD s7, a0, zero
  ADD s8, s6, zero
  SLLIW s6, s7, 2
  LA a0, array
  ADD s9, a0, s6
  LW a0, 0(s9)
  SLT a0, s4, a0
  XORI a0, a0, 1
  BNE a0, zero, bb18
  # implict jump to bb14
bb14:
  ADD a0, s8, zero
  # implict jump to bb15
bb15:
  ADD s6, a0, zero
  ADDIW a0, s7, 1
  BLT a0, s2, bb17
  # implict jump to bb16
bb16:
  ADD a0, s6, zero
  JAL zero, bb3
bb17:
  JAL zero, bb13
bb18:
  LW s6, 0(s9)
  SLLIW s10, s8, 2
  LA a0, array
  ADD s10, a0, s10
  LW a0, 0(s10)
  SW a0, 0(s9)
  SW s6, 0(s10)
  ADDIW a0, s8, 1
  JAL zero, bb15
bb19:
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s1, a0, zero
  BLT zero, s2, bb22
  # implict jump to bb21
bb21:
  ADDI a0, zero, 1
  SUBW a1, s2, a0
  ADD a0, zero, zero
  ADD a2, s1, zero
  ADD a3, s2, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  ADD s3, s0, zero
  SLLIW s4, s3, 2
  LA s0, array
  ADD s0, s0, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s0)
  ADDIW s0, s3, 1
  BLT s0, s2, bb24
  JAL zero, bb21
bb24:
  JAL zero, bb23
