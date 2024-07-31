.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1392
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb1
bb1:
  LW t4, 28(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s2, t5, s2
  MULW s3, s1, s1
  ADDI s4, zero, 10
  REMW s3, s3, s4
  SW s3, 0(s2)
  ADDIW t4, s1, 1
  SW t4, 24(sp)
  LUI s2, 2
  ADDIW s2, s2, 1808
  LW t4, 24(sp)
  SLT s2, t4, s2
  BNE s2, zero, bb33
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb3
bb3:
  LW t4, 20(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s5, t5, s4
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  MULW s4, s4, s4
  ADDI s6, zero, 10
  REMW s4, s4, s6
  SW s4, 0(s5)
  ADDIW t4, s3, 1
  SW t4, 16(sp)
  LUI s4, 2
  ADDIW s4, s4, 1808
  LW t4, 16(sp)
  SLT s4, t4, s4
  BNE s4, zero, bb32
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb5
bb5:
  LW t4, 12(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 176
  ADD s7, t5, s6
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s8, t5, s6
  LW s8, 0(s8)
  MULW s8, s8, s8
  ADDI s9, zero, 100
  REMW s8, s8, s9
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD s6, t4, s6
  LW s6, 0(s6)
  ADDW s6, s8, s6
  SW s6, 0(s7)
  ADDIW t4, s5, 1
  SW t4, 8(sp)
  LUI s6, 2
  ADDIW s6, s6, 1808
  LW t4, 8(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb31
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb7
bb7:
  LW t4, 4(sp)
  ADD s10, t4, zero
  LW t4, 60(sp)
  ADD s11, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, s6, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI t2, t4, 10
  BNE t2, zero, bb30
  # implict jump to bb8
bb8:
  LW t4, 48(sp)
  SLTI t2, t4, 20
  BNE t2, zero, bb25
  # implict jump to bb9
bb9:
  LW t4, 48(sp)
  SLTI t2, t4, 30
  BNE t2, zero, bb17
  # implict jump to bb10
bb10:
  LW t4, 48(sp)
  SLLIW t2, t4, 2
  ADDI a0, sp, 176
  ADD t2, a0, t2
  LW t2, 0(t2)
  ADDI a0, zero, 9
  MULW t2, t2, a0
  LW t4, 44(sp)
  ADDW t2, t4, t2
  LUI a0, 24
  ADDIW a0, a0, 1684
  REMW t2, t2, a0
  ADD t4, s10, zero
  SW t4, 56(sp)
  ADD t4, t2, zero
  SW t4, 52(sp)
  # implict jump to bb11
bb11:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LW t4, 56(sp)
  ADD s1, t4, zero
  ADD s2, s11, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LW t4, 48(sp)
  ADDIW s3, t4, 1
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s4, s3, s4
  BNE s4, zero, bb16
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD a0, s0, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  LUI t0, 29
  ADDIW t0, t0, 1392
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb16:
  ADD s6, s3, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  ADD t4, s2, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb7
bb17:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LUI a2, 1
  ADDIW a2, a2, 904
  ADD t4, zero, a2
  SW t4, 40(sp)
  # implict jump to bb18
bb18:
  LW t4, 40(sp)
  ADD a3, t4, zero
  LW t4, 0(sp)
  ADD a4, t4, zero
  LUI a5, 1
  ADDIW a5, a5, -1863
  SLT a5, a5, a3
  BNE a5, zero, bb24
  # implict jump to bb19
bb19:
  LW t4, 48(sp)
  SLLIW a5, t4, 2
  LUI a6, 20
  ADDIW a6, a6, -1744
  ADD a6, a6, sp
  ADD a5, a6, a5
  LW a5, 0(a5)
  ADDW a5, a4, a5
  SLLIW a6, a3, 2
  ADDI t5, sp, 176
  ADD a6, t5, a6
  LW a6, 0(a6)
  ADDW a5, a5, a6
  LUI a6, 3
  ADDIW a6, a6, 1045
  REMW a5, a5, a6
  ADDIW a6, a3, 2
  # implict jump to bb20
bb20:
  ADD t4, a5, zero
  SW t4, 36(sp)
  ADD t4, a6, zero
  SW t4, 32(sp)
  LUI a3, 2
  ADDIW a3, a3, 1808
  LW t4, 32(sp)
  SLT a3, t4, a3
  BNE a3, zero, bb23
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  LW t4, 36(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb11
bb23:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb18
bb24:
  LW t4, 48(sp)
  SLLIW a7, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD a7, t5, a7
  LW a7, 0(a7)
  ADDW a4, a4, a7
  SLLIW a7, a3, 2
  LUI a6, 20
  ADDIW a6, a6, -1744
  ADD a6, a6, sp
  ADD a7, a6, a7
  LW a7, 0(a7)
  SUBW a4, a4, a7
  ADDIW a3, a3, 1
  ADD a6, a3, zero
  ADD a5, a4, zero
  JAL zero, bb20
bb25:
  LW t4, 48(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 176
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 44(sp)
  ADD s4, t4, zero
  LUI s5, 1
  ADDIW s5, s5, 904
  ADD s5, zero, s5
  # implict jump to bb26
bb26:
  ADD s9, s5, zero
  ADD s8, s4, zero
  ADDW s8, s8, s3
  SLLIW s7, s9, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s7, 0(s7)
  SUBW s7, s8, s7
  ADDIW s8, s9, 1
  LUI s9, 2
  ADDIW s9, s9, 1808
  SLT s9, s8, s9
  BNE s9, zero, bb29
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD a0, s7, zero
  CALL putint
  ADD s1, s10, zero
  ADD s2, s8, zero
  ADD s0, s7, zero
  JAL zero, bb12
bb29:
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb26
bb30:
  LW t4, 48(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 176
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 44(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s0, s3, zero
  JAL zero, bb13
bb31:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb5
bb32:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb3
bb33:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb1
