.global main
.global mm
.section .bss
B:
.space 4194304
C:
.space 4194304
A:
.space 4194304

.section .data



N:
.word 0x00000400
.section .text
main:
  ADDI sp, sp, -176
  SD s11, 64(sp)
  SD s10, 72(sp)
  SD s9, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s0, 144(sp)
  SD ra, 152(sp)
  SD s8, 160(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb52
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb48
  # implict jump to bb4
bb4:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb5
bb5:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s3, t4, 5
  BNE s3, zero, bb13
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LW t4, 0(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s11, 64(sp)
  LD s10, 72(sp)
  LD s9, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s0, 144(sp)
  LD ra, 152(sp)
  LD s8, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb9:
  ADD s4, s3, zero
  ADD s5, zero, zero
  # implict jump to bb10
bb10:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LW t4, 0(sp)
  SLT s8, s6, t4
  BNE s8, zero, bb12
  # implict jump to bb11
bb11:
  ADDIW s4, s2, 1
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb7
bb12:
  SLLIW s8, s2, 12
  LA s9, B
  ADD s10, s9, s8
  SLLIW s8, s6, 2
  ADD s9, s10, s8
  LW s8, 0(s9)
  ADDW s9, s7, s8
  ADDIW s8, s6, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  JAL zero, bb10
bb13:
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb44
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb16
bb16:
  LW t4, 16(sp)
  ADD s5, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb35
  # implict jump to bb17
bb17:
  ADD s0, zero, zero
  # implict jump to bb18
bb18:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb31
  # implict jump to bb19
bb19:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb20
bb20:
  LW t4, 40(sp)
  ADD s2, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb5
bb22:
  ADD s4, s2, zero
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb23
bb23:
  LW t4, 52(sp)
  ADD s5, t4, zero
  ADD t4, s4, zero
  SW t4, 36(sp)
  LW t4, 0(sp)
  SLT s7, s5, t4
  BNE s7, zero, bb25
  # implict jump to bb24
bb24:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb20
bb25:
  SLLIW s7, s5, 12
  LA s8, A
  ADD s9, s8, s7
  LW t4, 48(sp)
  SLLIW s8, t4, 2
  ADD s10, s9, s8
  LW s8, 0(s10)
  XOR s9, s8, zero
  SLTIU s8, s9, 1
  BNE s8, zero, bb30
  # implict jump to bb26
bb26:
  ADD s8, zero, zero
  # implict jump to bb27
bb27:
  ADD t4, s8, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb29
  # implict jump to bb28
bb28:
  ADDIW s0, s5, 1
  LW t4, 56(sp)
  ADD s4, t4, zero
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb23
bb29:
  LA s11, B
  ADD s6, s11, s7
  LW t4, 56(sp)
  SLLIW s11, t4, 2
  ADD s1, s6, s11
  LW s6, 0(s1)
  LW s0, 0(s10)
  LW t4, 48(sp)
  SLLIW s3, t4, 12
  LA s2, C
  ADD s9, s2, s3
  ADD s2, s9, s11
  LW s3, 0(s2)
  MULW s2, s0, s3
  ADDW s0, s6, s2
  SW s0, 0(s1)
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  ADD s8, s0, zero
  JAL zero, bb27
bb30:
  ADDIW s8, s5, 1
  LW t4, 36(sp)
  ADD s4, t4, zero
  ADD t4, s8, zero
  SW t4, 52(sp)
  JAL zero, bb23
bb31:
  ADD s2, zero, zero
  # implict jump to bb32
bb32:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb18
bb34:
  SLLIW s4, s1, 12
  LA s5, B
  ADD s6, s5, s4
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  SW zero, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb32
bb35:
  ADD s7, s5, zero
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb36
bb36:
  LW t4, 28(sp)
  ADD s8, t4, zero
  ADD t4, s7, zero
  SW t4, 12(sp)
  LW t4, 0(sp)
  SLT s10, s8, t4
  BNE s10, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 24(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb16
bb38:
  SLLIW s10, s8, 12
  LA s11, A
  ADD s0, s11, s10
  LW t4, 24(sp)
  SLLIW s11, t4, 2
  ADD s1, s0, s11
  LW s0, 0(s1)
  XOR s11, s0, zero
  SLTIU s0, s11, 1
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  ADD t4, s0, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb42
  # implict jump to bb41
bb41:
  ADDIW s0, s8, 1
  LW t4, 32(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 28(sp)
  JAL zero, bb36
bb42:
  LA s2, C
  ADD s9, s2, s10
  LW t4, 32(sp)
  SLLIW s2, t4, 2
  ADD s4, s9, s2
  LW s9, 0(s4)
  LW s3, 0(s1)
  LW t4, 24(sp)
  SLLIW s6, t4, 12
  LA s5, B
  ADD s11, s5, s6
  ADD s5, s11, s2
  LW s2, 0(s5)
  MULW s5, s3, s2
  ADDW s2, s9, s5
  SW s2, 0(s4)
  LW t4, 32(sp)
  ADDIW s2, t4, 1
  ADD s0, s2, zero
  JAL zero, bb40
bb43:
  ADDIW s0, s8, 1
  LW t4, 12(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 28(sp)
  JAL zero, bb36
bb44:
  ADD s5, zero, zero
  # implict jump to bb45
bb45:
  ADD s6, s5, zero
  LW t4, 0(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb14
bb47:
  SLLIW s7, s4, 12
  LA s8, C
  ADD s9, s8, s7
  SLLIW s7, s6, 2
  ADD s8, s9, s7
  SW zero, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb45
bb48:
  ADD s3, zero, zero
  # implict jump to bb49
bb49:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb51
  # implict jump to bb50
bb50:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb3
bb51:
  SLLIW s5, s2, 12
  LA s6, B
  ADD s7, s6, s5
  SLLIW s5, s4, 2
  ADD s6, s7, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb49
bb52:
  ADD s3, zero, zero
  # implict jump to bb53
bb53:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb55:
  SLLIW s5, s2, 12
  LA s6, A
  ADD s7, s6, s5
  SLLIW s5, s4, 2
  ADD s6, s7, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb53
mm:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD ra, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  # implict jump to bb57
bb57:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb70
  # implict jump to bb58
bb58:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb59
bb59:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s7, s0
  BNE s8, zero, bb61
  # implict jump to bb60
bb60:
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb61:
  ADD s8, s6, zero
  ADD s6, zero, zero
  # implict jump to bb62
bb62:
  ADD s9, s6, zero
  ADD s10, s8, zero
  SLT s11, s9, s0
  BNE s11, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s6, s7, 1
  ADD s4, s6, zero
  ADD s5, s10, zero
  JAL zero, bb59
bb64:
  SLLIW s11, s9, 12
  ADD t0, s1, s11
  SLLIW t1, s7, 2
  ADD t2, t0, t1
  LW t0, 0(t2)
  XOR t1, t0, zero
  SLTIU t0, t1, 1
  BNE t0, zero, bb69
  # implict jump to bb65
bb65:
  ADD t0, zero, zero
  # implict jump to bb66
bb66:
  ADD t1, t0, zero
  SLT a0, t1, s0
  BNE a0, zero, bb68
  # implict jump to bb67
bb67:
  ADDIW s11, s9, 1
  ADD s8, t1, zero
  ADD s6, s11, zero
  JAL zero, bb62
bb68:
  ADD a0, s3, s11
  SLLIW a1, t1, 2
  ADD a2, a0, a1
  LW a0, 0(a2)
  LW a3, 0(t2)
  SLLIW a4, s7, 12
  ADD a5, s2, a4
  ADD a4, a5, a1
  LW a1, 0(a4)
  MULW a4, a3, a1
  ADDW a1, a0, a4
  SW a1, 0(a2)
  ADDIW a0, t1, 1
  ADD t0, a0, zero
  JAL zero, bb66
bb69:
  ADDIW t0, s9, 1
  ADD s8, s10, zero
  ADD s6, t0, zero
  JAL zero, bb62
bb70:
  ADD s6, zero, zero
  # implict jump to bb71
bb71:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb73
  # implict jump to bb72
bb72:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb57
bb73:
  SLLIW s8, s5, 12
  ADD s9, s3, s8
  SLLIW s8, s7, 2
  ADD s10, s9, s8
  SW zero, 0(s10)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb71
