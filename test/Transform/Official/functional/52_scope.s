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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 100
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  SLTI s4, s2, 100
  BNE s4, zero, bb5
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb4
bb6:
  LA s4, a
  LW s5, 0(s4)
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb12
  # implict jump to bb7
bb7:
  ADD s4, zero, zero
  # implict jump to bb8
bb8:
  ADD s5, s4, zero
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb11
  # implict jump to bb9
bb9:
  ADD s4, s2, zero
  # implict jump to bb10
bb10:
  ADD s2, s4, zero
  ADDIW s4, s3, 1
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb11:
  ADDIW s5, s2, 1
  ADD s4, s5, zero
  JAL zero, bb10
bb12:
  ADDI s4, zero, 1
  JAL zero, bb8
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, a
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
