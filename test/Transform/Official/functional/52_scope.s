.global main
.global func
.section .bss

.section .data
a:
.word 0x00000007
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  CALL func
  ADD s0, a0, zero
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb4
  JAL zero, bb5
bb3:
  LW s0, 8(sp)
  SLTI s1, s0, 100
  BNE s1, zero, bb6
  JAL zero, bb8
bb4:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb5
bb5:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb6:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb7
bb7:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb7
func:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, a
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  LW s0, 8(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb10
  JAL zero, bb12
bb10:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:
bb12:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
