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
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  SD s5, 152(sp)
  SD s9, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb1
bb1:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 56(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb33
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb3
bb3:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 56(sp)
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
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s7, t4, 50
  BNE s7, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 56(sp)
  ADD a0, t4, zero
  LA s7, C
  ADD a1, s7, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  LD s5, 152(sp)
  LD s9, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb7:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb8
bb8:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 56(sp)
  SLT s9, t4, t3
  BNE s9, zero, bb31
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADDI t4, zero, 11
  SW t4, 28(sp)
  # implict jump to bb10
bb10:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 56(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb24
  # implict jump to bb11
bb11:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb12
bb12:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 56(sp)
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
  ADD s10, s6, zero
  LW t4, 56(sp)
  SLT s9, s10, t4
  BNE s9, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 44(sp)
  ADDIW s9, t4, 1
  ADD s5, s9, zero
  JAL zero, bb5
bb16:
  ADD s5, zero, zero
  ADD s9, s11, zero
  ADD s1, s1, zero
  # implict jump to bb17
bb17:
  ADD s11, s1, zero
  ADD s2, s9, zero
  ADD s0, s5, zero
  LW t4, 56(sp)
  SLT s3, s0, t4
  BNE s3, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s3, s10, 1
  ADD s6, s3, zero
  ADD s7, s2, zero
  ADD s8, s11, zero
  JAL zero, bb14
bb19:
  LUI s3, 2
  ADDIW s3, s3, -152
  MULW s3, s10, s3
  LA s6, A
  ADD s3, s6, s3
  SLLIW s6, s0, 2
  ADD s3, s3, s6
  LW s7, 0(s3)
  XOR s7, s7, zero
  SLTIU s7, s7, 1
  BNE s7, zero, bb22
  # implict jump to bb20
bb20:
  SLLIW s7, s10, 2
  LA s8, B
  ADD s7, s8, s7
  LW s8, 0(s7)
  LW s3, 0(s3)
  LA s4, C
  ADD s4, s4, s6
  LW s4, 0(s4)
  MULW s3, s3, s4
  ADDW s3, s8, s3
  SW s3, 0(s7)
  ADD s3, s2, zero
  ADD s4, s11, zero
  # implict jump to bb21
bb21:
  ADD s4, s4, zero
  ADD s3, s3, zero
  ADDIW s0, s0, 1
  ADD s5, s0, zero
  ADD s9, s3, zero
  ADD s1, s4, zero
  JAL zero, bb17
bb22:
  SLLIW s7, s10, 2
  LA s8, C
  ADD s7, s8, s7
  LW s7, 0(s7)
  MULW s7, s11, s7
  LA s8, C
  ADD s6, s8, s6
  LW s6, 0(s6)
  ADDW s6, s7, s6
  SUBW s2, s2, s6
  ADD s3, s2, zero
  ADD s4, s6, zero
  JAL zero, bb21
bb23:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb12
bb24:
  ADD s0, zero, zero
  LW t4, 12(sp)
  ADD s1, t4, zero
  LW t4, 16(sp)
  ADD s2, t4, zero
  # implict jump to bb25
bb25:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LW t4, 56(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb27
  # implict jump to bb26
bb26:
  LW t4, 32(sp)
  ADDIW s6, t4, 1
  ADD t4, s6, zero
  SW t4, 20(sp)
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 28(sp)
  JAL zero, bb10
bb27:
  LUI s6, 2
  ADDIW s6, s6, -152
  LW t4, 32(sp)
  MULW s6, t4, s6
  LA s7, A
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  LW s8, 0(s6)
  XOR s8, s8, zero
  SLTIU s8, s8, 1
  BNE s8, zero, bb30
  # implict jump to bb28
bb28:
  LW t4, 32(sp)
  SLLIW s8, t4, 2
  LA s9, C
  ADD s8, s9, s8
  LW s9, 0(s8)
  LW s6, 0(s6)
  LA s10, B
  ADD s10, s10, s7
  LW s10, 0(s10)
  MULW s6, s6, s10
  ADDW s6, s9, s6
  SW s6, 0(s8)
  ADD s6, s4, zero
  ADD s8, s3, zero
  # implict jump to bb29
bb29:
  ADD s8, s8, zero
  ADD s6, s6, zero
  ADDIW s3, s5, 1
  ADD s0, s3, zero
  ADD s1, s6, zero
  ADD s2, s8, zero
  JAL zero, bb25
bb30:
  LW t4, 32(sp)
  SLLIW s9, t4, 2
  LA s10, B
  ADD s9, s10, s9
  LW s9, 0(s9)
  MULW s3, s3, s9
  LA s9, B
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADDW s3, s3, s7
  SUBW s4, s4, s3
  ADD s6, s4, zero
  ADD s8, s3, zero
  JAL zero, bb29
bb31:
  LW t4, 36(sp)
  SLLIW s0, t4, 2
  LA s1, C
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 36(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb8
bb32:
  LW t4, 0(sp)
  SLLIW s0, t4, 2
  LA s1, B
  ADD s0, s1, s0
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb3
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s1, s0, zero
  LW t4, 56(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb36
  # implict jump to bb35
bb35:
  LW t4, 60(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 52(sp)
  JAL zero, bb1
bb36:
  LUI s2, 2
  ADDIW s2, s2, -152
  LW t4, 60(sp)
  MULW s2, t4, s2
  LA s3, A
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  CALL getint
  ADD a0, a0, zero
  SW a0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
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
  ADD a0, a0, zero
  ADD a1, a1, zero
  ADD a2, a2, zero
  ADD a3, a3, zero
  ADD s0, zero, zero
  # implict jump to bb38
bb38:
  ADD s1, s0, zero
  SLT s2, s1, a0
  BNE s2, zero, bb49
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
  SLT s8, s7, a0
  BNE s8, zero, bb42
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
  ADD s8, zero, zero
  ADD s6, s6, zero
  ADD s5, s5, zero
  # implict jump to bb43
bb43:
  ADD s9, s5, zero
  ADD s10, s6, zero
  ADD s11, s8, zero
  SLT t0, s11, a0
  BNE t0, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW t0, s7, 1
  ADD s2, t0, zero
  ADD s3, s10, zero
  ADD s4, s9, zero
  JAL zero, bb40
bb45:
  LUI s2, 2
  ADDIW s2, s2, -152
  MULW s2, s7, s2
  ADD s2, a1, s2
  SLLIW s3, s11, 2
  ADD s2, s2, s3
  LW s4, 0(s2)
  XOR s4, s4, zero
  SLTIU s4, s4, 1
  BNE s4, zero, bb48
  # implict jump to bb46
bb46:
  SLLIW s4, s7, 2
  ADD s4, a3, s4
  LW t0, 0(s4)
  LW s2, 0(s2)
  ADD t1, a2, s3
  LW t1, 0(t1)
  MULW s2, s2, t1
  ADDW s2, t0, s2
  SW s2, 0(s4)
  ADD s2, s10, zero
  ADD s4, s9, zero
  # implict jump to bb47
bb47:
  ADD s4, s4, zero
  ADD s2, s2, zero
  ADDIW s3, s11, 1
  ADD s8, s3, zero
  ADD s6, s2, zero
  ADD s5, s4, zero
  JAL zero, bb43
bb48:
  SLLIW t0, s7, 2
  ADD t0, a2, t0
  LW t0, 0(t0)
  MULW s9, s9, t0
  ADD s3, a2, s3
  LW s3, 0(s3)
  ADDW s3, s9, s3
  SUBW s9, s10, s3
  ADD s2, s9, zero
  ADD s4, s3, zero
  JAL zero, bb47
bb49:
  SLLIW s2, s1, 2
  ADD s2, a3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb38
