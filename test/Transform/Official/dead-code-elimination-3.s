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
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s4, a0, zero
  LA s5, loopCount
  SW s4, 0(s5)
  LUI s4, 24
  ADDIW s4, s4, 1712
  ADD a0, zero, s4
  CALL _sysy_starttime
  LA s4, loopCount
  LW s4, 0(s4)
  ADDI s5, zero, 0
  BLT s5, s4, bb3
  # implict jump to bb1
bb1:
  ADD s4, zero, zero
  # implict jump to bb2
bb2:
  LUI s7, 24
  ADDIW s7, s7, 1728
  ADD a0, zero, s7
  CALL _sysy_stoptime
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s6, zero
  SW t4, 0(sp)
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADDI s9, zero, 0
  SLTI s9, s9, 60
  BNE s9, zero, bb11
  # implict jump to bb6
bb6:
  ADD s9, zero, zero
  # implict jump to bb7
bb7:
  ADDI s7, zero, 60
  DIVW s7, s9, s7
  LW t4, 4(sp)
  ADDW s7, t4, s7
  LUI s8, 32766
  ADDIW s8, s8, 1
  REMW s1, s7, s8
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  # implict jump to bb8
bb8:
  LA s7, loopCount
  LW s7, 0(s7)
  BLT s0, s7, bb10
  # implict jump to bb9
bb9:
  ADD s4, s1, zero
  JAL zero, bb2
bb10:
  ADD s5, s1, zero
  ADD s6, s0, zero
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  ADD s10, zero, zero
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb13
bb13:
  LW t4, 8(sp)
  ADD s7, t4, zero
  ADD s8, s10, zero
  LA s11, global
  LW t4, 0(sp)
  SW t4, 0(s11)
  LW t4, 0(sp)
  ADDW s2, s8, t4
  ADDIW s3, s7, 1
  # implict jump to bb14
bb14:
  SLTI s7, s3, 60
  BNE s7, zero, bb16
  # implict jump to bb15
bb15:
  ADD s9, s2, zero
  JAL zero, bb7
bb16:
  ADD s10, s2, zero
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb13
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
