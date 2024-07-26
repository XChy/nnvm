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
  SD s6, 136(sp)
  SD s8, 144(sp)
  SD s7, 152(sp)
  SD s9, 160(sp)
  SD s11, 168(sp)
  SD s10, 176(sp)
  CALL getint
  ADD s11, a0, zero
  LA s10, m1
  SW s11, 0(s10)
  CALL getint
  ADD s10, a0, zero
  LA s11, n1
  SW s10, 0(s11)
  LA s10, m1
  LW s10, 0(s10)
  ADDI s11, zero, 0
  BLT s11, s10, bb41
  # implict jump to bb1
bb1:
  CALL getint
  ADD s2, a0, zero
  LA s10, m2
  SW s2, 0(s10)
  CALL getint
  ADD s2, a0, zero
  LA s10, n2
  SW s2, 0(s10)
  LA s2, m2
  LW s2, 0(s2)
  ADDI s10, zero, 0
  BLT s10, s2, bb32
  # implict jump to bb2
bb2:
  LA s8, m1
  LW s8, 0(s8)
  ADDI s10, zero, 0
  BLT s10, s8, bb14
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
  LD s6, 136(sp)
  LD s8, 144(sp)
  LD s7, 152(sp)
  LD s9, 160(sp)
  LD s11, 168(sp)
  LD s10, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb5:
  ADD s0, zero, zero
  # implict jump to bb6
bb6:
  ADD s1, s0, zero
  LA s2, n2
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb10
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s1, 1
  # implict jump to bb8
bb8:
  LA s3, m1
  LW s3, 0(s3)
  BLT s6, s3, bb9
  JAL zero, bb4
bb9:
  ADD s0, s6, zero
  JAL zero, bb6
bb10:
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
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
  ADDIW s9, s3, 1
  # implict jump to bb12
bb12:
  LA s3, n2
  LW s3, 0(s3)
  BLT s9, s3, bb13
  JAL zero, bb7
bb13:
  ADD s2, s9, zero
  JAL zero, bb11
bb14:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb15
bb15:
  LW t4, 4(sp)
  ADD s11, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LA s7, n2
  LW s7, 0(s7)
  BLT zero, s7, bb20
  # implict jump to bb16
bb16:
  ADD s7, s11, zero
  # implict jump to bb17
bb17:
  ADD t4, s7, zero
  SW t4, 68(sp)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  # implict jump to bb18
bb18:
  LA s0, m1
  LW s0, 0(s0)
  LW t4, 76(sp)
  BLT t4, s0, bb19
  JAL zero, bb3
bb19:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb15
bb20:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb21
bb21:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LA s2, n1
  LW s2, 0(s2)
  BLT zero, s2, bb27
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  ADD s5, s2, zero
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  # implict jump to bb24
bb24:
  LA s0, n2
  LW s0, 0(s0)
  LW t4, 8(sp)
  BLT t4, s0, bb26
  # implict jump to bb25
bb25:
  ADD s7, s5, zero
  JAL zero, bb17
bb26:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb21
bb27:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb28
bb28:
  LW t4, 20(sp)
  ADD s0, t4, zero
  ADDI s11, zero, 400
  LW t4, 24(sp)
  MULW s11, t4, s11
  LA s1, res
  ADD s1, s1, s11
  LW t4, 28(sp)
  SLLIW s10, t4, 2
  ADD s1, s1, s10
  LW s4, 0(s1)
  LA s8, a
  ADD s8, s8, s11
  SLLIW s11, s0, 2
  ADD s8, s8, s11
  LW s8, 0(s8)
  ADDI s11, zero, 400
  MULW s11, s0, s11
  LA s3, b
  ADD s3, s3, s11
  ADD s3, s3, s10
  LW s3, 0(s3)
  MULW s3, s8, s3
  ADDW s3, s4, s3
  SW s3, 0(s1)
  ADDIW t4, s0, 1
  SW t4, 16(sp)
  # implict jump to bb29
bb29:
  LA s0, n1
  LW s0, 0(s0)
  LW t4, 16(sp)
  BLT t4, s0, bb31
  # implict jump to bb30
