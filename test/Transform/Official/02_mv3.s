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
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADD s1, zero, zero
  JAL zero, bb7
bb4:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  LUI s5, 2
  ADDIW s5, s5, -152
  MULW s6, s2, s5
  LA s5, A
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb4
bb6:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb7:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, B
  ADD s5, s3, s4
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb7
bb9:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 4(sp)
  JAL zero, bb10
bb10:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 50
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  ADD s3, zero, zero
  JAL zero, bb13
bb12:
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
bb13:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, C
  ADD s7, s5, s6
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb13
bb15:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADDI t4, zero, 11
  SW t4, 16(sp)
  JAL zero, bb16
bb16:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 24(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  ADD s8, t4, zero
  LW t4, 0(sp)
  SLT s9, s8, t4
  BNE s9, zero, bb17
  JAL zero, bb18
bb17:
  ADD s9, zero, zero
  ADD s10, s7, zero
  ADD s7, s6, zero
  JAL zero, bb19
bb18:
  ADD s0, zero, zero
  JAL zero, bb25
bb19:
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s10, zero
  SW t4, 20(sp)
  ADD s0, s9, zero
  LW t4, 0(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  LUI s1, 2
  ADDIW s1, s1, -152
  MULW s2, s8, s1
  LA s1, A
  ADD s6, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADD s1, s6, s2
  LW s6, 0(s1)
  XOR s5, s6, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb22
  JAL zero, bb24
bb21:
  ADDIW s0, s8, 1
  ADD t4, s0, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb16
bb22:
  ADDI s5, zero, 4
  MULW s6, s8, s5
  LA s5, B
  ADD s11, s5, s6
  LW s5, 0(s11)
  LW t4, 12(sp)
  MULW s6, t4, s5
  LA s5, B
  ADD s11, s5, s2
  LW s5, 0(s11)
  ADDW s11, s6, s5
  LW t4, 20(sp)
  SUBW s5, t4, s11
  ADD s6, s5, zero
  ADD s5, s11, zero
  JAL zero, bb23
bb23:
  ADD s11, s5, zero
  ADD s4, s6, zero
  ADDIW s3, s0, 1
  ADD s9, s3, zero
  ADD s10, s4, zero
  ADD s7, s11, zero
  JAL zero, bb19
bb24:
  ADDI s3, zero, 4
  MULW s4, s8, s3
  LA s3, C
  ADD s7, s3, s4
  LW s3, 0(s7)
  LW s4, 0(s1)
  LA s1, B
  ADD s9, s1, s2
  LW s1, 0(s9)
  MULW s2, s4, s1
  ADDW s1, s3, s2
  SW s1, 0(s7)
  LW t4, 20(sp)
  ADD s6, t4, zero
  LW t4, 12(sp)
  ADD s5, t4, zero
  JAL zero, bb23
bb25:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, B
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb25
bb27:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADDI t4, zero, 11
  SW t4, 36(sp)
  JAL zero, bb28
bb28:
  LW t4, 36(sp)
  ADD s3, t4, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  LW t4, 48(sp)
  ADD s5, t4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb29
  JAL zero, bb30
bb29:
  ADD s6, zero, zero
  ADD s7, s4, zero
  ADD s4, s3, zero
  JAL zero, bb31
bb30:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb10
bb31:
  ADD t4, s4, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 40(sp)
  ADD s9, s6, zero
  LW t4, 0(sp)
  SLT s10, s9, t4
  BNE s10, zero, bb32
  JAL zero, bb33
bb32:
  LUI s10, 2
  ADDIW s10, s10, -152
  MULW s11, s5, s10
  LA s10, A
  ADD s3, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s3, s11
  LW s3, 0(s10)
  XOR s2, s3, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb34
  JAL zero, bb36
bb33:
  ADDIW s0, s5, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb28
bb34:
  ADDI s2, zero, 4
  MULW s3, s5, s2
  LA s2, C
  ADD s8, s2, s3
  LW s2, 0(s8)
  LW t4, 32(sp)
  MULW s3, t4, s2
  LA s2, C
  ADD s8, s2, s11
  LW s2, 0(s8)
  ADDW s8, s3, s2
  LW t4, 40(sp)
  SUBW s2, t4, s8
  ADD s3, s2, zero
  ADD s2, s8, zero
  JAL zero, bb35
bb35:
  ADD s8, s2, zero
  ADD s1, s3, zero
  ADDIW s0, s9, 1
  ADD s6, s0, zero
  ADD s7, s1, zero
  ADD s4, s8, zero
  JAL zero, bb31
bb36:
  ADDI s0, zero, 4
  MULW s1, s5, s0
  LA s0, B
  ADD s4, s0, s1
  LW s0, 0(s4)
  LW s1, 0(s10)
  LA s6, C
  ADD s7, s6, s11
  LW s6, 0(s7)
  MULW s7, s1, s6
  ADDW s1, s0, s7
  SW s1, 0(s4)
  LW t4, 40(sp)
  ADD s3, t4, zero
  LW t4, 32(sp)
  ADD s2, t4, zero
  JAL zero, bb35
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
  JAL zero, bb38
bb38:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s3, s7
  SW zero, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb38
bb40:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADDI s6, zero, 11
  JAL zero, bb41
bb41:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLT s10, s9, s0
  BNE s10, zero, bb42
  JAL zero, bb43
bb42:
  ADD s10, zero, zero
  ADD s11, s8, zero
  ADD s8, s7, zero
  JAL zero, bb44
bb43:
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
bb44:
  ADD s7, s8, zero
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLT t2, t1, s0
  BNE t2, zero, bb45
  JAL zero, bb46
bb45:
  LUI t2, 2
  ADDIW t2, t2, -152
  MULW a0, s9, t2
  ADD t2, s1, a0
  ADDI a0, zero, 4
  MULW a1, t1, a0
  ADD a0, t2, a1
  LW t2, 0(a0)
  XOR a2, t2, zero
  SLTIU t2, a2, 1
  BNE t2, zero, bb47
  JAL zero, bb49
bb46:
  ADDIW s8, s9, 1
  ADD s4, s8, zero
  ADD s5, t0, zero
  ADD s6, s7, zero
  JAL zero, bb41
bb47:
  ADDI t2, zero, 4
  MULW a2, s9, t2
  ADD t2, s2, a2
  LW a2, 0(t2)
  MULW t2, s7, a2
  ADD a2, s2, a1
  LW a3, 0(a2)
  ADDW a2, t2, a3
  SUBW t2, t0, a2
  ADD a3, t2, zero
  ADD t2, a2, zero
  JAL zero, bb48
bb48:
  ADD a2, t2, zero
  ADD a4, a3, zero
  ADDIW a5, t1, 1
  ADD s10, a5, zero
  ADD s11, a4, zero
  ADD s8, a2, zero
  JAL zero, bb44
bb49:
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s3, s10
  LW s10, 0(s8)
  LW s11, 0(a0)
  ADD a0, s2, a1
  LW a1, 0(a0)
  MULW a0, s11, a1
  ADDW s11, s10, a0
  SW s11, 0(s8)
  ADD a3, t0, zero
  ADD t2, s7, zero
  JAL zero, bb48
