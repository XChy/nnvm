.global findSmallest
.global findPivot
.global main
.global swap
.section .bss
array:
.space 4000


.section .data

space:
.word 0x00000020
maxN:
.word 0x000003e8
.section .text
findSmallest:
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
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  XOR s5, s1, s2
  SLTIU s5, s5, 1
  BNE s5, zero, bb15
  # implict jump to bb1
bb1:
  SLLIW s5, s2, 2
  LA s6, array
  ADD s5, s6, s5
  LW s6, 0(s5)
  ADD s7, s1, zero
  ADD s8, s1, zero
  # implict jump to bb2
bb2:
  ADD s0, s8, zero
  ADD s9, s7, zero
  BLT s9, s2, bb11
  # implict jump to bb3
bb3:
  SLLIW s10, s0, 2
  LA s11, array
  ADD s10, s11, s10
  LW s11, 0(s10)
  LW t0, 0(s5)
  SW t0, 0(s10)
  SW s11, 0(s5)
  LW t4, 4(sp)
  XOR s10, t4, s0
  SLTIU s10, s10, 1
  BNE s10, zero, bb8
  # implict jump to bb4
bb4:
  LW t4, 4(sp)
  BLT t4, s0, bb7
  # implict jump to bb5
bb5:
  ADDIW s10, s0, 1
  ADD a0, s10, zero
  ADD a1, s2, zero
  LW t4, 4(sp)
  ADD a2, t4, zero
  LW t4, 0(sp)
  ADD a3, t4, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
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
bb7:
  ADDI s10, zero, 1
  SUBW s10, s0, s10
  ADD a0, s1, zero
  ADD a1, s10, zero
  LW t4, 4(sp)
  ADD a2, t4, zero
  LW t4, 0(sp)
  ADD a3, t4, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  BLT s11, s0, bb10
  JAL zero, bb6
bb10:
  SLLIW s4, s11, 2
  LA s3, array
  ADD s3, s3, s4
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s11, 1
  ADD s10, s3, zero
  JAL zero, bb9
bb11:
  SLLIW s3, s9, 2
  LA s4, array
  ADD s3, s4, s3
  LW s4, 0(s3)
  SLT s4, s6, s4
  XORI s4, s4, 1
  BNE s4, zero, bb14
  # implict jump to bb12
bb12:
  ADD s4, s0, zero
  # implict jump to bb13
bb13:
  ADDIW s0, s9, 1
  ADD s7, s0, zero
  ADD s8, s4, zero
  JAL zero, bb2
bb14:
  LW s10, 0(s3)
  SLLIW s11, s0, 2
  LA t0, array
  ADD s11, t0, s11
  LW t0, 0(s11)
  SW t0, 0(s3)
  SW s10, 0(s11)
  ADDIW s0, s0, 1
  ADD s4, s0, zero
  JAL zero, bb13
bb15:
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
findPivot:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  ADD s0, a0, zero
  SLLIW s1, a1, 2
  LA s2, array
  ADD s1, s2, s1
  LW s2, 0(s1)
  ADD s3, s0, zero
  # implict jump to bb17
bb17:
  ADD s4, s0, zero
  ADD s5, s3, zero
  BLT s5, a1, bb19
  # implict jump to bb18
bb18:
  SLLIW s6, s4, 2
  LA s7, array
  ADD s6, s7, s6
  LW s7, 0(s6)
  LW s8, 0(s1)
  SW s8, 0(s6)
  SW s7, 0(s1)
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb19:
  SLLIW s6, s5, 2
  LA s7, array
  ADD s6, s7, s6
  LW s7, 0(s6)
  SLT s7, s2, s7
  XORI s7, s7, 1
  BNE s7, zero, bb22
  # implict jump to bb20
bb20:
  ADD s7, s4, zero
  # implict jump to bb21
bb21:
  ADDIW s4, s5, 1
  ADD s3, s4, zero
  ADD s0, s7, zero
  JAL zero, bb17
bb22:
  LW s8, 0(s6)
  SLLIW s9, s4, 2
  LA s10, array
  ADD s9, s10, s9
  LW s10, 0(s9)
  SW s10, 0(s6)
  SW s8, 0(s9)
  ADDIW s4, s4, 1
  ADD s7, s4, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  BLT s3, s0, bb26
  # implict jump to bb25
bb25:
  ADDI s4, zero, 1
  SUBW s4, s0, s4
  ADD a0, zero, zero
  ADD a1, s4, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb26:
  SLLIW s4, s3, 2
  LA s5, array
  ADD s4, s5, s4
  CALL getint
  SW a0, 0(s4)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb24
swap:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SLLIW s0, a0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s2, a1, 2
  LA s3, array
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s0)
  SW s1, 0(s2)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
