.global median
.global swap
.global main
.global meanless_calculation
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
median:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD s8, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SLLIW s4, s1, 2
  ADD s5, s0, s4
  LW s4, 0(s5)
  ADDIW s6, s2, 1
  ADD s7, zero, zero
  ADD s8, s6, zero
  ADD s6, s1, zero
  # implict jump to bb1
bb1:
  ADD s9, s6, zero
  ADD s10, s8, zero
  ADD s11, s7, zero
  ADD t0, s11, zero
  ADD s11, s10, zero
  # implict jump to bb2
bb2:
  ADD s10, s11, zero
  ADD t1, t0, zero
  SLT t2, s9, s10
  BNE t2, zero, bb29
  # implict jump to bb3
bb3:
  ADD t2, s10, zero
  # implict jump to bb4
bb4:
  ADD s10, t2, zero
  ADD s11, t1, zero
  ADD t0, s9, zero
  # implict jump to bb5
bb5:
  ADD s9, t0, zero
  ADD t4, s11, zero
  SW t4, 0(sp)
  SLT t2, s9, s10
  BNE t2, zero, bb26
  # implict jump to bb6
bb6:
  ADD t2, s9, zero
  # implict jump to bb7
bb7:
  ADD s9, t2, zero
  XOR s11, s9, s10
  SLTIU t0, s11, 1
  BNE t0, zero, bb15
  # implict jump to bb8
bb8:
  SLLIW s11, s9, 2
  ADD t0, s0, s11
  LW s11, 0(t0)
  SLLIW t2, s10, 2
  ADD a4, s0, t2
  LW t2, 0(a4)
  SW t2, 0(t0)
  SW s11, 0(a4)
  ADD s11, zero, zero
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  ADD t2, t0, zero
  ADD a4, s11, zero
  SLT a5, t2, s9
  BNE a5, zero, bb14
  # implict jump to bb10
bb10:
  ADD a5, zero, zero
  # implict jump to bb11
bb11:
  ADD a6, a5, zero
  BNE a6, zero, bb13
  # implict jump to bb12
bb12:
  LW t4, 0(sp)
  ADD s7, t4, zero
  ADD s8, s10, zero
  ADD s6, s9, zero
  JAL zero, bb1
bb13:
  ADDIW s6, t2, 1
  ADDW s7, a4, s9
  ADDW s8, s7, s6
  ADD s11, s8, zero
  ADD t0, s6, zero
  JAL zero, bb9
bb14:
  SLT a6, t2, s10
  ADD a5, a6, zero
  JAL zero, bb11
bb15:
  SW s4, 0(s5)
  LW s4, 0(s5)
  SLLIW s6, s9, 2
  ADD s7, s0, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  SW s4, 0(s7)
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s6, s1
  BNE s8, zero, bb25
  # implict jump to bb17
bb17:
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  ADD s10, s8, zero
  BNE s10, zero, bb24
  # implict jump to bb19
bb19:
  SLT s8, s3, s9
  BNE s8, zero, bb23
  # implict jump to bb20
bb20:
  SLT s8, s9, s3
  BNE s8, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD ra, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb22:
  ADDIW s8, s9, 1
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s8, a0, zero
  ADD a0, s8, zero
  LD ra, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  ADD a3, s3, zero
  CALL median
  ADD s8, a0, zero
  ADD a0, s8, zero
  LD ra, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb24:
  ADDIW s8, s6, 1
  ADDW s6, s7, s1
  ADDW s7, s6, s8
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb16
bb25:
  SLT s10, s6, s9
  ADD s8, s10, zero
  JAL zero, bb18
bb26:
  ADDIW a4, s9, 1
  SLLIW s9, a4, 2
  ADD a5, s0, s9
  LW s9, 0(a5)
  SLT a5, s9, s4
  XORI s9, a5, 1
  BNE s9, zero, bb28
  # implict jump to bb27
bb27:
  ADDI s9, zero, 1
  LW t4, 0(sp)
  SUBW a5, t4, s9
  ADD s11, a5, zero
  ADD t0, a4, zero
  JAL zero, bb5
bb28:
  ADD t2, a4, zero
  JAL zero, bb7
bb29:
  ADDI a4, zero, 1
  SUBW a5, s10, a4
  SLLIW s10, a5, 2
  ADD a4, s0, s10
  LW s10, 0(a4)
  SLT a4, s10, s4
  BNE a4, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW s10, t1, 1
  ADD t0, s10, zero
  ADD s11, a5, zero
  JAL zero, bb2
bb31:
  ADD t2, a5, zero
  JAL zero, bb4
swap:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLLIW s3, s1, 2
  ADD s4, s0, s3
  LW s3, 0(s4)
  SLLIW s5, s2, 2
  ADD s6, s0, s5
  LW s0, 0(s6)
  SW s0, 0(s4)
  SW s3, 0(s6)
  ADD s0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb33
bb33:
  ADD s4, s3, zero
  ADD s5, s0, zero
  SLT s6, s4, s1
  BNE s6, zero, bb38
  # implict jump to bb34
bb34:
  ADD s6, zero, zero
  # implict jump to bb35
bb35:
  ADD s7, s6, zero
  BNE s7, zero, bb37
  # implict jump to bb36
bb36:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb37:
  ADDIW s6, s4, 1
  ADDW s4, s5, s1
  ADDW s5, s4, s6
  ADD s0, s5, zero
  ADD s3, s6, zero
  JAL zero, bb33
bb38:
  SLT s7, s4, s2
  ADD s6, s7, zero
  JAL zero, bb35
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADDI s0, zero, 2
  DIVW s3, s1, s0
  LA s0, a
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s0, a0, zero
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA s0, n
  LW s1, 0(s0)
  ADD a0, s1, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  SLLIW s0, s2, 2
  LA s1, a
  ADD s2, s1, s0
  LW s0, 0(s2)
  ADDI s1, zero, 256
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
meanless_calculation:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb41
bb41:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s4, s0
  BNE s6, zero, bb46
  # implict jump to bb42
bb42:
  ADD s6, zero, zero
  # implict jump to bb43
bb43:
  ADD s7, s6, zero
  BNE s7, zero, bb45
  # implict jump to bb44
bb44:
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb45:
  ADDIW s6, s4, 1
  ADDW s4, s5, s0
  ADDW s5, s4, s6
  ADD s2, s5, zero
  ADD s3, s6, zero
  JAL zero, bb41
bb46:
  SLT s7, s4, s1
  ADD s6, s7, zero
  JAL zero, bb43
