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
  ADDI sp, sp, -224
  SD s11, 120(sp)
  SD s10, 128(sp)
  SD s9, 136(sp)
  SD s7, 144(sp)
  SD s1, 152(sp)
  SD s6, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s4, 184(sp)
  SD s5, 192(sp)
  SD s0, 200(sp)
  SD ra, 208(sp)
  SD s8, 216(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADD s1, zero, zero
  JAL zero, bb7
bb4:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  LUI s5, 1
  ADDIW s5, s5, 0
  MULW s6, s2, s5
  LA s5, A
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb4
bb6:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb7:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADD s3, zero, zero
  JAL zero, bb10
bb9:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb13
bb10:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb11
  JAL zero, bb12
bb11:
  LUI s5, 1
  ADDIW s5, s5, 0
  MULW s6, s2, s5
  LA s5, B
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb10
bb12:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb7
bb13:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI s3, t4, 5
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  JAL zero, bb22
bb15:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb16
bb16:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LW t4, 0(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb17
  JAL zero, bb18
bb17:
  ADD s4, s3, zero
  ADD s5, zero, zero
  JAL zero, bb19
bb18:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s11, 120(sp)
  LD s10, 128(sp)
  LD s9, 136(sp)
  LD s7, 144(sp)
  LD s1, 152(sp)
  LD s6, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s5, 192(sp)
  LD s0, 200(sp)
  LD ra, 208(sp)
  LD s8, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb19:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LW t4, 0(sp)
  SLT s8, s6, t4
  BNE s8, zero, bb20
  JAL zero, bb21
bb20:
  LUI s8, 1
  ADDIW s8, s8, 0
  MULW s9, s2, s8
  LA s8, B
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s10, s9
  LW s9, 0(s8)
  ADDW s8, s7, s9
  ADDIW s9, s6, 1
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb19
bb21:
  ADDIW s4, s2, 1
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb16
bb22:
  ADD s3, zero, zero
  JAL zero, bb23
bb23:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb24
  JAL zero, bb25
bb24:
  ADD s5, zero, zero
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb29
bb26:
  ADD s6, s5, zero
  LW t4, 0(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb27
  JAL zero, bb28
bb27:
  LUI s7, 1
  ADDIW s7, s7, 0
  MULW s8, s4, s7
  LA s7, C
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  SW zero, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb26
bb28:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb23
bb29:
  LW t4, 32(sp)
  ADD s5, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb30
  JAL zero, bb31
bb30:
  ADD s7, s5, zero
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb32
bb31:
  JAL zero, bb40
bb32:
  LW t4, 56(sp)
  ADD s8, t4, zero
  ADD t4, s7, zero
  SW t4, 24(sp)
  LW t4, 0(sp)
  SLT s10, s8, t4
  BNE s10, zero, bb33
  JAL zero, bb34
bb33:
  LUI s10, 1
  ADDIW s10, s10, 0
  MULW s11, s8, s10
  LA s10, A
  ADD s0, s10, s11
  ADDI s10, zero, 4
  LW t4, 48(sp)
  MULW s1, t4, s10
  ADD s10, s0, s1
  LW s0, 0(s10)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb35
  JAL zero, bb36
bb34:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb29
bb35:
  ADDIW s0, s8, 1
  LW t4, 24(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb32
bb36:
  ADD s0, zero, zero
  JAL zero, bb37
bb37:
  ADD t4, s0, zero
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb38
  JAL zero, bb39
bb38:
  LA s2, C
  ADD s9, s2, s11
  ADDI s2, zero, 4
  LW t4, 64(sp)
  MULW s4, t4, s2
  ADD s2, s9, s4
  LW s9, 0(s2)
  LW s3, 0(s10)
  LUI s6, 1
  ADDIW s6, s6, 0
  LW t4, 48(sp)
  MULW s5, t4, s6
  LA s6, B
  ADD s1, s6, s5
  ADD s5, s1, s4
  LW s1, 0(s5)
  MULW s4, s3, s1
  ADDW s1, s9, s4
  SW s1, 0(s2)
  LW t4, 64(sp)
  ADDIW s1, t4, 1
  ADD s0, s1, zero
  JAL zero, bb37
bb39:
  ADDIW s0, s8, 1
  LW t4, 64(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb32
bb40:
  ADD s0, zero, zero
  JAL zero, bb41
bb41:
  ADD s1, s0, zero
  LW t4, 0(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb42
  JAL zero, bb43
bb42:
  ADD s2, zero, zero
  JAL zero, bb44
bb43:
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  JAL zero, bb47
bb44:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb45
  JAL zero, bb46
bb45:
  LUI s4, 1
  ADDIW s4, s4, 0
  MULW s5, s1, s4
  LA s4, B
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  SW zero, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb44
bb46:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb41
bb47:
  LW t4, 80(sp)
  ADD s2, t4, zero
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb48
  JAL zero, bb49
bb48:
  ADD s4, s2, zero
  ADD t4, zero, zero
  SW t4, 104(sp)
  JAL zero, bb50
bb49:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb13
bb50:
  LW t4, 104(sp)
  ADD s5, t4, zero
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t4, 0(sp)
  SLT s7, s5, t4
  BNE s7, zero, bb51
  JAL zero, bb52
bb51:
  LUI s7, 1
  ADDIW s7, s7, 0
  MULW s8, s5, s7
  LA s7, A
  ADD s9, s7, s8
  ADDI s7, zero, 4
  LW t4, 96(sp)
  MULW s10, t4, s7
  ADD s7, s9, s10
  LW s9, 0(s7)
  XOR s10, s9, zero
  SLTIU s9, s10, 1
  BNE s9, zero, bb53
  JAL zero, bb54
bb52:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 88(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb47
bb53:
  ADDIW s9, s5, 1
  LW t4, 72(sp)
  ADD s4, t4, zero
  ADD t4, s9, zero
  SW t4, 104(sp)
  JAL zero, bb50
bb54:
  ADD s9, zero, zero
  JAL zero, bb55
bb55:
  ADD t4, s9, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  LW t3, 0(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb56
  JAL zero, bb57
bb56:
  LA s11, B
  ADD s6, s11, s8
  ADDI s11, zero, 4
  LW t4, 112(sp)
  MULW s1, t4, s11
  ADD s11, s6, s1
  LW s6, 0(s11)
  LW s0, 0(s7)
  LUI s3, 1
  ADDIW s3, s3, 0
  LW t4, 96(sp)
  MULW s2, t4, s3
  LA s3, C
  ADD s10, s3, s2
  ADD s2, s10, s1
  LW s1, 0(s2)
  MULW s2, s0, s1
  ADDW s0, s6, s2
  SW s0, 0(s11)
  LW t4, 112(sp)
  ADDIW s0, t4, 1
  ADD s9, s0, zero
  JAL zero, bb55
bb57:
  ADDIW s0, s5, 1
  LW t4, 112(sp)
  ADD s4, t4, zero
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb50
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
  JAL zero, bb59
bb59:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb60
  JAL zero, bb61
bb60:
  ADD s6, zero, zero
  JAL zero, bb62
bb61:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb65
bb62:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb63
  JAL zero, bb64
bb63:
  LUI s8, 1
  ADDIW s8, s8, 0
  MULW s9, s5, s8
  ADD s8, s3, s9
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s8, s10
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb62
bb64:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb59
bb65:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s7, s0
  BNE s8, zero, bb66
  JAL zero, bb67
bb66:
  ADD s8, s6, zero
  ADD s6, zero, zero
  JAL zero, bb68
bb67:
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
bb68:
  ADD s9, s6, zero
  ADD s10, s8, zero
  SLT s11, s9, s0
  BNE s11, zero, bb69
  JAL zero, bb70
bb69:
  LUI s11, 1
  ADDIW s11, s11, 0
  MULW t0, s9, s11
  ADD s11, s1, t0
  ADDI t1, zero, 4
  MULW t2, s7, t1
  ADD t1, s11, t2
  LW s11, 0(t1)
  XOR t2, s11, zero
  SLTIU s11, t2, 1
  BNE s11, zero, bb71
  JAL zero, bb72
bb70:
  ADDIW s6, s7, 1
  ADD s4, s6, zero
  ADD s5, s10, zero
  JAL zero, bb65
bb71:
  ADDIW s11, s9, 1
  ADD s8, s10, zero
  ADD s6, s11, zero
  JAL zero, bb68
bb72:
  ADD s11, zero, zero
  JAL zero, bb73
bb73:
  ADD t2, s11, zero
  SLT a0, t2, s0
  BNE a0, zero, bb74
  JAL zero, bb75
bb74:
  ADD a0, s3, t0
  ADDI a1, zero, 4
  MULW a2, t2, a1
  ADD a1, a0, a2
  LW a0, 0(a1)
  LW a3, 0(t1)
  LUI a4, 1
  ADDIW a4, a4, 0
  MULW a5, s7, a4
  ADD a4, s2, a5
  ADD a5, a4, a2
  LW a2, 0(a5)
  MULW a4, a3, a2
  ADDW a2, a0, a4
  SW a2, 0(a1)
  ADDIW a0, t2, 1
  ADD s11, a0, zero
  JAL zero, bb73
bb75:
  ADDIW s11, s9, 1
  ADD s8, t2, zero
  ADD s6, s11, zero
  JAL zero, bb68
