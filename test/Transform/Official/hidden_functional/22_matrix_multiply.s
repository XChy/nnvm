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
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s7, 136(sp)
  SD s10, 144(sp)
  SD s6, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s11, 176(sp)
  CALL getint
  ADD s11, a0, zero
  LA s5, m1
  SW s11, 0(s5)
  CALL getint
  ADD s5, a0, zero
  LA s11, n1
  SW s5, 0(s11)
  LA s5, m1
  LW s5, 0(s5)
  ADDI s11, zero, 0
  BLT s11, s5, bb48
  # implict jump to bb1
bb1:
  CALL getint
  ADD s4, a0, zero
  LA s5, m2
  SW s4, 0(s5)
  CALL getint
  ADD s4, a0, zero
  LA s5, n2
  SW s4, 0(s5)
  LA s4, m2
  LW s4, 0(s4)
  ADDI s5, zero, 0
  BLT s5, s4, bb37
  # implict jump to bb2
bb2:
  LA s5, m1
  LW s5, 0(s5)
  ADDI s7, zero, 0
  BLT s7, s5, bb16
  # implict jump to bb3
bb3:
  LA s0, m1
  LW s0, 0(s0)
  BLT zero, s0, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s7, 136(sp)
  LD s10, 144(sp)
  LD s6, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  LA s2, n2
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb11
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s10, s1, 1
  # implict jump to bb9
bb9:
  LA s3, m1
  LW s3, 0(s3)
  BLT s10, s3, bb10
  JAL zero, bb4
bb10:
  ADD s0, s10, zero
  JAL zero, bb7
bb11:
  # implict jump to bb12
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  ADD s3, s2, zero
  ADDI s4, zero, 400
  MULW s4, s1, s4
  LA s5, res
  ADD s4, s5, s4
  SLLIW s5, s3, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s8, s3, 1
  # implict jump to bb14
bb14:
  LA s3, n2
  LW s3, 0(s3)
  BLT s8, s3, bb15
  JAL zero, bb8
bb15:
  ADD s2, s8, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb18
bb18:
  LW t4, 64(sp)
  ADD s11, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LA s3, n2
  LW s3, 0(s3)
  BLT zero, s3, bb23
  # implict jump to bb19
bb19:
  ADD s3, s11, zero
  # implict jump to bb20
bb20:
  ADD t4, s3, zero
  SW t4, 68(sp)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  # implict jump to bb21
bb21:
  LA s0, m1
  LW s0, 0(s0)
  LW t4, 76(sp)
  BLT t4, s0, bb22
  JAL zero, bb3
bb22:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb18
bb23:
  # implict jump to bb24
bb24:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb25
bb25:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LA s4, n1
  LW s4, 0(s4)
  BLT zero, s4, bb31
  # implict jump to bb26
bb26:
  ADD s4, zero, zero
  # implict jump to bb27
bb27:
  ADD s6, s4, zero
  LW t3, 20(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  # implict jump to bb28
bb28:
  LA s0, n2
  LW s0, 0(s0)
  LW t4, 60(sp)
  BLT t4, s0, bb30
  # implict jump to bb29
bb29:
  ADD s3, s6, zero
  JAL zero, bb20
bb30:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb25
bb31:
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb33
bb33:
  LW t4, 12(sp)
  ADD s0, t4, zero
  ADDI s11, zero, 400
  LW t4, 16(sp)
  MULW s11, t4, s11
  LA s1, res
  ADD s1, s1, s11
  LW t4, 20(sp)
  SLLIW s7, t4, 2
  ADD s1, s1, s7
  LW s9, 0(s1)
  LA s5, a
  ADD s5, s5, s11
  SLLIW s11, s0, 2
  ADD s5, s5, s11
  LW s5, 0(s5)
  ADDI s11, zero, 400
  MULW s11, s0, s11
  LA s2, b
  ADD s2, s2, s11
  ADD s2, s2, s7
  LW s2, 0(s2)
  MULW s2, s5, s2
  ADDW s2, s9, s2
  SW s2, 0(s1)
  ADDIW t4, s0, 1
  SW t4, 8(sp)
  # implict jump to bb34
bb34:
  LA s0, n1
  LW s0, 0(s0)
  LW t4, 8(sp)
  BLT t4, s0, bb36
  # implict jump to bb35
bb35:
  LW t4, 8(sp)
  ADD s4, t4, zero
  JAL zero, bb27
bb36:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb33
bb37:
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb39
bb39:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LA s11, n2
  LW s11, 0(s11)
  ADDI s5, zero, 0
  BLT s5, s11, bb43
  # implict jump to bb40
bb40:
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 24(sp)
  # implict jump to bb41
bb41:
  LA s5, m2
  LW s5, 0(s5)
  LW t4, 24(sp)
  BLT t4, s5, bb42
  JAL zero, bb2
bb42:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb39
bb43:
  # implict jump to bb44
bb44:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb45
bb45:
  LW t4, 36(sp)
  ADD s11, t4, zero
  ADDI s5, zero, 400
  LW t4, 40(sp)
  MULW s5, t4, s5
  LA s7, b
  ADD s5, s7, s5
  SLLIW s7, s11, 2
  ADD s5, s5, s7
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s5)
  ADDIW t4, s11, 1
  SW t4, 32(sp)
  # implict jump to bb46
