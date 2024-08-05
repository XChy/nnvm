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
  ADD s6, a1, zero
  ADD s7, a2, zero
  ADD s8, a3, zero
  XOR s0, a0, s6
  SLTIU s0, s0, 1
  BNE s0, zero, bb19
  # implict jump to bb1
bb1:
  SLLIW s0, s6, 2
  LA s1, array
  ADD s0, s1, s0
  LW s10, 0(s0)
  SLLIW s2, a0, 2
  ADDIW s1, a0, 1
  BLT a0, s6, bb12
  # implict jump to bb2
bb2:
  ADD s3, a0, zero
  # implict jump to bb3
bb3:
  LA s4, array
  ADD s2, s4, s2
  LW s4, 0(s2)
  LW s5, 0(s0)
  SW s5, 0(s2)
  SW s4, 0(s0)
  XOR s0, s7, s3
  SLTIU s0, s0, 1
  BNE s0, zero, bb8
  # implict jump to bb4
bb4:
  BLT s7, s3, bb7
  # implict jump to bb5
bb5:
  ADD a0, s1, zero
  ADD a1, s6, zero
  ADD a2, s7, zero
  ADD a3, s8, zero
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
  ADDI a1, zero, 1
  SUBW a1, s3, a1
  ADD a2, s7, zero
  ADD a3, s8, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADDI a0, zero, 0
  BLT a0, s3, bb9
  JAL zero, bb6
bb9:
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  SLLIW a0, s0, 2
  LA s1, array
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s0, 1
  BLT s0, s3, bb11
  JAL zero, bb6
bb11:
  JAL zero, bb10
bb12:
  ADD s3, a0, zero
  ADD s4, a0, zero
  # implict jump to bb13
bb13:
  SLLIW s5, s4, 2
  LA s9, array
  ADD s5, s9, s5
  LW s9, 0(s5)
  SLT s9, s10, s9
  XORI s9, s9, 1
  BNE s9, zero, bb18
  # implict jump to bb14
bb14:
  ADD s1, s3, zero
  # implict jump to bb15
bb15:
  ADD s3, s1, zero
  ADDIW s4, s4, 1
  SLLIW s2, s3, 2
  ADDIW s1, s3, 1
  BLT s4, s6, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb3
bb17:
  JAL zero, bb13
bb18:
  LW s3, 0(s5)
  LA s9, array
  ADD s2, s9, s2
  LW s9, 0(s2)
  SW s9, 0(s5)
  SW s3, 0(s2)
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
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  BLT zero, s1, bb22
  # implict jump to bb21
bb21:
  ADDI a0, zero, 1
  SUBW a1, s1, a0
  ADD a0, zero, zero
  ADD a2, s2, zero
  ADD a3, s1, zero
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
  SLLIW s3, s0, 2
  LA s4, array
  ADD s4, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb24
  JAL zero, bb21
bb24:
  JAL zero, bb23
