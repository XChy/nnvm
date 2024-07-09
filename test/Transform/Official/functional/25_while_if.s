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
  SD s1, 16(sp)
  SD s6, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD ra, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
  JAL zero, bb2
bb1:
  ADD s1, s0, zero
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s10, 8(sp)
  LD s1, 16(sp)
  LD s6, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD ra, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  ADD s0, zero, zero
  ADDI s1, zero, 4
  JAL zero, bb3
bb3:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb4
  JAL zero, bb5
bb4:
  SLTI s4, s2, 100
  BNE s4, zero, bb6
  JAL zero, bb12
bb5:
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb8
  JAL zero, bb13
bb7:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb3
bb8:
  JAL zero, bb10
bb9:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb7
bb10:
  JAL zero, bb11
bb11:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb9
bb12:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb7
bb13:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb9
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
  JAL zero, bb15
bb15:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb16
  JAL zero, bb17
bb16:
  SLTI s4, s2, 100
  BNE s4, zero, bb18
  JAL zero, bb24
bb17:
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
bb18:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb20
  JAL zero, bb25
bb19:
  ADD s7, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s7, zero
  JAL zero, bb15
bb20:
  JAL zero, bb22
bb21:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s7, zero
  JAL zero, bb19
bb22:
  JAL zero, bb23
bb23:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb21
bb24:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb19
bb25:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb21
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
