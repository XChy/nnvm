.global main
.global hanoi
.global move
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s0, s0, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 0
  SLT s2, s2, s1
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
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
  SUBW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb1
hanoi:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XORI s4, s0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb7
  # implict jump to bb5
bb5:
  ADDI s4, zero, 1
  SUBW s0, s0, s4
  ADD a0, s0, zero
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
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL hanoi
  # implict jump to bb6
bb6:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb7:
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
move:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
