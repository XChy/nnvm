.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  XORI s3, s2, 5
  SLTIU s3, s3, 1
  BNE s3, zero, bb9
  # implict jump to bb4
bb4:
  XORI s3, s2, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb8
  # implict jump to bb5
bb5:
  SLLIW s3, s2, 1
  ADD s3, s3, zero
  # implict jump to bb6
bb6:
  ADD s3, s3, zero
  ADD s3, s3, zero
  # implict jump to bb7
bb7:
  ADD s3, s3, zero
  ADDIW s2, s2, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb8:
  ADDI s3, zero, 42
  JAL zero, bb6
bb9:
  ADDI s3, zero, 25
  JAL zero, bb7
whileIf:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb13:
  XORI s3, s2, 5
  SLTIU s3, s3, 1
  BNE s3, zero, bb19
  # implict jump to bb14
bb14:
  XORI s3, s2, 10
  SLTIU s3, s3, 1
  BNE s3, zero, bb18
  # implict jump to bb15
bb15:
  SLLIW s3, s2, 1
  ADD s3, s3, zero
  # implict jump to bb16
bb16:
  ADD s3, s3, zero
  ADD s3, s3, zero
  # implict jump to bb17
bb17:
  ADD s3, s3, zero
  ADDIW s2, s2, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb11
bb18:
  ADDI s3, zero, 42
  JAL zero, bb16
bb19:
  ADDI s3, zero, 25
  JAL zero, bb17
