.global main
.global exgcd
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 7
  SW s0, 24(sp)
  ADDI s0, zero, 15
  SW s0, 16(sp)
  ADDI t5, sp, 8
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI t6, sp, 0
  ADD s0, t6, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI a0, zero, 7
  ADDI a1, zero, 15
  ADDI a2, sp, 8
  ADD a2, a2, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL exgcd
  ADD s0, a0, zero
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
  ADDI s1, zero, 4
  MULW s2, zero, s1
  ADDI t6, sp, 8
  ADD s1, t6, s2
  LW s2, 0(s1)
  LW s1, 16(sp)
  REMW s3, s2, s1
  LW s1, 16(sp)
  ADDW s2, s3, s1
  LW s1, 16(sp)
  REMW s3, s2, s1
  SW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
exgcd:
  ADDI sp, sp, -96
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s6, 64(sp)
  SD s1, 72(sp)
  SD s5, 80(sp)
  SD s0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb2
  JAL zero, bb4
bb2:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADD s0, s2, s1
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADD s0, s3, s1
  SW zero, 0(s0)
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s6, 64(sp)
  LD s1, 72(sp)
  LD s5, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
bb4:
  LW s0, 16(sp)
  LW s1, 24(sp)
  LW s4, 16(sp)
  REMW s5, s1, s4
  ADD a0, s0, zero
  ADD a1, s5, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL exgcd
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s1, zero, 4
  MUL s4, zero, s1
  ADD s1, s2, s4
  LW s4, 0(s1)
  SW s4, 0(sp)
  ADDI s1, zero, 4
  MUL s5, zero, s1
  ADD s1, s2, s5
  ADDI s2, zero, 4
  MUL s5, zero, s2
  ADD s2, s3, s5
  LW s5, 0(s2)
  SW s5, 0(s1)
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s3, s2
  LW s2, 24(sp)
  LW s5, 16(sp)
  DIVW s6, s2, s5
  ADDI s2, zero, 4
  MUL s5, zero, s2
  ADD s2, s3, s5
  LW s3, 0(s2)
  MULW s2, s6, s3
  SUBW s3, s4, s2
  SW s3, 0(s1)
  ADD a0, s0, zero
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s6, 64(sp)
  LD s1, 72(sp)
  LD s5, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
