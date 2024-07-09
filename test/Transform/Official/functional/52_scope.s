.global main
.global func
.section .bss

.section .data
a:
.word 0x00000007
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 100
  BNE s4, zero, bb2
  JAL zero, bb4
bb2:
  LA s4, a
  LW s5, 0(s4)
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb10
  JAL zero, bb11
bb3:
  ADD s5, s4, zero
  XORI s6, s5, 1
  SLTIU s5, s6, 1
  BNE s5, zero, bb5
  JAL zero, bb12
bb4:
  SLTI s0, s2, 100
  BNE s0, zero, bb7
  JAL zero, bb9
bb5:
  ADDIW s5, s2, 1
  ADD s6, s5, zero
  JAL zero, bb6
bb6:
  ADD s5, s6, zero
  ADDIW s7, s3, 1
  ADD s0, s7, zero
  ADD s1, s5, zero
  JAL zero, bb1
bb7:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb8
bb8:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:
  ADD a0, zero, zero
  CALL putint
  JAL zero, bb8
bb10:
  ADDI s4, zero, 1
  JAL zero, bb3
bb11:
  ADD s4, zero, zero
  JAL zero, bb3
bb12:
  ADD s6, s2, zero
  JAL zero, bb6
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, a
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
