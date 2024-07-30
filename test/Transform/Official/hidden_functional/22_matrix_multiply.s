.global main
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


.section .text
main:
  ADDI sp, sp, -208
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
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  LA s0, m1
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb34
  # implict jump to bb1
bb1:
  CALL getint
  ADD s6, a0, zero
  LA s7, m2
  SW s6, 0(s7)
  CALL getint
  ADD s6, a0, zero
  LA s7, n2
  SW s6, 0(s7)
  LA s6, m2
  LW s6, 0(s6)
  BLT zero, s6, bb27
  # implict jump to bb2
bb2:
  LA s11, m1
  LW s11, 0(s11)
  BLT zero, s11, bb12
  # implict jump to bb3
bb3:
  LA s7, m1
  LW s7, 0(s7)
  BLT zero, s7, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
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
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb5:
  ADD s7, zero, zero
  # implict jump to bb6
bb6:
  ADD s9, s7, zero
  LA s10, n2
  LW s10, 0(s10)
  BLT zero, s10, bb9
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s9, 1
  LA t0, m1
  LW t0, 0(t0)
  BLT s6, t0, bb8
  JAL zero, bb4
bb8:
  ADD s7, s6, zero
  JAL zero, bb6
bb9:
  ADDI s10, zero, 400
  MULW s10, s9, s10
  LA s11, res
  ADD s10, s11, s10
  ADD s11, zero, zero
  # implict jump to bb10
bb10:
  ADD s6, s11, zero
  SLLIW s0, s6, 2
  ADD s0, s10, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s6, 1
  LA s6, n2
  LW s6, 0(s6)
  BLT s0, s6, bb11
  JAL zero, bb7
bb11:
  ADD s11, s0, zero
  JAL zero, bb10
bb12:
  LA s11, n2
  LW t4, 0(s11)
  SW t4, 12(sp)
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s4, s3, zero
  ADD t4, s1, zero
  SW t4, 16(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb17
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  LW t4, 16(sp)
  ADDIW s5, t4, 1
  LA s7, m1
  LW s7, 0(s7)
  BLT s5, s7, bb16
  JAL zero, bb3
bb16:
  ADD s1, s5, zero
  ADD s3, s4, zero
  JAL zero, bb13
bb17:
  LA s5, n1
  LW t4, 0(s5)
  SW t4, 20(sp)
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  ADD t4, s8, zero
  SW t4, 24(sp)
  LW t4, 20(sp)
  BLT zero, t4, bb23
  # implict jump to bb19
bb19:
  ADD s9, zero, zero
  # implict jump to bb20
bb20:
  LW t4, 24(sp)
  ADDIW s2, t4, 1
  LA s5, n2
  LW s5, 0(s5)
  BLT s2, s5, bb22
  # implict jump to bb21
bb21:
  ADD s4, s9, zero
  JAL zero, bb15
bb22:
  ADD s8, s2, zero
  JAL zero, bb18
bb23:
  ADDI s2, zero, 400
  LW t4, 16(sp)
  MULW s2, t4, s2
  LA s6, res
  ADD s6, s6, s2
  LW t3, 24(sp)
  SLLIW t4, t3, 2
  SW t4, 28(sp)
  LW t3, 28(sp)
  ADD t4, s6, t3
  SD t4, 176(sp)
  LA s6, a
  ADD t4, s6, s2
  SD t4, 184(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb24
bb24:
  LW t4, 8(sp)
  ADD s2, t4, zero
  LD t4, 176(sp)
  LW s10, 0(t4)
  SLLIW s7, s2, 2
  LD t4, 184(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  ADDI s5, zero, 400
  MULW s5, s2, s5
  LA s0, b
  ADD s0, s0, s5
  LW t4, 28(sp)
  ADD s0, s0, t4
  LW s0, 0(s0)
  MULW s0, s7, s0
  ADDW s0, s10, s0
  LD t4, 176(sp)
  SW s0, 0(t4)
  ADDIW t4, s2, 1
  SW t4, 4(sp)
  LA s2, n1
  LW s2, 0(s2)
  LW t4, 4(sp)
  BLT t4, s2, bb26
  # implict jump to bb25
bb25:
  LW t4, 4(sp)
  ADD s9, t4, zero
  JAL zero, bb20
bb26:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb24
bb27:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb28
bb28:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LA s8, n2
  LW s8, 0(s8)
  BLT zero, s8, bb31
  # implict jump to bb29
bb29:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LA s11, m2
  LW s11, 0(s11)
  LW t4, 32(sp)
  BLT t4, s11, bb30
  JAL zero, bb2
bb30:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb28
bb31:
  ADDI s8, zero, 400
  LW t4, 48(sp)
  MULW s8, t4, s8
  LA s9, b
  ADD t4, s9, s8
  SD t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb32
bb32:
  LW t4, 44(sp)
  ADD s10, t4, zero
  SLLIW s11, s10, 2
  LD t4, 192(sp)
  ADD s11, t4, s11
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s11)
  ADDIW t4, s10, 1
  SW t4, 40(sp)
  LA s10, n2
  LW s10, 0(s10)
  LW t4, 40(sp)
  BLT t4, s10, bb33
  JAL zero, bb29
bb33:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb32
bb34:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb35
bb35:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LA s2, n1
  LW s2, 0(s2)
  BLT zero, s2, bb38
  # implict jump to bb36
bb36:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 0(sp)
  LA s6, m1
  LW s6, 0(s6)
  LW t4, 0(sp)
  BLT t4, s6, bb37
  JAL zero, bb1
bb37:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb35
bb38:
  ADDI s2, zero, 400
  LW t4, 64(sp)
  MULW s2, t4, s2
  LA s3, a
  ADD t4, s3, s2
  SD t4, 200(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb39
bb39:
  LW t4, 60(sp)
  ADD s4, t4, zero
  SLLIW s5, s4, 2
  LD t4, 200(sp)
  ADD s5, t4, s5
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW t4, s4, 1
  SW t4, 56(sp)
  LA s5, n1
  LW s5, 0(s5)
  LW t4, 56(sp)
  BLT t4, s5, bb40
  JAL zero, bb36
bb40:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb39
