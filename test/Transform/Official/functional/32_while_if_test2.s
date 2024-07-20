.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s2, zero, 3
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, s3, zero
  ADD s1, s2, zero
  SLTI s5, s0, 5
  BNE s5, zero, bb4
  # implict jump to bb2
bb2:
  ADD s4, s1, zero
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s1, s1, 1
  ADDIW s0, s0, 1
  ADD s2, s1, zero
  ADD s3, s0, zero
  JAL zero, bb1
ifWhile:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s1, zero, 3
  ADD s2, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, s2, zero
  ADD s4, s1, zero
  SLTI s5, s0, 5
  BNE s5, zero, bb9
  # implict jump to bb7
bb7:
  ADD s3, s4, zero
  # implict jump to bb8
bb8:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  SLLIW s3, s4, 1
  ADDIW s0, s0, 1
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb6
