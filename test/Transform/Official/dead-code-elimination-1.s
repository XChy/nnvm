.global main
.global func
.section .bss


.section .data
global:
.word 0x00000000
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  LUI s0, 24
  ADDI s0, s0, 1712
  ADD a0, zero, s0
  CALL _sysy_starttime
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  LA s2, loopCount
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  LUI s1, 24
  ADDI s1, s1, 1728
  ADD a0, zero, s1
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLTI s4, s2, 60
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD a0, s1, zero
  CALL func
  LA s4, global
  LW s5, 0(s4)
  ADDW s4, s3, s5
  ADDIW s5, s2, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb4
bb6:
  ADDI s2, zero, 60
  DIVW s4, s3, s2
  ADDW s2, s0, s4
  LUI s3, 32766
  ADDI s3, s3, 1
  REMW s4, s2, s3
  ADDIW s2, s1, 1
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb1
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  LA s1, global
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
