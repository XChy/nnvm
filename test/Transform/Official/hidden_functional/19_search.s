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
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADD t4, a0, zero
  SW t4, 12(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADDI s3, zero, 10
  LW t4, 4(sp)
  SLT s3, s3, t4
  BNE s3, zero, bb37
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  ADD s4, zero, s4
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb2
bb2:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 24(sp)
  ADD s11, t4, zero
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  ADD t4, s6, zero
  SB t4, 2(sp)
  ADD t4, s5, zero
  SB t4, 3(sp)
  ADD t4, s4, zero
  SW t4, 28(sp)
  ADD a4, s3, zero
  SLTI a5, s11, 4
  BNE a5, zero, bb6
  # implict jump to bb3
bb3:
  ADDI a5, zero, 10
  LW t4, 28(sp)
  SLT a5, a5, t4
  BNE a5, zero, bb5
  # implict jump to bb4
bb4:
  LW t4, 28(sp)
  ADD a0, t4, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb5:
  LUI a5, 262144
  ADDIW a5, a5, 0
  ADD a0, zero, a5
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb6:
  ADD a5, zero, zero
  LW t4, 12(sp)
  ADD a6, t4, zero
  LW t4, 8(sp)
  ADD a7, t4, zero
  # implict jump to bb7
bb7:
  ADD t6, a7, zero
  ADD s2, a6, zero
  ADD s1, a5, zero
  ADD s0, a4, zero
  ADDI s9, zero, 120
  MULW s9, s2, s9
  LA s10, a
  ADD s9, s10, s9
  SLLIW s10, t6, 2
  ADD s9, s9, s10
  LW s10, 0(s9)
  XORI s10, s10, 1
  SLTU s10, zero, s10
  BNE s10, zero, bb31
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LA s7, x_1
  LW s7, 0(s7)
  XOR s7, s2, s7
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
  XOR s1, s2, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb27
  # implict jump to bb14
bb14:
  LA s1, h
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  XOR s1, s2, s1
  SLTIU s1, s1, 1
  # implict jump to bb15
bb15:
  BNE s1, zero, bb26
  # implict jump to bb16
bb16:
  XOR s7, t6, zero
  SLTIU s7, s7, 1
  # implict jump to bb17
bb17:
  BNE s7, zero, bb25
  # implict jump to bb18
bb18:
  LA s8, w
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  XOR s8, t6, s8
  SLTIU s8, s8, 1
  # implict jump to bb19
bb19:
  BNE s8, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s9)
  SLLIW s10, s11, 3
  LA t0, step
  ADD s10, t0, s10
  LW t0, 0(s10)
  SUBW s2, s2, t0
  ADDI s10, s10, 4
  LW s10, 0(s10)
  SUBW s10, t6, s10
  LW t4, 4(sp)
  ADDIW t0, t4, 1
  ADD a0, s2, zero
  ADD a1, s10, zero
  ADD a2, t0, zero
  CALL search
  ADD s2, a0, zero
  ADDIW s2, s2, 1
  LW t4, 28(sp)
  SLT s10, s2, t4
  BNE s10, zero, bb23
  # implict jump to bb21
bb21:
  LW t4, 28(sp)
  ADD s10, t4, zero
  # implict jump to bb22
bb22:
  ADDI t0, zero, 1
  SW t0, 0(s9)
  ADDIW s9, s11, 1
  ADD s3, s0, zero
  ADD s4, s10, zero
  ADD s5, s1, zero
  ADD s6, s7, zero
  ADD t4, s8, zero
  SB t4, 0(sp)
  ADD t4, s9, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  JAL zero, bb2
bb23:
  ADD s10, s2, zero
  JAL zero, bb22
bb24:
  ADDIW s2, s11, 1
  ADD s3, s0, zero
  LW t4, 28(sp)
  ADD s4, t4, zero
  ADD s5, s1, zero
  ADD s6, s7, zero
  ADD t4, s8, zero
  SB t4, 0(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
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
  ADDIW s1, s11, 1
  ADD s3, s0, zero
  LW t4, 28(sp)
  ADD s4, t4, zero
  LB t4, 3(sp)
  ADD s5, t4, zero
  LB t4, 2(sp)
  ADD s6, t4, zero
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb2
bb29:
  ADDI a0, zero, 1
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb30:
  LA s8, y_1
  LW s8, 0(s8)
  XOR s8, t6, s8
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb11
bb31:
  LA s10, x_1
  LW s10, 0(s10)
  XOR s10, s2, s10
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
  SLLIW s8, s11, 3
  LA s7, step
  ADD s7, s7, s8
  LW s8, 0(s7)
  ADDW s8, s2, s8
  ADDI s7, s7, 4
  LW s7, 0(s7)
  ADDW s7, t6, s7
  ADDIW t0, s1, 1
  ADD a4, s10, zero
  ADD a5, t0, zero
  ADD a6, s8, zero
  ADD a7, s7, zero
  JAL zero, bb7
bb35:
  ADD s0, s10, zero
  JAL zero, bb9
bb36:
  LA s8, y_1
  LW s8, 0(s8)
  XOR s8, t6, s8
  SLTIU s8, s8, 1
  ADD s10, s8, zero
  JAL zero, bb33
bb37:
  LUI s0, 262144
  ADDIW s0, s0, 0
  ADD a0, zero, s0
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
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
  XOR s2, s2, zero
  SLTU s2, zero, s2
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
  ADDI s0, zero, 1
  # implict jump to bb50
bb50:
  ADD s7, s0, zero
  LA s8, w
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW s8, s6, 1
  ADD s4, s7, zero
  ADD s5, s8, zero
  JAL zero, bb44
bb52:
  ADDI s4, zero, 120
  MULW s4, s6, s4
  LA s5, a
  ADD s4, s5, s4
  SLLIW s5, s7, 2
  ADD s4, s4, s5
  CALL getint
  SW a0, 0(s4)
  XORI s5, a0, 2
  SLTIU s5, s5, 1
  BNE s5, zero, bb56
  # implict jump to bb53
bb53:
  LW s4, 0(s4)
  XORI s4, s4, 3
  SLTIU s4, s4, 1
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
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb42
bb60:
  ADDI s1, zero, 120
  MULW s1, s3, s1
  LA s2, a
  ADD s1, s2, s1
  SLLIW s2, s4, 2
  ADD s1, s1, s2
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDIW s1, s4, 1
  ADD s0, s1, zero
  JAL zero, bb58
