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
  ADDI sp, sp, -176
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb1
bb1:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  LW t3, 52(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb33
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb3
bb3:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 52(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb32
  # implict jump to bb4
bb4:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s5, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s7, t4, 50
  BNE s7, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 52(sp)
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
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb7:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb8
bb8:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 52(sp)
  SLT s9, t4, t3
  BNE s9, zero, bb31
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADDI t4, zero, 11
  SW t4, 24(sp)
  # implict jump to bb10
bb10:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 52(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb24
  # implict jump to bb11
bb11:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb12
bb12:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 52(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb23
  # implict jump to bb13
bb13:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADDI s8, zero, 11
  # implict jump to bb14
bb14:
  ADD s1, s8, zero
  ADD s11, s7, zero
  ADD t4, s6, zero
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 52(sp)
  SLT s9, t4, t3
  BNE s9, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 40(sp)
  ADDIW s9, t4, 1
  ADD s5, s9, zero
  JAL zero, bb5
bb16:
  ADD s5, zero, zero
  ADD s9, s11, zero
  ADD s11, s1, zero
  # implict jump to bb17
bb17:
  ADD s1, s11, zero
  ADD s2, s9, zero
  ADD s0, s5, zero
  LW t4, 52(sp)
  SLT s3, s0, t4
  BNE s3, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 64(sp)
  ADDIW s3, t4, 1
  ADD s6, s3, zero
  ADD s7, s2, zero
  ADD s8, s1, zero
  JAL zero, bb14
bb19:
  LUI s3, 2
  ADDIW s3, s3, -152
  LW t4, 64(sp)
  MULW s6, t4, s3
  LA s3, A
  ADD s7, s3, s6
  SLLIW s3, s0, 2
  ADD s6, s7, s3
  LW s7, 0(s6)
  XOR s8, s7, zero
  SLTIU s7, s8, 1
  BNE s7, zero, bb22
  # implict jump to bb20
bb20:
  LW t4, 64(sp)
  SLLIW s7, t4, 2
  LA s8, B
  ADD s4, s8, s7
  LW s7, 0(s4)
  LW s8, 0(s6)
  LA s6, C
  ADD s10, s6, s3
  LW s6, 0(s10)
  MULW s10, s8, s6
  ADDW s6, s7, s10
  SW s6, 0(s4)
  ADD s4, s2, zero
  ADD s6, s1, zero
  # implict jump to bb21
bb21:
  ADD s1, s6, zero
  ADD s2, s4, zero
  ADDIW s3, s0, 1
  ADD s5, s3, zero
  ADD s9, s2, zero
  ADD s11, s1, zero
  JAL zero, bb17
bb22:
  LW t4, 64(sp)
  SLLIW s7, t4, 2
  LA s8, C
  ADD s10, s8, s7
  LW s7, 0(s10)
  MULW s8, s1, s7
  LA s1, C
  ADD s7, s1, s3
  LW s1, 0(s7)
  ADDW s3, s8, s1
  SUBW s1, s2, s3
  ADD s4, s1, zero
  ADD s6, s3, zero
  JAL zero, bb21
bb23:
  LW t4, 60(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s2, s1, s0
  SW zero, 0(s2)
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb12
bb24:
  ADD s0, zero, zero
  LW t4, 8(sp)
  ADD s1, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  # implict jump to bb25
bb25:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LW t4, 52(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb27
  # implict jump to bb26
bb26:
  LW t4, 28(sp)
  ADDIW s6, t4, 1
  ADD t4, s6, zero
  SW t4, 16(sp)
  ADD t4, s4, zero
  SW t4, 20(sp)
  ADD t4, s3, zero
  SW t4, 24(sp)
  JAL zero, bb10
bb27:
  LUI s6, 2
  ADDIW s6, s6, -152
  LW t4, 28(sp)
  MULW s7, t4, s6
  LA s6, A
  ADD s8, s6, s7
  SLLIW s6, s5, 2
  ADD s7, s8, s6
  LW s8, 0(s7)
  XOR s9, s8, zero
  SLTIU s8, s9, 1
  BNE s8, zero, bb30
  # implict jump to bb28
bb28:
  LW t4, 28(sp)
  SLLIW s8, t4, 2
  LA s9, C
  ADD s10, s9, s8
  LW s8, 0(s10)
  LW s9, 0(s7)
  LA s7, B
  ADD s11, s7, s6
  LW s7, 0(s11)
  MULW s11, s9, s7
  ADDW s7, s8, s11
  SW s7, 0(s10)
  ADD s7, s4, zero
  ADD s8, s3, zero
  # implict jump to bb29
bb29:
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADDIW s6, s5, 1
  ADD s0, s6, zero
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb25
bb30:
  LW t4, 28(sp)
  SLLIW s9, t4, 2
  LA s10, B
  ADD s11, s10, s9
  LW s9, 0(s11)
  MULW s10, s3, s9
  LA s3, B
  ADD s9, s3, s6
  LW s3, 0(s9)
  ADDW s6, s10, s3
  SUBW s3, s4, s6
  ADD s7, s3, zero
  ADD s8, s6, zero
  JAL zero, bb29
bb31:
  LW t4, 32(sp)
  SLLIW s0, t4, 2
  LA s1, C
  ADD s2, s1, s0
  SW zero, 0(s2)
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb8
bb32:
  LW t4, 0(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s2, s1, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb3
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s1, s0, zero
  LW t4, 52(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb36
  # implict jump to bb35
bb35:
  LW t4, 56(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 48(sp)
  JAL zero, bb1
bb36:
  LUI s2, 2
  ADDIW s2, s2, -152
  LW t4, 56(sp)
  MULW s3, t4, s2
  LA s2, A
  ADD s4, s2, s3
  SLLIW s2, s1, 2
  ADD s3, s4, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  # implict jump to bb38
bb38:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb49
  # implict jump to bb39
bb39:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADDI s8, zero, 11
  # implict jump to bb40
bb40:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  SLT t0, s11, s0
  BNE t0, zero, bb42
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
  ADD t0, zero, zero
  ADD t1, s10, zero
  ADD s10, s9, zero
  # implict jump to bb43
bb43:
  ADD s9, s10, zero
  ADD t2, t1, zero
  ADD a0, t0, zero
  SLT a1, a0, s0
  BNE a1, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW a1, s11, 1
  ADD s6, a1, zero
  ADD s7, t2, zero
  ADD s8, s9, zero
  JAL zero, bb40
bb45:
  LUI s6, 2
  ADDIW s6, s6, -152
  MULW s7, s11, s6
  ADD s6, s1, s7
  SLLIW s7, a0, 2
  ADD s8, s6, s7
  LW s6, 0(s8)
  XOR a1, s6, zero
  SLTIU s6, a1, 1
  BNE s6, zero, bb48
  # implict jump to bb46
bb46:
  SLLIW s6, s11, 2
  ADD a1, s3, s6
  LW s6, 0(a1)
  LW a2, 0(s8)
  ADD s8, s2, s7
  LW a3, 0(s8)
  MULW s8, a2, a3
  ADDW a2, s6, s8
  SW a2, 0(a1)
  ADD s6, t2, zero
  ADD s8, s9, zero
  # implict jump to bb47
bb47:
  ADD s7, s8, zero
  ADD s8, s6, zero
  ADDIW s6, a0, 1
  ADD t0, s6, zero
  ADD t1, s8, zero
  ADD s10, s7, zero
  JAL zero, bb43
bb48:
  SLLIW a1, s11, 2
  ADD a2, s2, a1
  LW a1, 0(a2)
  MULW a2, s9, a1
  ADD s9, s2, s7
  LW s7, 0(s9)
  ADDW s9, a2, s7
  SUBW s7, t2, s9
  ADD s6, s7, zero
  ADD s8, s9, zero
  JAL zero, bb47
bb49:
  SLLIW s6, s5, 2
  ADD s7, s3, s6
  SW zero, 0(s7)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb38
