.global main
.global exgcd
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 4(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI a0, zero, 7
  ADDI a1, zero, 15
  ADDI a2, sp, 4
  ADD a2, a2, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL exgcd
  ADD s0, a0, zero
  LW s0, 4(sp)
  ADDI s1, zero, 15
  REMW s2, s0, s1
  ADDIW s0, s2, 15
  ADDI s1, zero, 15
  REMW s2, s0, s1
  SW s2, 4(sp)
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
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
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
  REMW s4, s0, s1
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL exgcd
  ADD s4, a0, zero
  LW s5, 0(s2)
  LW s6, 0(s3)
  SW s6, 0(s2)
  DIVW s6, s0, s1
  LW s1, 0(s3)
  MULW s7, s6, s1
  SUBW s1, s5, s7
  SW s1, 0(s3)
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
bb3:
  ADDI s1, zero, 1
  SW s1, 0(s2)
  SW zero, 0(s3)
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