bb30:
  LW t4, 16(sp)
  ADD s2, t4, zero
  JAL zero, bb23
bb31:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb28
bb32:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb33
bb33:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LA s11, n2
  LW s11, 0(s11)
  ADDI s10, zero, 0
  BLT s10, s11, bb37
  # implict jump to bb34
bb34:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb35
bb35:
  LA s8, m2
  LW s8, 0(s8)
  LW t4, 32(sp)
  BLT t4, s8, bb36
  JAL zero, bb2
bb36:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb33
bb37:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb38
bb38:
  LW t4, 44(sp)
  ADD s11, t4, zero
  ADDI s10, zero, 400
  LW t4, 48(sp)
  MULW s10, t4, s10
  LA s8, b
  ADD s8, s8, s10
  SLLIW s10, s11, 2
  ADD s8, s8, s10
  CALL getint
  ADD s10, a0, zero
  SW s10, 0(s8)
  ADDIW t4, s11, 1
  SW t4, 40(sp)
  # implict jump to bb39
bb39:
  LA s8, n2
  LW s8, 0(s8)
  LW t4, 40(sp)
  BLT t4, s8, bb40
  JAL zero, bb34
bb40:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb38
bb41:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb42
bb42:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LA s11, n1
  LW s11, 0(s11)
  ADDI s10, zero, 0
  BLT s10, s11, bb46
  # implict jump to bb43
bb43:
  LW t3, 60(sp)
  ADDIW t4, t3, 1
  SW t4, 52(sp)
  # implict jump to bb44
bb44:
  LA s2, m1
  LW s2, 0(s2)
  LW t4, 52(sp)
  BLT t4, s2, bb45
  JAL zero, bb1
bb45:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb42
bb46:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb47
bb47:
  LW t4, 0(sp)
  ADD s11, t4, zero
  ADDI s10, zero, 400
  LW t4, 60(sp)
  MULW s10, t4, s10
  LA s2, a
  ADD s2, s2, s10
  SLLIW s10, s11, 2
  ADD s2, s2, s10
  CALL getint
  ADD s10, a0, zero
  SW s10, 0(s2)
  ADDIW t4, s11, 1
  SW t4, 64(sp)
  # implict jump to bb48
bb48:
  LA s2, n1
  LW s2, 0(s2)
  LW t4, 64(sp)
  BLT t4, s2, bb49
  JAL zero, bb43
bb49:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb47
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
  BLT zero, s5, bb52
  # implict jump to bb51
bb51:
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
bb52:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb53
bb53:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LA s9, n2
  LW s9, 0(s9)
  BLT zero, s9, bb58
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  ADD s4, s7, zero
  ADDIW s0, s8, 1
  # implict jump to bb56
bb56:
  LA s1, m1
  LW s1, 0(s1)
  BLT s0, s1, bb57
  JAL zero, bb51
bb57:
  ADD s5, s0, zero
  ADD s6, s4, zero
  JAL zero, bb53
bb58:
  ADD s9, zero, zero
  # implict jump to bb59
bb59:
  ADD s10, s9, zero
  LA s11, n1
  LW s11, 0(s11)
  BLT zero, s11, bb65
  # implict jump to bb60
bb60:
  ADD s11, zero, zero
  # implict jump to bb61
bb61:
  ADD s1, s11, zero
  ADDIW s2, s10, 1
  # implict jump to bb62
bb62:
  LA s11, n2
  LW s11, 0(s11)
  BLT s2, s11, bb64
  # implict jump to bb63
bb63:
  ADD s7, s1, zero
  JAL zero, bb55
bb64:
  ADD s9, s2, zero
  JAL zero, bb59
bb65:
  ADD t0, zero, zero
  # implict jump to bb66
bb66:
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
  ADDIW s3, t1, 1
  # implict jump to bb67
bb67:
  LA t1, n1
  LW t1, 0(t1)
  BLT s3, t1, bb69
  # implict jump to bb68
bb68:
  ADD s11, s3, zero
  JAL zero, bb61
bb69:
  ADD t0, s3, zero
  JAL zero, bb66
