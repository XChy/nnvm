.global main
.global transpose
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s5, 96(sp)
  SD s4, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  SD s3, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  LA s7, a
  ADD a0, s7, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 48(sp)
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI s8, zero, 0
  LW t4, 44(sp)
  BLT s8, t4, bb27
  # implict jump to bb1
bb1:
  ADDI s9, zero, 0
  LW t4, 48(sp)
  BLT s9, t4, bb13
  # implict jump to bb2
bb2:
  ADDI s10, zero, 0
  LW t4, 48(sp)
  BLT s10, t4, bb8
  # implict jump to bb3
bb3:
  ADD s10, zero, zero
  # implict jump to bb4
bb4:
  BLT s10, zero, bb7
  # implict jump to bb5
bb5:
  ADD s0, s10, zero
  # implict jump to bb6
bb6:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s5, 96(sp)
  LD s4, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  LD s3, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb7:
  SUBW s1, zero, s10
  ADD s0, s1, zero
  JAL zero, bb6
bb8:
  ADD s11, zero, zero
  ADD s2, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, s2, zero
  ADD s7, s11, zero
  MULW s8, s7, s7
  SLLIW s6, s7, 2
  LA s0, matrix
  ADD s0, s0, s6
  LW s0, 0(s0)
  MULW s0, s8, s0
  ADDW s5, s1, s0
  ADDIW s3, s7, 1
  # implict jump to bb10
bb10:
  LW t4, 48(sp)
  BLT s3, t4, bb12
  # implict jump to bb11
bb11:
  ADD s10, s5, zero
  JAL zero, bb4
bb12:
  ADD s11, s3, zero
  ADD s2, s5, zero
  JAL zero, bb9
bb13:
  ADD s9, zero, zero
  # implict jump to bb14
bb14:
  ADD t4, s9, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s11, t4, 2
  LA s7, a
  ADD s7, s7, s11
  LW t4, 0(s7)
  SW t4, 28(sp)
  LW t3, 44(sp)
  LW t4, 28(sp)
  DIVW t4, t3, t4
  SW t4, 32(sp)
  ADDI s6, zero, 0
  LW t4, 32(sp)
  BLT s6, t4, bb18
  # implict jump to bb15
bb15:
  LW t4, 24(sp)
  ADDIW s4, t4, 1
  # implict jump to bb16
bb16:
  LW t4, 48(sp)
  BLT s4, t4, bb17
  JAL zero, bb2
bb17:
  ADD s9, s4, zero
  JAL zero, bb14
bb18:
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb19
bb19:
  LW t4, 4(sp)
  ADD s2, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb20
bb20:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb24
  # implict jump to bb21
bb21:
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb22
bb22:
  LW t4, 56(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb23
  JAL zero, bb15
bb23:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb19
bb24:
  LW t4, 36(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb26
  # implict jump to bb25
bb25:
  LW t4, 36(sp)
  LW t3, 28(sp)
  MULW s0, t4, t3
  LW t4, 8(sp)
  ADDW s0, s0, t4
  SLLIW s0, s0, 2
  LA s1, matrix
  ADD s0, s1, s0
  LW s1, 0(s0)
  LW t4, 8(sp)
  LW t3, 32(sp)
  MULW s2, t4, t3
  LW t4, 36(sp)
  ADDW s2, s2, t4
  SLLIW s2, s2, 2
  LA s3, matrix
  ADD s2, s3, s2
  SW s1, 0(s2)
  SW s1, 0(s0)
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb20
bb26:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb20
bb27:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb28
bb28:
  LW t4, 40(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LA s11, matrix
  ADD s10, s11, s10
  SW s9, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 0(sp)
  # implict jump to bb29
bb29:
  LW t4, 0(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb30
  JAL zero, bb1
bb30:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb28
transpose:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  ADD s2, a0, zero
  DIVW s2, s2, a2
  BLT zero, s2, bb33
  # implict jump to bb32
bb32:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb33:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb34
bb34:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, zero, zero
  # implict jump to bb35
bb35:
  ADD s8, s7, zero
  ADD s1, s5, zero
  BLT s8, a2, bb39
  # implict jump to bb36
bb36:
  ADDIW s0, s6, 1
  # implict jump to bb37
bb37:
  BLT s0, s2, bb38
  JAL zero, bb32
bb38:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb34
bb39:
  BLT s6, s8, bb41
  # implict jump to bb40
bb40:
  MULW s0, s6, a2
  ADDW s0, s0, s8
  SLLIW s0, s0, 2
  ADD s0, a1, s0
  LW s3, 0(s0)
  MULW s4, s8, s2
  ADDW s4, s4, s6
  SLLIW s4, s4, 2
  ADD s4, a1, s4
  SW s3, 0(s4)
  SW s3, 0(s0)
  ADDIW s0, s8, 1
  ADD s5, s3, zero
  ADD s7, s0, zero
  JAL zero, bb35
bb41:
  ADDIW s0, s8, 1
  ADD s5, s1, zero
  ADD s7, s0, zero
  JAL zero, bb35
