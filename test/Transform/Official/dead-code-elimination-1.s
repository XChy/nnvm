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
  SD s4, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s5, a0, zero
  LA s6, loopCount
  SW s5, 0(s6)
  LUI s5, 24
  ADDIW s5, s5, 1712
  ADD a0, zero, s5
  CALL _sysy_starttime
  LA s5, loopCount
  LW s5, 0(s5)
  ADDI s6, zero, 0
  BLT s6, s5, bb3
  # implict jump to bb1
bb1:
  ADD s5, zero, zero
  # implict jump to bb2
bb2:
  LUI s0, 24
  ADDIW s0, s0, 1728
  ADD a0, zero, s0
  CALL _sysy_stoptime
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADDI s6, zero, 0
  SLTI t4, s6, 60
  SB t4, 0(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s7, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb11
  # implict jump to bb6
bb6:
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  ADDI s0, zero, 60
  DIVW s0, s10, s0
  LW t4, 8(sp)
  ADDW s0, t4, s0
  LUI s9, 32766
  ADDIW s9, s9, 1
  REMW s2, s0, s9
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  # implict jump to bb8
bb8:
  LA s0, loopCount
  LW s0, 0(s0)
  BLT s1, s0, bb10
  # implict jump to bb9
bb9:
  ADD s5, s2, zero
  JAL zero, bb2
bb10:
  ADD s6, s2, zero
  ADD s7, s1, zero
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  LA s11, global
  LW t4, 4(sp)
  SW t4, 0(s11)
  ADD s11, zero, zero
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  ADD s9, s8, zero
  ADD s0, s11, zero
  LW t4, 4(sp)
  ADDW s3, s0, t4
  ADDIW s4, s9, 1
  # implict jump to bb14
bb14:
  SLTI s0, s4, 60
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  ADD s10, s3, zero
  JAL zero, bb7
bb16:
  ADD s11, s3, zero
  ADD s8, s4, zero
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
