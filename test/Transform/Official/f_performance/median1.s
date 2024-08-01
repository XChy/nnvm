.global main
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -160
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s9, 80(sp)
  SD s7, 96(sp)
  SD s5, 112(sp)
  SD s10, 120(sp)
  SD s6, 128(sp)
  SD s8, 136(sp)
  SD s11, 144(sp)
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
  SRAIW s2, s0, 31
  SRLIW s2, s2, 31
  ADD s0, s0, s2
  SRAIW s0, s0, 1
  ADD t4, s0, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  LA s3, a
  ADD t4, s3, zero
  SD t4, 88(sp)
  # implict jump to bb1
bb1:
  LD t3, 88(sp)
  ADD t4, t3, zero
  SD t4, 104(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 0(sp)
  SLLIW s8, t4, 2
  LD t4, 104(sp)
  ADD s8, t4, s8
  LW t4, 0(s8)
  SW t4, 28(sp)
  LW t4, 4(sp)
  ADDIW s10, t4, 1
  ADD s11, zero, zero
  LW t4, 0(sp)
  ADD s4, t4, zero
  # implict jump to bb2
bb2:
  ADD s5, s4, zero
  ADD s6, s10, zero
  ADD s7, s11, zero
  # implict jump to bb3
bb3:
  ADD s3, s6, zero
  ADD s2, s7, zero
  BLT s5, s3, bb30
  # implict jump to bb4
bb4:
  ADD s1, s3, zero
  # implict jump to bb5
bb5:
  ADD s0, s2, zero
  ADD s2, s5, zero
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  ADD s5, s0, zero
  BLT s3, s1, bb27
  # implict jump to bb7
bb7:
  ADD s6, s3, zero
  # implict jump to bb8
bb8:
  ADD t4, s6, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  XOR s0, t4, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb16
  # implict jump to bb9
bb9:
  LW t4, 24(sp)
  SLLIW s0, t4, 2
  LD t4, 104(sp)
  ADD s0, t4, s0
  LW s2, 0(s0)
  SLLIW s3, s1, 2
  LD t4, 104(sp)
  ADD s3, t4, s3
  LW s7, 0(s3)
  SW s7, 0(s0)
  SW s2, 0(s3)
  ADD s0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  ADD s7, s0, zero
  LW t4, 24(sp)
  BLT s3, t4, bb15
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  BNE s6, zero, bb14
  # implict jump to bb13
bb13:
  ADD s11, s5, zero
  ADD s10, s1, zero
  LW t4, 24(sp)
  ADD s4, t4, zero
  JAL zero, bb2
bb14:
  ADDIW s3, s3, 1
  LW t4, 24(sp)
  ADDW s4, s7, t4
  ADDW s4, s4, s3
  ADD s0, s4, zero
  ADD s2, s3, zero
  JAL zero, bb10
bb15:
  SLT s9, s3, s1
  ADD s6, s9, zero
  JAL zero, bb12
bb16:
  LW t4, 28(sp)
  SW t4, 0(s8)
  LW t4, 24(sp)
  SLLIW s0, t4, 2
  LD t4, 104(sp)
  ADD s0, t4, s0
  LW s1, 0(s0)
  SW s1, 0(s8)
  LW t4, 28(sp)
  SW t4, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb17
bb17:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LW t4, 0(sp)
  BLT s2, t4, bb26
  # implict jump to bb18
bb18:
  ADD s4, zero, zero
  # implict jump to bb19
bb19:
  BNE s4, zero, bb25
  # implict jump to bb20
bb20:
  LW t4, 8(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb24
  # implict jump to bb21
bb21:
  LW t4, 24(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb23
  # implict jump to bb22
bb22:
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA s4, n
  LW s4, 0(s4)
  ADD a0, s4, zero
  LA s4, a
  ADD a1, s4, zero
  CALL putarray
  LA s4, n
  LW s4, 0(s4)
  SRAIW s5, s4, 31
  SRLIW s5, s5, 31
  ADD s4, s4, s5
  SRAIW s4, s4, 1
  SLLIW s4, s4, 2
  LA s5, a
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 256
  REMW s4, s4, s5
  ADD a0, s4, zero
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s9, 80(sp)
  LD s7, 96(sp)
  LD s5, 112(sp)
  LD s10, 120(sp)
  LD s6, 128(sp)
  LD s8, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb23:
  LW t4, 24(sp)
  ADDIW s4, t4, 1
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s4, zero
  SW t4, 12(sp)
  LD t3, 104(sp)
  ADD t4, t3, zero
  SD t4, 88(sp)
  JAL zero, bb1
bb24:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LD t3, 104(sp)
  ADD t4, t3, zero
  SD t4, 88(sp)
  JAL zero, bb1
bb25:
  ADDIW s2, s2, 1
  LW t4, 0(sp)
  ADDW s3, s3, t4
  ADDW s3, s3, s2
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb17
bb26:
  LW t4, 24(sp)
  SLT s5, s2, t4
  ADD s4, s5, zero
  JAL zero, bb19
bb27:
  ADDIW s3, s3, 1
  SLLIW s7, s3, 2
  LD t4, 104(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  LW t4, 28(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb29
  # implict jump to bb28
bb28:
  ADDI s7, zero, 1
  SUBW s7, s5, s7
  ADD s0, s7, zero
  ADD s2, s3, zero
  JAL zero, bb6
bb29:
  ADD s6, s3, zero
  JAL zero, bb8
bb30:
  ADDI s0, zero, 1
  SUBW s0, s3, s0
  SLLIW s3, s0, 2
  LD t4, 104(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 28(sp)
  BLT s3, t4, bb32
  # implict jump to bb31
bb31:
  ADDIW s3, s2, 1
  ADD s7, s3, zero
  ADD s6, s0, zero
  JAL zero, bb3
bb32:
  ADD s1, s0, zero
  JAL zero, bb5
