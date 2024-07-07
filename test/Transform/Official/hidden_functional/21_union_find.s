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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  JAL zero, bb4
bb4:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, parent
  ADD s6, s4, s5
  SW s3, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb6:
  ADD s2, zero, zero
  JAL zero, bb7
bb7:
  ADD s3, s2, zero
  SLT s4, s3, s1
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL merge
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb7
bb9:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb10
bb10:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s0
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  LA s5, parent
  ADD s7, s5, s6
  LW s5, 0(s7)
  XOR s6, s5, s3
  SLTIU s5, s6, 1
  BNE s5, zero, bb13
  JAL zero, bb15
bb12:
  ADD a0, s4, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  ADDIW s5, s4, 1
  ADD s6, s5, zero
  JAL zero, bb14
bb14:
  ADD s5, s6, zero
  ADDIW s7, s3, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  JAL zero, bb10
bb15:
  ADD s6, s4, zero
  JAL zero, bb14
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, parent
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s3)
  LW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
