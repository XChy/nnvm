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
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s8, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s9, 144(sp)
  SD s11, 152(sp)
  SD s10, 168(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb1
bb1:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb52
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb3
bb3:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb48
  # implict jump to bb4
bb4:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s5, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
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
  LW t4, 32(sp)
  BLT s9, t4, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s8, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s9, 144(sp)
  LD s11, 152(sp)
  LD s10, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb9:
  SLLIW s11, s9, 12
  LA s2, B
  ADD s2, s2, s11
  ADD s11, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, s11, zero
  ADD s1, s10, zero
  LW t4, 32(sp)
  BLT s0, t4, bb12
  # implict jump to bb11
bb11:
  ADDIW s4, s9, 1
  ADD s7, s1, zero
  ADD s8, s4, zero
  JAL zero, bb7
bb12:
  SLLIW s4, s0, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  ADDW s1, s1, s4
  ADDIW s0, s0, 1
  ADD s10, s1, zero
  ADD s11, s0, zero
  JAL zero, bb10
bb13:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb14
bb14:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb44
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb16
bb16:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb35
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb18
bb18:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb31
  # implict jump to bb19
bb19:
  ADD s11, zero, zero
  ADD s3, zero, zero
  # implict jump to bb20
bb20:
  ADD s1, s3, zero
  ADD s6, s11, zero
  LW t4, 32(sp)
  BLT s6, t4, bb22
  # implict jump to bb21
bb21:
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD s5, s0, zero
  JAL zero, bb5
bb22:
  SLLIW t4, s6, 2
  SW t4, 0(sp)
  SLLIW s5, s6, 12
  LA s8, C
  ADD t4, s8, s5
  SD t4, 176(sp)
  ADD s8, zero, zero
  # implict jump to bb23
bb23:
  ADD s4, s8, zero
  ADD s2, s1, zero
  LW t4, 32(sp)
  BLT s4, t4, bb25
  # implict jump to bb24
bb24:
  ADDIW s7, s6, 1
  ADD s11, s7, zero
  ADD s3, s2, zero
  JAL zero, bb20
bb25:
  SLLIW s3, s4, 12
  LA s7, A
  ADD s7, s7, s3
  LW t4, 0(sp)
  ADD s7, s7, t4
  LW s7, 0(s7)
  SLTIU s11, s7, 1
  BNE s11, zero, bb30
  # implict jump to bb26
bb26:
  LA s11, B
  ADD s3, s11, s3
  ADD s11, zero, zero
  # implict jump to bb27
bb27:
  ADD s10, s11, zero
  LW t4, 32(sp)
  BLT s10, t4, bb29
  # implict jump to bb28
bb28:
  ADDIW s9, s4, 1
  ADD s1, s10, zero
  ADD s8, s9, zero
  JAL zero, bb23
bb29:
  SLLIW s9, s10, 2
  ADD s5, s3, s9
  LW s0, 0(s5)
  LD t4, 176(sp)
  ADD s9, t4, s9
  LW s9, 0(s9)
  MULW s9, s7, s9
  ADDW s0, s0, s9
  SW s0, 0(s5)
  ADDIW s0, s10, 1
  ADD s11, s0, zero
  JAL zero, bb27
bb30:
  ADDIW s0, s4, 1
  ADD s1, s2, zero
  ADD s8, s0, zero
  JAL zero, bb23
bb31:
  LW t4, 8(sp)
  SLLIW s0, t4, 12
  LA s1, B
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb32
bb32:
  ADD s2, s1, zero
  LW t4, 32(sp)
  BLT s2, t4, bb34
  # implict jump to bb33
bb33:
  LW t4, 8(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 4(sp)
  JAL zero, bb18
bb34:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb32
bb35:
  LW t4, 24(sp)
  SLLIW s0, t4, 2
  LW t4, 24(sp)
  SLLIW s1, t4, 12
  LA s2, B
  ADD t4, s2, s1
  SD t4, 160(sp)
  LW t4, 12(sp)
  ADD s2, t4, zero
  ADD s3, zero, zero
  # implict jump to bb36
bb36:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LW t4, 32(sp)
  BLT s4, t4, bb38
  # implict jump to bb37
bb37:
  LW t4, 24(sp)
  ADDIW s6, t4, 1
  ADD t4, s6, zero
  SW t4, 16(sp)
  ADD t4, s5, zero
  SW t4, 20(sp)
  JAL zero, bb16
bb38:
  SLLIW s6, s4, 12
  LA s7, A
  ADD s7, s7, s6
  ADD s7, s7, s0
  LW s7, 0(s7)
  SLTIU s8, s7, 1
  BNE s8, zero, bb43
  # implict jump to bb39
bb39:
  LA s8, C
  ADD s6, s8, s6
  ADD s8, zero, zero
  # implict jump to bb40
bb40:
  ADD s9, s8, zero
  LW t4, 32(sp)
  BLT s9, t4, bb42
  # implict jump to bb41
bb41:
  ADDIW s10, s4, 1
  ADD s2, s9, zero
  ADD s3, s10, zero
  JAL zero, bb36
bb42:
  SLLIW s10, s9, 2
  ADD s11, s6, s10
  LW s1, 0(s11)
  LD t4, 160(sp)
  ADD s10, t4, s10
  LW s10, 0(s10)
  MULW s10, s7, s10
  ADDW s1, s1, s10
  SW s1, 0(s11)
  ADDIW s1, s9, 1
  ADD s8, s1, zero
  JAL zero, bb40
bb43:
  ADDIW s1, s4, 1
  ADD s2, s5, zero
  ADD s3, s1, zero
  JAL zero, bb36
bb44:
  LW t4, 48(sp)
  SLLIW s0, t4, 12
  LA s1, C
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb45
bb45:
  ADD s2, s1, zero
  LW t4, 32(sp)
  BLT s2, t4, bb47
  # implict jump to bb46
bb46:
  LW t4, 48(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 56(sp)
  JAL zero, bb14
bb47:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb45
bb48:
  LW t4, 40(sp)
  SLLIW s0, t4, 12
  LA s1, B
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb49
bb49:
  ADD s2, s1, zero
  LW t4, 32(sp)
  BLT s2, t4, bb51
  # implict jump to bb50
bb50:
  LW t4, 40(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 44(sp)
  JAL zero, bb3
bb51:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb49
bb52:
  LW t4, 28(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb53
bb53:
  ADD s2, s1, zero
  LW t4, 32(sp)
  BLT s2, t4, bb55
  # implict jump to bb54
bb54:
  LW t4, 28(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 36(sp)
  JAL zero, bb1
bb55:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
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
  BLT s1, a0, bb70
  # implict jump to bb58
bb58:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb59
bb59:
  ADD s4, s3, zero
  ADD s5, s2, zero
  BLT s5, a0, bb61
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
  SLLIW s6, s5, 2
  SLLIW s7, s5, 12
  ADD s7, a2, s7
  ADD s8, zero, zero
  # implict jump to bb62
bb62:
  ADD s9, s8, zero
  ADD s10, s4, zero
  BLT s9, a0, bb64
  # implict jump to bb63
bb63:
  ADDIW s11, s5, 1
  ADD s2, s11, zero
  ADD s3, s10, zero
  JAL zero, bb59
bb64:
  SLLIW s2, s9, 12
  ADD s3, a1, s2
  ADD s3, s3, s6
  LW s11, 0(s3)
  SLTIU s11, s11, 1
  BNE s11, zero, bb69
  # implict jump to bb65
bb65:
  ADD s2, a3, s2
  ADD s11, zero, zero
  # implict jump to bb66
bb66:
  ADD t0, s11, zero
  BLT t0, a0, bb68
  # implict jump to bb67
bb67:
  ADDIW t1, s9, 1
  ADD s4, t0, zero
  ADD s8, t1, zero
  JAL zero, bb62
bb68:
  SLLIW t1, t0, 2
  ADD t2, s2, t1
  LW a4, 0(t2)
  LW a5, 0(s3)
  ADD t1, s7, t1
  LW t1, 0(t1)
  MULW t1, a5, t1
  ADDW t1, a4, t1
  SW t1, 0(t2)
  ADDIW t0, t0, 1
  ADD s11, t0, zero
  JAL zero, bb66
bb69:
  ADDIW s2, s9, 1
  ADD s4, s10, zero
  ADD s8, s2, zero
  JAL zero, bb62
bb70:
  SLLIW s2, s1, 12
  ADD s2, a3, s2
  ADD s3, zero, zero
  # implict jump to bb71
bb71:
  ADD s4, s3, zero
  BLT s4, a0, bb73
  # implict jump to bb72
bb72:
  ADDIW s5, s1, 1
  ADD s0, s5, zero
  JAL zero, bb57
bb73:
  SLLIW s0, s4, 2
  ADD s0, s2, s0
  SW zero, 0(s0)
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb71
