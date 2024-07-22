.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1392
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s3, 152(sp)
  SD s7, 160(sp)
  SD s11, 168(sp)
  ADD t4, a0, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LUI s3, 2
  ADDIW s3, s3, 1808
  LW t4, 4(sp)
  SLT s3, t4, s3
  BNE s3, zero, bb30
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb3
bb3:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LUI s5, 2
  ADDIW s5, s5, 1808
  LW t4, 52(sp)
  SLT s5, t4, s5
  BNE s5, zero, bb29
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb5
bb5:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LUI s7, 2
  ADDIW s7, s7, 1808
  LW t4, 60(sp)
  SLT s7, t4, s7
  BNE s7, zero, bb28
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb7
bb7:
  LW t4, 64(sp)
  ADD s11, t4, zero
  ADD t4, s9, zero
  SW t4, 16(sp)
  ADD t4, s8, zero
  SW t4, 40(sp)
  ADD t4, s7, zero
  SW t4, 20(sp)
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT a1, s11, a1
  BNE a1, zero, bb9
  # implict jump to bb8
bb8:
  LW t4, 16(sp)
  ADD a0, t4, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s3, 152(sp)
  LD s7, 160(sp)
  LD s11, 168(sp)
  LUI t0, 29
  ADDIW t0, t0, 1392
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  SLTI a1, s11, 10
  BNE a1, zero, bb27
  # implict jump to bb10
bb10:
  SLTI a1, s11, 20
  BNE a1, zero, bb23
  # implict jump to bb11
bb11:
  SLTI a1, s11, 30
  BNE a1, zero, bb16
  # implict jump to bb12
