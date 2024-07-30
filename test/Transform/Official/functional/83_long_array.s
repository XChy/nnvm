.global long_array
.global main
.section .bss
.section .data
.section .text
long_array:
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
  ADD t4, a0, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb1
bb1:
  LW t4, 24(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 176
  ADD s3, t5, s3
  MULW s4, s2, s2
  ADDI s5, zero, 10
  REMW s4, s4, s5
  SW s4, 0(s3)
  ADDIW t4, s2, 1
  SW t4, 20(sp)
  LUI s3, 2
  ADDIW s3, s3, 1808
  LW t4, 20(sp)
  SLT s3, t4, s3
  BNE s3, zero, bb33
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb3
bb3:
  LW t4, 16(sp)
  ADD s4, t4, zero
  SLLIW s5, s4, 2
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s6, t5, s5
  ADDI t5, sp, 176
  ADD s5, t5, s5
  LW s5, 0(s5)
  MULW s5, s5, s5
  ADDI s7, zero, 10
  REMW s5, s5, s7
  SW s5, 0(s6)
  ADDIW t4, s4, 1
  SW t4, 12(sp)
  LUI s5, 2
  ADDIW s5, s5, 1808
  LW t4, 12(sp)
  SLT s5, t4, s5
  BNE s5, zero, bb32
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb5
bb5:
  LW t4, 8(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD s8, t5, s7
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s9, t5, s7
  LW s9, 0(s9)
  MULW s9, s9, s9
  ADDI s10, zero, 100
  REMW s9, s9, s10
  ADDI t4, sp, 176
  ADD s7, t4, s7
  LW s7, 0(s7)
  ADDW s7, s9, s7
  SW s7, 0(s8)
  ADDIW t4, s6, 1
  SW t4, 4(sp)
  LUI s7, 2
  ADDIW s7, s7, 1808
  LW t4, 4(sp)
  SLT s7, t4, s7
  BNE s7, zero, bb31
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
  SW t4, 52(sp)
  ADD t4, s8, zero
  SW t4, 56(sp)
  ADD t4, s7, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI a1, t4, 10
  BNE a1, zero, bb30
  # implict jump to bb8
bb8:
  LW t4, 40(sp)
  SLTI a1, t4, 20
  BNE a1, zero, bb25
  # implict jump to bb9
bb9:
  LW t4, 40(sp)
  SLTI a1, t4, 30
  BNE a1, zero, bb17
  # implict jump to bb10
bb10:
  LW t4, 40(sp)
  SLLIW a1, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD a1, t4, a1
  LW a1, 0(a1)
  LW t4, 60(sp)
  MULW a1, a1, t4
  LW t4, 56(sp)
  ADDW a1, t4, a1
  LUI a2, 24
  ADDIW a2, a2, 1684
  REMW a1, a1, a2
  ADD t4, s11, zero
  SW t4, 0(sp)
  ADD t4, a1, zero
  SW t4, 36(sp)
  # implict jump to bb11
bb11:
  LW t4, 36(sp)
  ADD s0, t4, zero
  LW t4, 0(sp)
  ADD s1, t4, zero
  LW t4, 52(sp)
  ADD s2, t4, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LW t4, 40(sp)
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
  ADD s7, s3, zero
  ADD s8, s0, zero
  ADD t4, s2, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  JAL zero, bb7
bb17:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LUI a4, 1
  ADDIW a4, a4, 904
  ADD t4, zero, a4
  SW t4, 44(sp)
  # implict jump to bb18
bb18:
  LW t4, 44(sp)
  ADD a5, t4, zero
  LW t4, 32(sp)
  ADD a6, t4, zero
  LUI a7, 1
  ADDIW a7, a7, -1863
  SLT a7, a7, a5
  BNE a7, zero, bb24
  # implict jump to bb19
bb19:
  LW t4, 40(sp)
  SLLIW a7, t4, 2
  ADDI t6, sp, 176
  ADD a7, t6, a7
  LW a7, 0(a7)
  ADDW a7, a6, a7
  SLLIW t6, a5, 2
  LUI t5, 20
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  ADD t6, t5, t6
  LW t6, 0(t6)
  ADDW a7, a7, t6
  LUI t6, 3
  ADDIW t6, t6, 1045
  REMW a7, a7, t6
  ADDIW t6, a5, 2
  # implict jump to bb20
bb20:
  ADD t4, a7, zero
  SW t4, 28(sp)
  ADD t4, t6, zero
  SW t4, 48(sp)
  LUI s0, 2
  ADDIW s0, s0, 1808
  LW t4, 48(sp)
  SLT s0, t4, s0
  BNE s0, zero, bb23
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  LW t4, 28(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb11
bb23:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb18
bb24:
  LW t4, 40(sp)
  SLLIW s0, t4, 2
  LUI t5, 10
  ADDIW t5, t5, -784
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, a6, s0
  SLLIW a6, a5, 2
  ADDI t6, sp, 176
  ADD a6, t6, a6
  LW a6, 0(a6)
  SUBW s0, s0, a6
  ADDIW a5, a5, 1
  ADD t6, a5, zero
  ADD a7, s0, zero
  JAL zero, bb20
bb25:
  LW t4, 40(sp)
  SLLIW s3, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 56(sp)
  ADD s4, t4, zero
  LUI s5, 1
  ADDIW s5, s5, 904
  ADD s5, zero, s5
  # implict jump to bb26
bb26:
  ADD s6, s5, zero
  ADD s10, s4, zero
  ADDW s10, s10, s3
  SLLIW s9, s6, 2
  ADDI t5, sp, 176
  ADD s9, t5, s9
  LW s9, 0(s9)
  SUBW s9, s10, s9
  ADDIW s6, s6, 1
  LUI s10, 2
  ADDIW s10, s10, 1808
  SLT s10, s6, s10
  BNE s10, zero, bb29
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD a0, s9, zero
  CALL putint
  ADD s1, s11, zero
  ADD s2, s6, zero
  ADD s0, s9, zero
  JAL zero, bb12
bb29:
  ADD s4, s9, zero
  ADD s5, s6, zero
  JAL zero, bb26
bb30:
  LW t4, 40(sp)
  SLLIW s3, t4, 2
  LUI t4, 20
  ADDIW t4, t4, -1744
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 56(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  ADD s1, s11, zero
  LW t4, 52(sp)
  ADD s2, t4, zero
  ADD s0, s3, zero
  JAL zero, bb13
bb31:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb5
bb32:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb3
bb33:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb1
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
  # implict jump to bb35
bb35:
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
  BNE s2, zero, bb67
  # implict jump to bb36
bb36:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb37
bb37:
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
  BNE s4, zero, bb66
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb39
bb39:
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
  BNE s6, zero, bb65
  # implict jump to bb40
bb40:
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb41
bb41:
  LW t4, 4(sp)
  ADD s10, t4, zero
  LW t4, 60(sp)
  ADD s11, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, s6, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI t2, t4, 10
  BNE t2, zero, bb64
  # implict jump to bb42
bb42:
  LW t4, 52(sp)
  SLTI t2, t4, 20
  BNE t2, zero, bb59
  # implict jump to bb43
bb43:
  LW t4, 52(sp)
  SLTI t2, t4, 30
  BNE t2, zero, bb51
  # implict jump to bb44
bb44:
  LW t4, 52(sp)
  SLLIW t2, t4, 2
  ADDI a0, sp, 176
  ADD t2, a0, t2
  LW t2, 0(t2)
  ADDI a0, zero, 9
  MULW t2, t2, a0
  LW t4, 48(sp)
  ADDW t2, t4, t2
  LUI a0, 24
  ADDIW a0, a0, 1684
  REMW t2, t2, a0
  ADD t4, s10, zero
  SW t4, 56(sp)
  ADD t4, t2, zero
  SW t4, 44(sp)
  # implict jump to bb45
bb45:
  LW t4, 44(sp)
  ADD s0, t4, zero
  LW t4, 56(sp)
  ADD s1, t4, zero
  ADD s2, s11, zero
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LW t4, 52(sp)
  ADDIW s3, t4, 1
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s4, s3, s4
  BNE s4, zero, bb50
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
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
bb50:
  ADD s6, s3, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  ADD t4, s2, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb41
bb51:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LUI a2, 1
  ADDIW a2, a2, 904
  ADD t4, zero, a2
  SW t4, 40(sp)
  # implict jump to bb52
bb52:
  LW t4, 40(sp)
  ADD a3, t4, zero
  LW t4, 0(sp)
  ADD a4, t4, zero
  LUI a5, 1
  ADDIW a5, a5, -1863
  SLT a5, a5, a3
  BNE a5, zero, bb58
  # implict jump to bb53
bb53:
  LW t4, 52(sp)
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
  # implict jump to bb54
bb54:
  ADD t4, a5, zero
  SW t4, 36(sp)
  ADD t4, a6, zero
  SW t4, 32(sp)
  LUI a3, 2
  ADDIW a3, a3, 1808
  LW t4, 32(sp)
  SLT a3, t4, a3
  BNE a3, zero, bb57
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  LW t4, 36(sp)
  ADD a0, t4, zero
  CALL putint
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb45
bb57:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb52
bb58:
  LW t4, 52(sp)
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
  JAL zero, bb54
bb59:
  LW t4, 52(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 176
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 48(sp)
  ADD s4, t4, zero
  LUI s5, 1
  ADDIW s5, s5, 904
  ADD s5, zero, s5
  # implict jump to bb60
bb60:
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
  BNE s9, zero, bb63
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD a0, s7, zero
  CALL putint
  ADD s1, s10, zero
  ADD s2, s8, zero
  ADD s0, s7, zero
  JAL zero, bb46
bb63:
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb60
bb64:
  LW t4, 52(sp)
  SLLIW s3, t4, 2
  ADDI t4, sp, 176
  ADD s3, t4, s3
  LW s3, 0(s3)
  LW t4, 48(sp)
  ADDW s3, t4, s3
  ADDI s4, zero, 1333
  REMW s3, s3, s4
  ADD a0, s3, zero
  CALL putint
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s0, s3, zero
  JAL zero, bb47
bb65:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb39
bb66:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb37
bb67:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb35
