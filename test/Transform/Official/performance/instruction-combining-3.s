.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  LUI s0, 2
  ADDIW s0, s0, 1823
  ADD a0, zero, s0
  CALL _sysy_starttime
  LA s0, loopCount
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb3
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  LUI s11, 2
  ADDIW s11, s11, 1838
  ADD a0, zero, s11
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDW s8, s8, s3
  ADDIW s7, s7, 1
  SLTI s9, s7, 60
  BNE s9, zero, bb10
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI s9, zero, 60
  DIVW s9, s8, s9
  ADDW s9, s4, s9
  LUI s10, 131068
  ADDIW s10, s10, 1
  REMW s9, s9, s10
  ADDIW s10, s3, 1
  LA s11, loopCount
  LW s11, 0(s11)
  BLT s10, s11, bb9
  # implict jump to bb8
bb8:
  ADD s0, s9, zero
  JAL zero, bb2
bb9:
  ADD s1, s9, zero
  ADD s2, s10, zero
  JAL zero, bb4
bb10:
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb5
