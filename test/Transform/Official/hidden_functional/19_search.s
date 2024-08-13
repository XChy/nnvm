.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -160
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADDI s0, zero, 10
  SW a1, 0(sp)
  SW a0, 4(sp)
  BLT s0, a2, bb32
  # implict jump to bb1
bb1:   # loop depth 0
  LUI a0, 262144
  ADD s8, zero, zero
  ADDIW a0, a0, 0
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s10, zero, zero
  ADD s7, zero, zero
  ADD s9, zero, a0
  ADD a0, zero, zero
  SW a0, 16(sp)
  ADDIW a0, a2, 1
  SW a0, 20(sp)
  # implict jump to bb2
bb2:   # loop depth 1
  LW a0, 16(sp)
  SW a0, 16(sp)
  LW a0, 16(sp)
  SLTI a2, a0, 4
  BNE a2, zero, bb6
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI t0, zero, 10
  BLT t0, s9, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, s9, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb6:   # loop depth 1
  LA a0, step
  SD a0, 128(sp)
  LW s11, 4(sp)
  LW a0, 0(sp)
  SW a0, 12(sp)
  LW a0, 12(sp)
  SW a0, 12(sp)
  ADD a2, zero, zero
  LD a0, 128(sp)
  LW a1, 16(sp)
  SH3ADD a0, a1, a0
  SD a0, 136(sp)
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI a0, zero, 120
  MULW s2, s11, a0
  LA a0, a
  SD a0, 32(sp)
  LW a0, 12(sp)
  SW a0, 12(sp)
  LD a0, 32(sp)
  ADD a0, a0, s2
  LW a1, 12(sp)
  SH2ADD a0, a1, a0
  SD a0, 144(sp)
  LD a0, 144(sp)
  LW a0, 0(a0)
  XORI a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 1
  LA s1, x_1
  LW a0, 0(s1)
  XOR a0, s11, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb10
bb10:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  BNE a0, zero, bb24
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI a0, zero, 1
  LW a1, 16(sp)
  ADDIW a1, a1, 1
  SW a1, 16(sp)
  SLT a0, a0, a2
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb13
bb13:   # loop depth 1
  SLTIU a0, s11, 1
  BNE a0, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 1
  LA a0, h
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  XOR a0, s11, a0
  SLTIU s10, a0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  LW a0, 12(sp)
  SLTIU a2, a0, 1
  OR s4, s10, a2
  BNE s4, zero, bb21
  # implict jump to bb16
bb16:   # loop depth 1
  LA a2, w
  LW a2, 0(a2)
  ADDIW a2, a2, 1
  LW a0, 12(sp)
  XOR a2, a0, a2
  SLTIU s3, a2, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 1
  LD a0, 144(sp)
  SW zero, 0(a0)
  LW a2, 20(sp)
  LD a0, 136(sp)
  LW a1, 0(a0)
  ADDI a0, zero, 1
  SW a0, 8(sp)
  LD a0, 136(sp)
  LW s8, 4(a0)
  SUBW a0, s11, a1
  LW a1, 12(sp)
  SUBW a1, a1, s8
  CALL search
  LW a1, 8(sp)
  LD a2, 144(sp)
  SW a1, 0(a2)
  ADDIW s8, a0, 1
  MIN s9, s8, s9
  # implict jump to bb19
bb19:   # loop depth 1
  LW a0, 16(sp)
  SW a0, 16(sp)
  JAL zero, bb2
bb20:   # loop depth 1
  JAL zero, bb19
bb21:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb17
bb22:   # loop depth 1
  ADDI s10, zero, 1
  JAL zero, bb15
bb23:   # loop depth 1
  JAL zero, bb19
bb24:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb25:   # loop depth 1
  LA a0, y_1
  LW a0, 0(a0)
  LW a1, 12(sp)
  XOR a0, a1, a0
  SLTIU a0, a0, 1
  JAL zero, bb11
bb26:   # loop depth 2
  LA a0, x_1
  LW a0, 0(a0)
  XOR a0, s11, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s7, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s7, zero, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  LD a0, 136(sp)
  LW s1, 0(a0)
  ADDIW a2, a2, 1
  LD a0, 136(sp)
  LW a0, 4(a0)
  SW a0, 24(sp)
  ADDW s11, s11, s1
  LW a0, 12(sp)
  LW a1, 24(sp)
  ADDW a0, a0, a1
  SW a0, 12(sp)
  LW a0, 12(sp)
  SW a0, 12(sp)
  JAL zero, bb7
bb30:   # loop depth 1
  JAL zero, bb9
bb31:   # loop depth 2
  LA a0, y_1
  LW a0, 0(a0)
  LW a1, 12(sp)
  XOR a0, a1, a0
  SLTIU s7, a0, 1
  JAL zero, bb28
