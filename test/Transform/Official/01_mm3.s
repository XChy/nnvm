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
  ADDI sp, sp, -80
  SD s7, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  SLT s2, s1, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADD s2, zero, zero
  JAL zero, bb4
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb7
bb4:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  LUI s3, 1
  ADDI s3, s3, 0
  MULW s4, s1, s3
  LA s3, A
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s5, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb1
bb7:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  SLT s4, s3, s0
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s5, s2, s4
  LA s4, B
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb10
bb12:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb7
bb13:
  SLTI s2, s1, 5
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  ADD a0, s0, zero
  LA s2, A
  ADD a1, s2, zero
  LA s2, B
  ADD a2, s2, zero
  LA s2, C
  ADD a3, s2, zero
  CALL mm
  ADD a0, s0, zero
  LA s2, A
  ADD a1, s2, zero
  LA s2, C
  ADD a2, s2, zero
  LA s2, B
  ADD a3, s2, zero
  CALL mm
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb13
bb15:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb16
bb16:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADD s3, s1, zero
  ADD s4, zero, zero
  JAL zero, bb19
bb18:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:
  SLT s5, s4, s0
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  LUI s5, 1
  ADDI s5, s5, 0
  MULW s6, s2, s5
  LA s5, B
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  LW s6, 0(s5)
  ADDW s5, s3, s6
  ADDIW s6, s4, 1
  ADD s3, s5, zero
  ADD s4, s6, zero
  JAL zero, bb19
bb21:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb16
mm:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD ra, 24(sp)
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
  SLT s5, s4, s0
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb24
  JAL zero, bb25
bb24:
  ADD s5, zero, zero
  JAL zero, bb26
bb25:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb29
bb26:
  SLT s6, s5, s0
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb27
  JAL zero, bb28
bb27:
  LUI s6, 1
  ADDI s6, s6, 0
  MULW s7, s4, s6
  ADD s6, s3, s7
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s6, s8
  SW zero, 0(s7)
  ADDIW s6, s5, 1
  ADD s5, s6, zero
  JAL zero, bb26
bb28:
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb23
bb29:
  SLT s6, s4, s0
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb30
  JAL zero, bb31
bb30:
  ADD s6, s5, zero
  ADD s7, zero, zero
  JAL zero, bb32
bb31:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD ra, 24(sp)
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
  SLT s8, s7, s0
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb33
  JAL zero, bb34
bb33:
  LUI s8, 1
  ADDI s8, s8, 0
  MULW s9, s7, s8
  ADD s8, s1, s9
  ADDI s9, zero, 4
  MULW s10, s4, s9
  ADD s9, s8, s10
  LW s8, 0(s9)
  XOR s9, s8, zero
  SLTIU s8, s9, 1
  BNE s8, zero, bb35
  JAL zero, bb36
bb34:
  ADDIW s7, s4, 1
  ADD s4, s7, zero
  ADD s5, s6, zero
  JAL zero, bb29
bb35:
  ADDIW s8, s7, 1
  ADD s6, s6, zero
  ADD s7, s8, zero
  JAL zero, bb32
bb36:
  ADD s8, zero, zero
  JAL zero, bb37
bb37:
  SLT s9, s8, s0
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb38
  JAL zero, bb39
bb38:
  LUI s9, 1
  ADDI s9, s9, 0
  MULW s10, s7, s9
  ADD s9, s3, s10
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, s9, s11
  LUI s9, 1
  ADDI s9, s9, 0
  MULW s11, s7, s9
  ADD s9, s3, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s9, t0
  LW s9, 0(s11)
  LUI s11, 1
  ADDI s11, s11, 0
  MULW t0, s7, s11
  ADD s11, s1, t0
  ADDI t0, zero, 4
  MULW t1, s4, t0
  ADD t0, s11, t1
  LW s11, 0(t0)
  LUI t0, 1
  ADDI t0, t0, 0
  MULW t1, s4, t0
  ADD t0, s2, t1
  ADDI t1, zero, 4
  MULW t2, s8, t1
  ADD t1, t0, t2
  LW t0, 0(t1)
  MULW t1, s11, t0
  ADDW s11, s9, t1
  SW s11, 0(s10)
  ADDIW s9, s8, 1
  ADD s8, s9, zero
  JAL zero, bb37
bb39:
  ADDIW s9, s7, 1
  ADD s6, s8, zero
  ADD s7, s9, zero
  JAL zero, bb32
