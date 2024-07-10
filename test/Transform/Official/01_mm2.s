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
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s7, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb1
bb1:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 56(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb52
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb3
bb3:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 56(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb48
  # implict jump to bb4
bb4:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s5, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s7, t4, 5
  BNE s7, zero, bb13
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  ADD s10, s7, zero
  LW t4, 56(sp)
  SLT s11, s9, t4
  BNE s11, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s7, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb9:
  ADD s11, zero, zero
  # implict jump to bb10
bb10:
  ADD s2, s11, zero
  ADD s0, s10, zero
  LW t4, 56(sp)
  SLT s1, s2, t4
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:
  ADDIW s1, s9, 1
  ADD s7, s0, zero
  ADD s8, s1, zero
  JAL zero, bb7
bb12:
  SLLIW s1, s9, 12
  LA s7, B
  ADD s1, s7, s1
  SLLIW s7, s2, 2
  ADD s1, s1, s7
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDIW s1, s2, 1
  ADD s10, s0, zero
  ADD s11, s1, zero
  JAL zero, bb10
bb13:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb14
bb14:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  LW t3, 56(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb44
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb16
bb16:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 56(sp)
  SLT s10, t4, t3
  BNE s10, zero, bb35
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb18
bb18:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 56(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb31
  # implict jump to bb19
bb19:
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb20
bb20:
  ADD s1, s3, zero
  ADD t4, s4, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 56(sp)
  SLT s0, t4, t3
  BNE s0, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD s5, s0, zero
  JAL zero, bb5
bb22:
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb23
bb23:
  LW t4, 4(sp)
  ADD s5, t4, zero
  LW t4, 64(sp)
  ADD s9, t4, zero
  LW t4, 56(sp)
  SLT s7, s5, t4
  BNE s7, zero, bb25
  # implict jump to bb24
bb24:
  LW t4, 8(sp)
  ADDIW s7, t4, 1
  ADD s4, s7, zero
  ADD s3, s9, zero
  JAL zero, bb20
bb25:
  SLLIW s3, s5, 12
  LA s4, A
  ADD s4, s4, s3
  LW t4, 8(sp)
  SLLIW s7, t4, 2
  ADD s4, s4, s7
  LW s7, 0(s4)
  XOR s7, s7, zero
  SLTIU s7, s7, 1
  BNE s7, zero, bb30
  # implict jump to bb26
bb26:
  ADD s7, zero, zero
  # implict jump to bb27
bb27:
  ADD s2, s7, zero
  LW t4, 56(sp)
  SLT s8, s2, t4
  BNE s8, zero, bb29
  # implict jump to bb28
bb28:
  ADDIW s8, s5, 1
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s8, zero
  SW t4, 4(sp)
  JAL zero, bb23
bb29:
  LA s8, B
  ADD s8, s8, s3
  SLLIW s11, s2, 2
  ADD s8, s8, s11
  LW s10, 0(s8)
  LW s6, 0(s4)
  LW t4, 8(sp)
  SLLIW s1, t4, 12
  LA s0, C
  ADD s0, s0, s1
  ADD s0, s0, s11
  LW s0, 0(s0)
  MULW s0, s6, s0
  ADDW s0, s10, s0
  SW s0, 0(s8)
  ADDIW s0, s2, 1
  ADD s7, s0, zero
  JAL zero, bb27
bb30:
  ADDIW s0, s5, 1
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb23
bb31:
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s1, s0, zero
  LW t4, 56(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 16(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 12(sp)
  JAL zero, bb18
bb34:
  LW t4, 16(sp)
  SLLIW s2, t4, 12
  LA s3, B
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb32
bb35:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb36
bb36:
  LW t4, 68(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD s3, t4, zero
  LW t4, 56(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 32(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 28(sp)
  JAL zero, bb16
bb38:
  SLLIW s4, s2, 12
  LA s5, A
  ADD s5, s5, s4
  LW t4, 32(sp)
  SLLIW s6, t4, 2
  ADD s5, s5, s6
  LW s6, 0(s5)
  XOR s6, s6, zero
  SLTIU s6, s6, 1
  BNE s6, zero, bb43
  # implict jump to bb39
bb39:
  ADD s6, zero, zero
  # implict jump to bb40
bb40:
  ADD s7, s6, zero
  LW t4, 56(sp)
  SLT s8, s7, t4
  BNE s8, zero, bb42
  # implict jump to bb41
bb41:
  ADDIW s8, s2, 1
  ADD t4, s7, zero
  SW t4, 72(sp)
  ADD t4, s8, zero
  SW t4, 68(sp)
  JAL zero, bb36
bb42:
  LA s8, C
  ADD s8, s8, s4
  SLLIW s9, s7, 2
  ADD s8, s8, s9
  LW s10, 0(s8)
  LW s11, 0(s5)
  LW t4, 32(sp)
  SLLIW s1, t4, 12
  LA s0, B
  ADD s0, s0, s1
  ADD s0, s0, s9
  LW s0, 0(s0)
  MULW s0, s11, s0
  ADDW s0, s10, s0
  SW s0, 0(s8)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb40
bb43:
  ADDIW s0, s2, 1
  ADD t4, s3, zero
  SW t4, 72(sp)
  ADD t4, s0, zero
  SW t4, 68(sp)
  JAL zero, bb36
bb44:
  ADD s0, zero, zero
  # implict jump to bb45
bb45:
  ADD s1, s0, zero
  LW t4, 56(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb47
  # implict jump to bb46
bb46:
  LW t4, 44(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 36(sp)
  JAL zero, bb14
bb47:
  LW t4, 44(sp)
  SLLIW s2, t4, 12
  LA s3, C
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb45
bb48:
  ADD s0, zero, zero
  # implict jump to bb49
bb49:
  ADD s1, s0, zero
  LW t4, 56(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb51
  # implict jump to bb50
bb50:
  LW t4, 48(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 0(sp)
  JAL zero, bb3
bb51:
  LW t4, 48(sp)
  SLLIW s2, t4, 12
  LA s3, B
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb49
bb52:
  ADD s0, zero, zero
  # implict jump to bb53
bb53:
  ADD s1, s0, zero
  LW t4, 56(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb55
  # implict jump to bb54
bb54:
  LW t4, 60(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 52(sp)
  JAL zero, bb1
bb55:
  LW t4, 60(sp)
  SLLIW s2, t4, 12
  LA s3, A
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  CALL getint
  SW a0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb53
mm:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  # implict jump to bb57
bb57:
  ADD s1, s0, zero
  SLT s2, s1, a0
  BNE s2, zero, bb70
  # implict jump to bb58
bb58:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb59
bb59:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s5, a0
  BNE s6, zero, bb61
  # implict jump to bb60
bb60:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb61:
  ADD s6, zero, zero
  # implict jump to bb62
bb62:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLT s9, s7, a0
  BNE s9, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s9, s5, 1
  ADD s2, s9, zero
  ADD s3, s8, zero
  JAL zero, bb59
bb64:
  SLLIW s2, s7, 12
  ADD s3, a1, s2
  SLLIW s9, s5, 2
  ADD s3, s3, s9
  LW s9, 0(s3)
  XOR s9, s9, zero
  SLTIU s9, s9, 1
  BNE s9, zero, bb69
  # implict jump to bb65
bb65:
  ADD s9, zero, zero
  # implict jump to bb66
bb66:
  ADD s10, s9, zero
  SLT s11, s10, a0
  BNE s11, zero, bb68
  # implict jump to bb67
bb67:
  ADDIW s11, s7, 1
  ADD s4, s10, zero
  ADD s6, s11, zero
  JAL zero, bb62
bb68:
  ADD s11, a3, s2
  SLLIW t0, s10, 2
  ADD s11, s11, t0
  LW t1, 0(s11)
  LW t2, 0(s3)
  SLLIW a4, s5, 12
  ADD a4, a2, a4
  ADD t0, a4, t0
  LW t0, 0(t0)
  MULW t0, t2, t0
  ADDW t0, t1, t0
  SW t0, 0(s11)
  ADDIW s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb66
bb69:
  ADDIW s2, s7, 1
  ADD s4, s8, zero
  ADD s6, s2, zero
  JAL zero, bb62
bb70:
  ADD s2, zero, zero
  # implict jump to bb71
bb71:
  ADD s3, s2, zero
  SLT s4, s3, a0
  BNE s4, zero, bb73
  # implict jump to bb72
bb72:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb57
bb73:
  SLLIW s0, s1, 12
  ADD s0, a3, s0
  SLLIW s4, s3, 2
  ADD s0, s0, s4
  SW zero, 0(s0)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb71
