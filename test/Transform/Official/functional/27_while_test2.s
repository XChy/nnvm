.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -112
  SD s6, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s10, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD t4, s1, zero
  SW t4, 0(sp)
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  JAL zero, bb4
bb3:
  ADDW s0, s5, s7
  ADDW s1, s4, s0
  LW t4, 0(sp)
  ADDW s0, s1, t4
  ADD a0, s0, zero
  LD s6, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s10, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
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
  ADDI s6, zero, 2
  SUBW s9, t0, s6
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s9, zero
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
  ADDIW s6, a3, 1
  ADD s9, a4, zero
  ADD s10, s6, zero
  ADD s11, a0, zero
  JAL zero, bb4
bb10:
  ADD a7, a5, zero
  SLTI s6, a7, 20
  BNE s6, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW s6, a7, 3
  ADD a5, s6, zero
  JAL zero, bb10
bb12:
  ADDI s6, zero, 1
  SUBW a5, a7, s6
  ADD a1, a5, zero
  ADD a2, a6, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -112
  SD s6, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s10, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  JAL zero, bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD t4, s1, zero
  SW t4, 0(sp)
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  JAL zero, bb17
bb16:
  ADDW s0, s5, s7
  ADDW s1, s4, s0
  LW t4, 0(sp)
  ADDW s0, s1, t4
  ADD a0, s0, zero
  LD s6, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s10, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
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
  ADDI s6, zero, 2
  SUBW s9, t0, s6
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s9, zero
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
  ADDIW s6, a3, 1
  ADD s9, a4, zero
  ADD s10, s6, zero
  ADD s11, a0, zero
  JAL zero, bb17
bb23:
  ADD a7, a5, zero
  SLTI s6, a7, 20
  BNE s6, zero, bb24
  JAL zero, bb25
bb24:
  ADDIW s6, a7, 3
  ADD a5, s6, zero
  JAL zero, bb23
bb25:
  ADDI s6, zero, 1
  SUBW a5, a7, s6
  ADD a1, a5, zero
  ADD a2, a6, zero
  JAL zero, bb20
