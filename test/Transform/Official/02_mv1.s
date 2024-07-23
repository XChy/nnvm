.global main
.global mv
.section .bss
B:
.space 8040
C:
.space 8040
A:
.space 16160400


.section .data



N:
.word 0x000007da
x:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -192
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb1
bb1:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb33
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb3
bb3:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb32
  # implict jump to bb4
bb4:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s5, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTI s7, t4, 50
  BNE s7, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 36(sp)
  ADD a0, t4, zero
  LA s7, C
  ADD a1, s7, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb7:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb8
bb8:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb31
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADDI t4, zero, 11
  SW t4, 8(sp)
  # implict jump to bb10
bb10:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb24
  # implict jump to bb11
bb11:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb12
bb12:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 36(sp)
  BLT t4, t3, bb23
  # implict jump to bb13
bb13:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADDI s8, zero, 11
  # implict jump to bb14
bb14:
  ADD s1, s8, zero
  ADD s11, s7, zero
  ADD s10, s6, zero
  LW t4, 36(sp)
  BLT s10, t4, bb16
  # implict jump to bb15
bb15:
  LW t4, 24(sp)
  ADDIW s9, t4, 1
  ADD s5, s9, zero
  JAL zero, bb5
bb16:
  LUI s5, 2
  ADDIW s5, s5, -152
  MULW s5, s10, s5
  LA s9, A
  ADD s5, s9, s5
  SLLIW s9, s10, 2
  LA s2, C
  ADD t4, s2, s9
  SD t4, 120(sp)
  SLLIW s9, s10, 2
  LA s0, B
  ADD t4, s0, s9
  SD t4, 128(sp)
  ADD s9, zero, zero
  # implict jump to bb17
bb17:
  ADD s3, s1, zero
  ADD s4, s11, zero
  ADD s0, s9, zero
  LW t4, 36(sp)
  BLT s0, t4, bb19
  # implict jump to bb18
bb18:
  ADDIW s2, s10, 1
  ADD s6, s2, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  JAL zero, bb14
bb19:
  SLLIW s2, s0, 2
  ADD s6, s5, s2
  LW s6, 0(s6)
  SLTIU s7, s6, 1
  BNE s7, zero, bb22
  # implict jump to bb20
bb20:
  LD t4, 128(sp)
  LW s7, 0(t4)
  LA s8, C
  ADD s8, s8, s2
  LW s8, 0(s8)
  MULW s6, s6, s8
  ADDW s6, s7, s6
  LD t4, 128(sp)
  SW s6, 0(t4)
  ADD s6, s4, zero
  ADD s7, s3, zero
  # implict jump to bb21
bb21:
  ADDIW s0, s0, 1
  ADD s9, s0, zero
  ADD s11, s6, zero
  ADD s1, s7, zero
  JAL zero, bb17
bb22:
  LD t4, 120(sp)
  LW s8, 0(t4)
  MULW s3, s3, s8
  LA s8, C
  ADD s2, s8, s2
  LW s2, 0(s2)
  ADDW s2, s3, s2
  SUBW s3, s4, s2
  ADD s6, s3, zero
  ADD s7, s2, zero
  JAL zero, bb21
