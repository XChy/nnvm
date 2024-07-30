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
  LA s0, a
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BNE s0, zero, bb13
  # implict jump to bb2
bb2:
  ADD s5, zero, zero
  # implict jump to bb3
bb3:
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb12
  # implict jump to bb4
bb4:
  ADD s5, s4, zero
  # implict jump to bb5
bb5:
  ADDIW s3, s3, 1
  SLTI s4, s3, 100
  BNE s4, zero, bb11
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  SLTI s4, s5, 100
  BNE s4, zero, bb10
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb9
bb9:
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
bb10:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb9
bb11:
  ADD s1, s5, zero
  ADD s2, s3, zero
  JAL zero, bb1
bb12:
  ADDIW s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb5
bb13:
  ADDI s5, zero, 1
  JAL zero, bb3
func:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, a
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb16:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
