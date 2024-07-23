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
.word 0x40c90fdb
.CONSTANT.7.4:
.word 0x3f000000
.CONSTANT.7.5:
.word 0x358637bd
.CONSTANT.7.6:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -272
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  FSD fs0, 176(sp)
  FSD fs1, 184(sp)
  FSD fs2, 192(sp)
  FSD fs3, 200(sp)
  FSD fs4, 208(sp)
  FSD fs5, 216(sp)
  FSD fs6, 224(sp)
  FSD fs7, 232(sp)
  FSD fs8, 240(sp)
  FSD fs9, 248(sp)
  FSD fs10, 256(sp)
  FSD fs11, 264(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD t4, a3, zero
  SW t4, 60(sp)
  ADDI s4, zero, 1
  FCVT.S.W fs0, s4
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FDIV.S fs1, fs0, fs1
  LA s4, .CONSTANT.7.1
  FLW fs2, 0(s4)
  FDIV.S fs2, fs0, fs2
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FDIV.S fs0, fs0, fs3
  FCVT.S.W fs3, s2
  LA s4, .CONSTANT.7.2
  FLW fs4, 0(s4)
  FDIV.S fs3, fs4, fs3
  ADDI s4, zero, 2
  FCVT.S.W fs4, s4
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  FDIV.S fs4, fs5, fs4
  LA s4, .CONSTANT.7.3
  FLW fs5, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs6, 0(s4)
  FSGNJN.S fs5, fs5, fs6
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FSGNJN.S fs6, fs6, fs7
  LW t4, 60(sp)
  FCVT.S.W fs7, t4
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  FDIV.S ft4, fs8, fs7
  FSW ft4, 64(sp)
  LA s4, .CONSTANT.7.3
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs9, 0(s4)
  FSGNJN.S ft4, fs8, fs9
  FSW ft4, 4(sp)
  FCVT.S.W ft4, s2
  FSW ft4, 8(sp)
  LW t4, 60(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 12(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  BLT s7, s2, bb3
  # implict jump to bb2
bb2:
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  FLD fs0, 176(sp)
  FLD fs1, 184(sp)
  FLD fs2, 192(sp)
  FLD fs3, 200(sp)
  FLD fs4, 208(sp)
  FLD fs5, 216(sp)
  FLD fs6, 224(sp)
  FLD fs7, 232(sp)
  FLD fs8, 240(sp)
  FLD fs9, 248(sp)
  FLD fs10, 256(sp)
  FLD fs11, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb3:
  SLLIW s10, s7, 5
  ADD s10, s0, s10
  FCVT.S.W fs11, s7
  LA s11, .CONSTANT.7.4
  FLW ft0, 0(s11)
  FADD.S fs11, fs11, ft0
  FMUL.S ft4, fs3, fs11
  FSW ft4, 16(sp)
  ADD s11, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s11, zero
  SW t4, 32(sp)
  ADD t1, s8, zero
  ADD t2, s9, zero
  LW t4, 32(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb6
  # implict jump to bb5
bb5:
  ADDIW a4, s7, 1
  ADD s4, t2, zero
  ADD s5, t1, zero
  ADD s6, a4, zero
  JAL zero, bb1
bb6:
  LW t4, 32(sp)
  SLLIW s4, t4, 2
  ADD s4, s10, s4
  FLW ft0, 0(s1)
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(s4)
  ADDI s5, zero, 1
  # implict jump to bb7
bb7:
  ADD s6, s5, zero
  BLT s6, s2, bb42
  # implict jump to bb8
bb8:
  ADDI t4, zero, 1
  SW t4, 20(sp)
  # implict jump to bb9
bb9:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb41
  # implict jump to bb10
bb10:
  LW t4, 32(sp)
  FCVT.S.W ft0, t4
  LA a4, .CONSTANT.7.4
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FLW ft3, 64(sp)
  FMUL.S ft4, ft3, ft0
  FSW ft4, 36(sp)
  LW t4, 28(sp)
  ADD a4, t4, zero
  ADDI a5, zero, 1
  # implict jump to bb11
bb11:
  ADD t4, a5, zero
  SW t4, 40(sp)
  ADD a7, a4, zero
  LW t4, 40(sp)
  BLT t4, s2, bb13
  # implict jump to bb12
bb12:
  FLW ft1, 0(s4)
  LA t6, .CONSTANT.7.1
  FLW ft2, 0(t6)
  FMUL.S ft1, ft1, ft2
  FLW ft4, 8(sp)
  FDIV.S ft1, ft1, ft4
  LA t6, .CONSTANT.7.1
  FLW ft2, 0(t6)
  FMUL.S ft1, ft1, ft2
  FLW ft4, 12(sp)
  FDIV.S ft1, ft1, ft4
  FSW ft1, 0(s4)
  LW t4, 32(sp)
  ADDIW t6, t4, 1
  ADD s9, a7, zero
  LW t4, 40(sp)
  ADD s8, t4, zero
  ADD s11, t6, zero
  JAL zero, bb4
bb13:
  LW t4, 40(sp)
  SLLIW s8, t4, 5
  ADD s8, s1, s8
  LW t4, 40(sp)
  FCVT.S.W ft1, t4
  FLW ft4, 16(sp)
  FMUL.S ft1, ft4, ft1
  FADD.S ft4, ft1, fs4
  FSW ft4, 52(sp)
  LA s9, .CONSTANT.7.3
  FLW ft2, 0(s9)
  FLW ft4, 52(sp)
  FLT.S s9, ft2, ft4
  FLW ft4, 52(sp)
  FLT.S s11, ft4, fs5
  LA a7, .CONSTANT.7.3
  FLW ft2, 0(a7)
  FLW ft4, 52(sp)
  FDIV.S ft2, ft4, ft2
  FCVT.W.S a7, ft2, rtz
  FCVT.S.W ft2, a7
  LA a7, .CONSTANT.7.3
  FLW ft5, 0(a7)
  FMUL.S ft2, ft2, ft5
  FLW ft3, 52(sp)
  FSUB.S ft4, ft3, ft2
  FSW ft4, 24(sp)
  ADDI t4, zero, 1
  SW t4, 44(sp)
  # implict jump to bb14
bb14:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb16
  # implict jump to bb15
bb15:
  LW t4, 40(sp)
  ADDIW s3, t4, 1
  LW t4, 48(sp)
  ADD a4, t4, zero
  ADD a5, s3, zero
  JAL zero, bb11
bb16:
  FLW ft4, 0(s4)
  FSW ft4, 56(sp)
  LW t4, 48(sp)
  SLLIW s3, t4, 2
  ADD s3, s8, s3
  FLW ft4, 0(s3)
  FSW ft4, 0(sp)
  BNE s9, zero, bb40
  # implict jump to bb17
bb17:
  ADD s3, s11, zero
  # implict jump to bb18
bb18:
  BNE s3, zero, bb39
  # implict jump to bb19
bb19:
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S ft7, ft4, ft3
  # implict jump to bb20
bb20:
  LA s3, .CONSTANT.7.2
  FLW fa0, 0(s3)
  FLT.S s3, fa0, ft7
  BNE s3, zero, bb38
  # implict jump to bb21
bb21:
  FSGNJ.S fa0, ft7, ft7
  # implict jump to bb22
bb22:
  FLT.S s3, fa0, fs6
  BNE s3, zero, bb37
  # implict jump to bb23
bb23:
  FSGNJ.S ft7, fa0, fa0
  # implict jump to bb24
bb24:
  FSGNJ.S fa0, ft7, ft7
  CALL my_sin_impl
  FSGNJ.D fs11, fa0, fa0
  FLW ft4, 0(sp)
  FMUL.S fs11, ft4, fs11
  LW t4, 48(sp)
  FCVT.S.W fs10, t4
  FLW ft4, 36(sp)
  FMUL.S fs10, ft4, fs10
  FADD.S fs10, fs10, fs4
  LA s3, .CONSTANT.7.3
  FLW fs9, 0(s3)
  FLT.S s3, fs9, fs10
  BNE s3, zero, bb36
  # implict jump to bb25
bb25:
  FLW ft4, 4(sp)
  FLT.S s3, fs10, ft4
  # implict jump to bb26
bb26:
  BNE s3, zero, bb35
  # implict jump to bb27
bb27:
  FSGNJ.S fs9, fs10, fs10
  # implict jump to bb28
bb28:
  LA s3, .CONSTANT.7.2
  FLW fs7, 0(s3)
  FLT.S s3, fs7, fs9
  BNE s3, zero, bb34
  # implict jump to bb29
bb29:
  FSGNJ.S fs7, fs9, fs9
  # implict jump to bb30
bb30:
  FLT.S s3, fs7, fs6
  BNE s3, zero, bb33
  # implict jump to bb31
bb31:
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb32
bb32:
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FMUL.S fs7, fs11, fa0
  FLW ft4, 56(sp)
  FADD.S fs7, ft4, fs7
  FSW fs7, 0(s4)
  LW t4, 48(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 44(sp)
  JAL zero, bb14
bb33:
  LA s3, .CONSTANT.7.3
  FLW fs9, 0(s3)
  FADD.S fs7, fs7, fs9
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb32
bb34:
  LA s3, .CONSTANT.7.3
  FLW fs8, 0(s3)
  FSUB.S fs8, fs9, fs8
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb30
bb35:
  LA s3, .CONSTANT.7.3
  FLW fs8, 0(s3)
  FDIV.S fs8, fs10, fs8
  FCVT.W.S s3, fs8, rtz
  FCVT.S.W fs8, s3
  LA s3, .CONSTANT.7.3
  FLW fs7, 0(s3)
  FMUL.S fs7, fs8, fs7
  FSUB.S fs7, fs10, fs7
  FSGNJ.S fs9, fs7, fs7
  JAL zero, bb28
bb36:
  ADDI s3, zero, 1
  JAL zero, bb26
bb37:
  LA s3, .CONSTANT.7.3
  FLW fa1, 0(s3)
  FADD.S fa0, fa0, fa1
  FSGNJ.S ft7, fa0, fa0
  JAL zero, bb24
bb38:
  LA s3, .CONSTANT.7.3
  FLW fa1, 0(s3)
  FSUB.S ft7, ft7, fa1
  FSGNJ.S fa0, ft7, ft7
  JAL zero, bb22
bb39:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S ft7, ft4, ft3
  JAL zero, bb20
bb40:
  ADDI s3, zero, 1
  JAL zero, bb18
bb41:
  FLW fs7, 0(s4)
  LW t4, 28(sp)
  SLLIW s3, t4, 2
  ADD s3, s1, s3
  FLW fs8, 0(s3)
  FMUL.S fs8, fs0, fs8
  FADD.S fs7, fs7, fs8
  FSW fs7, 0(s4)
  LW t4, 28(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 20(sp)
  JAL zero, bb9
bb42:
  FLW fs7, 0(s4)
  SLLIW s3, s6, 5
  ADD s3, s1, s3
  FLW fs8, 0(s3)
  FMUL.S fs8, fs2, fs8
  FADD.S fs7, fs7, fs8
  FSW fs7, 0(s4)
  ADDIW s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb7
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
  BNE s0, zero, bb48
  # implict jump to bb44
bb44:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb45
bb45:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:
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
bb47:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb48:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb45
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
  ADDI sp, sp, -240
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s8, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  FSD fs0, 144(sp)
  FSD fs1, 152(sp)
  FSD fs2, 160(sp)
  FSD fs3, 168(sp)
  FSD fs4, 176(sp)
  FSD fs5, 184(sp)
  FSD fs6, 192(sp)
  FSD fs7, 200(sp)
  FSD fs8, 208(sp)
  FSD fs9, 216(sp)
  FSD fs10, 224(sp)
  FSD fs11, 232(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  FCVT.S.L fs0, zero
  FCVT.S.W fs1, s2
  LA s4, .CONSTANT.7.2
  FLW fs2, 0(s4)
  FDIV.S fs1, fs2, fs1
  ADDI s4, zero, 2
  FCVT.S.W fs2, s4
  LA s4, .CONSTANT.7.2
  FLW fs3, 0(s4)
  FDIV.S fs2, fs3, fs2
  LA s4, .CONSTANT.7.3
  FLW fs3, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs4, 0(s4)
  FSGNJN.S fs3, fs3, fs4
  LA s4, .CONSTANT.7.2
  FLW fs4, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  FSGNJN.S fs4, fs4, fs5
  FCVT.S.W fs5, s3
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  FDIV.S fs5, fs6, fs5
  LA s4, .CONSTANT.7.3
  FLW fs6, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs7, 0(s4)
  FSGNJN.S ft4, fs6, fs7
  FSW ft4, 36(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb51
bb51:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  BLT s7, s2, bb53
  # implict jump to bb52
bb52:
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s8, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  FLD fs0, 144(sp)
  FLD fs1, 152(sp)
  FLD fs2, 160(sp)
  FLD fs3, 168(sp)
  FLD fs4, 176(sp)
  FLD fs5, 184(sp)
  FLD fs6, 192(sp)
  FLD fs7, 200(sp)
  FLD fs8, 208(sp)
  FLD fs9, 216(sp)
  FLD fs10, 224(sp)
  FLD fs11, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb53:
  SLLIW s10, s7, 5
  ADD s10, s0, s10
  FCVT.S.W ft4, s7
  FSW ft4, 32(sp)
  ADD s11, zero, zero
  # implict jump to bb54
bb54:
  ADD t4, s11, zero
  SW t4, 8(sp)
  ADD t1, s8, zero
  ADD t2, s9, zero
  LW t4, 8(sp)
  BLT t4, s3, bb56
  # implict jump to bb55
bb55:
  ADDIW a4, s7, 1
  ADD s4, t2, zero
  ADD s5, t1, zero
  ADD s6, a4, zero
  JAL zero, bb51
bb56:
  LW t4, 8(sp)
  SLLIW s4, t4, 2
  ADD s4, s10, s4
  FSW fs0, 0(s4)
  LW t4, 8(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 28(sp)
  ADD s5, t2, zero
  ADD s6, zero, zero
  # implict jump to bb57
bb57:
  ADD t4, s6, zero
  SW t4, 4(sp)
  ADD t2, s5, zero
  LW t4, 4(sp)
  BLT t4, s2, bb59
  # implict jump to bb58
bb58:
  LW t4, 8(sp)
  ADDIW a4, t4, 1
  ADD s9, t2, zero
  LW t4, 4(sp)
  ADD s8, t4, zero
  ADD s11, a4, zero
  JAL zero, bb54
bb59:
  LW t4, 4(sp)
  SLLIW s8, t4, 5
  ADD s8, s1, s8
  LW t4, 4(sp)
  FCVT.S.W fs9, t4
  LA s9, .CONSTANT.7.4
  FLW fs10, 0(s9)
  FADD.S fs9, fs9, fs10
  FMUL.S fs9, fs1, fs9
  FLW ft4, 32(sp)
  FMUL.S fs9, fs9, ft4
  FADD.S ft4, fs9, fs2
  FSW ft4, 24(sp)
  LA s9, .CONSTANT.7.3
  FLW fs10, 0(s9)
  FLW ft4, 24(sp)
  FLT.S s9, fs10, ft4
  FLW ft4, 24(sp)
  FLT.S s11, ft4, fs3
  LA t2, .CONSTANT.7.3
  FLW fs10, 0(t2)
  FLW ft4, 24(sp)
  FDIV.S fs10, ft4, fs10
  FCVT.W.S t2, fs10, rtz
  FCVT.S.W fs10, t2
  LA t2, .CONSTANT.7.3
  FLW fs11, 0(t2)
  FMUL.S fs10, fs10, fs11
  FLW ft3, 24(sp)
  FSUB.S ft4, ft3, fs10
  FSW ft4, 20(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb60
bb60:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT t4, s3, bb62
  # implict jump to bb61
bb61:
  LW t4, 4(sp)
  ADDIW a5, t4, 1
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s6, a5, zero
  JAL zero, bb57
bb62:
  FLW fs11, 0(s4)
  LW t4, 0(sp)
  SLLIW s5, t4, 2
  ADD s5, s8, s5
  FLW ft4, 0(s5)
  FSW ft4, 16(sp)
  BNE s9, zero, bb86
  # implict jump to bb63
bb63:
  ADD s5, s11, zero
  # implict jump to bb64
bb64:
  BNE s5, zero, bb85
  # implict jump to bb65
bb65:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S ft1, ft4, ft3
  # implict jump to bb66
bb66:
  LA s5, .CONSTANT.7.2
  FLW ft2, 0(s5)
  FLT.S s5, ft2, ft1
  BNE s5, zero, bb84
  # implict jump to bb67
bb67:
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb68
bb68:
  FLT.S s5, ft2, fs4
  BNE s5, zero, bb83
  # implict jump to bb69
bb69:
  FSGNJ.S ft1, ft2, ft2
  # implict jump to bb70
bb70:
  FSGNJ.S fa0, ft1, ft1
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FLW ft4, 16(sp)
  FMUL.S fs10, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs9, t4
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FADD.S fs8, fs9, fs8
  FMUL.S fs8, fs5, fs8
  FLW ft4, 28(sp)
  FMUL.S fs8, fs8, ft4
  FADD.S fs8, fs8, fs2
  LA s5, .CONSTANT.7.3
  FLW fs9, 0(s5)
  FLT.S s5, fs9, fs8
  BNE s5, zero, bb82
  # implict jump to bb71
bb71:
  FLW ft4, 36(sp)
  FLT.S s5, fs8, ft4
  # implict jump to bb72
bb72:
  BNE s5, zero, bb81
  # implict jump to bb73
bb73:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb74
bb74:
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FLT.S s5, fs6, fs9
  BNE s5, zero, bb80
  # implict jump to bb75
bb75:
  FSGNJ.S fs6, fs9, fs9
  # implict jump to bb76
bb76:
  FLT.S s5, fs6, fs4
  BNE s5, zero, bb79
  # implict jump to bb77
bb77:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb78
bb78:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FMUL.S fs6, fs10, fa0
  FADD.S fs6, fs11, fs6
  FSW fs6, 0(s4)
  LW t4, 0(sp)
  ADDIW s5, t4, 1
  ADD t4, s5, zero
  SW t4, 12(sp)
  JAL zero, bb60
bb79:
  LA s5, .CONSTANT.7.3
  FLW fs8, 0(s5)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb78
bb80:
  LA s5, .CONSTANT.7.3
  FLW fs7, 0(s5)
  FSUB.S fs7, fs9, fs7
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb76
bb81:
  LA s5, .CONSTANT.7.3
  FLW fs7, 0(s5)
  FDIV.S fs7, fs8, fs7
  FCVT.W.S s5, fs7, rtz
  FCVT.S.W fs7, s5
  LA s5, .CONSTANT.7.3
  FLW fs6, 0(s5)
  FMUL.S fs6, fs7, fs6
  FSUB.S fs6, fs8, fs6
  FSGNJ.S fs9, fs6, fs6
  JAL zero, bb74
bb82:
  ADDI s5, zero, 1
  JAL zero, bb72
bb83:
  LA s5, .CONSTANT.7.3
  FLW ft5, 0(s5)
  FADD.S ft2, ft2, ft5
  FSGNJ.S ft1, ft2, ft2
  JAL zero, bb70
bb84:
  LA s5, .CONSTANT.7.3
  FLW ft5, 0(s5)
  FSUB.S ft1, ft1, ft5
  FSGNJ.S ft2, ft1, ft1
  JAL zero, bb68
bb85:
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S ft1, ft4, ft3
  JAL zero, bb66
bb86:
  ADDI s5, zero, 1
  JAL zero, bb64
my_sin:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb99
  # implict jump to bb88
bb88:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb89
bb89:
  BNE s0, zero, bb98
  # implict jump to bb90
bb90:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb91
bb91:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb97
  # implict jump to bb92
bb92:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb93
bb93:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb96
  # implict jump to bb94
bb94:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb95
bb95:
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
bb96:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb95
bb97:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb93
bb98:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.3
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb91
bb99:
  ADDI s0, zero, 1
  JAL zero, bb89
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  # implict jump to bb101
bb101:
  ADD s4, s3, zero
  BLT s4, s1, bb103
  # implict jump to bb102
bb102:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb103:
  SLLIW s5, s4, 5
  ADD s5, s0, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s6, zero, 1
  # implict jump to bb104
bb104:
  ADD s7, s6, zero
  BLT s7, s2, bb106
  # implict jump to bb105
bb105:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s8, s4, 1
  ADD s3, s8, zero
  JAL zero, bb101
bb106:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s7, 2
  ADD s3, s5, s3
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s3, s7, 1
  ADD s6, s3, zero
  JAL zero, bb104
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
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb119
  # implict jump to bb108
bb108:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb109
bb109:
  BNE s0, zero, bb118
  # implict jump to bb110
bb110:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb111
bb111:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb117
  # implict jump to bb112
bb112:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb113
bb113:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb116
  # implict jump to bb114
bb114:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb115
bb115:
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
bb116:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb115
bb117:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb113
bb118:
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.3
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb111
bb119:
  ADDI s0, zero, 1
  JAL zero, bb109
main:
  ADDI sp, sp, -352
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s7, 168(sp)
  SD s9, 176(sp)
  SD s4, 184(sp)
  SD s5, 192(sp)
  SD s6, 200(sp)
  SD s8, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  FSD fs0, 232(sp)
  FSD fs1, 240(sp)
  FSD fs2, 248(sp)
  FSD fs3, 256(sp)
  FSD fs4, 264(sp)
  FSD fs5, 272(sp)
  FSD fs6, 280(sp)
  FSD fs7, 288(sp)
  FSD fs9, 296(sp)
  FSD fs10, 304(sp)
  FSD fs8, 312(sp)
  FSD fs11, 320(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb121
bb121:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb213
  # implict jump to bb122
bb122:
  FCVT.S.L ft4, zero
  FSW ft4, 36(sp)
  LW t4, 40(sp)
  FCVT.S.W fs11, t4
  LA s4, .CONSTANT.7.2
  FLW fs0, 0(s4)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 8(sp)
  ADDI s4, zero, 2
  FCVT.S.W fs11, s4
  LA s4, .CONSTANT.7.2
  FLW fs0, 0(s4)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 12(sp)
  LA s4, .CONSTANT.7.3
  FLW fs11, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs0, 0(s4)
  FSGNJN.S ft4, fs11, fs0
  FSW ft4, 16(sp)
  LA s4, .CONSTANT.7.2
  FLW fs11, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs0, 0(s4)
  FSGNJN.S ft4, fs11, fs0
  FSW ft4, 20(sp)
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  LA s4, .CONSTANT.7.2
  FLW fs0, 0(s4)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 24(sp)
  LA s4, .CONSTANT.7.3
  FLW fs11, 0(s4)
  LA s4, .CONSTANT.7.3
  FLW fs0, 0(s4)
  FSGNJN.S ft4, fs11, fs0
  FSW ft4, 32(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb123
bb123:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 48(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb179
  # implict jump to bb124
bb124:
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb125
bb125:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb175
  # implict jump to bb126
bb126:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 40(sp)
  FCVT.S.W fs11, t4
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FDIV.S fs6, fs0, fs11
  ADDI s3, zero, 2
  FCVT.S.W fs0, s3
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FDIV.S fs10, fs11, fs0
  LA s3, .CONSTANT.7.3
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.3
  FLW fs11, 0(s3)
  FSGNJN.S ft4, fs0, fs11
  FSW ft4, 84(sp)
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FSGNJN.S ft4, fs0, fs11
  FSW ft4, 120(sp)
  LW t4, 0(sp)
  FCVT.S.W fs0, t4
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FDIV.S ft4, fs11, fs0
  FSW ft4, 116(sp)
  LA s3, .CONSTANT.7.3
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.3
  FLW fs11, 0(s3)
  FSGNJN.S ft4, fs0, fs11
  FSW ft4, 112(sp)
  LW t4, 40(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 108(sp)
  LW t4, 0(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 100(sp)
  ADDI s3, zero, 1
  FCVT.S.W fs0, s3
  LA s3, .CONSTANT.7.0
  FLW fs11, 0(s3)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 96(sp)
  LA s3, .CONSTANT.7.1
  FLW fs11, 0(s3)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 80(sp)
  LA s3, .CONSTANT.7.1
  FLW fs11, 0(s3)
  FDIV.S ft4, fs0, fs11
  FSW ft4, 4(sp)
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb127
bb127:
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD s7, s1, zero
  ADD s6, s3, zero
  LW t4, 92(sp)
  LW t3, 40(sp)
  BLT t4, t3, bb135
  # implict jump to bb128
bb128:
  ADD s5, zero, zero
  # implict jump to bb129
bb129:
  ADD s4, s5, zero
  LW t4, 40(sp)
  BLT s4, t4, bb131
  # implict jump to bb130
bb130:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s7, 168(sp)
  LD s9, 176(sp)
  LD s4, 184(sp)
  LD s5, 192(sp)
  LD s6, 200(sp)
  LD s8, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  FLD fs0, 232(sp)
  FLD fs1, 240(sp)
  FLD fs2, 248(sp)
  FLD fs3, 256(sp)
  FLD fs4, 264(sp)
  FLD fs5, 272(sp)
  FLD fs6, 280(sp)
  FLD fs7, 288(sp)
  FLD fs9, 296(sp)
  FLD fs10, 304(sp)
  FLD fs8, 312(sp)
  FLD fs11, 320(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb131:
  SLLIW s8, s4, 5
  LA s9, test_idct
  ADD s8, s9, s8
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s9, zero, 1
  # implict jump to bb132
bb132:
  ADD s11, s9, zero
  LW t4, 0(sp)
  BLT s11, t4, bb134
  # implict jump to bb133
bb133:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s10, s4, 1
  ADD s5, s10, zero
  JAL zero, bb129
bb134:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s5, s11, 2
  ADD s5, s8, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s11, 1
  ADD s9, s5, zero
  JAL zero, bb132
bb135:
  LW t4, 92(sp)
  FCVT.S.W fs0, t4
  LA s4, .CONSTANT.7.4
  FLW fs11, 0(s4)
  FADD.S fs0, fs0, fs11
  FMUL.S fs0, fs6, fs0
  LW t4, 92(sp)
  SLLIW s4, t4, 5
  LA s5, test_idct
  ADD t4, s5, s4
  SD t4, 336(sp)
  ADD s5, s6, zero
  ADD s6, s7, zero
  ADD s7, zero, zero
  # implict jump to bb136
bb136:
  ADD t4, s7, zero
  SW t4, 88(sp)
  ADD s9, s6, zero
  ADD s10, s5, zero
  LW t4, 88(sp)
  LW t3, 0(sp)
  BLT t4, t3, bb138
  # implict jump to bb137
bb137:
  LW t4, 92(sp)
  ADDIW s11, t4, 1
  ADD s3, s10, zero
  ADD s1, s9, zero
  ADD s0, s11, zero
  JAL zero, bb127
bb138:
  LW t4, 88(sp)
  SLLIW s0, t4, 2
  LD t3, 336(sp)
  ADD t4, t3, s0
  SD t4, 328(sp)
  LA s1, test_dct
  FLW fs11, 0(s1)
  FLW ft4, 96(sp)
  FMUL.S fs11, ft4, fs11
  LD t4, 328(sp)
  FSW fs11, 0(t4)
  ADDI t4, zero, 1
  SW t4, 104(sp)
  # implict jump to bb139
bb139:
  LW t4, 104(sp)
  ADD s3, t4, zero
  LW t4, 40(sp)
  BLT s3, t4, bb174
  # implict jump to bb140
bb140:
  ADDI s9, zero, 1
  # implict jump to bb141
bb141:
  ADD s10, s9, zero
  LW t4, 0(sp)
  BLT s10, t4, bb173
  # implict jump to bb142
bb142:
  LW t4, 88(sp)
  FCVT.S.W fs11, t4
  LA s11, .CONSTANT.7.4
  FLW fs1, 0(s11)
  FADD.S fs1, fs11, fs1
  FLW ft4, 116(sp)
  FMUL.S fs1, ft4, fs1
  ADD s11, s10, zero
  ADDI s0, zero, 1
  # implict jump to bb143
bb143:
  ADD s8, s0, zero
  ADD s4, s11, zero
  LW t4, 40(sp)
  BLT s8, t4, bb145
  # implict jump to bb144
bb144:
  LD t4, 328(sp)
  FLW fs11, 0(t4)
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FMUL.S fs5, fs11, fs5
  FLW ft4, 108(sp)
  FDIV.S fs5, fs5, ft4
  LA s2, .CONSTANT.7.1
  FLW fs11, 0(s2)
  FMUL.S fs5, fs5, fs11
  FLW ft4, 100(sp)
  FDIV.S fs5, fs5, ft4
  LD t4, 328(sp)
  FSW fs5, 0(t4)
  LW t4, 88(sp)
  ADDIW s2, t4, 1
  ADD s5, s4, zero
  ADD s6, s8, zero
  ADD s7, s2, zero
  JAL zero, bb136
bb145:
  SLLIW s2, s8, 5
  LA s4, test_dct
  ADD s2, s4, s2
  FCVT.S.W fs5, s8
  FMUL.S fs5, fs0, fs5
  FADD.S fs5, fs5, fs10
  LA s4, .CONSTANT.7.3
  FLW fs11, 0(s4)
  FLT.S s4, fs11, fs5
  FLW ft4, 84(sp)
  FLT.S s5, fs5, ft4
  LA s6, .CONSTANT.7.3
  FLW fs11, 0(s6)
  FDIV.S fs11, fs5, fs11
  FCVT.W.S s6, fs11, rtz
  FCVT.S.W fs11, s6
  LA s6, .CONSTANT.7.3
  FLW fs9, 0(s6)
  FMUL.S fs9, fs11, fs9
  FSUB.S fs9, fs5, fs9
  ADDI s6, zero, 1
  # implict jump to bb146
bb146:
  ADD s7, s6, zero
  LW t4, 0(sp)
  BLT s7, t4, bb148
  # implict jump to bb147
bb147:
  ADDIW s1, s8, 1
  ADD s11, s7, zero
  ADD s0, s1, zero
  JAL zero, bb143
bb148:
  LD t4, 328(sp)
  FLW fs11, 0(t4)
  SLLIW s0, s7, 2
  ADD s0, s2, s0
  FLW fs2, 0(s0)
  BNE s4, zero, bb172
  # implict jump to bb149
bb149:
  ADD s0, s5, zero
  # implict jump to bb150
bb150:
  BNE s0, zero, bb171
  # implict jump to bb151
bb151:
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb152
bb152:
  LA s0, .CONSTANT.7.2
  FLW fs7, 0(s0)
  FLT.S s0, fs7, fs3
  BNE s0, zero, bb170
  # implict jump to bb153
bb153:
  FSGNJ.S fs7, fs3, fs3
  # implict jump to bb154
bb154:
  FLW ft4, 120(sp)
  FLT.S s0, fs7, ft4
  BNE s0, zero, bb169
  # implict jump to bb155
bb155:
  FSGNJ.S fs3, fs7, fs7
  # implict jump to bb156
bb156:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s7
  FMUL.S fs3, fs1, fs3
  FADD.S fs3, fs3, fs10
  LA s0, .CONSTANT.7.3
  FLW fs4, 0(s0)
  FLT.S s0, fs4, fs3
  BNE s0, zero, bb168
  # implict jump to bb157
bb157:
  FLW ft4, 112(sp)
  FLT.S s0, fs3, ft4
  # implict jump to bb158
bb158:
  BNE s0, zero, bb167
  # implict jump to bb159
bb159:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb160
bb160:
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs4
  BNE s0, zero, bb166
  # implict jump to bb161
bb161:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb162
bb162:
  FLW ft4, 120(sp)
  FLT.S s0, fs3, ft4
  BNE s0, zero, bb165
  # implict jump to bb163
bb163:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb164
bb164:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FADD.S fs2, fs11, fs2
  LD t4, 328(sp)
  FSW fs2, 0(t4)
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb146
bb165:
  LA s0, .CONSTANT.7.3
  FLW fs7, 0(s0)
  FADD.S fs3, fs3, fs7
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb164
bb166:
  LA s0, .CONSTANT.7.3
  FLW fs7, 0(s0)
  FSUB.S fs4, fs4, fs7
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb162
bb167:
  LA s0, .CONSTANT.7.3
  FLW fs7, 0(s0)
  FDIV.S fs7, fs3, fs7
  FCVT.W.S s0, fs7, rtz
  FCVT.S.W fs7, s0
  LA s0, .CONSTANT.7.3
  FLW fs8, 0(s0)
  FMUL.S fs7, fs7, fs8
  FSUB.S fs3, fs3, fs7
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb160
bb168:
  ADDI s0, zero, 1
  JAL zero, bb158
bb169:
  LA s0, .CONSTANT.7.3
  FLW fs4, 0(s0)
  FADD.S fs4, fs7, fs4
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb156
bb170:
  LA s0, .CONSTANT.7.3
  FLW fs4, 0(s0)
  FSUB.S fs3, fs3, fs4
  FSGNJ.S fs7, fs3, fs3
  JAL zero, bb154
bb171:
  FSGNJ.S fs3, fs9, fs9
  JAL zero, bb152
bb172:
  ADDI s0, zero, 1
  JAL zero, bb150
bb173:
  LD t4, 328(sp)
  FLW fs1, 0(t4)
  SLLIW s0, s10, 2
  LA s1, test_dct
  ADD s0, s1, s0
  FLW fs2, 0(s0)
  FLW ft4, 4(sp)
  FMUL.S fs2, ft4, fs2
  FADD.S fs1, fs1, fs2
  LD t4, 328(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s10, 1
  ADD s9, s0, zero
  JAL zero, bb141
bb174:
  LD t4, 328(sp)
  FLW fs1, 0(t4)
  SLLIW s0, s3, 5
  LA s1, test_dct
  ADD s0, s1, s0
  FLW fs2, 0(s0)
  FLW ft4, 80(sp)
  FMUL.S fs2, ft4, fs2
  FADD.S fs1, fs1, fs2
  LD t4, 328(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s3, 1
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb139
bb175:
  LW t4, 72(sp)
  SLLIW s0, t4, 5
  LA s1, test_dct
  ADD s0, s1, s0
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s1, zero, 1
  # implict jump to bb176
bb176:
  ADD s2, s1, zero
  LW t4, 0(sp)
  BLT s2, t4, bb178
  # implict jump to bb177
bb177:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 72(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 76(sp)
  JAL zero, bb125
bb178:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb176
bb179:
  LW t4, 48(sp)
  SLLIW s0, t4, 5
  LA s1, test_dct
  ADD s0, s1, s0
  LW t4, 48(sp)
  FCVT.S.W fs0, t4
  LW t4, 68(sp)
  ADD s1, t4, zero
  LW t4, 64(sp)
  ADD s2, t4, zero
  ADD s3, zero, zero
  # implict jump to bb180
bb180:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LW t4, 0(sp)
  BLT s4, t4, bb182
  # implict jump to bb181
bb181:
  LW t4, 48(sp)
  ADDIW s7, t4, 1
  ADD t4, s6, zero
  SW t4, 60(sp)
  ADD t4, s5, zero
  SW t4, 56(sp)
  ADD t4, s7, zero
  SW t4, 52(sp)
  JAL zero, bb123
bb182:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  FLW ft4, 36(sp)
  FSW ft4, 0(s5)
  FCVT.S.W fs1, s4
  ADD s7, zero, zero
  # implict jump to bb183
bb183:
  ADD s8, s7, zero
  ADD s9, s6, zero
  LW t4, 40(sp)
  BLT s8, t4, bb185
  # implict jump to bb184
bb184:
  ADDIW s10, s4, 1
  ADD s1, s9, zero
  ADD s2, s8, zero
  ADD s3, s10, zero
  JAL zero, bb180
bb185:
  SLLIW s1, s8, 5
  LA s2, test_block
  ADD s1, s2, s1
  FCVT.S.W fs2, s8
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FADD.S fs2, fs2, fs3
  FLW ft4, 8(sp)
  FMUL.S fs2, ft4, fs2
  FMUL.S fs2, fs2, fs0
  FLW ft4, 12(sp)
  FADD.S fs2, fs2, ft4
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs2
  FLW ft4, 16(sp)
  FLT.S s3, fs2, ft4
  LA s9, .CONSTANT.7.3
  FLW fs3, 0(s9)
  FDIV.S fs3, fs2, fs3
  FCVT.W.S s9, fs3, rtz
  FCVT.S.W fs3, s9
  LA s9, .CONSTANT.7.3
  FLW fs4, 0(s9)
  FMUL.S fs3, fs3, fs4
  FSUB.S fs3, fs2, fs3
  ADD s9, zero, zero
  # implict jump to bb186
bb186:
  ADD s10, s9, zero
  LW t4, 0(sp)
  BLT s10, t4, bb188
  # implict jump to bb187
bb187:
  ADDIW s11, s8, 1
  ADD s6, s10, zero
  ADD s7, s11, zero
  JAL zero, bb183
bb188:
  FLW fs4, 0(s5)
  SLLIW s6, s10, 2
  ADD s6, s1, s6
  FLW fs5, 0(s6)
  BNE s2, zero, bb212
  # implict jump to bb189
bb189:
  ADD s6, s3, zero
  # implict jump to bb190
bb190:
  BNE s6, zero, bb211
  # implict jump to bb191
bb191:
  FSGNJ.S fs6, fs2, fs2
  # implict jump to bb192
bb192:
  LA s6, .CONSTANT.7.2
  FLW fs7, 0(s6)
  FLT.S s6, fs7, fs6
  BNE s6, zero, bb210
  # implict jump to bb193
bb193:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb194
bb194:
  FLW ft4, 20(sp)
  FLT.S s6, fs7, ft4
  BNE s6, zero, bb209
  # implict jump to bb195
bb195:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb196
bb196:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs5, fs5, fs6
  FCVT.S.W fs6, s10
  LA s6, .CONSTANT.7.4
  FLW fs7, 0(s6)
  FADD.S fs6, fs6, fs7
  FLW ft4, 24(sp)
  FMUL.S fs6, ft4, fs6
  FMUL.S fs6, fs6, fs1
  FLW ft4, 12(sp)
  FADD.S fs6, fs6, ft4
  LA s6, .CONSTANT.7.3
  FLW fs7, 0(s6)
  FLT.S s6, fs7, fs6
  BNE s6, zero, bb208
  # implict jump to bb197
bb197:
  FLW ft4, 32(sp)
  FLT.S s6, fs6, ft4
  # implict jump to bb198
bb198:
  BNE s6, zero, bb207
  # implict jump to bb199
bb199:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb200
bb200:
  LA s6, .CONSTANT.7.2
  FLW fs6, 0(s6)
  FLT.S s6, fs6, fs7
  BNE s6, zero, bb206
  # implict jump to bb201
bb201:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb202
bb202:
  FLW ft4, 20(sp)
  FLT.S s6, fs6, ft4
  BNE s6, zero, bb205
  # implict jump to bb203
bb203:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb204
bb204:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  FSW fs4, 0(s5)
  ADDIW s6, s10, 1
  ADD s9, s6, zero
  JAL zero, bb186
bb205:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb204
bb206:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FSUB.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb202
bb207:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FDIV.S fs8, fs6, fs8
  FCVT.W.S s6, fs8, rtz
  FCVT.S.W fs8, s6
  LA s6, .CONSTANT.7.3
  FLW fs9, 0(s6)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb200
bb208:
  ADDI s6, zero, 1
  JAL zero, bb198
bb209:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FADD.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb196
bb210:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb194
bb211:
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb192
bb212:
  ADDI s6, zero, 1
  JAL zero, bb190
bb213:
  LW t4, 28(sp)
  SLLIW s0, t4, 5
  LA s1, test_block
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb214
bb214:
  ADD s2, s1, zero
  LW t4, 0(sp)
  BLT s2, t4, bb216
  # implict jump to bb215
bb215:
  LW t4, 28(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 44(sp)
  JAL zero, bb121
bb216:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getfloat
  FSW fa0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb214
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb219
  # implict jump to bb218
bb218:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
