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
  LA s0, n
  SW a0, 0(s0)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA a0, n
  LW a0, 0(a0)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  SRAIW s1, a0, 31
  SRLIW s1, s1, 31
  ADD a0, a0, s1
  SRAIW a0, a0, 1
  ADD s1, zero, zero
  LA s2, a
  # implict jump to bb1
bb1:
  SLLIW s3, s1, 2
  ADD s3, s2, s3
  LW s4, 0(s3)
  ADDIW s5, s0, 1
  ADD s6, zero, zero
  ADD s7, s1, zero
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  BLT s7, s5, bb30
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  BLT s7, s5, bb27
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  XOR s8, s7, s5
  SLTIU s8, s8, 1
  BNE s8, zero, bb16
  # implict jump to bb9
bb9:
  SLLIW s8, s7, 2
  ADD s8, s2, s8
  LW s11, 0(s8)
  SLLIW s9, s5, 2
  ADD s9, s2, s9
  LW s10, 0(s9)
  SW s10, 0(s8)
  SW s11, 0(s9)
  ADD s9, zero, zero
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  ADD s10, s9, zero
  BLT s8, s7, bb15
  # implict jump to bb11
bb11:
  ADD s9, zero, zero
  # implict jump to bb12
bb12:
  BNE s9, zero, bb14
  # implict jump to bb13
bb13:
  JAL zero, bb2
bb14:
  ADDIW s8, s8, 1
  ADDW s9, s10, s7
  ADDW s9, s9, s8
  JAL zero, bb10
bb15:
  SLT s9, s8, s5
  JAL zero, bb12
bb16:
  SW s4, 0(s3)
  SLLIW s5, s7, 2
  ADD s5, s2, s5
  LW s6, 0(s5)
  SW s6, 0(s3)
  SW s4, 0(s5)
  ADD s5, zero, zero
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  BLT s4, s1, bb26
  # implict jump to bb18
bb18:
  ADD s3, zero, zero
  # implict jump to bb19
bb19:
  BNE s3, zero, bb25
  # implict jump to bb20
bb20:
  BLT a0, s7, bb24
  # implict jump to bb21
bb21:
  BLT s7, a0, bb23
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
  SLLIW t0, t0, 2
  LA t1, a
  ADD t0, t1, t0
  LW t0, 0(t0)
  SLLI t1, t0, 1
  SRLI t1, t1, 56
  ADD t1, t0, t1
  ANDI t1, t1, -256
  SUBW a0, t0, t1
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
  ADDIW s1, s7, 1
  JAL zero, bb1
bb24:
  ADD s0, s7, zero
  JAL zero, bb1
bb25:
  ADDIW s4, s4, 1
  ADDW s3, s5, s1
  ADDW s5, s3, s4
  JAL zero, bb17
bb26:
  SLT s3, s4, s7
  JAL zero, bb19
bb27:
  ADDIW s7, s7, 1
  SLLIW s8, s7, 2
  ADD s8, s2, s8
  LW s8, 0(s8)
  SLT s8, s8, s4
  XORI s8, s8, 1
  BNE s8, zero, bb29
  # implict jump to bb28
bb28:
  ADDI s8, zero, 1
  SUBW s6, s6, s8
  JAL zero, bb6
bb29:
  JAL zero, bb8
bb30:
  ADDI s8, zero, 1
  SUBW s5, s5, s8
  SLLIW s8, s5, 2
  ADD s8, s2, s8
  LW s8, 0(s8)
  BLT s8, s4, bb32
  # implict jump to bb31
bb31:
  ADDIW s6, s6, 1
  JAL zero, bb3
bb32:
  JAL zero, bb5
