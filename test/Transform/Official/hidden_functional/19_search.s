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
  ADD s10, a0, zero
  ADD s5, a1, zero
  ADD s11, a2, zero
  ADDI a0, zero, 10
  BLT a0, s11, bb37
  # implict jump to bb1
bb1:
  LUI a0, 262144
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  ADD s0, zero, zero
  ADD a1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD a2, zero, zero
  # implict jump to bb2
bb2:
  ADD s6, s3, zero
  ADD s4, s2, zero
  ADD s3, s0, zero
  ADD s0, a0, zero
  SLTI a0, s1, 4
  BNE a0, zero, bb6
  # implict jump to bb3
bb3:
  ADDI t0, zero, 10
  BLT t0, s0, bb5
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
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
  ADD a0, s10, zero
  ADD s2, s5, zero
  ADD s7, zero, zero
  # implict jump to bb7
bb7:
  ADD s8, s2, zero
  ADDI s2, zero, 120
  MULW s9, a0, s2
  LA s2, a
  ADD s9, s2, s9
  SLLIW s2, s8, 2
  ADD s2, s9, s2
  LW s9, 0(s2)
  XORI s9, s9, 1
  BNE s9, zero, bb31
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  LA s9, x_1
  LW s9, 0(s9)
  XOR s9, a0, s9
  SLTIU s9, s9, 1
  BNE s9, zero, bb30
  # implict jump to bb10
bb10:
  ADD s9, zero, zero
  # implict jump to bb11
bb11:
  BNE s9, zero, bb29
  # implict jump to bb12
bb12:
  ADDI s9, zero, 1
  SLT s7, s9, s7
  XORI s7, s7, 1
  BNE s7, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU a1, a0, 1
  BNE a1, zero, bb27
  # implict jump to bb14
bb14:
  LA a1, h
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  XOR a1, a0, a1
  SLTIU a1, a1, 1
  # implict jump to bb15
bb15:
  ADD s4, a1, zero
  BNE s4, zero, bb26
  # implict jump to bb16
bb16:
  SLTIU a1, s8, 1
  # implict jump to bb17
bb17:
  ADD s6, a1, zero
  BNE s6, zero, bb25
  # implict jump to bb18
bb18:
  LA a1, w
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  XOR a1, s8, a1
  SLTIU a1, a1, 1
  # implict jump to bb19
bb19:
  ADD s7, a1, zero
  BNE s7, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s2)
  SLLIW a1, s1, 3
  LA a2, step
  ADD a1, a2, a1
  LW a2, 0(a1)
  SUBW a0, a0, a2
  LW a1, 4(a1)
  SUBW a1, s8, a1
  ADDIW a2, s11, 1
  CALL search
  ADDIW a2, a0, 1
  BLT a2, s0, bb23
  # implict jump to bb21
bb21:
  ADD a0, s0, zero
  # implict jump to bb22
bb22:
  ADDI a1, zero, 1
  SW a1, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s3, zero
  ADD a1, s4, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb2
bb23:
  ADD a0, a2, zero
  JAL zero, bb22
bb24:
  ADDIW s1, s1, 1
  ADD a0, s0, zero
  ADD s0, s3, zero
  ADD a1, s4, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb2
bb25:
  ADDI a1, zero, 1
  JAL zero, bb19
bb26:
  ADDI a1, zero, 1
  JAL zero, bb17
bb27:
  ADDI a1, zero, 1
  JAL zero, bb15
bb28:
  ADDIW s1, s1, 1
  ADD a0, s0, zero
  ADD s0, s3, zero
  ADD s2, s4, zero
  ADD s3, s6, zero
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
  LA s9, y_1
  LW s9, 0(s9)
  XOR s9, s8, s9
  SLTIU s9, s9, 1
  JAL zero, bb11
bb31:
  LA s3, x_1
  LW s3, 0(s3)
  XOR s3, a0, s3
  SLTIU s3, s3, 1
  BNE s3, zero, bb36
  # implict jump to bb32
bb32:
  ADD s3, zero, zero
  # implict jump to bb33
