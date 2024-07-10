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
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s2, zero, zero
  ADD s4, zero, zero
  JAL zero, bb1
bb1:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLT s7, s5, s3
  BNE s7, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s7, s5, 1
  ADD s8, s5, zero
  ADD s9, s7, zero
  JAL zero, bb4
bb3:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLT t0, s10, s1
  BNE t0, zero, bb5
  JAL zero, bb6
bb5:
  ADDI t0, zero, 4
  MULW t1, s11, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  ADDI t0, zero, 4
  MULW t2, s10, t0
  ADD t0, s0, t2
  LW t2, 0(t0)
  SLT t0, t2, t1
  BNE t0, zero, bb7
  JAL zero, bb11
bb6:
  XOR s8, s11, s5
  SLTU s9, zero, s8
  BNE s9, zero, bb9
  JAL zero, bb12
bb7:
  ADD t0, s10, zero
  JAL zero, bb8
bb8:
  ADD t1, t0, zero
  ADDIW t2, s10, 1
  ADD s8, t1, zero
  ADD s9, t2, zero
  JAL zero, bb4
bb9:
  ADDI s8, zero, 4
  MULW s9, s11, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDI s10, zero, 4
  MULW s11, s5, s10
  ADD s5, s0, s11
  LW s10, 0(s5)
  SW s10, 0(s8)
  SW s9, 0(s5)
  ADD s5, s9, zero
  JAL zero, bb10
bb10:
  ADD s8, s5, zero
  ADD s2, s8, zero
  ADD s4, s7, zero
  JAL zero, bb1
bb11:
  ADD t0, s11, zero
  JAL zero, bb8
bb12:
  ADD s5, s6, zero
  JAL zero, bb10
main:
  ADDI sp, sp, -144
  SD s11, 40(sp)
  SD s10, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s7, 104(sp)
  SD ra, 112(sp)
  SD s4, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
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
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s0, zero, zero
  ADD s3, zero, zero
  JAL zero, bb17
bb14:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s7, 104(sp)
  LD ra, 112(sp)
  LD s4, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb17:
  ADD s4, s3, zero
  ADD s5, s0, zero
  SLT s6, s4, s2
  BNE s6, zero, bb18
  JAL zero, bb19
bb18:
  ADDIW s6, s4, 1
  ADD s7, s4, zero
  ADD s8, s6, zero
  JAL zero, bb20
bb19:
  ADD s0, zero, zero
  JAL zero, bb14
bb20:
  ADD s9, s8, zero
  ADD s10, s7, zero
  SLT s11, s9, s1
  BNE s11, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADDI t5, sp, 0
  ADD s11, t5, t0
  LW t0, 0(s11)
  ADDI s11, zero, 4
  MULW t1, s9, s11
  ADDI t5, sp, 0
  ADD s11, t5, t1
  LW t1, 0(s11)
  SLT s11, t1, t0
  BNE s11, zero, bb23
  JAL zero, bb27
bb22:
  XOR s7, s10, s4
  SLTU s8, zero, s7
  BNE s8, zero, bb25
  JAL zero, bb28
bb23:
  ADD s11, s9, zero
  JAL zero, bb24
bb24:
  ADD t0, s11, zero
  ADDIW t1, s9, 1
  ADD s7, t0, zero
  ADD s8, t1, zero
  JAL zero, bb20
bb25:
  ADDI s7, zero, 4
  MULW s8, s10, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDI s9, zero, 4
  MULW s10, s4, s9
  ADDI t5, sp, 0
  ADD s4, t5, s10
  LW s9, 0(s4)
  SW s9, 0(s7)
  SW s8, 0(s4)
  ADD s4, s8, zero
  JAL zero, bb26
bb26:
  ADD s7, s4, zero
  ADD s0, s7, zero
  ADD s3, s6, zero
  JAL zero, bb17
bb27:
  ADD s11, s10, zero
  JAL zero, bb24
bb28:
  ADD s4, s5, zero
  JAL zero, bb26
