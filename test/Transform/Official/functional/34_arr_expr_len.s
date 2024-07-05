.global main
.section .bss


.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
N:
.word 0xffffffff
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  SLTI s2, s1, 6
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, arr
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDW s3, s0, s2
  ADDIW s2, s1, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb3:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
