.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1408
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s4, 80(sp)
  LUI t5, 10
  ADDIW t5, t5, -872
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -864
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -856
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -848
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -832
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -824
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -816
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1384
  ADD t4, t4, sp
  SD s8, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1392
  ADD t4, t4, sp
  SD s11, 0(t4)
  ADD t4, a0, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LUI s3, 2
  ADDIW s3, s3, 1808
  LW t4, 20(sp)
  SLT s3, t4, s3
  BNE s3, zero, bb30
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb3
bb3:
  LW t3, 36(sp)
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
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb7
bb7:
  LW t4, 64(sp)
  ADD s11, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  ADD t4, s8, zero
  SW t4, 28(sp)
  ADD t4, s7, zero
  SW t4, 24(sp)
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT a1, s11, a1
  BNE a1, zero, bb9
  # implict jump to bb8
bb8:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD ra, 72(sp)
  LD s4, 80(sp)
  LUI t5, 10
  ADDIW t5, t5, -872
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -864
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -848
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -832
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -824
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -816
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1376
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1384
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1392
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1408
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
  ADDI t4, sp, 88
  ADD a1, t4, a1
  LW a1, 0(a1)
  LW t4, 48(sp)
  MULW a1, a1, t4
  LW t4, 0(sp)
  ADDW a1, t4, a1
  LUI a2, 24
  ADDIW a2, a2, 1684
  REMW a1, a1, a2
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, a1, zero
  SW t4, 40(sp)
  # implict jump to bb13
bb13:
  LW t4, 40(sp)
  ADD s0, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDIW s3, s11, 1
  ADD s7, s1, zero
  ADD s8, s2, zero
  ADD t4, s0, zero
  SW t4, 68(sp)
  ADD t4, s3, zero
  SW t4, 64(sp)
  JAL zero, bb7
