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
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb3
  # implict jump to bb2
bb2:
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
bb3:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  # implict jump to bb4
bb4:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s9, zero, 2
  SUBW s10, t0, s9
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s10, zero
  ADD s3, s8, zero
  JAL zero, bb1
bb6:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  # implict jump to bb7
bb7:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW a1, a3, 1
  ADD s9, a4, zero
  ADD s10, a1, zero
  ADD s11, a0, zero
  JAL zero, bb4
bb9:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  # implict jump to bb10
bb10:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb12
  # implict jump to bb11
bb11:
  ADDI a5, zero, 1
  SUBW t6, a7, a5
  ADD a1, t6, zero
  ADD a2, a6, zero
  JAL zero, bb7
bb12:
  ADDIW t6, a7, 3
  ADD a5, t6, zero
  JAL zero, bb10
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
  # implict jump to bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  SLTI s8, s4, 20
  BNE s8, zero, bb16
  # implict jump to bb15
bb15:
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
bb16:
  ADDIW s8, s4, 3
  ADD s9, s7, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  # implict jump to bb17
bb17:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  SLTI a0, t0, 10
  BNE a0, zero, bb19
  # implict jump to bb18
bb18:
  ADDI s9, zero, 2
  SUBW s10, t0, s9
  ADD s0, t2, zero
  ADD s1, t1, zero
  ADD s2, s10, zero
  ADD s3, s8, zero
  JAL zero, bb14
bb19:
  ADDIW a0, t0, 1
  ADD a1, t2, zero
  ADD a2, t1, zero
  # implict jump to bb20
bb20:
  ADD a3, a2, zero
  ADD a4, a1, zero
  XORI a5, a3, 7
  SLTIU a6, a5, 1
  BNE a6, zero, bb22
  # implict jump to bb21
bb21:
  ADDIW a1, a3, 1
  ADD s9, a4, zero
  ADD s10, a1, zero
  ADD s11, a0, zero
  JAL zero, bb17
bb22:
  ADDI a5, zero, 1
  SUBW a6, a3, a5
  ADD a5, a4, zero
  # implict jump to bb23
bb23:
  ADD a7, a5, zero
  SLTI t6, a7, 20
  BNE t6, zero, bb25
  # implict jump to bb24
bb24:
  ADDI a5, zero, 1
  SUBW t6, a7, a5
  ADD a1, t6, zero
  ADD a2, a6, zero
  JAL zero, bb20
bb25:
  ADDIW t6, a7, 3
  ADD a5, t6, zero
  JAL zero, bb23
