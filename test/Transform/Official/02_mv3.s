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
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb4
bb3:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb7
bb4:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 8(sp)
  LUI s1, 2
  ADDI s1, s1, -152
  MULW s2, s0, s1
  LA s0, A
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb7:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, B
  ADD s1, s0, s2
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb7
bb9:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb10
bb10:
  LW s0, 8(sp)
  SLTI s1, s0, 50
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, A
  ADD a1, s0, zero
  LA s0, B
  ADD a2, s0, zero
  LA s0, C
  ADD a3, s0, zero
  CALL mv
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, A
  ADD a1, s0, zero
  LA s0, C
  ADD a2, s0, zero
  LA s0, B
  ADD a3, s0, zero
  CALL mv
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb10
bb12:
  ADDI a0, zero, 67
  CALL _sysy_starttime
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
mv:
  ADDI sp, sp, -128
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
  SW s0, 32(sp)
  SW zero, 16(sp)
  ADDI s0, zero, 11
  SW s0, 24(sp)
  SW zero, 8(sp)
  JAL zero, bb14
bb14:
  LW s0, 8(sp)
  LW s4, 32(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADD s0, s3, s5
  SW zero, 0(s0)
  LW s0, 8(sp)
  ADDIW s4, s0, 1
  SW s4, 8(sp)
  JAL zero, bb14
bb16:
  SW zero, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb17
bb17:
  LW s0, 8(sp)
  LW s4, 32(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb18
  JAL zero, bb19
bb18:
  SW zero, 0(sp)
  JAL zero, bb20
bb19:
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
bb20:
  LW s0, 0(sp)
  LW s4, 32(sp)
  SLT s5, s0, s4
  XOR s0, s5, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  LW s0, 8(sp)
  LUI s4, 2
  ADDI s4, s4, -152
  MULW s5, s0, s4
  ADD s0, s1, s5
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s0, s6
  LW s0, 0(s4)
  XOR s4, s0, zero
  SLTIU s0, s4, 1
  BNE s0, zero, bb23
  JAL zero, bb25
bb22:
  LW s0, 8(sp)
  ADDIW s4, s0, 1
  SW s4, 8(sp)
  JAL zero, bb17
bb23:
  LW s0, 24(sp)
  LW s4, 8(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  LW s5, 0(s4)
  MULW s4, s0, s5
  LW s0, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s0, s5
  ADD s0, s2, s6
  LW s5, 0(s0)
  ADDW s0, s4, s5
  SW s0, 24(sp)
  LW s0, 16(sp)
  LW s4, 24(sp)
  SUBW s5, s0, s4
  SW s5, 16(sp)
  JAL zero, bb24
bb24:
  LW s0, 0(sp)
  ADDIW s4, s0, 1
  SW s4, 0(sp)
  JAL zero, bb20
bb25:
  LW s0, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s0, s4
  ADD s0, s3, s5
  LW s4, 8(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s5, 0(s4)
  LW s4, 8(sp)
  LUI s6, 2
  ADDI s6, s6, -152
  MULW s7, s4, s6
  ADD s4, s1, s7
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s4, s8
  LW s4, 0(s6)
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s2, s8
  LW s7, 0(s6)
  MULW s6, s4, s7
  ADDW s4, s5, s6
  SW s4, 0(s0)
  JAL zero, bb24
