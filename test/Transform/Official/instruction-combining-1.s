.global main
.global func
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD s0, 0(sp)
  SD s5, 8(sp)
  SD s7, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  LUI s0, 2
  ADDI s0, s0, 1823
  ADD a0, zero, s0
  CALL _sysy_starttime
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, loopCount
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb4
bb3:
  LUI s0, 2
  ADDI s0, s0, 1838
  ADD a0, zero, s0
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s0, 0(sp)
  LD s5, 8(sp)
  LD s7, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s7, 60
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb5
  JAL zero, bb6
bb5:
  ADD a0, s3, zero
  LUI s8, 2
  ADDI s8, s8, 1808
  ADD a1, zero, s8
  CALL func
  ADD s8, a0, zero
  ADDW s9, s6, s8
  ADDIW s8, s7, 1
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb4
bb6:
  ADDI s4, zero, 60
  DIVW s5, s6, s4
  ADDW s4, s2, s5
  LUI s5, 131068
  ADDI s5, s5, 1
  REMW s6, s4, s5
  ADDIW s4, s3, 1
  ADD s0, s4, zero
  ADD s1, s6, zero
  JAL zero, bb1
func:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LUI s2, 2
  ADDI s2, s2, 1808
  ADDW s3, s0, s2
  SUBW s0, s3, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
