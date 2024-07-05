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
  ADDI sp, sp, -48
  SD s3, 0(sp)
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SLT s2, s1, s0
  XORI s1, s2, 1
  BNE s1, zero, bb2
  JAL zero, bb4
bb2:
  CALL getint
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb3
bb3:
  LD s3, 0(sp)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD a0, s3, zero
  CALL reverse
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb3
