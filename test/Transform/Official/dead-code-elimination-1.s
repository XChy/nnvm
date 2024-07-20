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
  SD s0, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
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
  LW s4, 0(s4)
  BLT s3, s4, bb3
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
  LD s0, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
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
  DIVW s8, s6, s8
  ADDW s8, s2, s8
  LUI s9, 32766
  ADDIW s9, s9, 1
  REMW s8, s8, s9
  ADDIW s9, s3, 1
  ADD s0, s9, zero
  ADD s1, s8, zero
  JAL zero, bb1
bb6:
  LA s0, global
  SW s3, 0(s0)
  ADDW s0, s6, s3
  ADDIW s1, s7, 1
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb4
func:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, global
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
