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
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s1, 24(sp)
  SD s8, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s6, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADD s4, a3, zero
  XOR s5, s0, s2
  SLTIU s6, s5, 1
  BNE s6, zero, bb15
  # implict jump to bb1
bb1:
  SLLIW s5, s2, 2
  LA s6, array
  ADD s7, s6, s5
  LW s5, 0(s7)
  ADD s6, s0, zero
  ADD s8, s0, zero
  # implict jump to bb2
bb2:
  ADD s1, s8, zero
  ADD s9, s6, zero
  SLT s10, s9, s2
  BNE s10, zero, bb11
  # implict jump to bb3
bb3:
  SLLIW s5, s1, 2
  LA s6, array
  ADD s8, s6, s5
  LW s5, 0(s8)
  LW s6, 0(s7)
  SW s6, 0(s8)
  SW s5, 0(s7)
  XOR s5, s3, s1
  SLTIU s6, s5, 1
  BNE s6, zero, bb8
  # implict jump to bb4
bb4:
  SLT s5, s3, s1
  BNE s5, zero, bb7
  # implict jump to bb5
bb5:
  ADDIW s0, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL findSmallest
  # implict jump to bb6
bb6:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s1, 24(sp)
  LD s8, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s6, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb7:
  ADDI s5, zero, 1
  SUBW s6, s1, s5
  ADD a0, s0, zero
  ADD a1, s6, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL findSmallest
  JAL zero, bb6
bb8:
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  ADD s6, s5, zero
  SLT s7, s6, s1
  BNE s7, zero, bb10
  JAL zero, bb6
bb10:
  SLLIW s7, s6, 2
  LA s8, array
  ADD s9, s8, s7
  LW s7, 0(s9)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb9
bb11:
  SLLIW s10, s9, 2
  LA s11, array
  ADD t0, s11, s10
  LW s10, 0(t0)
  SLT s11, s5, s10
  XORI s10, s11, 1
  BNE s10, zero, bb14
  # implict jump to bb12
bb12:
  ADD s11, s1, zero
  # implict jump to bb13
bb13:
  ADD s10, s11, zero
  ADDIW t0, s9, 1
  ADD s6, t0, zero
  ADD s8, s10, zero
  JAL zero, bb2
bb14:
  LW s10, 0(t0)
  SLLIW s11, s1, 2
  LA t1, array
  ADD t2, t1, s11
  LW s11, 0(t2)
  SW s11, 0(t0)
  SW s10, 0(t2)
  ADDIW s10, s1, 1
  ADD s11, s10, zero
  JAL zero, bb13
bb15:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s1, 24(sp)
  LD s8, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s6, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
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
  SLLIW s1, s0, 2
  LA s2, array
  ADD s3, s2, s1
  LW s1, 0(s3)
  LW s2, 0(s4)
  SW s2, 0(s3)
  SW s1, 0(s4)
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
  ADD s8, s0, zero
  # implict jump to bb21
bb21:
  ADD s7, s8, zero
  ADDIW s9, s6, 1
  ADD s3, s9, zero
  ADD s5, s7, zero
  JAL zero, bb17
bb22:
  LW s7, 0(s9)
  SLLIW s8, s0, 2
  LA s10, array
  ADD s11, s10, s8
  LW s8, 0(s11)
  SW s8, 0(s9)
  SW s7, 0(s11)
  ADDIW s7, s0, 1
  ADD s8, s7, zero
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
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD a0, zero, zero
  ADD a1, s3, zero
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
