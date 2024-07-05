.global main
.global func
.section .bss

.section .data
a:
.word 0x00000007
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  SLTI s2, s0, 100
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  CALL func
  ADD s2, a0, zero
  XORI s3, s2, 1
  SLTIU s2, s3, 1
  BNE s2, zero, bb4
  JAL zero, bb9
bb3:
  SLTI s0, s1, 100
  BNE s0, zero, bb6
  JAL zero, bb8
bb4:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  JAL zero, bb5
bb5:
  ADDIW s2, s0, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb1
bb6:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb7
bb9:
  ADD s3, s1, zero
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
  JAL zero, bb13
bb11:
  ADDI s0, zero, 1
  ADDIW s1, s0, 1
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
bb13:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
