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
  ADD s1, s0, zero
  SLTI s3, s1, 100
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
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
spmv:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
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
  BNE s8, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s1, s9
  LW s10, 0(s8)
  ADD s11, s10, zero
  JAL zero, bb11
bb10:
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
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
  ADD s10, s11, zero
  ADDIW t0, s7, 1
  ADDI t1, zero, 4
  MULW t2, t0, t1
  ADD t1, s1, t2
  LW t2, 0(t1)
  SLT a0, s10, t2
  BNE a0, zero, bb12
  JAL zero, bb13
bb12:
  ADDI t2, zero, 4
  MULW a0, s10, t2
  ADD t2, s2, a0
  LW a1, 0(t2)
  ADDI a2, zero, 4
  MULW a3, a1, a2
  ADD a1, s5, a3
  LW a2, 0(t2)
  ADDI t2, zero, 4
  MULW a3, a2, t2
  ADD t2, s5, a3
  LW a2, 0(t2)
  ADD t2, s3, a0
  LW a0, 0(t2)
  ADDW t2, a2, a0
  SW t2, 0(a1)
  ADDIW t2, s10, 1
  ADD s11, t2, zero
  JAL zero, bb11
bb13:
  LW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb14
bb14:
  ADD s7, s8, zero
  LW s10, 0(t1)
  SLT s11, s7, s10
  BNE s11, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s2, s11
  LW t2, 0(s10)
  ADDI a0, zero, 4
  MULW a1, t2, a0
  ADD t2, s5, a1
  LW a0, 0(s10)
  ADDI s10, zero, 4
  MULW a1, a0, s10
  ADD s10, s5, a1
  LW a0, 0(s10)
  ADD s10, s3, s11
  LW s11, 0(s10)
  ADD s10, s4, s9
  LW a1, 0(s10)
  ADDI s10, zero, 1
  SUBW a2, a1, s10
  MULW s10, s11, a2
  ADDW s11, a0, s10
  SW s11, 0(t2)
  ADDIW s10, s7, 1
  ADD s8, s10, zero
  JAL zero, bb14
bb16:
  ADD s6, t0, zero
  JAL zero, bb8
