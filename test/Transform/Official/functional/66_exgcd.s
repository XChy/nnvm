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
  ADDI s1, zero, 15
  REMW s3, s2, s1
  ADDIW s1, s3, 15
  ADDI s2, zero, 15
  REMW s3, s1, s2
  SW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
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
  ADDI sp, sp, -80
  SD s7, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XOR s4, s1, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb2
  JAL zero, bb4
bb2:
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s2, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDI s4, zero, 4
  MUL s5, zero, s4
  ADD s4, s3, s5
  SW zero, 0(s4)
  ADD a0, s0, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
bb4:
  REMW s4, s0, s1
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL exgcd
  ADD s4, a0, zero
  ADDI s5, zero, 4
  MUL s6, zero, s5
  ADD s5, s2, s6
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MUL s7, zero, s5
  ADD s5, s2, s7
  ADDI s2, zero, 4
  MUL s7, zero, s2
  ADD s2, s3, s7
  LW s7, 0(s2)
  SW s7, 0(s5)
  ADDI s2, zero, 4
  MUL s5, zero, s2
  ADD s2, s3, s5
  DIVW s5, s0, s1
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADD s0, s3, s1
  LW s1, 0(s0)
  MULW s0, s5, s1
  SUBW s1, s6, s0
  SW s1, 0(s2)
  ADD a0, s4, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
