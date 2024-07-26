.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -80
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
  ADDI s3, zero, 5
  SLTI s3, s3, 100
  BNE s3, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s3, zero, 7
  # implict jump to bb2
bb2:
  ADD a0, s3, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  ADDI s4, zero, 5
  ADDI s5, zero, 7
  # implict jump to bb4
bb4:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s2, s7, 30
  SLTI s7, s6, 100
  BNE s7, zero, bb10
  # implict jump to bb5
bb5:
  ADD s7, s6, zero
  # implict jump to bb6
bb6:
  ADDI s8, zero, 100
  SUBW s1, s7, s8
  # implict jump to bb7
bb7:
  SLTI s7, s2, 100
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADD s3, s1, zero
  JAL zero, bb2
bb9:
  ADD s4, s2, zero
  ADD s5, s1, zero
  JAL zero, bb4
bb10:
  # implict jump to bb11
bb11:
  ADD s8, s6, zero
  ADDIW s0, s8, 6
  # implict jump to bb12
bb12:
  SLTI s8, s0, 100
  BNE s8, zero, bb14
  # implict jump to bb13
bb13:
  ADD s7, s0, zero
  JAL zero, bb6
bb14:
  ADD s6, s0, zero
  JAL zero, bb11
main:
  ADDI sp, sp, -80
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
  ADDI s3, zero, 5
  SLTI s3, s3, 100
  BNE s3, zero, bb18
  # implict jump to bb16
bb16:
  ADDI s3, zero, 7
  # implict jump to bb17
bb17:
  ADD a0, s3, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb18:
  ADDI s4, zero, 5
  ADDI s5, zero, 7
  # implict jump to bb19
bb19:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s1, s7, 30
  SLTI s7, s6, 100
  BNE s7, zero, bb25
  # implict jump to bb20
bb20:
  ADD s7, s6, zero
  # implict jump to bb21
bb21:
  ADDI s8, zero, 100
  SUBW s2, s7, s8
  # implict jump to bb22
bb22:
  SLTI s7, s1, 100
  BNE s7, zero, bb24
  # implict jump to bb23
bb23:
  ADD s3, s2, zero
  JAL zero, bb17
bb24:
  ADD s4, s1, zero
  ADD s5, s2, zero
  JAL zero, bb19
bb25:
  # implict jump to bb26
bb26:
  ADD s8, s6, zero
  ADDIW s0, s8, 6
  # implict jump to bb27
bb27:
  SLTI s8, s0, 100
  BNE s8, zero, bb29
  # implict jump to bb28
bb28:
  ADD s7, s0, zero
  JAL zero, bb21
bb29:
  ADD s6, s0, zero
  JAL zero, bb26
