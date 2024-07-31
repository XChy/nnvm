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
  SW t4, 16(sp)
  ADD t4, a1, zero
  SW t4, 12(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADDI s3, zero, 10
  LW t4, 8(sp)
  BLT s3, t4, bb37
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  LUI s7, 262144
  ADDIW s7, s7, 0
  ADD t4, zero, s7
  SW t4, 20(sp)
  ADD t4, zero, zero
  SB t4, 2(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb2
bb2:
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t4, 2(sp)
  ADD s11, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s6, zero
  SW t4, 32(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  ADD t4, s4, zero
  SB t4, 4(sp)
  ADD t4, s3, zero
  SB t4, 3(sp)
  LW t4, 32(sp)
  SLTI a5, t4, 4
  BNE a5, zero, bb6
  # implict jump to bb3
bb3:
  ADDI a5, zero, 10
  LW t4, 24(sp)
  BLT a5, t4, bb5
  # implict jump to bb4
bb4:
  LW t4, 24(sp)
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
  ADD a5, zero, zero
  LW t4, 16(sp)
  ADD a6, t4, zero
  LW t4, 12(sp)
  ADD a7, t4, zero
  # implict jump to bb7
bb7:
  ADD t6, s11, zero
  ADD s2, a7, zero
  ADD s1, a6, zero
  ADD s0, a5, zero
  ADDI s9, zero, 120
  MULW s9, s1, s9
  LA s10, a
  ADD s9, s10, s9
  SLLIW s10, s2, 2
  ADD s9, s9, s10
  LW s10, 0(s9)
  XORI s10, s10, 1
  BNE s10, zero, bb31
  # implict jump to bb8
bb8:
  ADD s10, t6, zero
  # implict jump to bb9
bb9:
  LA s7, x_1
  LW s7, 0(s7)
  XOR s7, s1, s7
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
  SLT s0, s7, s0
  XORI s0, s0, 1
  BNE s0, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU s0, s1, 1
  BNE s0, zero, bb27
  # implict jump to bb14
bb14:
  LA s0, h
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:
  BNE s0, zero, bb26
  # implict jump to bb16
bb16:
  SLTIU s7, s2, 1
  # implict jump to bb17
bb17:
  BNE s7, zero, bb25
  # implict jump to bb18
bb18:
  LA s8, w
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  XOR s8, s2, s8
  SLTIU s8, s8, 1
  # implict jump to bb19
bb19:
  BNE s8, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s9)
  LW t4, 32(sp)
  SLLIW s11, t4, 3
  LA t0, step
  ADD s11, t0, s11
  LW t0, 0(s11)
  SUBW s1, s1, t0
  LW s11, 4(s11)
  SUBW s2, s2, s11
  LW t4, 8(sp)
  ADDIW s11, t4, 1
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s11, zero
  CALL search
  ADD s1, a0, zero
  ADDIW s1, s1, 1
  LW t4, 24(sp)
  BLT s1, t4, bb23
  # implict jump to bb21
bb21:
  LW t4, 24(sp)
  ADD s2, t4, zero
  # implict jump to bb22
bb22:
  ADDI s11, zero, 1
  SW s11, 0(s9)
  LW t4, 32(sp)
  ADDIW s9, t4, 1
  ADD s3, s7, zero
  ADD s4, s8, zero
  ADD s5, s1, zero
  ADD s6, s9, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s10, zero
  SB t4, 2(sp)
  ADD t4, s0, zero
  SB t4, 0(sp)
  JAL zero, bb2
bb23:
  ADD s2, s1, zero
  JAL zero, bb22
bb24:
  LW t4, 32(sp)
  ADDIW s1, t4, 1
  ADD s3, s7, zero
  ADD s4, s8, zero
  LW t4, 28(sp)
  ADD s5, t4, zero
  ADD s6, s1, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, s10, zero
  SB t4, 2(sp)
  ADD t4, s0, zero
  SB t4, 0(sp)
  JAL zero, bb2
bb25:
  ADDI s8, zero, 1
  JAL zero, bb19
bb26:
  ADDI s7, zero, 1
  JAL zero, bb17
bb27:
  ADDI s0, zero, 1
  JAL zero, bb15
bb28:
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  LB t4, 3(sp)
  ADD s3, t4, zero
  LB t4, 4(sp)
  ADD s4, t4, zero
  LW t4, 28(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, s10, zero
  SB t4, 2(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
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
  LA s8, y_1
  LW s8, 0(s8)
  XOR s8, s2, s8
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb11
bb31:
  LA t6, x_1
  LW t6, 0(t6)
  XOR t6, s1, t6
  SLTIU t6, t6, 1
  BNE t6, zero, bb36
  # implict jump to bb32
bb32:
  ADD t6, zero, zero
  # implict jump to bb33
bb33:
  BNE t6, zero, bb35
  # implict jump to bb34
bb34:
  LW t4, 32(sp)
  SLLIW s8, t4, 3
  LA s7, step
  ADD s7, s7, s8
  LW s8, 0(s7)
  ADDW s8, s1, s8
  LW s7, 4(s7)
  ADDW s7, s2, s7
  ADDIW t0, s0, 1
  ADD a5, t0, zero
  ADD a6, s8, zero
  ADD a7, s7, zero
  ADD s11, t6, zero
  JAL zero, bb7
bb35:
  ADD s10, t6, zero
  JAL zero, bb9
bb36:
  LA s8, y_1
  LW s8, 0(s8)
  XOR s8, s2, s8
  SLTIU s8, s8, 1
  ADD t6, s8, zero
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
  ADDI sp, sp, -128
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  LA s0, w
  LW s0, 0(s0)
  BNE s0, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb40:
  # implict jump to bb41
bb41:
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD t4, s0, zero
  SW t4, 0(sp)
  ADDI s2, zero, 120
  LW t4, 0(sp)
  MULW s2, t4, s2
  LA s3, a
  ADD t4, s3, s2
  SD t4, 104(sp)
  ADD s3, zero, zero
  # implict jump to bb43
bb43:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LD t4, 104(sp)
  ADD s5, t4, s5
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDIW s4, s4, 1
  SLTI s5, s4, 30
  BNE s5, zero, bb69
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW t4, 0(sp)
  ADDIW s5, t4, 1
  SLTI s6, s5, 30
  BNE s6, zero, bb68
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LA s6, h
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb54
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LA s11, x_0
  LW s11, 0(s11)
  LA s1, y_0
  LW s1, 0(s1)
  ADD a0, s11, zero
  ADD a1, s1, zero
  ADDI a2, zero, 1
  CALL search
  ADD s1, a0, zero
  ADDI s11, zero, 10
  SLT s11, s11, s1
  XORI s11, s11, 1
  BNE s11, zero, bb53
  # implict jump to bb50
bb50:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb51
bb51:
  CALL getint
  ADD s1, a0, zero
  LA s11, w
  SW s1, 0(s11)
  CALL getint
  ADD s1, a0, zero
  LA s11, h
  SW s1, 0(s11)
  LA s1, w
  LW s1, 0(s1)
  BNE s1, zero, bb52
  JAL zero, bb39
bb52:
  JAL zero, bb41
bb53:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb51
bb54:
  ADDI s6, zero, 1
  # implict jump to bb55
bb55:
  ADD s7, s6, zero
  LA s8, w
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb60
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  ADDIW s10, s7, 1
  LA s11, h
  LW s11, 0(s11)
  SLT s11, s11, s10
  XORI s11, s11, 1
  BNE s11, zero, bb59
  # implict jump to bb58
bb58:
  JAL zero, bb49
bb59:
  ADD s6, s10, zero
  JAL zero, bb55
bb60:
  ADDI s8, zero, 120
  MULW s8, s7, s8
  LA s9, a
  ADD s8, s9, s8
  ADDI s9, zero, 1
  # implict jump to bb61
bb61:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADD s11, s8, s11
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s11)
  XORI s11, s2, 2
  SLTIU s11, s11, 1
  BNE s11, zero, bb67
  # implict jump to bb62
bb62:
  XORI s2, s2, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb66
  # implict jump to bb63
bb63:
  ADDIW s2, s10, 1
  LA s10, w
  LW s10, 0(s10)
  SLT s10, s10, s2
  XORI s10, s10, 1
  BNE s10, zero, bb65
  # implict jump to bb64
bb64:
  JAL zero, bb57
bb65:
  ADD s9, s2, zero
  JAL zero, bb61
bb66:
  LA s2, x_1
  SW s7, 0(s2)
  LA s2, y_1
  SW s10, 0(s2)
  JAL zero, bb63
bb67:
  LA s2, x_0
  SW s7, 0(s2)
  LA s2, y_0
  SW s10, 0(s2)
  JAL zero, bb63
bb68:
  ADD s0, s5, zero
  JAL zero, bb42
bb69:
  ADD s3, s4, zero
  JAL zero, bb43
