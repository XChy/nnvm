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
  SD s0, 24(sp)
  SD s8, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD ra, 96(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADD s4, a3, zero
  XOR s5, s1, s2
  SLTIU s6, s5, 1
  BNE s6, zero, bb1
  JAL zero, bb3
bb1:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s8, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s8, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s5, array
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD s6, s1, zero
  ADD s8, s1, zero
  JAL zero, bb13
bb4:
  ADD s5, zero, zero
  JAL zero, bb7
bb5:
  JAL zero, bb2
bb6:
  SLT s5, s3, s0
  BNE s5, zero, bb10
  JAL zero, bb12
bb7:
  ADD s6, s5, zero
  SLT s7, s6, s0
  BNE s7, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s7, array
  ADD s9, s7, s8
  LW s7, 0(s9)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb7
bb9:
  JAL zero, bb5
bb10:
  ADDI s5, zero, 1
  SUBW s6, s0, s5
  ADD a0, s1, zero
  ADD a1, s6, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL findSmallest
  JAL zero, bb11
bb11:
  JAL zero, bb5
bb12:
  ADDIW s1, s0, 1
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL findSmallest
  JAL zero, bb11
bb13:
  ADD s0, s8, zero
  ADD s9, s6, zero
  SLT s10, s9, s2
  BNE s10, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s10, zero, 4
  MULW s11, s9, s10
  LA s10, array
  ADD t0, s10, s11
  LW s10, 0(t0)
  SLT s11, s5, s10
  XORI s10, s11, 1
  BNE s10, zero, bb16
  JAL zero, bb18
bb15:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s5, array
  ADD s8, s5, s6
  LW s5, 0(s8)
  LW s6, 0(s7)
  SW s6, 0(s8)
  SW s5, 0(s7)
  XOR s5, s3, s0
  SLTIU s6, s5, 1
  BNE s6, zero, bb4
  JAL zero, bb6
bb16:
  LW s10, 0(t0)
  ADDI s11, zero, 4
  MULW t1, s0, s11
  LA s11, array
  ADD t2, s11, t1
  LW s11, 0(t2)
  SW s11, 0(t0)
  SW s10, 0(t2)
  ADDIW s10, s0, 1
  ADD s11, s10, zero
  JAL zero, bb17
bb17:
  ADD s10, s11, zero
  ADDIW t0, s9, 1
  ADD s6, t0, zero
  ADD s8, s10, zero
  JAL zero, bb13
bb18:
  ADD s11, s0, zero
  JAL zero, bb17
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
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, array
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD s3, s0, zero
  ADD s5, s0, zero
  JAL zero, bb20
bb20:
  ADD s0, s5, zero
  ADD s6, s3, zero
  SLT s7, s6, s1
  BNE s7, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s7, array
  ADD s9, s7, s8
  LW s7, 0(s9)
  SLT s8, s2, s7
  XORI s7, s8, 1
  BNE s7, zero, bb24
  JAL zero, bb26
bb22:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  LW s2, 0(s4)
  SW s2, 0(s3)
  SW s1, 0(s4)
  JAL zero, bb23
bb23:
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
bb24:
  LW s7, 0(s9)
  ADDI s8, zero, 4
  MULW s10, s0, s8
  LA s8, array
  ADD s11, s8, s10
  LW s8, 0(s11)
  SW s8, 0(s9)
  SW s7, 0(s11)
  ADDIW s7, s0, 1
  ADD s8, s7, zero
  JAL zero, bb25
bb25:
  ADD s7, s8, zero
  ADDIW s9, s6, 1
  ADD s3, s9, zero
  ADD s5, s7, zero
  JAL zero, bb20
bb26:
  ADD s8, s0, zero
  JAL zero, bb25
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
  JAL zero, bb28
bb28:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, array
  ADD s6, s4, s5
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb28
bb30:
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
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, array
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, array
  ADD s3, s1, s4
  LW s1, 0(s3)
  SW s1, 0(s2)
  SW s0, 0(s3)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
