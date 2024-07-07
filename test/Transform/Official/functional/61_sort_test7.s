.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, buf
  ADD s1, s0, zero
  ADD a0, s1, zero
  CALL getarray
  ADD s0, a0, zero
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL merge_sort
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
merge_sort:
  ADDI sp, sp, -112
  SD s10, 0(sp)
  SD s11, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD ra, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDIW s2, s0, 1
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDW s2, s0, s1
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s4, zero
  CALL merge_sort
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL merge_sort
  ADD s2, s0, zero
  ADD s3, s4, zero
  ADD s5, s0, zero
  JAL zero, bb4
bb4:
  ADD s6, s5, zero
  ADD s7, s3, zero
  ADD s8, s2, zero
  SLT s9, s6, s4
  BNE s9, zero, bb7
  JAL zero, bb8
bb5:
  LA s9, buf
  ADD s11, s9, zero
  ADDI s9, zero, 4
  MULW t0, s6, s9
  ADD s9, s11, t0
  LW t0, 0(s9)
  ADDI t1, zero, 4
  MULW t2, s7, t1
  ADD t1, s11, t2
  LW s11, 0(t1)
  SLT t2, t0, s11
  BNE t2, zero, bb10
  JAL zero, bb12
bb6:
  ADD s2, s8, zero
  ADD s3, s6, zero
  JAL zero, bb13
bb7:
  SLT s9, s7, s1
  ADD s10, s9, zero
  JAL zero, bb9
bb8:
  ADD s10, zero, zero
  JAL zero, bb9
bb9:
  ADD s9, s10, zero
  BNE s9, zero, bb5
  JAL zero, bb6
bb10:
  LA s11, buf
  ADDI t0, s11, 400
  ADDI s11, zero, 4
  MULW t2, s8, s11
  ADD s11, t0, t2
  LW t0, 0(s9)
  SW t0, 0(s11)
  ADDIW s9, s6, 1
  ADD s11, s7, zero
  ADD t0, s9, zero
  JAL zero, bb11
bb11:
  ADD s9, t0, zero
  ADD t2, s11, zero
  ADDIW a0, s8, 1
  ADD s2, a0, zero
  ADD s3, t2, zero
  ADD s5, s9, zero
  JAL zero, bb4
bb12:
  LA s2, buf
  ADDI s3, s2, 400
  ADDI s2, zero, 4
  MULW s5, s8, s2
  ADD s2, s3, s5
  LW s3, 0(t1)
  SW s3, 0(s2)
  ADDIW s2, s7, 1
  ADD s11, s2, zero
  ADD t0, s6, zero
  JAL zero, bb11
bb13:
  ADD s5, s3, zero
  ADD s9, s2, zero
  SLT s11, s5, s4
  BNE s11, zero, bb14
  JAL zero, bb15
bb14:
  LA s11, buf
  ADDI t0, s11, 400
  ADDI s11, zero, 4
  MULW t1, s9, s11
  ADD s11, t0, t1
  LA t0, buf
  ADD t1, t0, zero
  ADDI t0, zero, 4
  MULW t2, s5, t0
  ADD t0, t1, t2
  LW t1, 0(t0)
  SW t1, 0(s11)
  ADDIW s11, s5, 1
  ADDIW s5, s9, 1
  ADD s2, s5, zero
  ADD s3, s11, zero
  JAL zero, bb13
bb15:
  ADD s2, s9, zero
  ADD s3, s7, zero
  JAL zero, bb16
bb16:
  ADD s5, s3, zero
  ADD s9, s2, zero
  SLT s11, s5, s1
  BNE s11, zero, bb17
  JAL zero, bb18
bb17:
  LA s11, buf
  ADDI t0, s11, 400
  ADDI s11, zero, 4
  MULW t1, s9, s11
  ADD s11, t0, t1
  LA t0, buf
  ADD t1, t0, zero
  ADDI t0, zero, 4
  MULW t2, s5, t0
  ADD t0, t1, t2
  LW t1, 0(t0)
  SW t1, 0(s11)
  ADDIW s11, s5, 1
  ADDIW s5, s9, 1
  ADD s2, s5, zero
  ADD s3, s11, zero
  JAL zero, bb16
bb18:
  ADD s2, s0, zero
  JAL zero, bb19
bb19:
  ADD s3, s2, zero
  SLT s5, s3, s1
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  LA s5, buf
  ADD s9, s5, zero
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADD s5, s9, s11
  LA s9, buf
  ADDI t0, s9, 400
  ADD s9, t0, s11
  LW s11, 0(s9)
  SW s11, 0(s5)
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb19
bb21:
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
