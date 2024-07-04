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
  SD ra, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s0, 40(sp)
  SW s1, 32(sp)
  SW s2, 24(sp)
  SW s3, 16(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  LW s0, 40(sp)
  LW s1, 32(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL findPivot
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s1, 24(sp)
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb7
bb5:
  JAL zero, bb2
bb6:
  LW s0, 24(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  BNE s2, zero, bb10
  JAL zero, bb12
bb7:
  LW s0, 0(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LA s0, space
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb7
bb9:
  JAL zero, bb5
bb10:
  LW s0, 40(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  LW s1, 24(sp)
  LW s2, 16(sp)
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, s1, zero
  ADD a3, s2, zero
  CALL findSmallest
  JAL zero, bb11
bb11:
  JAL zero, bb5
bb12:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  LW s0, 32(sp)
  LW s2, 24(sp)
  LW s3, 16(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL findSmallest
  JAL zero, bb11
findPivot:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, array
  ADD s2, s1, s3
  LW s1, 0(s2)
  SW s1, 16(sp)
  SW s0, 8(sp)
  SW s0, 0(sp)
  JAL zero, bb14
bb14:
  LW s0, 0(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 16(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb17
  JAL zero, bb18
bb16:
  LW s0, 8(sp)
  LW s1, 24(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL swap
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  LW s0, 0(sp)
  LW s1, 8(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL swap
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb18
bb18:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb14
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb20
bb20:
  LW s0, 16(sp)
  LW s1, 32(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb20
bb22:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  LW s0, 32(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  LW s0, 24(sp)
  LW s1, 32(sp)
  ADD a0, zero, zero
  ADD a1, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
swap:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, array
  ADD s4, s2, s3
  LW s2, 0(s4)
  SW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, array
  ADD s3, s0, s4
  ADDI s0, zero, 4
  MULW s4, s1, s0
  LA s0, array
  ADD s5, s0, s4
  LW s0, 0(s5)
  SW s0, 0(s3)
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, array
  ADD s1, s0, s3
  SW s2, 0(s1)
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
