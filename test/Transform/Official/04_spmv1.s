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
  ADDI sp, sp, -144
  SD s9, 40(sp)
  SD s2, 48(sp)
  SD s11, 56(sp)
  SD s10, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s3, 112(sp)
  SD s8, 120(sp)
  SD ra, 128(sp)
  SD s4, 136(sp)
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
  LD s9, 40(sp)
  LD s2, 48(sp)
  LD s11, 56(sp)
  LD s10, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s3, 112(sp)
  LD s8, 120(sp)
  LD ra, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
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
  ADD s8, s5, zero
  JAL zero, bb10
bb9:
  ADD s0, zero, zero
  JAL zero, bb16
bb10:
  ADD s5, s8, zero
  ADDIW t4, s4, 1
  SW t4, 24(sp)
  ADDI s10, zero, 4
  LW t4, 24(sp)
  MULW s11, t4, s10
  LA s10, x
  ADD s2, s10, s11
  LW s10, 0(s2)
  SLT s11, s5, s10
  BNE s11, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s10, zero, 4
  MULW s11, s5, s10
  LA s10, y
  ADD s0, s10, s11
  LW s10, 0(s0)
  ADDI s1, zero, 4
  MULW s9, s10, s1
  LA s1, b
  ADD s10, s1, s9
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s1, s0
  LA s0, b
  ADD s1, s0, s9
  LW s0, 0(s1)
  LA s1, v
  ADD s9, s1, s11
  LW s1, 0(s9)
  ADDW s9, s0, s1
  SW s9, 0(s10)
  ADDIW s0, s5, 1
  ADD s8, s0, zero
  JAL zero, bb10
bb12:
  LW s0, 0(s7)
  ADD s1, s0, zero
  JAL zero, bb13
bb13:
  ADD s0, s1, zero
  LW s4, 0(s2)
  SLT s5, s0, s4
  BNE s5, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s4, zero, 4
  MULW s5, s0, s4
  LA s4, y
  ADD s7, s4, s5
  LW s4, 0(s7)
  ADDI s8, zero, 4
  MULW s9, s4, s8
  LA s4, b
  ADD s8, s4, s9
  LW s4, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s4, s7
  LA s4, b
  ADD s7, s4, s9
  LW s4, 0(s7)
  LA s7, v
  ADD s9, s7, s5
  LW s5, 0(s9)
  LA s7, a
  ADD s9, s7, s6
  LW s7, 0(s9)
  ADDI s9, zero, 1
  SUBW s10, s7, s9
  MULW s7, s5, s10
  ADDW s5, s4, s7
  SW s5, 0(s8)
  ADDIW s4, s0, 1
  ADD s1, s4, zero
  JAL zero, bb13
bb15:
  LW t4, 24(sp)
  ADD s3, t4, zero
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
  ADD s5, s2, zero
  JAL zero, bb22
bb21:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb22:
  ADD s2, s5, zero
  ADDIW t4, s1, 1
  SW t4, 32(sp)
  ADDI s7, zero, 4
  LW t4, 32(sp)
  MULW s8, t4, s7
  LA s7, x
  ADD s9, s7, s8
  LW s7, 0(s9)
  SLT s8, s2, s7
  BNE s8, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s7, zero, 4
  MULW s8, s2, s7
  LA s7, y
  ADD s10, s7, s8
  LW s7, 0(s10)
  ADDI s11, zero, 4
  MULW s6, s7, s11
  LA s7, a
  ADD s11, s7, s6
  LW s6, 0(s10)
  ADDI s7, zero, 4
  MULW s10, s6, s7
  LA s6, a
  ADD s7, s6, s10
  LW s6, 0(s7)
  LA s7, v
  ADD s10, s7, s8
  LW s7, 0(s10)
  ADDW s8, s6, s7
  SW s8, 0(s11)
  ADDIW s6, s2, 1
  ADD s5, s6, zero
  JAL zero, bb22
bb24:
  LW s1, 0(s4)
  ADD s2, s1, zero
  JAL zero, bb25
bb25:
  ADD s1, s2, zero
  LW s4, 0(s9)
  SLT s5, s1, s4
  BNE s5, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s4, zero, 4
  MULW s5, s1, s4
  LA s4, y
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LA s4, a
  ADD s7, s4, s8
  LW s4, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s4, s6
  LA s4, a
  ADD s6, s4, s8
  LW s4, 0(s6)
  LA s6, v
  ADD s8, s6, s5
  LW s5, 0(s8)
  LA s6, b
  ADD s8, s6, s3
  LW s6, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s6, s8
  MULW s6, s5, s10
  ADDW s5, s4, s6
  SW s5, 0(s7)
  ADDIW s4, s1, 1
  ADD s2, s4, zero
  JAL zero, bb25
bb27:
  LW t4, 32(sp)
  ADD s0, t4, zero
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
  ADD s11, s10, zero
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
  ADD s10, s11, zero
  ADDIW t0, s7, 1
  ADDI t1, zero, 4
  MULW t2, t0, t1
  ADD t1, s1, t2
  LW t2, 0(t1)
  SLT a0, s10, t2
  BNE a0, zero, bb36
  JAL zero, bb37
bb36:
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
  JAL zero, bb35
bb37:
  LW s7, 0(s8)
  ADD s8, s7, zero
  JAL zero, bb38
bb38:
  ADD s7, s8, zero
  LW s10, 0(t1)
  SLT s11, s7, s10
  BNE s11, zero, bb39
  JAL zero, bb40
bb39:
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
  JAL zero, bb38
bb40:
  ADD s6, t0, zero
  JAL zero, bb32
