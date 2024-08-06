.global findSmallest
.global main
.section .bss
array:
.space 4000
.section .data

.section .text
findSmallest:   # loop depth 0
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
  ADD s7, a1, zero
  ADD s8, a2, zero
  ADD s10, a3, zero
  XOR s0, a0, s7
  SLTIU s0, s0, 1
  BNE s0, zero, bb19
  # implict jump to bb1
bb1:   # loop depth 0
  SLLIW s0, s7, 2
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s3, a0, 2
  ADDIW s2, a0, 1
  BLT a0, s7, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s1, a0, zero
  # implict jump to bb3
bb3:   # loop depth 0
  LA s4, array
  ADD s3, s4, s3
  LW s4, 0(s3)
  LW s5, 0(s0)
  SW s5, 0(s3)
  SW s4, 0(s0)
  XOR s0, s8, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb8
  # implict jump to bb4
bb4:   # loop depth 0
  BLT s8, s1, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, s2, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  ADD a3, s10, zero
  CALL findSmallest
  # implict jump to bb6
bb6:   # loop depth 0
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
bb7:   # loop depth 0
  ADDI a1, zero, 1
  SUBW a1, s1, a1
  ADD a2, s8, zero
  ADD a3, s10, zero
  CALL findSmallest
  JAL zero, bb6
bb8:   # loop depth 0
  ADDI a0, zero, 0
  BLT a0, s1, bb9
  JAL zero, bb6
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  SLLIW a0, s0, 2
  LA s2, array
  ADD a0, s2, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s0, 1
  BLT s0, s1, bb11
  JAL zero, bb6
bb11:   # loop depth 1
  JAL zero, bb10
bb12:   # loop depth 0
  ADD s4, a0, zero
  ADD s5, a0, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW s6, s5, 2
  LA s9, array
  ADD s6, s9, s6
  LW s9, 0(s6)
  SLT s9, s1, s9
  XORI s9, s9, 1
  BNE s9, zero, bb18
  # implict jump to bb14
bb14:   # loop depth 1
  ADD s2, s4, zero
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s4, s2, zero
  ADDIW s5, s5, 1
  SLLIW s3, s4, 2
  ADDIW s2, s4, 1
  BLT s5, s7, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s1, s4, zero
  JAL zero, bb3
bb17:   # loop depth 1
  JAL zero, bb13
bb18:   # loop depth 1
  LW s4, 0(s6)
  LA s9, array
  ADD s3, s9, s3
  LW s9, 0(s3)
  SW s9, 0(s6)
  SW s4, 0(s3)
  JAL zero, bb15
bb19:   # loop depth 0
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
main:   # loop depth 0
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
bb21:   # loop depth 0
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
bb22:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  SLLIW s3, s0, 2
  LA s4, array
  ADD s4, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s4)
  ADDIW s0, s0, 1
  BLT s0, s1, bb24
  JAL zero, bb21
bb24:   # loop depth 1
  JAL zero, bb23
