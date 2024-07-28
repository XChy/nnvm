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
  SD s8, 72(sp)
  ADDI s3, zero, 0
  SLTI s3, s3, 100
  BNE s3, zero, bb6
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  # implict jump to bb2
bb2:
  SLTI s3, s3, 100
  BNE s3, zero, bb5
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb4
bb6:
  # implict jump to bb7
bb7:
  LA s4, a
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s2, s4, 1
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb8
bb8:
  ADD s6, s5, zero
  ADD s7, s4, zero
  BNE s2, zero, bb17
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  XORI s8, s8, 1
  SLTIU s8, s8, 1
  BNE s8, zero, bb16
  # implict jump to bb11
bb11:
  ADD s8, s7, zero
  # implict jump to bb12
bb12:
  ADD s1, s8, zero
  ADDIW s0, s6, 1
  # implict jump to bb13
bb13:
  SLTI s6, s0, 100
  BNE s6, zero, bb15
  # implict jump to bb14
bb14:
  ADD s3, s1, zero
  JAL zero, bb2
bb15:
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb8
bb16:
  ADDIW s7, s7, 1
  ADD s8, s7, zero
  JAL zero, bb12
bb17:
  ADDI s8, zero, 1
  JAL zero, bb10
func:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, a
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb20
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb20:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
