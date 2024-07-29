.global main
.global matrix_multiply
.section .bss



b:
.space 40000

a:
.space 40000
res:
.space 40000

.section .data
m2:
.word 0x00000000
n1:
.word 0x00000000
m1:
.word 0x00000000

n2:
.word 0x00000000


MAX_SIZE:
.word 0x00000064
.section .text
main:
  ADDI sp, sp, -224
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s11, 144(sp)
  SD s8, 152(sp)
  SD s6, 160(sp)
  SD s7, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  CALL getint
  ADD s1, a0, zero
  LA s2, m1
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  LA s2, n1
  SW s1, 0(s2)
  LA s1, m1
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb48
  # implict jump to bb1
bb1:
  CALL getint
  ADD s1, a0, zero
  LA s2, m2
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  LA s2, n2
  SW s1, 0(s2)
  LA s1, m2
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb37
  # implict jump to bb2
bb2:
  LA s1, m1
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb16
  # implict jump to bb3
bb3:
  LA s1, m1
  LW s1, 0(s1)
  BLT zero, s1, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s11, 144(sp)
  LD s8, 152(sp)
  LD s6, 160(sp)
  LD s7, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s1, zero, zero
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  LA s3, n2
  LW s3, 0(s3)
  ADDI s4, zero, 0
  BLT s4, s3, bb11
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s2, 1
  # implict jump to bb9
bb9:
  LA s4, m1
  LW s4, 0(s4)
  BLT s6, s4, bb10
  JAL zero, bb4
bb10:
  ADD s1, s6, zero
  JAL zero, bb7
bb11:
  # implict jump to bb12
bb12:
  ADDI s3, zero, 400
  MULW s3, s2, s3
  LA s4, res
  ADD s11, s4, s3
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  ADD s5, s11, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s4, 1
  # implict jump to bb14
bb14:
  LA s4, n2
  LW s4, 0(s4)
  BLT s0, s4, bb15
  JAL zero, bb8
bb15:
  ADD s3, s0, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  LA s1, n2
  LW t4, 0(s1)
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb18
bb18:
  LW t4, 76(sp)
  ADD s8, t4, zero
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb23
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADD t4, s8, zero
  SW t4, 80(sp)
  LW t4, 16(sp)
  ADDIW s7, t4, 1
  # implict jump to bb21
bb21:
  LA s1, m1
  LW s1, 0(s1)
  BLT s7, s1, bb22
  JAL zero, bb3
bb22:
  ADD t4, s7, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb18
bb23:
  # implict jump to bb24
bb24:
  LA s10, n1
  LW t4, 0(s10)
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb25
bb25:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 32(sp)
  BLT zero, t4, bb31
  # implict jump to bb26
bb26:
  ADD s3, zero, zero
  # implict jump to bb27
bb27:
  ADD s5, s3, zero
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb28
bb28:
  LA s1, n2
  LW s1, 0(s1)
  LW t4, 56(sp)
  BLT t4, s1, bb30
  # implict jump to bb29
bb29:
  ADD s8, s5, zero
  JAL zero, bb20
bb30:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb25
bb31:
  # implict jump to bb32
