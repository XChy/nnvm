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
  LUI s4, 2
  ADDIW s4, s4, 1838
  ADD a0, zero, s4
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
  LUI s9, 131068
  ADDIW s9, s9, 1
  REMW s10, s8, s9
  ADDIW s8, s3, 1
  ADD s0, s8, zero
  ADD s1, s10, zero
  JAL zero, bb1
bb6:
  ADDW s0, s6, s3
  ADDIW s1, s7, 1
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb4
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
