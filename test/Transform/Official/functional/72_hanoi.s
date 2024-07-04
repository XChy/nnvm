.global main
.global hanoi
.global move
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  CALL getint
  ADD s0, a0, zero
  ADD a0, s0, zero
  ADDI a1, zero, 1
  ADDI a2, zero, 2
  ADDI a3, zero, 3
  CALL hanoi
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
hanoi:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  SW s2, 8(sp)
  SW s3, 0(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb5
  JAL zero, bb7
bb5:
  LW s0, 16(sp)
  LW s1, 0(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL move
  JAL zero, bb6
bb6:
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  LW s0, 24(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LW s0, 16(sp)
  LW s1, 0(sp)
  LW s3, 8(sp)
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL hanoi
  LW s0, 16(sp)
  LW s1, 0(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL move
  LW s0, 24(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LW s0, 8(sp)
  LW s1, 16(sp)
  LW s3, 0(sp)
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL hanoi
  JAL zero, bb6
move:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
