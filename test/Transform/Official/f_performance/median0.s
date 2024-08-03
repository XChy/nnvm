.global main
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  LA a0, a
  CALL getarray
  ADD s0, a0, zero
  LA a0, n
  SW s0, 0(a0)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA a0, n
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW s0, s1, a0
  SRAIW a0, s1, 31
  SRLIW a0, a0, 31
  ADD a0, s1, a0
  SRAIW a0, a0, 1
  ADD s4, a0, zero
  ADD s1, s0, zero
  ADD s0, zero, zero
  LA a0, a
  # implict jump to bb1
bb1:
  ADD s7, a0, zero
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLLIW a0, s2, 2
  ADD s11, s7, a0
  LW s6, 0(s11)
  ADDIW a0, s3, 1
  ADD s8, zero, zero
  ADD s0, a0, zero
  ADD a0, s2, zero
  # implict jump to bb2
bb2:
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD s0, s8, zero
  # implict jump to bb3
bb3:
  ADD s5, a0, zero
  BLT s1, s5, bb30
  # implict jump to bb4
bb4:
  ADD a0, s5, zero
  # implict jump to bb5
bb5:
  ADD s5, a0, zero
  ADD a0, s1, zero
  # implict jump to bb6
bb6:
  ADD s1, s0, zero
  BLT a0, s5, bb27
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  XOR s0, a0, s5
  SLTIU s0, s0, 1
  BNE s0, zero, bb16
  # implict jump to bb9
bb9:
  SLLIW s0, a0, 2
  ADD s0, s7, s0
  LW s10, 0(s0)
  SLLIW s8, s5, 2
  ADD s9, s7, s8
  LW s8, 0(s9)
  SW s8, 0(s0)
  SW s10, 0(s9)
  ADD s0, zero, zero
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  BLT s8, a0, bb15
  # implict jump to bb11
bb11:
  ADD s9, zero, zero
  # implict jump to bb12
bb12:
  BNE s9, zero, bb14
  # implict jump to bb13
bb13:
  ADD s8, s1, zero
  ADD s0, s5, zero
  JAL zero, bb2
bb14:
  ADDIW s8, s8, 1
  ADDW s0, s0, a0
  ADDW s0, s0, s8
  JAL zero, bb10
bb15:
  SLT s9, s8, s5
  JAL zero, bb12
bb16:
  SW s6, 0(s11)
  SLLIW s0, a0, 2
  ADD s1, s7, s0
  LW s0, 0(s1)
  SW s0, 0(s11)
  SW s6, 0(s1)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb17
bb17:
  ADD s5, s1, zero
  ADD s1, s0, zero
  BLT s5, s2, bb26
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  # implict jump to bb19
bb19:
  BNE s0, zero, bb25
  # implict jump to bb20
bb20:
  BLT s4, a0, bb24
  # implict jump to bb21
bb21:
  BLT a0, s4, bb23
  # implict jump to bb22
bb22:
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  LA a1, a
  CALL putarray
  LA t0, n
  LW t0, 0(t0)
  SRAIW t1, t0, 31
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW t0, t0, 1
  SLLIW t1, t0, 2
  LA t0, a
  ADD t0, t0, t1
  LW t1, 0(t0)
  SLLI t0, t1, 1
  SRLI t0, t0, 56
  ADD t0, t1, t0
  ANDI t0, t0, -256
  SUBW t0, t1, t0
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADDIW a0, a0, 1
  ADD s1, s3, zero
  ADD s0, a0, zero
  ADD a0, s7, zero
  JAL zero, bb1
bb24:
  ADD s1, a0, zero
  ADD s0, s2, zero
  ADD a0, s7, zero
  JAL zero, bb1
bb25:
  ADDIW s5, s5, 1
  ADDW s0, s1, s2
  ADDW s0, s0, s5
  ADD s1, s5, zero
  JAL zero, bb17
bb26:
  SLT s0, s5, a0
  JAL zero, bb19
bb27:
  ADDIW s8, a0, 1
  SLLIW a0, s8, 2
  ADD a0, s7, a0
  LW a0, 0(a0)
  SLT a0, a0, s6
  XORI a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  ADD s0, a0, zero
  ADD a0, s8, zero
  JAL zero, bb6
bb29:
  ADD a0, s8, zero
  JAL zero, bb8
bb30:
  ADDI a0, zero, 1
  SUBW s5, s5, a0
  SLLIW a0, s5, 2
  ADD a0, s7, a0
  LW a0, 0(a0)
  BLT a0, s6, bb32
  # implict jump to bb31
bb31:
  ADDIW a0, s0, 1
  ADD s0, a0, zero
  ADD a0, s5, zero
  JAL zero, bb3
bb32:
  ADD a0, s5, zero
  JAL zero, bb5
