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
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s8, 80(sp)
  SD ra, 88(sp)
  SD s4, 96(sp)
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
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLTI s3, s1, 100
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s2, zero
  LA s3, b
  ADD a1, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s8, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb27
  # implict jump to bb5
bb5:
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  SLT s7, s6, s2
  BNE s7, zero, bb20
  # implict jump to bb7
bb7:
  ADD s7, zero, zero
  # implict jump to bb8
bb8:
  ADD s8, s7, zero
  SLT s9, s8, s2
  BNE s9, zero, bb19
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADD s10, s9, zero
  SLT s11, s10, s2
  BNE s11, zero, bb12
  # implict jump to bb11
bb11:
  ADDIW s11, s1, 1
  ADD s0, s11, zero
  JAL zero, bb1
bb12:
  SLLIW s0, s10, 2
  LA s11, x
  ADD ra, s11, s0
  LW s11, 0(ra)
  ADDIW t0, s10, 1
  ADD s10, s11, zero
  # implict jump to bb13
bb13:
  ADD s11, s10, zero
  SLLIW t1, t0, 2
  LA t2, x
  ADD a0, t2, t1
  LW t1, 0(a0)
  SLT t2, s11, t1
  BNE t2, zero, bb18
  # implict jump to bb14
bb14:
  LW t1, 0(ra)
  ADD t2, t1, zero
  # implict jump to bb15
bb15:
  ADD t1, t2, zero
  LW a1, 0(a0)
  SLT a2, t1, a1
  BNE a2, zero, bb17
  # implict jump to bb16
bb16:
  ADD s9, t0, zero
  JAL zero, bb10
bb17:
  SLLIW s9, t1, 2
  LA a1, y
  ADD a2, a1, s9
  LW a1, 0(a2)
  SLLIW a2, a1, 2
  LA a1, a
  ADD a3, a1, a2
  LW a1, 0(a3)
  LA a2, v
  ADD a4, a2, s9
  LW s9, 0(a4)
  LA a2, b
  ADD a4, a2, s0
  LW a2, 0(a4)
  ADDI a4, zero, 1
  SUBW a5, a2, a4
  MULW a2, s9, a5
  ADDW s9, a1, a2
  SW s9, 0(a3)
  ADDIW s9, t1, 1
  ADD t2, s9, zero
  JAL zero, bb15
bb18:
  SLLIW s9, s11, 2
  LA t1, y
  ADD t2, t1, s9
  LW t1, 0(t2)
  SLLIW t2, t1, 2
  LA t1, a
  ADD a0, t1, t2
  LW t1, 0(a0)
  LA t2, v
  ADD a1, t2, s9
  LW s9, 0(a1)
  ADDW t2, t1, s9
  SW t2, 0(a0)
  ADDIW s9, s11, 1
  ADD s10, s9, zero
  JAL zero, bb13
bb19:
  SLLIW s0, s8, 2
  LA s9, a
  ADD s10, s9, s0
  SW zero, 0(s10)
  ADDIW s0, s8, 1
  ADD s7, s0, zero
  JAL zero, bb8
bb20:
  SLLIW s0, s6, 2
  LA s7, x
  ADD s8, s7, s0
  LW s7, 0(s8)
  ADDIW s9, s6, 1
  ADD s6, s7, zero
  # implict jump to bb21
bb21:
  ADD s7, s6, zero
  SLLIW s10, s9, 2
  LA s11, x
  ADD ra, s11, s10
  LW s10, 0(ra)
  SLT s11, s7, s10
  BNE s11, zero, bb26
  # implict jump to bb22
bb22:
  LW s10, 0(s8)
  ADD s11, s10, zero
  # implict jump to bb23
bb23:
  ADD s10, s11, zero
  LW t0, 0(ra)
  SLT t1, s10, t0
  BNE t1, zero, bb25
  # implict jump to bb24
bb24:
  ADD s5, s9, zero
  JAL zero, bb6
bb25:
  SLLIW s5, s10, 2
  LA t0, y
  ADD t1, t0, s5
  LW t0, 0(t1)
  SLLIW t1, t0, 2
  LA t0, b
  ADD t2, t0, t1
  LW t0, 0(t2)
  LA t1, v
  ADD a0, t1, s5
  LW s5, 0(a0)
  LA t1, a
  ADD a0, t1, s0
  LW t1, 0(a0)
  ADDI a0, zero, 1
  SUBW a1, t1, a0
  MULW t1, s5, a1
  ADDW s5, t0, t1
  SW s5, 0(t2)
  ADDIW s5, s10, 1
  ADD s11, s5, zero
  JAL zero, bb23
bb26:
  SLLIW s5, s7, 2
  LA s10, y
  ADD s11, s10, s5
  LW s10, 0(s11)
  SLLIW s11, s10, 2
  LA s10, b
  ADD ra, s10, s11
  LW s10, 0(ra)
  LA s11, v
  ADD t0, s11, s5
  LW s5, 0(t0)
  ADDW s11, s10, s5
  SW s11, 0(ra)
  ADDIW s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb21
bb27:
  SLLIW s0, s4, 2
  LA s5, b
  ADD s6, s5, s0
  SW zero, 0(s6)
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb4
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
  # implict jump to bb29
bb29:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb40
  # implict jump to bb30
bb30:
  ADD s8, zero, zero
  # implict jump to bb31
bb31:
  ADD s9, s8, zero
  SLT s10, s9, s0
  BNE s10, zero, bb33
  # implict jump to bb32
bb32:
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
bb33:
  SLLIW s10, s9, 2
  ADD s11, s1, s10
  LW t0, 0(s11)
  ADDIW t1, s9, 1
  ADD s9, t0, zero
  # implict jump to bb34
bb34:
  ADD t0, s9, zero
  SLLIW t2, t1, 2
  ADD a0, s1, t2
  LW t2, 0(a0)
  SLT a1, t0, t2
  BNE a1, zero, bb39
  # implict jump to bb35
bb35:
  LW t2, 0(s11)
  ADD a1, t2, zero
  # implict jump to bb36
bb36:
  ADD t2, a1, zero
  LW a2, 0(a0)
  SLT a3, t2, a2
  BNE a3, zero, bb38
  # implict jump to bb37
bb37:
  ADD s8, t1, zero
  JAL zero, bb31
bb38:
  SLLIW s8, t2, 2
  ADD a2, s2, s8
  LW a3, 0(a2)
  SLLIW a2, a3, 2
  ADD a3, s5, a2
  LW a2, 0(a3)
  ADD a4, s3, s8
  LW s8, 0(a4)
  ADD a4, s4, s10
  LW a5, 0(a4)
  ADDI a4, zero, 1
  SUBW a6, a5, a4
  MULW a4, s8, a6
  ADDW s8, a2, a4
  SW s8, 0(a3)
  ADDIW s8, t2, 1
  ADD a1, s8, zero
  JAL zero, bb36
bb39:
  SLLIW s8, t0, 2
  ADD t2, s2, s8
  LW a0, 0(t2)
  SLLIW t2, a0, 2
  ADD a0, s5, t2
  LW t2, 0(a0)
  ADD a1, s3, s8
  LW s8, 0(a1)
  ADDW a1, t2, s8
  SW a1, 0(a0)
  ADDIW s8, t0, 1
  ADD s9, s8, zero
  JAL zero, bb34
bb40:
  SLLIW s8, s7, 2
  ADD s9, s5, s8
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb29
