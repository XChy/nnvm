.global main
.section .bss


.section .data
n:
.word 0x0000000a
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, k
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 9
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADDIW s2, s1, 1
  LA s1, k
  LW s3, 0(s1)
  ADDI s1, zero, 2
  MULW s4, s3, s1
  LA s1, k
  SW s4, 0(s1)
  ADD s0, s2, zero
  JAL zero, bb1
