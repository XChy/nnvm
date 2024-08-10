.global main
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -144
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  LA a0, a
  LA s1, n
  LA s3, n
  LA s8, a
  ADD s7, zero, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 59
  SW s0, 0(s1)
  CALL _sysy_starttime
  LW s3, 0(s3)
  SRAIW s5, s3, 31
  ADDIW s1, s3, -1
  SRLIW s5, s5, 31
  ADD a0, s3, s5
  SRAIW s9, a0, 1
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW s2, s7, 2
  SW s1, 4(sp)
  ADD s10, s8, s2
  LW a0, 4(sp)
  ADDIW s6, a0, 1
  LW a0, 0(s10)
  SW a0, 8(sp)
  ADD s1, s7, zero
  ADD s5, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  # implict jump to bb3
bb3:   # loop depth 3
  BLT s1, s6, bb30
  # implict jump to bb4
bb4:   # loop depth 3
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 3
  BLT s1, s6, bb27
  # implict jump to bb7
bb7:   # loop depth 3
  # implict jump to bb8
bb8:   # loop depth 2
  XOR s2, s1, s6
  SLLIW s3, s1, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb16
  # implict jump to bb9
bb9:   # loop depth 2
  ADD a0, s8, s3
  SD a0, 120(sp)
  SLLIW s2, s6, 2
  LD a0, 120(sp)
  LW s11, 0(a0)
  ADD a0, s8, s2
  SD a0, 128(sp)
  ADD s4, zero, zero
  ADD s3, zero, zero
  LD a0, 128(sp)
  LW a0, 0(a0)
  SW a0, 0(sp)
  LW a0, 0(sp)
  LD s0, 120(sp)
  SW a0, 0(s0)
  LD a0, 128(sp)
  SW s11, 0(a0)
  # implict jump to bb10
bb10:   # loop depth 3
  BLT s4, s1, bb15
  # implict jump to bb11
bb11:   # loop depth 3
  ADD s2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 3
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:   # loop depth 2
  JAL zero, bb2
bb14:   # loop depth 3
  ADDW s3, s3, s1
  ADDIW s4, s4, 1
  ADDW s3, s3, s4
  JAL zero, bb10
bb15:   # loop depth 3
  SLT s2, s4, s6
  JAL zero, bb12
bb16:   # loop depth 1
  ADD s4, s8, s3
  LW a0, 8(sp)
  SW a0, 0(s10)
  LW s5, 0(s4)
  ADD s3, zero, zero
  ADD s2, zero, zero
  SW s5, 0(s10)
  LW a0, 8(sp)
  SW a0, 0(s4)
  # implict jump to bb17
bb17:   # loop depth 2
  BLT s3, s7, bb26
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  BNE s0, zero, bb25
  # implict jump to bb20
bb20:   # loop depth 1
  BLT s9, s1, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  BLT s1, s9, bb23
  # implict jump to bb22
bb22:   # loop depth 0
  LA s1, n
  ADDI a0, zero, 61
  LA s0, a
  LA s2, n
  LA s3, a
  CALL _sysy_stoptime
  LW a0, 0(s1)
  ADD a1, s0, zero
  CALL putarray
  LW t0, 0(s2)
  SRAIW t1, t0, 31
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW t0, t0, 1
  SLLIW t0, t0, 2
  ADD t0, s3, t0
  LW t0, 0(t0)
  SLLI t1, t0, 1
  SRLI t1, t1, 56
  ADD t1, t0, t1
  ANDI t1, t1, -256
  SUBW a0, t0, t1
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb23:   # loop depth 1
  ADDIW s7, s1, 1
  LW s1, 4(sp)
  JAL zero, bb1
bb24:   # loop depth 1
  JAL zero, bb1
bb25:   # loop depth 2
  ADDW s2, s2, s7
  ADDIW s3, s3, 1
  ADDW s2, s2, s3
  JAL zero, bb17
bb26:   # loop depth 2
  SLT s0, s3, s1
  JAL zero, bb19
bb27:   # loop depth 3
  SLLIW s3, s1, 2
  ADDIW s1, s1, 1
  ADD s2, s8, s3
  LW s2, 4(s2)
  LW a0, 8(sp)
  SLT s2, s2, a0
  XORI s2, s2, 1
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 3
  ADDIW s5, s5, -1
  JAL zero, bb6
bb29:   # loop depth 2
  JAL zero, bb8
bb30:   # loop depth 3
  SLLIW s3, s6, 2
  ADDIW s6, s6, -1
  ADD s3, s8, s3
  LW s3, -4(s3)
  LW a0, 8(sp)
  BLT s3, a0, bb32
  # implict jump to bb31
bb31:   # loop depth 3
  ADDIW s5, s5, 1
  JAL zero, bb3
bb32:   # loop depth 2
  JAL zero, bb5
