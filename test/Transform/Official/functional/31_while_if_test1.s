.global main
.global whileIf
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
  ADDI s2, zero, 0
  SLTI s2, s2, 100
  BNE s2, zero, bb3
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, s2, zero
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
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  XORI s5, s4, 5
  SLTIU s5, s5, 1
  BNE s5, zero, bb14
  # implict jump to bb6
bb6:
  XORI s5, s4, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb13
  # implict jump to bb7
bb7:
  SLLIW s5, s4, 1
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s0, s5, zero
  ADDIW s1, s4, 1
  # implict jump to bb10
bb10:
  SLTI s4, s1, 100
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:
  ADD s2, s0, zero
  JAL zero, bb2
bb12:
  ADD s3, s1, zero
  JAL zero, bb5
bb13:
  ADDI s5, zero, 42
  JAL zero, bb8
bb14:
  ADDI s5, zero, 25
  JAL zero, bb9
whileIf:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SLTI s2, zero, 100
  BNE s2, zero, bb18
  # implict jump to bb16
bb16:
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb18:
  # implict jump to bb19
bb19:
  ADD s3, zero, zero
  # implict jump to bb20
bb20:
  ADD s4, s3, zero
  XORI s5, s4, 5
  SLTIU s5, s5, 1
  BNE s5, zero, bb29
  # implict jump to bb21
bb21:
  XORI s5, s4, 10
  SLTIU s5, s5, 1
  BNE s5, zero, bb28
  # implict jump to bb22
bb22:
  SLLIW s5, s4, 1
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD s0, s5, zero
  ADDIW s1, s4, 1
  # implict jump to bb25
bb25:
  SLTI s4, s1, 100
  BNE s4, zero, bb27
  # implict jump to bb26
bb26:
  ADD s2, s0, zero
  JAL zero, bb17
bb27:
  ADD s3, s1, zero
  JAL zero, bb20
bb28:
  ADDI s5, zero, 42
  JAL zero, bb23
bb29:
  ADDI s5, zero, 25
  JAL zero, bb24
