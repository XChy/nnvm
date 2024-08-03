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
  ADD s4, a0, zero
  ADD s3, a1, zero
  ADD s1, a2, zero
  ADDI a0, zero, 10
  BLT a0, s1, bb37
  # implict jump to bb1
bb1:
  LUI a0, 262144
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  ADD s2, zero, zero
  ADD s6, zero, zero
  ADD s0, zero, zero
  ADD s5, zero, zero
  ADD s7, zero, zero
  ADD a1, zero, zero
  # implict jump to bb2
bb2:
  ADD a2, a1, zero
  ADD s11, s0, zero
  ADD s9, s6, zero
  ADD s0, s2, zero
  ADD s8, a0, zero
  SLTI a0, s7, 4
  BNE a0, zero, bb6
  # implict jump to bb3
bb3:
  ADDI t0, zero, 10
  BLT t0, s8, bb5
  # implict jump to bb4
bb4:
  ADD a0, s8, zero
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
  ADD a1, s4, zero
  ADD a0, s3, zero
  ADD s2, s0, zero
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s10, a0, zero
  ADDI a0, zero, 120
  MULW s6, a1, a0
  LA a0, a
  ADD a0, a0, s6
  SLLIW s6, s10, 2
  ADD s6, a0, s6
  LW a0, 0(s6)
  XORI a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb8
bb8:
  ADD a0, s2, zero
  # implict jump to bb9
bb9:
  ADD s2, a0, zero
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, a1, a0
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
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb28
  # implict jump to bb13
bb13:
  SLTIU a0, a1, 1
  BNE a0, zero, bb27
  # implict jump to bb14
bb14:
  LA a0, h
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, a1, a0
  SLTIU a0, a0, 1
  # implict jump to bb15
bb15:
  ADD s5, a0, zero
  BNE s5, zero, bb26
  # implict jump to bb16
bb16:
  SLTIU a0, s10, 1
  # implict jump to bb17
bb17:
  ADD s0, a0, zero
  BNE s0, zero, bb25
  # implict jump to bb18
bb18:
  LA a0, w
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, s10, a0
  SLTIU a0, a0, 1
  # implict jump to bb19
bb19:
  ADD s9, a0, zero
  BNE s9, zero, bb24
  # implict jump to bb20
bb20:
  SW zero, 0(s6)
  SLLIW a2, s7, 3
  LA a0, step
  ADD a2, a0, a2
  LW a0, 0(a2)
  SUBW a0, a1, a0
  LW a1, 4(a2)
  SUBW a1, s10, a1
  ADDIW a2, s1, 1
  CALL search
  ADDIW a1, a0, 1
  BLT a1, s8, bb23
  # implict jump to bb21
bb21:
  ADD a0, s8, zero
  # implict jump to bb22
bb22:
  ADD s8, a0, zero
  ADDI a0, zero, 1
  SW a0, 0(s6)
  ADDIW a2, s7, 1
  ADD a0, s8, zero
  ADD s6, s5, zero
  ADD s5, s9, zero
  ADD s7, a2, zero
  JAL zero, bb2
bb23:
  ADD a0, a1, zero
  JAL zero, bb22
bb24:
  ADDIW a1, s7, 1
  ADD a0, s8, zero
  ADD s6, s5, zero
  ADD s5, s9, zero
  ADD s7, a1, zero
  ADD a1, a2, zero
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
  ADDIW a1, s7, 1
  ADD a0, s8, zero
  ADD s6, s9, zero
  ADD s0, s11, zero
  ADD s7, a1, zero
  ADD a1, a2, zero
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
  XOR a0, s10, a0
  SLTIU a0, a0, 1
  JAL zero, bb11
bb31:
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, a1, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb36
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  # implict jump to bb33
bb33:
  ADD s2, a0, zero
  BNE s2, zero, bb35
  # implict jump to bb34
bb34:
  SLLIW s6, s7, 3
  LA a0, step
  ADD s6, a0, s6
  LW a0, 0(s6)
  ADDW a1, a1, a0
  LW a0, 4(s6)
  ADDW a0, s10, a0
  ADDIW s0, s0, 1
  JAL zero, bb7
bb35:
  ADD a0, s2, zero
  JAL zero, bb9
bb36:
  LA a0, y_1
  LW a0, 0(a0)
  XOR a0, s10, a0
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
  # implict jump to bb41
bb41:
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD s2, s0, zero
  ADDI s0, zero, 120
  MULW s1, s2, s0
  LA s0, a
  ADD s4, s0, s1
  ADD s0, zero, zero
  # implict jump to bb43
bb43:
  ADD s1, s0, zero
  SLLIW s0, s1, 2
  ADD s3, s4, s0
  ADDI s0, zero, 1
  SW s0, 0(s3)
  ADDIW s1, s1, 1
  SLTI s0, s1, 30
  BNE s0, zero, bb69
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  ADDIW s0, s2, 1
  SLTI s1, s0, 30
  BNE s1, zero, bb68
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LA s0, h
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb54
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
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
  BNE a0, zero, bb53
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
  LA s0, w
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, h
  SW s1, 0(s0)
  LA s0, w
  LW s0, 0(s0)
  BNE s0, zero, bb52
  JAL zero, bb39
bb52:
  JAL zero, bb41
bb53:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb51
bb54:
  ADDI s0, zero, 1
  # implict jump to bb55
bb55:
  ADD s1, s0, zero
  LA s0, w
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb60
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  ADDIW s1, s1, 1
  LA s0, h
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb58
bb58:
  JAL zero, bb49
bb59:
  ADD s0, s1, zero
  JAL zero, bb55
bb60:
  ADDI s0, zero, 120
  MULW s2, s1, s0
  LA s0, a
  ADD s2, s0, s2
  ADDI s0, zero, 1
  # implict jump to bb61
bb61:
  ADD s3, s0, zero
  SLLIW s0, s3, 2
  ADD s0, s2, s0
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s0)
  XORI s0, s4, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb67
  # implict jump to bb62
bb62:
  XORI s0, s4, 3
  SLTIU s0, s0, 1
  BNE s0, zero, bb66
  # implict jump to bb63
bb63:
  ADDIW s3, s3, 1
  LA s0, w
  LW s0, 0(s0)
  SLT s0, s0, s3
  XORI s0, s0, 1
  BNE s0, zero, bb65
  # implict jump to bb64
bb64:
  JAL zero, bb57
bb65:
  ADD s0, s3, zero
  JAL zero, bb61
bb66:
  LA s0, x_1
  SW s1, 0(s0)
  LA s0, y_1
  SW s3, 0(s0)
  JAL zero, bb63
bb67:
  LA s0, x_0
  SW s1, 0(s0)
  LA s0, y_0
  SW s3, 0(s0)
  JAL zero, bb63
bb68:
  JAL zero, bb42
bb69:
  ADD s0, s1, zero
  JAL zero, bb43
