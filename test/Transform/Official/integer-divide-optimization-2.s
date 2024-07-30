.global main
.section .bss



.section .data
size:
.word 0x000003e8
multi:
.word 0x00000002
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, loopCount
  SW s0, 0(s1)
  ADDI a0, zero, 1016
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
  ADDI a0, zero, 1031
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, multi
  LW s5, 0(s5)
  MULW s5, s3, s5
  ADDI s6, zero, 2
  DIVW s5, s5, s6
  ADDI s6, zero, 1000
  MULW s5, s5, s6
  LA s6, size
  LW s6, 0(s6)
  DIVW t4, s5, s6
  SW t4, 0(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  ADD s9, s6, zero
  LW t4, 0(sp)
  ADDW s9, s9, t4
  ADDIW s8, s8, 1
  SLTI s10, s8, 300
  BNE s10, zero, bb10
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI s10, zero, 300
  DIVW s10, s9, s10
  ADDW s10, s4, s10
  LUI s11, 524264
  ADDIW s11, s11, 3
  REMW s10, s10, s11
  ADDIW s11, s3, 1
  LA s5, loopCount
  LW s5, 0(s5)
  BLT s11, s5, bb9
  # implict jump to bb8
bb8:
  ADD s0, s10, zero
  JAL zero, bb2
bb9:
  ADD s1, s10, zero
  ADD s2, s11, zero
  JAL zero, bb4
bb10:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb5
