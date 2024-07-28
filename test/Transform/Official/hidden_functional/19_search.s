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
  LW t4, 16(sp)
  ADD a5, t4, zero
  ADD a6, zero, zero
  LW t4, 12(sp)
  ADD a7, t4, zero
  # implict jump to bb7
bb7:
  ADD t6, a3, zero
  ADD s2, a7, zero
  ADD s1, a6, zero
  ADD s0, a5, zero
  ADDI s9, zero, 120
  MULW s9, s0, s9
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
  XOR s7, s0, s7
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
  SLT s1, s7, s1
  XORI s1, s1, 1
  BNE s1, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU s1, s0, 1
  BNE s1, zero, bb27
  # implict jump to bb14
bb14:
  LA s1, h
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  XOR s1, s0, s1
  SLTIU s1, s1, 1
  # implict jump to bb15
bb15:
  BNE s1, zero, bb26
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
  LW t4, 28(sp)
  SLLIW s11, t4, 3
  LA a3, step
  ADD s11, a3, s11
  LW a3, 0(s11)
  SUBW s0, s0, a3
  LW s11, 4(s11)
  SUBW s2, s2, s11
  LW t4, 8(sp)
  ADDIW s11, t4, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s11, zero
  CALL search
  ADD s0, a0, zero
  ADDIW s0, s0, 1
  LW t4, 32(sp)
  BLT s0, t4, bb23
  # implict jump to bb21
bb21:
  LW t4, 32(sp)
  ADD s2, t4, zero
  # implict jump to bb22
