.global main
.global spmv
.section .bss
b:
.space 400040
a:
.space 400040
y:
.space 12000000
x:
.space 400040
v:
.space 12000000

c:
.space 400040

.section .data





M:
.word 0x002dc6c0

N:
.word 0x000186aa
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 16(sp)
  LA s0, y
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s0, v
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, x
  ADD a1, s0, zero
  LA s0, y
  ADD a2, s0, zero
  LA s0, v
  ADD a3, s0, zero
  LA s0, a
  ADD a4, s0, zero
  LA s0, b
  ADD a5, s0, zero
  CALL spmv
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, x
  ADD a1, s0, zero
  LA s0, y
  ADD a2, s0, zero
  LA s0, v
  ADD a3, s0, zero
  LA s0, b
  ADD a4, s0, zero
  LA s0, a
  ADD a5, s0, zero
  CALL spmv
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb3:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW s0, 16(sp)
  ADD a0, s0, zero
  LA s0, b
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
spmv:
  ADDI sp, sp, -128
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD s8, 40(sp)
  SD ra, 48(sp)
  SD s7, 56(sp)
  SD s6, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  SW s0, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb5
bb5:
  LW s0, 8(sp)
  LW s6, 16(sp)
  SLT s7, s0, s6
  XOR s0, s7, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 8(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADD s0, s5, s7
  SW zero, 0(s0)
  LW s0, 8(sp)
  ADDIW s6, s0, 1
  SW s6, 8(sp)
  JAL zero, bb5
bb7:
  SW zero, 8(sp)
  JAL zero, bb8
bb8:
  LW s0, 8(sp)
  LW s6, 16(sp)
  SLT s7, s0, s6
  XOR s0, s7, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 8(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADD s0, s1, s7
  LW s6, 0(s0)
  SW s6, 0(sp)
  JAL zero, bb11
bb10:
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD ra, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  LW s0, 0(sp)
  LW s6, 8(sp)
  ADDIW s7, s6, 1
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  SLT s6, s0, s7
  XOR s0, s6, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADD s0, s2, s7
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  ADD s0, s5, s7
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s2, s8
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s5, s8
  LW s7, 0(s6)
  LW s6, 0(sp)
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s3, s9
  LW s8, 0(s6)
  ADDW s6, s7, s8
  SW s6, 0(s0)
  LW s0, 0(sp)
  ADDIW s6, s0, 1
  SW s6, 0(sp)
  JAL zero, bb11
bb13:
  LW s0, 8(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADD s0, s1, s7
  LW s6, 0(s0)
  SW s6, 0(sp)
  JAL zero, bb14
bb14:
  LW s0, 0(sp)
  LW s6, 8(sp)
  ADDIW s7, s6, 1
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s1, s8
  LW s7, 0(s6)
  SLT s6, s0, s7
  XOR s0, s6, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 0(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADD s0, s2, s7
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  ADD s0, s5, s7
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s6, s2, s8
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADD s6, s5, s8
  LW s7, 0(s6)
  LW s6, 0(sp)
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s3, s9
  LW s8, 0(s6)
  LW s6, 8(sp)
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADD s6, s4, s10
  LW s9, 0(s6)
  ADDI s6, zero, 1
  SUBW s10, s9, s6
  MULW s6, s8, s10
  ADDW s8, s7, s6
  SW s8, 0(s0)
  LW s0, 0(sp)
  ADDIW s6, s0, 1
  SW s6, 0(sp)
  JAL zero, bb14
bb16:
  LW s0, 8(sp)
  ADDIW s6, s0, 1
  SW s6, 8(sp)
  JAL zero, bb8
