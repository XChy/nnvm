.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s4, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  ADDI s1, zero, 3
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s6, zero
  ADD s0, s1, zero
  SLTI s3, s2, 5
  BNE s3, zero, bb4
  # implict jump to bb2
bb2:
  ADD s5, s0, zero
  # implict jump to bb3
bb3:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s4, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADDI s3, zero, 2
  MULW s4, s0, s3
  ADDIW s3, s2, 1
  ADD s1, s4, zero
  ADD s6, s3, zero
  JAL zero, bb1
ifWhile:
  ADDI sp, sp, -64
  SD s2, 0(sp)
  SD s6, 8(sp)
  SD s1, 16(sp)
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s3, 56(sp)
  ADDI s3, zero, 3
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, s5, zero
  ADD s1, s3, zero
  SLTI s2, s0, 5
  BNE s2, zero, bb9
  # implict jump to bb7
bb7:
  ADD s4, s1, zero
  # implict jump to bb8
bb8:
  ADD s0, s4, zero
  ADD a0, s0, zero
  LD s2, 0(sp)
  LD s6, 8(sp)
  LD s1, 16(sp)
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s3, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADDI s2, zero, 2
  MULW s6, s1, s2
  ADDIW s2, s0, 1
  ADD s3, s6, zero
  ADD s5, s2, zero
  JAL zero, bb6
