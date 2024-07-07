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
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XOR s4, s0, s1
  SLTIU s5, s4, 1
  BNE s5, zero, bb1
  JAL zero, bb3
bb1:
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL findPivot
  ADD s4, a0, zero
  XOR s5, s2, s4
  SLTIU s6, s5, 1
  BNE s6, zero, bb4
  JAL zero, bb6
bb4:
  ADD s5, zero, zero
  JAL zero, bb7
bb5:
  JAL zero, bb2
bb6:
  SLT s5, s2, s4
  BNE s5, zero, bb10
  JAL zero, bb12
bb7:
  ADD s6, s5, zero
  SLT s7, s6, s4
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
  SUBW s6, s4, s5
  ADD a0, s0, zero
  ADD a1, s6, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL findSmallest
  JAL zero, bb11
bb11:
  JAL zero, bb5
bb12:
  ADDIW s0, s4, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL findSmallest
  JAL zero, bb11
findPivot:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s8, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, array
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD s3, s0, zero
  ADD s4, s0, zero
  JAL zero, bb14
bb14:
  ADD s0, s4, zero
  ADD s5, s3, zero
  SLT s6, s5, s1
  BNE s6, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, array
  ADD s8, s6, s7
  LW s6, 0(s8)
  SLT s7, s2, s6
  XORI s6, s7, 1
  BNE s6, zero, bb17
  JAL zero, bb19
bb16:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL swap
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  ADD a0, s5, zero
  ADD a1, s0, zero
  CALL swap
  ADDIW s6, s0, 1
  ADD s7, s6, zero
  JAL zero, bb18
bb18:
  ADD s6, s7, zero
  ADDIW s8, s5, 1
  ADD s3, s8, zero
  ADD s4, s6, zero
  JAL zero, bb14
bb19:
  ADD s7, s0, zero
  JAL zero, bb18
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
  JAL zero, bb21
bb21:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, array
  ADD s6, s4, s5
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb21
bb23:
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
