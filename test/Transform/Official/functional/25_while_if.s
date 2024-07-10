.global main
.global deepWhileBr
.global get_one
.section .bss
.section .data
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
  ADD s0, zero, zero
  ADDI s1, zero, 4
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, s2, zero
  CALL putint
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
bb3:
  SLTI s4, s2, 100
  BNE s4, zero, bb6
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb5
bb5:
  ADD s2, s5, zero
  ADD s3, s4, zero
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb6:
  ADDIW s6, s2, 42
  ADDI s2, zero, 99
  SLT s7, s2, s6
  BNE s7, zero, bb9
  # implict jump to bb7
bb7:
  ADD s2, s3, zero
  ADD s3, s6, zero
  # implict jump to bb8
bb8:
  ADD s6, s3, zero
  ADD s3, s2, zero
  ADD s4, s3, zero
  ADD s5, s6, zero
  JAL zero, bb5
bb9:
  # implict jump to bb10
bb10:
  ADDI s2, zero, 84
  ADDI s3, zero, 168
  JAL zero, bb8
deepWhileBr:
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDW s2, s0, s1
  ADD s0, zero, zero
  ADD s1, s2, zero
  # implict jump to bb12
bb12:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb14
  # implict jump to bb13
bb13:
  ADD a0, s2, zero
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
bb14:
  SLTI s4, s2, 100
  BNE s4, zero, bb17
  # implict jump to bb15
bb15:
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb16
bb16:
  ADD s2, s5, zero
  ADD s3, s4, zero
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb12
bb17:
  ADDIW s6, s2, 42
  ADDI s2, zero, 99
  SLT s7, s2, s6
  BNE s7, zero, bb20
  # implict jump to bb18
bb18:
  ADD s2, s3, zero
  ADD s3, s6, zero
  # implict jump to bb19
bb19:
  ADD s6, s3, zero
  ADD s3, s2, zero
  ADD s4, s3, zero
  ADD s5, s6, zero
  JAL zero, bb16
bb20:
  # implict jump to bb21
bb21:
  ADDI s2, zero, 84
  ADDI s3, zero, 168
  JAL zero, bb19
get_one:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
