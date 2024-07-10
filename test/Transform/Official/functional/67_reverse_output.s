.global main
.global reverse
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 200
  CALL reverse
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
reverse:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb4
  # implict jump to bb2
bb2:
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 1
  SUBW s0, s0, s2
  ADD a0, s0, zero
  CALL reverse
  ADD a0, s1, zero
  CALL putint
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  CALL getint
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb3
