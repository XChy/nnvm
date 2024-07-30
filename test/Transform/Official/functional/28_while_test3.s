.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
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
  LA s0, g
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, h
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, e
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, f
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 5
  ADDI s1, zero, 6
  ADDI s2, zero, 7
  ADDI s3, zero, 10
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDIW s7, s7, 3
  SLTI s8, s6, 10
  BNE s8, zero, bb7
  # implict jump to bb2
bb2:
  ADD s8, s6, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  # implict jump to bb3
bb3:
  ADDI a5, zero, 2
  SUBW s8, s8, a5
  SLTI a5, s7, 20
  BNE a5, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADDW a5, s8, s10
  ADDW a5, s7, a5
  ADDW a5, a5, s9
  LA a6, e
  LW a6, 0(a6)
  ADDW a6, a6, s10
  LA a7, g
  LW a7, 0(a7)
  SUBW a6, a6, a7
  LA a7, h
  LW a7, 0(a7)
  ADDW a6, a6, a7
  SUBW a5, a5, a6
  ADD a0, a5, zero
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
bb6:
  ADD s0, s7, zero
  ADD s1, s8, zero
  ADD s2, s9, zero
  ADD s3, s10, zero
  JAL zero, bb1
bb7:
  # implict jump to bb8
bb8:
  ADD s11, s4, zero
  ADD t0, s5, zero
  ADD t1, s6, zero
  ADDIW t1, t1, 1
  XORI t2, t0, 7
  SLTIU t2, t2, 1
  BNE t2, zero, bb13
  # implict jump to bb9
bb9:
  ADD t2, t0, zero
  ADD a0, s11, zero
  # implict jump to bb10
bb10:
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDIW t2, t2, 1
  SLTI a5, t1, 10
  BNE a5, zero, bb12
  # implict jump to bb11
bb11:
  ADD s8, t1, zero
  ADD s9, t2, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  JAL zero, bb3
bb12:
  ADD s6, t1, zero
  ADD s5, t2, zero
  LW t4, 0(sp)
  ADD s4, t4, zero
  JAL zero, bb8
bb13:
  # implict jump to bb14
bb14:
  ADD a1, s11, zero
  ADD a2, t0, zero
  ADDI a3, zero, 1
  SUBW a2, a2, a3
  SLTI a3, a1, 20
  BNE a3, zero, bb19
  # implict jump to bb15
bb15:
  ADD a3, a1, zero
  # implict jump to bb16
bb16:
  ADDI a5, zero, 1
  SUBW a3, a3, a5
  XORI a5, a2, 7
  SLTIU a5, a5, 1
  BNE a5, zero, bb18
  # implict jump to bb17
bb17:
  ADD t2, a2, zero
  ADD a0, a3, zero
  JAL zero, bb10
bb18:
  ADD t0, a2, zero
  ADD s11, a3, zero
  JAL zero, bb14
bb19:
  # implict jump to bb20
bb20:
  ADD a4, a1, zero
  ADDIW a4, a4, 3
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  BLT a6, a5, bb24
  # implict jump to bb21
bb21:
  LA a5, e
  LW a5, 0(a5)
  ADDIW a5, a5, 1
  LA a6, e
  SW a5, 0(a6)
  SLTI a5, a4, 20
  BNE a5, zero, bb23
  # implict jump to bb22
bb22:
  ADD a3, a4, zero
  JAL zero, bb16
bb23:
  ADD a1, a4, zero
  JAL zero, bb20
bb24:
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  LA a6, e
  SW a5, 0(a6)
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  BLT a6, a5, bb26
  # implict jump to bb25
bb25:
  LA a5, f
  LW a5, 0(a5)
  ADDIW a5, a5, 1
  LA a6, f
  SW a5, 0(a6)
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  BLT a6, a5, bb24
  JAL zero, bb21
bb26:
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  SUBW a5, a5, a6
  LA a6, f
  SW a5, 0(a6)
  LA a5, g
  LW a5, 0(a5)
  SLTI a5, a5, 3
  BNE a5, zero, bb28
  # implict jump to bb27
bb27:
  LA a5, g
  LW a5, 0(a5)
  ADDI a6, zero, 8
  SUBW a5, a5, a6
  LA a6, g
  SW a5, 0(a6)
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  BLT a6, a5, bb26
  JAL zero, bb25
bb28:
  LA a5, g
  LW a5, 0(a5)
  ADDIW a5, a5, 10
  LA a6, g
  SW a5, 0(a6)
  LA a5, h
  LW a5, 0(a5)
  SLTI a5, a5, 10
  BNE a5, zero, bb30
  # implict jump to bb29
bb29:
  LA a5, h
  LW a5, 0(a5)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  LA a6, h
  SW a5, 0(a6)
  LA a5, g
  LW a5, 0(a5)
  SLTI a5, a5, 3
  BNE a5, zero, bb28
  JAL zero, bb27
bb30:
  LA a5, h
  LW a5, 0(a5)
  ADDIW a5, a5, 8
  LA a6, h
  SW a5, 0(a6)
  LA a5, h
  LW a5, 0(a5)
  SLTI a5, a5, 10
  BNE a5, zero, bb30
  JAL zero, bb29
