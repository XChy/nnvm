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
  ADDI s5, zero, 0
  SLTI s3, s5, 5
  BNE s3, zero, bb4
  # implict jump to bb1
bb1:
  ADDI s0, zero, 3
  # implict jump to bb2
bb2:
  ADD s4, s0, zero
  # implict jump to bb3
bb3:
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
bb4:
  ADD s3, zero, zero
  ADDI s5, zero, 3
  # implict jump to bb5
bb5:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLLIW s1, s6, 1
  ADDIW s2, s7, 1
  # implict jump to bb6
bb6:
  SLTI s6, s2, 5
  BNE s6, zero, bb8
  # implict jump to bb7
bb7:
  ADD s0, s1, zero
  JAL zero, bb2
bb8:
  ADD s3, s2, zero
  ADD s5, s1, zero
  JAL zero, bb5
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
  SLTI s4, zero, 5
  BNE s4, zero, bb13
  # implict jump to bb10
bb10:
  ADDI s2, zero, 3
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  # implict jump to bb12
bb12:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  ADD s4, zero, zero
  ADDI s5, zero, 3
  # implict jump to bb14
bb14:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLLIW s1, s6, 1
  ADDIW s0, s7, 1
  # implict jump to bb15
bb15:
  SLTI s6, s0, 5
  BNE s6, zero, bb17
  # implict jump to bb16
bb16:
  ADD s2, s1, zero
  JAL zero, bb11
bb17:
  ADD s4, s0, zero
  ADD s5, s1, zero
  JAL zero, bb14
