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
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s1, s0, zero
  ADDI t5, sp, 0
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb1:
  LA s0, n
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s2
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bubblesort:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb5
bb5:
  LA s3, n
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s4, s3
  SLT s3, s2, s5
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADD s3, s1, zero
  ADD s4, zero, zero
  JAL zero, bb8
bb7:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb8:
  LA s5, n
  LW s6, 0(s5)
  SUBW s5, s6, s2
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLT s5, s4, s7
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s5, s0, s8
  LW s7, 0(s5)
  SLT s5, s7, s6
  BNE s5, zero, bb11
  JAL zero, bb13
bb10:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb5
bb11:
  ADDIW s5, s4, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s5, s0, s7
  LW s6, 0(s5)
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s5, s0, s8
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s4, s5
  ADD s5, s0, s7
  SW s6, 0(s5)
  ADD s5, s6, zero
  JAL zero, bb12
bb12:
  ADDIW s6, s4, 1
  ADD s3, s5, zero
  ADD s4, s6, zero
  JAL zero, bb8
bb13:
  ADD s5, s3, zero
  JAL zero, bb12