bb12:
  SLLIW a1, s11, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD a1, t4, a1
  LW a1, 0(a1)
  LW t4, 12(sp)
  MULW a1, a1, t4
  LW t4, 16(sp)
  ADDW a1, t4, a1
  LUI a2, 24
  ADDIW a2, a2, 1684
  REMW a1, a1, a2
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  # implict jump to bb13
bb13:
  LW t4, 0(sp)
  ADD s0, t4, zero
  LW t4, 44(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
  ADD s2, t4, zero
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDIW s3, s11, 1
  ADD s7, s1, zero
  ADD s8, s2, zero
  ADD s9, s0, zero
  ADD t4, s3, zero
  SW t4, 64(sp)
  JAL zero, bb7
bb16:
  LUI a3, 1
  ADDIW a3, a3, 904
  ADD t4, zero, a3
  SW t4, 36(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb17
bb17:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LUI a7, 2
  ADDIW a7, a7, 1808
  LW t4, 24(sp)
  SLT a7, t4, a7
  BNE a7, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 28(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb13
bb19:
  LUI s3, 1
  ADDIW s3, s3, -1863
  LW t4, 24(sp)
  SLT s3, s3, t4
  BNE s3, zero, bb22
  # implict jump to bb20
bb20:
  SLLIW s3, s11, 2
  ADDI t4, sp, 176
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 28(sp)
  ADDW s3, t4, s3
  LW t4, 24(sp)
  SLLIW s4, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD s4, t4, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  LUI s4, 3
  ADDIW s4, s4, 1045
  REMW s3, s3, s4
  LW t4, 24(sp)
  ADDIW s4, t4, 2
  # implict jump to bb21
bb21:
  ADD t4, s4, zero
  SW t4, 36(sp)
  ADD t4, s3, zero
  SW t4, 32(sp)
  JAL zero, bb17
bb22:
  SLLIW s5, s11, 2
  LUI t4, 10
  ADDIW t4, t4, -784
  ADD t4, t4, sp
  ADD s5, t4, s5
  LW s5, 0(s5)
  LW t4, 28(sp)
  ADDW s5, t4, s5
  LW t4, 24(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 176
  ADD s6, t4, s6
  LW s6, 0(s6)
  SUBW s5, s5, s6
  LW t4, 24(sp)
  ADDIW s6, t4, 1
  ADD s4, s6, zero
  ADD s3, s5, zero
  JAL zero, bb21
bb23:
  LUI s3, 1
  ADDIW s3, s3, 904
  ADD s3, zero, s3
  LW t4, 16(sp)
  ADD s4, t4, zero
  # implict jump to bb24
bb24:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LUI s10, 2
  ADDIW s10, s10, 1808
  SLT s10, s6, s10
  BNE s10, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s5, zero
  CALL putint
  LW t4, 20(sp)
  ADD s1, t4, zero
  ADD s2, s6, zero
  ADD s0, s5, zero
  JAL zero, bb14
bb26:
  SLLIW s10, s11, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s10, 0(s10)
  ADDW s5, s5, s10
  SLLIW s10, s6, 2
  ADDI t5, sp, 176
  ADD s10, t5, s10
  LW s10, 0(s10)
  SUBW s5, s5, s10
  ADDIW s6, s6, 1
  ADD s3, s6, zero
  ADD s4, s5, zero
  JAL zero, bb24
bb27:
  SLLIW s3, s11, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 16(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 20(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
  ADD s2, t4, zero
  ADD s0, s3, zero
  JAL zero, bb15
bb28:
  LW t4, 60(sp)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  ADDI t4, sp, 176
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb5
bb29:
  LW t4, 52(sp)
  SLLIW s0, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI t5, sp, 176
  ADD s0, t5, s0
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADDI s2, zero, 10
  REMW s0, s0, s2
  SW s0, 0(s1)
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb3
bb30:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 176
  ADD s0, t4, s0
  LW t4, 4(sp)
  LW t3, 4(sp)
  MULW s1, t4, t3
  ADDI s2, zero, 10
  REMW s1, s1, s2
  SW s1, 0(s0)
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1392
  ADD sp, sp, t0
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s2, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb32
bb32:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LUI s2, 2
  ADDIW s2, s2, 1808
  LW t4, 8(sp)
  SLT s2, t4, s2
  BNE s2, zero, bb61
  # implict jump to bb33
bb33:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb34
bb34:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LUI s4, 2
  ADDIW s4, s4, 1808
  LW t4, 44(sp)
  SLT s4, t4, s4
  BNE s4, zero, bb60
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb36
bb36:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LUI s6, 2
  ADDIW s6, s6, 1808
  LW t4, 52(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb59
  # implict jump to bb37
bb37:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb38
bb38:
  LW t4, 56(sp)
  ADD s10, t4, zero
  LW t4, 60(sp)
  ADD s11, t4, zero
  ADD t4, s7, zero
  SW t4, 40(sp)
  ADD t4, s6, zero
  SW t4, 36(sp)
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t2, s10, t2
  BNE t2, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s11, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s2, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  LUI t0, 29
  ADDIW t0, t0, 1392
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb40:
  SLTI t2, s10, 10
  BNE t2, zero, bb58
  # implict jump to bb41
bb41:
  SLTI t2, s10, 20
  BNE t2, zero, bb54
  # implict jump to bb42
bb42:
  SLTI t2, s10, 30
  BNE t2, zero, bb47
  # implict jump to bb43
bb43:
  SLLIW t2, s10, 2
  ADDI a1, sp, 168
  ADD t2, a1, t2
  LW t2, 0(t2)
  ADDI a1, zero, 9
  MULW t2, t2, a1
  ADDW t2, s11, t2
  LUI a1, 24
  ADDIW a1, a1, 1684
  REMW t2, t2, a1
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, t2, zero
  SW t4, 28(sp)
  # implict jump to bb44
bb44:
  LW t4, 28(sp)
  ADD s0, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
  ADD s2, t4, zero
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  ADDIW s3, s10, 1
  ADD s6, s1, zero
  ADD s7, s2, zero
  ADD t4, s0, zero
  SW t4, 60(sp)
  ADD t4, s3, zero
  SW t4, 56(sp)
  JAL zero, bb38
bb47:
  LUI a2, 1
  ADDIW a2, a2, 904
  ADD t4, zero, a2
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 24(sp)
  # implict jump to bb48
bb48:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LUI a6, 2
  ADDIW a6, a6, 1808
  LW t4, 16(sp)
  SLT a6, t4, a6
  BNE a6, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 20(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb44
bb50:
  LUI s3, 1
  ADDIW s3, s3, -1863
  LW t4, 16(sp)
  SLT s3, s3, t4
  BNE s3, zero, bb53
  # implict jump to bb51
bb51:
  SLLIW s3, s10, 2
  LUI t4, 20
  ADDIW t4, t4, -1752
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 20(sp)
  ADDW s3, t4, s3
  LW t4, 16(sp)
  SLLIW s4, t4, 2
  ADDI t4, sp, 168
  ADD s4, t4, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  LUI s4, 3
  ADDIW s4, s4, 1045
  REMW s3, s3, s4
  LW t4, 16(sp)
  ADDIW s4, t4, 2
  # implict jump to bb52
bb52:
  ADD t4, s4, zero
  SW t4, 0(sp)
  ADD t4, s3, zero
  SW t4, 24(sp)
  JAL zero, bb48
bb53:
  SLLIW s5, s10, 2
  LUI t4, 10
  ADDIW t4, t4, -792
  ADD t4, t4, sp
  ADD s5, t4, s5
  LW s5, 0(s5)
  LW t4, 20(sp)
  ADDW s5, t4, s5
  LW t4, 16(sp)
  SLLIW s9, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1752
  ADD t4, t4, sp
  ADD s9, t4, s9
  LW s9, 0(s9)
  SUBW s5, s5, s9
  LW t4, 16(sp)
  ADDIW s9, t4, 1
  ADD s4, s9, zero
  ADD s3, s5, zero
  JAL zero, bb52
bb54:
  LUI s3, 1
  ADDIW s3, s3, 904
  ADD s3, zero, s3
  ADD s4, s11, zero
  # implict jump to bb55
bb55:
  ADD s5, s4, zero
  ADD s9, s3, zero
  LUI s8, 2
  ADDIW s8, s8, 1808
  SLT s8, s9, s8
  BNE s8, zero, bb57
  # implict jump to bb56
bb56:
  ADD a0, s5, zero
  CALL putint
  LW t4, 36(sp)
  ADD s1, t4, zero
  ADD s2, s9, zero
  ADD s0, s5, zero
  JAL zero, bb45
bb57:
  SLLIW s8, s10, 2
  ADDI t5, sp, 168
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s5, s5, s8
  SLLIW s8, s9, 2
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s8, 0(s8)
  SUBW s5, s5, s8
  ADDIW s8, s9, 1
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb55
bb58:
  SLLIW s3, s10, 2
  ADDI t5, sp, 168
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s3, s11, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 36(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
  ADD s2, t4, zero
  ADD s0, s3, zero
  JAL zero, bb46
bb59:
  LW t4, 52(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 168
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -792
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  LUI t4, 20
  ADDIW t4, t4, -1752
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb36
bb60:
  LW t4, 44(sp)
  SLLIW s0, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -792
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADDI s2, zero, 10
  REMW s0, s0, s2
  SW s0, 0(s1)
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb34
bb61:
  LW t4, 8(sp)
  SLLIW s0, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1752
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW t4, 8(sp)
  LW t3, 8(sp)
  MULW s1, t4, t3
  ADDI s2, zero, 10
  REMW s1, s1, s2
  SW s1, 0(s0)
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb32
