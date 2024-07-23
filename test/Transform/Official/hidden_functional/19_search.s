.global search
.global main
.section .bss







a:
.space 3600

.section .data
y_1:
.word 0x00000000
x_1:
.word 0x00000000
x_0:
.word 0x00000000
h:
.word 0x00000000
y_0:
.word 0x00000000
w:
.word 0x00000000
step:
.byte 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255

INF:
.word 0x40000000
.section .text
search:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD t4, a0, zero
  SW t4, 12(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD s2, a2, zero
  ADDI s3, zero, 10
  BLT s3, s2, bb37
  # implict jump to bb1
bb1:
  ADDIW t4, s2, 1
  SW t4, 16(sp)
  LUI s3, 262144
  ADDIW s3, s3, 0
  ADD s3, zero, s3
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SB t4, 2(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb2
bb2:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  ADD t4, s6, zero
  SB t4, 4(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  ADD a3, s4, zero
  ADD t4, s3, zero
  SW t4, 32(sp)
  LW t4, 28(sp)
  SLTI a5, t4, 4
  BNE a5, zero, bb6
  # implict jump to bb3
bb3:
  ADDI a5, zero, 10
  LW t4, 32(sp)
  BLT a5, t4, bb5
  # implict jump to bb4
bb4:
  LW t4, 32(sp)
  ADD a0, t4, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  LUI a5, 262144
  ADDIW a5, a5, 0
  ADD a0, zero, a5
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb6:
  LW t4, 28(sp)
  SLLIW a5, t4, 3
  LA a6, step
  ADD a5, a6, a5
  LW t4, 12(sp)
  ADD a6, t4, zero
  ADD a7, zero, zero
  LW t4, 8(sp)
  ADD t6, t4, zero
  # implict jump to bb7
bb7:
  ADD s1, a3, zero
  ADD s0, t6, zero
  ADD s2, a7, zero
  ADD s9, a6, zero
  ADDI s10, zero, 120
  MULW s10, s9, s10
  LA s8, a
  ADD s8, s8, s10
  SLLIW s10, s0, 2
  ADD s8, s8, s10
  LW s10, 0(s8)
  XORI s10, s10, 1
  BNE s10, zero, bb31
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LA s7, x_1
  LW s7, 0(s7)
  XOR s7, s9, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb30
  # implict jump to bb10
bb10:
  ADD s7, zero, zero
  # implict jump to bb11
bb11:
  BNE s7, zero, bb29
  # implict jump to bb12
bb12:
  ADDI s7, zero, 1
  SLT s2, s7, s2
  XORI s2, s2, 1
  BNE s2, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU s2, s9, 1
  BNE s2, zero, bb27
  # implict jump to bb14
bb14:
  LA s2, h
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  XOR s2, s9, s2
  SLTIU s2, s2, 1
  # implict jump to bb15
bb15:
  BNE s2, zero, bb26
  # implict jump to bb16
bb16:
  SLTIU s7, s0, 1
  # implict jump to bb17
bb17:
  BNE s7, zero, bb25
  # implict jump to bb18
bb18:
  LA s10, w
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  XOR s10, s0, s10
  SLTIU s10, s10, 1
  # implict jump to bb19
bb19:
  BNE s10, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s8)
  LW t4, 28(sp)
  SLLIW s11, t4, 3
  LA t0, step
  ADD s11, t0, s11
  LW t0, 0(s11)
  SUBW s9, s9, t0
  LW s11, 4(s11)
  SUBW s0, s0, s11
  ADD a0, s9, zero
  ADD a1, s0, zero
  LW t4, 16(sp)
  ADD a2, t4, zero
  CALL search
  ADD s0, a0, zero
  ADDIW s0, s0, 1
  LW t4, 32(sp)
  BLT s0, t4, bb23
  # implict jump to bb21
bb21:
  LW t4, 32(sp)
  ADD s9, t4, zero
  # implict jump to bb22
bb22:
  ADDI s11, zero, 1
  SW s11, 0(s8)
  LW t4, 28(sp)
  ADDIW s8, t4, 1
  ADD s3, s9, zero
  ADD s4, s1, zero
  ADD s5, s8, zero
  ADD s6, s2, zero
  ADD t4, s7, zero
  SB t4, 2(sp)
  ADD t4, s10, zero
  SB t4, 0(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb23:
  ADD s9, s0, zero
  JAL zero, bb22
bb24:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  ADD s3, t4, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s2, zero
  ADD t4, s7, zero
  SB t4, 2(sp)
  ADD t4, s10, zero
  SB t4, 0(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb25:
  ADDI s10, zero, 1
  JAL zero, bb19
bb26:
  ADDI s7, zero, 1
  JAL zero, bb17
bb27:
  ADDI s2, zero, 1
  JAL zero, bb15
bb28:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  ADD s3, t4, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LB t4, 4(sp)
  ADD s6, t4, zero
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb29:
  ADDI a0, zero, 1
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb30:
  LA s10, y_1
  LW s10, 0(s10)
  XOR s10, s0, s10
  SLTIU s10, s10, 1
  ADD s7, s10, zero
  JAL zero, bb11
bb31:
  LA s10, x_1
  LW s10, 0(s10)
  XOR s10, s9, s10
  SLTIU s10, s10, 1
  BNE s10, zero, bb36
  # implict jump to bb32
bb32:
  ADD s10, zero, zero
  # implict jump to bb33
bb33:
  BNE s10, zero, bb35
  # implict jump to bb34
bb34:
  LW s11, 0(a5)
  ADDW s11, s9, s11
  LW s7, 4(a5)
  ADDW s7, s0, s7
  ADDIW t0, s2, 1
  ADD a6, s11, zero
  ADD a7, t0, zero
  ADD t6, s7, zero
  ADD a3, s10, zero
  JAL zero, bb7
bb35:
  ADD s1, s10, zero
  JAL zero, bb9
bb36:
  LA s11, y_1
  LW s11, 0(s11)
  XOR s11, s0, s11
  SLTIU s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb33
bb37:
  LUI s0, 262144
  ADDIW s0, s0, 0
  ADD a0, zero, s0
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb39
bb39:
  ADD s1, s0, zero
  LA s2, w
  LW s2, 0(s2)
  BNE s2, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb41:
  ADD s2, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 30
  BNE s5, zero, bb57
  # implict jump to bb43
bb43:
  ADDI s5, zero, 1
  # implict jump to bb44
bb44:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, h
  LW s8, 0(s8)
  SLT s8, s8, s6
  XORI s8, s8, 1
  BNE s8, zero, bb49
  # implict jump to bb45
bb45:
  LA s8, x_0
  LW s8, 0(s8)
  LA s9, y_0
  LW s9, 0(s9)
  ADD a0, s8, zero
  ADD a1, s9, zero
  ADDI a2, zero, 1
  CALL search
  ADD s8, a0, zero
  ADDI s9, zero, 10
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb48
  # implict jump to bb46
bb46:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb47
bb47:
  CALL getint
  ADD s8, a0, zero
  LA s9, w
  SW s8, 0(s9)
  CALL getint
  ADD s8, a0, zero
  LA s9, h
  SW s8, 0(s9)
  ADD s0, s7, zero
  JAL zero, bb39
bb48:
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb47
bb49:
  ADDI s0, zero, 120
  MULW s0, s6, s0
  LA s7, a
  ADD s0, s7, s0
  ADDI s7, zero, 1
  # implict jump to bb50
bb50:
  ADD s8, s7, zero
  LA s9, w
  LW s9, 0(s9)
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW s9, s6, 1
  ADD s4, s8, zero
  ADD s5, s9, zero
  JAL zero, bb44
bb52:
  SLLIW s4, s8, 2
  ADD s4, s0, s4
  CALL getint
  SW a0, 0(s4)
  XORI s4, a0, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb56
  # implict jump to bb53
bb53:
  XORI s4, a0, 3
  SLTIU s4, s4, 1
  BNE s4, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW s4, s8, 1
  ADD s7, s4, zero
  JAL zero, bb50
bb55:
  LA s4, x_1
  SW s6, 0(s4)
  LA s4, y_1
  SW s8, 0(s4)
  JAL zero, bb54
bb56:
  LA s4, x_0
  SW s6, 0(s4)
  LA s4, y_0
  SW s8, 0(s4)
  JAL zero, bb54
bb57:
  ADDI s0, zero, 120
  MULW s0, s3, s0
  LA s4, a
  ADD s0, s4, s0
  ADD s4, zero, zero
  # implict jump to bb58
bb58:
  ADD s5, s4, zero
  SLTI s6, s5, 30
  BNE s6, zero, bb60
  # implict jump to bb59
bb59:
  ADDIW s6, s3, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb42
bb60:
  SLLIW s1, s5, 2
  ADD s1, s0, s1
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb58
