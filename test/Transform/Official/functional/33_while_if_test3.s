.global main
.global deepWhileBr
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI a0, zero, 2
  ADDI a1, zero, 2
  CALL deepWhileBr
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
deepWhileBr:
  ADDI sp, sp, -96
  SD s7, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s10, 32(sp)
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
  JAL zero, bb2
bb2:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb3
  JAL zero, bb4
bb3:
  SLTI s4, s2, 100
  BNE s4, zero, bb5
  JAL zero, bb10
bb4:
  ADD a0, s2, zero
  LD s7, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD ra, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  ADDIW s4, s2, 42
  ADDI s5, zero, 99
  SLT s6, s5, s4
  BNE s6, zero, bb7
  JAL zero, bb11
bb6:
  ADD s6, s8, zero
  ADD s10, s9, zero
  ADD s0, s10, zero
  ADD s1, s6, zero
  JAL zero, bb2
bb7:
  ADD s5, s4, zero
  ADDI s5, zero, 168
  JAL zero, bb9
bb8:
  ADD s6, s7, zero
  ADD s8, s5, zero
  ADD s9, s8, zero
  ADD s8, s6, zero
  JAL zero, bb6
bb9:
  ADD s6, s5, zero
  ADDI s5, zero, 84
  ADD s7, s6, zero
  JAL zero, bb8
bb10:
  ADD s9, s3, zero
  ADD s8, s2, zero
  JAL zero, bb6
bb11:
  ADD s5, s3, zero
  ADD s7, s4, zero
  JAL zero, bb8
