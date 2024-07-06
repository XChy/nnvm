.global main
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bubblesort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb5
bb5:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb6
  JAL zero, bb7
bb6:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb8
bb7:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDIW s8, s6, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s8, s0, s11
  LW s10, 0(s8)
  SLT s8, s10, s9
  BNE s8, zero, bb11
  JAL zero, bb13
bb10:
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb5
bb11:
  ADDIW s8, s6, 1
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s8, s0, s10
  LW s9, 0(s8)
  ADDIW s8, s6, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s8, s0, s11
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  SW s11, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  SW s9, 0(s8)
  ADD s8, s9, zero
  JAL zero, bb12
bb12:
  ADD s9, s8, zero
  ADDIW s10, s6, 1
  ADD s5, s9, zero
  ADD s4, s10, zero
  JAL zero, bb8
bb13:
  ADD s8, s7, zero
  JAL zero, bb12
