.global main
.global hanoi
.global move
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s1, zero
  ADDI s2, zero, 0
  SLT s3, s2, s0
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  CALL getint
  ADD s2, a0, zero
  ADD a0, s2, zero
  ADDI a1, zero, 1
  ADDI a2, zero, 2
  ADDI a3, zero, 3
  CALL hanoi
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
hanoi:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XORI s4, s0, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb5
  JAL zero, bb7
bb5:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb6
bb6:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADDI s4, zero, 1
  SUBW s5, s0, s4
  ADD a0, s5, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL hanoi
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s5, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL hanoi
  JAL zero, bb6
move:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
