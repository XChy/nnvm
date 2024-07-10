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
  ADDI sp, sp, -160
  SD s11, 56(sp)
  SD s10, 64(sp)
  SD s9, 72(sp)
  SD s8, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s0, 144(sp)
  SD ra, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb33
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb32
  # implict jump to bb4
bb4:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb5
bb5:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 50
  BNE s3, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 0(sp)
  ADD a0, t4, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 56(sp)
  LD s10, 64(sp)
  LD s9, 72(sp)
  LD s8, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s0, 144(sp)
  LD ra, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb7:
  ADD s3, zero, zero
  # implict jump to bb8
bb8:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb31
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADDI t4, zero, 11
  SW t4, 16(sp)
  # implict jump to bb10
bb10:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 24(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  ADD s8, t4, zero
  LW t4, 0(sp)
  SLT s9, s8, t4
  BNE s9, zero, bb24
  # implict jump to bb11
bb11:
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb23
  # implict jump to bb13
bb13:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADDI t4, zero, 11
  SW t4, 36(sp)
  # implict jump to bb14
bb14:
  LW t4, 36(sp)
  ADD s3, t4, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  LW t4, 48(sp)
  ADD s5, t4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb5
bb16:
  ADD s6, zero, zero
  ADD s7, s4, zero
  ADD s4, s3, zero
  # implict jump to bb17
bb17:
  ADD t4, s4, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 40(sp)
  ADD s9, s6, zero
  LW t4, 0(sp)
  SLT s10, s9, t4
  BNE s10, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s0, s5, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb14
bb19:
  LUI s10, 2
  ADDIW s10, s10, -152
  MULW s11, s5, s10
  LA s10, A
  ADD s3, s10, s11
  SLLIW s10, s9, 2
  ADD s11, s3, s10
  LW s3, 0(s11)
  XOR s2, s3, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb22
  # implict jump to bb20
bb20:
  SLLIW s0, s5, 2
  LA s1, B
  ADD s4, s1, s0
  LW s0, 0(s4)
  LW s1, 0(s11)
  LA s6, C
  ADD s7, s6, s10
  LW s6, 0(s7)
  MULW s7, s1, s6
  ADDW s1, s0, s7
  SW s1, 0(s4)
  LW t4, 40(sp)
  ADD s3, t4, zero
  LW t4, 32(sp)
  ADD s2, t4, zero
  # implict jump to bb21
bb21:
  ADD s8, s2, zero
  ADD s1, s3, zero
  ADDIW s0, s9, 1
  ADD s6, s0, zero
  ADD s7, s1, zero
  ADD s4, s8, zero
  JAL zero, bb17
bb22:
  SLLIW s2, s5, 2
  LA s3, C
  ADD s8, s3, s2
  LW s2, 0(s8)
  LW t4, 32(sp)
  MULW s3, t4, s2
  LA s2, C
  ADD s8, s2, s10
  LW s2, 0(s8)
  ADDW s8, s3, s2
  LW t4, 40(sp)
  SUBW s2, t4, s8
  ADD s3, s2, zero
  ADD s2, s8, zero
  JAL zero, bb21
bb23:
  SLLIW s2, s1, 2
  LA s3, B
  ADD s4, s3, s2
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
bb24:
  ADD s9, zero, zero
  ADD s10, s7, zero
  ADD s7, s6, zero
  # implict jump to bb25
bb25:
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s10, zero
  SW t4, 20(sp)
  ADD s0, s9, zero
  LW t4, 0(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb27
  # implict jump to bb26
bb26:
  ADDIW s0, s8, 1
  ADD t4, s0, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb10
bb27:
  LUI s1, 2
  ADDIW s1, s1, -152
  MULW s2, s8, s1
  LA s1, A
  ADD s6, s1, s2
  SLLIW s1, s0, 2
  ADD s2, s6, s1
  LW s6, 0(s2)
  XOR s5, s6, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb30
  # implict jump to bb28
bb28:
  SLLIW s3, s8, 2
  LA s4, C
  ADD s7, s4, s3
  LW s3, 0(s7)
  LW s4, 0(s2)
  LA s2, B
  ADD s9, s2, s1
  LW s1, 0(s9)
  MULW s2, s4, s1
  ADDW s1, s3, s2
  SW s1, 0(s7)
  LW t4, 20(sp)
  ADD s6, t4, zero
  LW t4, 12(sp)
  ADD s5, t4, zero
  # implict jump to bb29
bb29:
  ADD s11, s5, zero
  ADD s4, s6, zero
  ADDIW s3, s0, 1
  ADD s9, s3, zero
  ADD s10, s4, zero
  ADD s7, s11, zero
  JAL zero, bb25
bb30:
  SLLIW s5, s8, 2
  LA s6, B
  ADD s11, s6, s5
  LW s5, 0(s11)
  LW t4, 12(sp)
  MULW s6, t4, s5
  LA s5, B
  ADD s11, s5, s1
  LW s5, 0(s11)
  ADDW s11, s6, s5
  LW t4, 20(sp)
  SUBW s5, t4, s11
  ADD s6, s5, zero
  ADD s5, s11, zero
  JAL zero, bb29
bb31:
  SLLIW s5, s4, 2
  LA s6, C
  ADD s7, s6, s5
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb8
bb32:
  SLLIW s3, s2, 2
  LA s4, B
  ADD s5, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb3
bb33:
  ADD s3, zero, zero
  # implict jump to bb34
bb34:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb36
  # implict jump to bb35
bb35:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb36:
  LUI s5, 2
  ADDIW s5, s5, -152
  MULW s6, s2, s5
  LA s5, A
  ADD s7, s5, s6
  SLLIW s5, s4, 2
  ADD s6, s7, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb34
mv:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
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
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADDI s6, zero, 11
  # implict jump to bb40
bb40:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLT s10, s9, s0
  BNE s10, zero, bb42
  # implict jump to bb41
bb41:
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb42:
  ADD s10, zero, zero
  ADD s11, s8, zero
  ADD s8, s7, zero
  # implict jump to bb43
bb43:
  ADD s7, s8, zero
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLT t2, t1, s0
  BNE t2, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW s8, s9, 1
  ADD s4, s8, zero
  ADD s5, t0, zero
  ADD s6, s7, zero
  JAL zero, bb40
bb45:
  LUI t2, 2
  ADDIW t2, t2, -152
  MULW a0, s9, t2
  ADD t2, s1, a0
  SLLIW a0, t1, 2
  ADD a1, t2, a0
  LW t2, 0(a1)
  XOR a2, t2, zero
  SLTIU t2, a2, 1
  BNE t2, zero, bb48
  # implict jump to bb46
bb46:
  SLLIW s8, s9, 2
  ADD s10, s3, s8
  LW s8, 0(s10)
  LW s11, 0(a1)
  ADD t2, s2, a0
  LW a0, 0(t2)
  MULW t2, s11, a0
  ADDW s11, s8, t2
  SW s11, 0(s10)
  ADD a3, t0, zero
  ADD a2, s7, zero
  # implict jump to bb47
bb47:
  ADD t2, a2, zero
  ADD a4, a3, zero
  ADDIW a5, t1, 1
  ADD s10, a5, zero
  ADD s11, a4, zero
  ADD s8, t2, zero
  JAL zero, bb43
bb48:
  SLLIW t2, s9, 2
  ADD a2, s2, t2
  LW t2, 0(a2)
  MULW a2, s7, t2
  ADD t2, s2, a0
  LW a3, 0(t2)
  ADDW t2, a2, a3
  SUBW a2, t0, t2
  ADD a3, a2, zero
  ADD a2, t2, zero
  JAL zero, bb47
bb49:
  SLLIW s6, s5, 2
  ADD s7, s3, s6
  SW zero, 0(s7)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb38
