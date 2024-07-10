.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb9
  # implict jump to bb4
bb4:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb8
  # implict jump to bb5
bb5:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  # implict jump to bb6
bb6:
  ADD s1, s0, zero
  ADD s4, s1, zero
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb1
bb8:
  ADDI s0, zero, 42
  JAL zero, bb6
bb9:
  ADDI s4, zero, 25
  JAL zero, bb7
whileIf:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb19
  # implict jump to bb14
bb14:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb18
  # implict jump to bb15
bb15:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  # implict jump to bb16
bb16:
  ADD s1, s0, zero
  ADD s4, s1, zero
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb11
bb18:
  ADDI s0, zero, 42
  JAL zero, bb16
bb19:
  ADDI s4, zero, 25
  JAL zero, bb17
