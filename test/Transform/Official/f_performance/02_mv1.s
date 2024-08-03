.global main
.section .bss
B:
.space 8040
C:
.space 8040
A:
.space 16160400

.section .data



x:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s6, 8(sp)
  SD s7, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s11, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  CALL getint
  ADD s11, a0, zero
  ADDI s0, zero, 0
  BLT s0, s11, bb43
  # implict jump to bb1
bb1:
  BLT s0, s11, bb40
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s9, a0, zero
  BLT s0, s11, bb37
  # implict jump to bb4
bb4:
  BLT s0, s11, bb25
  # implict jump to bb5
bb5:
  BLT s0, s11, bb22
  # implict jump to bb6
bb6:
  BLT s0, s11, bb10
  # implict jump to bb7
bb7:
  ADDIW s1, s9, 1
  SLTI a0, s1, 50
  BNE a0, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  ADD a0, s11, zero
  LA a1, C
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s6, 8(sp)
  LD s7, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:
  ADD a0, s1, zero
  JAL zero, bb3
bb10:
  ADDI a0, zero, 11
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s10, s1, zero
  ADD s3, a0, zero
  BLT s0, s11, bb15
  # implict jump to bb12
bb12:
  ADD a0, s3, zero
  ADD s1, s2, zero
  # implict jump to bb13
bb13:
  ADD s2, s1, zero
  ADDIW s1, s10, 1
  BLT s1, s11, bb14
  JAL zero, bb7
bb14:
  JAL zero, bb11
bb15:
  LUI a0, 2
  ADDIW a0, a0, -152
  MULW s1, s10, a0
  LA a0, A
  ADD s4, a0, s1
  ADD a0, s3, zero
  ADD s1, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s1, zero
  ADD s7, s2, zero
  ADD s8, a0, zero
  SLLIW s5, s6, 2
  ADD a0, s4, s5
  LW s3, 0(a0)
  SLTIU a0, s3, 1
  BNE a0, zero, bb21
  # implict jump to bb17
bb17:
  SLLIW s1, s10, 2
  LA a0, B
  ADD s2, a0, s1
  LW s1, 0(s2)
  LA a0, C
  ADD a0, a0, s5
  LW a0, 0(a0)
  MULW a0, s3, a0
  ADDW a0, s1, a0
  SW a0, 0(s2)
  ADD s1, s7, zero
  ADD a0, s8, zero
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  ADDIW s1, s6, 1
  BLT s1, s11, bb20
  # implict jump to bb19
bb19:
  ADD s1, s2, zero
  JAL zero, bb13
bb20:
  JAL zero, bb16
bb21:
  SLLIW s1, s10, 2
  LA a0, C
  ADD a0, a0, s1
  LW a0, 0(a0)
  MULW s1, s8, a0
  LA a0, C
  ADD a0, a0, s5
  LW a0, 0(a0)
  ADDW s2, s1, a0
  SUBW a0, s7, s2
  ADD s1, a0, zero
  ADD a0, s2, zero
  JAL zero, bb18
bb22:
  ADD a0, zero, zero
  # implict jump to bb23
bb23:
  ADD s1, a0, zero
  SLLIW s2, s1, 2
  LA a0, B
  ADD a0, a0, s2
  SW zero, 0(a0)
  ADDIW a0, s1, 1
  BLT a0, s11, bb24
  JAL zero, bb6
bb24:
  JAL zero, bb23
bb25:
  ADDI s3, zero, 11
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, a0, zero
  ADD s4, s1, zero
  ADD s1, s3, zero
  BLT s0, s11, bb30
  # implict jump to bb27
bb27:
  ADD a0, s1, zero
  ADD s1, s4, zero
  # implict jump to bb28
bb28:
  ADDIW s2, s2, 1
  BLT s2, s11, bb29
  JAL zero, bb5
bb29:
  ADD s3, a0, zero
  ADD a0, s2, zero
  JAL zero, bb26
bb30:
  LUI a0, 2
  ADDIW a0, a0, -152
  MULW s3, s2, a0
  LA a0, A
  ADD s8, a0, s3
  ADD a0, s1, zero
  ADD s3, s4, zero
  ADD s1, zero, zero
  # implict jump to bb31
bb31:
  ADD s4, s1, zero
  ADD s10, s3, zero
  ADD s7, a0, zero
  SLLIW s6, s4, 2
  ADD a0, s8, s6
  LW s1, 0(a0)
  SLTIU a0, s1, 1
  BNE a0, zero, bb36
  # implict jump to bb32
bb32:
  SLLIW s3, s2, 2
  LA a0, C
  ADD s3, a0, s3
  LW s5, 0(s3)
  LA a0, B
  ADD a0, a0, s6
  LW a0, 0(a0)
  MULW a0, s1, a0
  ADDW a0, s5, a0
  SW a0, 0(s3)
  ADD s1, s10, zero
  ADD a0, s7, zero
  # implict jump to bb33
bb33:
  ADD s3, s1, zero
  ADDIW s1, s4, 1
  BLT s1, s11, bb35
  # implict jump to bb34
bb34:
  ADD s1, s3, zero
  JAL zero, bb28
bb35:
  JAL zero, bb31
bb36:
  SLLIW s1, s2, 2
  LA a0, B
  ADD a0, a0, s1
  LW a0, 0(a0)
  MULW s1, s7, a0
  LA a0, B
  ADD a0, a0, s6
  LW a0, 0(a0)
  ADDW a0, s1, a0
  SUBW s1, s10, a0
  JAL zero, bb33
bb37:
  ADD a0, zero, zero
  # implict jump to bb38
bb38:
  ADD s1, a0, zero
  SLLIW s2, s1, 2
  LA a0, C
  ADD a0, a0, s2
  SW zero, 0(a0)
  ADDIW a0, s1, 1
  BLT a0, s11, bb39
  JAL zero, bb4
bb39:
  JAL zero, bb38
bb40:
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s1, B
  ADD s1, s1, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s1)
  ADDIW s1, s2, 1
  BLT s1, s11, bb42
  JAL zero, bb2
bb42:
  JAL zero, bb41
bb43:
  ADD s1, zero, zero
  # implict jump to bb44
bb44:
  ADD s3, s1, zero
  BLT s0, s11, bb47
  # implict jump to bb45
bb45:
  ADDIW s1, s3, 1
  BLT s1, s11, bb46
  JAL zero, bb1
bb46:
  JAL zero, bb44
bb47:
  LUI s1, 2
  ADDIW s1, s1, -152
  MULW s2, s3, s1
  LA s1, A
  ADD s2, s1, s2
  ADD s1, zero, zero
  # implict jump to bb48
bb48:
  ADD s5, s1, zero
  SLLIW s1, s5, 2
  ADD s1, s2, s1
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s1)
  ADDIW s1, s5, 1
  BLT s1, s11, bb49
  JAL zero, bb45
bb49:
  JAL zero, bb48
