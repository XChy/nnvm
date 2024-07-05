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
  ADDI sp, sp, -80
  SD s4, 0(sp)
  SD ra, 8(sp)
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
  ADDW s2, s0, s1
  ADD s0, zero, zero
  ADD s1, s2, zero
  JAL zero, bb2
bb2:
  SLTI s2, s1, 75
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  SLTI s2, s1, 100
  BNE s2, zero, bb5
  JAL zero, bb11
bb4:
  ADD a0, s1, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
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
bb5:
  ADDIW s2, s1, 42
  ADDI s3, zero, 99
  SLT s4, s3, s2
  BNE s4, zero, bb7
  JAL zero, bb12
bb6:
  ADD s0, s7, zero
  ADD s1, s8, zero
  JAL zero, bb2
bb7:
  ADDI s3, zero, 2
  ADDI s4, zero, 42
  MULW s5, s3, s4
  ADDI s3, zero, 1
  XORI s4, s3, 1
  SLTIU s3, s4, 1
  BNE s3, zero, bb9
  JAL zero, bb13
bb8:
  ADD s7, s4, zero
  ADD s8, s6, zero
  JAL zero, bb6
bb9:
  ADDI s3, zero, 2
  MULW s4, s5, s3
  ADD s3, s4, zero
  JAL zero, bb10
bb10:
  ADD s4, s5, zero
  ADD s6, s3, zero
  JAL zero, bb8
bb11:
  ADD s7, s0, zero
  ADD s8, s1, zero
  JAL zero, bb6
bb12:
  ADD s4, s0, zero
  ADD s6, s2, zero
  JAL zero, bb8
bb13:
  ADD s3, s2, zero
  JAL zero, bb10
