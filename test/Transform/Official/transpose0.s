.global main
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:
  ADDI sp, sp, -160
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s7, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 16(sp)
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI s2, zero, 0
  LW t4, 20(sp)
  BLT s2, t4, bb24
  # implict jump to bb1
bb1:
  LW t4, 16(sp)
  BLT zero, t4, bb12
  # implict jump to bb2
bb2:
  LW t4, 16(sp)
  BLT zero, t4, bb8
  # implict jump to bb3
bb3:
  ADD s7, zero, zero
  # implict jump to bb4
bb4:
  BLT s7, zero, bb7
  # implict jump to bb5
bb5:
  ADD s2, s7, zero
  # implict jump to bb6
bb6:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s7, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb7:
  SUBW s7, zero, s7
  ADD s2, s7, zero
  JAL zero, bb6
bb8:
  ADD s6, zero, zero
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s5, zero
  ADD s10, s6, zero
  MULW s2, s10, s10
  SLLIW s0, s10, 2
  LA s9, matrix
  ADD s0, s9, s0
  LW s0, 0(s0)
  MULW s0, s2, s0
  ADDW s0, s1, s0
  ADDIW s1, s10, 1
  LW t4, 16(sp)
  BLT s1, t4, bb11
  # implict jump to bb10
bb10:
  ADD s7, s0, zero
  JAL zero, bb4
bb11:
  ADD s6, s1, zero
  ADD s5, s0, zero
  JAL zero, bb9
bb12:
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD t4, s4, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLLIW s6, t4, 2
  LA s7, a
  ADD s6, s7, s6
  LW t4, 0(s6)
  SW t4, 40(sp)
  LW t3, 20(sp)
  LW t4, 40(sp)
  DIVW t4, t3, t4
  SW t4, 36(sp)
  LW t4, 36(sp)
  BLT zero, t4, bb16
  # implict jump to bb14
bb14:
  LW t4, 44(sp)
  ADDIW s11, t4, 1
  LW t4, 16(sp)
  BLT s11, t4, bb15
  JAL zero, bb2
bb15:
  ADD s4, s11, zero
  JAL zero, bb13
bb16:
  ADD s8, zero, zero
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb17
bb17:
  LW t4, 0(sp)
  ADD s10, t4, zero
  ADD t4, s8, zero
  SW t4, 32(sp)
  ADD t4, s10, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb18
bb18:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 4(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb21
  # implict jump to bb19
bb19:
  LW t4, 32(sp)
  ADDIW s3, t4, 1
  LW t4, 36(sp)
  BLT s3, t4, bb20
  JAL zero, bb14
bb20:
  ADD s8, s3, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb17
bb21:
  LW t4, 32(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb23
  # implict jump to bb22
bb22:
  LW t4, 32(sp)
  LW t3, 40(sp)
  MULW s0, t4, t3
  LW t4, 4(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s1, matrix
  ADD s0, s1, s0
  LW s1, 0(s0)
  LW t4, 4(sp)
  LW t3, 36(sp)
  MULW s2, t4, t3
  LW t4, 32(sp)
  ADDW s2, s2, t4
  SLLIW s2, s2, 2
  LA s3, matrix
  ADD s2, s3, s2
  SW s1, 0(s2)
  SW s1, 0(s0)
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb18
bb23:
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb18
bb24:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb25
bb25:
  LW t4, 24(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LA s5, matrix
  ADD s4, s5, s4
  SW s3, 0(s4)
  ADDIW t4, s3, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb26
  JAL zero, bb1
bb26:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb25
