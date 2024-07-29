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
  ADDI s4, zero, 7
  ADDI s5, zero, 5
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD s6, s4, zero
  ADD s7, s5, zero
  ADDIW s0, s7, 30
  SLTI s7, s6, 100
  BNE s7, zero, bb11
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  # implict jump to bb7
bb7:
  ADDI s8, zero, 100
  SUBW s2, s7, s8
  # implict jump to bb8
bb8:
  SLTI s7, s0, 100
  BNE s7, zero, bb10
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  JAL zero, bb2
bb10:
  ADD s5, s0, zero
  ADD s4, s2, zero
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s8, s6, zero
  ADDIW s1, s8, 6
  # implict jump to bb14
bb14:
  SLTI s8, s1, 100
  BNE s8, zero, bb16
  # implict jump to bb15
bb15:
  ADD s7, s1, zero
  JAL zero, bb7
bb16:
  ADD s6, s1, zero
  JAL zero, bb13
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
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:
  ADDI s3, zero, 7
  # implict jump to bb19
bb19:
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
bb20:
  ADDI s4, zero, 7
  ADDI s5, zero, 5
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADD s6, s4, zero
  ADD s7, s5, zero
  ADDIW s0, s7, 30
  SLTI s7, s6, 100
  BNE s7, zero, bb28
  # implict jump to bb23
bb23:
  ADD s7, s6, zero
  # implict jump to bb24
bb24:
  ADDI s8, zero, 100
  SUBW s2, s7, s8
  # implict jump to bb25
bb25:
  SLTI s7, s0, 100
  BNE s7, zero, bb27
  # implict jump to bb26
bb26:
  ADD s3, s2, zero
  JAL zero, bb19
bb27:
  ADD s5, s0, zero
  ADD s4, s2, zero
  JAL zero, bb22
bb28:
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADD s8, s6, zero
  ADDIW s1, s8, 6
  # implict jump to bb31
bb31:
  SLTI s8, s1, 100
  BNE s8, zero, bb33
  # implict jump to bb32
bb32:
  ADD s7, s1, zero
  JAL zero, bb24
bb33:
  ADD s6, s1, zero
  JAL zero, bb30
