.global main
.global ifWhile
.section .bss
.section .data
.section .text
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
  ADDI s3, zero, 0
  SLTI s4, s3, 5
  BNE s4, zero, bb4
  # implict jump to bb1
bb1:
  ADDI s1, zero, 3
  # implict jump to bb2
bb2:
  ADD s5, s1, zero
  # implict jump to bb3
bb3:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADDI s3, zero, 3
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s3, zero
  ADD s7, s4, zero
  SLLIW s0, s6, 1
  ADDIW s2, s7, 1
  # implict jump to bb7
bb7:
  SLTI s6, s2, 5
  BNE s6, zero, bb9
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  JAL zero, bb2
bb9:
  ADD s4, s2, zero
  ADD s3, s0, zero
  JAL zero, bb6
ifWhile:
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
  SLTI s3, zero, 5
  BNE s3, zero, bb14
  # implict jump to bb11
bb11:
  ADDI s2, zero, 3
  # implict jump to bb12
bb12:
  ADD s4, s2, zero
  # implict jump to bb13
bb13:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb14:
  ADDI s3, zero, 3
  # implict jump to bb15
bb15:
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s3, zero
  ADD s7, s5, zero
  SLLIW s1, s6, 1
  ADDIW s0, s7, 1
  # implict jump to bb17
bb17:
  SLTI s6, s0, 5
  BNE s6, zero, bb19
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  JAL zero, bb12
bb19:
  ADD s5, s0, zero
  ADD s3, s1, zero
  JAL zero, bb16
