.global main
.global reverse
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 200
  SW s0, 0(sp)
  ADDI a0, zero, 200
  CALL reverse
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
reverse:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s1, zero, 1
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb2
  JAL zero, bb4
bb2:
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb3
bb3:
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD a0, s2, zero
  CALL reverse
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb3
