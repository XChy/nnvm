.global main
.global deepWhileBr
.section .bss
.section .data
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
  SD s6, 56(sp)
  ADDI s0, zero, 4
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 100
  BNE s4, zero, bb7
  # implict jump to bb2
bb2:
  ADD s4, s2, zero
  ADD s5, s3, zero
  # implict jump to bb3
bb3:
  SLTI s2, s5, 75
  BNE s2, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb7:
  ADDIW s3, s3, 42
  ADDI s6, zero, 99
  BLT s6, s3, bb10
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s4, s2, zero
  ADD s5, s3, zero
  JAL zero, bb3
bb10:
  ADDI s2, zero, 84
  ADDI s3, zero, 168
  JAL zero, bb9
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
  ADDW s0, s0, a1
  SLTI s1, s0, 75
  BNE s1, zero, bb14
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  # implict jump to bb13
bb13:
  ADD a0, s1, zero
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
  ADD s2, zero, zero
  # implict jump to bb15
bb15:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLTI s5, s4, 100
  BNE s5, zero, bb20
  # implict jump to bb16
bb16:
  ADD s5, s3, zero
  ADD s6, s4, zero
  # implict jump to bb17
bb17:
  SLTI s3, s6, 75
  BNE s3, zero, bb19
  # implict jump to bb18
bb18:
  ADD s1, s6, zero
  JAL zero, bb13
bb19:
  ADD s0, s6, zero
  ADD s2, s5, zero
  JAL zero, bb15
bb20:
  ADDIW s4, s4, 42
  ADDI s7, zero, 99
  BLT s7, s4, bb23
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADD s5, s3, zero
  ADD s6, s4, zero
  JAL zero, bb17
bb23:
  ADDI s3, zero, 84
  ADDI s4, zero, 168
  JAL zero, bb22
