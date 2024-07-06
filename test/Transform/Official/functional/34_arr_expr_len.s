.global main
.section .bss


.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
N:
.word 0xffffffff
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 6
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, arr
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADDW s5, s3, s4
  ADDIW s4, s2, 1
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb3:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
