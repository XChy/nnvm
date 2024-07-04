.global merge
.global main
.global find
.section .bss
parent:
.space 4020

.section .data

maxN:
.word 0x000003ed
.section .text
merge:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  LW s0, 24(sp)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  XOR s2, s1, s0
  SLTU s0, zero, s2
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 8(sp)
  SW s0, 0(s1)
  JAL zero, bb2
bb2:
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb4
bb4:
  LW s0, 24(sp)
  LW s1, 40(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 24(sp)
  SW s0, 0(s1)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb4
bb6:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb7
bb7:
  LW s0, 24(sp)
  LW s1, 32(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s1, 16(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL merge
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb7
bb9:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb10
bb10:
  LW s0, 24(sp)
  LW s1, 40(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb12:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb14
bb14:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb10
find:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, parent
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb16
  JAL zero, bb18
bb16:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb17:
bb18:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, parent
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
