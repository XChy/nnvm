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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb4
bb6:
  LA s4, a
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb12
  # implict jump to bb7
bb7:
  ADD s4, zero, zero
  # implict jump to bb8
bb8:
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb11
  # implict jump to bb9
bb9:
  ADD s4, s2, zero
  # implict jump to bb10
bb10:
  ADDIW s2, s3, 1
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb11:
  ADDIW s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb10
bb12:
  ADDI s4, zero, 1
  JAL zero, bb8
func:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, a
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
