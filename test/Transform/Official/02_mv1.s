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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  LUI s5, 2
  ADDI s5, s5, -152
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
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  ADD s1, zero, zero
  JAL zero, bb10
bb10:
  ADD s2, s1, zero
  SLTI s3, s2, 50
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  ADD a0, s0, zero
  LA s3, A
  ADD a1, s3, zero
  LA s3, B
  ADD a2, s3, zero
  LA s3, C
  ADD a3, s3, zero
  CALL mv
  ADD a0, s0, zero
  LA s3, A
  ADD a1, s3, zero
  LA s3, C
  ADD a2, s3, zero
  LA s3, B
  ADD a3, s3, zero
  CALL mv
  ADDIW s3, s2, 1
  ADD s1, s3, zero
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
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
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
  JAL zero, bb14
bb14:
  ADD s5, s4, zero
  SLT s6, s5, s0
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s3, s7
  SW zero, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb14
bb16:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADDI s6, zero, 11
  JAL zero, bb17
bb17:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLT s10, s9, s0
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb18
  JAL zero, bb19
bb18:
  ADD s10, zero, zero
  ADD s11, s8, zero
  ADD s8, s7, zero
  JAL zero, bb20
bb19:
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
bb20:
  ADD s7, s8, zero
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLT t2, t1, s0
  XOR a0, t2, zero
  SLTU t2, zero, a0
  BNE t2, zero, bb21
  JAL zero, bb22
bb21:
  LUI t2, 2
  ADDI t2, t2, -152
  MULW a0, s9, t2
  ADD t2, s1, a0
  ADDI a0, zero, 4
  MULW a1, t1, a0
  ADD a0, t2, a1
  LW t2, 0(a0)
  XOR a0, t2, zero
  SLTIU t2, a0, 1
  BNE t2, zero, bb23
  JAL zero, bb25
bb22:
  ADDIW s8, s9, 1
  ADD s4, s8, zero
  ADD s5, t0, zero
  ADD s6, s7, zero
  JAL zero, bb17
bb23:
  ADDI t2, zero, 4
  MULW a0, s9, t2
  ADD t2, s2, a0
  LW a0, 0(t2)
  MULW t2, s7, a0
  ADDI a0, zero, 4
  MULW a1, t1, a0
  ADD a0, s2, a1
  LW a1, 0(a0)
  ADDW a0, t2, a1
  SUBW t2, t0, a0
  ADD a1, t2, zero
  ADD t2, a0, zero
  JAL zero, bb24
bb24:
  ADD a0, t2, zero
  ADD a2, a1, zero
  ADDIW a3, t1, 1
  ADD s10, a3, zero
  ADD s11, a2, zero
  ADD s8, a0, zero
  JAL zero, bb20
bb25:
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s3, s10
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s3, s11
  LW s11, 0(s10)
  LUI s10, 2
  ADDI s10, s10, -152
  MULW a0, s9, s10
  ADD s10, s1, a0
  ADDI a0, zero, 4
  MULW a2, t1, a0
  ADD a0, s10, a2
  LW s10, 0(a0)
  ADDI a0, zero, 4
  MULW a2, t1, a0
  ADD a0, s2, a2
  LW a2, 0(a0)
  MULW a0, s10, a2
  ADDW s10, s11, a0
  SW s10, 0(s8)
  ADD a1, t0, zero
  ADD t2, s7, zero
  JAL zero, bb24
