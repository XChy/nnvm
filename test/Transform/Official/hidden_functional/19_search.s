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
  ADD s11, a0, zero
  ADD s8, a1, zero
  ADD s5, a2, zero
  ADDI a0, zero, 10
  BLT a0, s5, bb37
  # implict jump to bb1
bb1:
  LUI a0, 262144
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  ADD s0, zero, zero
  ADD a2, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD a1, zero, zero
  # implict jump to bb2
bb2:
  ADD s7, s3, zero
  ADD s3, s1, zero
  ADD s1, s0, zero
  ADD s4, a0, zero
  SLTI a0, s7, 4
  BNE a0, zero, bb6
  # implict jump to bb3
bb3:
  ADDI t0, zero, 10
  BLT t0, s4, bb5
  # implict jump to bb4
bb4:
  ADD a0, s4, zero
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
bb5:
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
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
bb6:
  ADD s0, s11, zero
  ADD a0, s8, zero
  ADD s6, s1, zero
  ADD s1, zero, zero
  # implict jump to bb7
bb7:
  ADD s9, a0, zero
  ADD s10, s0, zero
  ADDI a0, zero, 120
  MULW s0, s10, a0
  LA a0, a
  ADD s0, a0, s0
  SLLIW a0, s9, 2
  ADD s0, s0, a0
  LW a0, 0(s0)
  XORI a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb8
bb8:
  ADD a0, s6, zero
  # implict jump to bb9
bb9:
  ADD s6, a0, zero
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, s10, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  BNE a0, zero, bb29
  # implict jump to bb12
bb12:
  ADDI a0, zero, 1
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU a0, s10, 1
  BNE a0, zero, bb27
  # implict jump to bb14
bb14:
  LA a0, h
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, s10, a0
  SLTIU a0, a0, 1
  # implict jump to bb15
bb15:
  ADD s1, a0, zero
  BNE s1, zero, bb26
  # implict jump to bb16
bb16:
  SLTIU a0, s9, 1
  # implict jump to bb17
bb17:
  ADD s2, a0, zero
  BNE s2, zero, bb25
  # implict jump to bb18
bb18:
  LA a0, w
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, s9, a0
  SLTIU a0, a0, 1
  # implict jump to bb19
bb19:
  ADD s3, a0, zero
  BNE s3, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s0)
  SLLIW a1, s7, 3
  LA a0, step
  ADD a1, a0, a1
  LW a0, 0(a1)
  SUBW a0, s10, a0
  LW a1, 4(a1)
  SUBW a1, s9, a1
  ADDIW a2, s5, 1
  CALL search
  ADDIW a1, a0, 1
  BLT a1, s4, bb23
  # implict jump to bb21
bb21:
  ADD a0, s4, zero
  # implict jump to bb22
bb22:
  ADD a2, a0, zero
  ADDI a0, zero, 1
  SW a0, 0(s0)
  ADDIW s4, s7, 1
  ADD a0, a2, zero
  ADD s0, s6, zero
  ADD a2, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  JAL zero, bb2
bb23:
  ADD a0, a1, zero
  JAL zero, bb22
bb24:
  ADDIW s7, s7, 1
  ADD a0, s4, zero
  ADD s0, s6, zero
  ADD a2, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s7, zero
  JAL zero, bb2
bb25:
  ADDI a0, zero, 1
  JAL zero, bb19
bb26:
  ADDI a0, zero, 1
  JAL zero, bb17
bb27:
  ADDI a0, zero, 1
  JAL zero, bb15
bb28:
  ADDIW s7, s7, 1
  ADD a0, s4, zero
  ADD s0, s6, zero
  ADD s1, s3, zero
  ADD s3, s7, zero
  JAL zero, bb2
bb29:
  ADDI a0, zero, 1
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
bb30:
  LA a0, y_1
  LW a0, 0(a0)
  XOR a0, s9, a0
  SLTIU a0, a0, 1
  JAL zero, bb11
bb31:
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, s10, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb36
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  # implict jump to bb33
bb33:
  ADD s6, a0, zero
  BNE s6, zero, bb35
  # implict jump to bb34
bb34:
  SLLIW s0, s7, 3
  LA a0, step
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDW s0, s10, s0
  LW a0, 4(a0)
  ADDW a0, s9, a0
  ADDIW s1, s1, 1
  JAL zero, bb7
bb35:
  ADD a0, s6, zero
  JAL zero, bb9
bb36:
  LA a0, y_1
  LW a0, 0(a0)
  XOR a0, s9, a0
  SLTIU a0, a0, 1
  JAL zero, bb33
