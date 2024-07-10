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
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s0, x
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, y
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  LA s1, v
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLTI s3, s2, 100
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s3, b
  ADD a1, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLT s5, s4, s0
  BNE s5, zero, bb27
  # implict jump to bb5
bb5:
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  SLT s7, s6, s0
  BNE s7, zero, bb20
  # implict jump to bb7
bb7:
  ADD s7, zero, zero
  # implict jump to bb8
bb8:
  ADD s8, s7, zero
  SLT s9, s8, s0
  BNE s9, zero, bb19
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADD s10, s9, zero
  SLT s11, s10, s0
  BNE s11, zero, bb12
  # implict jump to bb11
bb11:
  ADDIW s11, s2, 1
  ADD s1, s11, zero
  JAL zero, bb1
bb12:
  SLLIW s1, s10, 2
  LA s11, x
  ADD s11, s11, s1
  LW ra, 0(s11)
  ADDIW s10, s10, 1
  ADD ra, ra, zero
  # implict jump to bb13
bb13:
  ADD t0, ra, zero
  SLLIW t1, s10, 2
  LA t2, x
  ADD t1, t2, t1
  LW t2, 0(t1)
  SLT t2, t0, t2
  BNE t2, zero, bb18
  # implict jump to bb14
bb14:
  LW t2, 0(s11)
  ADD t2, t2, zero
  # implict jump to bb15
bb15:
  ADD a0, t2, zero
  LW a1, 0(t1)
  SLT a1, a0, a1
  BNE a1, zero, bb17
  # implict jump to bb16
bb16:
  ADD s9, s10, zero
  JAL zero, bb10
bb17:
  SLLIW s9, a0, 2
  LA a1, y
  ADD a1, a1, s9
  LW a1, 0(a1)
  SLLIW a1, a1, 2
  LA a2, a
  ADD a1, a2, a1
  LW a2, 0(a1)
  LA a3, v
  ADD s9, a3, s9
  LW s9, 0(s9)
  LA a3, b
  ADD a3, a3, s1
  LW a3, 0(a3)
  ADDI a4, zero, 1
  SUBW a3, a3, a4
  MULW s9, s9, a3
  ADDW s9, a2, s9
  SW s9, 0(a1)
  ADDIW s9, a0, 1
  ADD t2, s9, zero
  JAL zero, bb15
bb18:
  SLLIW s9, t0, 2
  LA t1, y
  ADD t1, t1, s9
  LW t1, 0(t1)
  SLLIW t1, t1, 2
  LA t2, a
  ADD t1, t2, t1
  LW t2, 0(t1)
  LA a0, v
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADDW s9, t2, s9
  SW s9, 0(t1)
  ADDIW s9, t0, 1
  ADD ra, s9, zero
  JAL zero, bb13
bb19:
  SLLIW s1, s8, 2
  LA s9, a
  ADD s1, s9, s1
  SW zero, 0(s1)
  ADDIW s1, s8, 1
  ADD s7, s1, zero
  JAL zero, bb8
bb20:
  SLLIW s1, s6, 2
  LA s7, x
  ADD s7, s7, s1
  LW s8, 0(s7)
  ADDIW s6, s6, 1
  ADD s8, s8, zero
  # implict jump to bb21
bb21:
  ADD s9, s8, zero
  SLLIW s10, s6, 2
  LA s11, x
  ADD s10, s11, s10
  LW s11, 0(s10)
  SLT s11, s9, s11
  BNE s11, zero, bb26
  # implict jump to bb22
bb22:
  LW s11, 0(s7)
  ADD s11, s11, zero
  # implict jump to bb23
bb23:
  ADD ra, s11, zero
  LW t0, 0(s10)
  SLT t0, ra, t0
  BNE t0, zero, bb25
  # implict jump to bb24
bb24:
  ADD s5, s6, zero
  JAL zero, bb6
bb25:
  SLLIW s5, ra, 2
  LA t0, y
  ADD t0, t0, s5
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  LA t1, b
  ADD t0, t1, t0
  LW t1, 0(t0)
  LA t2, v
  ADD s5, t2, s5
  LW s5, 0(s5)
  LA t2, a
  ADD t2, t2, s1
  LW t2, 0(t2)
  ADDI a0, zero, 1
  SUBW t2, t2, a0
  MULW s5, s5, t2
  ADDW s5, t1, s5
  SW s5, 0(t0)
  ADDIW s5, ra, 1
  ADD s11, s5, zero
  JAL zero, bb23
bb26:
  SLLIW s5, s9, 2
  LA s10, y
  ADD s10, s10, s5
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, b
  ADD s10, s11, s10
  LW s11, 0(s10)
  LA ra, v
  ADD s5, ra, s5
  LW s5, 0(s5)
  ADDW s5, s11, s5
  SW s5, 0(s10)
  ADDIW s5, s9, 1
  ADD s8, s5, zero
  JAL zero, bb21
bb27:
  SLLIW s1, s4, 2
  LA s5, b
  ADD s1, s5, s1
  SW zero, 0(s1)
  ADDIW s1, s4, 1
  ADD s3, s1, zero
  JAL zero, bb4
spmv:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD a0, a0, zero
  ADD a1, a1, zero
  ADD a2, a2, zero
  ADD a3, a3, zero
  ADD a4, a4, zero
  ADD a5, a5, zero
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  ADD s1, s0, zero
  SLT s2, s1, a0
  BNE s2, zero, bb40
  # implict jump to bb30
bb30:
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  SLT s4, s3, a0
  BNE s4, zero, bb33
  # implict jump to bb32
bb32:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb33:
  SLLIW s4, s3, 2
  ADD s5, a1, s4
  LW s6, 0(s5)
  ADDIW s3, s3, 1
  ADD s6, s6, zero
  # implict jump to bb34
bb34:
  ADD s7, s6, zero
  SLLIW s8, s3, 2
  ADD s8, a1, s8
  LW s9, 0(s8)
  SLT s9, s7, s9
  BNE s9, zero, bb39
  # implict jump to bb35
bb35:
  LW s9, 0(s5)
  ADD s9, s9, zero
  # implict jump to bb36
bb36:
  ADD s10, s9, zero
  LW s11, 0(s8)
  SLT s11, s10, s11
  BNE s11, zero, bb38
  # implict jump to bb37
bb37:
  ADD s2, s3, zero
  JAL zero, bb31
bb38:
  SLLIW s2, s10, 2
  ADD s11, a2, s2
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  ADD s11, a5, s11
  LW t0, 0(s11)
  ADD s2, a3, s2
  LW s2, 0(s2)
  ADD t1, a4, s4
  LW t1, 0(t1)
  ADDI t2, zero, 1
  SUBW t1, t1, t2
  MULW s2, s2, t1
  ADDW s2, t0, s2
  SW s2, 0(s11)
  ADDIW s2, s10, 1
  ADD s9, s2, zero
  JAL zero, bb36
bb39:
  SLLIW s2, s7, 2
  ADD s8, a2, s2
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADD s8, a5, s8
  LW s9, 0(s8)
  ADD s2, a3, s2
  LW s2, 0(s2)
  ADDW s2, s9, s2
  SW s2, 0(s8)
  ADDIW s2, s7, 1
  ADD s6, s2, zero
  JAL zero, bb34
bb40:
  SLLIW s2, s1, 2
  ADD s2, a5, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb29
