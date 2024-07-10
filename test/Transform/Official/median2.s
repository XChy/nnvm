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
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s5, 120(sp)
  SD s9, 128(sp)
  SD s0, 136(sp)
  SD s7, 144(sp)
  SD s10, 152(sp)
  SD s8, 160(sp)
  SD s4, 168(sp)
  SD s6, 176(sp)
  SD s11, 184(sp)
  ADD t4, a0, zero
  SD t4, 40(sp)
  ADD t4, a1, zero
  SW t4, 32(sp)
  ADD t4, a2, zero
  SW t4, 28(sp)
  ADD t4, a3, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLLIW s4, t4, 2
  LD t3, 40(sp)
  ADD t4, t3, s4
  SD t4, 16(sp)
  LD t3, 16(sp)
  LW t4, 0(t3)
  SW t4, 8(sp)
  LW t4, 28(sp)
  ADDIW s6, t4, 1
  ADD s7, zero, zero
  ADD s8, s6, zero
  LW t4, 32(sp)
  ADD s6, t4, zero
  # implict jump to bb1
bb1:
  ADD t4, s6, zero
  SW t4, 4(sp)
  ADD s10, s8, zero
  ADD s11, s7, zero
  ADD t4, s11, zero
  SW t4, 80(sp)
  ADD t4, s10, zero
  SW t4, 60(sp)
  # implict jump to bb2
bb2:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  LW t3, 52(sp)
  SLT t2, t4, t3
  BNE t2, zero, bb29
  # implict jump to bb3
bb3:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb4
bb4:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  # implict jump to bb5
bb5:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 64(sp)
  LW t3, 76(sp)
  SLT s9, t4, t3
  BNE s9, zero, bb26
  # implict jump to bb6
bb6:
  LW t4, 64(sp)
  ADD s4, t4, zero
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  LW t4, 76(sp)
  XOR s3, s5, t4
  SLTIU s2, s3, 1
  BNE s2, zero, bb15
  # implict jump to bb8
bb8:
  SLLIW s0, s5, 2
  LD t4, 40(sp)
  ADD s1, t4, s0
  LW s0, 0(s1)
  LW t4, 76(sp)
  SLLIW s2, t4, 2
  LD t4, 40(sp)
  ADD s3, t4, s2
  LW s2, 0(s3)
  SW s2, 0(s1)
  SW s0, 0(s3)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLT s10, s2, s5
  BNE s10, zero, bb14
  # implict jump to bb10
bb10:
  ADD s11, zero, zero
  # implict jump to bb11
bb11:
  ADD s10, s11, zero
  BNE s10, zero, bb13
  # implict jump to bb12
bb12:
  LW t4, 84(sp)
  ADD s7, t4, zero
  LW t4, 76(sp)
  ADD s8, t4, zero
  ADD s6, s5, zero
  JAL zero, bb1
bb13:
  ADDIW s10, s2, 1
  ADDW t0, s3, s5
  ADDW t1, t0, s10
  ADD s0, t1, zero
  ADD s1, s10, zero
  JAL zero, bb9
bb14:
  LW t4, 76(sp)
  SLT s10, s2, t4
  ADD s11, s10, zero
  JAL zero, bb11
bb15:
  LW t4, 8(sp)
  LD t3, 16(sp)
  SW t4, 0(t3)
  LD t4, 16(sp)
  LW s2, 0(t4)
  SLLIW s3, s5, 2
  LD t4, 40(sp)
  ADD s1, t4, s3
  LW s3, 0(s1)
  LD t4, 16(sp)
  SW s3, 0(t4)
  SW s2, 0(s1)
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD s3, s2, zero
  ADD s0, s1, zero
  LW t4, 32(sp)
  SLT t2, s3, t4
  BNE t2, zero, bb25
  # implict jump to bb17
bb17:
  ADD s10, zero, zero
  # implict jump to bb18
bb18:
  ADD t2, s10, zero
  BNE t2, zero, bb24
  # implict jump to bb19