bb37:
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
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
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s1, a0, zero
  LA s0, w
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, h
  SW s1, 0(s0)
  LA s0, w
  LW s0, 0(s0)
  BNE s0, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:
  ADD s0, zero, zero
  # implict jump to bb41
bb41:
  ADD s1, s0, zero
  ADDI s0, zero, 120
  MULW s2, s1, s0
  LA s0, a
  ADD s2, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s2)
  ADDI s0, zero, 1
  SW s0, 4(s2)
  ADDI s0, zero, 1
  SW s0, 8(s2)
  ADDI s0, zero, 1
  SW s0, 12(s2)
  ADDI s0, zero, 1
  SW s0, 16(s2)
  ADDI s0, zero, 1
  SW s0, 20(s2)
  ADDI s0, zero, 1
  SW s0, 24(s2)
  ADDI s0, zero, 1
  SW s0, 28(s2)
  ADDI s0, zero, 1
  SW s0, 32(s2)
  ADDI s0, zero, 1
  SW s0, 36(s2)
  ADDI s0, zero, 1
  SW s0, 40(s2)
  ADDI s0, zero, 1
  SW s0, 44(s2)
  ADDI s0, zero, 1
  SW s0, 48(s2)
  ADDI s0, zero, 1
  SW s0, 52(s2)
  ADDI s0, zero, 1
  SW s0, 56(s2)
  ADDI s0, zero, 1
  SW s0, 60(s2)
  ADDI s0, zero, 1
  SW s0, 64(s2)
  ADDI s0, zero, 1
  SW s0, 68(s2)
  ADDI s0, zero, 1
  SW s0, 72(s2)
  ADDI s0, zero, 1
  SW s0, 76(s2)
  ADDI s0, zero, 1
  SW s0, 80(s2)
  ADDI s0, zero, 1
  SW s0, 84(s2)
  ADDI s0, zero, 1
  SW s0, 88(s2)
  ADDI s0, zero, 1
  SW s0, 92(s2)
  ADDI s0, zero, 1
  SW s0, 96(s2)
  ADDI s0, zero, 1
  SW s0, 100(s2)
  ADDI s0, zero, 1
  SW s0, 104(s2)
  ADDI s0, zero, 1
  SW s0, 108(s2)
  ADDI s0, zero, 1
  SW s0, 112(s2)
  ADDI s0, zero, 1
  SW s0, 116(s2)
  ADDIW s1, s1, 1
  SLTI s0, s1, 30
  BNE s0, zero, bb58
  # implict jump to bb42
bb42:
  LA s0, h
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb47
  # implict jump to bb43
bb43:
  LA a0, x_0
  LW a2, 0(a0)
  LA a0, y_0
  LW a1, 0(a0)
  ADD a0, a2, zero
  ADDI a2, zero, 1
  CALL search
  ADD s0, a0, zero
  ADDI a0, zero, 10
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb46
  # implict jump to bb44
bb44:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb45
bb45:
  CALL getint
  ADD s1, a0, zero
  LA s0, w
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, h
  SW s1, 0(s0)
  LA s0, w
  LW s0, 0(s0)
  BNE s0, zero, bb40
  JAL zero, bb39
bb46:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb45
bb47:
  ADDI s0, zero, 1
  # implict jump to bb48
bb48:
  ADD s1, s0, zero
  LA s0, w
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb49
bb49:
  ADDIW s1, s1, 1
  LA s0, h
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb50
  JAL zero, bb43
bb50:
  ADD s0, s1, zero
  JAL zero, bb48
bb51:
  ADDI s0, zero, 120
  MULW s2, s1, s0
  LA s0, a
  ADD s2, s0, s2
  ADDI s0, zero, 1
  # implict jump to bb52
bb52:
  ADD s4, s0, zero
  SLLIW s0, s4, 2
  ADD s0, s2, s0
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s0)
  XORI s0, s3, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb53
bb53:
  XORI s0, s3, 3
  SLTIU s0, s0, 1
  BNE s0, zero, bb56
  # implict jump to bb54
bb54:
  ADDIW s3, s4, 1
  LA s0, w
  LW s0, 0(s0)
  SLT s0, s0, s3
  XORI s0, s0, 1
  BNE s0, zero, bb55
  JAL zero, bb49
bb55:
  ADD s0, s3, zero
  JAL zero, bb52
bb56:
  LA s0, x_1
  SW s1, 0(s0)
  LA s0, y_1
  SW s4, 0(s0)
  JAL zero, bb54
bb57:
  LA s0, x_0
  SW s1, 0(s0)
  LA s0, y_0
  SW s4, 0(s0)
  JAL zero, bb54
bb58:
  ADD s0, s1, zero
  JAL zero, bb41
