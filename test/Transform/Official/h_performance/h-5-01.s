.global main
.section .bss
x:
.space 5600
b:
.space 5600
y:
.space 5600
A:
.space 7840000

.section .data




n:
.word 0x00000578
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  LA a0, A
  CALL getarray
  LA a0, b
  CALL getarray
  LA a0, x
  CALL getarray
  LA a0, y
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LA a0, n
  LW a0, 0(a0)
  ADDI s8, zero, 0
  BLT s8, a0, bb22
  # implict jump to bb1
bb1:
  BLT s8, a0, bb13
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  SUBW s2, a0, s0
  SLT s0, s2, zero
  XORI s0, s0, 1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 70
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  LA a1, x
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  SLLIW s3, s2, 2
  LA s0, y
  ADD s0, s0, s3
  LW s0, 0(s0)
  ADDIW s1, s2, 1
  LUI s4, 1
  ADDIW s4, s4, 1504
  MULW s4, s2, s4
  BLT s1, a0, bb9
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  LA s1, x
  ADD s1, s1, s3
  LA s5, A
  ADD s4, s5, s4
  ADD s3, s4, s3
  LW s3, 0(s3)
  DIVW s0, s0, s3
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SUBW s2, s2, s0
  SLT s0, s2, zero
  XORI s0, s0, 1
  BNE s0, zero, bb8
  JAL zero, bb3
bb8:
  JAL zero, bb5
bb9:
  # implict jump to bb10
bb10:
  LA s5, A
  ADD s5, s5, s4
  SLLIW s6, s1, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  LA s7, x
  ADD s6, s7, s6
  LW s6, 0(s6)
  MULW s5, s5, s6
  SUBW s0, s0, s5
  ADDIW s1, s1, 1
  BLT s1, a0, bb12
  # implict jump to bb11
bb11:
  JAL zero, bb7
bb12:
  JAL zero, bb10
bb13:
  ADD s2, zero, zero
  # implict jump to bb14
bb14:
  SLLIW s3, s2, 2
  LA s0, b
  ADD s0, s0, s3
  LW s0, 0(s0)
  BLT zero, s2, bb18
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  LA s1, y
  ADD s1, s1, s3
  SW s0, 0(s1)
  ADDIW s2, s2, 1
  BLT s2, a0, bb17
  JAL zero, bb2
bb17:
  JAL zero, bb14
bb18:
  LUI s1, 1
  ADDIW s1, s1, 1504
  MULW s1, s2, s1
  LA s4, A
  ADD s4, s4, s1
  ADD s1, zero, zero
  # implict jump to bb19
bb19:
  SLLIW s5, s1, 2
  ADD s6, s4, s5
  LW s6, 0(s6)
  LA s7, y
  ADD s5, s7, s5
  LW s5, 0(s5)
  MULW s5, s6, s5
  SUBW s0, s0, s5
  ADDIW s1, s1, 1
  BLT s1, s2, bb21
  # implict jump to bb20
bb20:
  JAL zero, bb16
bb21:
  JAL zero, bb19
bb22:
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD s6, zero, zero
  # implict jump to bb23
bb23:
  LUI s1, 1
  ADDIW s1, s1, 1504
  MULW s1, s0, s1
  BLT zero, s0, bb39
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  BLT s0, a0, bb29
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDIW s0, s0, 1
  BLT s0, a0, bb28
  JAL zero, bb1
bb28:
  JAL zero, bb23
bb29:
  LA s2, A
  ADD s1, s2, s1
  ADD s2, s0, zero
  # implict jump to bb30
bb30:
  SLLIW s3, s2, 2
  ADD s4, s1, s3
  LW s6, 0(s4)
  BLT zero, s0, bb35
  # implict jump to bb31
bb31:
  ADD s5, zero, zero
  # implict jump to bb32
bb32:
  SW s6, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, a0, bb34
  # implict jump to bb33
bb33:
  ADD s3, s5, zero
  JAL zero, bb27
bb34:
  JAL zero, bb30
bb35:
  ADD s5, zero, zero
  # implict jump to bb36
bb36:
  ADD s10, s6, zero
  SLLIW s6, s5, 2
  ADD s6, s1, s6
  LW s6, 0(s6)
  LUI s7, 1
  ADDIW s7, s7, 1504
  MULW s7, s5, s7
  LA s9, A
  ADD s7, s9, s7
  ADD s7, s7, s3
  LW s7, 0(s7)
  MULW s6, s6, s7
  SUBW s6, s10, s6
  ADDIW s5, s5, 1
  BLT s5, s0, bb38
  # implict jump to bb37
bb37:
  JAL zero, bb32
bb38:
  JAL zero, bb36
bb39:
  ADD s2, zero, zero
  # implict jump to bb40
bb40:
  LA s3, A
  ADD s3, s3, s1
  SLLIW s4, s2, 2
  ADD s5, s3, s4
  LW s7, 0(s5)
  BLT zero, s2, bb45
  # implict jump to bb41
bb41:
  ADD s3, zero, zero
  # implict jump to bb42
bb42:
  LUI s6, 1
  ADDIW s6, s6, 1504
  MULW s6, s2, s6
  LA s9, A
  ADD s6, s9, s6
  ADD s4, s6, s4
  LW s4, 0(s4)
  DIVW s4, s7, s4
  SW s4, 0(s5)
  ADDIW s2, s2, 1
  BLT s2, s0, bb44
  # implict jump to bb43
bb43:
  ADD s6, s7, zero
  JAL zero, bb25
bb44:
  JAL zero, bb40
bb45:
  ADD s6, zero, zero
  # implict jump to bb46
bb46:
  SLLIW s9, s6, 2
  ADD s9, s3, s9
  LW s11, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, 1504
  MULW s9, s6, s9
  LA s10, A
  ADD s9, s10, s9
  ADD s9, s9, s4
  LW s9, 0(s9)
  MULW s9, s11, s9
  SUBW s7, s7, s9
  ADDIW s6, s6, 1
  BLT s6, s2, bb48
  # implict jump to bb47
bb47:
  ADD s3, s6, zero
  JAL zero, bb42
bb48:
  JAL zero, bb46
