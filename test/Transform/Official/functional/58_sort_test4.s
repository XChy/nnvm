.global select_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
select_sort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  SLT s6, s4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s6, s4, 1
  ADD s7, s4, zero
  ADD s8, s6, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD s6, s8, zero
  ADD s9, s7, zero
  SLT s10, s6, s1
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW t0, s6, s10
  ADD s10, s0, t0
  LW t0, 0(s10)
  SLT s10, t0, s11
  BNE s10, zero, bb7
  JAL zero, bb11
bb6:
  XOR s6, s9, s4
  SLTU s7, zero, s6
  BNE s7, zero, bb9
  JAL zero, bb12
bb7:
  ADD s10, s6, zero
  JAL zero, bb8
bb8:
  ADD s11, s10, zero
  ADDIW t0, s6, 1
  ADD s7, s11, zero
  ADD s8, t0, zero
  JAL zero, bb4
bb9:
  ADDI s6, zero, 4
  MULW s7, s9, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s9, s6
  ADD s6, s0, s8
  ADDI s8, zero, 4
  MULW s9, s4, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  SW s9, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s4, s6
  ADD s6, s0, s8
  SW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb10
bb10:
  ADD s7, s6, zero
  ADDIW s8, s4, 1
  ADD s2, s7, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb11:
  ADD s10, s9, zero
  JAL zero, bb8
bb12:
  ADD s6, s5, zero
  JAL zero, bb10
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
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
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
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
