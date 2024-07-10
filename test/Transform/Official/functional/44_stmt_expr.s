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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, k
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 9
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LA s2, k
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  LA s2, k
  LW s2, 0(s2)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADDIW s1, s1, 1
  LA s2, k
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  LA s3, k
  SW s2, 0(s3)
  ADD s0, s1, zero
  JAL zero, bb1
