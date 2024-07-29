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
  SD s6, 112(sp)
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
  SD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t4, 20
  ADDIW t4, t4, -1736
  ADD t4, t4, sp
  SD s11, 0(t4)
  LUI t4, 29
  ADDIW t4, t4, 1408
  ADD t4, t4, sp
  SD s10, 0(t4)
  ADD t4, a0, zero
  SW t4, 76(sp)
  ADDI t1, zero, 0
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t1, t1, t2
  BNE t1, zero, bb50
  # implict jump to bb1
bb1:
  ADDI t2, zero, 0
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT t2, t2, a1
  BNE t2, zero, bb45
  # implict jump to bb2
bb2:
  ADDI a1, zero, 0
  LUI a2, 2
  ADDIW a2, a2, 1808
  SLT a1, a1, a2
  BNE a1, zero, bb40
  # implict jump to bb3
bb3:
  ADDI a2, zero, 0
  LUI a3, 2
  ADDIW a3, a3, 1808
  SLT a2, a2, a3
  BNE a2, zero, bb6
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb5
bb5:
  LW t4, 4(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s6, 112(sp)
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
  LD s7, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1408
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1424
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb8
bb8:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTI s10, t4, 10
  BNE s10, zero, bb39
  # implict jump to bb9
bb9:
  LW t4, 12(sp)
  SLTI s10, t4, 20
  BNE s10, zero, bb30
  # implict jump to bb10
bb10:
  LW t4, 12(sp)
  SLTI s10, t4, 30
  BNE s10, zero, bb18
  # implict jump to bb11
bb11:
  LW t4, 12(sp)
  SLLIW s10, t4, 2
  ADDI t4, sp, 120
  ADD s10, t4, s10
  LW s10, 0(s10)
  LW t4, 76(sp)
  MULW s10, s10, t4
  LW t4, 16(sp)
  ADDW s10, t4, s10
  LUI t2, 24
  ADDIW t2, t2, 1684
  REMW s10, s10, t2
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb12
bb12:
  LW t4, 20(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADD s6, t4, zero
  ADD s7, s10, zero
  # implict jump to bb13
bb13:
  ADD s0, s1, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  # implict jump to bb14
bb14:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  # implict jump to bb15
bb15:
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 88(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb17
  # implict jump to bb16
bb16:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb5
bb17:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb8
bb18:
  LUI s7, 1
  ADDIW s7, s7, 904
  LUI a1, 2
  ADDIW a1, a1, 1808
  SLT s7, s7, a1
  BNE s7, zero, bb21
  # implict jump to bb19
bb19:
  LW t4, 16(sp)
  ADD s7, t4, zero
  LUI a1, 1
  ADDIW a1, a1, 904
  ADD a1, zero, a1
  # implict jump to bb20
bb20:
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD a0, s7, zero
  CALL putint
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD s10, s7, zero
  JAL zero, bb12
bb21:
  LUI s5, 1
  ADDIW s5, s5, 904
  ADD s5, zero, s5
  # implict jump to bb22
bb22:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  # implict jump to bb23
bb23:
  ADD s8, s5, zero
  LW t4, 28(sp)
  ADD a5, t4, zero
  LUI s6, 1
  ADDIW s6, s6, -1863
  SLT s6, s6, s8
  BNE s6, zero, bb29
  # implict jump to bb24
bb24:
  LW t4, 12(sp)
  SLLIW s6, t4, 2
  LUI a4, 20
  ADDIW a4, a4, -1728
  ADD a4, a4, sp
  ADD s6, a4, s6
  LW s6, 0(s6)
  ADDW s6, a5, s6
  SLLIW a4, s8, 2
  ADDI t5, sp, 120
  ADD a4, t5, a4
  LW a4, 0(a4)
  ADDW s6, s6, a4
  LUI a4, 3
  ADDIW a4, a4, 1045
  REMW s6, s6, a4
  ADDIW a4, s8, 2
  # implict jump to bb25
bb25:
  ADD s0, s6, zero
  ADD s2, a4, zero
  # implict jump to bb26
bb26:
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, s2, s1
  BNE s1, zero, bb28
  # implict jump to bb27
bb27:
  ADD s7, s0, zero
  ADD a1, s2, zero
  JAL zero, bb20
bb28:
  ADD t4, s0, zero
  SW t4, 28(sp)
  ADD s5, s2, zero
  JAL zero, bb23
bb29:
  LW t4, 12(sp)
  SLLIW s1, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -840
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s1, 0(s1)
  ADDW s1, a5, s1
  SLLIW a5, s8, 2
  LUI a4, 20
  ADDIW a4, a4, -1728
  ADD a4, a4, sp
  ADD a5, a4, a5
  LW a5, 0(a5)
  SUBW s1, s1, a5
  ADDIW s8, s8, 1
  ADD a4, s8, zero
  ADD s6, s1, zero
  JAL zero, bb25
bb30:
  LUI s0, 1
  ADDIW s0, s0, 904
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s0, s0, s2
  BNE s0, zero, bb33
  # implict jump to bb31
bb31:
  LW t4, 16(sp)
  ADD s0, t4, zero
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s2, zero, s2
  # implict jump to bb32
bb32:
  ADD a0, s0, zero
  CALL putint
  LW t4, 84(sp)
  ADD s1, t4, zero
  ADD s6, s2, zero
  ADD s7, s0, zero
  JAL zero, bb13
bb33:
  LUI s5, 1
  ADDIW s5, s5, 904
  ADD s5, zero, s5
  # implict jump to bb34
bb34:
  LW t4, 12(sp)
  SLLIW s8, t4, 2
  ADDI t4, sp, 120
  ADD s8, t4, s8
  LW t4, 0(s8)
  SW t4, 92(sp)
  LW t4, 16(sp)
  ADD s8, t4, zero
  # implict jump to bb35
bb35:
  ADD s10, s5, zero
  ADD s9, s8, zero
  LW t4, 92(sp)
  ADDW s9, s9, t4
  SLLIW s3, s10, 2
  LUI t5, 20
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  SUBW s11, s9, s3
  ADDIW s4, s10, 1
  # implict jump to bb36
bb36:
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s3, s4, s3
  BNE s3, zero, bb38
  # implict jump to bb37
bb37:
  ADD s0, s11, zero
  ADD s2, s4, zero
  JAL zero, bb32
bb38:
  ADD s8, s11, zero
  ADD s5, s4, zero
  JAL zero, bb35
bb39:
  LW t4, 12(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 120
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 16(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  LW t4, 84(sp)
  ADD s0, t4, zero
  LW t4, 24(sp)
  ADD s1, t4, zero
  ADD s2, s3, zero
  JAL zero, bb14
bb40:
  # implict jump to bb41
bb41:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb42
bb42:
  LW t4, 56(sp)
  ADD a2, t4, zero
  SLLIW a3, a2, 2
  ADDI a4, sp, 120
  ADD a4, a4, a3
  LUI a5, 10
  ADDIW a5, a5, -840
  ADD a5, a5, sp
  ADD a5, a5, a3
  LW a5, 0(a5)
  MULW a5, a5, a5
  ADDI a6, zero, 100
  REMW a5, a5, a6
  LUI t4, 20
  ADDIW t4, t4, -1728
  ADD t4, t4, sp
  ADD a3, t4, a3
  LW a3, 0(a3)
  ADDW a3, a5, a3
  SW a3, 0(a4)
  ADDIW t4, a2, 1
  SW t4, 0(sp)
  # implict jump to bb43
bb43:
  LUI a2, 2
  ADDIW a2, a2, 1808
  LW t4, 0(sp)
  SLT a2, t4, a2
  BNE a2, zero, bb44
  JAL zero, bb3
bb44:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb42
bb45:
  # implict jump to bb46
bb46:
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb47
bb47:
  LW t4, 64(sp)
  ADD a1, t4, zero
  SLLIW a2, a1, 2
  LUI a3, 10
  ADDIW a3, a3, -840
  ADD a3, a3, sp
  ADD a3, a3, a2
  LUI a4, 20
  ADDIW a4, a4, -1728
  ADD a4, a4, sp
  ADD a2, a4, a2
  LW a2, 0(a2)
  MULW a2, a2, a2
  ADDI a4, zero, 10
  REMW a2, a2, a4
  SW a2, 0(a3)
  ADDIW t4, a1, 1
  SW t4, 60(sp)
  # implict jump to bb48
bb48:
  LUI a1, 2
  ADDIW a1, a1, 1808
  LW t4, 60(sp)
  SLT a1, t4, a1
  BNE a1, zero, bb49
  JAL zero, bb2
bb49:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb47
bb50:
  # implict jump to bb51
bb51:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb52
bb52:
  LW t4, 72(sp)
  ADD t2, t4, zero
  SLLIW a1, t2, 2
  LUI a2, 20
  ADDIW a2, a2, -1728
  ADD a2, a2, sp
  ADD a1, a2, a1
  MULW a2, t2, t2
  ADDI a3, zero, 10
  REMW a2, a2, a3
  SW a2, 0(a1)
  ADDIW t4, t2, 1
  SW t4, 68(sp)
  # implict jump to bb53
bb53:
  LUI t2, 2
  ADDIW t2, t2, 1808
  LW t4, 68(sp)
  SLT t2, t4, t2
  BNE t2, zero, bb54
  JAL zero, bb1
bb54:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb52
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1424
  ADD sp, sp, t0
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s10, 112(sp)
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
  LUI t0, 20
  ADDIW t0, t0, -1736
  ADD t0, t0, sp
  SD s9, 0(t0)
  LUI t0, 20
  ADDIW t0, t0, -1728
  ADD t0, t0, sp
  SD s11, 0(t0)
  LUI t0, 2
  ADDIW t0, t0, 1808
  SLT t0, zero, t0
  BNE t0, zero, bb105
  # implict jump to bb56
bb56:
  LUI t1, 2
  ADDIW t1, t1, 1808
  SLT t1, zero, t1
  BNE t1, zero, bb100
  # implict jump to bb57
bb57:
  LUI t2, 2
  ADDIW t2, t2, 1808
  SLT t2, zero, t2
  BNE t2, zero, bb95
  # implict jump to bb58
bb58:
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, zero, a0
  BNE a0, zero, bb61
  # implict jump to bb59
bb59:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb60
bb60:
  LW t4, 32(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s10, 112(sp)
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
  LD s9, 0(t5)
  LUI t5, 20
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1424
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb61:
  # implict jump to bb62
bb62:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb63
bb63:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI t0, t4, 10
  BNE t0, zero, bb94
  # implict jump to bb64
bb64:
  LW t4, 4(sp)
  SLTI t0, t4, 20
  BNE t0, zero, bb85
  # implict jump to bb65
bb65:
  LW t4, 4(sp)
  SLTI t0, t4, 30
  BNE t0, zero, bb73
  # implict jump to bb66
bb66:
  LW t4, 4(sp)
  SLLIW t0, t4, 2
  LUI t5, 20
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  ADD t0, t5, t0
  LW t0, 0(t0)
  ADDI s9, zero, 9
  MULW s9, t0, s9
  LW t4, 24(sp)
  ADDW s9, t4, s9
  LUI t0, 24
  ADDIW t0, t0, 1684
  REMW s9, s9, t0
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb67
bb67:
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 20(sp)
  ADD s4, t4, zero
  ADD s5, s9, zero
  # implict jump to bb68
bb68:
  ADD s0, s1, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  # implict jump to bb69
bb69:
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s1, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  LW t3, 4(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb70
bb70:
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 84(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb72
  # implict jump to bb71
bb71:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb60
bb72:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb63
bb73:
  LUI t1, 1
  ADDIW t1, t1, 904
  LUI s5, 2
  ADDIW s5, s5, 1808
  SLT s5, t1, s5
  BNE s5, zero, bb76
  # implict jump to bb74
bb74:
  LW t4, 24(sp)
  ADD s5, t4, zero
  LUI t1, 1
  ADDIW t1, t1, 904
  ADD t1, zero, t1
  # implict jump to bb75
bb75:
  ADD t4, t1, zero
  SW t4, 12(sp)
  ADD a0, s5, zero
  CALL putint
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD s9, s5, zero
  JAL zero, bb67
bb76:
  LUI t2, 1
  ADDIW t2, t2, 904
  ADD t2, zero, t2
  # implict jump to bb77
bb77:
  LW t4, 24(sp)
  ADD s3, t4, zero
  ADD t4, t2, zero
  SW t4, 8(sp)
  # implict jump to bb78
bb78:
  LW t4, 8(sp)
  ADD a4, t4, zero
  ADD s1, s3, zero
  LUI a3, 1
  ADDIW a3, a3, -1863
  SLT a3, a3, a4
  BNE a3, zero, bb84
  # implict jump to bb79
bb79:
  LW t4, 4(sp)
  SLLIW a3, t4, 2
  ADDI t5, sp, 120
  ADD a3, t5, a3
  LW a3, 0(a3)
  ADDW a3, s1, a3
  SLLIW s4, a4, 2
  LUI t5, 20
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDW s4, a3, s4
  LUI a3, 3
  ADDIW a3, a3, 1045
  REMW s4, s4, a3
  ADDIW a3, a4, 2
  # implict jump to bb80
bb80:
  ADD s10, s4, zero
  ADD s0, a3, zero
  # implict jump to bb81
bb81:
  LUI s1, 2
  ADDIW s1, s1, 1808
  SLT s1, s0, s1
  BNE s1, zero, bb83
  # implict jump to bb82
bb82:
  ADD s5, s10, zero
  ADD t1, s0, zero
  JAL zero, bb75
bb83:
  ADD s3, s10, zero
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb78
bb84:
  LW t4, 4(sp)
  SLLIW a2, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -840
  ADD t5, t5, sp
  ADD a2, t5, a2
  LW a2, 0(a2)
  ADDW s1, s1, a2
  SLLIW a2, a4, 2
  ADDI a3, sp, 120
  ADD a2, a3, a2
  LW a2, 0(a2)
  SUBW s1, s1, a2
  ADDIW a2, a4, 1
  ADD a3, a2, zero
  ADD s4, s1, zero
  JAL zero, bb80
bb85:
  LUI s0, 1
  ADDIW s0, s0, 904
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s0, s0, s3
  BNE s0, zero, bb88
  # implict jump to bb86
bb86:
  LW t4, 24(sp)
  ADD s0, t4, zero
  LUI s3, 1
  ADDIW s3, s3, 904
  ADD s3, zero, s3
  # implict jump to bb87
bb87:
  ADD a0, s0, zero
  CALL putint
  LW t4, 76(sp)
  ADD s1, t4, zero
  ADD s4, s3, zero
  ADD s5, s0, zero
  JAL zero, bb68
bb88:
  LUI s9, 1
  ADDIW s9, s9, 904
  ADD s9, zero, s9
  # implict jump to bb89
bb89:
  LW t4, 4(sp)
  SLLIW s10, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  ADD s10, t4, s10
  LW t4, 0(s10)
  SW t4, 88(sp)
  LW t4, 24(sp)
  ADD s10, t4, zero
  # implict jump to bb90
bb90:
  ADD s2, s9, zero
  ADD s6, s10, zero
  LW t4, 88(sp)
  ADDW s6, s6, t4
  SLLIW s8, s2, 2
  ADDI t5, sp, 120
  ADD s8, t5, s8
  LW s8, 0(s8)
  SUBW s7, s6, s8
  ADDIW s11, s2, 1
  # implict jump to bb91
bb91:
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s2, s11, s2
  BNE s2, zero, bb93
  # implict jump to bb92
bb92:
  ADD s0, s7, zero
  ADD s3, s11, zero
  JAL zero, bb87
bb93:
  ADD s10, s7, zero
  ADD s9, s11, zero
  JAL zero, bb90
bb94:
  LW t4, 4(sp)
  SLLIW s3, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
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
  LW t4, 20(sp)
  ADD s1, t4, zero
  ADD s2, s3, zero
  JAL zero, bb69
bb95:
  # implict jump to bb96
bb96:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb97
bb97:
  LW t4, 56(sp)
  ADD a0, t4, zero
  SLLIW a1, a0, 2
  LUI a2, 20
  ADDIW a2, a2, -1720
  ADD a2, a2, sp
  ADD a2, a2, a1
  LUI a3, 10
  ADDIW a3, a3, -840
  ADD a3, a3, sp
  ADD a3, a3, a1
  LW a3, 0(a3)
  MULW a3, a3, a3
  ADDI a4, zero, 100
  REMW a3, a3, a4
  ADDI t4, sp, 120
  ADD a1, t4, a1
  LW a1, 0(a1)
  ADDW a1, a3, a1
  SW a1, 0(a2)
  ADDIW t4, a0, 1
  SW t4, 52(sp)
  # implict jump to bb98
bb98:
  LUI a0, 2
  ADDIW a0, a0, 1808
  LW t4, 52(sp)
  SLT a0, t4, a0
  BNE a0, zero, bb99
  JAL zero, bb58
bb99:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb97
bb100:
  # implict jump to bb101
bb101:
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb102
bb102:
  LW t4, 64(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LUI a1, 10
  ADDIW a1, a1, -840
  ADD a1, a1, sp
  ADD a1, a1, a0
  ADDI a2, sp, 120
  ADD a0, a2, a0
  LW a0, 0(a0)
  MULW a0, a0, a0
  ADDI a2, zero, 10
  REMW a0, a0, a2
  SW a0, 0(a1)
  ADDIW t4, t2, 1
  SW t4, 60(sp)
  # implict jump to bb103
bb103:
  LUI t2, 2
  ADDIW t2, t2, 1808
  LW t4, 60(sp)
  SLT t2, t4, t2
  BNE t2, zero, bb104
  JAL zero, bb57
bb104:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb102
bb105:
  # implict jump to bb106
bb106:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb107
bb107:
  LW t4, 72(sp)
  ADD t1, t4, zero
  SLLIW t2, t1, 2
  ADDI a0, sp, 120
  ADD t2, a0, t2
  MULW a0, t1, t1
  ADDI a1, zero, 10
  REMW a0, a0, a1
  SW a0, 0(t2)
  ADDIW t4, t1, 1
  SW t4, 68(sp)
  # implict jump to bb108
bb108:
  LUI t1, 2
  ADDIW t1, t1, 1808
  LW t4, 68(sp)
  SLT t1, t4, t1
  BNE t1, zero, bb109
  JAL zero, bb56
bb109:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb107
