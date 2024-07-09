.global main
.global deepWhileBr
.global get_one
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  ADD s0, zero, zero
  ADDI s1, zero, 4
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  SLTI s4, s2, 100
  BNE s4, zero, bb4
  JAL zero, bb9
bb3:
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
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
bb4:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb6
  JAL zero, bb10
bb5:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb1
bb6:
  JAL zero, bb8
bb7:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb5
bb8:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb7
bb9:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb5
bb10:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb7
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
  JAL zero, bb12
bb12:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb13
  JAL zero, bb14
bb13:
  SLTI s4, s2, 100
  BNE s4, zero, bb15
  JAL zero, bb20
bb14:
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
bb15:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb17
  JAL zero, bb21
bb16:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb12
bb17:
  JAL zero, bb19
bb18:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb16
bb19:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb18
bb20:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb16
bb21:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb18
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
