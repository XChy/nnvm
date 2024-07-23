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
  LA s1, v
  ADD a0, s1, zero
  CALL getarray
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
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
  BLT s4, s0, bb27
  # implict jump to bb5
bb5:
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s6, s5, zero
  BLT s6, s0, bb20
  # implict jump to bb7
bb7:
  ADD s7, zero, zero
  # implict jump to bb8
bb8:
  ADD s8, s7, zero
  BLT s8, s0, bb19
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADD s10, s9, zero
  BLT s10, s0, bb12
  # implict jump to bb11
bb11:
  ADDIW s11, s2, 1
  ADD s1, s11, zero
  JAL zero, bb1
bb12:
  SLLIW s1, s10, 2
  LA s11, x
  ADD s11, s11, s1
  LW s11, 0(s11)
  ADDIW s10, s10, 1
  SLLIW ra, s10, 2
  LA t0, x
  ADD ra, t0, ra
  ADD t0, s11, zero
  # implict jump to bb13
bb13:
  ADD t1, t0, zero
  LW t2, 0(ra)
  BLT t1, t2, bb18
  # implict jump to bb14
bb14:
  LA a0, b
  ADD a0, a0, s1
  ADD a1, s11, zero
  # implict jump to bb15
bb15:
  ADD a2, a1, zero
  BLT a2, t2, bb17
  # implict jump to bb16
bb16:
  ADD s9, s10, zero
  JAL zero, bb10
bb17:
  SLLIW s9, a2, 2
  LA a3, y
  ADD a3, a3, s9
  LW a3, 0(a3)
  SLLIW a3, a3, 2
  LA a4, a
  ADD a3, a4, a3
  LW a4, 0(a3)
  LA a5, v
  ADD s9, a5, s9
  LW s9, 0(s9)
  LW a5, 0(a0)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  MULW s9, s9, a5
  ADDW s9, a4, s9
  SW s9, 0(a3)
  ADDIW s9, a2, 1
  ADD a1, s9, zero
  JAL zero, bb15
bb18:
  SLLIW s9, t1, 2
  LA t2, y
  ADD t2, t2, s9
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  LA a0, a
  ADD t2, a0, t2
  LW a0, 0(t2)
  LA a1, v
  ADD s9, a1, s9
  LW s9, 0(s9)
  ADDW s9, a0, s9
  SW s9, 0(t2)
  ADDIW s9, t1, 1
  ADD t0, s9, zero
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
  LW s7, 0(s7)
  ADDIW s6, s6, 1
  SLLIW s8, s6, 2
  LA s9, x
  ADD s8, s9, s8
  ADD s9, s7, zero
  # implict jump to bb21
bb21:
  ADD s10, s9, zero
  LW s11, 0(s8)
  BLT s10, s11, bb26
  # implict jump to bb22
bb22:
  LA ra, a
  ADD ra, ra, s1
  ADD t0, s7, zero
  # implict jump to bb23
bb23:
  ADD t1, t0, zero
  BLT t1, s11, bb25
  # implict jump to bb24
bb24:
  ADD s5, s6, zero
  JAL zero, bb6
bb25:
  SLLIW s5, t1, 2
  LA t2, y
  ADD t2, t2, s5
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  LA a0, b
  ADD t2, a0, t2
  LW a0, 0(t2)
  LA a1, v
  ADD s5, a1, s5
  LW s5, 0(s5)
  LW a1, 0(ra)
  ADDI a2, zero, 1
  SUBW a1, a1, a2
  MULW s5, s5, a1
  ADDW s5, a0, s5
  SW s5, 0(t2)
  ADDIW s5, t1, 1
  ADD t0, s5, zero
  JAL zero, bb23
bb26:
  SLLIW s5, s10, 2
  LA s11, y
  ADD s11, s11, s5
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA ra, b
  ADD s11, ra, s11
  LW ra, 0(s11)
  LA t0, v
  ADD s5, t0, s5
  LW s5, 0(s5)
  ADDW s5, ra, s5
  SW s5, 0(s11)
  ADDIW s5, s10, 1
  ADD s9, s5, zero
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
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  ADD s1, s0, zero
  BLT s1, a0, bb40
  # implict jump to bb30
bb30:
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  BLT s3, a0, bb33
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
  SLLIW s7, s3, 2
  ADD s7, a1, s7
  # implict jump to bb34
bb34:
  ADD s8, s6, zero
  LW s9, 0(s7)
  BLT s8, s9, bb39
  # implict jump to bb35
bb35:
  LW s9, 0(s5)
  ADD s10, a4, s4
  # implict jump to bb36
bb36:
  ADD s11, s9, zero
  LW t0, 0(s7)
  BLT s11, t0, bb38
  # implict jump to bb37
bb37:
  ADD s2, s3, zero
  JAL zero, bb31
bb38:
  SLLIW s2, s11, 2
  ADD t0, a2, s2
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t0, a5, t0
  LW t1, 0(t0)
  ADD s2, a3, s2
  LW s2, 0(s2)
  LW t2, 0(s10)
  ADDI a6, zero, 1
  SUBW t2, t2, a6
  MULW s2, s2, t2
  ADDW s2, t1, s2
  SW s2, 0(t0)
  ADDIW s2, s11, 1
  ADD s9, s2, zero
  JAL zero, bb36
bb39:
  SLLIW s2, s8, 2
  ADD s9, a2, s2
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADD s9, a5, s9
  LW s10, 0(s9)
  ADD s2, a3, s2
  LW s2, 0(s2)
  ADDW s2, s10, s2
  SW s2, 0(s9)
  ADDIW s2, s8, 1
  ADD s6, s2, zero
  JAL zero, bb34
bb40:
  SLLIW s2, s1, 2
  ADD s2, a5, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb29