bb23:
  LW t4, 60(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb12
bb24:
  LUI s0, 2
  ADDIW s0, s0, -152
  LW t4, 12(sp)
  MULW s0, t4, s0
  LA s1, A
  ADD s0, s1, s0
  LW t4, 12(sp)
  SLLIW s1, t4, 2
  LA s2, B
  ADD s1, s2, s1
  LW t4, 12(sp)
  SLLIW s2, t4, 2
  LA s3, C
  ADD t4, s3, s2
  SD t4, 64(sp)
  ADD s3, zero, zero
  LW t4, 52(sp)
  ADD s4, t4, zero
  LW t4, 48(sp)
  ADD s5, t4, zero
  # implict jump to bb25
bb25:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  LW t4, 36(sp)
  BLT s8, t4, bb27
  # implict jump to bb26
bb26:
  LW t4, 12(sp)
  ADDIW s9, t4, 1
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s7, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb10
bb27:
  SLLIW s9, s8, 2
  ADD s10, s0, s9
  LW s10, 0(s10)
  SLTIU s11, s10, 1
  BNE s11, zero, bb30
  # implict jump to bb28
bb28:
  LD t4, 64(sp)
  LW s11, 0(t4)
  LA s2, B
  ADD s2, s2, s9
  LW s2, 0(s2)
  MULW s2, s10, s2
  ADDW s2, s11, s2
  LD t4, 64(sp)
  SW s2, 0(t4)
  ADD s2, s7, zero
  ADD s10, s6, zero
  # implict jump to bb29
bb29:
  ADDIW s6, s8, 1
  ADD s3, s6, zero
  ADD s4, s2, zero
  ADD s5, s10, zero
  JAL zero, bb25
bb30:
  LW s11, 0(s1)
  MULW s6, s6, s11
  LA s11, B
  ADD s9, s11, s9
  LW s9, 0(s9)
  ADDW s6, s6, s9
  SUBW s7, s7, s6
  ADD s2, s7, zero
  ADD s10, s6, zero
  JAL zero, bb29
bb31:
  LW t4, 16(sp)
  SLLIW s0, t4, 2
  LA s1, C
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb8
bb32:
  LW t4, 28(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s0, s1, s0
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb3
bb33:
  LUI s0, 2
  ADDIW s0, s0, -152
  LW t4, 40(sp)
  MULW s0, t4, s0
  LA s1, A
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  ADD s2, s1, zero
  LW t4, 36(sp)
  BLT s2, t4, bb36
  # implict jump to bb35
bb35:
  LW t4, 40(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 0(sp)
  JAL zero, bb1
bb36:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb34
mv:
  ADDI sp, sp, -112
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  # implict jump to bb38
bb38:
  ADD s1, s0, zero
  BLT s1, a0, bb49
  # implict jump to bb39
bb39:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADDI s4, zero, 11
  # implict jump to bb40
bb40:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  BLT s7, a0, bb42
  # implict jump to bb41
bb41:
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb42:
  LUI s8, 2
  ADDIW s8, s8, -152
  MULW s8, s7, s8
  ADD s8, a1, s8
  SLLIW s9, s7, 2
  ADD s9, a2, s9
  SLLIW s10, s7, 2
  ADD s10, a3, s10
  ADD s11, zero, zero
  # implict jump to bb43
bb43:
  ADD t0, s5, zero
  ADD t1, s6, zero
  ADD t2, s11, zero
  BLT t2, a0, bb45
  # implict jump to bb44
bb44:
  ADDIW a4, s7, 1
  ADD s2, a4, zero
  ADD s3, t1, zero
  ADD s4, t0, zero
  JAL zero, bb40
bb45:
  SLLIW s2, t2, 2
  ADD s3, s8, s2
  LW s4, 0(s3)
  SLTIU s4, s4, 1
  BNE s4, zero, bb48
  # implict jump to bb46
bb46:
  LW s4, 0(s10)
  LW s3, 0(s3)
  ADD a4, a2, s2
  LW a4, 0(a4)
  MULW s3, s3, a4
  ADDW s3, s4, s3
  SW s3, 0(s10)
  ADD s3, t1, zero
  ADD s4, t0, zero
  # implict jump to bb47
bb47:
  ADDIW s2, t2, 1
  ADD s11, s2, zero
  ADD s6, s3, zero
  ADD s5, s4, zero
  JAL zero, bb43
bb48:
  LW a4, 0(s9)
  MULW t0, t0, a4
  ADD s2, a2, s2
  LW s2, 0(s2)
  ADDW s2, t0, s2
  SUBW t0, t1, s2
  ADD s3, t0, zero
  ADD s4, s2, zero
  JAL zero, bb47
bb49:
  SLLIW s2, s1, 2
  ADD s2, a3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb38
