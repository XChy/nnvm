.global main
.global mm
.section .bss
B:
.space 4194304
C:
.space 4194304
A:
.space 4194304

.section .data



N:
.word 0x00000400
.section .text
main:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
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
  SLT s5, s4, s0
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  LUI s5, 1
  ADDIW s5, s5, 0
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
  SLT s3, s2, s0
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADD s3, zero, zero
  JAL zero, bb10
bb9:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD s1, zero, zero
  JAL zero, bb13
bb10:
  ADD s4, s3, zero
  SLT s5, s4, s0
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  LUI s5, 1
  ADDIW s5, s5, 0
  MULW s6, s2, s5
  LA s5, B
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb10
bb12:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb7
bb13:
  ADD s2, s1, zero
  SLTI s3, s2, 5
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADD a0, s0, zero
  LA s3, A
  ADD a1, s3, zero
  LA s3, B
  ADD a2, s3, zero
  LA s3, C
  ADD a3, s3, zero
  CALL mm
  ADD a0, s0, zero
  LA s3, A
  ADD a1, s3, zero
  LA s3, C
  ADD a2, s3, zero
  LA s3, B
  ADD a3, s3, zero
  CALL mm
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb13
bb15:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb16
bb16:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s0
  BNE s5, zero, bb17
  JAL zero, bb18
bb17:
  ADD s5, s4, zero
  ADD s6, zero, zero
  JAL zero, bb19
bb18:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD ra, 32(sp)
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
bb19:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLT s9, s7, s0
  BNE s9, zero, bb20
  JAL zero, bb21
bb20:
  LUI s9, 1
  ADDIW s9, s9, 0
  MULW s10, s3, s9
  LA s9, B
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADDW s9, s8, s10
  ADDIW s10, s7, 1
  ADD s5, s9, zero
  ADD s6, s10, zero
  JAL zero, bb19
bb21:
  ADDIW s5, s3, 1
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb16
mm:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD ra, 8(sp)
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
  JAL zero, bb23
bb23:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb24
  JAL zero, bb25
bb24:
  ADD s6, zero, zero
  JAL zero, bb26
bb25:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb29
bb26:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb27
  JAL zero, bb28
bb27:
  LUI s8, 1
  ADDIW s8, s8, 0
  MULW s9, s5, s8
  ADD s8, s3, s9
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s8, s10
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb26
bb28:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb23
bb29:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s7, s0
  BNE s8, zero, bb30
  JAL zero, bb31
bb30:
  ADD s8, s6, zero
  ADD s6, zero, zero
  JAL zero, bb32
bb31:
  LD s11, 0(sp)
  LD ra, 8(sp)
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
bb32:
  ADD s9, s6, zero
  ADD s10, s8, zero
  SLT s11, s9, s0
  BNE s11, zero, bb33
  JAL zero, bb34
bb33:
  LUI s11, 1
  ADDIW s11, s11, 0
  MULW t0, s9, s11
  ADD s11, s1, t0
  ADDI t1, zero, 4
  MULW t2, s7, t1
  ADD t1, s11, t2
  LW s11, 0(t1)
  XOR t2, s11, zero
  SLTIU s11, t2, 1
  BNE s11, zero, bb35
  JAL zero, bb36
bb34:
  ADDIW s6, s7, 1
  ADD s4, s6, zero
  ADD s5, s10, zero
  JAL zero, bb29
bb35:
  ADDIW s11, s9, 1
  ADD s8, s10, zero
  ADD s6, s11, zero
  JAL zero, bb32
bb36:
  ADD s11, zero, zero
  JAL zero, bb37
bb37:
  ADD t2, s11, zero
  SLT a0, t2, s0
  BNE a0, zero, bb38
  JAL zero, bb39
bb38:
  ADD a0, s3, t0
  ADDI a1, zero, 4
  MULW a2, t2, a1
  ADD a1, a0, a2
  LW a0, 0(a1)
  LW a3, 0(t1)
  LUI a4, 1
  ADDIW a4, a4, 0
  MULW a5, s7, a4
  ADD a4, s2, a5
  ADD a5, a4, a2
  LW a2, 0(a5)
  MULW a4, a3, a2
  ADDW a2, a0, a4
  SW a2, 0(a1)
  ADDIW a0, t2, 1
  ADD s11, a0, zero
  JAL zero, bb37
bb39:
  ADDIW s11, s9, 1
  ADD s8, t2, zero
  ADD s6, s11, zero
  JAL zero, bb32
