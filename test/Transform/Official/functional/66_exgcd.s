.global main
.global exgcd
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADDI t5, sp, 8
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI t6, sp, 0
  ADD s1, t6, zero
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI a0, zero, 7
  ADDI a1, zero, 15
  ADDI a2, sp, 8
  ADD a2, a2, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL exgcd
  ADD s1, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 15
  REMW s3, s1, s2
  ADDIW s1, s3, 15
  ADDI s2, zero, 15
  REMW s3, s1, s2
  SW s3, 0(s0)
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
exgcd:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XOR s4, s1, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, s2, zero
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADD s4, s3, zero
  SW zero, 0(s4)
  ADD a0, s0, zero
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
bb3:
  REMW s4, s0, s1
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL exgcd
  ADD s4, a0, zero
  ADD s5, s2, zero
  LW s2, 0(s5)
  ADD s6, s3, zero
  LW s3, 0(s6)
  SW s3, 0(s5)
  DIVW s3, s0, s1
  LW s0, 0(s6)
  MULW s1, s3, s0
  SUBW s0, s2, s1
  SW s0, 0(s6)
  ADD a0, s4, zero
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
