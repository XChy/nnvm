.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL ifWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
ifWhile:
  ADDI sp, sp, -80
  SD s3, 0(sp)
  SD s4, 8(sp)
  SD ra, 16(sp)
  SD s7, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  ADDI s2, zero, 3
  ADD s6, zero, zero
  JAL zero, bb6
bb2:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  ADD s4, s0, zero
  XORI s7, s4, 2
  SLTIU s0, s7, 1
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  ADDIW s1, s4, 2
  ADD s0, s1, zero
  JAL zero, bb3
bb5:
  ADDIW s3, s4, 25
  ADD s5, s3, zero
  JAL zero, bb2
bb6:
  ADD s1, s6, zero
  ADD s0, s2, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s3, zero, 2
  MULW s4, s0, s3
  ADDIW s3, s1, 1
  ADD s2, s4, zero
  ADD s6, s3, zero
  JAL zero, bb6
bb8:
  ADD s5, s0, zero
  JAL zero, bb2
