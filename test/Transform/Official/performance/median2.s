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
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  ADD s2, a0, zero
  ADD s0, zero, zero
  LA a0, a
  # implict jump to bb1
bb1:
  ADD s10, a0, zero
  ADD s3, s0, zero
  ADD s4, s1, zero
  ADD s5, s2, zero
  SLLIW a0, s3, 2
  ADD s9, s10, a0
  LW s2, 0(s9)
  ADDIW a0, s4, 1
  ADD s7, zero, zero
  ADD s6, a0, zero
  ADD a0, s3, zero
  # implict jump to bb2
bb2:
  ADD s1, a0, zero
  ADD a0, s7, zero
  ADD s0, a0, zero
  ADD a0, s6, zero
  # implict jump to bb3
bb3:
  ADD s6, a0, zero
  BLT s1, s6, bb30
  # implict jump to bb4
bb4:
  ADD a0, s6, zero
  # implict jump to bb5
bb5:
  ADD s11, a0, zero
  ADD a0, s1, zero
  # implict jump to bb6
bb6:
  ADD s6, s0, zero
  BLT a0, s11, bb27
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADD s0, a0, zero
  XOR a0, s0, s11
  SLTIU a0, a0, 1
  BNE a0, zero, bb16
  # implict jump to bb9
bb9:
  SLLIW a0, s0, 2
  ADD s8, s10, a0
  LW a0, 0(s8)
  SLLIW s1, s11, 2
  ADD s7, s10, s1
  LW s1, 0(s7)
  SW s1, 0(s8)
  SW a0, 0(s7)
  ADD s7, zero, zero
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, a0, zero
  BLT s1, s0, bb15
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  BNE a0, zero, bb14
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  ADD s6, s11, zero
  ADD a0, s0, zero
  JAL zero, bb2
bb14:
  ADDIW a0, s1, 1
  ADDW s1, s7, s0
  ADDW s1, s1, a0
  ADD s7, s1, zero
  JAL zero, bb10
bb15:
  SLT a0, s1, s11
  JAL zero, bb12
bb16:
  SW s2, 0(s9)
  SLLIW a0, s0, 2
  ADD a0, s10, a0
  LW s1, 0(a0)
  SW s1, 0(s9)
  SW s2, 0(a0)
  ADD s2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  ADD s1, a0, zero
  BLT s1, s3, bb26
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  BNE a0, zero, bb25
  # implict jump to bb20
bb20:
  BLT s5, s0, bb24
  # implict jump to bb21
bb21:
  BLT s0, s5, bb23
  # implict jump to bb22
bb22:
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  LA a1, a
  CALL putarray
  LA t0, n
  LW t1, 0(t0)
  SRAIW t0, t1, 31
  SRLIW t0, t0, 31
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  SLLIW t1, t0, 2
  LA t0, a
  ADD t0, t0, t1
  LW t1, 0(t0)
  ADDI t0, zero, 256
  REMW t0, t1, t0
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
  ADDIW a0, s0, 1
  ADD s2, s5, zero
  ADD s1, s4, zero
  ADD s0, a0, zero
  ADD a0, s10, zero
  JAL zero, bb1
bb24:
  ADD s2, s5, zero
  ADD s1, s0, zero
  ADD s0, s3, zero
  ADD a0, s10, zero
  JAL zero, bb1
bb25:
  ADDIW s1, s1, 1
  ADDW a0, s2, s3
  ADDW a0, a0, s1
  ADD s2, a0, zero
  ADD a0, s1, zero
  JAL zero, bb17
bb26:
  SLT a0, s1, s0
  JAL zero, bb19
bb27:
  ADDIW s1, a0, 1
  SLLIW a0, s1, 2
  ADD a0, s10, a0
  LW a0, 0(a0)
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 1
  SUBW a0, s6, a0
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb6
bb29:
  ADD a0, s1, zero
  JAL zero, bb8
bb30:
  ADDI a0, zero, 1
  SUBW s6, s6, a0
  SLLIW a0, s6, 2
  ADD a0, s10, a0
  LW a0, 0(a0)
  BLT a0, s2, bb32
  # implict jump to bb31
bb31:
  ADDIW a0, s0, 1
  ADD s0, a0, zero
  ADD a0, s6, zero
  JAL zero, bb3
bb32:
  ADD a0, s6, zero
  JAL zero, bb5
