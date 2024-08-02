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
  ADD s0, a0, zero
  ADDI s9, zero, 0
  BLT s9, s0, bb43
  # implict jump to bb1
bb1:
  BLT s9, s0, bb40
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  BLT s9, s0, bb37
  # implict jump to bb4
bb4:
  BLT s9, s0, bb25
  # implict jump to bb5
bb5:
  BLT s9, s0, bb22
  # implict jump to bb6
bb6:
  BLT s9, s0, bb10
  # implict jump to bb7
bb7:
  ADDIW a0, a0, 1
  SLTI s1, a0, 50
  BNE s1, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  ADD a0, s0, zero
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
  JAL zero, bb3
bb10:
  ADDI s2, zero, 11
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  ADD s3, s2, zero
  BLT s9, s0, bb15
  # implict jump to bb12
bb12:
  ADD s2, s3, zero
  ADD s3, s4, zero
  # implict jump to bb13
bb13:
  ADDIW s1, s1, 1
  BLT s1, s0, bb14
  JAL zero, bb7
bb14:
  JAL zero, bb11
bb15:
  LUI s2, 2
  ADDIW s2, s2, -152
  MULW s2, s1, s2
  LA s5, A
  ADD s2, s5, s2
  ADD s5, s3, zero
  ADD s3, s4, zero
  ADD s4, zero, zero
  # implict jump to bb16
bb16:
  ADD s11, s5, zero
  SLLIW s5, s4, 2
  ADD s6, s2, s5
  LW s6, 0(s6)
  SLTIU s7, s6, 1
  BNE s7, zero, bb21
  # implict jump to bb17
bb17:
  SLLIW s7, s1, 2
  LA s8, B
  ADD s7, s8, s7
  LW s8, 0(s7)
  LA s10, C
  ADD s5, s10, s5
  LW s5, 0(s5)
  MULW s5, s6, s5
  ADDW s5, s8, s5
  SW s5, 0(s7)
  ADD s5, s11, zero
  # implict jump to bb18
bb18:
  ADDIW s4, s4, 1
  BLT s4, s0, bb20
  # implict jump to bb19
bb19:
  ADD s2, s5, zero
  JAL zero, bb13
bb20:
  JAL zero, bb16
bb21:
  SLLIW s6, s1, 2
  LA s7, C
  ADD s6, s7, s6
  LW s6, 0(s6)
  MULW s6, s11, s6
  LA s7, C
  ADD s5, s7, s5
  LW s5, 0(s5)
  ADDW s5, s6, s5
  SUBW s3, s3, s5
  JAL zero, bb18
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  SLLIW s2, s1, 2
  LA s3, B
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, s0, bb24
  JAL zero, bb6
bb24:
  JAL zero, bb23
bb25:
  ADDI s2, zero, 11
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  ADD s4, s3, zero
  ADD s3, s2, zero
  BLT s9, s0, bb30
  # implict jump to bb27
bb27:
  ADD s2, s3, zero
  ADD s3, s4, zero
  # implict jump to bb28
bb28:
  ADDIW s1, s1, 1
  BLT s1, s0, bb29
  JAL zero, bb5
bb29:
  JAL zero, bb26
bb30:
  LUI s2, 2
  ADDIW s2, s2, -152
  MULW s2, s1, s2
  LA s5, A
  ADD s2, s5, s2
  ADD s6, s3, zero
  ADD s3, s4, zero
  ADD s4, zero, zero
  # implict jump to bb31
bb31:
  ADD s11, s4, zero
  ADD s4, s3, zero
  ADD s3, s6, zero
  SLLIW s5, s11, 2
  ADD s6, s2, s5
  LW s6, 0(s6)
  SLTIU s7, s6, 1
  BNE s7, zero, bb36
  # implict jump to bb32
bb32:
  SLLIW s7, s1, 2
  LA s8, C
  ADD s7, s8, s7
  LW s8, 0(s7)
  LA s10, B
  ADD s5, s10, s5
  LW s5, 0(s5)
  MULW s5, s6, s5
  ADDW s5, s8, s5
  SW s5, 0(s7)
  ADD s5, s4, zero
  # implict jump to bb33
bb33:
  ADD s4, s3, zero
  ADD s3, s5, zero
  ADDIW s5, s11, 1
  BLT s5, s0, bb35
  # implict jump to bb34
bb34:
  ADD s2, s4, zero
  JAL zero, bb28
bb35:
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb31
bb36:
  SLLIW s6, s1, 2
  LA s7, B
  ADD s6, s7, s6
  LW s6, 0(s6)
  MULW s3, s3, s6
  LA s6, B
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDW s3, s3, s5
  SUBW s4, s4, s3
  ADD s5, s4, zero
  JAL zero, bb33
bb37:
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  SLLIW s2, s1, 2
  LA s3, C
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, s0, bb39
  JAL zero, bb4
bb39:
  JAL zero, bb38
bb40:
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  SLLIW s2, s1, 2
  LA s3, B
  ADD s2, s3, s2
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, s0, bb42
  JAL zero, bb2
bb42:
  JAL zero, bb41
bb43:
  ADD s1, zero, zero
  # implict jump to bb44
bb44:
  BLT s9, s0, bb47
  # implict jump to bb45
bb45:
  ADDIW s1, s1, 1
  BLT s1, s0, bb46
  JAL zero, bb1
bb46:
  JAL zero, bb44
bb47:
  LUI s2, 2
  ADDIW s2, s2, -152
  MULW s2, s1, s2
  LA s3, A
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb48
bb48:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb49
  JAL zero, bb45
bb49:
  JAL zero, bb48