bb22:
  ADDI s11, zero, 1
  SW s11, 0(s9)
  LW t4, 28(sp)
  ADDIW s9, t4, 1
  ADD s3, s2, zero
  ADD s4, s10, zero
  ADD s5, s9, zero
  ADD s6, s1, zero
  ADD t4, s7, zero
  SB t4, 2(sp)
  ADD t4, s8, zero
  SB t4, 0(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb23:
  ADD s2, s0, zero
  JAL zero, bb22
bb24:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  ADD s3, t4, zero
  ADD s4, s10, zero
  ADD s5, s0, zero
  ADD s6, s1, zero
  ADD t4, s7, zero
  SB t4, 2(sp)
  ADD t4, s8, zero
  SB t4, 0(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb25:
  ADDI s8, zero, 1
  JAL zero, bb19
bb26:
  ADDI s7, zero, 1
  JAL zero, bb17
bb27:
  ADDI s1, zero, 1
  JAL zero, bb15
bb28:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  ADD s3, t4, zero
  ADD s4, s10, zero
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
  LA s8, y_1
  LW s8, 0(s8)
  XOR s8, s2, s8
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb11
bb31:
  LA t6, x_1
  LW t6, 0(t6)
  XOR t6, s0, t6
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
  LW t4, 28(sp)
  SLLIW s8, t4, 3
  LA s11, step
  ADD s8, s11, s8
  LW s11, 0(s8)
  ADDW s11, s0, s11
  LW s8, 4(s8)
  ADDW s8, s2, s8
  ADDIW s7, s1, 1
  ADD a5, s11, zero
  ADD a6, s7, zero
  ADD a7, s8, zero
  ADD a3, t6, zero
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
  ADDI sp, sp, -160
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s11, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  CALL getint
  ADD s11, a0, zero
  LA s5, w
  SW s11, 0(s5)
  CALL getint
  ADD s5, a0, zero
  LA s11, h
  SW s5, 0(s11)
  LA s5, w
  LW s5, 0(s5)
  BNE s5, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s11, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb40:
  # implict jump to bb41
bb41:
  SLTI t4, zero, 30
  SB t4, 0(sp)
  ADD s5, zero, zero
  # implict jump to bb42
bb42:
  ADD s11, s5, zero
  LB t4, 0(sp)
  BNE t4, zero, bb70
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  LA s4, h
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb52
  # implict jump to bb45
bb45:
  ADD s4, s11, zero
  # implict jump to bb46
bb46:
  ADD s10, s4, zero
  LA s3, x_0
  LW s3, 0(s3)
  LA s4, y_0
  LW s4, 0(s4)
  ADD a0, s3, zero
  ADD a1, s4, zero
  ADDI a2, zero, 1
  CALL search
  ADD s3, a0, zero
  ADDI s4, zero, 10
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb51
  # implict jump to bb47
bb47:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb48
bb48:
  CALL getint
  ADD s3, a0, zero
  LA s4, w
  SW s3, 0(s4)
  CALL getint
  ADD s3, a0, zero
  LA s4, h
  SW s3, 0(s4)
  # implict jump to bb49
bb49:
  LA s3, w
  LW s3, 0(s3)
  BNE s3, zero, bb50
  JAL zero, bb39
bb50:
  ADD s5, s10, zero
  JAL zero, bb42
bb51:
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb48
bb52:
  ADDI s6, zero, 1
  # implict jump to bb53
bb53:
  # implict jump to bb54
bb54:
  ADD t4, s6, zero
  SW t4, 4(sp)
  LA s8, w
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb60
  # implict jump to bb55
bb55:
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:
  ADD s3, s8, zero
  LW t4, 4(sp)
  ADDIW s2, t4, 1
  # implict jump to bb57
bb57:
  LA s7, h
  LW s7, 0(s7)
  SLT s7, s7, s2
  XORI s7, s7, 1
  BNE s7, zero, bb59
  # implict jump to bb58
bb58:
  ADD s4, s3, zero
  JAL zero, bb46
bb59:
  ADD s6, s2, zero
  JAL zero, bb54
bb60:
  ADDI s9, zero, 1
  # implict jump to bb61
bb61:
  ADDI s11, zero, 120
  LW t4, 4(sp)
  MULW s11, t4, s11
  LA s1, a
  ADD t4, s1, s11
  SD t4, 64(sp)
  ADD s1, s9, zero
  # implict jump to bb62
bb62:
  ADD s9, s1, zero
  SLLIW s11, s9, 2
  LD t4, 64(sp)
  ADD s11, t4, s11
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s11)
  XORI s11, s7, 2
  SLTIU s11, s11, 1
  BNE s11, zero, bb69
  # implict jump to bb63
bb63:
  XORI s7, s7, 3
  SLTIU s7, s7, 1
  BNE s7, zero, bb68
  # implict jump to bb64
bb64:
  ADDIW s0, s9, 1
  # implict jump to bb65
bb65:
  LA s7, w
  LW s7, 0(s7)
  SLT s7, s7, s0
  XORI s7, s7, 1
  BNE s7, zero, bb67
  # implict jump to bb66
bb66:
  ADD s8, s0, zero
  JAL zero, bb56
bb67:
  ADD s1, s0, zero
  JAL zero, bb62
bb68:
  LA s7, x_1
  LW t4, 4(sp)
  SW t4, 0(s7)
  LA s7, y_1
  SW s9, 0(s7)
  JAL zero, bb64
bb69:
  LA s7, x_0
  LW t4, 4(sp)
  SW t4, 0(s7)
  LA s7, y_0
  SW s9, 0(s7)
  JAL zero, bb64
bb70:
  # implict jump to bb71
bb71:
  SLTI t4, zero, 30
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb72
bb72:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb78
  # implict jump to bb73
bb73:
  ADD s6, zero, zero
  # implict jump to bb74
bb74:
  ADD s9, s6, zero
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  # implict jump to bb75
bb75:
  LW t4, 8(sp)
  SLTI s4, t4, 30
  BNE s4, zero, bb77
  # implict jump to bb76
bb76:
  ADD s11, s9, zero
  JAL zero, bb44
bb77:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb72
bb78:
  # implict jump to bb79
bb79:
  ADDI s4, zero, 120
  LW t4, 24(sp)
  MULW s4, t4, s4
  LA s8, a
  ADD t4, s8, s4
  SD t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb80
bb80:
  LW t4, 12(sp)
  ADD s8, t4, zero
  SLLIW s4, s8, 2
  LD t4, 144(sp)
  ADD s4, t4, s4
  ADDI s7, zero, 1
  SW s7, 0(s4)
  ADDIW t4, s8, 1
  SW t4, 20(sp)
  # implict jump to bb81
bb81:
  LW t4, 20(sp)
  SLTI s4, t4, 30
  BNE s4, zero, bb83
  # implict jump to bb82
bb82:
  LW t4, 20(sp)
  ADD s6, t4, zero
  JAL zero, bb74
bb83:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb80
