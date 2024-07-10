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
  ADDI sp, sp, -128
  SD s9, 24(sp)
  SD s4, 32(sp)
  SD s7, 40(sp)
  SD s11, 48(sp)
  SD s0, 56(sp)
  SD s10, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s8, 96(sp)
  SD s3, 104(sp)
  SD s5, 112(sp)
  SD ra, 120(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADD t4, a3, zero
  SW t4, 16(sp)
  XOR s5, s1, s2
  SLTIU s6, s5, 1
  BNE s6, zero, bb15
  # implict jump to bb1
bb1:
  SLLIW s5, s2, 2
  LA s6, array
  ADD t4, s6, s5
  SD t4, 8(sp)
  LD t3, 8(sp)
  LW t4, 0(t3)
  SW t4, 0(sp)
  ADD s6, s1, zero
  ADD s8, s1, zero
  # implict jump to bb2
bb2:
  ADD s0, s8, zero
  ADD s9, s6, zero
  SLT s10, s9, s2
  BNE s10, zero, bb11
  # implict jump to bb3
bb3:
  SLLIW s10, s0, 2
  LA s11, array
  ADD t0, s11, s10
  LW s10, 0(t0)
  LD t4, 8(sp)
  LW s11, 0(t4)
  SW s11, 0(t0)
  LD t4, 8(sp)
  SW s10, 0(t4)
  XOR s10, s3, s0
  SLTIU s11, s10, 1
  BNE s11, zero, bb8
  # implict jump to bb4
bb4:
  SLT s10, s3, s0
  BNE s10, zero, bb7
  # implict jump to bb5
bb5:
  ADDIW s10, s0, 1
  ADD a0, s10, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
  LD s9, 24(sp)
  LD s4, 32(sp)
  LD s7, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s10, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s8, 96(sp)
  LD s3, 104(sp)
  LD s5, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  ADDI s10, zero, 1
  SUBW s11, s0, s10
  ADD a0, s1, zero
  ADD a1, s11, zero
  ADD a2, s3, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  SLT s5, s11, s0
  BNE s5, zero, bb10
  JAL zero, bb6
bb10:
  SLLIW s5, s11, 2
  LA s7, array
  ADD s4, s7, s5
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb9
bb11:
  SLLIW s4, s9, 2
  LA s5, array
  ADD s7, s5, s4
  LW s4, 0(s7)
  LW t4, 0(sp)
  SLT s5, t4, s4
  XORI s4, s5, 1
  BNE s4, zero, bb14
  # implict jump to bb12
bb12:
  ADD s4, s0, zero
  # implict jump to bb13
bb13:
  ADD s0, s4, zero
  ADDIW s4, s9, 1
  ADD s6, s4, zero
  ADD s8, s0, zero
  JAL zero, bb2
bb14:
  LW s5, 0(s7)
  SLLIW s10, s0, 2
  LA s11, array
  ADD t0, s11, s10
  LW s10, 0(t0)
  SW s10, 0(s7)
  SW s5, 0(t0)
  ADDIW s5, s0, 1
  ADD s4, s5, zero
  JAL zero, bb13
bb15:
  LD s9, 24(sp)
  LD s4, 32(sp)
  LD s7, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s10, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s8, 96(sp)
  LD s3, 104(sp)
  LD s5, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
findPivot:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s1, 2
  LA s3, array
  ADD s4, s3, s2
  LW s2, 0(s4)
  ADD s3, s0, zero
  ADD s5, s0, zero
  # implict jump to bb17
bb17:
  ADD s0, s5, zero
  ADD s6, s3, zero
  SLT s7, s6, s1
  BNE s7, zero, bb19
  # implict jump to bb18
bb18:
  SLLIW s7, s0, 2
  LA s8, array
  ADD s9, s8, s7
  LW s7, 0(s9)
  LW s8, 0(s4)
  SW s8, 0(s9)
  SW s7, 0(s4)
  ADD a0, s0, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb19:
  SLLIW s7, s6, 2
  LA s8, array
  ADD s9, s8, s7
  LW s7, 0(s9)
  SLT s8, s2, s7
  XORI s7, s8, 1
  BNE s7, zero, bb22
  # implict jump to bb20
bb20:
  ADD s7, s0, zero
  # implict jump to bb21
bb21:
  ADD s0, s7, zero
  ADDIW s7, s6, 1
  ADD s3, s7, zero
  ADD s5, s0, zero
  JAL zero, bb17
bb22:
  LW s8, 0(s9)
  SLLIW s10, s0, 2
  LA s11, array
  ADD t0, s11, s10
  LW s10, 0(t0)
  SW s10, 0(s9)
  SW s8, 0(t0)
  ADDIW s8, s0, 1
  ADD s7, s8, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb26
  # implict jump to bb25
bb25:
  ADDI s4, zero, 1
  SUBW s5, s0, s4
  ADD a0, zero, zero
  ADD a1, s5, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb26:
  SLLIW s4, s3, 2
  LA s5, array
  ADD s6, s5, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb24
swap:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s0, 2
  LA s0, array
  ADD s3, s0, s2
  LW s0, 0(s3)
  SLLIW s2, s1, 2
  LA s1, array
  ADD s4, s1, s2
  LW s1, 0(s4)
  SW s1, 0(s3)
  SW s0, 0(s4)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
