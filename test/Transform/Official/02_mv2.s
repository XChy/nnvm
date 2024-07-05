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
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
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
  JAL zero, bb7
bb4:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  LUI s3, 2
  ADDI s3, s3, -152
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
  SLT s2, s1, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, B
  ADD s4, s2, s3
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb7
bb9:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADD s1, zero, zero
  JAL zero, bb10
bb10:
  SLTI s2, s1, 50
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADD a0, s0, zero
  LA s2, A
  ADD a1, s2, zero
  LA s2, B
  ADD a2, s2, zero
  LA s2, C
  ADD a3, s2, zero
  CALL mv
  ADD a0, s0, zero
  LA s2, A
  ADD a1, s2, zero
  LA s2, C
  ADD a2, s2, zero
  LA s2, B
  ADD a3, s2, zero
  CALL mv
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb10
bb12:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
mv:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD ra, 16(sp)
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
  JAL zero, bb14
bb14:
  SLT s5, s4, s0
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s3, s6
  SW zero, 0(s5)
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb14
bb16:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADDI s6, zero, 11
  JAL zero, bb17
bb17:
  SLT s7, s4, s0
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  ADD s7, zero, zero
  ADD s8, s5, zero
  ADD s9, s6, zero
  JAL zero, bb20
bb19:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
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
bb20:
  SLT s10, s7, s0
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb21
  JAL zero, bb22
bb21:
  LUI s10, 2
  ADDI s10, s10, -152
  MULW s11, s4, s10
  ADD s10, s1, s11
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s10, t0
  LW s10, 0(s11)
  XOR s11, s10, zero
  SLTIU s10, s11, 1
  BNE s10, zero, bb23
  JAL zero, bb25
bb22:
  ADDIW s7, s4, 1
  ADD s4, s7, zero
  ADD s5, s8, zero
  ADD s6, s9, zero
  JAL zero, bb17
bb23:
  ADDI s10, zero, 4
  MULW s11, s4, s10
  ADD s10, s2, s11
  LW s11, 0(s10)
  MULW s10, s9, s11
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s2, t0
  LW t0, 0(s11)
  ADDW s11, s10, t0
  SUBW s10, s8, s11
  ADD t0, s10, zero
  ADD s10, s11, zero
  JAL zero, bb24
bb24:
  ADDIW s11, s7, 1
  ADD s7, s11, zero
  ADD s8, t0, zero
  ADD s9, s10, zero
  JAL zero, bb20
bb25:
  ADDI s11, zero, 4
  MULW t1, s4, s11
  ADD s11, s3, t1
  ADDI t1, zero, 4
  MULW t2, s4, t1
  ADD t1, s3, t2
  LW t2, 0(t1)
  LUI t1, 2
  ADDI t1, t1, -152
  MULW a0, s4, t1
  ADD t1, s1, a0
  ADDI a0, zero, 4
  MULW a1, s7, a0
  ADD a0, t1, a1
  LW t1, 0(a0)
  ADDI a0, zero, 4
  MULW a1, s7, a0
  ADD a0, s2, a1
  LW a1, 0(a0)
  MULW a0, t1, a1
  ADDW t1, t2, a0
  SW t1, 0(s11)
  ADD t0, s8, zero
  ADD s10, s9, zero
  JAL zero, bb24
