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
  ADDI sp, sp, -336
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  FSD fs0, 200(sp)
  FSD fs1, 208(sp)
  FSD fs2, 216(sp)
  FSD fs3, 224(sp)
  FSD fs4, 232(sp)
  FSD fs5, 240(sp)
  FSD fs6, 248(sp)
  FSD fs8, 256(sp)
  FSD fs9, 264(sp)
  FSD fs10, 272(sp)
  FSD fs11, 280(sp)
  FSD fs7, 320(sp)
  ADD t4, a0, zero
  SD t4, 328(sp)
  ADD t4, a1, zero
  SD t4, 312(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 56(sp)
  ADDI a6, zero, 0
  LW t4, 4(sp)
  BLT a6, t4, bb2
  # implict jump to bb1
bb1:
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  FLD fs0, 200(sp)
  FLD fs1, 208(sp)
  FLD fs2, 216(sp)
  FLD fs3, 224(sp)
  FLD fs4, 232(sp)
  FLD fs5, 240(sp)
  FLD fs6, 248(sp)
  FLD fs8, 256(sp)
  FLD fs9, 264(sp)
  FLD fs10, 272(sp)
  FLD fs11, 280(sp)
  FLD fs7, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADDI t4, zero, 0
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb4
bb4:
  LW t4, 88(sp)
  ADD s11, t4, zero
  LW t4, 12(sp)
  ADD s6, t4, zero
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 64(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb9
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s3, s11, zero
  ADD s4, s6, zero
  LW t4, 60(sp)
  ADDIW s8, t4, 1
  # implict jump to bb7
bb7:
  LW t4, 4(sp)
  BLT s8, t4, bb8
  JAL zero, bb1
bb8:
  ADD t4, s8, zero
  SW t4, 76(sp)
  ADD t4, s4, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  JAL zero, bb4
bb9:
  # implict jump to bb10
bb10:
  LW t4, 60(sp)
  SLLIW a5, t4, 5
  LD t3, 328(sp)
  ADD t4, t3, a5
  SD t4, 296(sp)
  ADDI a5, zero, 1
  FCVT.S.W fs2, a5
  LA a5, .CONSTANT.7.0
  FLW fs6, 0(a5)
  FDIV.S fs0, fs2, fs6
  ADDI t4, zero, 1
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb11
bb11:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLLIW a4, t4, 2
  LD t3, 296(sp)
  ADD t4, t3, a4
  SD t4, 304(sp)
  LD t4, 312(sp)
  FLW fs6, 0(t4)
  FMUL.S fs6, fs0, fs6
  LD t4, 304(sp)
  FSW fs6, 0(t4)
  LW t4, 68(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb64
  # implict jump to bb12
bb12:
  ADDI s5, zero, 1
  LW t4, 56(sp)
  BLT s5, t4, bb58
  # implict jump to bb13
bb13:
  ADDI s5, zero, 1
  # implict jump to bb14
bb14:
  ADDI s0, zero, 1
  LW t4, 4(sp)
  BLT s0, t4, bb20
  # implict jump to bb15
bb15:
  ADDI s0, zero, 1
  # implict jump to bb16
bb16:
  ADD t4, s5, zero
  SW t4, 44(sp)
  ADD s9, s0, zero
  LD t4, 304(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs6, 0(s0)
  FMUL.S fs1, fs1, fs6
  LW t4, 4(sp)
  FCVT.S.W fs6, t4
  FDIV.S fs1, fs1, fs6
  LA s0, .CONSTANT.7.1
  FLW fs6, 0(s0)
  FMUL.S fs1, fs1, fs6
  LW t4, 56(sp)
  FCVT.S.W fs6, t4
  FDIV.S fs1, fs1, fs6
  LD t4, 304(sp)
  FSW fs1, 0(t4)
  LW t4, 52(sp)
  ADDIW s10, t4, 1
  # implict jump to bb17
bb17:
  LW t4, 56(sp)
  BLT s10, t4, bb19
  # implict jump to bb18
bb18:
  ADD s6, s9, zero
  LW t4, 44(sp)
  ADD s11, t4, zero
  JAL zero, bb6
bb19:
  ADD t4, s10, zero
  SW t4, 8(sp)
  JAL zero, bb11
bb20:
  ADDI a4, zero, 1
  # implict jump to bb21
bb21:
  ADDI t4, zero, 1
  SW t4, 24(sp)
  ADD t4, a4, zero
  SW t4, 20(sp)
  # implict jump to bb22
bb22:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 24(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb28
  # implict jump to bb23
bb23:
  ADDI t4, zero, 1
  SW t4, 72(sp)
  # implict jump to bb24
bb24:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  # implict jump to bb25
bb25:
  LW t4, 48(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb27
  # implict jump to bb26
bb26:
  LW t4, 48(sp)
  ADD s0, t4, zero
  LW t4, 84(sp)
  ADD s5, t4, zero
  JAL zero, bb16
bb27:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb22
bb28:
  ADDI s7, zero, 1
  # implict jump to bb29
bb29:
  LW t4, 16(sp)
  SLLIW s1, t4, 5
  LD t3, 312(sp)
  ADD t4, t3, s1
  SD t4, 288(sp)
  LW t4, 4(sp)
  FCVT.S.W fs6, t4
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FDIV.S fs6, fs7, fs6
  LW t4, 60(sp)
  FCVT.S.W fs7, t4
  LA s1, .CONSTANT.7.3
  FLW fs8, 0(s1)
  FADD.S fs7, fs7, fs8
  FMUL.S fs6, fs6, fs7
  LW t4, 16(sp)
  FCVT.S.W fs7, t4
  FMUL.S fs6, fs6, fs7
  ADDI s1, zero, 2
  FCVT.S.W fs7, s1
  LA s1, .CONSTANT.7.2
  FLW fs8, 0(s1)
  FDIV.S fs4, fs8, fs7
  FADD.S fs5, fs6, fs4
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FLT.S t4, fs6, fs5
  SB t4, 0(sp)
  ADD s1, s7, zero
  # implict jump to bb30
bb30:
  ADD s7, s1, zero
  LD t4, 304(sp)
  FLW fs6, 0(t4)
  SLLIW s2, s7, 2
  LD t4, 288(sp)
  ADD s2, t4, s2
  FLW fs7, 0(s2)
  LB t4, 0(sp)
  BNE t4, zero, bb57
  # implict jump to bb31
bb31:
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FSGNJN.S fs8, fs8, fs9
  FLT.S s2, fs5, fs8
  # implict jump to bb32
bb32:
  BNE s2, zero, bb56
  # implict jump to bb33
bb33:
  FSGNJ.S fs8, fs5, fs5
  # implict jump to bb34
bb34:
  LA s2, .CONSTANT.7.2
  FLW fs9, 0(s2)
  FLT.S s2, fs9, fs8
  BNE s2, zero, bb55
  # implict jump to bb35
bb35:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb36
bb36:
  LA s2, .CONSTANT.7.2
  FLW fs8, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FSGNJN.S fs8, fs8, fs10
  FLT.S s2, fs9, fs8
  BNE s2, zero, bb54
  # implict jump to bb37
bb37:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb38
bb38:
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs9, fa0, fa0
  FMUL.S fs7, fs7, fs9
  LW t4, 56(sp)
  FCVT.S.W fs9, t4
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FDIV.S fs9, fs10, fs9
  LW t4, 52(sp)
  FCVT.S.W fs10, t4
  LA s2, .CONSTANT.7.3
  FLW fs11, 0(s2)
  FADD.S fs10, fs10, fs11
  FMUL.S fs9, fs9, fs10
  FCVT.S.W fs10, s7
  FMUL.S fs9, fs9, fs10
  FADD.S fs9, fs9, fs4
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs9
  BNE s2, zero, bb53
  # implict jump to bb39
bb39:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s2, fs9, fs10
  # implict jump to bb40
bb40:
  BNE s2, zero, bb52
  # implict jump to bb41
bb41:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb42
bb42:
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fs10
  BNE s2, zero, bb51
  # implict jump to bb43
bb43:
  FSGNJ.S fs1, fs10, fs10
  # implict jump to bb44
bb44:
  FLT.S s2, fs1, fs8
  BNE s2, zero, bb50
  # implict jump to bb45
bb45:
  FSGNJ.S fs8, fs1, fs1
  # implict jump to bb46
bb46:
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FMUL.S fs1, fs7, fa0
  FADD.S fs1, fs6, fs1
  LD t4, 304(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s7, 1
  SW t4, 80(sp)
  # implict jump to bb47
bb47:
  LW t4, 80(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb49
  # implict jump to bb48
bb48:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb24
bb49:
  LW t4, 80(sp)
  ADD s1, t4, zero
  JAL zero, bb30
bb50:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FADD.S fs1, fs1, fs9
  FSGNJ.S fs8, fs1, fs1
  JAL zero, bb46
bb51:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fs1, fs9, fs9
  JAL zero, bb44
bb52:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FDIV.S fs11, fs9, fs11
  FCVT.W.S s2, fs11, rtz
  FCVT.S.W fs11, s2
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FMUL.S fs1, fs11, fs1
  FSUB.S fs1, fs9, fs1
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb42
bb53:
  ADDI s2, zero, 1
  JAL zero, bb40
bb54:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FADD.S fs9, fs9, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb38
bb55:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs8, fs8, fs10
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb36
bb56:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FDIV.S fs9, fs5, fs9
  FCVT.W.S s2, fs9, rtz
  FCVT.S.W fs9, s2
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FMUL.S fs9, fs9, fs10
  FSUB.S fs9, fs5, fs9
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb34
bb57:
  ADDI s2, zero, 1
  JAL zero, bb32
bb58:
  ADDI a4, zero, 1
  # implict jump to bb59
bb59:
  LA s0, .CONSTANT.7.1
  FLW fs6, 0(s0)
  FDIV.S fs3, fs2, fs6
  ADD t4, a4, zero
  SW t4, 32(sp)
  # implict jump to bb60
bb60:
  LW t4, 32(sp)
  ADD a4, t4, zero
  LD t4, 304(sp)
  FLW fs6, 0(t4)
  SLLIW s0, a4, 2
  LD t4, 312(sp)
  ADD s0, t4, s0
  FLW fs7, 0(s0)
  FMUL.S fs7, fs3, fs7
  FADD.S fs6, fs6, fs7
  LD t4, 304(sp)
  FSW fs6, 0(t4)
  ADDIW t4, a4, 1
  SW t4, 28(sp)
  # implict jump to bb61
bb61:
  LW t4, 28(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb63
  # implict jump to bb62
bb62:
  LW t4, 28(sp)
  ADD s5, t4, zero
  JAL zero, bb14
bb63:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb60
bb64:
  ADDI a4, zero, 1
  # implict jump to bb65
bb65:
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  FDIV.S ft4, fs2, fs6
  FSW ft4, 92(sp)
  ADD t4, a4, zero
  SW t4, 40(sp)
  # implict jump to bb66
bb66:
  LW t4, 40(sp)
  ADD a4, t4, zero
  LD t4, 304(sp)
  FLW fs6, 0(t4)
  SLLIW s5, a4, 5
  LD t4, 312(sp)
  ADD s5, t4, s5
  FLW fs7, 0(s5)
  FLW ft4, 92(sp)
  FMUL.S fs7, ft4, fs7
  FADD.S fs6, fs6, fs7
  LD t4, 304(sp)
  FSW fs6, 0(t4)
  ADDIW t4, a4, 1
  SW t4, 36(sp)
  # implict jump to bb67
bb67:
  LW t4, 36(sp)
  LW t3, 4(sp)
  BLT t4, t3, bb68
  JAL zero, bb12
bb68:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb66
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
  BNE s0, zero, bb74
  # implict jump to bb70
bb70:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb71
bb71:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb73
  # implict jump to bb72
bb72:
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
bb73:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb74:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb71
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
  ADDI sp, sp, -304
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s9, 144(sp)
  FSD fs4, 152(sp)
  SD s11, 168(sp)
  SD s7, 184(sp)
  FSD fs2, 192(sp)
  SD s8, 208(sp)
  SD s10, 216(sp)
  FSD fs0, 224(sp)
  FSD fs3, 232(sp)
  FSD fs5, 240(sp)
  FSD fs7, 248(sp)
  FSD fs9, 256(sp)
  FSD fs1, 272(sp)
  FSD fs6, 280(sp)
  FSD fs8, 288(sp)
  ADD t4, a0, zero
  SD t4, 176(sp)
  ADD t4, a1, zero
  SD t4, 160(sp)
  ADD t4, a2, zero
  SW t4, 48(sp)
  ADD t4, a3, zero
  SW t4, 56(sp)
  LW t4, 48(sp)
  BLT zero, t4, bb78
  # implict jump to bb77
bb77:
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s9, 144(sp)
  FLD fs4, 152(sp)
  LD s11, 168(sp)
  LD s7, 184(sp)
  FLD fs2, 192(sp)
  LD s8, 208(sp)
  LD s10, 216(sp)
  FLD fs0, 224(sp)
  FLD fs3, 232(sp)
  FLD fs5, 240(sp)
  FLD fs7, 248(sp)
  FLD fs9, 256(sp)
  FLD fs1, 272(sp)
  FLD fs6, 280(sp)
  FLD fs8, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb78:
  # implict jump to bb79
bb79:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb80
bb80:
  LW t4, 20(sp)
  ADD t6, t4, zero
  LW t4, 44(sp)
  ADD a4, t4, zero
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  BLT zero, t4, bb85
  # implict jump to bb81
bb81:
  ADD t4, a4, zero
  SW t4, 28(sp)
  ADD t4, t6, zero
  SW t4, 64(sp)
  # implict jump to bb82
bb82:
  LW t4, 64(sp)
  ADD s0, t4, zero
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 52(sp)
  ADDIW s4, t4, 1
  # implict jump to bb83
bb83:
  LW t4, 48(sp)
  BLT s4, t4, bb84
  JAL zero, bb77
bb84:
  ADD t4, s4, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb80
bb85:
  # implict jump to bb86
bb86:
  LW t4, 52(sp)
  SLLIW t1, t4, 5
  LD t3, 176(sp)
  ADD t4, t3, t1
  SD t4, 264(sp)
  FCVT.S.L fs0, zero
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, t6, zero
  SW t4, 40(sp)
  # implict jump to bb87
bb87:
  LW t4, 40(sp)
  ADD t0, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLLIW s10, t4, 2
  LD t3, 264(sp)
  ADD t4, t3, s10
  SD t4, 136(sp)
  LD t4, 136(sp)
  FSW fs0, 0(t4)
  LW t4, 48(sp)
  BLT zero, t4, bb93
  # implict jump to bb88
bb88:
  ADD s3, zero, zero
  ADD t4, t0, zero
  SW t4, 32(sp)
  # implict jump to bb89
bb89:
  LW t4, 32(sp)
  ADD s5, t4, zero
  ADD s11, s3, zero
  LW t4, 36(sp)
  ADDIW s8, t4, 1
  # implict jump to bb90
bb90:
  LW t4, 56(sp)
  BLT s8, t4, bb92
  # implict jump to bb91
bb91:
  ADD t4, s11, zero
  SW t4, 28(sp)
  ADD t4, s5, zero
  SW t4, 64(sp)
  JAL zero, bb82
bb92:
  ADD t4, s8, zero
  SW t4, 60(sp)
  ADD t4, s5, zero
  SW t4, 40(sp)
  JAL zero, bb87
bb93:
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb95
bb95:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 56(sp)
  BLT zero, t4, bb101
  # implict jump to bb96
bb96:
  ADD s9, zero, zero
  # implict jump to bb97
bb97:
  ADD s6, s9, zero
  LW t4, 24(sp)
  ADDIW s7, t4, 1
  # implict jump to bb98
bb98:
  LW t4, 48(sp)
  BLT s7, t4, bb100
  # implict jump to bb99
bb99:
  ADD s3, s7, zero
  ADD t4, s6, zero
  SW t4, 32(sp)
  JAL zero, bb89
bb100:
  ADD t4, s7, zero
  SW t4, 8(sp)
  JAL zero, bb95
bb101:
  # implict jump to bb102
bb102:
  LW t4, 24(sp)
  SLLIW s2, t4, 5
  LD t3, 160(sp)
  ADD t4, t3, s2
  SD t4, 200(sp)
  LW t4, 48(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.2
  FLW fs4, 0(s2)
  FDIV.S fs3, fs4, fs3
  LW t4, 24(sp)
  FCVT.S.W fs4, t4
  LA s2, .CONSTANT.7.3
  FLW fs5, 0(s2)
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs3, fs4
  LW t4, 52(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs3, fs3, fs4
  ADDI s2, zero, 2
  FCVT.S.W fs4, s2
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FDIV.S fs2, fs5, fs4
  FADD.S fs1, fs3, fs2
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FLT.S t4, fs3, fs1
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb103
bb103:
  LW t4, 12(sp)
  ADD s2, t4, zero
  LD t4, 136(sp)
  FLW fs3, 0(t4)
  SLLIW s10, s2, 2
  LD t4, 200(sp)
  ADD s10, t4, s10
  FLW fs4, 0(s10)
  LB t4, 0(sp)
  BNE t4, zero, bb130
  # implict jump to bb104
bb104:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s10, fs1, fs5
  # implict jump to bb105
bb105:
  BNE s10, zero, bb129
  # implict jump to bb106
bb106:
  FSGNJ.S fs5, fs1, fs1
  # implict jump to bb107
bb107:
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  FLT.S s10, fs6, fs5
  BNE s10, zero, bb128
  # implict jump to bb108
bb108:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb109
bb109:
  LA s10, .CONSTANT.7.2
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.2
  FLW fs7, 0(s10)
  FSGNJN.S fs5, fs5, fs7
  FLT.S s10, fs6, fs5
  BNE s10, zero, bb127
  # implict jump to bb110
bb110:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb111
bb111:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs4, fs4, fs6
  LW t4, 56(sp)
  FCVT.S.W fs6, t4
  LA s10, .CONSTANT.7.2
  FLW fs7, 0(s10)
  FDIV.S fs6, fs7, fs6
  FCVT.S.W fs7, s2
  LA s10, .CONSTANT.7.3
  FLW fs8, 0(s10)
  FADD.S fs7, fs7, fs8
  FMUL.S fs6, fs6, fs7
  LW t4, 36(sp)
  FCVT.S.W fs7, t4
  FMUL.S fs6, fs6, fs7
  FADD.S fs6, fs6, fs2
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FLT.S s10, fs7, fs6
  BNE s10, zero, bb126
  # implict jump to bb112
bb112:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s10, fs6, fs7
  # implict jump to bb113
bb113:
  BNE s10, zero, bb125
  # implict jump to bb114
bb114:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb115
bb115:
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  FLT.S s10, fs6, fs7
  BNE s10, zero, bb124
  # implict jump to bb116
bb116:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb117
bb117:
  FLT.S s10, fs6, fs5
  BNE s10, zero, bb123
  # implict jump to bb118
bb118:
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb119
bb119:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FMUL.S fs4, fs4, fa0
  FADD.S fs3, fs3, fs4
  LD t4, 136(sp)
  FSW fs3, 0(t4)
  ADDIW t4, s2, 1
  SW t4, 16(sp)
  # implict jump to bb120
bb120:
  LW t4, 16(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb122
  # implict jump to bb121
bb121:
  LW t4, 16(sp)
  ADD s9, t4, zero
  JAL zero, bb97
bb122:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb103
bb123:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FADD.S fs6, fs6, fs7
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb119
bb124:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FSUB.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb117
bb125:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FDIV.S fs8, fs6, fs8
  FCVT.W.S s10, fs8, rtz
  FCVT.S.W fs8, s10
  LA s10, .CONSTANT.7.4
  FLW fs9, 0(s10)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb115
bb126:
  ADDI s10, zero, 1
  JAL zero, bb113
bb127:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb111
bb128:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FSUB.S fs5, fs5, fs7
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb109
bb129:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FDIV.S fs6, fs1, fs6
  FCVT.W.S s10, fs6, rtz
  FCVT.S.W fs6, s10
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs6, fs1, fs6
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb107
bb130:
  ADDI s10, zero, 1
  JAL zero, bb105
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
  BNE s0, zero, bb143
  # implict jump to bb132
bb132:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb133
bb133:
  BNE s0, zero, bb142
  # implict jump to bb134
bb134:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb135
bb135:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb141
  # implict jump to bb136
bb136:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb137
bb137:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb140
  # implict jump to bb138
bb138:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb139
bb139:
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
bb140:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb139
bb141:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb137
bb142:
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
  JAL zero, bb135
bb143:
  ADDI s0, zero, 1
  JAL zero, bb133
write_mat:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s3, a0, zero
  ADD s4, a1, zero
  ADD s5, a2, zero
  BLT zero, s4, bb146
  # implict jump to bb145
bb145:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb146:
  # implict jump to bb147
bb147:
  ADDI s2, zero, 1
  ADD s6, zero, zero
  # implict jump to bb148
bb148:
  ADD s7, s6, zero
  SLLIW s8, s7, 5
  ADD s8, s3, s8
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  BLT s2, s5, bb152
  # implict jump to bb149
bb149:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s7, 1
  # implict jump to bb150
bb150:
  BLT s1, s4, bb151
  JAL zero, bb145
bb151:
  ADD s6, s1, zero
  JAL zero, bb148
bb152:
  ADDI s9, zero, 1
  # implict jump to bb153
bb153:
  # implict jump to bb154
bb154:
  ADD s10, s9, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s11, s10, 2
  ADD s11, s8, s11
  FLW fs0, 0(s11)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s0, s10, 1
  # implict jump to bb155
bb155:
  BLT s0, s5, bb156
  JAL zero, bb149
bb156:
  ADD s9, s0, zero
  JAL zero, bb154
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
  BNE s0, zero, bb169
  # implict jump to bb158
bb158:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb159
bb159:
  BNE s0, zero, bb168
  # implict jump to bb160
bb160:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb161
bb161:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb167
  # implict jump to bb162
bb162:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb163
bb163:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb166
  # implict jump to bb164
bb164:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb165
bb165:
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
bb166:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb165
bb167:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb163
bb168:
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
  JAL zero, bb161
bb169:
  ADDI s0, zero, 1
  JAL zero, bb159
main:
  ADDI sp, sp, -496
  SD ra, 240(sp)
  SD s0, 256(sp)
  SD s11, 264(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s5, 312(sp)
  SD s6, 320(sp)
  SD s7, 328(sp)
  SD s8, 336(sp)
  SD s9, 344(sp)
  SD s10, 352(sp)
  FSD fs0, 360(sp)
  FSD fs1, 368(sp)
  FSD fs2, 376(sp)
  FSD fs3, 384(sp)
  FSD fs4, 392(sp)
  FSD fs5, 400(sp)
  FSD fs6, 408(sp)
  FSD fs10, 432(sp)
  FSD fs11, 440(sp)
  FSD fs7, 456(sp)
  FSD fs8, 480(sp)
  FSD fs9, 488(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  BLT zero, t4, bb318
  # implict jump to bb171
bb171:
  LW t4, 20(sp)
  BLT zero, t4, bb265
  # implict jump to bb172
bb172:
  LW t4, 20(sp)
  BLT zero, t4, bb254
  # implict jump to bb173
bb173:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 20(sp)
  BLT zero, t4, bb187
  # implict jump to bb174
bb174:
  LW t4, 20(sp)
  BLT zero, t4, bb176
  # implict jump to bb175
bb175:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 240(sp)
  LD s0, 256(sp)
  LD s11, 264(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s5, 312(sp)
  LD s6, 320(sp)
  LD s7, 328(sp)
  LD s8, 336(sp)
  LD s9, 344(sp)
  LD s10, 352(sp)
  FLD fs0, 360(sp)
  FLD fs1, 368(sp)
  FLD fs2, 376(sp)
  FLD fs3, 384(sp)
  FLD fs4, 392(sp)
  FLD fs5, 400(sp)
  FLD fs6, 408(sp)
  FLD fs10, 432(sp)
  FLD fs11, 440(sp)
  FLD fs7, 456(sp)
  FLD fs8, 480(sp)
  FLD fs9, 488(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb176:
  # implict jump to bb177
bb177:
  ADDI t4, zero, 1
  SW t4, 64(sp)
  ADD s1, zero, zero
  # implict jump to bb178
bb178:
  ADD s2, s1, zero
  SLLIW s4, s2, 5
  LA s7, test_idct
  ADD s4, s7, s4
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  LW t4, 64(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb182
  # implict jump to bb179
bb179:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s2, 1
  # implict jump to bb180
bb180:
  LW t4, 20(sp)
  BLT s6, t4, bb181
  JAL zero, bb175
bb181:
  ADD s1, s6, zero
  JAL zero, bb178
bb182:
  ADDI s7, zero, 1
  # implict jump to bb183
bb183:
  # implict jump to bb184
bb184:
  ADD s8, s7, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s9, s8, 2
  ADD s9, s4, s9
  FLW fs0, 0(s9)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s0, s8, 1
  # implict jump to bb185
bb185:
  LW t4, 16(sp)
  BLT s0, t4, bb186
  JAL zero, bb179
bb186:
  ADD s7, s0, zero
  JAL zero, bb184
bb187:
  # implict jump to bb188
bb188:
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb189
bb189:
  LW t4, 132(sp)
  ADD s10, t4, zero
  LW t4, 128(sp)
  ADD s11, t4, zero
  ADD t4, s5, zero
  SW t4, 156(sp)
  LW t4, 16(sp)
  BLT zero, t4, bb194
  # implict jump to bb190
bb190:
  # implict jump to bb191
bb191:
  ADD t4, s10, zero
  SW t4, 204(sp)
  ADD t4, s11, zero
  SW t4, 32(sp)
  LW t3, 156(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  # implict jump to bb192
bb192:
  LW t4, 108(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb193
  JAL zero, bb174
bb193:
  LW t4, 108(sp)
  ADD s5, t4, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb189
bb194:
  # implict jump to bb195
bb195:
  LW t4, 156(sp)
  SLLIW s2, t4, 5
  LA s4, test_idct
  ADD t4, s4, s2
  SD t4, 424(sp)
  ADDI s2, zero, 1
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  FDIV.S fs5, fs2, fs0
  ADDI t4, zero, 1
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb196
bb196:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 160(sp)
  SLLIW s1, t4, 2
  LD t3, 424(sp)
  ADD t4, t3, s1
  SD t4, 248(sp)
  LA s1, test_dct
  FLW fs0, 0(s1)
  FMUL.S fs0, fs5, fs0
  LD t4, 248(sp)
  FSW fs0, 0(t4)
  LW t4, 56(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb249
  # implict jump to bb197
bb197:
  ADDI s1, zero, 1
  LW t4, 16(sp)
  BLT s1, t4, bb243
  # implict jump to bb198
bb198:
  ADDI s1, zero, 1
  # implict jump to bb199
bb199:
  ADDI s2, zero, 1
  LW t4, 20(sp)
  BLT s2, t4, bb205
  # implict jump to bb200
bb200:
  ADDI s2, zero, 1
  # implict jump to bb201
bb201:
  ADD s7, s1, zero
  ADD t4, s2, zero
  SW t4, 220(sp)
  LD t4, 248(sp)
  FLW fs0, 0(t4)
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FMUL.S fs0, fs0, fs1
  LW t4, 20(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FMUL.S fs0, fs0, fs1
  LW t4, 16(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LD t4, 248(sp)
  FSW fs0, 0(t4)
  LW t3, 160(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  # implict jump to bb202
bb202:
  LW t4, 96(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb204
  # implict jump to bb203
bb203:
  LW t4, 220(sp)
  ADD s11, t4, zero
  ADD s10, s7, zero
  JAL zero, bb191
bb204:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb196
bb205:
  ADDI s3, zero, 1
  # implict jump to bb206
bb206:
  ADDI t4, zero, 1
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 136(sp)
  # implict jump to bb207
bb207:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 24(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb213
  # implict jump to bb208
bb208:
  ADDI s4, zero, 1
  # implict jump to bb209
bb209:
  ADD t4, s4, zero
  SW t4, 188(sp)
  LW t3, 140(sp)
  ADDIW t4, t3, 1
  SW t4, 92(sp)
  # implict jump to bb210
bb210:
  LW t4, 92(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb212
  # implict jump to bb211
bb211:
  LW t4, 92(sp)
  ADD s2, t4, zero
  LW t4, 188(sp)
  ADD s1, t4, zero
  JAL zero, bb201
bb212:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb207
bb213:
  ADDI s3, zero, 1
  # implict jump to bb214
bb214:
  LW t4, 140(sp)
  SLLIW s9, t4, 5
  LA s8, test_dct
  ADD t4, s8, s9
  SD t4, 416(sp)
  LW t4, 20(sp)
  FCVT.S.W fs0, t4
  LA s8, .CONSTANT.7.2
  FLW fs1, 0(s8)
  FDIV.S fs0, fs1, fs0
  LW t4, 156(sp)
  FCVT.S.W fs1, t4
  LA s8, .CONSTANT.7.3
  FLW fs7, 0(s8)
  FADD.S fs1, fs1, fs7
  FMUL.S fs0, fs0, fs1
  LW t4, 140(sp)
  FCVT.S.W fs1, t4
  FMUL.S fs0, fs0, fs1
  ADDI s8, zero, 2
  FCVT.S.W fs1, s8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  FDIV.S fs6, fs7, fs1
  FADD.S fs4, fs0, fs6
  LA s8, .CONSTANT.7.4
  FLW fs0, 0(s8)
  FLT.S t4, fs0, fs4
  SB t4, 0(sp)
  # implict jump to bb215
bb215:
  ADD s8, s3, zero
  LD t4, 248(sp)
  FLW fs0, 0(t4)
  SLLIW s9, s8, 2
  LD t4, 416(sp)
  ADD s9, t4, s9
  FLW fs1, 0(s9)
  LB t4, 0(sp)
  BNE t4, zero, bb242
  # implict jump to bb216
bb216:
  LA s9, .CONSTANT.7.4
  FLW fs7, 0(s9)
  LA s9, .CONSTANT.7.4
  FLW fs8, 0(s9)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s9, fs4, fs7
  # implict jump to bb217
bb217:
  BNE s9, zero, bb241
  # implict jump to bb218
bb218:
  FSGNJ.S fs7, fs4, fs4
  # implict jump to bb219
bb219:
  LA s9, .CONSTANT.7.2
  FLW fs8, 0(s9)
  FLT.S s9, fs8, fs7
  BNE s9, zero, bb240
  # implict jump to bb220
bb220:
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb221
bb221:
  LA s9, .CONSTANT.7.2
  FLW fs7, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs9, 0(s9)
  FSGNJN.S fs7, fs7, fs9
  FLT.S s9, fs8, fs7
  BNE s9, zero, bb239
  # implict jump to bb222
bb222:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb223
bb223:
  FSGNJ.S fa0, fs9, fs9
  CALL my_sin_impl
  FSGNJ.D fs8, fa0, fa0
  FMUL.S fs1, fs1, fs8
  LW t4, 16(sp)
  FCVT.S.W fs8, t4
  LA s9, .CONSTANT.7.2
  FLW fs9, 0(s9)
  FDIV.S fs8, fs9, fs8
  LW t4, 160(sp)
  FCVT.S.W fs9, t4
  LA s9, .CONSTANT.7.3
  FLW fs10, 0(s9)
  FADD.S fs9, fs9, fs10
  FMUL.S fs8, fs8, fs9
  FCVT.S.W fs9, s8
  FMUL.S fs8, fs8, fs9
  FADD.S fs8, fs8, fs6
  LA s9, .CONSTANT.7.4
  FLW fs9, 0(s9)
  FLT.S s9, fs9, fs8
  BNE s9, zero, bb238
  # implict jump to bb224
bb224:
  LA s9, .CONSTANT.7.4
  FLW fs9, 0(s9)
  LA s9, .CONSTANT.7.4
  FLW fs10, 0(s9)
  FSGNJN.S fs9, fs9, fs10
  FLT.S s9, fs8, fs9
  # implict jump to bb225
bb225:
  BNE s9, zero, bb237
  # implict jump to bb226
bb226:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb227
bb227:
  LA s9, .CONSTANT.7.2
  FLW fs8, 0(s9)
  FLT.S s9, fs8, fs9
  BNE s9, zero, bb236
  # implict jump to bb228
bb228:
  FSGNJ.S fs8, fs9, fs9
  # implict jump to bb229
bb229:
  FLT.S s9, fs8, fs7
  BNE s9, zero, bb235
  # implict jump to bb230
bb230:
  FSGNJ.S fs7, fs8, fs8
  # implict jump to bb231
bb231:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S fs1, fs1, fs7
  FADD.S fs0, fs0, fs1
  LD t4, 248(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s8, 1
  SW t4, 88(sp)
  # implict jump to bb232
bb232:
  LW t4, 88(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb234
  # implict jump to bb233
bb233:
  LW t4, 88(sp)
  ADD s4, t4, zero
  JAL zero, bb209
bb234:
  LW t4, 88(sp)
  ADD s3, t4, zero
  JAL zero, bb215
bb235:
  LA s9, .CONSTANT.7.4
  FLW fs9, 0(s9)
  FADD.S fs8, fs8, fs9
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb231
bb236:
  LA s9, .CONSTANT.7.4
  FLW fs10, 0(s9)
  FSUB.S fs9, fs9, fs10
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb229
bb237:
  LA s9, .CONSTANT.7.4
  FLW fs10, 0(s9)
  FDIV.S fs10, fs8, fs10
  FCVT.W.S s9, fs10, rtz
  FCVT.S.W fs10, s9
  LA s9, .CONSTANT.7.4
  FLW fs11, 0(s9)
  FMUL.S fs10, fs10, fs11
  FSUB.S fs8, fs8, fs10
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb227
bb238:
  ADDI s9, zero, 1
  JAL zero, bb225
bb239:
  LA s9, .CONSTANT.7.4
  FLW fs10, 0(s9)
  FADD.S fs8, fs8, fs10
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb223
bb240:
  LA s9, .CONSTANT.7.4
  FLW fs9, 0(s9)
  FSUB.S fs7, fs7, fs9
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb221
bb241:
  LA s9, .CONSTANT.7.4
  FLW fs8, 0(s9)
  FDIV.S fs8, fs4, fs8
  FCVT.W.S s9, fs8, rtz
  FCVT.S.W fs8, s9
  LA s9, .CONSTANT.7.4
  FLW fs9, 0(s9)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs8, fs4, fs8
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb219
bb242:
  ADDI s9, zero, 1
  JAL zero, bb217
bb243:
  ADDI s3, zero, 1
  # implict jump to bb244
bb244:
  LA s4, .CONSTANT.7.1
  FLW fs0, 0(s4)
  FDIV.S fs3, fs2, fs0
  ADD t4, s3, zero
  SW t4, 148(sp)
  # implict jump to bb245
bb245:
  LW t4, 148(sp)
  ADD s4, t4, zero
  LD t4, 248(sp)
  FLW fs0, 0(t4)
  SLLIW s3, s4, 2
  LA s2, test_dct
  ADD s2, s2, s3
  FLW fs1, 0(s2)
  FMUL.S fs1, fs3, fs1
  FADD.S fs0, fs0, fs1
  LD t4, 248(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 28(sp)
  # implict jump to bb246
bb246:
  LW t4, 28(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb248
  # implict jump to bb247
bb247:
  LW t4, 28(sp)
  ADD s1, t4, zero
  JAL zero, bb199
bb248:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb245
bb249:
  ADDI s1, zero, 1
  # implict jump to bb250
bb250:
  LA s4, .CONSTANT.7.1
  FLW fs0, 0(s4)
  FDIV.S ft4, fs2, fs0
  FSW ft4, 124(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  # implict jump to bb251
bb251:
  LW t4, 152(sp)
  ADD s4, t4, zero
  LD t4, 248(sp)
  FLW fs0, 0(t4)
  SLLIW s3, s4, 5
  LA s1, test_dct
  ADD s1, s1, s3
  FLW fs1, 0(s1)
  FLW ft4, 124(sp)
  FMUL.S fs1, ft4, fs1
  FADD.S fs0, fs0, fs1
  LD t4, 248(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 4(sp)
  # implict jump to bb252
bb252:
  LW t4, 4(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb253
  JAL zero, bb197
bb253:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb251
bb254:
  # implict jump to bb255
bb255:
  ADDI t4, zero, 1
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb256
bb256:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 172(sp)
  SLLIW s3, t4, 5
  LA s4, test_dct
  ADD t4, s4, s3
  SD t4, 232(sp)
  LD t4, 232(sp)
  FLW fs0, 0(t4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  LW t4, 192(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb260
  # implict jump to bb257
bb257:
  ADDI a0, zero, 10
  CALL putch
  LW t3, 172(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  # implict jump to bb258
bb258:
  LW t4, 176(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb259
  JAL zero, bb173
bb259:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb256
bb260:
  ADDI s4, zero, 1
  # implict jump to bb261
bb261:
  ADD t4, s4, zero
  SW t4, 168(sp)
  # implict jump to bb262
bb262:
  LW t4, 168(sp)
  ADD s5, t4, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s8, s5, 2
  LD t4, 232(sp)
  ADD s8, t4, s8
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW t4, s5, 1
  SW t4, 180(sp)
  # implict jump to bb263
bb263:
  LW t4, 180(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb264
  JAL zero, bb257
bb264:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb262
bb265:
  # implict jump to bb266
bb266:
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb267
bb267:
  LW t4, 72(sp)
  ADD s8, t4, zero
  LW t4, 76(sp)
  ADD s5, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 16(sp)
  BLT zero, t4, bb272
  # implict jump to bb268
bb268:
  ADD s10, s8, zero
  # implict jump to bb269
bb269:
  ADD t4, s10, zero
  SW t4, 36(sp)
  ADD t4, s5, zero
  SW t4, 52(sp)
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 48(sp)
  # implict jump to bb270
bb270:
  LW t4, 48(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb271
  JAL zero, bb172
bb271:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb267
bb272:
  # implict jump to bb273
bb273:
  LW t4, 84(sp)
  SLLIW s1, t4, 5
  LA s3, test_dct
  ADD t4, s3, s1
  SD t4, 448(sp)
  FCVT.S.L ft4, zero
  FSW ft4, 196(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  # implict jump to bb274
bb274:
  LW t4, 104(sp)
  ADD s8, t4, zero
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLLIW s3, t4, 2
  LD t3, 448(sp)
  ADD t4, t3, s3
  SD t4, 272(sp)
  FLW ft4, 196(sp)
  LD t4, 272(sp)
  FSW ft4, 0(t4)
  LW t4, 20(sp)
  BLT zero, t4, bb280
  # implict jump to bb275
bb275:
  ADD s3, zero, zero
  # implict jump to bb276
bb276:
  ADD t4, s8, zero
  SW t4, 224(sp)
  ADD s11, s3, zero
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  # implict jump to bb277
bb277:
  LW t4, 60(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb279
  # implict jump to bb278
bb278:
  ADD s5, s11, zero
  LW t4, 224(sp)
  ADD s10, t4, zero
  JAL zero, bb269
bb279:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb274
bb280:
  # implict jump to bb281
bb281:
  ADD t4, zero, zero
  SW t4, 112(sp)
  # implict jump to bb282
bb282:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 16(sp)
  BLT zero, t4, bb288
  # implict jump to bb283
bb283:
  ADD s1, zero, zero
  # implict jump to bb284
bb284:
  ADD s9, s1, zero
  LW t3, 116(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  # implict jump to bb285
bb285:
  LW t4, 40(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb287
  # implict jump to bb286
bb286:
  LW t4, 40(sp)
  ADD s3, t4, zero
  ADD s8, s9, zero
  JAL zero, bb276
bb287:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb282
bb288:
  # implict jump to bb289
bb289:
  LW t4, 116(sp)
  SLLIW s2, t4, 5
  LA s4, test_block
  ADD t4, s4, s2
  SD t4, 464(sp)
  LW t4, 20(sp)
  FCVT.S.W fs9, t4
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FDIV.S fs9, fs10, fs9
  LW t4, 116(sp)
  FCVT.S.W fs10, t4
  LA s2, .CONSTANT.7.3
  FLW fs11, 0(s2)
  FADD.S fs10, fs10, fs11
  FMUL.S fs9, fs9, fs10
  LW t4, 84(sp)
  FCVT.S.W fs10, t4
  FMUL.S fs9, fs9, fs10
  ADDI s2, zero, 2
  FCVT.S.W fs10, s2
  LA s2, .CONSTANT.7.2
  FLW fs11, 0(s2)
  FDIV.S ft4, fs11, fs10
  FSW ft4, 212(sp)
  FLW ft3, 212(sp)
  FADD.S ft4, fs9, ft3
  FSW ft4, 216(sp)
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FLW ft4, 216(sp)
  FLT.S t4, fs9, ft4
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb290
bb290:
  LW t4, 44(sp)
  ADD s4, t4, zero
  LD t4, 272(sp)
  FLW fs9, 0(t4)
  SLLIW s2, s4, 2
  LD t4, 464(sp)
  ADD s2, t4, s2
  FLW fs10, 0(s2)
  LB t4, 1(sp)
  BNE t4, zero, bb317
  # implict jump to bb291
bb291:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FSGNJN.S fs8, fs11, fs8
  FLW ft4, 216(sp)
  FLT.S s2, ft4, fs8
  # implict jump to bb292
bb292:
  BNE s2, zero, bb316
  # implict jump to bb293
bb293:
  FLW ft4, 216(sp)
  FLW ft3, 216(sp)
  FSGNJ.S fs8, ft4, ft3
  # implict jump to bb294
bb294:
  LA s2, .CONSTANT.7.2
  FLW fs7, 0(s2)
  FLT.S s2, fs7, fs8
  BNE s2, zero, bb315
  # implict jump to bb295
bb295:
  FSGNJ.S fs7, fs8, fs8
  # implict jump to bb296
bb296:
  LA s2, .CONSTANT.7.2
  FLW fs8, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs11, 0(s2)
  FSGNJN.S fs8, fs8, fs11
  FLT.S s2, fs7, fs8
  BNE s2, zero, bb314
  # implict jump to bb297
bb297:
  FSGNJ.S fs11, fs7, fs7
  # implict jump to bb298
bb298:
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs10, fs0
  LW t4, 16(sp)
  FCVT.S.W fs7, t4
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FDIV.S fs7, fs10, fs7
  FCVT.S.W fs10, s4
  LA s2, .CONSTANT.7.3
  FLW fs11, 0(s2)
  FADD.S fs10, fs10, fs11
  FMUL.S fs7, fs7, fs10
  LW t4, 100(sp)
  FCVT.S.W fs10, t4
  FMUL.S fs7, fs7, fs10
  FLW ft4, 212(sp)
  FADD.S fs7, fs7, ft4
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs7
  BNE s2, zero, bb313
  # implict jump to bb299
bb299:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s2, fs7, fs10
  # implict jump to bb300
bb300:
  BNE s2, zero, bb312
  # implict jump to bb301
bb301:
  FSGNJ.S fs10, fs7, fs7
  # implict jump to bb302
bb302:
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fs10
  BNE s2, zero, bb311
  # implict jump to bb303
bb303:
  FSGNJ.S fs1, fs10, fs10
  # implict jump to bb304
bb304:
  FLT.S s2, fs1, fs8
  BNE s2, zero, bb310
  # implict jump to bb305
bb305:
  FSGNJ.S fs7, fs1, fs1
  # implict jump to bb306
bb306:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs0, fs0, fs1
  FADD.S fs0, fs9, fs0
  LD t4, 272(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 184(sp)
  # implict jump to bb307
bb307:
  LW t4, 184(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb309
  # implict jump to bb308
bb308:
  LW t4, 184(sp)
  ADD s1, t4, zero
  JAL zero, bb284
bb309:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb290
bb310:
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FADD.S fs1, fs1, fs8
  FSGNJ.S fs7, fs1, fs1
  JAL zero, bb306
bb311:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FSUB.S fs7, fs10, fs7
  FSGNJ.S fs1, fs7, fs7
  JAL zero, bb304
bb312:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FDIV.S fs11, fs7, fs11
  FCVT.W.S s2, fs11, rtz
  FCVT.S.W fs11, s2
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FMUL.S fs1, fs11, fs1
  FSUB.S fs1, fs7, fs1
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb302
bb313:
  ADDI s2, zero, 1
  JAL zero, bb300
bb314:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  FADD.S fs0, fs7, fs0
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb298
bb315:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSUB.S fs8, fs8, fs11
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb296
bb316:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FLW ft4, 216(sp)
  FDIV.S fs11, ft4, fs11
  FCVT.W.S s2, fs11, rtz
  FCVT.S.W fs11, s2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FMUL.S fs7, fs11, fs7
  FLW ft4, 216(sp)
  FSUB.S fs7, ft4, fs7
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb294
bb317:
  ADDI s2, zero, 1
  JAL zero, bb292
bb318:
  # implict jump to bb319
bb319:
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb320
bb320:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 16(sp)
  BLT zero, t4, bb324
  # implict jump to bb321
bb321:
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 208(sp)
  # implict jump to bb322
bb322:
  LW t4, 208(sp)
  LW t3, 20(sp)
  BLT t4, t3, bb323
  JAL zero, bb171
bb323:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb320
bb324:
  # implict jump to bb325
bb325:
  LW t4, 8(sp)
  SLLIW s5, t4, 5
  LA s8, test_block
  ADD t4, s8, s5
  SD t4, 472(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb326
bb326:
  LW t4, 68(sp)
  ADD s8, t4, zero
  SLLIW s5, s8, 2
  LD t4, 472(sp)
  ADD s5, t4, s5
  CALL getfloat
  FSGNJ.D fs9, fa0, fa0
  FSW fs9, 0(s5)
  ADDIW t4, s8, 1
  SW t4, 200(sp)
  # implict jump to bb327
bb327:
  LW t4, 200(sp)
  LW t3, 16(sp)
  BLT t4, t3, bb328
  JAL zero, bb321
bb328:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb326
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb331
  # implict jump to bb330
bb330:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb331:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
