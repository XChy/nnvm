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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI s2, zero, 0
  SLTI s2, s2, 100
  BNE s2, zero, bb6
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  SLTI s2, s2, 100
  BNE s2, zero, bb5
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
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb4
bb6:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, a
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb16
  # implict jump to bb8
bb8:
  ADD s7, zero, zero
  # implict jump to bb9
bb9:
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb15
  # implict jump to bb10
bb10:
  ADD s7, s6, zero
  # implict jump to bb11
bb11:
  ADD s0, s7, zero
  ADDIW s1, s5, 1
  # implict jump to bb12
bb12:
  SLTI s5, s1, 100
  BNE s5, zero, bb14
  # implict jump to bb13
bb13:
  ADD s2, s0, zero
  JAL zero, bb2
bb14:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb7
bb15:
  ADDIW s6, s6, 1
  ADD s7, s6, zero
  JAL zero, bb11
bb16:
  ADDI s7, zero, 1
  JAL zero, bb9
func:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, a
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb19
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb19:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
