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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTU s3, zero, s2
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, parent
  ADD s2, s1, s3
  SW s0, 0(s2)
  JAL zero, bb2
bb2:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  JAL zero, bb4
bb4:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, parent
  ADD s5, s3, s4
  SW s2, 0(s5)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADD s2, zero, zero
  JAL zero, bb7
bb7:
  SLT s3, s2, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADD a0, s3, zero
  ADD a1, s4, zero
  CALL merge
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb7
bb9:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb10
bb10:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, parent
  ADD s5, s3, s4
  LW s3, 0(s5)
  XOR s4, s3, s2
  SLTIU s3, s4, 1
  BNE s3, zero, bb13
  JAL zero, bb15
bb12:
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:
  ADDIW s3, s1, 1
  ADD s4, s3, zero
  JAL zero, bb14
bb14:
  ADDIW s3, s2, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb10
bb15:
  ADD s4, s1, zero
  JAL zero, bb14
find:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, parent
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb17
  JAL zero, bb19
bb17:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
bb19:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, parent
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, parent
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, parent
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