bb32:   # loop depth 0
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADD a0, zero, t0
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s1, w
  CALL getint
  ADD s0, a0, zero
  LA s2, h
  SW s0, 0(s1)
  LA s1, w
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 0(s1)
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb35:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  ADDI s1, zero, 120
  MULW s1, s0, s1
  LA s2, a
  ADDI s3, zero, 1
  ADDI s4, zero, 1
  ADDI s5, zero, 1
  ADDI s6, zero, 1
  ADD s1, s2, s1
  ADDI s2, zero, 1
  SW s3, 0(s1)
  ADDI s3, zero, 1
  SW s4, 4(s1)
  ADDI s4, zero, 1
  SW s5, 8(s1)
  ADDI s5, zero, 1
  SW s6, 12(s1)
  ADDI s6, zero, 1
  SW s2, 16(s1)
  ADDI s2, zero, 1
  SW s3, 20(s1)
  ADDI s3, zero, 1
  SW s4, 24(s1)
  ADDI s4, zero, 1
  SW s5, 28(s1)
  ADDI s5, zero, 1
  SW s6, 32(s1)
  ADDI s6, zero, 1
  SW s2, 36(s1)
  ADDI s2, zero, 1
  SW s3, 40(s1)
  ADDI s3, zero, 1
  SW s4, 44(s1)
  ADDI s4, zero, 1
  SW s5, 48(s1)
  ADDI s5, zero, 1
  SW s6, 52(s1)
  ADDI s6, zero, 1
  SW s2, 56(s1)
  ADDI s2, zero, 1
  SW s3, 60(s1)
  ADDI s3, zero, 1
  SW s4, 64(s1)
  ADDI s4, zero, 1
  SW s5, 68(s1)
  ADDI s5, zero, 1
  SW s6, 72(s1)
  ADDI s6, zero, 1
  SW s2, 76(s1)
  ADDI s2, zero, 1
  SW s3, 80(s1)
  ADDI s3, zero, 1
  SW s4, 84(s1)
  ADDI s4, zero, 1
  SW s5, 88(s1)
  ADDI s5, zero, 1
  SW s6, 92(s1)
  ADDI s6, zero, 1
  SW s2, 96(s1)
  ADDIW s0, s0, 1
  SW s3, 100(s1)
  ADDI s3, zero, 1
  SW s4, 104(s1)
  SLTI s2, s0, 30
  SW s5, 108(s1)
  SW s6, 112(s1)
  SW s3, 116(s1)
  BNE s2, zero, bb53
  # implict jump to bb37
bb37:   # loop depth 1
  LA s0, h
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb42
  # implict jump to bb38
bb38:   # loop depth 1
  LA a0, x_0
  LA a1, y_0
  ADDI a2, zero, 1
  ADDI s0, zero, 10
  LW a0, 0(a0)
  LW a1, 0(a1)
  CALL search
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb40
bb40:   # loop depth 1
  LA s1, w
  CALL getint
  ADD s0, a0, zero
  LA s2, h
  SW s0, 0(s1)
  LA s1, w
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 0(s1)
  BNE s0, zero, bb35
  JAL zero, bb34
bb41:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb40
bb42:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb43
bb43:   # loop depth 2
  LA s0, w
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb46
  # implict jump to bb44
bb44:   # loop depth 2
  LA s0, h
  ADDIW s1, s1, 1
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb45
  JAL zero, bb38
bb45:   # loop depth 2
  JAL zero, bb43
bb46:   # loop depth 2
  ADDI s0, zero, 120
  LA s3, a
  MULW s2, s1, s0
  ADDI s0, zero, 1
  ADD s3, s3, s2
  # implict jump to bb47
bb47:   # loop depth 3
  CALL getint
  ADD s2, a0, zero
  SH2ADD s4, s0, s3
  XORI s5, s2, 2
  SW s2, 0(s4)
  SLTIU s4, s5, 1
  BNE s4, zero, bb52
  # implict jump to bb48
bb48:   # loop depth 3
  XORI s2, s2, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb49
bb49:   # loop depth 3
  LA s2, w
  ADDIW s0, s0, 1
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb50
  JAL zero, bb44
bb50:   # loop depth 3
  JAL zero, bb47
bb51:   # loop depth 3
  LA s2, x_1
  LA s4, y_1
  SW s1, 0(s2)
  SW s0, 0(s4)
  JAL zero, bb49
bb52:   # loop depth 3
  LA s2, x_0
  LA s4, y_0
  SW s1, 0(s2)
  SW s0, 0(s4)
  JAL zero, bb49
bb53:   # loop depth 2
  JAL zero, bb36