bb19:
  LW t4, 24(sp)
  SLT s1, t4, s5
  BNE s1, zero, bb23
  # implict jump to bb20
bb20:
  LW t4, 24(sp)
  SLT s1, s5, t4
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 84(sp)
  ADD a0, t4, zero
  LD ra, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s5, 120(sp)
  LD s9, 128(sp)
  LD s0, 136(sp)
  LD s7, 144(sp)
  LD s10, 152(sp)
  LD s8, 160(sp)
  LD s4, 168(sp)
  LD s6, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb22:
  ADDIW s1, s5, 1
  LD t4, 40(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  LW t4, 28(sp)
  ADD a2, t4, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s5, 120(sp)
  LD s9, 128(sp)
  LD s0, 136(sp)
  LD s7, 144(sp)
  LD s10, 152(sp)
  LD s8, 160(sp)
  LD s4, 168(sp)
  LD s6, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb23:
  LD t4, 40(sp)
  ADD a0, t4, zero
  LW t4, 32(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  LW t4, 24(sp)
  ADD a3, t4, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s5, 120(sp)
  LD s9, 128(sp)
  LD s0, 136(sp)
  LD s7, 144(sp)
  LD s10, 152(sp)
  LD s8, 160(sp)
  LD s4, 168(sp)
  LD s6, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb24:
  ADDIW t2, s3, 1
  LW t4, 32(sp)
  ADDW a4, s0, t4
  ADDW s11, a4, t2
  ADD s1, s11, zero
  ADD s2, t2, zero
  JAL zero, bb16
bb25:
  SLT t2, s3, s5
  ADD s10, t2, zero
  JAL zero, bb18
bb26:
  LW t4, 64(sp)
  ADDIW s9, t4, 1
  SLLIW s4, s9, 2
  LD t4, 40(sp)
  ADD s5, t4, s4
  LW s4, 0(s5)
  LW t4, 8(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  BNE s4, zero, bb28
  # implict jump to bb27
bb27:
  ADDI s0, zero, 1
  LW t4, 84(sp)
  SUBW s1, t4, s0
  ADD t4, s1, zero
  SW t4, 72(sp)
  ADD t4, s9, zero
  SW t4, 68(sp)
  JAL zero, bb5
bb28:
  ADD s4, s9, zero
  JAL zero, bb7
bb29:
  ADDI t2, zero, 1
  LW t3, 52(sp)
  SUBW t4, t3, t2
  SW t4, 56(sp)
  LW t4, 56(sp)
  SLLIW t2, t4, 2
  LD t4, 40(sp)
  ADD a5, t4, t2
  LW t2, 0(a5)
  LW t4, 8(sp)
  SLT a5, t2, t4
  BNE a5, zero, bb31
  # implict jump to bb30
bb30:
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb2
bb31:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb4
swap:
  ADDI sp, sp, -96
  SD s7, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s9, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
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
  ADD s7, zero, zero
  # implict jump to bb35
bb35:
  ADD s6, s7, zero
  BNE s6, zero, bb37
  # implict jump to bb36
bb36:
  ADD a0, s5, zero
  LD s7, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s9, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb37:
  ADDIW s6, s4, 1
  ADDW s8, s5, s1
  ADDW s9, s8, s6
  ADD s0, s9, zero
  ADD s3, s6, zero
  JAL zero, bb33
bb38:
  SLT s6, s4, s2
  ADD s7, s6, zero
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
  ADDI sp, sp, -96
  SD s7, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s8, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s9, 72(sp)
  SD ra, 80(sp)
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
  ADD s7, zero, zero
  # implict jump to bb43
bb43:
  ADD s6, s7, zero
  BNE s6, zero, bb45
  # implict jump to bb44
bb44:
  ADD a0, s5, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s8, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s9, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb45:
  ADDIW s6, s4, 1
  ADDW s8, s5, s0
  ADDW s9, s8, s6
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb41
bb46:
  SLT s6, s4, s1
  ADD s7, s6, zero
  JAL zero, bb43
