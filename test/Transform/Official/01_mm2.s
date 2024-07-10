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
  SD s6, 88(sp)
  SD ra, 96(sp)
  SD s11, 104(sp)
  SD s7, 112(sp)
  SD s10, 120(sp)
  SD s3, 128(sp)
  SD s0, 136(sp)
  SD s5, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s4, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 4(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb52
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb3
bb3:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 4(sp)
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
  SW t4, 24(sp)
  LW t4, 24(sp)
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
  LW t4, 4(sp)
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
  LD s6, 88(sp)
  LD ra, 96(sp)
  LD s11, 104(sp)
  LD s7, 112(sp)
  LD s10, 120(sp)
  LD s3, 128(sp)
  LD s0, 136(sp)
  LD s5, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s4, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb9:
  ADD s11, s10, zero
  ADD s10, zero, zero
  # implict jump to bb10
bb10:
  ADD s2, s10, zero
  ADD s0, s11, zero
  LW t4, 4(sp)
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
  ADD s8, s7, s1
  SLLIW s1, s2, 2
  ADD s7, s8, s1
  LW s1, 0(s7)
  ADDW s7, s0, s1
  ADDIW s0, s2, 1
  ADD s11, s7, zero
  ADD s10, s0, zero
  JAL zero, bb10
bb13:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb14
bb14:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 4(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb44
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb16
bb16:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  BNE s10, zero, bb35
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb18
bb18:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 4(sp)
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
  SW t4, 56(sp)
  LW t4, 56(sp)
  LW t3, 4(sp)
  SLT s0, t4, t3
  BNE s0, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 24(sp)
  ADDIW s0, t4, 1
  ADD s5, s0, zero
  JAL zero, bb5
bb22:
  ADD t4, s1, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb23
bb23:
  LW t4, 60(sp)
  ADD s5, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 4(sp)
  SLT s7, s5, t4
  BNE s7, zero, bb25
  # implict jump to bb24
bb24:
  LW t4, 56(sp)
  ADDIW s7, t4, 1
  ADD s4, s7, zero
  LW t4, 64(sp)
  ADD s3, t4, zero
  JAL zero, bb20
bb25:
  SLLIW s3, s5, 12
  LA s4, A
  ADD s7, s4, s3
  LW t4, 56(sp)
  SLLIW s4, t4, 2
  ADD s2, s7, s4
  LW s4, 0(s2)
  XOR s7, s4, zero
  SLTIU s4, s7, 1
  BNE s4, zero, bb30
  # implict jump to bb26
bb26:
  ADD s4, zero, zero
  # implict jump to bb27
bb27:
  ADD s7, s4, zero
  LW t4, 4(sp)
  SLT s8, s7, t4
  BNE s8, zero, bb29
  # implict jump to bb28
bb28:
  ADDIW s8, s5, 1
  ADD t4, s7, zero
  SW t4, 68(sp)
  ADD t4, s8, zero
  SW t4, 60(sp)
  JAL zero, bb23
bb29:
  LA s8, B
  ADD s11, s8, s3
  SLLIW s8, s7, 2
  ADD s10, s11, s8
  LW s11, 0(s10)
  LW s6, 0(s2)
  LW t4, 56(sp)
  SLLIW s1, t4, 12
  LA s9, C
  ADD s0, s9, s1
  ADD s1, s0, s8
  LW s0, 0(s1)
  MULW s1, s6, s0
  ADDW s0, s11, s1
  SW s0, 0(s10)
  ADDIW s0, s7, 1
  ADD s4, s0, zero
  JAL zero, bb27
bb30:
  ADDIW s0, s5, 1
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb23
bb31:
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 48(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 52(sp)
  JAL zero, bb18
bb34:
  LW t4, 48(sp)
  SLLIW s2, t4, 12
  LA s3, B
  ADD s4, s3, s2
  SLLIW s2, s1, 2
  ADD s3, s4, s2
  SW zero, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb32
bb35:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb36
bb36:
  LW t4, 72(sp)
  ADD s2, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 4(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb38
  # implict jump to bb37
bb37:
  LW t4, 32(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 40(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb16
bb38:
  SLLIW s4, s2, 12
  LA s5, A
  ADD s6, s5, s4
  LW t4, 32(sp)
  SLLIW s5, t4, 2
  ADD s7, s6, s5
  LW s5, 0(s7)
  XOR s6, s5, zero
  SLTIU s5, s6, 1
  BNE s5, zero, bb43
  # implict jump to bb39
bb39:
  ADD s5, zero, zero
  # implict jump to bb40
bb40:
  ADD s6, s5, zero
  LW t4, 4(sp)
  SLT s8, s6, t4
  BNE s8, zero, bb42
  # implict jump to bb41
bb41:
  ADDIW s8, s2, 1
  ADD t4, s6, zero
  SW t4, 80(sp)
  ADD t4, s8, zero
  SW t4, 72(sp)
  JAL zero, bb36
bb42:
  LA s8, C
  ADD s9, s8, s4
  SLLIW s8, s6, 2
  ADD s10, s9, s8
  LW s9, 0(s10)
  LW s11, 0(s7)
  LW t4, 32(sp)
  SLLIW s1, t4, 12
  LA s3, B
  ADD s0, s3, s1
  ADD s1, s0, s8
  LW s0, 0(s1)
  MULW s1, s11, s0
  ADDW s0, s9, s1
  SW s0, 0(s10)
  ADDIW s0, s6, 1
  ADD s5, s0, zero
  JAL zero, bb40
bb43:
  ADDIW s0, s2, 1
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb36
bb44:
  ADD s0, zero, zero
  # implict jump to bb45
bb45:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb47
  # implict jump to bb46
bb46:
  LW t4, 20(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 28(sp)
  JAL zero, bb14
bb47:
  LW t4, 20(sp)
  SLLIW s2, t4, 12
  LA s3, C
  ADD s4, s3, s2
  SLLIW s2, s1, 2
  ADD s3, s4, s2
  SW zero, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb45
bb48:
  ADD s0, zero, zero
  # implict jump to bb49
bb49:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb51
  # implict jump to bb50
bb50:
  LW t4, 12(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 16(sp)
  JAL zero, bb3
bb51:
  LW t4, 12(sp)
  SLLIW s2, t4, 12
  LA s3, B
  ADD s4, s3, s2
  SLLIW s2, s1, 2
  ADD s3, s4, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb49
bb52:
  ADD s0, zero, zero
  # implict jump to bb53
bb53:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb55
  # implict jump to bb54
bb54:
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb55:
  LW t4, 0(sp)
  SLLIW s2, t4, 12
  LA s3, A
  ADD s4, s3, s2
  SLLIW s2, s1, 2
  ADD s3, s4, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb59
bb59:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, s0
  BNE s10, zero, bb61
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
  ADD s10, s8, zero
  ADD s8, zero, zero
  # implict jump to bb62
bb62:
  ADD s11, s8, zero
  ADD t0, s10, zero
  SLT t1, s11, s0
  BNE t1, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW t1, s9, 1
  ADD s6, t1, zero
  ADD s7, t0, zero
  JAL zero, bb59
bb64:
  SLLIW s6, s11, 12
  ADD s7, s1, s6
  SLLIW t1, s9, 2
  ADD t2, s7, t1
  LW s7, 0(t2)
  XOR t1, s7, zero
  SLTIU s7, t1, 1
  BNE s7, zero, bb69
  # implict jump to bb65
bb65:
  ADD s7, zero, zero
  # implict jump to bb66
bb66:
  ADD t1, s7, zero
  SLT a0, t1, s0
  BNE a0, zero, bb68
  # implict jump to bb67
bb67:
  ADDIW a0, s11, 1
  ADD s10, t1, zero
  ADD s8, a0, zero
  JAL zero, bb62
bb68:
  ADD a0, s3, s6
  SLLIW a1, t1, 2
  ADD a2, a0, a1
  LW a0, 0(a2)
  LW a3, 0(t2)
  SLLIW a4, s9, 12
  ADD a5, s2, a4
  ADD a4, a5, a1
  LW a1, 0(a4)
  MULW a4, a3, a1
  ADDW a1, a0, a4
  SW a1, 0(a2)
  ADDIW a0, t1, 1
  ADD s7, a0, zero
  JAL zero, bb66
bb69:
  ADDIW s6, s11, 1
  ADD s10, t0, zero
  ADD s8, s6, zero
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
  ADDIW s8, s5, 1
  ADD s4, s8, zero
  JAL zero, bb57
bb73:
  SLLIW s4, s5, 12
  ADD s8, s3, s4
  SLLIW s4, s7, 2
  ADD s9, s8, s4
  SW zero, 0(s9)
  ADDIW s4, s7, 1
  ADD s6, s4, zero
  JAL zero, bb71
