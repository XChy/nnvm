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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
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
  ADD s1, s0, zero
  SLTI s3, s1, 100
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADD a0, s2, zero
  LA s3, x
  ADD a1, s3, zero
  LA s3, y
  ADD a2, s3, zero
  LA s3, v
  ADD a3, s3, zero
  LA s3, a
  ADD a4, s3, zero
  LA s3, b
  ADD a5, s3, zero
  CALL spmv
  ADD a0, s2, zero
  LA s3, x
  ADD a1, s3, zero
  LA s3, y
  ADD a2, s3, zero
  LA s3, v
  ADD a3, s3, zero
  LA s3, b
  ADD a4, s3, zero
  LA s3, a
  ADD a5, s3, zero
  CALL spmv
  ADDIW s3, s1, 1
  ADD s0, s3, zero
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
spmv:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD ra, 16(sp)
  SD s9, 24(sp)
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
  ADD s7, s6, zero
  SLT s8, s7, s0
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s5, s9
  SW zero, 0(s8)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb5
bb7:
  ADD s6, zero, zero
  JAL zero, bb8
bb8:
  ADD s7, s6, zero
  SLT s8, s7, s0
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s1, s9
  LW s9, 0(s8)
  ADD s8, s9, zero
  JAL zero, bb11
bb10:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s9, 24(sp)
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
  ADD s9, s8, zero
  ADDIW s10, s7, 1
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s10, s1, t0
  LW s11, 0(s10)
  SLT s10, s9, s11
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s2, s11
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s5, t0
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s11, s2, t0
  LW t0, 0(s11)
  ADDI s11, zero, 4
  MULW t1, t0, s11
  ADD s11, s5, t1
  LW t0, 0(s11)
  ADDI s11, zero, 4
  MULW t1, s9, s11
  ADD s11, s3, t1
  LW t1, 0(s11)
  ADDW s11, t0, t1
  SW s11, 0(s10)
  ADDIW s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb11
bb13:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s1, s9
  LW s9, 0(s8)
  ADD s8, s9, zero
  JAL zero, bb14
bb14:
  ADD s9, s8, zero
  ADDIW s10, s7, 1
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s10, s1, t0
  LW s11, 0(s10)
  SLT s10, s9, s11
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s2, s11
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s5, t0
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s11, s2, t0
  LW t0, 0(s11)
  ADDI s11, zero, 4
  MULW t1, t0, s11
  ADD s11, s5, t1
  LW t0, 0(s11)
  ADDI s11, zero, 4
  MULW t1, s9, s11
  ADD s11, s3, t1
  LW t1, 0(s11)
  ADDI s11, zero, 4
  MULW t2, s7, s11
  ADD s11, s4, t2
  LW t2, 0(s11)
  ADDI s11, zero, 1
  SUBW a0, t2, s11
  MULW s11, t1, a0
  ADDW t1, t0, s11
  SW t1, 0(s10)
  ADDIW s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb14
bb16:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb8
