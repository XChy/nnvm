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
  ADD s1, a0, zero
  ADDI s0, zero, 1
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb4
  # implict jump to bb2
bb2:
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  CALL reverse
  ADD a0, s0, zero
  CALL putint
  # implict jump to bb3
bb3:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  CALL getint
  CALL putint
  JAL zero, bb3
