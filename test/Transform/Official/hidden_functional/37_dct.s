.global idct
.global my_sin_impl
.global p
.global dct
.global my_sin
.global write_mat
.global my_cos
.global main
.global my_fabs
.section .bss



test_idct:
.space 256
test_dct:
.space 256
test_block:
.space 256









.section .data
TWO_PI:
.word 0x40c90fdb
EPSILON:
.word 0x358637bd
PI:
.word 0x40490fdb



MAX_DIM_Y:
.word 0x00000008
MAX_DIM_X:
.word 0x00000008
.CONSTANT.7.0:
.word 0x40800000
.CONSTANT.7.1:
.word 0x40000000
.CONSTANT.7.2:
.word 0x40490fdb
.CONSTANT.7.3:
.word 0x3f000000
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x358637bd
.CONSTANT.7.6:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -304
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  FSD fs0, 168(sp)
  FSD fs1, 176(sp)
  FSD fs2, 184(sp)
  FSD fs3, 192(sp)
  FSD fs4, 200(sp)
  FSD fs5, 208(sp)
  FSD fs6, 216(sp)
  FSD fs7, 224(sp)
  FSD fs8, 232(sp)
  FSD fs10, 240(sp)
  FSD fs9, 248(sp)
  FSD fs11, 256(sp)
  ADD t4, a0, zero
  SD t4, 288(sp)
  ADD t4, a1, zero
  SD t4, 296(sp)
  ADD t4, a2, zero
  SW t4, 24(sp)
  ADD t4, a3, zero
  SW t4, 20(sp)
  ADDI s4, zero, 0
  LW t4, 24(sp)
  BLT s4, t4, bb2
  # implict jump to bb1