bb16:
  SLLIW a3, s11, 2
  LUI t4, 10
  ADDIW t4, t4, -808
  ADD t4, t4, sp
  ADD t4, t4, a3
  LUI a4, 10
  ADDIW a4, a4, -840
  ADD a4, a4, sp
  SD t4, 0(a4)
  SLLIW a4, s11, 2
  LUI t4, 20
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  ADD t4, t4, a4
  LUI a5, 29
  ADDIW a5, a5, 1400
  ADD a5, a5, sp
  SD t4, 0(a5)
  LUI a5, 1
  ADDIW a5, a5, 904
  ADD t4, zero, a5
  SW t4, 44(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  # implict jump to bb17
bb17:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 12(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 16(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb13
bb19:
  LUI s3, 1
  ADDIW s3, s3, -1863
  LW t4, 12(sp)
  SLT s3, s3, t4
  BNE s3, zero, bb22
  # implict jump to bb20
bb20:
  LUI t4, 29
  ADDIW t4, t4, 1400
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW s3, 0(t4)
  LW t4, 16(sp)
  ADDW s3, t4, s3
  LW t4, 12(sp)
  SLLIW s4, t4, 2
  ADDI t4, sp, 88
  ADD s4, t4, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  LUI s4, 3
  ADDIW s4, s4, 1045
  REMW s3, s3, s4
  LW t4, 12(sp)
  ADDIW s4, t4, 2
  # implict jump to bb21
bb21:
  ADD t4, s4, zero
  SW t4, 44(sp)
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb17
bb22:
  LUI t4, 10
  ADDIW t4, t4, -840
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW s5, 0(t4)
  LW t4, 16(sp)
  ADDW s5, t4, s5
  LW t4, 12(sp)
  SLLIW s6, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  ADD s6, t4, s6
  LW s6, 0(s6)
  SUBW s5, s5, s6
  LW t4, 12(sp)
  ADDIW s6, t4, 1
  ADD s4, s6, zero
  ADD s3, s5, zero
  JAL zero, bb21
bb23:
  SLLIW s3, s11, 2
  ADDI t5, sp, 88
  ADD s3, t5, s3
  LUI s4, 1
  ADDIW s4, s4, 904
  ADD s4, zero, s4
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb24
bb24:
  ADD s6, s5, zero
  ADD s10, s4, zero
  LUI s9, 2
  ADDIW s9, s9, 1808
  SLT s9, s10, s9
  BNE s9, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s6, zero
  CALL putint
  LW t4, 24(sp)
  ADD s1, t4, zero
  ADD s2, s10, zero
  ADD s0, s6, zero
  JAL zero, bb14
bb26:
  LW s9, 0(s3)
  ADDW s6, s6, s9
  SLLIW s9, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s9, 0(s9)
  SUBW s6, s6, s9
  ADDIW s9, s10, 1
  ADD s4, s9, zero
  ADD s5, s6, zero
  JAL zero, bb24
bb27:
  SLLIW s3, s11, 2
  ADDI t4, sp, 88
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 0(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 24(sp)
  ADD s1, t4, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  ADD s0, s3, zero
  JAL zero, bb15
bb28:
  LW t4, 60(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 88
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -808
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  LUI t4, 20
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
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
  ADDIW t5, t5, -808
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADDI s2, zero, 10
  REMW s0, s0, s2
  SW s0, 0(s1)
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb3
bb30:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW t4, 20(sp)
  LW t3, 20(sp)
  MULW s1, t4, t3
  ADDI s2, zero, 10
  REMW s1, s1, s2
  SW s1, 0(s0)
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb1
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1408
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s5, 80(sp)
  LUI t5, 10
  ADDIW t5, t5, -872
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -864
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -856
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -848
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -840
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -824
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -816
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -808
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -800
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t4, 29
  ADDIW t4, t4, 1384
  ADD t4, t4, sp
  SD s6, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1392
  ADD t4, t4, sp
  SD s11, 0(t4)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb32
bb32:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LUI s2, 2
  ADDIW s2, s2, 1808
  LW t4, 4(sp)
  SLT s2, t4, s2
  BNE s2, zero, bb61
  # implict jump to bb33
bb33:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb34
bb34:
  LW t3, 12(sp)
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
  ADD t4, zero, zero
  SW t4, 64(sp)
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
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  ADD t4, s6, zero
  SW t4, 36(sp)
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t2, s10, t2
  BNE t2, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s11, zero
  LD ra, 72(sp)
  LD s5, 80(sp)
  LUI t5, 10
  ADDIW t5, t5, -872
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -864
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -848
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -840
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -824
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -808
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 10
  ADDIW t5, t5, -800
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1384
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1392
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1408
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
  LUI a1, 20
  ADDIW a1, a1, -1752
  ADD a1, a1, sp
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
  SW t4, 28(sp)
  ADD t4, t2, zero
  SW t4, 32(sp)
  # implict jump to bb44
bb44:
  LW t4, 32(sp)
  ADD s0, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  ADDIW s3, s10, 1
  ADD s6, s1, zero
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 60(sp)
  ADD t4, s3, zero
  SW t4, 56(sp)
  JAL zero, bb38
bb47:
  SLLIW a2, s10, 2
  LUI t4, 10
  ADDIW t4, t4, -792
  ADD t4, t4, sp
  ADD t4, t4, a2
  LUI a3, 29
  ADDIW a3, a3, 1400
  ADD a3, a3, sp
  SD t4, 0(a3)
  SLLIW a3, s10, 2
  ADDI t4, sp, 88
  ADD t4, t4, a3
  LUI a4, 10
  ADDIW a4, a4, -832
  ADD a4, a4, sp
  SD t4, 0(a4)
  LUI a4, 1
  ADDIW a4, a4, 904
  ADD t4, zero, a4
  SW t4, 24(sp)
  ADD t4, s11, zero
  SW t4, 20(sp)
  # implict jump to bb48
bb48:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LUI t6, 2
  ADDIW t6, t6, 1808
  LW t4, 40(sp)
  SLT t6, t4, t6
  BNE t6, zero, bb50
  # implict jump to bb49
bb49:
  LW t4, 16(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb44
bb50:
  LUI s3, 1
  ADDIW s3, s3, -1863
  LW t4, 40(sp)
  SLT s3, s3, t4
  BNE s3, zero, bb53
  # implict jump to bb51
bb51:
  LUI t4, 10
  ADDIW t4, t4, -832
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW s3, 0(t4)
  LW t4, 16(sp)
  ADDW s3, t4, s3
  LW t4, 40(sp)
  SLLIW s4, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1752
  ADD t4, t4, sp
  ADD s4, t4, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  LUI s4, 3
  ADDIW s4, s4, 1045
  REMW s3, s3, s4
  LW t4, 40(sp)
  ADDIW s4, t4, 2
  # implict jump to bb52
bb52:
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 20(sp)
  JAL zero, bb48
bb53:
  LUI t4, 29
  ADDIW t4, t4, 1400
  ADD t4, t4, sp
  LD t4, 0(t4)
  LW s5, 0(t4)
  LW t4, 16(sp)
  ADDW s5, t4, s5
  LW t4, 40(sp)
  SLLIW s9, t4, 2
  ADDI t4, sp, 88
  ADD s9, t4, s9
  LW s9, 0(s9)
  SUBW s5, s5, s9
  LW t4, 40(sp)
  ADDIW s9, t4, 1
  ADD s4, s9, zero
  ADD s3, s5, zero
  JAL zero, bb52
bb54:
  SLLIW s3, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  ADD s3, t5, s3
  LUI s4, 1
  ADDIW s4, s4, 904
  ADD s4, zero, s4
  ADD s5, s11, zero
  # implict jump to bb55
bb55:
  ADD s9, s5, zero
  ADD s8, s4, zero
  LUI s7, 2
  ADDIW s7, s7, 1808
  SLT s7, s8, s7
  BNE s7, zero, bb57
  # implict jump to bb56
bb56:
  ADD a0, s9, zero
  CALL putint
  LW t4, 36(sp)
  ADD s1, t4, zero
  ADD s2, s8, zero
  ADD s0, s9, zero
  JAL zero, bb45
bb57:
  LW s7, 0(s3)
  ADDW s7, s9, s7
  SLLIW s9, s8, 2
  ADDI t5, sp, 88
  ADD s9, t5, s9
  LW s9, 0(s9)
  SUBW s7, s7, s9
  ADDIW s8, s8, 1
  ADD s4, s8, zero
  ADD s5, s7, zero
  JAL zero, bb55
bb58:
  SLLIW s3, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s3, s11, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 36(sp)
  ADD s1, t4, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  ADD s0, s3, zero
  JAL zero, bb46
bb59:
  LW t4, 52(sp)
  SLLIW s0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -792
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  ADDI t4, sp, 88
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
  ADDI t5, sp, 88
  ADD s0, t5, s0
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADDI s2, zero, 10
  REMW s0, s0, s2
  SW s0, 0(s1)
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb34
bb61:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 88
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
  JAL zero, bb32
