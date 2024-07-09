.global main
.global deepWhileBr
.global get_one
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  JAL zero, bb1
bb1:
  ADD s0, zero, zero
  ADDI s1, zero, 4
  JAL zero, bb2
bb2:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb3
  JAL zero, bb4
bb3:
  SLTI s4, s2, 100
  BNE s4, zero, bb5
  JAL zero, bb11
bb4:
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb7
  JAL zero, bb12
bb6:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb2
bb7:
  JAL zero, bb9
bb8:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb6
bb9:
  JAL zero, bb10
bb10:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb8
bb11:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb6
bb12:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb8
deepWhileBr:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s8, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD ra, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDW s2, s0, s1
  ADD s0, zero, zero
  ADD s1, s2, zero
  JAL zero, bb14
bb14:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb15
  JAL zero, bb16
bb15:
  SLTI s4, s2, 100
  BNE s4, zero, bb17
  JAL zero, bb23
bb16:
  ADD a0, s2, zero
  LD s9, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD ra, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb19
  JAL zero, bb24
bb18:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb14
bb19:
  JAL zero, bb21
bb20:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb18
bb21:
  JAL zero, bb22
bb22:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb20
bb23:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb18
bb24:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb20
get_one:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