bb32:
  ADDI s10, zero, 400
  LW t4, 16(sp)
  MULW s10, t4, s10
  LA s4, res
  ADD s4, s4, s10
  LW t3, 8(sp)
  SLLIW t4, t3, 2
  SW t4, 48(sp)
  LW t3, 48(sp)
  ADD t4, s4, t3
  SD t4, 168(sp)
  LA s4, a
  ADD t4, s4, s10
  SD t4, 216(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb33
bb33:
  LW t4, 64(sp)
  ADD s10, t4, zero
  LD t4, 168(sp)
  LW s4, 0(t4)
  SLLIW s2, s10, 2
  LD t4, 216(sp)
  ADD s2, t4, s2
  LW s2, 0(s2)
  ADDI s9, zero, 400
  MULW s9, s10, s9
  LA s1, b
  ADD s1, s1, s9
  LW t4, 48(sp)
  ADD s1, s1, t4
  LW s1, 0(s1)
  MULW s1, s2, s1
  ADDW s1, s4, s1
  LD t4, 168(sp)
  SW s1, 0(t4)
  ADDIW t4, s10, 1
  SW t4, 4(sp)
  # implict jump to bb34
bb34:
  LA s1, n1
  LW s1, 0(s1)
  LW t4, 4(sp)
  BLT t4, s1, bb36
  # implict jump to bb35
bb35:
  LW t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb27
bb36:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb33
bb37:
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb39
bb39:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LA s8, n2
  LW s8, 0(s8)
  ADDI s2, zero, 0
  BLT s2, s8, bb43
  # implict jump to bb40
bb40:
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 0(sp)
  # implict jump to bb41
bb41:
  LA s1, m2
  LW s1, 0(s1)
  LW t4, 0(sp)
  BLT t4, s1, bb42
  JAL zero, bb2
bb42:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb39
bb43:
  # implict jump to bb44
bb44:
  ADDI s2, zero, 400
  LW t4, 28(sp)
  MULW s2, t4, s2
  LA s8, b
  ADD t4, s8, s2
  SD t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb45
bb45:
  LW t4, 24(sp)
  ADD s8, t4, zero
  SLLIW s2, s8, 2
  LD t4, 208(sp)
  ADD s2, t4, s2
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADDIW t4, s8, 1
  SW t4, 60(sp)
  # implict jump to bb46
bb46:
  LA s1, n2
  LW s1, 0(s1)
  LW t4, 60(sp)
  BLT t4, s1, bb47
  JAL zero, bb40
bb47:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb45
bb48:
  # implict jump to bb49
bb49:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb50
bb50:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LA s2, n1
  LW s2, 0(s2)
  ADDI s1, zero, 0
  BLT s1, s2, bb54
  # implict jump to bb51
bb51:
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb52
bb52:
  LA s1, m1
  LW s1, 0(s1)
  LW t4, 68(sp)
  BLT t4, s1, bb53
  JAL zero, bb1
bb53:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb50
bb54:
  # implict jump to bb55
bb55:
  ADDI s1, zero, 400
  LW t4, 44(sp)
  MULW s1, t4, s1
  LA s2, a
  ADD t4, s2, s1
  SD t4, 200(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb56
bb56:
  LW t4, 36(sp)
  ADD s2, t4, zero
  SLLIW s1, s2, 2
  LD t4, 200(sp)
  ADD s1, t4, s1
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s1)
  ADDIW t4, s2, 1
  SW t4, 72(sp)
  # implict jump to bb57
bb57:
  LA s1, n1
  LW s1, 0(s1)
  LW t4, 72(sp)
  BLT t4, s1, bb58
  JAL zero, bb51
bb58:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb56
matrix_multiply:
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
  LA s10, m1
  LW s10, 0(s10)
  BLT zero, s10, bb61
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
  # implict jump to bb62
bb62:
  LA s10, n2
  LW s0, 0(s10)
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb63
bb63:
  ADD t0, s11, zero
  ADD t1, s10, zero
  BLT zero, s0, bb68
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADD s2, t0, zero
  ADDIW s4, t1, 1
  # implict jump to bb66
bb66:
  LA s3, m1
  LW s3, 0(s3)
  BLT s4, s3, bb67
  JAL zero, bb60
bb67:
  ADD s10, s4, zero
  ADD s11, s2, zero
  JAL zero, bb63
bb68:
  # implict jump to bb69
bb69:
  LA t2, n1
  LW s1, 0(t2)
  ADD t2, zero, zero
  # implict jump to bb70
bb70:
  ADD a0, t2, zero
  BLT zero, s1, bb76
  # implict jump to bb71
bb71:
  ADD a1, zero, zero
  # implict jump to bb72
bb72:
  ADD s3, a1, zero
  ADDIW s5, a0, 1
  # implict jump to bb73
bb73:
  LA a1, n2
  LW a1, 0(a1)
  BLT s5, a1, bb75
  # implict jump to bb74
bb74:
  ADD t0, s3, zero
  JAL zero, bb65
bb75:
  ADD t2, s5, zero
  JAL zero, bb70
bb76:
  # implict jump to bb77
bb77:
  ADDI a2, zero, 400
  MULW a2, t1, a2
  LA a3, res
  ADD a3, a3, a2
  SLLIW s7, a0, 2
  ADD s8, a3, s7
  LA a3, a
  ADD s9, a3, a2
  ADD a2, zero, zero
  # implict jump to bb78
bb78:
  ADD a3, a2, zero
  LW a4, 0(s8)
  SLLIW a5, a3, 2
  ADD a5, s9, a5
  LW a5, 0(a5)
  ADDI a6, zero, 400
  MULW a6, a3, a6
  LA a7, b
  ADD a6, a7, a6
  ADD a6, a6, s7
  LW a6, 0(a6)
  MULW a5, a5, a6
  ADDW a4, a4, a5
  SW a4, 0(s8)
  ADDIW s6, a3, 1
  # implict jump to bb79
bb79:
  LA a3, n1
  LW a3, 0(a3)
  BLT s6, a3, bb81
  # implict jump to bb80
bb80:
  ADD a1, s6, zero
  JAL zero, bb72
bb81:
  ADD a2, s6, zero
  JAL zero, bb78
