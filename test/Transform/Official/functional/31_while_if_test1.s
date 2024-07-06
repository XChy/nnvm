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
  JAL zero, bb2
bb2:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb3
  JAL zero, bb4
bb3:
  XORI s4, s2, 5
  SLTIU s5, s4, 1
  BNE s5, zero, bb5
  JAL zero, bb7
bb4:
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
bb5:
  ADDI s4, zero, 25
  JAL zero, bb6
bb6:
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  ADD s0, s5, zero
  ADD s1, s6, zero
  JAL zero, bb2
bb7:
  XORI s0, s2, 10
  SLTIU s1, s0, 1
  BNE s1, zero, bb8
  JAL zero, bb10
bb8:
  ADDI s0, zero, 42
  JAL zero, bb9
bb9:
  ADD s1, s0, zero
  ADD s4, s1, zero
  JAL zero, bb6
bb10:
  ADDI s1, zero, 2
  MULW s4, s2, s1
  ADD s0, s4, zero
  JAL zero, bb9
