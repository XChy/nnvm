.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL whileIf
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
whileIf:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb2
bb2:
  SLTI s2, s1, 100
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  XORI s2, s1, 5
  SLTIU s3, s2, 1
  BNE s3, zero, bb5
  JAL zero, bb7
bb4:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s2, zero, 25
  JAL zero, bb6
bb6:
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb2
bb7:
  XORI s3, s1, 10
  SLTIU s4, s3, 1
  BNE s4, zero, bb8
  JAL zero, bb10
bb8:
  ADDI s3, zero, 42
  JAL zero, bb9
bb9:
  ADD s2, s3, zero
  JAL zero, bb6
bb10:
  ADDI s2, zero, 2
  MULW s4, s1, s2
  ADD s3, s4, zero
  JAL zero, bb9
