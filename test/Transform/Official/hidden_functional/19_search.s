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
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s10, 48(sp)
  SD s9, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD ra, 112(sp)
  SD s11, 120(sp)
  SD s6, 128(sp)
  ADD t4, a0, zero
  SW t4, 8(sp)
  ADD t4, a1, zero
  SW t4, 4(sp)
  ADD t4, a2, zero
  SW t4, 0(sp)
  ADDI s3, zero, 10
  LW t4, 0(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb37
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  ADD s5, zero, s4
  ADD s4, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SB t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb2
bb2:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  ADD s11, t4, zero
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  ADD t4, s6, zero
  SB t4, 26(sp)
  ADD t4, s4, zero
  SB t4, 27(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  ADD a4, s3, zero
  SLTI a5, s11, 4
  BNE a5, zero, bb6
  # implict jump to bb3
bb3:
  ADDI a5, zero, 10
  LW t4, 28(sp)
  SLT a6, a5, t4
  BNE a6, zero, bb5
  # implict jump to bb4
bb4:
  LW t4, 28(sp)
  ADD a0, t4, zero
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD ra, 112(sp)
  LD s11, 120(sp)
  LD s6, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  LUI a5, 262144
  ADDIW a5, a5, 0
  ADD a0, zero, a5
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD ra, 112(sp)
  LD s11, 120(sp)
  LD s6, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb6:
  ADD a5, a4, zero
  ADD a4, zero, zero
  LW t4, 8(sp)
  ADD a6, t4, zero
  LW t4, 4(sp)
  ADD a7, t4, zero
  # implict jump to bb7
bb7:
  ADD t6, a7, zero
  ADD s2, a6, zero
  ADD s1, a4, zero
  ADD s0, a5, zero
  ADDI s9, zero, 120
  MULW s10, s2, s9
  LA s9, a
  ADD s8, s9, s10
  SLLIW s9, t6, 2
  ADD s10, s8, s9
  LW s8, 0(s10)
  XORI s9, s8, 1
  SLTU s8, zero, s9
  BNE s8, zero, bb31
  # implict jump to bb8
bb8:
  ADD s8, s0, zero
  # implict jump to bb9
bb9:
  ADD s0, s8, zero
  LA s7, x_1
  LW s8, 0(s7)
  XOR s7, s2, s8
  SLTIU s8, s7, 1
  BNE s8, zero, bb30
  # implict jump to bb10
bb10:
  ADD s7, zero, zero
  # implict jump to bb11
bb11:
  ADD s8, s7, zero
  BNE s8, zero, bb29
  # implict jump to bb12
bb12:
  ADDI s7, zero, 1
  SLT s8, s7, s1
  XORI s1, s8, 1
  BNE s1, zero, bb28
  # implict jump to bb13
bb13:
  XOR s1, s2, zero
  SLTIU s7, s1, 1
  BNE s7, zero, bb27
  # implict jump to bb14
bb14:
  LA s1, h
  LW s7, 0(s1)
  ADDIW s1, s7, 1
  XOR s7, s2, s1
  SLTIU s1, s7, 1
  ADD s7, s1, zero
  # implict jump to bb15
bb15:
  ADD s1, s7, zero
  BNE s1, zero, bb26
  # implict jump to bb16
bb16:
  XOR s7, t6, zero
  SLTIU s8, s7, 1
  ADD s7, s8, zero
  # implict jump to bb17
bb17:
  ADD s8, s7, zero
  BNE s8, zero, bb25
  # implict jump to bb18
bb18:
  LA s7, w
  LW s9, 0(s7)
  ADDIW s7, s9, 1
  XOR s9, t6, s7
  SLTIU s7, s9, 1
  ADD s9, s7, zero
  # implict jump to bb19
bb19:
  ADD s7, s9, zero
  BNE s7, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s10)
  SLLIW s9, s11, 3
  LA t0, step
  ADD a4, t0, s9
  LW s9, 0(a4)
  SUBW t0, s2, s9
  ADDI s2, a4, 4
  LW s9, 0(s2)
  SUBW s2, t6, s9
  LW t4, 0(sp)
  ADDIW s9, t4, 1
  ADD a0, t0, zero
  ADD a1, s2, zero
  ADD a2, s9, zero
  CALL search
  ADD s2, a0, zero
  ADDIW s9, s2, 1
  LW t4, 28(sp)
  SLT s2, s9, t4
  BNE s2, zero, bb23
  # implict jump to bb21
bb21:
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb22
bb22:
  ADD t0, s2, zero
  ADDI s2, zero, 1
  SW s2, 0(s10)
  ADDIW s2, s11, 1
  ADD s3, s0, zero
  ADD s5, t0, zero
  ADD s4, s1, zero
  ADD s6, s8, zero
  ADD t4, s7, zero
  SB t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s9, zero
  SW t4, 12(sp)
  JAL zero, bb2
bb23:
  ADD s2, s9, zero
  JAL zero, bb22
bb24:
  ADDIW s2, s11, 1
  ADD s3, s0, zero
  LW t4, 28(sp)
  ADD s5, t4, zero
  ADD s4, s1, zero
  ADD s6, s8, zero
  ADD t4, s7, zero
  SB t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb2
bb25:
  ADDI s9, zero, 1
  JAL zero, bb19
bb26:
  ADDI s7, zero, 1
  JAL zero, bb17
bb27:
  ADDI s7, zero, 1
  JAL zero, bb15
bb28:
  ADDIW s1, s11, 1
  ADD s3, s0, zero
  LW t4, 28(sp)
  ADD s5, t4, zero
  LB t4, 27(sp)
  ADD s4, t4, zero
  LB t4, 26(sp)
  ADD s6, t4, zero
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb2
bb29:
  ADDI a0, zero, 1
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD ra, 112(sp)
  LD s11, 120(sp)
  LD s6, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb30:
  LA s8, y_1
  LW s9, 0(s8)
  XOR s8, t6, s9
  SLTIU s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb11
bb31:
  LA s0, x_1
  LW s9, 0(s0)
  XOR s0, s2, s9
  SLTIU s9, s0, 1
  BNE s9, zero, bb36
  # implict jump to bb32
bb32:
  ADD s0, zero, zero
  # implict jump to bb33
bb33:
  ADD s7, s0, zero
  BNE s7, zero, bb35
  # implict jump to bb34
bb34:
  SLLIW s0, s11, 3
  LA s9, step
  ADD t0, s9, s0
  LW s0, 0(t0)
  ADDW s9, s2, s0
  ADDI s0, t0, 4
  LW t0, 0(s0)
  ADDW s0, t6, t0
  ADDIW t0, s1, 1
  ADD a5, s7, zero
  ADD a4, t0, zero
  ADD a6, s9, zero
  ADD a7, s0, zero
  JAL zero, bb7
bb35:
  ADD s8, s7, zero
  JAL zero, bb9
bb36:
  LA s9, y_1
  LW s7, 0(s9)
  XOR s9, t6, s7
  SLTIU s7, s9, 1
  ADD s0, s7, zero
  JAL zero, bb33
bb37:
  LUI s0, 262144
  ADDIW s0, s0, 0
  ADD a0, zero, s0
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD ra, 112(sp)
  LD s11, 120(sp)
  LD s6, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD ra, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
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
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD ra, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb41:
  ADD s2, s1, zero
  ADD s1, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  ADD s4, s2, zero
  SLTI s5, s3, 30
  BNE s5, zero, bb57
  # implict jump to bb43
bb43:
  ADD s5, s4, zero
  ADDI s4, zero, 1
  # implict jump to bb44
bb44:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, h
  LW s9, 0(s8)
  SLT s8, s9, s6
  XORI s9, s8, 1
  BNE s9, zero, bb49
  # implict jump to bb45
bb45:
  LA s8, x_0
  LW s9, 0(s8)
  LA s8, y_0
  LW s10, 0(s8)
  ADD a0, s9, zero
  ADD a1, s10, zero
  ADDI a2, zero, 1
  CALL search
  ADD s8, a0, zero
  ADDI s9, zero, 10
  SLT s10, s9, s8
  XORI s9, s10, 1
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
  ADDI s0, zero, 1
  # implict jump to bb50
bb50:
  ADD s7, s0, zero
  LA s8, w
  LW s9, 0(s8)
  SLT s8, s9, s7
  XORI s9, s8, 1
  BNE s9, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW s8, s6, 1
  ADD s5, s7, zero
  ADD s4, s8, zero
  JAL zero, bb44
bb52:
  ADDI s4, zero, 120
  MULW s5, s6, s4
  LA s4, a
  ADD s8, s4, s5
  SLLIW s4, s7, 2
  ADD s5, s8, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s5)
  XORI s8, s4, 2
  SLTIU s4, s8, 1
  BNE s4, zero, bb56
  # implict jump to bb53
bb53:
  LW s4, 0(s5)
  XORI s5, s4, 3
  SLTIU s4, s5, 1
  BNE s4, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW s4, s7, 1
  ADD s0, s4, zero
  JAL zero, bb50
bb55:
  LA s4, x_1
  SW s6, 0(s4)
  LA s4, y_1
  SW s7, 0(s4)
  JAL zero, bb54
bb56:
  LA s4, x_0
  SW s6, 0(s4)
  LA s4, y_0
  SW s7, 0(s4)
  JAL zero, bb54
bb57:
  ADD s0, zero, zero
  # implict jump to bb58
bb58:
  ADD s4, s0, zero
  SLTI s5, s4, 30
  BNE s5, zero, bb60
  # implict jump to bb59
bb59:
  ADDIW s5, s3, 1
  ADD s2, s4, zero
  ADD s1, s5, zero
  JAL zero, bb42
bb60:
  ADDI s1, zero, 120
  MULW s2, s3, s1
  LA s1, a
  ADD s5, s1, s2
  SLLIW s1, s4, 2
  ADD s2, s5, s1
  ADDI s1, zero, 1
  SW s1, 0(s2)
  ADDIW s1, s4, 1
  ADD s0, s1, zero
  JAL zero, bb58
