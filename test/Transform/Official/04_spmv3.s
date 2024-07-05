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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, y
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
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
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  SLTI s1, s0, 100
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADD a0, s2, zero
  LA s1, x
  ADD a1, s1, zero
  LA s1, y
  ADD a2, s1, zero
  LA s1, v
  ADD a3, s1, zero
  LA s1, a
  ADD a4, s1, zero
  LA s1, b
  ADD a5, s1, zero
  CALL spmv
  ADD a0, s2, zero
  LA s1, x
  ADD a1, s1, zero
  LA s1, y
  ADD a2, s1, zero
  LA s1, v
  ADD a3, s1, zero
  LA s1, b
  ADD a4, s1, zero
  LA s1, a
  ADD a5, s1, zero
  CALL spmv
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb3:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s2, zero
  LA s0, b
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
spmv:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD ra, 24(sp)
  SD s8, 32(sp)
  SD s7, 40(sp)
  SD s6, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, zero, zero
  JAL zero, bb5
bb5:
  SLT s7, s6, s0
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s5, s8
  SW zero, 0(s7)
  ADDIW s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb5
bb7:
  ADD s6, zero, zero
  JAL zero, bb8
bb8:
  SLT s7, s6, s0
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s1, s8
  LW s8, 0(s7)
  ADD s7, s8, zero
  JAL zero, bb11
bb10:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD ra, 24(sp)
  LD s8, 32(sp)
  LD s7, 40(sp)
  LD s6, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb11:
  ADDIW s8, s6, 1
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s8, s1, s10
  LW s9, 0(s8)
  SLT s8, s7, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s2, s9
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s5, s10
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s2, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s5, s11
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s3, s11
  LW s11, 0(s9)
  ADDW s9, s10, s11
  SW s9, 0(s8)
  ADDIW s8, s7, 1
  ADD s7, s8, zero
  JAL zero, bb11
bb13:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s1, s8
  LW s8, 0(s7)
  ADD s7, s8, zero
  JAL zero, bb14
bb14:
  ADDIW s8, s6, 1
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s8, s1, s10
  LW s9, 0(s8)
  SLT s8, s7, s9
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s2, s9
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  ADD s8, s5, s10
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s2, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s5, s11
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s3, s11
  LW s11, 0(s9)
  ADDI s9, zero, 4
  MULW t0, s6, s9
  ADD s9, s4, t0
  LW t0, 0(s9)
  ADDI s9, zero, 1
  SUBW t1, t0, s9
  MULW s9, s11, t1
  ADDW s11, s10, s9
  SW s11, 0(s8)
  ADDIW s8, s7, 1
  ADD s7, s8, zero
  JAL zero, bb14
bb16:
  ADDIW s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb8
