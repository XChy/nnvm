.global select_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
select_sort:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
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
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s4, s3, 1
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
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
bb4:
  SLT s4, s6, s1
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s7, s5, s4
  ADD s4, s0, s7
  LW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s6, s4
  ADD s4, s0, s8
  LW s8, 0(s4)
  SLT s4, s8, s7
  BNE s4, zero, bb7
  JAL zero, bb11
bb6:
  XOR s4, s5, s3
  SLTU s6, zero, s4
  BNE s6, zero, bb9
  JAL zero, bb12
bb7:
  ADD s4, s6, zero
  JAL zero, bb8
bb8:
  ADDIW s7, s6, 1
  ADD s5, s4, zero
  ADD s6, s7, zero
  JAL zero, bb4
bb9:
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s0, s6
  LW s6, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s5, s4
  ADD s4, s0, s7
  ADDI s5, zero, 4
  MULW s7, s3, s5
  ADD s5, s0, s7
  LW s7, 0(s5)
  SW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  SW s6, 0(s4)
  ADD s4, s6, zero
  JAL zero, bb10
bb10:
  ADDIW s5, s3, 1
  ADD s2, s4, zero
  ADD s3, s5, zero
  JAL zero, bb1
bb11:
  ADD s4, s5, zero
  JAL zero, bb8
bb12:
  ADD s4, s2, zero
  JAL zero, bb10
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
  MUL s1, zero, s0
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
  LA s0, n
  LW s1, 0(s0)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, s1, zero
  CALL select_sort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb14
bb14:
  LA s0, n
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
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
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
