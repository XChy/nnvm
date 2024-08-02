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
  LW s11, 0(s3)
  ADDIW s4, s0, 1
  ADD s7, zero, zero
  ADD s5, s1, zero
  # implict jump to bb2
bb2:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s7, zero
  ADD s7, s4, zero
  ADD s4, s5, zero
  # implict jump to bb3
bb3:
  ADD s5, s7, zero
  BLT s6, s4, bb30
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  BLT s6, s4, bb27
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  XOR s7, s6, s4
  SLTIU s7, s7, 1
  BNE s7, zero, bb16
  # implict jump to bb9
bb9:
  SLLIW s7, s6, 2
  ADD s7, s2, s7
  LW s8, 0(s7)
  SLLIW s9, s4, 2
  ADD s9, s2, s9
  LW s10, 0(s9)
  SW s10, 0(s7)
  SW s8, 0(s9)
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  BLT s8, s6, bb15
  # implict jump to bb11
bb11:
  ADD s9, zero, zero
  # implict jump to bb12
bb12:
  BNE s9, zero, bb14
  # implict jump to bb13
bb13:
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb2
bb14:
  ADDIW s8, s8, 1
  ADDW s7, s7, s6
  ADDW s7, s7, s8
  JAL zero, bb10
bb15:
  SLT s9, s8, s4
  JAL zero, bb12
bb16:
  SW s11, 0(s3)
  SLLIW s4, s6, 2
  ADD s4, s2, s4
  LW s5, 0(s4)
  SW s5, 0(s3)
  SW s11, 0(s4)
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  BLT s4, s1, bb26
  # implict jump to bb18
bb18:
  ADD s5, zero, zero
  # implict jump to bb19
bb19:
  BNE s5, zero, bb25
  # implict jump to bb20
bb20:
  BLT a0, s6, bb24
  # implict jump to bb21
bb21:
  BLT s6, a0, bb23
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
  SUBW t0, t0, t1
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
  ADDIW s1, s6, 1
  JAL zero, bb1
bb24:
  ADD s0, s6, zero
  JAL zero, bb1
bb25:
  ADDIW s4, s4, 1
  ADDW s3, s3, s1
  ADDW s3, s3, s4
  JAL zero, bb17
bb26:
  SLT s5, s4, s6
  JAL zero, bb19
bb27:
  ADDIW s6, s6, 1
  SLLIW s7, s6, 2
  ADD s7, s2, s7
  LW s7, 0(s7)
  SLT s7, s7, s11
  XORI s7, s7, 1
  BNE s7, zero, bb29
  # implict jump to bb28
bb28:
  ADDI s7, zero, 1
  SUBW s5, s5, s7
  JAL zero, bb6
bb29:
  JAL zero, bb8
bb30:
  ADDI s7, zero, 1
  SUBW s4, s4, s7
  SLLIW s7, s4, 2
  ADD s7, s2, s7
  LW s7, 0(s7)
  BLT s7, s11, bb32
  # implict jump to bb31
bb31:
  ADDIW s5, s5, 1
  ADD s7, s5, zero
  JAL zero, bb3
bb32:
  JAL zero, bb5
