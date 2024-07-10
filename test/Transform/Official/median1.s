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
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SLLIW s4, s1, 2
  ADD s4, s0, s4
  LW s5, 0(s4)
  ADDIW s6, s2, 1
  ADD s7, zero, zero
  ADD s6, s6, zero
  ADD s8, s1, zero
  # implict jump to bb1
bb1:
  ADD s9, s8, zero
  ADD s10, s6, zero
  ADD s11, s7, zero
  ADD s11, s11, zero
  ADD s10, s10, zero
  # implict jump to bb2
bb2:
  ADD t0, s10, zero
  ADD t1, s11, zero
  SLT t2, s9, t0
  BNE t2, zero, bb29
  # implict jump to bb3
bb3:
  ADD t2, t0, zero
  # implict jump to bb4
bb4:
  ADD t2, t2, zero
  ADD s10, t1, zero
  ADD s9, s9, zero
  # implict jump to bb5
bb5:
  ADD s11, s9, zero
  ADD t4, s10, zero
  SW t4, 4(sp)
  SLT t1, s11, t2
  BNE t1, zero, bb26
  # implict jump to bb6
bb6:
  ADD t1, s11, zero
  # implict jump to bb7
bb7:
  ADD t4, t1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XOR s9, t4, t2
  SLTIU s9, s9, 1
  BNE s9, zero, bb15
  # implict jump to bb8
bb8:
  LW t4, 0(sp)
  SLLIW s9, t4, 2
  ADD s9, s0, s9
  LW s10, 0(s9)
  SLLIW s11, t2, 2
  ADD s11, s0, s11
  LW a4, 0(s11)
  SW a4, 0(s9)
  SW s10, 0(s11)
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  ADD a4, s9, zero
  LW t4, 0(sp)
  SLT a5, s11, t4
  BNE a5, zero, bb14
  # implict jump to bb10
bb10:
  ADD a5, zero, zero
  # implict jump to bb11
bb11:
  ADD a5, a5, zero
  BNE a5, zero, bb13
  # implict jump to bb12
bb12:
  LW t4, 4(sp)
  ADD s7, t4, zero
  ADD s6, t2, zero
  LW t4, 0(sp)
  ADD s8, t4, zero
  JAL zero, bb1
bb13:
  ADDIW s6, s11, 1
  LW t4, 0(sp)
  ADDW s7, a4, t4
  ADDW s7, s7, s6
  ADD s9, s7, zero
  ADD s10, s6, zero
  JAL zero, bb9
bb14:
  SLT a6, s11, t2
  ADD a5, a6, zero
  JAL zero, bb11
bb15:
  SW s5, 0(s4)
  LW s5, 0(s4)
  LW t4, 0(sp)
  SLLIW s6, t4, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  SW s7, 0(s4)
  SW s5, 0(s6)
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
  ADD s8, s8, zero
  BNE s8, zero, bb24
  # implict jump to bb19
bb19:
  LW t4, 0(sp)
  SLT s8, s3, t4
  BNE s8, zero, bb23
  # implict jump to bb20
bb20:
  LW t4, 0(sp)
  SLT s8, t4, s3
  BNE s8, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 4(sp)
  ADD a0, t4, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb22:
  LW t4, 0(sp)
  ADDIW s8, t4, 1
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s8, a0, zero
  ADD a0, s8, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADD a0, s0, zero
  ADD a1, s1, zero
  LW t4, 0(sp)
  ADD a2, t4, zero
  ADD a3, s3, zero
  CALL median
  ADD s8, a0, zero
  ADD a0, s8, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb24:
  ADDIW s6, s6, 1
  ADDW s7, s7, s1
  ADDW s7, s7, s6
  ADD s4, s7, zero
  ADD s5, s6, zero
  JAL zero, bb16
bb25:
  LW t4, 0(sp)
  SLT s9, s6, t4
  ADD s8, s9, zero
  JAL zero, bb18
bb26:
  ADDIW s11, s11, 1
  SLLIW a4, s11, 2
  ADD a4, s0, a4
  LW a4, 0(a4)
  SLT a4, a4, s5
  XORI a4, a4, 1
  BNE a4, zero, bb28
  # implict jump to bb27
bb27:
  ADDI a4, zero, 1
  LW t4, 4(sp)
  SUBW a4, t4, a4
  ADD s10, a4, zero
  ADD s9, s11, zero
  JAL zero, bb5
bb28:
  ADD t1, s11, zero
  JAL zero, bb7
bb29:
  ADDI a4, zero, 1
  SUBW t0, t0, a4
  SLLIW a4, t0, 2
  ADD a4, s0, a4
  LW a4, 0(a4)
  SLT a4, a4, s5
  BNE a4, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW a4, t1, 1
  ADD s11, a4, zero
  ADD s10, t0, zero
  JAL zero, bb2
bb31:
  ADD t2, t0, zero
  JAL zero, bb4
swap:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD a1, a1, zero
  ADD a2, a2, zero
  SLLIW s1, a1, 2
  ADD s1, s0, s1
  LW s2, 0(s1)
  SLLIW s3, a2, 2
  ADD s0, s0, s3
  LW s3, 0(s0)
  SW s3, 0(s1)
  SW s2, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb33
bb33:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLT s4, s2, a1
  BNE s4, zero, bb38
  # implict jump to bb34
bb34:
  ADD s4, zero, zero
  # implict jump to bb35
bb35:
  ADD s4, s4, zero
  BNE s4, zero, bb37
  # implict jump to bb36
bb36:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb37:
  ADDIW s2, s2, 1
  ADDW s3, s3, a1
  ADDW s3, s3, s2
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb33
bb38:
  SLT s5, s2, a2
  ADD s4, s5, zero
  JAL zero, bb35
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  ADDI s2, zero, 2
  DIVW s0, s0, s2
  LA s2, a
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL median
  ADD s0, a0, zero
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA s0, n
  LW s0, 0(s0)
  ADD a0, s0, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  SLLIW s0, s0, 2
  LA s1, a
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 256
  REMW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
meanless_calculation:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  ADD a1, a1, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb41
bb41:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s0
  BNE s5, zero, bb46
  # implict jump to bb42
bb42:
  ADD s5, zero, zero
  # implict jump to bb43
bb43:
  ADD s5, s5, zero
  BNE s5, zero, bb45
  # implict jump to bb44
bb44:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb45:
  ADDIW s3, s3, 1
  ADDW s4, s4, s0
  ADDW s4, s4, s3
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb41
bb46:
  SLT s6, s3, a1
  ADD s5, s6, zero
  JAL zero, bb43
