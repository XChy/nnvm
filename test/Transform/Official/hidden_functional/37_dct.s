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
.word 0x3f800000
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x358637bd
.CONSTANT.7.6:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -352
  FSD fs8, 152(sp)
  FSD fs6, 160(sp)
  FSD fs7, 168(sp)
  FSD fs11, 176(sp)
  SD s6, 184(sp)
  FSD fs10, 192(sp)
  SD ra, 200(sp)
  SD s5, 208(sp)
  SD s4, 216(sp)
  SD s9, 224(sp)
  FSD fs4, 232(sp)
  SD s8, 240(sp)
  FSD fs3, 248(sp)
  FSD fs9, 256(sp)
  SD s10, 264(sp)
  FSD fs5, 272(sp)
  FSD fs0, 280(sp)
  SD s7, 288(sp)
  FSD fs2, 296(sp)
  SD s11, 304(sp)
  FSD fs1, 312(sp)
  SD s0, 320(sp)
  SD s3, 328(sp)
  SD s2, 336(sp)
  SD s1, 344(sp)
  ADD t4, a0, zero
  SD t4, 24(sp)
  ADD t4, a1, zero
  SD t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb1
bb1:
  LW t4, 32(sp)
  ADD s7, t4, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 8(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb2
  JAL zero, bb3
bb2:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb4
bb3:
  FLD fs8, 152(sp)
  FLD fs6, 160(sp)
  FLD fs7, 168(sp)
  FLD fs11, 176(sp)
  LD s6, 184(sp)
  FLD fs10, 192(sp)
  LD ra, 200(sp)
  LD s5, 208(sp)
  LD s4, 216(sp)
  LD s9, 224(sp)
  FLD fs4, 232(sp)
  LD s8, 240(sp)
  FLD fs3, 248(sp)
  FLD fs9, 256(sp)
  LD s10, 264(sp)
  FLD fs5, 272(sp)
  FLD fs0, 280(sp)
  LD s7, 288(sp)
  FLD fs2, 296(sp)
  LD s11, 304(sp)
  FLD fs1, 312(sp)
  LD s0, 320(sp)
  LD s3, 328(sp)
  LD s2, 336(sp)
  LD s1, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb4:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, s10, zero
  SW t4, 88(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 24(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD t4, t2, a5
  SD t4, 56(sp)
  ADDI t2, zero, 1
  FCVT.S.W fs1, t2
  LA t2, .CONSTANT.7.0
  FLW fs2, 0(t2)
  FDIV.S fs3, fs1, fs2
  LD t4, 16(sp)
  FLW fs2, 0(t4)
  FMUL.S fs4, fs3, fs2
  LD t4, 56(sp)
  FSW fs4, 0(t4)
  ADDI t2, zero, 1
  JAL zero, bb7
bb6:
  ADDIW s0, s7, 1
  LW t4, 88(sp)
  ADD s4, t4, zero
  LW t4, 72(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb1
bb7:
  ADD a5, t2, zero
  LW t4, 8(sp)
  SLT a6, a5, t4
  BNE a6, zero, bb8
  JAL zero, bb9
bb8:
  LD t4, 56(sp)
  FLW fs2, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs3, 0(a6)
  FDIV.S fs4, fs1, fs3
  ADDI a6, zero, 32
  MULW a7, a5, a6
  LD t4, 16(sp)
  ADD a6, t4, a7
  FLW fs3, 0(a6)
  FMUL.S fs5, fs4, fs3
  FADD.S fs3, fs2, fs5
  LD t4, 56(sp)
  FSW fs3, 0(t4)
  ADDIW a6, a5, 1
  ADD t2, a6, zero
  JAL zero, bb7
bb9:
  ADDI t2, zero, 1
  JAL zero, bb10
bb10:
  ADD a5, t2, zero
  LW t4, 0(sp)
  SLT a6, a5, t4
  BNE a6, zero, bb11
  JAL zero, bb12
bb11:
  LD t4, 56(sp)
  FLW fs2, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs3, 0(a6)
  FDIV.S fs4, fs1, fs3
  ADDI a6, zero, 4
  MULW a7, a5, a6
  LD t4, 16(sp)
  ADD a6, t4, a7
  FLW fs3, 0(a6)
  FMUL.S fs5, fs4, fs3
  FADD.S fs3, fs2, fs5
  LD t4, 56(sp)
  FSW fs3, 0(t4)
  ADDIW a6, a5, 1
  ADD t2, a6, zero
  JAL zero, bb10
bb12:
  ADD t4, a5, zero
  SW t4, 64(sp)
  ADDI t4, zero, 1
  SW t4, 48(sp)
  JAL zero, bb13
bb13:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 40(sp)
  LW t3, 8(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 1
  JAL zero, bb16
bb15:
  LD t4, 56(sp)
  FLW fs0, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  LW t4, 8(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  LW t4, 0(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s11, 1
  LW t4, 80(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb4
bb16:
  ADD s2, s3, zero
  LW t4, 0(sp)
  SLT s1, s2, t4
  BNE s1, zero, bb17
  JAL zero, bb20
bb17:
  LD t4, 56(sp)
  FLW ft4, 0(t4)
  FSW ft4, 128(sp)
  ADDI s1, zero, 32
  LW t4, 40(sp)
  MULW s0, t4, s1
  LD t4, 16(sp)
  ADD s1, t4, s0
  ADDI s0, zero, 4
  MULW s6, s2, s0
  ADD s0, s1, s6
  FLW ft4, 0(s0)
  FSW ft4, 120(sp)
  LW t4, 8(sp)
  FCVT.S.W fs3, t4
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FDIV.S fs5, fs4, fs3
  LA s0, .CONSTANT.7.3
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs4, 0(s0)
  FDIV.S ft4, fs3, fs4
  FSW ft4, 112(sp)
  FCVT.S.W fs3, s7
  FLW ft4, 112(sp)
  FADD.S fs4, fs3, ft4
  FMUL.S fs3, fs5, fs4
  LW t4, 40(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs5, fs3, fs4
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FDIV.S ft4, fs4, fs3
  FSW ft4, 104(sp)
  FLW ft3, 104(sp)
  FADD.S ft4, fs5, ft3
  FSW ft4, 96(sp)
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  FLW ft4, 96(sp)
  FLT.S s0, fs4, ft4
  BNE s0, zero, bb22
  JAL zero, bb23
bb18:
  FSGNJ.S fs11, fs3, fs3
  FLW ft4, 120(sp)
  FMUL.S fs3, ft4, fs11
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FDIV.S fs6, fs7, fs11
  FCVT.S.W fs7, s11
  FLW ft4, 112(sp)
  FADD.S fs11, fs7, ft4
  FMUL.S fs7, fs6, fs11
  FCVT.S.W fs6, s2
  FMUL.S fs11, fs7, fs6
  FLW ft4, 104(sp)
  FADD.S fs6, fs11, ft4
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs6
  BNE s1, zero, bb32
  JAL zero, bb33
bb19:
  FSGNJ.S fs8, ft0, ft0
  FMUL.S ft0, fs3, fs8
  FLW ft4, 128(sp)
  FADD.S fs8, ft4, ft0
  LD t4, 56(sp)
  FSW fs8, 0(t4)
  ADDIW s6, s2, 1
  ADD s3, s6, zero
  JAL zero, bb16
bb20:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb13
bb21:
  FSGNJ.S fs11, fs3, fs3
  FSGNJ.S fs3, fs11, fs11
  JAL zero, bb18
bb22:
  ADDI s0, zero, 1
  JAL zero, bb24
bb23:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 96(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  JAL zero, bb24
bb24:
  ADD s1, s0, zero
  BNE s1, zero, bb25
  JAL zero, bb41
bb25:
  LA s1, .CONSTANT.7.4
  FLW fs4, 0(s1)
  FLW ft4, 96(sp)
  FDIV.S fs5, ft4, fs4
  FCVT.W.S s1, fs5, rtz
  FCVT.S.W fs4, s1
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FMUL.S fs8, fs4, fs5
  FLW ft4, 96(sp)
  FSUB.S fs4, ft4, fs8
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 136(sp)
  JAL zero, bb26
bb26:
  FLW ft4, 136(sp)
  FLW ft3, 136(sp)
  FSGNJ.S fs4, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs8, 0(s1)
  FLT.S s1, fs8, fs4
  BNE s1, zero, bb27
  JAL zero, bb42
bb27:
  LA s1, .CONSTANT.7.4
  FLW fs8, 0(s1)
  FSUB.S fs9, fs4, fs8
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 144(sp)
  JAL zero, bb28
bb28:
  FLW ft4, 144(sp)
  FLW ft3, 144(sp)
  FSGNJ.S fs9, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs11, 0(s1)
  FSGNJN.S fs0, fs10, fs11
  FLT.S s1, fs9, fs0
  BNE s1, zero, bb29
  JAL zero, bb43
bb29:
  LA s1, .CONSTANT.7.4
  FLW fs10, 0(s1)
  FADD.S fs11, fs9, fs10
  FSGNJ.S fs10, fs11, fs11
  JAL zero, bb30
bb30:
  FSGNJ.S fs11, fs10, fs10
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs11, fa0, fa0
  FSGNJ.S fs3, fs11, fs11
  JAL zero, bb21
bb31:
  FSGNJ.S fs8, ft0, ft0
  FSGNJ.S ft0, fs8, fs8
  JAL zero, bb19
bb32:
  ADDI s1, zero, 1
  JAL zero, bb34
bb33:
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FSGNJN.S fs5, fs1, fs2
  FLT.S s3, fs6, fs5
  ADD s1, s3, zero
  JAL zero, bb34
bb34:
  ADD s6, s1, zero
  BNE s6, zero, bb35
  JAL zero, bb44
bb35:
  LA s6, .CONSTANT.7.4
  FLW fs7, 0(s6)
  FDIV.S fs11, fs6, fs7
  FCVT.W.S s6, fs11, rtz
  FCVT.S.W fs7, s6
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FMUL.S fs2, fs7, fs11
  FSUB.S fs7, fs6, fs2
  FSGNJ.S fs2, fs7, fs7
  JAL zero, bb36
bb36:
  FSGNJ.S fs7, fs2, fs2
  LA s6, .CONSTANT.7.2
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs7
  BNE s6, zero, bb37
  JAL zero, bb45
bb37:
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FSUB.S fs1, fs7, fs11
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb38
bb38:
  FSGNJ.S fs1, fs11, fs11
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb39
  JAL zero, bb46
bb39:
  LA s6, .CONSTANT.7.4
  FLW fs5, 0(s6)
  FADD.S fs8, fs1, fs5
  FSGNJ.S fs5, fs8, fs8
  JAL zero, bb40
bb40:
  FSGNJ.S fs8, fs5, fs5
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FSGNJ.D fs8, fa0, fa0
  FSGNJ.S ft0, fs8, fs8
  JAL zero, bb31
bb41:
  FLW ft3, 96(sp)
  FLW ft4, 96(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 136(sp)
  JAL zero, bb26
bb42:
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 144(sp)
  JAL zero, bb28
bb43:
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb30
bb44:
  FSGNJ.S fs2, fs6, fs6
  JAL zero, bb36
bb45:
  FSGNJ.S fs11, fs7, fs7
  JAL zero, bb38
bb46:
  FSGNJ.S fs5, fs1, fs1
  JAL zero, bb40
my_sin_impl:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  FSD fs5, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb52
  JAL zero, bb53
bb48:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.5
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb49
  JAL zero, bb50
bb49:
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb50:
  LA s0, .CONSTANT.7.6
  FLW fs2, 0(s0)
  FDIV.S fs3, fs0, fs2
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs3, s0
  FMUL.S fs4, fs3, fs2
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  FMUL.S fs5, fs3, fs2
  FMUL.S fs3, fs5, fs2
  FMUL.S fs5, fs3, fs2
  FSUB.S fs2, fs4, fs5
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb51
bb51:
  FSGNJ.S fs2, fs3, fs3
  FSGNJ.S fa0, fs2, fs2
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb52:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb48
bb53:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb48
p:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs1, 16(sp)
  FSD fs2, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs1, s0
  FMUL.S fs3, fs1, fs0
  FMUL.S fs1, fs3, fs0
  FMUL.S fs3, fs1, fs0
  FSUB.S fs0, fs2, fs3
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  FLD fs2, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
dct:
  ADDI sp, sp, -352
  FSD fs2, 152(sp)
  FSD fs0, 160(sp)
  FSD fs8, 168(sp)
  FSD fs6, 176(sp)
  FSD fs10, 184(sp)
  SD ra, 192(sp)
  SD s5, 200(sp)
  SD s4, 208(sp)
  SD s9, 216(sp)
  FSD fs4, 224(sp)
  SD s8, 232(sp)
  FSD fs3, 240(sp)
  FSD fs9, 248(sp)
  SD s10, 256(sp)
  FSD fs5, 264(sp)
  SD s7, 272(sp)
  SD s11, 280(sp)
  FSD fs1, 288(sp)
  SD s0, 296(sp)
  SD s3, 304(sp)
  SD s2, 312(sp)
  SD s1, 320(sp)
  SD s6, 328(sp)
  FSD fs11, 336(sp)
  FSD fs7, 344(sp)
  ADD t4, a0, zero
  SD t4, 24(sp)
  ADD t4, a1, zero
  SD t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb56
bb56:
  LW t4, 32(sp)
  ADD s7, t4, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 8(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb57
  JAL zero, bb58
bb57:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb59
bb58:
  FLD fs2, 152(sp)
  FLD fs0, 160(sp)
  FLD fs8, 168(sp)
  FLD fs6, 176(sp)
  FLD fs10, 184(sp)
  LD ra, 192(sp)
  LD s5, 200(sp)
  LD s4, 208(sp)
  LD s9, 216(sp)
  FLD fs4, 224(sp)
  LD s8, 232(sp)
  FLD fs3, 240(sp)
  FLD fs9, 248(sp)
  LD s10, 256(sp)
  FLD fs5, 264(sp)
  LD s7, 272(sp)
  LD s11, 280(sp)
  FLD fs1, 288(sp)
  LD s0, 296(sp)
  LD s3, 304(sp)
  LD s2, 312(sp)
  LD s1, 320(sp)
  LD s6, 328(sp)
  FLD fs11, 336(sp)
  FLD fs7, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb59:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 88(sp)
  ADD t4, s10, zero
  SW t4, 64(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 24(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD t4, t2, a5
  SD t4, 48(sp)
  FCVT.S.L fs1, zero
  LD t4, 48(sp)
  FSW fs1, 0(t4)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb62
bb61:
  ADDIW s0, s7, 1
  LW t4, 64(sp)
  ADD s4, t4, zero
  LW t4, 88(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb56
bb62:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 40(sp)
  LW t3, 8(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb63
  JAL zero, bb64
bb63:
  ADD s3, zero, zero
  JAL zero, bb65
bb64:
  ADDIW s0, s11, 1
  LW t4, 80(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb59
bb65:
  ADD s2, s3, zero
  LW t4, 0(sp)
  SLT s1, s2, t4
  BNE s1, zero, bb66
  JAL zero, bb69
bb66:
  LD t4, 48(sp)
  FLW ft4, 0(t4)
  FSW ft4, 128(sp)
  ADDI s1, zero, 32
  LW t4, 40(sp)
  MULW s0, t4, s1
  LD t4, 16(sp)
  ADD s1, t4, s0
  ADDI s0, zero, 4
  MULW s6, s2, s0
  ADD s0, s1, s6
  FLW ft4, 0(s0)
  FSW ft4, 120(sp)
  LW t4, 8(sp)
  FCVT.S.W fs3, t4
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FDIV.S fs5, fs4, fs3
  LA s0, .CONSTANT.7.3
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs4, 0(s0)
  FDIV.S ft4, fs3, fs4
  FSW ft4, 112(sp)
  LW t4, 40(sp)
  FCVT.S.W fs3, t4
  FLW ft4, 112(sp)
  FADD.S fs4, fs3, ft4
  FMUL.S fs3, fs5, fs4
  FCVT.S.W fs4, s7
  FMUL.S fs5, fs3, fs4
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FDIV.S ft4, fs4, fs3
  FSW ft4, 104(sp)
  FLW ft3, 104(sp)
  FADD.S ft4, fs5, ft3
  FSW ft4, 96(sp)
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  FLW ft4, 96(sp)
  FLT.S s0, fs4, ft4
  BNE s0, zero, bb71
  JAL zero, bb72
bb67:
  FSGNJ.S fs11, fs3, fs3
  FLW ft4, 120(sp)
  FMUL.S fs3, ft4, fs11
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FDIV.S fs6, fs7, fs11
  FCVT.S.W fs7, s2
  FLW ft4, 112(sp)
  FADD.S fs11, fs7, ft4
  FMUL.S fs7, fs6, fs11
  FCVT.S.W fs6, s11
  FMUL.S fs11, fs7, fs6
  FLW ft4, 104(sp)
  FADD.S fs6, fs11, ft4
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs6
  BNE s1, zero, bb81
  JAL zero, bb82
bb68:
  FSGNJ.S fs8, ft0, ft0
  FMUL.S ft0, fs3, fs8
  FLW ft4, 128(sp)
  FADD.S fs8, ft4, ft0
  LD t4, 48(sp)
  FSW fs8, 0(t4)
  ADDIW s6, s2, 1
  ADD s3, s6, zero
  JAL zero, bb65
bb69:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD t4, s2, zero
  SW t4, 56(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb62
bb70:
  FSGNJ.S fs11, fs3, fs3
  FSGNJ.S fs3, fs11, fs11
  JAL zero, bb67
bb71:
  ADDI s0, zero, 1
  JAL zero, bb73
bb72:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 96(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  JAL zero, bb73
bb73:
  ADD s1, s0, zero
  BNE s1, zero, bb74
  JAL zero, bb90
bb74:
  LA s1, .CONSTANT.7.4
  FLW fs4, 0(s1)
  FLW ft4, 96(sp)
  FDIV.S fs5, ft4, fs4
  FCVT.W.S s1, fs5, rtz
  FCVT.S.W fs4, s1
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FMUL.S fs8, fs4, fs5
  FLW ft4, 96(sp)
  FSUB.S fs4, ft4, fs8
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 136(sp)
  JAL zero, bb75
bb75:
  FLW ft4, 136(sp)
  FLW ft3, 136(sp)
  FSGNJ.S fs4, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs8, 0(s1)
  FLT.S s1, fs8, fs4
  BNE s1, zero, bb76
  JAL zero, bb91
bb76:
  LA s1, .CONSTANT.7.4
  FLW fs8, 0(s1)
  FSUB.S fs9, fs4, fs8
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 144(sp)
  JAL zero, bb77
bb77:
  FLW ft4, 144(sp)
  FLW ft3, 144(sp)
  FSGNJ.S fs9, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs11, 0(s1)
  FSGNJN.S fs0, fs10, fs11
  FLT.S s1, fs9, fs0
  BNE s1, zero, bb78
  JAL zero, bb92
bb78:
  LA s1, .CONSTANT.7.4
  FLW fs10, 0(s1)
  FADD.S fs11, fs9, fs10
  FSGNJ.S fs10, fs11, fs11
  JAL zero, bb79
bb79:
  FSGNJ.S fs11, fs10, fs10
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs11, fa0, fa0
  FSGNJ.S fs3, fs11, fs11
  JAL zero, bb70
bb80:
  FSGNJ.S fs8, ft0, ft0
  FSGNJ.S ft0, fs8, fs8
  JAL zero, bb68
bb81:
  ADDI s1, zero, 1
  JAL zero, bb83
bb82:
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FSGNJN.S fs5, fs1, fs2
  FLT.S s3, fs6, fs5
  ADD s1, s3, zero
  JAL zero, bb83
bb83:
  ADD s6, s1, zero
  BNE s6, zero, bb84
  JAL zero, bb93
bb84:
  LA s6, .CONSTANT.7.4
  FLW fs7, 0(s6)
  FDIV.S fs11, fs6, fs7
  FCVT.W.S s6, fs11, rtz
  FCVT.S.W fs7, s6
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FMUL.S fs2, fs7, fs11
  FSUB.S fs7, fs6, fs2
  FSGNJ.S fs2, fs7, fs7
  JAL zero, bb85
bb85:
  FSGNJ.S fs7, fs2, fs2
  LA s6, .CONSTANT.7.2
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs7
  BNE s6, zero, bb86
  JAL zero, bb94
bb86:
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FSUB.S fs1, fs7, fs11
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb87
bb87:
  FSGNJ.S fs1, fs11, fs11
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb88
  JAL zero, bb95
bb88:
  LA s6, .CONSTANT.7.4
  FLW fs5, 0(s6)
  FADD.S fs8, fs1, fs5
  FSGNJ.S fs5, fs8, fs8
  JAL zero, bb89
bb89:
  FSGNJ.S fs8, fs5, fs5
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FSGNJ.D fs8, fa0, fa0
  FSGNJ.S ft0, fs8, fs8
  JAL zero, bb80
bb90:
  FLW ft3, 96(sp)
  FLW ft4, 96(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 136(sp)
  JAL zero, bb75
bb91:
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 144(sp)
  JAL zero, bb77
bb92:
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb79
bb93:
  FSGNJ.S fs2, fs6, fs6
  JAL zero, bb85
bb94:
  FSGNJ.S fs11, fs7, fs7
  JAL zero, bb87
bb95:
  FSGNJ.S fs5, fs1, fs1
  JAL zero, bb89
my_sin:
  ADDI sp, sp, -96
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs6, 40(sp)
  FSD fs1, 48(sp)
  SD s0, 56(sp)
  FSD fs7, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb97
  JAL zero, bb98
bb97:
  ADDI s0, zero, 1
  JAL zero, bb99
bb98:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb99
bb99:
  ADD s1, s0, zero
  BNE s1, zero, bb100
  JAL zero, bb106
bb100:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FDIV.S fs2, fs0, fs1
  FCVT.W.S s1, fs2, rtz
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FSUB.S fs1, fs0, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb101
bb101:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb102
  JAL zero, bb107
bb102:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb103
bb103:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb104
  JAL zero, bb108
bb104:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb105
bb105:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs6, 40(sp)
  FLD fs1, 48(sp)
  LD s0, 56(sp)
  FLD fs7, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb106:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb101
bb107:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb103
bb108:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb105
write_mat:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  FSD fs0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb110
bb110:
  ADD s4, s3, zero
  SLT s5, s4, s1
  BNE s5, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s5, zero, 32
  MULW s6, s4, s5
  ADD s5, s0, s6
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s6, zero, 1
  JAL zero, bb113
bb112:
  ADDI a0, zero, 10
  CALL putch
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb113:
  ADD s7, s6, zero
  SLT s8, s7, s2
  BNE s8, zero, bb114
  JAL zero, bb115
bb114:
  ADDI a0, zero, 32
  CALL putch
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s5, s9
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb113
bb115:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb110
my_cos:
  ADDI sp, sp, -96
  FSD fs4, 0(sp)
  SD s1, 8(sp)
  SD ra, 16(sp)
  FSD fs3, 24(sp)
  FSD fs6, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  FSD fs7, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FDIV.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb118
  JAL zero, bb119
bb117:
  FSGNJ.S fs6, fs7, fs7
  FSGNJ.S fa0, fs6, fs6
  FLD fs4, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  FLD fs3, 24(sp)
  FLD fs6, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  FLD fs7, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb118:
  ADDI s0, zero, 1
  JAL zero, bb120
bb119:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb120
bb120:
  ADD s1, s0, zero
  BNE s1, zero, bb121
  JAL zero, bb127
bb121:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  FDIV.S fs2, fs1, fs0
  FCVT.W.S s1, fs2, rtz
  FCVT.S.W fs0, s1
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FMUL.S fs3, fs0, fs2
  FSUB.S fs0, fs1, fs3
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb122
bb122:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb123
  JAL zero, bb128
bb123:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb124
bb124:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb125
  JAL zero, bb129
bb125:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb126
bb126:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb117
bb127:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb122
bb128:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb124
bb129:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb126
main:
  ADDI sp, sp, -480
  SD s8, 272(sp)
  FSD fs3, 280(sp)
  SD s6, 288(sp)
  SD s5, 296(sp)
  SD s4, 304(sp)
  SD s3, 312(sp)
  SD s2, 320(sp)
  FSD fs9, 328(sp)
  FSD fs8, 336(sp)
  FSD fs2, 344(sp)
  SD s7, 352(sp)
  SD s10, 360(sp)
  FSD fs5, 368(sp)
  SD s11, 376(sp)
  FSD fs6, 384(sp)
  FSD fs0, 392(sp)
  FSD fs1, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s9, 424(sp)
  FSD fs4, 432(sp)
  SD ra, 440(sp)
  FSD fs10, 448(sp)
  FSD fs11, 456(sp)
  FSD fs7, 464(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s2, zero, zero
  JAL zero, bb131
bb131:
  ADD s3, s2, zero
  LW t4, 8(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb132
  JAL zero, bb133
bb132:
  ADD s4, zero, zero
  JAL zero, bb135
bb133:
  JAL zero, bb159
bb134:
  ADD a0, zero, zero
  LD s8, 272(sp)
  FLD fs3, 280(sp)
  LD s6, 288(sp)
  LD s5, 296(sp)
  LD s4, 304(sp)
  LD s3, 312(sp)
  LD s2, 320(sp)
  FLD fs9, 328(sp)
  FLD fs8, 336(sp)
  FLD fs2, 344(sp)
  LD s7, 352(sp)
  LD s10, 360(sp)
  FLD fs5, 368(sp)
  LD s11, 376(sp)
  FLD fs6, 384(sp)
  FLD fs0, 392(sp)
  FLD fs1, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s9, 424(sp)
  FLD fs4, 432(sp)
  LD ra, 440(sp)
  FLD fs10, 448(sp)
  FLD fs11, 456(sp)
  FLD fs7, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb135:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb136
  JAL zero, bb137
bb136:
  ADDI s6, zero, 32
  MULW s7, s3, s6
  LA s6, test_block
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  FSW fs2, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb135
bb137:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb131
bb138:
  ADD t4, zero, zero
  SW t4, 184(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  JAL zero, bb139
bb139:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 168(sp)
  ADD s4, t4, zero
  LW t4, 184(sp)
  ADD s5, t4, zero
  LW t4, 192(sp)
  LW t3, 8(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb140
  JAL zero, bb141
bb140:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD t4, zero, zero
  SW t4, 200(sp)
  JAL zero, bb142
bb141:
  JAL zero, bb181
bb142:
  LW t4, 200(sp)
  ADD s7, t4, zero
  ADD t4, s5, zero
  SW t4, 160(sp)
  ADD t4, s6, zero
  SW t4, 176(sp)
  LW t4, 0(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb143
  JAL zero, bb144
bb143:
  ADDI s10, zero, 32
  LW t4, 192(sp)
  MULW s11, t4, s10
  LA s10, test_idct
  ADD s2, s10, s11
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s2, s11
  ADDI s2, zero, 1
  FCVT.S.W fs0, s2
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FDIV.S fs2, fs0, fs1
  LA s2, test_dct
  FLW fs1, 0(s2)
  FMUL.S fs3, fs2, fs1
  FSW fs3, 0(s10)
  ADDI s2, zero, 1
  JAL zero, bb145
bb144:
  LW t4, 192(sp)
  ADDIW s0, t4, 1
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb139
bb145:
  ADD s11, s2, zero
  LW t4, 8(sp)
  SLT s8, s11, t4
  BNE s8, zero, bb146
  JAL zero, bb147
bb146:
  FLW fs1, 0(s10)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs3, fs0, fs2
  ADDI s8, zero, 32
  MULW s1, s11, s8
  LA s8, test_dct
  ADD s9, s8, s1
  FLW fs2, 0(s9)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  FSW fs2, 0(s10)
  ADDIW s1, s11, 1
  ADD s2, s1, zero
  JAL zero, bb145
bb147:
  ADDI s1, zero, 1
  JAL zero, bb148
bb148:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s8, s2, t4
  BNE s8, zero, bb149
  JAL zero, bb150
bb149:
  FLW fs1, 0(s10)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs3, fs0, fs2
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s8, test_dct
  ADD s11, s8, s9
  FLW fs2, 0(s11)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  FSW fs2, 0(s10)
  ADDIW s8, s2, 1
  ADD s1, s8, zero
  JAL zero, bb148
bb150:
  ADD s1, s2, zero
  ADDI s2, zero, 1
  JAL zero, bb151
bb151:
  ADD t4, s2, zero
  SW t4, 208(sp)
  ADD s9, s1, zero
  LW t4, 208(sp)
  LW t3, 8(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb152
  JAL zero, bb153
bb152:
  ADDI s11, zero, 1
  JAL zero, bb154
bb153:
  FLW fs0, 0(s10)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  LW t4, 8(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  LW t4, 0(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  FSW fs1, 0(s10)
  ADDIW s0, s7, 1
  ADD s6, s9, zero
  LW t4, 208(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  JAL zero, bb142
bb154:
  ADD s0, s11, zero
  LW t4, 0(sp)
  SLT s3, s0, t4
  BNE s3, zero, bb155
  JAL zero, bb158
bb155:
  FLW ft4, 0(s10)
  FSW ft4, 248(sp)
  ADDI s3, zero, 32
  LW t4, 208(sp)
  MULW s4, t4, s3
  LA s3, test_dct
  ADD s8, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s3, s8, s4
  FLW ft4, 0(s3)
  FSW ft4, 240(sp)
  LW t4, 8(sp)
  FCVT.S.W fs2, t4
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S fs4, fs3, fs2
  LA s3, .CONSTANT.7.3
  FLW fs2, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs3, 0(s3)
  FDIV.S ft4, fs2, fs3
  FSW ft4, 232(sp)
  LW t4, 192(sp)
  FCVT.S.W fs2, t4
  FLW ft4, 232(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  LW t4, 208(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 224(sp)
  FLW ft3, 224(sp)
  FADD.S ft4, fs4, ft3
  FSW ft4, 216(sp)
  LA s3, .CONSTANT.7.4
  FLW fs3, 0(s3)
  FLW ft4, 216(sp)
  FLT.S s3, fs3, ft4
  BNE s3, zero, bb189
  JAL zero, bb190
bb156:
  FSGNJ.S fs10, fs11, fs11
  FLW ft4, 240(sp)
  FMUL.S fs11, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs10, t4
  LA s4, .CONSTANT.7.2
  FLW fs2, 0(s4)
  FDIV.S fs6, fs2, fs10
  FCVT.S.W fs2, s7
  FLW ft4, 232(sp)
  FADD.S fs10, fs2, ft4
  FMUL.S fs2, fs6, fs10
  FCVT.S.W fs6, s0
  FMUL.S fs10, fs2, fs6
  FLW ft4, 224(sp)
  FADD.S fs2, fs10, ft4
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FLT.S s4, fs6, fs2
  BNE s4, zero, bb199
  JAL zero, bb200
bb157:
  FSGNJ.S fs4, fs7, fs7
  FMUL.S fs7, fs11, fs4
  FLW ft4, 248(sp)
  FADD.S fs4, ft4, fs7
  FSW fs4, 0(s10)
  ADDIW s8, s0, 1
  ADD s11, s8, zero
  JAL zero, bb154
bb158:
  LW t4, 208(sp)
  ADDIW s3, t4, 1
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb151
bb159:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb160
bb160:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADD s6, t4, zero
  LW t4, 48(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb161
  JAL zero, bb162
bb161:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb163
bb162:
  JAL zero, bb174
bb163:
  LW t4, 64(sp)
  ADD s9, t4, zero
  ADD t4, s7, zero
  SW t4, 24(sp)
  ADD t4, s8, zero
  SW t4, 40(sp)
  LW t4, 0(sp)
  SLT s1, s9, t4
  BNE s1, zero, bb164
  JAL zero, bb165
bb164:
  ADDI s1, zero, 32
  LW t4, 56(sp)
  MULW s0, t4, s1
  LA s1, test_dct
  ADD s4, s1, s0
  ADDI s0, zero, 4
  MULW s1, s9, s0
  ADD s0, s4, s1
  FCVT.S.L fs2, zero
  FSW fs2, 0(s0)
  LW t4, 40(sp)
  ADD s1, t4, zero
  ADD s4, zero, zero
  JAL zero, bb166
bb165:
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb160
bb166:
  ADD t4, s4, zero
  SW t4, 72(sp)
  ADD s3, s1, zero
  LW t4, 72(sp)
  LW t3, 8(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb167
  JAL zero, bb168
bb167:
  ADD s11, zero, zero
  JAL zero, bb169
bb168:
  ADDIW s0, s9, 1
  ADD s8, s3, zero
  LW t4, 72(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb163
bb169:
  ADD s2, s11, zero
  LW t4, 0(sp)
  SLT s5, s2, t4
  BNE s5, zero, bb170
  JAL zero, bb173
bb170:
  FLW ft4, 0(s0)
  FSW ft4, 120(sp)
  ADDI s5, zero, 32
  LW t4, 72(sp)
  MULW s6, t4, s5
  LA s5, test_block
  ADD s10, s5, s6
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s10, s6
  FLW ft4, 0(s5)
  FSW ft4, 112(sp)
  LW t4, 8(sp)
  FCVT.S.W fs4, t4
  LA s5, .CONSTANT.7.2
  FLW fs5, 0(s5)
  FDIV.S fs6, fs5, fs4
  LA s5, .CONSTANT.7.3
  FLW fs4, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs5, 0(s5)
  FDIV.S ft4, fs4, fs5
  FSW ft4, 104(sp)
  LW t4, 72(sp)
  FCVT.S.W fs4, t4
  FLW ft4, 104(sp)
  FADD.S fs5, fs4, ft4
  FMUL.S fs4, fs6, fs5
  LW t4, 56(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs6, fs4, fs5
  ADDI s5, zero, 2
  FCVT.S.W fs4, s5
  LA s5, .CONSTANT.7.2
  FLW fs5, 0(s5)
  FDIV.S ft4, fs5, fs4
  FSW ft4, 96(sp)
  FLW ft3, 96(sp)
  FADD.S ft4, fs6, ft3
  FSW ft4, 88(sp)
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FLW ft4, 88(sp)
  FLT.S s5, fs5, ft4
  BNE s5, zero, bb209
  JAL zero, bb210
bb171:
  FSGNJ.S fs11, fs4, fs4
  FLW ft4, 112(sp)
  FMUL.S fs4, ft4, fs11
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  LA s6, .CONSTANT.7.2
  FLW fs8, 0(s6)
  FDIV.S fs7, fs8, fs11
  FCVT.S.W fs8, s2
  FLW ft4, 104(sp)
  FADD.S fs11, fs8, ft4
  FMUL.S fs8, fs7, fs11
  FCVT.S.W fs7, s9
  FMUL.S fs11, fs8, fs7
  FLW ft4, 96(sp)
  FADD.S fs7, fs11, ft4
  LA s6, .CONSTANT.7.4
  FLW fs8, 0(s6)
  FLT.S s6, fs8, fs7
  BNE s6, zero, bb219
  JAL zero, bb220
bb172:
  FSGNJ.S fs9, fs5, fs5
  FMUL.S fs5, fs4, fs9
  FLW ft4, 120(sp)
  FADD.S fs9, ft4, fs5
  FSW fs9, 0(s0)
  ADDIW s10, s2, 1
  ADD s11, s10, zero
  JAL zero, bb169
bb173:
  LW t4, 72(sp)
  ADDIW s5, t4, 1
  ADD s1, s2, zero
  ADD s4, s5, zero
  JAL zero, bb166
bb174:
  ADD s0, zero, zero
  JAL zero, bb175
bb175:
  ADD s1, s0, zero
  LW t4, 8(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb176
  JAL zero, bb177
bb176:
  ADDI s2, zero, 32
  MULW s3, s1, s2
  LA s2, test_dct
  ADD s4, s2, s3
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  JAL zero, bb178
bb177:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb138
bb178:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb179
  JAL zero, bb180
bb179:
  ADDI a0, zero, 32
  CALL putch
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s4, s6
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb178
bb180:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb175
bb181:
  ADD s0, zero, zero
  JAL zero, bb182
bb182:
  ADD s1, s0, zero
  LW t4, 8(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s2, zero, 32
  MULW s3, s1, s2
  LA s2, test_idct
  ADD s4, s2, s3
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  JAL zero, bb185
bb184:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb134
bb185:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb186
  JAL zero, bb187
bb186:
  ADDI a0, zero, 32
  CALL putch
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s4, s6
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb185
bb187:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb182
bb188:
  FSGNJ.S fs10, fs11, fs11
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb156
bb189:
  ADDI s3, zero, 1
  JAL zero, bb191
bb190:
  LA s4, .CONSTANT.7.4
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs1, 0(s4)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 216(sp)
  FLT.S s4, ft4, fs2
  ADD s3, s4, zero
  JAL zero, bb191
bb191:
  ADD s4, s3, zero
  BNE s4, zero, bb192
  JAL zero, bb228
bb192:
  LA s4, .CONSTANT.7.4
  FLW fs3, 0(s4)
  FLW ft4, 216(sp)
  FDIV.S fs4, ft4, fs3
  FCVT.W.S s4, fs4, rtz
  FCVT.S.W fs3, s4
  LA s4, .CONSTANT.7.4
  FLW fs4, 0(s4)
  FMUL.S fs7, fs3, fs4
  FLW ft4, 216(sp)
  FSUB.S fs3, ft4, fs7
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 256(sp)
  JAL zero, bb193
bb193:
  FLW ft4, 256(sp)
  FLW ft3, 256(sp)
  FSGNJ.S fs3, ft4, ft3
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FLT.S s4, fs7, fs3
  BNE s4, zero, bb194
  JAL zero, bb229
bb194:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FSUB.S fs8, fs3, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 264(sp)
  JAL zero, bb195
bb195:
  FLW ft4, 264(sp)
  FLW ft3, 264(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSGNJN.S ft4, fs9, fs10
  FSW ft4, 80(sp)
  FLW ft4, 80(sp)
  FLT.S s4, fs8, ft4
  BNE s4, zero, bb196
  JAL zero, bb230
bb196:
  LA s4, .CONSTANT.7.4
  FLW fs9, 0(s4)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb197
bb197:
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb188
bb198:
  FSGNJ.S fs4, fs7, fs7
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb157
bb199:
  ADDI s4, zero, 1
  JAL zero, bb201
bb200:
  LA s8, .CONSTANT.7.4
  FLW fs0, 0(s8)
  LA s8, .CONSTANT.7.4
  FLW fs1, 0(s8)
  FSGNJN.S fs4, fs0, fs1
  FLT.S s8, fs2, fs4
  ADD s4, s8, zero
  JAL zero, bb201
bb201:
  ADD s8, s4, zero
  BNE s8, zero, bb202
  JAL zero, bb231
bb202:
  LA s8, .CONSTANT.7.4
  FLW fs6, 0(s8)
  FDIV.S fs10, fs2, fs6
  FCVT.W.S s8, fs10, rtz
  FCVT.S.W fs6, s8
  LA s8, .CONSTANT.7.4
  FLW fs10, 0(s8)
  FMUL.S fs5, fs6, fs10
  FSUB.S fs6, fs2, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb203
bb203:
  FSGNJ.S fs6, fs5, fs5
  LA s8, .CONSTANT.7.2
  FLW fs10, 0(s8)
  FLT.S s8, fs10, fs6
  BNE s8, zero, bb204
  JAL zero, bb232
bb204:
  LA s8, .CONSTANT.7.4
  FLW fs10, 0(s8)
  FSUB.S fs1, fs6, fs10
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb205
bb205:
  FSGNJ.S fs1, fs10, fs10
  FLW ft4, 80(sp)
  FLT.S s8, fs1, ft4
  BNE s8, zero, bb206
  JAL zero, bb233
bb206:
  LA s8, .CONSTANT.7.4
  FLW fs0, 0(s8)
  FADD.S fs4, fs1, fs0
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb207
bb207:
  FSGNJ.S fs4, fs0, fs0
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb198
bb208:
  FSGNJ.S fs11, fs4, fs4
  FSGNJ.S fs4, fs11, fs11
  JAL zero, bb171
bb209:
  ADDI s5, zero, 1
  JAL zero, bb211
bb210:
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 88(sp)
  FLT.S s6, ft4, fs2
  ADD s5, s6, zero
  JAL zero, bb211
bb211:
  ADD s6, s5, zero
  BNE s6, zero, bb212
  JAL zero, bb234
bb212:
  LA s6, .CONSTANT.7.4
  FLW fs5, 0(s6)
  FLW ft4, 88(sp)
  FDIV.S fs6, ft4, fs5
  FCVT.W.S s6, fs6, rtz
  FCVT.S.W fs5, s6
  LA s6, .CONSTANT.7.4
  FLW fs6, 0(s6)
  FMUL.S fs9, fs5, fs6
  FLW ft4, 88(sp)
  FSUB.S fs5, ft4, fs9
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 128(sp)
  JAL zero, bb213
bb213:
  FLW ft3, 128(sp)
  FLW ft4, 128(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 144(sp)
  LA s6, .CONSTANT.7.2
  FLW fs9, 0(s6)
  FLW ft4, 144(sp)
  FLT.S s6, fs9, ft4
  BNE s6, zero, bb214
  JAL zero, bb235
bb214:
  LA s6, .CONSTANT.7.4
  FLW fs9, 0(s6)
  FLW ft4, 144(sp)
  FSUB.S fs10, ft4, fs9
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 136(sp)
  JAL zero, bb215
bb215:
  FLW ft4, 136(sp)
  FLW ft3, 136(sp)
  FSGNJ.S fs10, ft4, ft3
  LA s6, .CONSTANT.7.2
  FLW fs11, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs1, 0(s6)
  FSGNJN.S fs0, fs11, fs1
  FLT.S s6, fs10, fs0
  BNE s6, zero, bb216
  JAL zero, bb236
bb216:
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FADD.S fs11, fs10, fs1
  FSGNJ.S fs1, fs11, fs11
  JAL zero, bb217
bb217:
  FSGNJ.S fs11, fs1, fs1
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs11, fa0, fa0
  FSGNJ.S fs4, fs11, fs11
  JAL zero, bb208
bb218:
  FSGNJ.S fs9, fs5, fs5
  FSGNJ.S fs5, fs9, fs9
  JAL zero, bb172
bb219:
  ADDI s6, zero, 1
  JAL zero, bb221
bb220:
  LA s10, .CONSTANT.7.4
  FLW fs2, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs3, 0(s10)
  FSGNJN.S fs5, fs2, fs3
  FLT.S s10, fs7, fs5
  ADD s6, s10, zero
  JAL zero, bb221
bb221:
  ADD s10, s6, zero
  BNE s10, zero, bb222
  JAL zero, bb237
bb222:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FDIV.S fs11, fs7, fs8
  FCVT.W.S s10, fs11, rtz
  FCVT.S.W fs8, s10
  LA s10, .CONSTANT.7.4
  FLW fs11, 0(s10)
  FMUL.S fs3, fs8, fs11
  FSUB.S fs8, fs7, fs3
  FSGNJ.S fs3, fs8, fs8
  JAL zero, bb223
bb223:
  FSGNJ.S fs8, fs3, fs3
  LA s10, .CONSTANT.7.2
  FLW fs11, 0(s10)
  FLT.S s10, fs11, fs8
  BNE s10, zero, bb224
  JAL zero, bb238
bb224:
  LA s10, .CONSTANT.7.4
  FLW fs11, 0(s10)
  FSUB.S fs2, fs8, fs11
  FSGNJ.S fs11, fs2, fs2
  JAL zero, bb225
bb225:
  FSGNJ.S fs2, fs11, fs11
  FLT.S s10, fs2, fs0
  BNE s10, zero, bb226
  JAL zero, bb239
bb226:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FADD.S fs9, fs2, fs6
  FSGNJ.S fs6, fs9, fs9
  JAL zero, bb227
bb227:
  FSGNJ.S fs9, fs6, fs6
  FSGNJ.S fa0, fs9, fs9
  CALL my_sin_impl
  FSGNJ.D fs9, fa0, fa0
  FSGNJ.S fs5, fs9, fs9
  JAL zero, bb218
bb228:
  FLW ft3, 216(sp)
  FLW ft4, 216(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 256(sp)
  JAL zero, bb193
bb229:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 264(sp)
  JAL zero, bb195
bb230:
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb197
bb231:
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb203
bb232:
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb205
bb233:
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb207
bb234:
  FLW ft3, 88(sp)
  FLW ft4, 88(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 128(sp)
  JAL zero, bb213
bb235:
  FLW ft3, 144(sp)
  FLW ft4, 144(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 136(sp)
  JAL zero, bb215
bb236:
  FSGNJ.S fs1, fs10, fs10
  JAL zero, bb217
bb237:
  FSGNJ.S fs3, fs7, fs7
  JAL zero, bb223
bb238:
  FSGNJ.S fs11, fs8, fs8
  JAL zero, bb225
bb239:
  FSGNJ.S fs6, fs2, fs2
  JAL zero, bb227
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb241
  JAL zero, bb242
bb241:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb242:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