bb1:
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  FLD fs0, 168(sp)
  FLD fs1, 176(sp)
  FLD fs2, 184(sp)
  FLD fs3, 192(sp)
  FLD fs4, 200(sp)
  FLD fs5, 208(sp)
  FLD fs6, 216(sp)
  FLD fs7, 224(sp)
  FLD fs8, 232(sp)
  FLD fs10, 240(sp)
  FLD fs9, 248(sp)
  FLD fs11, 256(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb2:
  ADDI t4, zero, 0
  SW t4, 16(sp)
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb3
bb3:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD t4, s5, zero
  SW t4, 48(sp)
  LW t4, 16(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb7
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LW t4, 24(sp)
  BLT s0, t4, bb6
  JAL zero, bb1
bb6:
  ADD s5, s0, zero
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb3
bb7:
  LW t4, 48(sp)
  SLLIW s11, t4, 5
  LD t3, 288(sp)
  ADD t4, t3, s11
  SD t4, 272(sp)
  ADDI t0, zero, 1
  FCVT.S.W fs0, t0
  LA t0, .CONSTANT.7.0
  FLW fs1, 0(t0)
  FDIV.S fs1, fs0, fs1
  ADDI t4, zero, 1
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb8
bb8:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLLIW a4, t4, 2
  LD t3, 272(sp)
  ADD t4, t3, a4
  SD t4, 280(sp)
  LD t4, 296(sp)
  FLW fs2, 0(t4)
  FMUL.S fs2, fs1, fs2
  LD t4, 280(sp)
  FSW fs2, 0(t4)
  LW t4, 12(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb54
  # implict jump to bb9
bb9:
  ADDI t4, zero, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb50
  # implict jump to bb10
bb10:
  ADDI t6, zero, 1
  # implict jump to bb11
bb11:
  LW t4, 12(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb16
  # implict jump to bb12
bb12:
  ADDI s4, zero, 1
  ADD t4, t6, zero
  SW t4, 32(sp)
  # implict jump to bb13
bb13:
  LW t4, 32(sp)
  ADD s0, t4, zero
  LD t4, 280(sp)
  FLW fs2, 0(t4)
  LA t0, .CONSTANT.7.1
  FLW fs6, 0(t0)
  FMUL.S fs2, fs2, fs6
  LW t4, 24(sp)
  FCVT.S.W fs6, t4
  FDIV.S fs2, fs2, fs6
  LA t0, .CONSTANT.7.1
  FLW fs6, 0(t0)
  FMUL.S fs2, fs2, fs6
  LW t4, 20(sp)
  FCVT.S.W fs6, t4
  FDIV.S fs2, fs2, fs6
  LD t4, 280(sp)
  FSW fs2, 0(t4)
  LW t4, 40(sp)
  ADDIW t0, t4, 1
  LW t4, 20(sp)
  BLT t0, t4, bb15
  # implict jump to bb14
bb14:
  ADD s9, s4, zero
  ADD s8, s0, zero
  JAL zero, bb5
bb15:
  ADD t4, t0, zero
  SW t4, 44(sp)
  JAL zero, bb8
bb16:
  ADDI s2, zero, 1
  # implict jump to bb17
bb17:
  ADD s1, s2, zero
  LW t4, 28(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb22
  # implict jump to bb18
bb18:
  ADDI s0, zero, 1
  # implict jump to bb19
bb19:
  ADDIW s10, s1, 1
  LW t4, 24(sp)
  BLT s10, t4, bb21
  # implict jump to bb20
bb20:
  ADD s4, s10, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb13
bb21:
  ADD s2, s10, zero
  JAL zero, bb17
bb22:
  SLLIW a4, s1, 5
  LD t3, 296(sp)
  ADD t4, t3, a4
  SD t4, 264(sp)
  LW t4, 24(sp)
  FCVT.S.W fs4, t4
  LA t2, .CONSTANT.7.2
  FLW fs5, 0(t2)
  FDIV.S fs4, fs5, fs4
  LW t4, 48(sp)
  FCVT.S.W fs5, t4
  LA t2, .CONSTANT.7.3
  FLW fs6, 0(t2)
  FADD.S fs5, fs5, fs6
  FMUL.S fs4, fs4, fs5
  FCVT.S.W fs5, s1
  FMUL.S fs4, fs4, fs5
  ADDI t2, zero, 2
  FCVT.S.W fs5, t2
  LA t2, .CONSTANT.7.2
  FLW fs6, 0(t2)
  FDIV.S fs5, fs6, fs5
  FADD.S fs4, fs4, fs5
  LA t2, .CONSTANT.7.4
  FLW fs6, 0(t2)
  FLT.S t4, fs6, fs4
  SB t4, 0(sp)
  ADDI s11, zero, 1
  # implict jump to bb23
bb23:
  ADD s10, s11, zero
  LD t4, 280(sp)
  FLW fs6, 0(t4)
  SLLIW a5, s10, 2
  LD t4, 264(sp)
  ADD a5, t4, a5
  FLW fs7, 0(a5)
  LB t4, 0(sp)
  BNE t4, zero, bb49
  # implict jump to bb24
bb24:
  LA a5, .CONSTANT.7.4
  FLW fs8, 0(a5)
  LA a5, .CONSTANT.7.4
  FLW fs9, 0(a5)
  FSGNJN.S fs8, fs8, fs9
  FLT.S a5, fs4, fs8
  # implict jump to bb25
bb25:
  BNE a5, zero, bb48
  # implict jump to bb26
bb26:
  FSGNJ.S fs8, fs4, fs4
  # implict jump to bb27
bb27:
  LA a5, .CONSTANT.7.2
  FLW fs9, 0(a5)
  FLT.S a5, fs9, fs8
  BNE a5, zero, bb47
  # implict jump to bb28
bb28:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb29
bb29:
  LA a5, .CONSTANT.7.2
  FLW fs8, 0(a5)
  LA a5, .CONSTANT.7.2
  FLW fs10, 0(a5)
  FSGNJN.S fs8, fs8, fs10
  FLT.S a5, fs9, fs8
  BNE a5, zero, bb46
  # implict jump to bb30
bb30:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb31
bb31:
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs9, fa0, fa0
  FMUL.S fs7, fs7, fs9
  LW t4, 20(sp)
  FCVT.S.W fs9, t4
  LA s3, .CONSTANT.7.2
  FLW fs10, 0(s3)
  FDIV.S fs9, fs10, fs9
  LW t4, 40(sp)
  FCVT.S.W fs10, t4
  LA s3, .CONSTANT.7.3
  FLW fs11, 0(s3)
  FADD.S fs10, fs10, fs11
  FMUL.S fs9, fs9, fs10
  FCVT.S.W fs10, s10
  FMUL.S fs9, fs9, fs10
  FADD.S fs9, fs9, fs5
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  FLT.S s3, fs10, fs9
  BNE s3, zero, bb45
  # implict jump to bb32
bb32:
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s3, fs9, fs10
  # implict jump to bb33
bb33:
  BNE s3, zero, bb44
  # implict jump to bb34
bb34:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb35
bb35:
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FLT.S s3, fs2, fs10
  BNE s3, zero, bb43
  # implict jump to bb36
bb36:
  FSGNJ.S fs2, fs10, fs10
  # implict jump to bb37
bb37:
  FLT.S s3, fs2, fs8
  BNE s3, zero, bb42
  # implict jump to bb38
bb38:
  FSGNJ.S fs8, fs2, fs2
  # implict jump to bb39
bb39:
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FMUL.S fs2, fs7, fa0
  FADD.S fs2, fs6, fs2
  LD t4, 280(sp)
  FSW fs2, 0(t4)
  ADDIW s3, s10, 1
  LW t4, 20(sp)
  BLT s3, t4, bb41
  # implict jump to bb40
bb40:
  ADD s0, s3, zero
  JAL zero, bb19
bb41:
  ADD s11, s3, zero
  JAL zero, bb23
bb42:
  LA s3, .CONSTANT.7.4
  FLW fs9, 0(s3)
  FADD.S fs2, fs2, fs9
  FSGNJ.S fs8, fs2, fs2
  JAL zero, bb39
bb43:
  LA s3, .CONSTANT.7.4
  FLW fs9, 0(s3)
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fs2, fs9, fs9
  JAL zero, bb37
bb44:
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FDIV.S fs11, fs9, fs11
  FCVT.W.S s3, fs11, rtz
  FCVT.S.W fs11, s3
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FMUL.S fs2, fs11, fs2
  FSUB.S fs2, fs9, fs2
  FSGNJ.S fs10, fs2, fs2
  JAL zero, bb35
bb45:
  ADDI s3, zero, 1
  JAL zero, bb33
bb46:
  LA a5, .CONSTANT.7.4
  FLW fs11, 0(a5)
  FADD.S fs9, fs9, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb31
bb47:
  LA a5, .CONSTANT.7.4
  FLW fs10, 0(a5)
  FSUB.S fs8, fs8, fs10
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb29
bb48:
  LA a5, .CONSTANT.7.4
  FLW fs9, 0(a5)
  FDIV.S fs9, fs4, fs9
  FCVT.W.S a5, fs9, rtz
  FCVT.S.W fs9, a5
  LA a5, .CONSTANT.7.4
  FLW fs10, 0(a5)
  FMUL.S fs9, fs9, fs10
  FSUB.S fs9, fs4, fs9
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb27
bb49:
  ADDI a5, zero, 1
  JAL zero, bb25
bb50:
  LA t0, .CONSTANT.7.1
  FLW fs3, 0(t0)
  FDIV.S fs3, fs0, fs3
  ADDI t4, zero, 1
  SW t4, 36(sp)
  # implict jump to bb51
bb51:
  LW t4, 36(sp)
  ADD s4, t4, zero
  LD t4, 280(sp)
  FLW fs4, 0(t4)
  SLLIW s3, s4, 2
  LD t4, 296(sp)
  ADD s3, t4, s3
  FLW fs5, 0(s3)
  FMUL.S fs5, fs3, fs5
  FADD.S fs4, fs4, fs5
  LD t4, 280(sp)
  FSW fs4, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb53
  # implict jump to bb52
bb52:
  LW t4, 8(sp)
  ADD t6, t4, zero
  JAL zero, bb11
bb53:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb51
bb54:
  LA a5, .CONSTANT.7.1
  FLW fs2, 0(a5)
  FDIV.S ft4, fs0, fs2
  FSW ft4, 4(sp)
  ADDI t4, zero, 1
  SW t4, 52(sp)
  # implict jump to bb55
bb55:
  LW t4, 52(sp)
  ADD a6, t4, zero
  LD t4, 280(sp)
  FLW fs3, 0(t4)
  SLLIW a7, a6, 5
  LD t4, 296(sp)
  ADD a7, t4, a7
  FLW fs4, 0(a7)
  FLW ft4, 4(sp)
  FMUL.S fs4, ft4, fs4
  FADD.S fs3, fs3, fs4
  LD t4, 280(sp)
  FSW fs3, 0(t4)
  ADDIW t4, a6, 1
  SW t4, 56(sp)
  LW t4, 56(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb56
  JAL zero, bb9
bb56:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb55
my_sin_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb62
  # implict jump to bb58
bb58:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb59
bb59:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb61
  # implict jump to bb60
bb60:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  FDIV.S fs1, fs0, fs1
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs2, s0
  FMUL.S fs2, fs2, fs1
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  FMUL.S fs3, fs3, fs1
  FMUL.S fs3, fs3, fs1
  FMUL.S fs1, fs3, fs1
  FSUB.S fs1, fs2, fs1
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb61:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb62:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb59
p:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs1, s0
  FMUL.S fs1, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs2, s0
  FMUL.S fs2, fs2, fs0
  FMUL.S fs2, fs2, fs0
  FMUL.S fs0, fs2, fs0
  FSUB.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
dct:
  ADDI sp, sp, -256
  SD ra, 40(sp)
  SD s0, 48(sp)
  FSD fs3, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  FSD fs0, 152(sp)
  FSD fs1, 160(sp)
  FSD fs2, 168(sp)
  FSD fs9, 176(sp)
  FSD fs4, 192(sp)
  FSD fs5, 200(sp)
  FSD fs6, 208(sp)
  FSD fs7, 216(sp)
  FSD fs8, 224(sp)
  ADD t4, a0, zero
  SD t4, 240(sp)
  ADD t4, a1, zero
  SD t4, 232(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 4(sp)
  LW t4, 8(sp)
  BLT zero, t4, bb66
  # implict jump to bb65
bb65:
  LD ra, 40(sp)
  LD s0, 48(sp)
  FLD fs3, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  FLD fs0, 152(sp)
  FLD fs1, 160(sp)
  FLD fs2, 168(sp)
  FLD fs9, 176(sp)
  FLD fs4, 192(sp)
  FLD fs5, 200(sp)
  FLD fs6, 208(sp)
  FLD fs7, 216(sp)
  FLD fs8, 224(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb66:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb67
bb67:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 4(sp)
  BLT zero, t4, bb71
  # implict jump to bb68
bb68:
  ADD s10, s7, zero
  # implict jump to bb69
bb69:
  ADDIW t1, s9, 1
  LW t4, 8(sp)
  BLT t1, t4, bb70
  JAL zero, bb65
bb70:
  ADD s4, t1, zero
  ADD s5, s8, zero
  ADD s6, s10, zero
  JAL zero, bb67
bb71:
  SLLIW s11, s9, 5
  LD t4, 240(sp)
  ADD s11, t4, s11
  FCVT.S.L fs0, zero
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb72
bb72:
  ADD t1, s7, zero
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLLIW a4, t4, 2
  ADD t4, s11, a4
  SD t4, 184(sp)
  LD t4, 184(sp)
  FSW fs0, 0(t4)
  LW t4, 8(sp)
  BLT zero, t4, bb77
  # implict jump to bb73
bb73:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, t1, zero
  SW t4, 32(sp)
  # implict jump to bb74
bb74:
  LW t4, 32(sp)
  ADD s2, t4, zero
  LW t4, 16(sp)
  ADD t1, t4, zero
  LW t4, 36(sp)
  ADDIW t2, t4, 1
  LW t4, 4(sp)
  BLT t2, t4, bb76
  # implict jump to bb75
bb75:
  ADD s8, t1, zero
  ADD s10, s2, zero
  JAL zero, bb69
bb76:
  ADD t4, t2, zero
  SW t4, 28(sp)
  ADD s7, s2, zero
  JAL zero, bb72
bb77:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb78
bb78:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 4(sp)
  BLT zero, t4, bb83
  # implict jump to bb79
bb79:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb80
bb80:
  LW t4, 20(sp)
  ADD s2, t4, zero
  LW t4, 24(sp)
  ADDIW t0, t4, 1
  LW t4, 8(sp)
  BLT t0, t4, bb82
  # implict jump to bb81
bb81:
  ADD t4, t0, zero
  SW t4, 16(sp)
  ADD t4, s2, zero
  SW t4, 32(sp)
  JAL zero, bb74
bb82:
  ADD t4, t0, zero
  SW t4, 12(sp)
  JAL zero, bb78
bb83:
  LW t4, 24(sp)
  SLLIW s3, t4, 5
  LD t4, 232(sp)
  ADD s3, t4, s3
  LW t4, 8(sp)
  FCVT.S.W fs1, t4
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  FDIV.S fs1, fs2, fs1
  LW t4, 24(sp)
  FCVT.S.W fs2, t4
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  FADD.S fs2, fs2, fs3
  FMUL.S fs1, fs1, fs2
  FCVT.S.W fs2, s9
  FMUL.S fs1, fs1, fs2
  ADDI s2, zero, 2
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FDIV.S fs2, fs3, fs2
  FADD.S fs1, fs1, fs2
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FLT.S t4, fs3, fs1
  SB t4, 0(sp)
  ADD s1, zero, zero
  # implict jump to bb84
bb84:
  ADD s0, s1, zero
  LD t4, 184(sp)
  FLW fs3, 0(t4)
  SLLIW s2, s0, 2
  ADD s2, s3, s2
  FLW fs4, 0(s2)
  LB t4, 0(sp)
  BNE t4, zero, bb110
  # implict jump to bb85
bb85:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs1, fs5
  # implict jump to bb86
bb86:
  BNE s2, zero, bb109
  # implict jump to bb87
bb87:
  FSGNJ.S fs5, fs1, fs1
  # implict jump to bb88
bb88:
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FLT.S s2, fs6, fs5
  BNE s2, zero, bb108
  # implict jump to bb89
bb89:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb90
bb90:
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs7, 0(s2)
  FSGNJN.S fs5, fs5, fs7
  FLT.S s2, fs6, fs5
  BNE s2, zero, bb107
  # implict jump to bb91
bb91:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb92
bb92:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs4, fs4, fs6
  LW t4, 4(sp)
  FCVT.S.W fs6, t4
  LA s2, .CONSTANT.7.2
  FLW fs7, 0(s2)
  FDIV.S fs6, fs7, fs6
  FCVT.S.W fs7, s0
  LA s2, .CONSTANT.7.3
  FLW fs8, 0(s2)
  FADD.S fs7, fs7, fs8
  FMUL.S fs6, fs6, fs7
  LW t4, 36(sp)
  FCVT.S.W fs7, t4
  FMUL.S fs6, fs6, fs7
  FADD.S fs6, fs6, fs2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FLT.S s2, fs7, fs6
  BNE s2, zero, bb106
  # implict jump to bb93
bb93:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s2, fs6, fs7
  # implict jump to bb94
bb94:
  BNE s2, zero, bb105
  # implict jump to bb95
bb95:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb96
bb96:
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FLT.S s2, fs6, fs7
  BNE s2, zero, bb104
  # implict jump to bb97
bb97:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb98
bb98:
  FLT.S s2, fs6, fs5
  BNE s2, zero, bb103
  # implict jump to bb99
bb99:
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb100
bb100:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FMUL.S fs4, fs4, fa0
  FADD.S fs3, fs3, fs4
  LD t4, 184(sp)
  FSW fs3, 0(t4)
  ADDIW s0, s0, 1
  LW t4, 4(sp)
  BLT s0, t4, bb102
  # implict jump to bb101
bb101:
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb80
bb102:
  ADD s1, s0, zero
  JAL zero, bb84
bb103:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FADD.S fs6, fs6, fs7
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb100
bb104:
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FSUB.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb98
bb105:
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FDIV.S fs8, fs6, fs8
  FCVT.W.S s2, fs8, rtz
  FCVT.S.W fs8, s2
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb96
bb106:
  ADDI s2, zero, 1
  JAL zero, bb94
bb107:
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb92
bb108:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FSUB.S fs5, fs5, fs7
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb90
bb109:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs6, fs1, fs6
  FCVT.W.S s2, fs6, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs6, fs1, fs6
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb88
bb110:
  ADDI s2, zero, 1
  JAL zero, bb86
my_sin:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb123
  # implict jump to bb112
bb112:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb113
bb113:
  BNE s0, zero, bb122
  # implict jump to bb114
bb114:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb115
bb115:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb121
  # implict jump to bb116
bb116:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb117
bb117:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb120
  # implict jump to bb118
bb118:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb119
bb119:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb120:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb119
bb121:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb117
bb122:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb115
bb123:
  ADDI s0, zero, 1
  JAL zero, bb113
write_mat:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  FSD fs0, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  BLT zero, s1, bb126
  # implict jump to bb125
bb125:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  FLD fs0, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb126:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  # implict jump to bb127
bb127:
  ADD s5, s4, zero
  SLLIW s6, s5, 5
  ADD s6, s0, s6
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  BLT s3, s2, bb130
  # implict jump to bb128
bb128:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s9, s5, 1
  BLT s9, s1, bb129
  JAL zero, bb125
bb129:
  ADD s4, s9, zero
  JAL zero, bb127
bb130:
  ADDI s7, zero, 1
  # implict jump to bb131
bb131:
  ADD s8, s7, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s9, s8, 2
  ADD s9, s6, s9
  FLW fs0, 0(s9)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s8, s8, 1
  BLT s8, s2, bb132
  JAL zero, bb128
bb132:
  ADD s7, s8, zero
  JAL zero, bb131
my_cos:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FDIV.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb145
  # implict jump to bb134
bb134:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb135
bb135:
  BNE s0, zero, bb144
  # implict jump to bb136
bb136:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb137
bb137:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb143
  # implict jump to bb138
bb138:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb139
bb139:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb142
  # implict jump to bb140
bb140:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb141
bb141:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb142:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb141
bb143:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb139
bb144:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb137
bb145:
  ADDI s0, zero, 1
  JAL zero, bb135
main:
  ADDI sp, sp, -480
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s3, 240(sp)
  SD s4, 248(sp)
  SD s5, 256(sp)
  SD s6, 264(sp)
  SD s7, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  SD s10, 296(sp)
  SD s11, 304(sp)
  FSD fs0, 312(sp)
  FSD fs1, 320(sp)
  FSD fs2, 328(sp)
  FSD fs3, 336(sp)
  FSD fs4, 344(sp)
  FSD fs5, 352(sp)
  FSD fs6, 360(sp)
  FSD fs7, 368(sp)
  FSD fs8, 376(sp)
  FSD fs9, 384(sp)
  FSD fs10, 392(sp)
  FSD fs11, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 152(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 148(sp)
  LW t4, 152(sp)
  BLT zero, t4, bb266
  # implict jump to bb147
bb147:
  LW t4, 152(sp)
  BLT zero, t4, bb221
  # implict jump to bb148
bb148:
  LW t4, 152(sp)
  BLT zero, t4, bb214
  # implict jump to bb149
bb149:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 152(sp)
  BLT zero, t4, bb159
  # implict jump to bb150
bb150:
  LW t4, 152(sp)
  BLT zero, t4, bb152
  # implict jump to bb151
bb151:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s3, 240(sp)
  LD s4, 248(sp)
  LD s5, 256(sp)
  LD s6, 264(sp)
  LD s7, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  LD s11, 304(sp)
  FLD fs0, 312(sp)
  FLD fs1, 320(sp)
  FLD fs2, 328(sp)
  FLD fs3, 336(sp)
  FLD fs4, 344(sp)
  FLD fs5, 352(sp)
  FLD fs6, 360(sp)
  FLD fs7, 368(sp)
  FLD fs8, 376(sp)
  FLD fs9, 384(sp)
  FLD fs10, 392(sp)
  FLD fs11, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb152:
  ADDI s10, zero, 1
  ADD s0, zero, zero
  # implict jump to bb153
bb153:
  ADD s11, s0, zero
  SLLIW s3, s11, 5
  LA s6, test_idct
  ADD s3, s6, s3
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  LW t4, 148(sp)
  BLT s10, t4, bb156
  # implict jump to bb154
bb154:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s11, 1
  LW t4, 152(sp)
  BLT s5, t4, bb155
  JAL zero, bb151
bb155:
  ADD s0, s5, zero
  JAL zero, bb153
bb156:
  ADDI s6, zero, 1
  # implict jump to bb157
bb157:
  ADD s5, s6, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s4, s5, 2
  ADD s4, s3, s4
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s4, s5, 1
  LW t4, 148(sp)
  BLT s4, t4, bb158
  JAL zero, bb154
bb158:
  ADD s6, s4, zero
  JAL zero, bb157
bb159:
  ADD s1, zero, zero
  ADD s9, zero, zero
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb160
bb160:
  LW t4, 116(sp)
  ADD s8, t4, zero
  ADD s7, s9, zero
  ADD t4, s1, zero
  SW t4, 108(sp)
  LW t4, 148(sp)
  BLT zero, t4, bb164
  # implict jump to bb161
bb161:
  # implict jump to bb162
bb162:
  LW t4, 108(sp)
  ADDIW s2, t4, 1
  LW t4, 152(sp)
  BLT s2, t4, bb163
  JAL zero, bb150
bb163:
  ADD s1, s2, zero
  ADD s9, s7, zero
  ADD t4, s8, zero
  SW t4, 116(sp)
  JAL zero, bb160
bb164:
  LW t4, 108(sp)
  SLLIW s5, t4, 5
  LA s11, test_idct
  ADD t4, s11, s5
  SD t4, 456(sp)
  ADDI s11, zero, 1
  FCVT.S.W fs3, s11
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FDIV.S fs4, fs3, fs4
  ADDI t4, zero, 1
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb165
bb165:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW s3, t4, 2
  LD t3, 456(sp)
  ADD t4, t3, s3
  SD t4, 448(sp)
  LA s10, test_dct
  FLW fs5, 0(s10)
  FMUL.S fs5, fs4, fs5
  LD t4, 448(sp)
  FSW fs5, 0(t4)
  LW t4, 12(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb211
  # implict jump to bb166
bb166:
  ADDI t4, zero, 1
  SW t4, 132(sp)
  LW t4, 132(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb207
  # implict jump to bb167
bb167:
  ADDI s11, zero, 1
  # implict jump to bb168
bb168:
  LW t4, 12(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb173
  # implict jump to bb169
bb169:
  ADDI s2, zero, 1
  ADD s10, s11, zero
  # implict jump to bb170
bb170:
  LD t4, 448(sp)
  FLW fs0, 0(t4)
  LA s5, .CONSTANT.7.1
  FLW fs1, 0(s5)
  FMUL.S fs0, fs0, fs1
  LW t4, 152(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LA s5, .CONSTANT.7.1
  FLW fs1, 0(s5)
  FMUL.S fs0, fs0, fs1
  LW t4, 148(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LD t4, 448(sp)
  FSW fs0, 0(t4)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  LW t4, 76(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb172
  # implict jump to bb171
bb171:
  ADD s7, s2, zero
  ADD s8, s10, zero
  JAL zero, bb162
bb172:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb165
bb173:
  ADDI t4, zero, 1
  SW t4, 88(sp)
  # implict jump to bb174
bb174:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 132(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb179
  # implict jump to bb175
bb175:
  ADDI s5, zero, 1
  # implict jump to bb176
bb176:
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb178
  # implict jump to bb177
bb177:
  LW t4, 84(sp)
  ADD s2, t4, zero
  ADD s10, s5, zero
  JAL zero, bb170
bb178:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb174
bb179:
  LW t4, 120(sp)
  SLLIW s0, t4, 5
  LA s3, test_dct
  ADD t4, s3, s0
  SD t4, 400(sp)
  LW t4, 152(sp)
  FCVT.S.W fs7, t4
  LA s3, .CONSTANT.7.2
  FLW fs8, 0(s3)
  FDIV.S fs7, fs8, fs7
  LW t4, 108(sp)
  FCVT.S.W fs8, t4
  LA s3, .CONSTANT.7.3
  FLW fs9, 0(s3)
  FADD.S fs8, fs8, fs9
  FMUL.S fs7, fs7, fs8
  LW t4, 120(sp)
  FCVT.S.W fs8, t4
  FMUL.S fs7, fs7, fs8
  ADDI s3, zero, 2
  FCVT.S.W fs8, s3
  LA s3, .CONSTANT.7.2
  FLW fs9, 0(s3)
  FDIV.S fs8, fs9, fs8
  FADD.S fs7, fs7, fs8
  LA s3, .CONSTANT.7.4
  FLW fs9, 0(s3)
  FLT.S t4, fs9, fs7
  SB t4, 1(sp)
  ADDI t4, zero, 1
  SW t4, 112(sp)
  # implict jump to bb180
bb180:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LD t4, 448(sp)
  FLW fs9, 0(t4)
  SLLIW s3, s0, 2
  LD t4, 400(sp)
  ADD s3, t4, s3
  FLW fs10, 0(s3)
  LB t4, 1(sp)
  BNE t4, zero, bb206
  # implict jump to bb181
bb181:
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  FSGNJN.S fs1, fs11, fs1
  FLT.S s3, fs7, fs1
  # implict jump to bb182
bb182:
  BNE s3, zero, bb205
  # implict jump to bb183
bb183:
  FSGNJ.S fs1, fs7, fs7
  # implict jump to bb184
bb184:
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FLT.S s3, fs2, fs1
  BNE s3, zero, bb204
  # implict jump to bb185
bb185:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb186
bb186:
  LA s3, .CONSTANT.7.2
  FLW fs1, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FSGNJN.S fs1, fs1, fs11
  FLT.S s3, fs2, fs1
  BNE s3, zero, bb203
  # implict jump to bb187
bb187:
  FSGNJ.S fs11, fs2, fs2
  # implict jump to bb188
bb188:
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs10, fs0
  LW t4, 148(sp)
  FCVT.S.W fs2, t4
  LA s3, .CONSTANT.7.2
  FLW fs10, 0(s3)
  FDIV.S fs2, fs10, fs2
  LW t4, 8(sp)
  FCVT.S.W fs10, t4
  LA s3, .CONSTANT.7.3
  FLW fs11, 0(s3)
  FADD.S fs10, fs10, fs11
  FMUL.S fs2, fs2, fs10
  FCVT.S.W fs10, s0
  FMUL.S fs2, fs2, fs10
  FADD.S fs2, fs2, fs8
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  FLT.S s3, fs10, fs2
  BNE s3, zero, bb202
  # implict jump to bb189
bb189:
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s3, fs2, fs10
  # implict jump to bb190
bb190:
  BNE s3, zero, bb201
  # implict jump to bb191
bb191:
  FSGNJ.S fs10, fs2, fs2
  # implict jump to bb192
bb192:
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FLT.S s3, fs2, fs10
  BNE s3, zero, bb200
  # implict jump to bb193
bb193:
  FSGNJ.S fs2, fs10, fs10
  # implict jump to bb194
bb194:
  FLT.S s3, fs2, fs1
  BNE s3, zero, bb199
  # implict jump to bb195
bb195:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb196
bb196:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs0, fs0, fs1
  FADD.S fs0, fs9, fs0
  LD t4, 448(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s0, 1
  SW t4, 92(sp)
  LW t4, 92(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb198
  # implict jump to bb197
bb197:
  LW t4, 92(sp)
  ADD s5, t4, zero
  JAL zero, bb176
bb198:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb180
bb199:
  LA s3, .CONSTANT.7.4
  FLW fs5, 0(s3)
  FADD.S fs2, fs2, fs5
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb196
bb200:
  LA s3, .CONSTANT.7.4
  FLW fs5, 0(s3)
  FSUB.S fs5, fs10, fs5
  FSGNJ.S fs2, fs5, fs5
  JAL zero, bb194
bb201:
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FDIV.S fs11, fs2, fs11
  FCVT.W.S s3, fs11, rtz
  FCVT.S.W fs11, s3
  LA s3, .CONSTANT.7.4
  FLW fs5, 0(s3)
  FMUL.S fs5, fs11, fs5
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs10, fs2, fs2
  JAL zero, bb192
bb202:
  ADDI s3, zero, 1
  JAL zero, bb190
bb203:
  LA s3, .CONSTANT.7.4
  FLW fs0, 0(s3)
  FADD.S fs0, fs2, fs0
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb188
bb204:
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FSUB.S fs1, fs1, fs11
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb186
bb205:
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FDIV.S fs11, fs7, fs11
  FCVT.W.S s3, fs11, rtz
  FCVT.S.W fs11, s3
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FMUL.S fs2, fs11, fs2
  FSUB.S fs2, fs7, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb184
bb206:
  ADDI s3, zero, 1
  JAL zero, bb182
bb207:
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  FDIV.S fs6, fs3, fs6
  ADDI t4, zero, 1
  SW t4, 128(sp)
  # implict jump to bb208
bb208:
  LW t4, 128(sp)
  ADD s2, t4, zero
  LD t4, 448(sp)
  FLW fs7, 0(t4)
  SLLIW s10, s2, 2
  LA s0, test_dct
  ADD s0, s0, s10
  FLW fs8, 0(s0)
  FMUL.S fs8, fs6, fs8
  FADD.S fs7, fs7, fs8
  LD t4, 448(sp)
  FSW fs7, 0(t4)
  ADDIW t4, s2, 1
  SW t4, 124(sp)
  LW t4, 124(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb210
  # implict jump to bb209
bb209:
  LW t4, 124(sp)
  ADD s11, t4, zero
  JAL zero, bb168
bb210:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb208
bb211:
  LA s10, .CONSTANT.7.1
  FLW fs5, 0(s10)
  FDIV.S ft4, fs3, fs5
  FSW ft4, 96(sp)
  ADDI t4, zero, 1
  SW t4, 40(sp)
  # implict jump to bb212
bb212:
  LW t4, 40(sp)
  ADD s11, t4, zero
  LD t4, 448(sp)
  FLW fs6, 0(t4)
  SLLIW s3, s11, 5
  LA s0, test_dct
  ADD s0, s0, s3
  FLW fs7, 0(s0)
  FLW ft4, 96(sp)
  FMUL.S fs7, ft4, fs7
  FADD.S fs6, fs6, fs7
  LD t4, 448(sp)
  FSW fs6, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 136(sp)
  LW t4, 136(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb213
  JAL zero, bb166
bb213:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb212
bb214:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb215
bb215:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s6, t4, 5
  LA s5, test_dct
  ADD t4, s5, s6
  SD t4, 440(sp)
  LD t4, 440(sp)
  FLW fs3, 0(t4)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  LW t4, 36(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb218
  # implict jump to bb216
bb216:
  ADDI a0, zero, 10
  CALL putch
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb217
  JAL zero, bb149
bb217:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb215
bb218:
  ADDI t4, zero, 1
  SW t4, 28(sp)
  # implict jump to bb219
bb219:
  LW t4, 28(sp)
  ADD s0, t4, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s10, s0, 2
  LD t4, 440(sp)
  ADD s10, t4, s10
  FLW fs3, 0(s10)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDIW t4, s0, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb220
  JAL zero, bb216
bb220:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb219
bb221:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb222
bb222:
  LW t4, 60(sp)
  ADD s11, t4, zero
  LW t4, 52(sp)
  ADD s4, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t4, 148(sp)
  BLT zero, t4, bb226
  # implict jump to bb223
bb223:
  ADD s1, s11, zero
  # implict jump to bb224
bb224:
  ADD t4, s1, zero
  SW t4, 56(sp)
  ADD t4, s4, zero
  SW t4, 48(sp)
  LW t3, 184(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb225
  JAL zero, bb148
bb225:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb222
bb226:
  LW t4, 184(sp)
  SLLIW s0, t4, 5
  LA s5, test_dct
  ADD t4, s5, s0
  SD t4, 424(sp)
  FCVT.S.L ft4, zero
  FSW ft4, 100(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, s11, zero
  SW t4, 172(sp)
  # implict jump to bb227
bb227:
  LW t4, 172(sp)
  ADD s6, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLLIW s7, t4, 2
  LD t3, 424(sp)
  ADD t4, t3, s7
  SD t4, 416(sp)
  FLW ft4, 100(sp)
  LD t4, 416(sp)
  FSW ft4, 0(t4)
  LW t4, 152(sp)
  BLT zero, t4, bb232
  # implict jump to bb228
bb228:
  ADD s7, zero, zero
  # implict jump to bb229
bb229:
  ADD t4, s6, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb231
  # implict jump to bb230
bb230:
  ADD s4, s7, zero
  LW t4, 140(sp)
  ADD s1, t4, zero
  JAL zero, bb224
bb231:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb227
bb232:
  ADD t4, zero, zero
  SW t4, 188(sp)
  # implict jump to bb233
bb233:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 148(sp)
  BLT zero, t4, bb238
  # implict jump to bb234
bb234:
  ADD s0, zero, zero
  # implict jump to bb235
bb235:
  LW t3, 176(sp)
  ADDIW t4, t3, 1
  SW t4, 200(sp)
  LW t4, 200(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb237
  # implict jump to bb236
bb236:
  LW t4, 200(sp)
  ADD s7, t4, zero
  ADD s6, s0, zero
  JAL zero, bb229
bb237:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  JAL zero, bb233
bb238:
  LW t4, 176(sp)
  SLLIW s3, t4, 5
  LA s2, test_block
  ADD t4, s2, s3
  SD t4, 432(sp)
  LW t4, 152(sp)
  FCVT.S.W fs1, t4
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FDIV.S fs1, fs2, fs1
  LW t4, 176(sp)
  FCVT.S.W fs2, t4
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FADD.S fs2, fs2, fs3
  FMUL.S fs1, fs1, fs2
  LW t4, 184(sp)
  FCVT.S.W fs2, t4
  FMUL.S fs1, fs1, fs2
  ADDI s3, zero, 2
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 104(sp)
  FLW ft3, 104(sp)
  FADD.S ft4, fs1, ft3
  FSW ft4, 72(sp)
  LA s3, .CONSTANT.7.4
  FLW fs3, 0(s3)
  FLW ft4, 72(sp)
  FLT.S t4, fs3, ft4
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  # implict jump to bb239
bb239:
  LW t4, 192(sp)
  ADD s2, t4, zero
  LD t4, 416(sp)
  FLW fs3, 0(t4)
  SLLIW s3, s2, 2
  LD t4, 432(sp)
  ADD s3, t4, s3
  FLW fs4, 0(s3)
  LB t4, 0(sp)
  BNE t4, zero, bb265
  # implict jump to bb240
bb240:
  LA s3, .CONSTANT.7.4
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs6, 0(s3)
  FSGNJN.S fs5, fs5, fs6
  FLW ft4, 72(sp)
  FLT.S s3, ft4, fs5
  # implict jump to bb241
bb241:
  BNE s3, zero, bb264
  # implict jump to bb242
bb242:
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs5, ft4, ft3
  # implict jump to bb243
bb243:
  LA s3, .CONSTANT.7.2
  FLW fs6, 0(s3)
  FLT.S s3, fs6, fs5
  BNE s3, zero, bb263
  # implict jump to bb244
bb244:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb245
bb245:
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs7, 0(s3)
  FSGNJN.S fs5, fs5, fs7
  FLT.S s3, fs6, fs5
  BNE s3, zero, bb262
  # implict jump to bb246
bb246:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb247
bb247:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs4, fs4, fs6
  LW t4, 148(sp)
  FCVT.S.W fs6, t4
  LA s3, .CONSTANT.7.2
  FLW fs7, 0(s3)
  FDIV.S fs6, fs7, fs6
  FCVT.S.W fs7, s2
  LA s3, .CONSTANT.7.3
  FLW fs8, 0(s3)
  FADD.S fs7, fs7, fs8
  FMUL.S fs6, fs6, fs7
  LW t4, 144(sp)
  FCVT.S.W fs7, t4
  FMUL.S fs6, fs6, fs7
  FLW ft4, 104(sp)
  FADD.S fs6, fs6, ft4
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FLT.S s3, fs7, fs6
  BNE s3, zero, bb261
  # implict jump to bb248
bb248:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs8, 0(s3)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s3, fs6, fs7
  # implict jump to bb249
bb249:
  BNE s3, zero, bb260
  # implict jump to bb250
bb250:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb251
bb251:
  LA s3, .CONSTANT.7.2
  FLW fs6, 0(s3)
  FLT.S s3, fs6, fs7
  BNE s3, zero, bb259
  # implict jump to bb252
bb252:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb253
bb253:
  FLT.S s3, fs6, fs5
  BNE s3, zero, bb258
  # implict jump to bb254
bb254:
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb255
bb255:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  LD t4, 416(sp)
  FSW fs3, 0(t4)
  ADDIW t4, s2, 1
  SW t4, 196(sp)
  LW t4, 196(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb257
  # implict jump to bb256
bb256:
  LW t4, 196(sp)
  ADD s0, t4, zero
  JAL zero, bb235
bb257:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb239
bb258:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FADD.S fs6, fs6, fs7
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb255
bb259:
  LA s3, .CONSTANT.7.4
  FLW fs8, 0(s3)
  FSUB.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb253
bb260:
  LA s3, .CONSTANT.7.4
  FLW fs8, 0(s3)
  FDIV.S fs8, fs6, fs8
  FCVT.W.S s3, fs8, rtz
  FCVT.S.W fs8, s3
  LA s3, .CONSTANT.7.4
  FLW fs9, 0(s3)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb251
bb261:
  ADDI s3, zero, 1
  JAL zero, bb249
bb262:
  LA s3, .CONSTANT.7.4
  FLW fs8, 0(s3)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb247
bb263:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FSUB.S fs5, fs5, fs7
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb245
bb264:
  LA s3, .CONSTANT.7.4
  FLW fs6, 0(s3)
  FLW ft4, 72(sp)
  FDIV.S fs6, ft4, fs6
  FCVT.W.S s3, fs6, rtz
  FCVT.S.W fs6, s3
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FMUL.S fs6, fs6, fs7
  FLW ft4, 72(sp)
  FSUB.S fs6, ft4, fs6
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb243
bb265:
  ADDI s3, zero, 1
  JAL zero, bb241
bb266:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb267
bb267:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 148(sp)
  BLT zero, t4, bb270
  # implict jump to bb268
bb268:
  LW t3, 180(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  LW t4, 168(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb269
  JAL zero, bb147
bb269:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb267
bb270:
  LW t4, 180(sp)
  SLLIW s4, t4, 5
  LA s5, test_block
  ADD t4, s5, s4
  SD t4, 408(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  # implict jump to bb271
bb271:
  LW t4, 156(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LD t4, 408(sp)
  ADD s7, t4, s7
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 160(sp)
  LW t4, 160(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb272
  JAL zero, bb268
bb272:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb271
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb275
  # implict jump to bb274
bb274:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb275:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
