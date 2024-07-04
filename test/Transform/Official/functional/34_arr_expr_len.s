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
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  SLTI s1, s0, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, arr
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s2, s0, s1
  SW s2, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb3:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
