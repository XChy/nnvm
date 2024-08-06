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
search:   # loop depth 0
  ADDI sp, sp, -128
  SD s11, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  ADD s8, a0, zero
  SW a1, 0(sp)
  ADD s11, a2, zero
  ADDI a0, zero, 10
  BLT a0, s11, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  LUI a0, 262144
  ADDIW a0, a0, 0
  ADD s6, zero, a0
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s10, zero, zero
  ADD s4, zero, zero
  ADD s9, zero, zero
  ADD s7, zero, zero
  # implict jump to bb2
bb2:   # loop depth 1
  SLTI a0, s9, 4
  BNE a0, zero, bb6
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI t0, zero, 10
  BLT t0, s6, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, s6, zero
  LD s11, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
  LD s11, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb6:   # loop depth 1
  SLLIW a0, s9, 3
  SW a0, 4(sp)
  ADD a1, s8, zero
  LW a2, 0(sp)
  ADD s3, zero, zero
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI a0, zero, 120
  MULW a0, a1, a0
  LA s0, a
  ADD a0, s0, a0
  SLLIW s0, a2, 2
  ADD a0, a0, s0
  SD a0, 104(sp)
  LD a0, 104(sp)
  LW a0, 0(a0)
  XORI a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 1
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, a1, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb10
bb10:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  BNE a0, zero, bb29
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI a0, zero, 1
  SLT a0, a0, s3
  XORI a0, a0, 1
  ADDIW s9, s9, 1
  BNE a0, zero, bb28
  # implict jump to bb13
bb13:   # loop depth 1
  SLTIU a0, a1, 1
  BNE a0, zero, bb27
  # implict jump to bb14
bb14:   # loop depth 1
  LA a0, h
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, a1, a0
  SLTIU s2, a0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s2, zero, bb26
  # implict jump to bb16
bb16:   # loop depth 1
  SLTIU s10, a2, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s10, zero, bb25
  # implict jump to bb18
bb18:   # loop depth 1
  LA a0, w
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, a2, a0
  SLTIU s4, a0, 1
  # implict jump to bb19
bb19:   # loop depth 1
  BNE s4, zero, bb24
  # implict jump to bb20
bb20:   # loop depth 1
  LD a0, 104(sp)
  SW zero, 0(a0)
  LA a0, step
  LW s0, 4(sp)
  ADD s7, a0, s0
  LW a0, 0(s7)
  SUBW a0, a1, a0
  LW a1, 4(s7)
  SUBW a1, a2, a1
  ADDIW a2, s11, 1
  CALL search
  ADDIW s7, a0, 1
  BLT s7, s6, bb23
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  ADDI a2, zero, 1
  LD a0, 104(sp)
  SW a2, 0(a0)
  JAL zero, bb2
bb23:   # loop depth 1
  ADD s6, s7, zero
  JAL zero, bb22
bb24:   # loop depth 1
  JAL zero, bb2
bb25:   # loop depth 1
  ADDI s4, zero, 1
  JAL zero, bb19
bb26:   # loop depth 1
  ADDI s10, zero, 1
  JAL zero, bb17
bb27:   # loop depth 1
  ADDI s2, zero, 1
  JAL zero, bb15
bb28:   # loop depth 1
  JAL zero, bb2
bb29:   # loop depth 0
  ADDI a0, zero, 1
  LD s11, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb30:   # loop depth 1
  LA a0, y_1
  LW a0, 0(a0)
  XOR a0, a2, a0
  SLTIU a0, a0, 1
  JAL zero, bb11
bb31:   # loop depth 2
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, a1, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  BNE s1, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 2
  LA s0, step
  LW a0, 4(sp)
  ADD a0, s0, a0
  SD a0, 112(sp)
  LD a0, 112(sp)
  LW s0, 0(a0)
  ADDW a1, a1, s0
  LD a0, 112(sp)
  LW s0, 4(a0)
  ADDW a2, a2, s0
  ADDIW s3, s3, 1
  JAL zero, bb7
bb35:   # loop depth 1
  JAL zero, bb9
bb36:   # loop depth 2
  LA a0, y_1
  LW a0, 0(a0)
  XOR a0, a2, a0
  SLTIU s1, a0, 1
  JAL zero, bb33
bb37:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
  LD s11, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
main:   # loop depth 0
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
bb39:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb40:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
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
bb42:   # loop depth 1
  LA s0, h
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb47
  # implict jump to bb43
bb43:   # loop depth 1
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
bb44:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb45
bb45:   # loop depth 1
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
bb46:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb45
bb47:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb48
bb48:   # loop depth 2
  LA s0, w
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb49
bb49:   # loop depth 2
  ADDIW s1, s1, 1
  LA s0, h
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb50
  JAL zero, bb43
bb50:   # loop depth 2
  JAL zero, bb48
bb51:   # loop depth 2
  ADDI s0, zero, 120
  MULW s0, s1, s0
  LA s2, a
  ADD s3, s2, s0
  ADDI s0, zero, 1
  # implict jump to bb52
bb52:   # loop depth 3
  SLLIW s2, s0, 2
  ADD s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  XORI s4, s2, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 3
  XORI s2, s2, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb56
  # implict jump to bb54
bb54:   # loop depth 3
  ADDIW s0, s0, 1
  LA s2, w
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb55
  JAL zero, bb49
bb55:   # loop depth 3
  JAL zero, bb52
bb56:   # loop depth 3
  LA s2, x_1
  SW s1, 0(s2)
  LA s2, y_1
  SW s0, 0(s2)
  JAL zero, bb54
bb57:   # loop depth 3
  LA s2, x_0
  SW s1, 0(s2)
  LA s2, y_0
  SW s0, 0(s2)
  JAL zero, bb54
bb58:   # loop depth 2
  JAL zero, bb41
