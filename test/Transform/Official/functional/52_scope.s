.global main
.global func
.section .bss

.section .data
a:
.word 0x00000007
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
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 100
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  CALL func
  ADD s4, a0, zero
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb4
  JAL zero, bb9
bb3:
  SLTI s0, s2, 100
  BNE s0, zero, bb6
  JAL zero, bb8
bb4:
  ADDIW s4, s2, 1
  ADD s5, s4, zero
  JAL zero, bb5
bb5:
  ADD s4, s5, zero
  ADDIW s6, s3, 1
  ADD s0, s6, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb6:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb7
bb7:
  ADD a0, zero, zero
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
bb8:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb7
bb9:
  ADD s5, s2, zero
  JAL zero, bb5
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, a
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
