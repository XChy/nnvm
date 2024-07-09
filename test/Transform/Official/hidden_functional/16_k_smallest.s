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
  SD s8, 24(sp)
  SD s7, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XOR s4, s0, s1
  SLTIU s5, s4, 1
  BNE s5, zero, bb1
  JAL zero, bb3
bb1:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDI s4, zero, 4
  MULW s5, s1, s4
  LA s4, array
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADD s5, s0, zero
  ADD s7, s0, zero
  JAL zero, bb14
bb4:
  ADD s5, s4, zero
  XOR s4, s2, s5
  SLTIU s6, s4, 1
  BNE s6, zero, bb5
  JAL zero, bb7
bb5:
  ADD s4, zero, zero
  JAL zero, bb8
bb6:
  JAL zero, bb2
bb7:
  SLT s4, s2, s5
  BNE s4, zero, bb11
  JAL zero, bb13
bb8:
  ADD s6, s4, zero
  SLT s7, s6, s5
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
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
  ADD s4, s7, zero
  JAL zero, bb8
bb10:
  JAL zero, bb6
bb11:
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  ADD a0, s0, zero
  ADD a1, s6, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL findSmallest
  JAL zero, bb12
bb12:
  JAL zero, bb6
bb13:
  ADDIW s0, s5, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL findSmallest
  JAL zero, bb12
bb14:
  ADD s8, s7, zero
  ADD s9, s5, zero
  SLT s10, s9, s1
  BNE s10, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s10, zero, 4
  MULW s11, s9, s10
  LA s10, array
  ADD t0, s10, s11
  LW s10, 0(t0)
  SLT s11, s4, s10
  XORI s10, s11, 1
  BNE s10, zero, bb18
  JAL zero, bb20
bb16:
  ADDI s4, zero, 4
  MULW s5, s8, s4
  LA s4, array
  ADD s7, s4, s5
  LW s4, 0(s7)
  LW s5, 0(s6)
  SW s5, 0(s7)
  SW s4, 0(s6)
  JAL zero, bb17
bb17:
  ADD s4, s8, zero
  JAL zero, bb4
bb18:
  LW s10, 0(t0)
  ADDI s11, zero, 4
  MULW t1, s8, s11
  LA s11, array
  ADD t2, s11, t1
  LW s11, 0(t2)
  SW s11, 0(t0)
  SW s10, 0(t2)
  ADDIW s10, s8, 1
  ADD s11, s10, zero
  JAL zero, bb19
bb19:
  ADD s10, s11, zero
  ADDIW t0, s9, 1
  ADD s5, t0, zero
  ADD s7, s10, zero
  JAL zero, bb14
bb20:
  ADD s11, s8, zero
  JAL zero, bb19
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
  JAL zero, bb22
bb22:
  ADD s0, s5, zero
  ADD s6, s3, zero
  SLT s7, s6, s1
  BNE s7, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s7, array
  ADD s9, s7, s8
  LW s7, 0(s9)
  SLT s8, s2, s7
  XORI s7, s8, 1
  BNE s7, zero, bb26
  JAL zero, bb28
bb24:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  LW s2, 0(s4)
  SW s2, 0(s3)
  SW s1, 0(s4)
  JAL zero, bb25
bb25:
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
bb26:
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
  JAL zero, bb27
bb27:
  ADD s7, s8, zero
  ADDIW s9, s6, 1
  ADD s3, s9, zero
  ADD s5, s7, zero
  JAL zero, bb22
bb28:
  ADD s8, s0, zero
  JAL zero, bb27
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
  JAL zero, bb30
bb30:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, array
  ADD s6, s4, s5
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb30
bb32:
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
