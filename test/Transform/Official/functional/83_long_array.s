.global long_array
.global main
.section .bss

.section .data
N:
.word 0x00002710
.section .text
long_array:
  LUI t0, 1048547
  ADDIW t0, t0, -1424
  ADD sp, sp, t0
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s9, 112(sp)
  LUI t5, 20
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t4, 20
  ADDIW t4, t4, -1736
  ADD t4, t4, sp
  SD s10, 0(t4)
  LUI t4, 20
  ADDIW t4, t4, -1728
  ADD t4, t4, sp
  SD s11, 0(t4)
  ADD t4, a0, zero
  SW t4, 72(sp)
  ADDI t0, zero, 0
  LUI t1, 2
  ADDIW t1, t1, 1808
  SLT t0, t0, t1
  BNE t0, zero, bb45
  # implict jump to bb1
bb1:
  ADDI t1, zero, 0
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t1, t1, t2
  BNE t1, zero, bb41
  # implict jump to bb2
bb2:
  ADDI t2, zero, 0
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT t2, t2, a1
  BNE t2, zero, bb37
  # implict jump to bb3
bb3:
  ADDI a1, zero, 0
  LUI a2, 2
  ADDIW a2, a2, 1808
  SLT a1, a1, a2
  BNE a1, zero, bb6
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb5
bb5:
  LW t4, 20(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s9, 112(sp)
  LUI t5, 20
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1424
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb7
bb7:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLTI t0, t4, 10
  BNE t0, zero, bb36
  # implict jump to bb8
bb8:
  LW t4, 88(sp)
  SLTI t0, t4, 20
  BNE t0, zero, bb28
  # implict jump to bb9
bb9:
  LW t4, 88(sp)
  SLTI t0, t4, 30
  BNE t0, zero, bb17
  # implict jump to bb10
bb10:
  LW t4, 88(sp)
  SLLIW t0, t4, 2
  ADDI t4, sp, 120
  ADD t0, t4, t0
  LW t0, 0(t0)
  LW t4, 72(sp)
  MULW t0, t0, t4
  LW t4, 24(sp)
  ADDW t0, t4, t0
  LUI s9, 24
  ADDIW s9, s9, 1684
  REMW s9, t0, s9
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  # implict jump to bb11
bb11:
  LW t4, 8(sp)
  ADD s1, t4, zero
  LW t4, 28(sp)
  ADD s3, t4, zero
  ADD s7, s9, zero
  # implict jump to bb12
bb12:
  ADD s0, s1, zero
  ADD s1, s3, zero
  ADD s2, s7, zero
  # implict jump to bb13
bb13:
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb14
bb14:
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 84(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb5
bb16:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb7
bb17:
  LUI t1, 1
  ADDIW t1, t1, 904
  LUI s7, 2
  ADDIW s7, s7, 1808
  SLT s7, t1, s7
  BNE s7, zero, bb20
  # implict jump to bb18
bb18:
  LW t4, 24(sp)
  ADD s7, t4, zero
  LUI t1, 1
  ADDIW t1, t1, 904
  ADD t1, zero, t1
  # implict jump to bb19
bb19:
  ADD t4, t1, zero
  SW t4, 4(sp)
  ADD a0, s7, zero
  CALL putint
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD s9, s7, zero
  JAL zero, bb11
bb20:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LUI s4, 1
  ADDIW s4, s4, 904
  ADD s4, zero, s4
  # implict jump to bb21
bb21:
  ADD a5, s4, zero
  LW t4, 12(sp)
  ADD s3, t4, zero
  LUI a4, 1
  ADDIW a4, a4, -1863
  SLT a4, a4, a5
  BNE a4, zero, bb27
  # implict jump to bb22
bb22:
  LW t4, 88(sp)
  SLLIW a4, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  ADD a4, t5, a4
  LW a4, 0(a4)
  ADDW a4, s3, a4
  SLLIW s1, a5, 2
  ADDI t5, sp, 120
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDW s1, a4, s1
  LUI a4, 3
  ADDIW a4, a4, 1045
  REMW s1, s1, a4
  ADDIW a4, a5, 2
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  ADD s8, a4, zero
  # implict jump to bb24
bb24:
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, s8, s1
  BNE s1, zero, bb26
  # implict jump to bb25
bb25:
  ADD s7, s0, zero
  ADD t1, s8, zero
  JAL zero, bb19
bb26:
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD s4, s8, zero
  JAL zero, bb21
bb27:
  LW t4, 88(sp)
  SLLIW a3, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -840
  ADD t5, t5, sp
  ADD a3, t5, a3
  LW a3, 0(a3)
  ADDW s3, s3, a3
  SLLIW a3, a5, 2
  LUI a4, 20
  ADDIW a4, a4, -1720
  ADD a4, a4, sp
  ADD a3, a4, a3
  LW a3, 0(a3)
  SUBW s3, s3, a3
  ADDIW a3, a5, 1
  ADD a4, a3, zero
  ADD s1, s3, zero
  JAL zero, bb23
bb28:
  LUI s0, 1
  ADDIW s0, s0, 904
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s0, s0, s4
  BNE s0, zero, bb31
  # implict jump to bb29
bb29:
  LW t4, 24(sp)
  ADD s0, t4, zero
  LUI s4, 1
  ADDIW s4, s4, 904
  ADD s4, zero, s4
  # implict jump to bb30
bb30:
  ADD a0, s0, zero
  CALL putint
  LW t4, 76(sp)
  ADD s1, t4, zero
  ADD s3, s4, zero
  ADD s7, s0, zero
  JAL zero, bb12
bb31:
  LW t4, 24(sp)
  ADD s8, t4, zero
  LUI s9, 1
  ADDIW s9, s9, 904
  ADD s9, zero, s9
  # implict jump to bb32
bb32:
  ADD s2, s9, zero
  ADD s6, s8, zero
  LW t4, 88(sp)
  SLLIW s11, t4, 2
  ADDI t5, sp, 120
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s6, s6, s11
  SLLIW s11, s2, 2
  LUI t5, 20
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  ADD s11, t5, s11
  LW s11, 0(s11)
  SUBW s5, s6, s11
  ADDIW s10, s2, 1
  # implict jump to bb33
bb33:
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s2, s10, s2
  BNE s2, zero, bb35
  # implict jump to bb34
bb34:
  ADD s0, s5, zero
  ADD s4, s10, zero
  JAL zero, bb30
bb35:
  ADD s8, s5, zero
  ADD s9, s10, zero
  JAL zero, bb32
bb36:
  LW t4, 88(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 120
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 24(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 76(sp)
  ADD s0, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  ADD s2, s3, zero
  JAL zero, bb13
bb37:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb38
bb38:
  LW t4, 52(sp)
  ADD a1, t4, zero
  SLLIW a2, a1, 2
  ADDI a3, sp, 120
  ADD a3, a3, a2
  LUI a4, 10
  ADDIW a4, a4, -840
  ADD a4, a4, sp
  ADD a4, a4, a2
  LW a4, 0(a4)
  MULW a4, a4, a4
  ADDI a5, zero, 100
  REMW a4, a4, a5
  LUI t4, 20
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  ADD a2, t4, a2
  LW a2, 0(a2)
  ADDW a2, a4, a2
  SW a2, 0(a3)
  ADDIW t4, a1, 1
  SW t4, 0(sp)
  # implict jump to bb39
bb39:
  LUI a1, 2
  ADDIW a1, a1, 1808
  LW t4, 0(sp)
  SLT a1, t4, a1
  BNE a1, zero, bb40
  JAL zero, bb3
bb40:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb38
bb41:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb42
bb42:
  LW t4, 60(sp)
  ADD t2, t4, zero
  SLLIW a1, t2, 2
  LUI a2, 10
  ADDIW a2, a2, -840
  ADD a2, a2, sp
  ADD a2, a2, a1
  LUI a3, 20
  ADDIW a3, a3, -1720
  ADD a3, a3, sp
  ADD a1, a3, a1
  LW a1, 0(a1)
  MULW a1, a1, a1
  ADDI a3, zero, 10
  REMW a1, a1, a3
  SW a1, 0(a2)
  ADDIW t4, t2, 1
  SW t4, 56(sp)
  # implict jump to bb43
bb43:
  LUI t2, 2
  ADDIW t2, t2, 1808
  LW t4, 56(sp)
  SLT t2, t4, t2
  BNE t2, zero, bb44
  JAL zero, bb2
bb44:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb42
bb45:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb46
bb46:
  LW t4, 68(sp)
  ADD t1, t4, zero
  SLLIW t2, t1, 2
  LUI a1, 20
  ADDIW a1, a1, -1720
  ADD a1, a1, sp
  ADD t2, a1, t2
  MULW a1, t1, t1
  ADDI a2, zero, 10
  REMW a1, a1, a2
  SW a1, 0(t2)
  ADDIW t4, t1, 1
  SW t4, 64(sp)
  # implict jump to bb47
bb47:
  LUI t1, 2
  ADDIW t1, t1, 1808
  LW t4, 64(sp)
  SLT t1, t4, t1
  BNE t1, zero, bb48
  JAL zero, bb1
bb48:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb46
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1408
  ADD sp, sp, t0
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  LUI t5, 20
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1400
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI s11, 2
  ADDIW s11, s11, 1808
  SLT s11, zero, s11
  BNE s11, zero, bb94
  # implict jump to bb50
bb50:
  LUI t0, 2
  ADDIW t0, t0, 1808
  SLT t0, zero, t0
  BNE t0, zero, bb90
  # implict jump to bb51
bb51:
  LUI t1, 2
  ADDIW t1, t1, 1808
  SLT t1, zero, t1
  BNE t1, zero, bb86
  # implict jump to bb52
bb52:
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t2, zero, t2
  BNE t2, zero, bb55
  # implict jump to bb53
bb53:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb54
bb54:
  LW t4, 8(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LUI t5, 20
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1400
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1408
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb55:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb56
bb56:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 76(sp)
  SLTI t6, t4, 10
  BNE t6, zero, bb85
  # implict jump to bb57
bb57:
  LW t4, 76(sp)
  SLTI t6, t4, 20
  BNE t6, zero, bb77
  # implict jump to bb58
bb58:
  LW t4, 76(sp)
  SLTI t6, t4, 30
  BNE t6, zero, bb66
  # implict jump to bb59
bb59:
  LW t4, 76(sp)
  SLLIW t6, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  ADD t6, t5, t6
  LW t6, 0(t6)
  ADDI s11, zero, 9
  MULW s11, t6, s11
  LW t4, 28(sp)
  ADDW s11, t4, s11
  LUI t6, 24
  ADDIW t6, t6, 1684
  REMW s11, s11, t6
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb60
bb60:
  LW t4, 20(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD s5, t4, zero
  ADD s6, s11, zero
  # implict jump to bb61
bb61:
  ADD s0, s2, zero
  ADD s1, s5, zero
  ADD s2, s6, zero
  # implict jump to bb62
bb62:
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  LW t3, 76(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb63
bb63:
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 84(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb65
  # implict jump to bb64
bb64:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb54
bb65:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb56
bb66:
  LUI s2, 1
  ADDIW s2, s2, 904
  LUI t0, 2
  ADDIW t0, t0, 1808
  SLT s2, s2, t0
  BNE s2, zero, bb69
  # implict jump to bb67
bb67:
  LW t4, 28(sp)
  ADD s2, t4, zero
  LUI t0, 1
  ADDIW t0, t0, 904
  ADD t0, zero, t0
  # implict jump to bb68
bb68:
  ADD t4, t0, zero
  SW t4, 16(sp)
  ADD a0, s2, zero
  CALL putint
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD s11, s2, zero
  JAL zero, bb60
bb69:
  LW t4, 28(sp)
  ADD s8, t4, zero
  LUI t1, 1
  ADDIW t1, t1, 904
  ADD t4, zero, t1
  SW t4, 12(sp)
  # implict jump to bb70
bb70:
  LW t4, 12(sp)
  ADD s7, t4, zero
  ADD a3, s8, zero
  LUI s5, 1
  ADDIW s5, s5, -1863
  SLT s5, s5, s7
  BNE s5, zero, bb76
  # implict jump to bb71
bb71:
  LW t4, 76(sp)
  SLLIW s5, t4, 2
  ADDI a2, sp, 112
  ADD s5, a2, s5
  LW s5, 0(s5)
  ADDW s5, a3, s5
  SLLIW a2, s7, 2
  LUI t5, 20
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  ADD a2, t5, a2
  LW a2, 0(a2)
  ADDW s5, s5, a2
  LUI a2, 3
  ADDIW a2, a2, 1045
  REMW s5, s5, a2
  ADDIW a2, s7, 2
  # implict jump to bb72
bb72:
  ADD s1, s5, zero
  ADD s0, a2, zero
  # implict jump to bb73
bb73:
  LUI s5, 2
  ADDIW s5, s5, 1808
  SLT s5, s0, s5
  BNE s5, zero, bb75
  # implict jump to bb74
bb74:
  ADD s2, s1, zero
  ADD t0, s0, zero
  JAL zero, bb68
bb75:
  ADD s8, s1, zero
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb70
bb76:
  LW t4, 76(sp)
  SLLIW s6, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -848
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDW s6, a3, s6
  SLLIW a3, s7, 2
  ADDI a2, sp, 112
  ADD a3, a2, a3
  LW a3, 0(a3)
  SUBW s6, s6, a3
  ADDIW s7, s7, 1
  ADD a2, s7, zero
  ADD s5, s6, zero
  JAL zero, bb72
bb77:
  LUI s0, 1
  ADDIW s0, s0, 904
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s0, s0, s1
  BNE s0, zero, bb80
  # implict jump to bb78
bb78:
  LW t4, 28(sp)
  ADD s0, t4, zero
  LUI s1, 1
  ADDIW s1, s1, 904
  ADD s1, zero, s1
  # implict jump to bb79
bb79:
  ADD a0, s0, zero
  CALL putint
  LW t4, 4(sp)
  ADD s2, t4, zero
  ADD s5, s1, zero
  ADD s6, s0, zero
  JAL zero, bb61
bb80:
  LW t4, 28(sp)
  ADD s7, t4, zero
  LUI s8, 1
  ADDIW s8, s8, 904
  ADD s8, zero, s8
  # implict jump to bb81
bb81:
  ADD s11, s8, zero
  ADD s3, s7, zero
  LW t4, 76(sp)
  SLLIW s4, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  SLLIW s4, s11, 2
  ADDI t5, sp, 112
  ADD s4, t5, s4
  LW s4, 0(s4)
  SUBW s9, s3, s4
  ADDIW s10, s11, 1
  # implict jump to bb82
bb82:
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s3, s10, s3
  BNE s3, zero, bb84
  # implict jump to bb83
bb83:
  ADD s0, s9, zero
  ADD s1, s10, zero
  JAL zero, bb79
bb84:
  ADD s7, s9, zero
  ADD s8, s10, zero
  JAL zero, bb81
bb85:
  LW t4, 76(sp)
  SLLIW s3, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1736
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 28(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 4(sp)
  ADD s0, t4, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  ADD s2, s3, zero
  JAL zero, bb62
bb86:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb87
bb87:
  LW t4, 52(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LUI a1, 20
  ADDIW a1, a1, -1736
  ADD a1, a1, sp
  ADD a1, a1, a0
  LUI a2, 10
  ADDIW a2, a2, -848
  ADD a2, a2, sp
  ADD a2, a2, a0
  LW a2, 0(a2)
  MULW a2, a2, a2
  ADDI a3, zero, 100
  REMW a2, a2, a3
  ADDI t4, sp, 112
  ADD a0, t4, a0
  LW a0, 0(a0)
  ADDW a0, a2, a0
  SW a0, 0(a1)
  ADDIW t4, t2, 1
  SW t4, 0(sp)
  # implict jump to bb88
bb88:
  LUI t2, 2
  ADDIW t2, t2, 1808
  LW t4, 0(sp)
  SLT t2, t4, t2
  BNE t2, zero, bb89
  JAL zero, bb52
bb89:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb87
bb90:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb91
bb91:
  LW t4, 60(sp)
  ADD t1, t4, zero
  SLLIW t2, t1, 2
  LUI a0, 10
  ADDIW a0, a0, -848
  ADD a0, a0, sp
  ADD a0, a0, t2
  ADDI a1, sp, 112
  ADD t2, a1, t2
  LW t2, 0(t2)
  MULW t2, t2, t2
  ADDI a1, zero, 10
  REMW t2, t2, a1
  SW t2, 0(a0)
  ADDIW t4, t1, 1
  SW t4, 56(sp)
  # implict jump to bb92
bb92:
  LUI t1, 2
  ADDIW t1, t1, 1808
  LW t4, 56(sp)
  SLT t1, t4, t1
  BNE t1, zero, bb93
  JAL zero, bb51
bb93:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb91
bb94:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb95
bb95:
  LW t4, 68(sp)
  ADD t0, t4, zero
  SLLIW t1, t0, 2
  ADDI t2, sp, 112
  ADD t1, t2, t1
  MULW t2, t0, t0
  ADDI a0, zero, 10
  REMW t2, t2, a0
  SW t2, 0(t1)
  ADDIW t4, t0, 1
  SW t4, 64(sp)
  # implict jump to bb96
bb96:
  LUI t0, 2
  ADDIW t0, t0, 1808
  LW t4, 64(sp)
  SLT t0, t4, t0
  BNE t0, zero, bb97
  JAL zero, bb50
bb97:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb95
