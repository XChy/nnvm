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
  ADDI sp, sp, -128
  SD s2, 24(sp)
  SD s11, 32(sp)
  SD s10, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s1, 80(sp)
  SD s6, 88(sp)
  SD s3, 96(sp)
  SD s8, 104(sp)
  SD ra, 112(sp)
  SD s4, 120(sp)
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW t4, s0, s1
  SW t4, 0(sp)
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
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI s3, t4, 100
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW t4, 0(sp)
  ADD a0, t4, zero
  LA s0, b
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s2, 24(sp)
  LD s11, 32(sp)
  LD s10, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s1, 80(sp)
  LD s6, 88(sp)
  LD s3, 96(sp)
  LD s8, 104(sp)
  LD ra, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb4:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, b
  ADD s7, s5, s6
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb4
bb6:
  ADD s3, zero, zero
  JAL zero, bb7
bb7:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, x
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADDIW s8, s4, 1
  ADD s4, s5, zero
  JAL zero, bb10
bb9:
  ADD s0, zero, zero
  JAL zero, bb16
bb10:
  ADD s5, s4, zero
  ADDI s9, zero, 4
  MULW s10, s8, s9
  LA s9, x
  ADD s11, s9, s10
  LW s9, 0(s11)
  SLT s10, s5, s9
  BNE s10, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s9, zero, 4
  MULW s10, s5, s9
  LA s9, y
  ADD s2, s9, s10
  LW s9, 0(s2)
  ADDI s0, zero, 4
  MULW s1, s9, s0
  LA s0, b
  ADD s9, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, b
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, v
  ADD s2, s1, s10
  LW s1, 0(s2)
  ADDW s2, s0, s1
  SW s2, 0(s9)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb10
bb12:
  LW s0, 0(s7)
  ADD s1, s0, zero
  JAL zero, bb13
bb13:
  ADD s0, s1, zero
  LW s2, 0(s11)
  SLT s4, s0, s2
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, y
  ADD s5, s2, s4
  LW s2, 0(s5)
  ADDI s7, zero, 4
  MULW s9, s2, s7
  LA s2, b
  ADD s7, s2, s9
  LW s2, 0(s5)
  ADDI s5, zero, 4
  MULW s9, s2, s5
  LA s2, b
  ADD s5, s2, s9
  LW s2, 0(s5)
  LA s5, v
  ADD s9, s5, s4
  LW s4, 0(s9)
  LA s5, a
  ADD s9, s5, s6
  LW s5, 0(s9)
  ADDI s9, zero, 1
  SUBW s10, s5, s9
  MULW s5, s4, s10
  ADDW s4, s2, s5
  SW s4, 0(s7)
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb13
bb15:
  ADD s3, s8, zero
  JAL zero, bb7
bb16:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, a
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb16
bb18:
  ADD s0, zero, zero
  JAL zero, bb19
bb19:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, x
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADDIW s5, s1, 1
  ADD s1, s2, zero
  JAL zero, bb22
bb21:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb22:
  ADD s2, s1, zero
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, x
  ADD s8, s6, s7
  LW s6, 0(s8)
  SLT s7, s2, s6
  BNE s7, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s6, zero, 4
  MULW s7, s2, s6
  LA s6, y
  ADD s9, s6, s7
  LW s6, 0(s9)
  ADDI s10, zero, 4
  MULW s11, s6, s10
  LA s6, a
  ADD s10, s6, s11
  LW s6, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  LA s6, a
  ADD s9, s6, s11
  LW s6, 0(s9)
  LA s9, v
  ADD s11, s9, s7
  LW s7, 0(s11)
  ADDW s9, s6, s7
  SW s9, 0(s10)
  ADDIW s6, s2, 1
  ADD s1, s6, zero
  JAL zero, bb22
bb24:
  LW s1, 0(s4)
  ADD s2, s1, zero
  JAL zero, bb25
bb25:
  ADD s1, s2, zero
  LW s4, 0(s8)
  SLT s6, s1, s4
  BNE s6, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s4, zero, 4
  MULW s6, s1, s4
  LA s4, y
  ADD s7, s4, s6
  LW s4, 0(s7)
  ADDI s9, zero, 4
  MULW s10, s4, s9
  LA s4, a
  ADD s9, s4, s10
  LW s4, 0(s7)
  ADDI s7, zero, 4
  MULW s10, s4, s7
  LA s4, a
  ADD s7, s4, s10
  LW s4, 0(s7)
  LA s7, v
  ADD s10, s7, s6
  LW s6, 0(s10)
  LA s7, b
  ADD s10, s7, s3
  LW s7, 0(s10)
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  MULW s7, s6, s11
  ADDW s6, s4, s7
  SW s6, 0(s9)
  ADDIW s4, s1, 1
  ADD s2, s4, zero
  JAL zero, bb25
bb27:
  ADD s0, s5, zero
  JAL zero, bb19
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
  JAL zero, bb29
bb29:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s5, s9
  SW zero, 0(s8)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb29
bb31:
  ADD s6, zero, zero
  JAL zero, bb32
bb32:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s1, s9
  LW s10, 0(s8)
  ADDIW s11, s7, 1
  ADD s7, s10, zero
  JAL zero, bb35
bb34:
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
bb35:
  ADD s10, s7, zero
  ADDI t0, zero, 4
  MULW t1, s11, t0
  ADD t0, s1, t1
  LW t1, 0(t0)
  SLT t2, s10, t1
  BNE t2, zero, bb36
  JAL zero, bb37
bb36:
  ADDI t1, zero, 4
  MULW t2, s10, t1
  ADD t1, s2, t2
  LW a0, 0(t1)
  ADDI a1, zero, 4
  MULW a2, a0, a1
  ADD a0, s5, a2
  LW a1, 0(t1)
  ADDI t1, zero, 4
  MULW a2, a1, t1
  ADD t1, s5, a2
  LW a1, 0(t1)
  ADD t1, s3, t2
  LW t2, 0(t1)
  ADDW t1, a1, t2
  SW t1, 0(a0)
  ADDIW t1, s10, 1
  ADD s7, t1, zero
  JAL zero, bb35
bb37:
  LW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb38
bb38:
  ADD s7, s8, zero
  LW s10, 0(t0)
  SLT t1, s7, s10
  BNE t1, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s10, zero, 4
  MULW t1, s7, s10
  ADD s10, s2, t1
  LW t2, 0(s10)
  ADDI a0, zero, 4
  MULW a1, t2, a0
  ADD t2, s5, a1
  LW a0, 0(s10)
  ADDI s10, zero, 4
  MULW a1, a0, s10
  ADD s10, s5, a1
  LW a0, 0(s10)
  ADD s10, s3, t1
  LW t1, 0(s10)
  ADD s10, s4, s9
  LW a1, 0(s10)
  ADDI s10, zero, 1
  SUBW a2, a1, s10
  MULW s10, t1, a2
  ADDW t1, a0, s10
  SW t1, 0(t2)
  ADDIW s10, s7, 1
  ADD s8, s10, zero
  JAL zero, bb38
bb40:
  ADD s6, s11, zero
  JAL zero, bb32
