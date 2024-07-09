.global main
.global func
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  LUI s0, 2
  ADDIW s0, s0, 1823
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
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb4
bb3:
  LUI s0, 2
  ADDIW s0, s0, 1838
  ADD a0, zero, s0
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s7, 60
  BNE s8, zero, bb5
  JAL zero, bb7
bb5:
  LUI s8, 2
  ADDIW s8, s8, 1808
  ADDW s9, s3, s8
  LUI s8, 2
  ADDIW s8, s8, 1808
  SUBW s10, s9, s8
  ADD s8, s10, zero
  JAL zero, bb6
bb6:
  ADD s9, s8, zero
  ADDW s8, s6, s9
  ADDIW s9, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  JAL zero, bb4
bb7:
  ADDI s4, zero, 60
  DIVW s5, s6, s4
  ADDW s4, s2, s5
  LUI s5, 131068
  ADDIW s5, s5, 1
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
  ADDIW s2, s2, 1808
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
