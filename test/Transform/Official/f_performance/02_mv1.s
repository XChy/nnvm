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
  ADDI sp, sp, -272
  SD ra, 144(sp)
  SD s3, 152(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s4, 192(sp)
  SD s5, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 100(sp)
  ADDI t4, zero, 0
  SW t4, 88(sp)
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb43
  # implict jump to bb1
bb1:
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb40
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD s10, zero, zero
  # implict jump to bb3
bb3:
  ADD t4, s10, zero
  SW t4, 128(sp)
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb37
  # implict jump to bb4
bb4:
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb25
  # implict jump to bb5
bb5:
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb22
  # implict jump to bb6
bb6:
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb10
  # implict jump to bb7
bb7:
  LW t4, 128(sp)
  ADDIW s5, t4, 1
  SLTI s6, s5, 50
  BNE s6, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 100(sp)
  ADD a0, t4, zero
  LA s6, C
  ADD a1, s6, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 144(sp)
  LD s3, 152(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s4, 192(sp)
  LD s5, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb9:
  ADD s10, s5, zero
  JAL zero, bb3
bb10:
  ADDI s7, zero, 11
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb11
bb11:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 120(sp)
  ADD s4, t4, zero
  ADD s1, s7, zero
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb15
  # implict jump to bb12
bb12:
  ADD s9, s1, zero
  ADD s3, s4, zero
  # implict jump to bb13
bb13:
  LW t4, 92(sp)
  ADDIW s4, t4, 1
  LW t4, 100(sp)
  BLT s4, t4, bb14
  JAL zero, bb7
bb14:
  ADD s7, s9, zero
  ADD t4, s3, zero
  SW t4, 120(sp)
  ADD t4, s4, zero
  SW t4, 72(sp)
  JAL zero, bb11
bb15:
  LUI s8, 2
  ADDIW s8, s8, -152
  LW t4, 92(sp)
  MULW s8, t4, s8
  LA s5, A
  ADD t4, s5, s8
  SD t4, 136(sp)
  ADD t4, s1, zero
  SW t4, 76(sp)
  ADD t4, s4, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb16
bb16:
  LW t4, 84(sp)
  ADD s6, t4, zero
  LW t4, 80(sp)
  ADD s5, t4, zero
  LW t4, 76(sp)
  ADD s2, t4, zero
  SLLIW s8, s6, 2
  LD t4, 136(sp)
  ADD s4, t4, s8
  LW s4, 0(s4)
  SLTIU s1, s4, 1
  BNE s1, zero, bb21
  # implict jump to bb17
bb17:
  LW t4, 92(sp)
  SLLIW s1, t4, 2
  LA s0, B
  ADD s0, s0, s1
  LW s1, 0(s0)
  LA s11, C
  ADD s11, s11, s8
  LW s11, 0(s11)
  MULW s4, s4, s11
  ADDW s1, s1, s4
  SW s1, 0(s0)
  ADD s0, s5, zero
  ADD s1, s2, zero
  # implict jump to bb18
bb18:
  ADDIW s2, s6, 1
  LW t4, 100(sp)
  BLT s2, t4, bb20
  # implict jump to bb19
bb19:
  ADD s9, s1, zero
  ADD s3, s0, zero
  JAL zero, bb13
bb20:
  ADD t4, s1, zero
  SW t4, 76(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  JAL zero, bb16
bb21:
  LW t4, 92(sp)
  SLLIW s4, t4, 2
  LA s11, C
  ADD s4, s11, s4
  LW s4, 0(s4)
  MULW s2, s2, s4
  LA s4, C
  ADD s4, s4, s8
  LW s4, 0(s4)
  ADDW s2, s2, s4
  SUBW s4, s5, s2
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb18
bb22:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb23
bb23:
  LW t4, 60(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s11, B
  ADD s7, s11, s7
  SW zero, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb24
  JAL zero, bb6
bb24:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb23
bb25:
  ADDI t4, zero, 11
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb26
bb26:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 28(sp)
  ADD s2, t4, zero
  LW t4, 52(sp)
  ADD s7, t4, zero
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb30
  # implict jump to bb27
bb27:
  ADD s8, s7, zero
  ADD s9, s2, zero
  # implict jump to bb28
bb28:
  ADD t4, s9, zero
  SW t4, 48(sp)
  ADD t4, s8, zero
  SW t4, 56(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb29
  JAL zero, bb5
bb29:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb26
bb30:
  LUI s11, 2
  ADDIW s11, s11, -152
  LW t4, 8(sp)
  MULW s11, t4, s11
  LA s1, A
  ADD t4, s1, s11
  SD t4, 160(sp)
  ADD t4, s7, zero
  SW t4, 20(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb31
bb31:
  LW t4, 12(sp)
  ADD s0, t4, zero
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 20(sp)
  ADD s6, t4, zero
  SLLIW s11, s0, 2
  LD t4, 160(sp)
  ADD s2, t4, s11
  LW s2, 0(s2)
  SLTIU s7, s2, 1
  BNE s7, zero, bb36
  # implict jump to bb32
bb32:
  LW t4, 8(sp)
  SLLIW s7, t4, 2
  LA s5, C
  ADD s5, s5, s7
  LW s7, 0(s5)
  LA s4, B
  ADD s4, s4, s11
  LW s4, 0(s4)
  MULW s2, s2, s4
  ADDW s2, s7, s2
  SW s2, 0(s5)
  ADD s2, s1, zero
  ADD s4, s6, zero
  # implict jump to bb33
bb33:
  ADD t4, s4, zero
  SW t4, 40(sp)
  ADD t4, s2, zero
  SW t4, 0(sp)
  ADDIW t4, s0, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb35
  # implict jump to bb34
bb34:
  LW t4, 40(sp)
  ADD s8, t4, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  JAL zero, bb28
bb35:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb31
bb36:
  LW t4, 8(sp)
  SLLIW s5, t4, 2
  LA s7, B
  ADD s5, s7, s5
  LW s5, 0(s5)
  MULW s5, s6, s5
  LA s6, B
  ADD s6, s6, s11
  LW s6, 0(s6)
  ADDW s5, s5, s6
  SUBW s1, s1, s5
  ADD s2, s1, zero
  ADD s4, s5, zero
  JAL zero, bb33
bb37:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb38
bb38:
  LW t4, 36(sp)
  ADD s4, t4, zero
  SLLIW s3, s4, 2
  LA s0, C
  ADD s0, s0, s3
  SW zero, 0(s0)
  ADDIW t4, s4, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb39
  JAL zero, bb4
bb39:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb38
bb40:
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb41
bb41:
  LW t4, 116(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LA s11, B
  ADD s10, s11, s10
  CALL getint
  ADD s11, a0, zero
  SW s11, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 124(sp)
  LW t4, 124(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb42
  JAL zero, bb2
bb42:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb41
bb43:
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb44
bb44:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 88(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb47
  # implict jump to bb45
bb45:
  LW t3, 96(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  LW t4, 112(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb46
  JAL zero, bb1
bb46:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb44
bb47:
  LUI s4, 2
  ADDIW s4, s4, -152
  LW t4, 96(sp)
  MULW s4, t4, s4
  LA s5, A
  ADD t4, s5, s4
  SD t4, 256(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb48
bb48:
  LW t4, 68(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LD t4, 256(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 104(sp)
  LW t4, 104(sp)
  LW t3, 100(sp)
  BLT t4, t3, bb49
  JAL zero, bb45
bb49:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb48
