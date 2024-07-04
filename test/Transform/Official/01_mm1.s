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
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 16(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb4
bb3:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb7
bb4:
  LW s0, 8(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 16(sp)
  LUI s1, 1
  ADDI s1, s1, 0
  MULW s2, s0, s1
  LA s0, A
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb6:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb1
bb7:
  LW s0, 16(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb10
bb9:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb13
bb10:
  LW s0, 8(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 16(sp)
  LUI s1, 1
  ADDI s1, s1, 0
  MULW s2, s0, s1
  LA s0, B
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb10
bb12:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb7
bb13:
  LW s0, 16(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LA s0, A
  ADD a1, s0, zero
  LA s0, B
  ADD a2, s0, zero
  LA s0, C
  ADD a3, s0, zero
  CALL mm
  LW s0, 24(sp)
  ADD a0, s0, zero
  LA s0, A
  ADD a1, s0, zero
  LA s0, C
  ADD a2, s0, zero
  LA s0, B
  ADD a3, s0, zero
  CALL mm
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb13
bb15:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb16
bb16:
  LW s0, 16(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb19
bb18:
  ADDI a0, zero, 84
  CALL _sysy_starttime
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:
  LW s0, 8(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 0(sp)
  LW s1, 16(sp)
  LUI s2, 1
  ADDI s2, s2, 0
  MULW s3, s1, s2
  LA s1, B
  ADD s2, s1, s3
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb19
bb21:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb16
mm:
  ADDI sp, sp, -128
  SD s9, 32(sp)
  SD s8, 40(sp)
  SD s7, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD ra, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s0, 24(sp)
  SW zero, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb23
bb23:
  LW s0, 16(sp)
  LW s4, 24(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb24
  JAL zero, bb25
bb24:
  SW zero, 8(sp)
  JAL zero, bb26
bb25:
  SW zero, 16(sp)
  SW zero, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb29
bb26:
  LW s0, 8(sp)
  LW s4, 24(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb27
  JAL zero, bb28
bb27:
  LW s0, 16(sp)
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s5, s0, s4
  ADD s0, s3, s5
  LW s4, 8(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s0, s6
  SW zero, 0(s4)
  LW s0, 8(sp)
  ADDIW s4, s0, 1
  SW s4, 8(sp)
  JAL zero, bb26
bb28:
  LW s0, 16(sp)
  ADDIW s4, s0, 1
  SW s4, 16(sp)
  JAL zero, bb23
bb29:
  LW s0, 0(sp)
  LW s4, 24(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
  SW zero, 16(sp)
  JAL zero, bb32
bb31:
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s7, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb32:
  LW s0, 16(sp)
  LW s4, 24(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb33
  JAL zero, bb34
bb33:
  LW s0, 16(sp)
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s5, s0, s4
  ADD s0, s1, s5
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s0, s6
  LW s0, 0(s4)
  XOR s4, s0, zero
  SLTIU s0, s4, 1
  BNE s0, zero, bb35
  JAL zero, bb36
bb34:
  LW s0, 0(sp)
  ADDIW s4, s0, 1
  SW s4, 0(sp)
  JAL zero, bb29
bb35:
  LW s0, 16(sp)
  ADDIW s4, s0, 1
  SW s4, 16(sp)
  JAL zero, bb32
bb36:
  SW zero, 8(sp)
  JAL zero, bb37
bb37:
  LW s0, 8(sp)
  LW s4, 24(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb38
  JAL zero, bb39
bb38:
  LW s0, 16(sp)
  LUI s4, 1
  ADDI s4, s4, 0
  MULW s5, s0, s4
  ADD s0, s3, s5
  LW s4, 8(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s0, s6
  LW s0, 16(sp)
  LUI s5, 1
  ADDI s5, s5, 0
  MULW s6, s0, s5
  ADD s0, s3, s6
  LW s5, 8(sp)
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s5, s0, s7
  LW s0, 0(s5)
  LW s5, 16(sp)
  LUI s6, 1
  ADDI s6, s6, 0
  MULW s7, s5, s6
  ADD s5, s1, s7
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s5, s8
  LW s5, 0(s6)
  LW s6, 0(sp)
  LUI s7, 1
  ADDI s7, s7, 0
  MULW s8, s6, s7
  ADD s6, s2, s8
  LW s7, 8(sp)
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s7, s6, s9
  LW s6, 0(s7)
  MULW s7, s5, s6
  ADDW s5, s0, s7
  SW s5, 0(s4)
  LW s0, 8(sp)
  ADDIW s4, s0, 1
  SW s4, 8(sp)
  JAL zero, bb37
bb39:
  LW s0, 16(sp)
  ADDIW s4, s0, 1
  SW s4, 16(sp)
  JAL zero, bb32
