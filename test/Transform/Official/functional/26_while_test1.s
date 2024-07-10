.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb3
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADDIW s2, s2, 30
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLTI s5, s4, 100
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s5, zero, 100
  SUBW s5, s4, s5
  ADD s0, s5, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb6:
  ADDIW s0, s4, 6
  ADD s3, s0, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb10
  # implict jump to bb9
bb9:
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
bb10:
  ADDIW s2, s2, 30
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  SLTI s5, s4, 100
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADDI s5, zero, 100
  SUBW s5, s4, s5
  ADD s0, s5, zero
  ADD s1, s2, zero
  JAL zero, bb8
bb13:
  ADDIW s0, s4, 6
  ADD s3, s0, zero
  JAL zero, bb11