bb46:
  LA s5, n2
  LW s5, 0(s5)
  LW t4, 32(sp)
  BLT t4, s5, bb47
  JAL zero, bb40
bb47:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb45
bb48:
  # implict jump to bb49
bb49:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb50
bb50:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s11, n1
  LW s11, 0(s11)
  ADDI s5, zero, 0
  BLT s5, s11, bb54
  # implict jump to bb51
bb51:
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 44(sp)
  # implict jump to bb52
bb52:
  LA s4, m1
  LW s4, 0(s4)
  LW t4, 44(sp)
  BLT t4, s4, bb53
  JAL zero, bb1
bb53:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb50
bb54:
  # implict jump to bb55
bb55:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb56
bb56:
  LW t4, 48(sp)
  ADD s11, t4, zero
  ADDI s5, zero, 400
  LW t4, 52(sp)
  MULW s5, t4, s5
  LA s4, a
  ADD s4, s4, s5
  SLLIW s5, s11, 2
  ADD s4, s4, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW t4, s11, 1
  SW t4, 56(sp)
  # implict jump to bb57
bb57:
  LA s4, n1
  LW s4, 0(s4)
  LW t4, 56(sp)
  BLT t4, s4, bb58
  JAL zero, bb51
bb58:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
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
  LA s5, m1
  LW s5, 0(s5)
  BLT zero, s5, bb61
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
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb63
bb63:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LA s9, n2
  LW s9, 0(s9)
  BLT zero, s9, bb68
  # implict jump to bb64
bb64:
  # implict jump to bb65
bb65:
  ADD s0, s7, zero
  ADDIW s2, s8, 1
  # implict jump to bb66
bb66:
  LA s1, m1
  LW s1, 0(s1)
  BLT s2, s1, bb67
  JAL zero, bb60
bb67:
  ADD s5, s2, zero
  ADD s6, s0, zero
  JAL zero, bb63
bb68:
  # implict jump to bb69
bb69:
  ADD s9, zero, zero
  # implict jump to bb70
bb70:
  ADD s10, s9, zero
  LA s11, n1
  LW s11, 0(s11)
  BLT zero, s11, bb76
  # implict jump to bb71
bb71:
  ADD s11, zero, zero
  # implict jump to bb72
bb72:
  ADD s1, s11, zero
  ADDIW s3, s10, 1
  # implict jump to bb73
bb73:
  LA s11, n2
  LW s11, 0(s11)
  BLT s3, s11, bb75
  # implict jump to bb74
bb74:
  ADD s7, s1, zero
  JAL zero, bb65
bb75:
  ADD s9, s3, zero
  JAL zero, bb70
bb76:
  # implict jump to bb77
bb77:
  ADD t0, zero, zero
  # implict jump to bb78
bb78:
  ADD t1, t0, zero
  ADDI t2, zero, 400
  MULW t2, s8, t2
  LA a0, res
  ADD a0, a0, t2
  SLLIW a1, s10, 2
  ADD a0, a0, a1
  LW a2, 0(a0)
  LA a3, a
  ADD t2, a3, t2
  SLLIW a3, t1, 2
  ADD t2, t2, a3
  LW t2, 0(t2)
  ADDI a3, zero, 400
  MULW a3, t1, a3
  LA a4, b
  ADD a3, a4, a3
  ADD a1, a3, a1
  LW a1, 0(a1)
  MULW t2, t2, a1
  ADDW t2, a2, t2
  SW t2, 0(a0)
  ADDIW s4, t1, 1
  # implict jump to bb79
bb79:
  LA t1, n1
  LW t1, 0(t1)
  BLT s4, t1, bb81
  # implict jump to bb80
bb80:
  ADD s11, s4, zero
  JAL zero, bb72
bb81:
  ADD t0, s4, zero
  JAL zero, bb78
