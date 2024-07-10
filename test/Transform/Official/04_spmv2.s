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
  SD s2, 16(sp)
  SD s11, 24(sp)
  SD s10, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s3, 88(sp)
  SD s8, 96(sp)
  SD ra, 104(sp)
  SD s4, 112(sp)
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
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 100
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW t4, 0(sp)
  ADD a0, t4, zero
  LA s0, b
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD s2, 16(sp)
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s3, 88(sp)
  LD s8, 96(sp)
  LD ra, 104(sp)
  LD s4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb27
  # implict jump to bb5
bb5:
  ADD s3, zero, zero
  # implict jump to bb6
bb6:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb20
  # implict jump to bb7
bb7:
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb19
  # implict jump to bb9
bb9:
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb12
  # implict jump to bb11
bb11:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb12:
  SLLIW s2, s1, 2
  LA s3, x
  ADD s4, s3, s2
  LW s3, 0(s4)
  ADDIW s5, s1, 1
  ADD s1, s3, zero
  # implict jump to bb13
bb13:
  ADD s3, s1, zero
  SLLIW s6, s5, 2
  LA s7, x
  ADD s8, s7, s6
  LW s6, 0(s8)
  SLT s7, s3, s6
  BNE s7, zero, bb18
  # implict jump to bb14
bb14:
  LW s1, 0(s4)
  ADD s3, s1, zero
  # implict jump to bb15
bb15:
  ADD s1, s3, zero
  LW s4, 0(s8)
  SLT s6, s1, s4
  BNE s6, zero, bb17
  # implict jump to bb16
bb16:
  ADD s0, s5, zero
  JAL zero, bb10
bb17:
  SLLIW s4, s1, 2
  LA s6, y
  ADD s7, s6, s4
  LW s6, 0(s7)
  SLLIW s7, s6, 2
  LA s6, a
  ADD s9, s6, s7
  LW s6, 0(s9)
  LA s7, v
  ADD s10, s7, s4
  LW s4, 0(s10)
  LA s7, b
  ADD s10, s7, s2
  LW s7, 0(s10)
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  MULW s7, s4, s11
  ADDW s4, s6, s7
  SW s4, 0(s9)
  ADDIW s4, s1, 1
  ADD s3, s4, zero
  JAL zero, bb15
bb18:
  SLLIW s6, s3, 2
  LA s7, y
  ADD s9, s7, s6
  LW s7, 0(s9)
  SLLIW s9, s7, 2
  LA s7, a
  ADD s10, s7, s9
  LW s7, 0(s10)
  LA s9, v
  ADD s11, s9, s6
  LW s6, 0(s11)
  ADDW s9, s7, s6
  SW s9, 0(s10)
  ADDIW s6, s3, 1
  ADD s1, s6, zero
  JAL zero, bb13
bb19:
  SLLIW s2, s1, 2
  LA s3, a
  ADD s4, s3, s2
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb8
bb20:
  SLLIW s5, s4, 2
  LA s6, x
  ADD s7, s6, s5
  LW s6, 0(s7)
  ADDIW s8, s4, 1
  ADD s4, s6, zero
  # implict jump to bb21
bb21:
  ADD s6, s4, zero
  SLLIW s9, s8, 2
  LA s10, x
  ADD s11, s10, s9
  LW s9, 0(s11)
  SLT s10, s6, s9
  BNE s10, zero, bb26
  # implict jump to bb22
bb22:
  LW s0, 0(s7)
  ADD s1, s0, zero
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  LW s2, 0(s11)
  SLT s4, s0, s2
  BNE s4, zero, bb25
  # implict jump to bb24
bb24:
  ADD s3, s8, zero
  JAL zero, bb6
bb25:
  SLLIW s2, s0, 2
  LA s4, y
  ADD s6, s4, s2
  LW s4, 0(s6)
  SLLIW s6, s4, 2
  LA s4, b
  ADD s7, s4, s6
  LW s4, 0(s7)
  LA s6, v
  ADD s9, s6, s2
  LW s2, 0(s9)
  LA s6, a
  ADD s9, s6, s5
  LW s6, 0(s9)
  ADDI s9, zero, 1
  SUBW s10, s6, s9
  MULW s6, s2, s10
  ADDW s2, s4, s6
  SW s2, 0(s7)
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb23
bb26:
  SLLIW s9, s6, 2
  LA s10, y
  ADD s2, s10, s9
  LW s10, 0(s2)
  SLLIW s2, s10, 2
  LA s10, b
  ADD s0, s10, s2
  LW s2, 0(s0)
  LA s10, v
  ADD s1, s10, s9
  LW s9, 0(s1)
  ADDW s1, s2, s9
  SW s1, 0(s0)
  ADDIW s0, s6, 1
  ADD s4, s0, zero
  JAL zero, bb21
bb27:
  SLLIW s5, s4, 2
  LA s6, b
  ADD s7, s6, s5
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
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
  ADD s6, zero, zero
  # implict jump to bb31
bb31:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb33
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
  SLLIW s8, s7, 2
  ADD s9, s1, s8
  LW s10, 0(s9)
  ADDIW s11, s7, 1
  ADD s7, s10, zero
  # implict jump to bb34
bb34:
  ADD s10, s7, zero
  SLLIW t0, s11, 2
  ADD t1, s1, t0
  LW t0, 0(t1)
  SLT t2, s10, t0
  BNE t2, zero, bb39
  # implict jump to bb35
bb35:
  LW s7, 0(s9)
  ADD s9, s7, zero
  # implict jump to bb36
bb36:
  ADD s7, s9, zero
  LW s10, 0(t1)
  SLT t0, s7, s10
  BNE t0, zero, bb38
  # implict jump to bb37
bb37:
  ADD s6, s11, zero
  JAL zero, bb31
bb38:
  SLLIW s10, s7, 2
  ADD t0, s2, s10
  LW t2, 0(t0)
  SLLIW t0, t2, 2
  ADD t2, s5, t0
  LW t0, 0(t2)
  ADD a0, s3, s10
  LW s10, 0(a0)
  ADD a0, s4, s8
  LW a1, 0(a0)
  ADDI a0, zero, 1
  SUBW a2, a1, a0
  MULW a0, s10, a2
  ADDW s10, t0, a0
  SW s10, 0(t2)
  ADDIW s10, s7, 1
  ADD s9, s10, zero
  JAL zero, bb36
bb39:
  SLLIW t0, s10, 2
  ADD t2, s2, t0
  LW a0, 0(t2)
  SLLIW t2, a0, 2
  ADD a0, s5, t2
  LW t2, 0(a0)
  ADD a1, s3, t0
  LW t0, 0(a1)
  ADDW a1, t2, t0
  SW a1, 0(a0)
  ADDIW t0, s10, 1
  ADD s7, t0, zero
  JAL zero, bb34
bb40:
  SLLIW s8, s7, 2
  ADD s9, s5, s8
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb29
