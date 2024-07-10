.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
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
  ADDW s8, s5, s7
  ADDW s8, s4, s8
  ADDW s8, s8, s6
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDIW s4, s4, 3
  ADD s7, s7, zero
  ADD s6, s6, zero
  ADD s5, s5, zero
  # implict jump to bb4
bb4:
  ADD s8, s5, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  SLTI s11, s8, 10
  BNE s11, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s11, zero
  ADD s3, s4, zero
  JAL zero, bb1
bb6:
  ADDIW s0, s8, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  # implict jump to bb7
bb7:
  ADD s3, s2, zero
  ADD s8, s1, zero
  XORI s9, s3, 7
  SLTIU s9, s9, 1
  BNE s9, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW s9, s3, 1
  ADD s7, s8, zero
  ADD s6, s9, zero
  ADD s5, s0, zero
  JAL zero, bb4
bb9:
  ADDI s5, zero, 1
  SUBW s3, s3, s5
  ADD s5, s8, zero
  # implict jump to bb10
bb10:
  ADD s6, s5, zero
  SLTI s7, s6, 20
  BNE s7, zero, bb12
  # implict jump to bb11
bb11:
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  ADD s1, s7, zero
  ADD s2, s3, zero
  JAL zero, bb7
bb12:
  ADDIW s1, s6, 3
  ADD s5, s1, zero
  JAL zero, bb10
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
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
  ADDW s8, s5, s7
  ADDW s8, s4, s8
  ADDW s8, s8, s6
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb16:
  ADDIW s4, s4, 3
  ADD s7, s7, zero
  ADD s6, s6, zero
  ADD s5, s5, zero
  # implict jump to bb17
bb17:
  ADD s8, s5, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  SLTI s11, s8, 10
  BNE s11, zero, bb19
  # implict jump to bb18
bb18:
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s11, zero
  ADD s3, s4, zero
  JAL zero, bb14
bb19:
  ADDIW s0, s8, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  # implict jump to bb20
bb20:
  ADD s3, s2, zero
  ADD s8, s1, zero
  XORI s9, s3, 7
  SLTIU s9, s9, 1
  BNE s9, zero, bb22
  # implict jump to bb21
bb21:
  ADDIW s9, s3, 1
  ADD s7, s8, zero
  ADD s6, s9, zero
  ADD s5, s0, zero
  JAL zero, bb17
bb22:
  ADDI s5, zero, 1
  SUBW s3, s3, s5
  ADD s5, s8, zero
  # implict jump to bb23
bb23:
  ADD s6, s5, zero
  SLTI s7, s6, 20
  BNE s7, zero, bb25
  # implict jump to bb24
bb24:
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  ADD s1, s7, zero
  ADD s2, s3, zero
  JAL zero, bb20
bb25:
  ADDIW s1, s6, 3
  ADD s5, s1, zero
  JAL zero, bb23
