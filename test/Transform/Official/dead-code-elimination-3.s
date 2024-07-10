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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  LUI s0, 24
  ADDIW s0, s0, 1712
  ADD a0, zero, s0
  CALL _sysy_starttime
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, loopCount
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb3
  # implict jump to bb2
bb2:
  LUI s4, 24
  ADDIW s4, s4, 1728
  ADD a0, zero, s4
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb4
bb4:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s7, 60
  BNE s8, zero, bb6
  # implict jump to bb5
bb5:
  ADDI s8, zero, 60
  DIVW s9, s6, s8
  ADDW s8, s2, s9
  LUI s9, 32766
  ADDIW s9, s9, 1
  REMW s10, s8, s9
  ADDIW s8, s3, 1
  ADD s0, s8, zero
  ADD s1, s10, zero
  JAL zero, bb1
bb6:
  LA s0, global
  SW s3, 0(s0)
  LA s0, global
  LW s1, 0(s0)
  ADDW s0, s6, s1
  ADDIW s1, s7, 1
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb4
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  LA s1, global
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