bb33:
  BNE s3, zero, bb35
  # implict jump to bb34
bb34:
  SLLIW s2, s1, 3
  LA s9, step
  ADD s2, s9, s2
  LW s9, 0(s2)
  ADDW a0, a0, s9
  LW s2, 4(s2)
  ADDW s2, s8, s2
  ADDIW s7, s7, 1
  JAL zero, bb7
bb35:
  JAL zero, bb9
bb36:
  LA s3, y_1
  LW s3, 0(s3)
  XOR s3, s8, s3
  SLTIU s3, s3, 1
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
  ADDI s1, zero, 120
  MULW s1, s0, s1
  LA s2, a
  ADD s1, s2, s1
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s2, zero, 1
  SW s2, 4(s1)
  ADDI s2, zero, 1
  SW s2, 8(s1)
  ADDI s2, zero, 1
  SW s2, 12(s1)
  ADDI s2, zero, 1
  SW s2, 16(s1)
  ADDI s2, zero, 1
  SW s2, 20(s1)
  ADDI s2, zero, 1
  SW s2, 24(s1)
  ADDI s2, zero, 1
  SW s2, 28(s1)
  ADDI s2, zero, 1
  SW s2, 32(s1)
  ADDI s2, zero, 1
  SW s2, 36(s1)
  ADDI s2, zero, 1
  SW s2, 40(s1)
  ADDI s2, zero, 1
  SW s2, 44(s1)
  ADDI s2, zero, 1
  SW s2, 48(s1)
  ADDI s2, zero, 1
  SW s2, 52(s1)
  ADDI s2, zero, 1
  SW s2, 56(s1)
  ADDI s2, zero, 1
  SW s2, 60(s1)
  ADDI s2, zero, 1
  SW s2, 64(s1)
  ADDI s2, zero, 1
  SW s2, 68(s1)
  ADDI s2, zero, 1
  SW s2, 72(s1)
  ADDI s2, zero, 1
  SW s2, 76(s1)
  ADDI s2, zero, 1
  SW s2, 80(s1)
  ADDI s2, zero, 1
  SW s2, 84(s1)
  ADDI s2, zero, 1
  SW s2, 88(s1)
  ADDI s2, zero, 1
  SW s2, 92(s1)
  ADDI s2, zero, 1
  SW s2, 96(s1)
  ADDI s2, zero, 1
  SW s2, 100(s1)
  ADDI s2, zero, 1
  SW s2, 104(s1)
  ADDI s2, zero, 1
  SW s2, 108(s1)
  ADDI s2, zero, 1
  SW s2, 112(s1)
  ADDI s2, zero, 1
  SW s2, 116(s1)
  ADDIW s0, s0, 1
  SLTI s1, s0, 30
  BNE s1, zero, bb58
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
  LW a0, 0(a0)
  LA a1, y_0
  LW a1, 0(a1)
  ADDI a2, zero, 1
  CALL search
  ADDI s0, zero, 10
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb46
  # implict jump to bb44
bb44:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb45
bb45:
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
  JAL zero, bb39
bb46:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb45
bb47:
  ADDI s1, zero, 1
  # implict jump to bb48
bb48:
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
  JAL zero, bb48
bb51:
  ADDI s0, zero, 120
  MULW s0, s1, s0
  LA s2, a
  ADD s3, s2, s0
  ADDI s0, zero, 1
  # implict jump to bb52
bb52:
  SLLIW s2, s0, 2
  ADD s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  XORI s4, s2, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb53
bb53:
  XORI s2, s2, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb56
  # implict jump to bb54
bb54:
  ADDIW s0, s0, 1
  LA s2, w
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb55
  JAL zero, bb49
bb55:
  JAL zero, bb52
bb56:
  LA s2, x_1
  SW s1, 0(s2)
  LA s2, y_1
  SW s0, 0(s2)
  JAL zero, bb54
bb57:
  LA s2, x_0
  SW s1, 0(s2)
  LA s2, y_0
  SW s0, 0(s2)
  JAL zero, bb54
bb58:
  JAL zero, bb41