EightWhile:
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
  ADDI s0, zero, 5
  ADDI s1, zero, 6
  ADDI s2, zero, 7
  ADDI s3, zero, 10
  # implict jump to bb32
bb32:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  ADDIW s7, s7, 3
  SLTI s8, s6, 10
  BNE s8, zero, bb38
  # implict jump to bb33
bb33:
  ADD s8, s6, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  # implict jump to bb34
bb34:
  ADDI a5, zero, 2
  SUBW s8, s8, a5
  SLTI a5, s7, 20
  BNE a5, zero, bb37
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADDW a5, s8, s10
  ADDW a5, s7, a5
  ADDW a5, a5, s9
  LA a6, e
  LW a6, 0(a6)
  ADDW a6, a6, s10
  LA a7, g
  LW a7, 0(a7)
  SUBW a6, a6, a7
  LA a7, h
  LW a7, 0(a7)
  ADDW a6, a6, a7
  SUBW a5, a5, a6
  ADD a0, a5, zero
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
bb37:
  ADD s0, s7, zero
  ADD s1, s8, zero
  ADD s2, s9, zero
  ADD s3, s10, zero
  JAL zero, bb32
bb38:
  # implict jump to bb39
bb39:
  ADD s11, s4, zero
  ADD t0, s5, zero
  ADD t1, s6, zero
  ADDIW t1, t1, 1
  XORI t2, t0, 7
  SLTIU t2, t2, 1
  BNE t2, zero, bb44
  # implict jump to bb40
bb40:
  ADD t2, t0, zero
  ADD a0, s11, zero
  # implict jump to bb41
bb41:
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDIW t2, t2, 1
  SLTI a5, t1, 10
  BNE a5, zero, bb43
  # implict jump to bb42
bb42:
  ADD s8, t1, zero
  ADD s9, t2, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  JAL zero, bb34
bb43:
  ADD s6, t1, zero
  ADD s5, t2, zero
  LW t4, 0(sp)
  ADD s4, t4, zero
  JAL zero, bb39
bb44:
  # implict jump to bb45
bb45:
  ADD a1, s11, zero
  ADD a2, t0, zero
  ADDI a3, zero, 1
  SUBW a2, a2, a3
  SLTI a3, a1, 20
  BNE a3, zero, bb50
  # implict jump to bb46
bb46:
  ADD a3, a1, zero
  # implict jump to bb47
bb47:
  ADDI a5, zero, 1
  SUBW a3, a3, a5
  XORI a5, a2, 7
  SLTIU a5, a5, 1
  BNE a5, zero, bb49
  # implict jump to bb48
bb48:
  ADD t2, a2, zero
  ADD a0, a3, zero
  JAL zero, bb41
bb49:
  ADD t0, a2, zero
  ADD s11, a3, zero
  JAL zero, bb45
bb50:
  # implict jump to bb51
bb51:
  ADD a4, a1, zero
  ADDIW a4, a4, 3
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  BLT a6, a5, bb55
  # implict jump to bb52
bb52:
  LA a5, e
  LW a5, 0(a5)
  ADDIW a5, a5, 1
  LA a6, e
  SW a5, 0(a6)
  SLTI a5, a4, 20
  BNE a5, zero, bb54
  # implict jump to bb53
bb53:
  ADD a3, a4, zero
  JAL zero, bb47
bb54:
  ADD a1, a4, zero
  JAL zero, bb51
bb55:
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  LA a6, e
  SW a5, 0(a6)
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  BLT a6, a5, bb57
  # implict jump to bb56
bb56:
  LA a5, f
  LW a5, 0(a5)
  ADDIW a5, a5, 1
  LA a6, f
  SW a5, 0(a6)
  LA a5, e
  LW a5, 0(a5)
  ADDI a6, zero, 1
  BLT a6, a5, bb55
  JAL zero, bb52
bb57:
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  SUBW a5, a5, a6
  LA a6, f
  SW a5, 0(a6)
  LA a5, g
  LW a5, 0(a5)
  SLTI a5, a5, 3
  BNE a5, zero, bb59
  # implict jump to bb58
bb58:
  LA a5, g
  LW a5, 0(a5)
  ADDI a6, zero, 8
  SUBW a5, a5, a6
  LA a6, g
  SW a5, 0(a6)
  LA a5, f
  LW a5, 0(a5)
  ADDI a6, zero, 2
  BLT a6, a5, bb57
  JAL zero, bb56
bb59:
  LA a5, g
  LW a5, 0(a5)
  ADDIW a5, a5, 10
  LA a6, g
  SW a5, 0(a6)
  LA a5, h
  LW a5, 0(a5)
  SLTI a5, a5, 10
  BNE a5, zero, bb61
  # implict jump to bb60
bb60:
  LA a5, h
  LW a5, 0(a5)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  LA a6, h
  SW a5, 0(a6)
  LA a5, g
  LW a5, 0(a5)
  SLTI a5, a5, 3
  BNE a5, zero, bb59
  JAL zero, bb58
bb61:
  LA a5, h
  LW a5, 0(a5)
  ADDIW a5, a5, 8
  LA a6, h
  SW a5, 0(a6)
  LA a5, h
  LW a5, 0(a5)
  SLTI a5, a5, 10
  BNE a5, zero, bb61
  JAL zero, bb60
