.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  JAL zero, bb4
bb3:
  ADDW s0, s5, s7
  ADDW s1, s4, s0
  ADDW s0, s1, s6
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb7
bb6:
  ADDI s9, zero, 2
  SUBW s10, t0, s9
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s10, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb7:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb10
bb9:
  ADDIW a1, a3, 1
  ADD s9, a4, zero
  ADD s10, a1, zero
  ADD s11, a0, zero
  JAL zero, bb4
bb10:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW t6, a7, 3
  ADD a5, t6, zero
  JAL zero, bb10
bb12:
  ADDI a5, zero, 1
  SUBW t6, a7, a5
  ADD a1, t6, zero
  ADD a2, a6, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  JAL zero, bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  JAL zero, bb17
bb16:
  ADDW s0, s5, s7
  ADDW s1, s4, s0
  ADDW s0, s1, s6
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb17:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb18
  JAL zero, bb19
bb18:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  JAL zero, bb20
bb19:
  ADDI s9, zero, 2
  SUBW s10, t0, s9
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s10, zero
  ADD s3, s8, zero
  JAL zero, bb14
bb20:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb21
  JAL zero, bb22
bb21:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  JAL zero, bb23
bb22:
  ADDIW a1, a3, 1
  ADD s9, a4, zero
  ADD s10, a1, zero
  ADD s11, a0, zero
  JAL zero, bb17
bb23:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb24
  JAL zero, bb25
bb24:
  ADDIW t6, a7, 3
  ADD a5, t6, zero
  JAL zero, bb23
bb25:
  ADDI a5, zero, 1
  SUBW t6, a7, a5
  ADD a1, t6, zero
  ADD a2, a6, zero
  JAL zero, bb20
