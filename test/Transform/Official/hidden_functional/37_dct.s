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
  ADDI sp, sp, -288
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs11, 104(sp)
  FSD fs8, 112(sp)
  FSD fs7, 120(sp)
  SD s1, 128(sp)
  SD s6, 136(sp)
  SD s5, 144(sp)
  SD s4, 152(sp)
  SD s9, 160(sp)
  FSD fs4, 168(sp)
  SD s8, 176(sp)
  FSD fs3, 184(sp)
  FSD fs9, 192(sp)
  SD s10, 200(sp)
  FSD fs0, 208(sp)
  SD s7, 216(sp)
  FSD fs2, 224(sp)
  FSD fs10, 232(sp)
  SD ra, 240(sp)
  SD s11, 248(sp)
  FSD fs1, 256(sp)
  SD s0, 264(sp)
  SD s3, 272(sp)
  SD s2, 280(sp)
  ADD t4, a0, zero
  SD t4, 16(sp)
  ADD t4, a1, zero
  SD t4, 8(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb1
bb1:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 4(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb2
  JAL zero, bb3
bb2:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb4
bb3:
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs11, 104(sp)
  FLD fs8, 112(sp)
  FLD fs7, 120(sp)
  LD s1, 128(sp)
  LD s6, 136(sp)
  LD s5, 144(sp)
  LD s4, 152(sp)
  LD s9, 160(sp)
  FLD fs4, 168(sp)
  LD s8, 176(sp)
  FLD fs3, 184(sp)
  FLD fs9, 192(sp)
  LD s10, 200(sp)
  FLD fs0, 208(sp)
  LD s7, 216(sp)
  FLD fs2, 224(sp)
  FLD fs10, 232(sp)
  LD ra, 240(sp)
  LD s11, 248(sp)
  FLD fs1, 256(sp)
  LD s0, 264(sp)
  LD s3, 272(sp)
  LD s2, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s10, zero
  SW t4, 40(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 16(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD t4, t2, a5
  SD t4, 48(sp)
  ADDI t2, zero, 1
  FCVT.S.W fs0, t2
  LA t2, .CONSTANT.7.0
  FLW fs1, 0(t2)
  FDIV.S fs2, fs0, fs1
  LD t4, 8(sp)
  FLW fs1, 0(t4)
  FMUL.S fs3, fs2, fs1
  LD t4, 48(sp)
  FSW fs3, 0(t4)
  ADDI t2, zero, 1
  JAL zero, bb7
bb6:
  ADDIW s0, s7, 1
  LW t4, 40(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  JAL zero, bb1
bb7:
  ADD a5, t2, zero
  LW t4, 4(sp)
  SLT a6, a5, t4
  BNE a6, zero, bb8
  JAL zero, bb9
bb8:
  LD t4, 48(sp)
  FLW fs1, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs2, 0(a6)
  FDIV.S fs3, fs0, fs2
  ADDI a6, zero, 32
  MULW a7, a5, a6
  LD t4, 8(sp)
  ADD a6, t4, a7
  FLW fs2, 0(a6)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  LD t4, 48(sp)
  FSW fs2, 0(t4)
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
  LD t4, 48(sp)
  FLW fs1, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs2, 0(a6)
  FDIV.S fs3, fs0, fs2
  ADDI a6, zero, 4
  MULW a7, a5, a6
  LD t4, 8(sp)
  ADD a6, t4, a7
  FLW fs2, 0(a6)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  LD t4, 48(sp)
  FSW fs2, 0(t4)
  ADDIW a6, a5, 1
  ADD t2, a6, zero
  JAL zero, bb10
bb12:
  ADD t4, a5, zero
  SW t4, 36(sp)
  ADDI t4, zero, 1
  SW t4, 32(sp)
  JAL zero, bb13
bb13:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  LW t3, 4(sp)
  SLT t6, t4, t3
  BNE t6, zero, bb14
  JAL zero, bb15
bb14:
  ADDI t4, zero, 1
  SW t4, 56(sp)
  JAL zero, bb16
bb15:
  LD t4, 48(sp)
  FLW fs0, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  LW t4, 4(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  LW t4, 0(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LD t4, 48(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s11, 1
  LW t4, 24(sp)
  ADD s10, t4, zero
  LW t4, 28(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb4
bb16:
  LW t4, 56(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  SLT s2, s3, t4
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  LD t4, 48(sp)
  FLW ft4, 0(t4)
  FSW ft4, 76(sp)
  ADDI s2, zero, 32
  LW t4, 28(sp)
  MULW s1, t4, s2
  LD t4, 8(sp)
  ADD s2, t4, s1
  ADDI s1, zero, 4
  MULW s0, s3, s1
  ADD s1, s2, s0
  FLW ft4, 0(s1)
  FSW ft4, 72(sp)
  LW t4, 4(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S fs4, fs3, fs2
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FDIV.S ft4, fs2, fs3
  FSW ft4, 68(sp)
  FCVT.S.W fs2, s7
  FLW ft4, 68(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  LW t4, 28(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 64(sp)
  FLW ft3, 64(sp)
  FADD.S ft4, fs4, ft3
  FSW ft4, 60(sp)
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FLW ft4, 60(sp)
  FLT.S s0, fs3, ft4
  BNE s0, zero, bb19
  JAL zero, bb20
bb18:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  ADD t4, s3, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb13
bb19:
  ADDI s0, zero, 1
  JAL zero, bb21
bb20:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 60(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  JAL zero, bb21
bb21:
  ADD s1, s0, zero
  BNE s1, zero, bb22
  JAL zero, bb37
bb22:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FLW ft4, 60(sp)
  FDIV.S fs4, ft4, fs3
  FCVT.W.S s1, fs4, rtz
  FCVT.S.W fs3, s1
  LA s1, .CONSTANT.7.4
  FLW fs4, 0(s1)
  FMUL.S fs7, fs3, fs4
  FLW ft4, 60(sp)
  FSUB.S fs3, ft4, fs7
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 80(sp)
  JAL zero, bb23
bb23:
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs3, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs3
  BNE s1, zero, bb24
  JAL zero, bb38
bb24:
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FSUB.S fs8, fs3, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 84(sp)
  JAL zero, bb25
bb25:
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs9, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s1, fs8, fs11
  BNE s1, zero, bb26
  JAL zero, bb39
bb26:
  LA s1, .CONSTANT.7.4
  FLW fs9, 0(s1)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb27
bb27:
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FLW ft4, 72(sp)
  FMUL.S fs2, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs10, t4
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FDIV.S fs5, fs6, fs10
  FCVT.S.W fs6, s11
  FLW ft4, 68(sp)
  FADD.S fs10, fs6, ft4
  FMUL.S fs6, fs5, fs10
  FCVT.S.W fs5, s3
  FMUL.S fs10, fs6, fs5
  FLW ft4, 64(sp)
  FADD.S fs5, fs10, ft4
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FLT.S s1, fs6, fs5
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s1, zero, 1
  JAL zero, bb30
bb29:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FSGNJN.S fs4, fs0, fs1
  FLT.S s2, fs5, fs4
  ADD s1, s2, zero
  JAL zero, bb30
bb30:
  ADD s2, s1, zero
  BNE s2, zero, bb31
  JAL zero, bb40
bb31:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs10, fs5, fs6
  FCVT.W.S s2, fs10, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FMUL.S fs1, fs6, fs10
  FSUB.S fs6, fs5, fs1
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb32
bb32:
  FSGNJ.S fs6, fs1, fs1
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs6
  BNE s2, zero, bb33
  JAL zero, bb41
bb33:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb34
bb34:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s2, fs0, fs11
  BNE s2, zero, bb35
  JAL zero, bb42
bb35:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb36
bb36:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S ft0, fs2, fs7
  FLW ft4, 76(sp)
  FADD.S fs7, ft4, ft0
  LD t4, 48(sp)
  FSW fs7, 0(t4)
  ADDIW s2, s3, 1
  ADD t4, s2, zero
  SW t4, 56(sp)
  JAL zero, bb16
bb37:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  JAL zero, bb23
bb38:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 84(sp)
  JAL zero, bb25
bb39:
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb27
bb40:
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb32
bb41:
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb34
bb42:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb36
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
  BNE s0, zero, bb47
  JAL zero, bb48
bb44:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.5
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb45
  JAL zero, bb46
bb45:
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
bb46:
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
bb47:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb44
bb48:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb44
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
  ADDI sp, sp, -304
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs11, 112(sp)
  FSD fs8, 120(sp)
  FSD fs7, 128(sp)
  SD s6, 136(sp)
  SD s5, 144(sp)
  SD s4, 152(sp)
  SD s9, 160(sp)
  FSD fs4, 168(sp)
  SD s8, 176(sp)
  FSD fs3, 184(sp)
  FSD fs9, 192(sp)
  SD s10, 200(sp)
  FSD fs0, 208(sp)
  SD s7, 216(sp)
  FSD fs2, 224(sp)
  FSD fs10, 232(sp)
  SD ra, 240(sp)
  SD s11, 248(sp)
  FSD fs1, 256(sp)
  SD s0, 264(sp)
  SD s3, 272(sp)
  SD s2, 280(sp)
  SD s1, 288(sp)
  ADD t4, a0, zero
  SD t4, 16(sp)
  ADD t4, a1, zero
  SD t4, 8(sp)
  ADD t4, a2, zero
  SW t4, 4(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb51
bb51:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 4(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb52
  JAL zero, bb53
bb52:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb54
bb53:
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs11, 112(sp)
  FLD fs8, 120(sp)
  FLD fs7, 128(sp)
  LD s6, 136(sp)
  LD s5, 144(sp)
  LD s4, 152(sp)
  LD s9, 160(sp)
  FLD fs4, 168(sp)
  LD s8, 176(sp)
  FLD fs3, 184(sp)
  FLD fs9, 192(sp)
  LD s10, 200(sp)
  FLD fs0, 208(sp)
  LD s7, 216(sp)
  FLD fs2, 224(sp)
  FLD fs10, 232(sp)
  LD ra, 240(sp)
  LD s11, 248(sp)
  FLD fs1, 256(sp)
  LD s0, 264(sp)
  LD s3, 272(sp)
  LD s2, 280(sp)
  LD s1, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb54:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s10, zero
  SW t4, 40(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb55
  JAL zero, bb56
bb55:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 16(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD t4, t2, a5
  SD t4, 32(sp)
  FCVT.S.L fs0, zero
  LD t4, 32(sp)
  FSW fs0, 0(t4)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  JAL zero, bb57
bb56:
  ADDIW s0, s7, 1
  LW t4, 40(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  JAL zero, bb51
bb57:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 24(sp)
  LW t3, 4(sp)
  SLT t6, t4, t3
  BNE t6, zero, bb58
  JAL zero, bb59
bb58:
  ADD t4, zero, zero
  SW t4, 60(sp)
  JAL zero, bb60
bb59:
  ADDIW s0, s11, 1
  LW t4, 56(sp)
  ADD s10, t4, zero
  LW t4, 24(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb54
bb60:
  LW t4, 60(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  SLT s2, s3, t4
  BNE s2, zero, bb61
  JAL zero, bb62
bb61:
  LD t4, 32(sp)
  FLW ft4, 0(t4)
  FSW ft4, 80(sp)
  ADDI s2, zero, 32
  LW t4, 24(sp)
  MULW s1, t4, s2
  LD t4, 8(sp)
  ADD s2, t4, s1
  ADDI s1, zero, 4
  MULW s0, s3, s1
  ADD s1, s2, s0
  FLW ft4, 0(s1)
  FSW ft4, 76(sp)
  LW t4, 4(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S fs4, fs3, fs2
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FDIV.S ft4, fs2, fs3
  FSW ft4, 72(sp)
  LW t4, 24(sp)
  FCVT.S.W fs2, t4
  FLW ft4, 72(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  FCVT.S.W fs3, s7
  FMUL.S fs4, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 68(sp)
  FLW ft3, 68(sp)
  FADD.S ft4, fs4, ft3
  FSW ft4, 64(sp)
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FLW ft4, 64(sp)
  FLT.S s0, fs3, ft4
  BNE s0, zero, bb63
  JAL zero, bb64
bb62:
  LW t4, 24(sp)
  ADDIW s0, t4, 1
  ADD t4, s3, zero
  SW t4, 48(sp)
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb57
bb63:
  ADDI s0, zero, 1
  JAL zero, bb65
bb64:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 64(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  JAL zero, bb65
bb65:
  ADD s1, s0, zero
  BNE s1, zero, bb66
  JAL zero, bb81
bb66:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FLW ft4, 64(sp)
  FDIV.S fs4, ft4, fs3
  FCVT.W.S s1, fs4, rtz
  FCVT.S.W fs3, s1
  LA s1, .CONSTANT.7.4
  FLW fs4, 0(s1)
  FMUL.S fs7, fs3, fs4
  FLW ft4, 64(sp)
  FSUB.S fs3, ft4, fs7
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 84(sp)
  JAL zero, bb67
bb67:
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs3, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs3
  BNE s1, zero, bb68
  JAL zero, bb82
bb68:
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FSUB.S fs8, fs3, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 88(sp)
  JAL zero, bb69
bb69:
  FLW ft4, 88(sp)
  FLW ft3, 88(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs9, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s1, fs8, fs11
  BNE s1, zero, bb70
  JAL zero, bb83
bb70:
  LA s1, .CONSTANT.7.4
  FLW fs9, 0(s1)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb71
bb71:
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FLW ft4, 76(sp)
  FMUL.S fs2, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs10, t4
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FDIV.S fs5, fs6, fs10
  FCVT.S.W fs6, s3
  FLW ft4, 72(sp)
  FADD.S fs10, fs6, ft4
  FMUL.S fs6, fs5, fs10
  FCVT.S.W fs5, s11
  FMUL.S fs10, fs6, fs5
  FLW ft4, 68(sp)
  FADD.S fs5, fs10, ft4
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FLT.S s1, fs6, fs5
  BNE s1, zero, bb72
  JAL zero, bb73
bb72:
  ADDI s1, zero, 1
  JAL zero, bb74
bb73:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FSGNJN.S fs4, fs0, fs1
  FLT.S s2, fs5, fs4
  ADD s1, s2, zero
  JAL zero, bb74
bb74:
  ADD s2, s1, zero
  BNE s2, zero, bb75
  JAL zero, bb84
bb75:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs10, fs5, fs6
  FCVT.W.S s2, fs10, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FMUL.S fs1, fs6, fs10
  FSUB.S fs6, fs5, fs1
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb76
bb76:
  FSGNJ.S fs6, fs1, fs1
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs6
  BNE s2, zero, bb77
  JAL zero, bb85
bb77:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb78
bb78:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s2, fs0, fs11
  BNE s2, zero, bb79
  JAL zero, bb86
bb79:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb80
bb80:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S ft0, fs2, fs7
  FLW ft4, 80(sp)
  FADD.S fs7, ft4, ft0
  LD t4, 32(sp)
  FSW fs7, 0(t4)
  ADDIW s2, s3, 1
  ADD t4, s2, zero
  SW t4, 60(sp)
  JAL zero, bb60
bb81:
  FLW ft3, 64(sp)
  FLW ft4, 64(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 84(sp)
  JAL zero, bb67
bb82:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 88(sp)
  JAL zero, bb69
bb83:
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb71
bb84:
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb76
bb85:
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb78
bb86:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb80
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
  BNE s0, zero, bb88
  JAL zero, bb89
bb88:
  ADDI s0, zero, 1
  JAL zero, bb90
bb89:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb90
bb90:
  ADD s1, s0, zero
  BNE s1, zero, bb91
  JAL zero, bb97
bb91:
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
  JAL zero, bb92
bb92:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb93
  JAL zero, bb98
bb93:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb94
bb94:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb95
  JAL zero, bb99
bb95:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb96
bb96:
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
bb97:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb92
bb98:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb94
bb99:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb96
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
  JAL zero, bb101
bb101:
  ADD s4, s3, zero
  SLT s5, s4, s1
  BNE s5, zero, bb102
  JAL zero, bb103
bb102:
  ADDI s5, zero, 32
  MULW s6, s4, s5
  ADD s5, s0, s6
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s6, zero, 1
  JAL zero, bb104
bb103:
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
bb104:
  ADD s7, s6, zero
  SLT s8, s7, s2
  BNE s8, zero, bb105
  JAL zero, bb106
bb105:
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
  JAL zero, bb104
bb106:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb101
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
  BNE s0, zero, bb108
  JAL zero, bb109
bb108:
  ADDI s0, zero, 1
  JAL zero, bb110
bb109:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb110
bb110:
  ADD s1, s0, zero
  BNE s1, zero, bb111
  JAL zero, bb117
bb111:
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
  JAL zero, bb112
bb112:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb113
  JAL zero, bb118
bb113:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb114
bb114:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb115
  JAL zero, bb119
bb115:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb116
bb116:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
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
bb117:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb112
bb118:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb114
bb119:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb116
main:
  ADDI sp, sp, -336
  FSD fs5, 136(sp)
  SD s8, 144(sp)
  FSD fs3, 152(sp)
  SD s6, 160(sp)
  SD s0, 168(sp)
  SD s5, 176(sp)
  SD s4, 184(sp)
  SD s3, 192(sp)
  SD s2, 200(sp)
  FSD fs0, 208(sp)
  FSD fs8, 216(sp)
  SD s7, 224(sp)
  FSD fs2, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  FSD fs6, 256(sp)
  FSD fs1, 264(sp)
  SD s1, 272(sp)
  SD s9, 280(sp)
  FSD fs4, 288(sp)
  FSD fs9, 296(sp)
  FSD fs7, 304(sp)
  SD ra, 312(sp)
  FSD fs10, 320(sp)
  FSD fs11, 328(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s2, zero, zero
  JAL zero, bb121
bb121:
  ADD s3, s2, zero
  LW t4, 4(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb122
  JAL zero, bb123
bb122:
  ADD s4, zero, zero
  JAL zero, bb124
bb123:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb145
bb124:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s6, zero, 32
  MULW s7, s3, s6
  LA s6, test_block
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb124
bb126:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb121
bb127:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 80(sp)
  ADD s4, t4, zero
  LW t4, 88(sp)
  ADD s5, t4, zero
  LW t4, 92(sp)
  LW t3, 4(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb128
  JAL zero, bb129
bb128:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD t4, zero, zero
  SW t4, 96(sp)
  JAL zero, bb130
bb129:
  ADD s0, zero, zero
  JAL zero, bb163
bb130:
  LW t4, 96(sp)
  ADD s7, t4, zero
  ADD t4, s5, zero
  SW t4, 76(sp)
  ADD t4, s6, zero
  SW t4, 84(sp)
  LW t4, 0(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb131
  JAL zero, bb132
bb131:
  ADDI s10, zero, 32
  LW t4, 92(sp)
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
  JAL zero, bb133
bb132:
  LW t4, 92(sp)
  ADDIW s0, t4, 1
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb127
bb133:
  ADD s11, s2, zero
  LW t4, 4(sp)
  SLT s8, s11, t4
  BNE s8, zero, bb134
  JAL zero, bb135
bb134:
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
  JAL zero, bb133
bb135:
  ADDI s1, zero, 1
  JAL zero, bb136
bb136:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s8, s2, t4
  BNE s8, zero, bb137
  JAL zero, bb138
bb137:
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
  JAL zero, bb136
bb138:
  ADD s1, s2, zero
  ADDI s2, zero, 1
  JAL zero, bb139
bb139:
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD s9, s1, zero
  LW t4, 100(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb140
  JAL zero, bb141
bb140:
  ADDI s11, zero, 1
  JAL zero, bb142
bb141:
  FLW fs0, 0(s10)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  LW t4, 4(sp)
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
  LW t4, 100(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb130
bb142:
  ADD s0, s11, zero
  LW t4, 0(sp)
  SLT s3, s0, t4
  BNE s3, zero, bb143
  JAL zero, bb144
bb143:
  FLW ft4, 0(s10)
  FSW ft4, 120(sp)
  ADDI s3, zero, 32
  LW t4, 100(sp)
  MULW s4, t4, s3
  LA s3, test_dct
  ADD s8, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s3, s8, s4
  FLW ft4, 0(s3)
  FSW ft4, 116(sp)
  LW t4, 4(sp)
  FCVT.S.W fs2, t4
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S fs4, fs3, fs2
  LA s3, .CONSTANT.7.3
  FLW fs2, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs3, 0(s3)
  FDIV.S ft4, fs2, fs3
  FSW ft4, 112(sp)
  LW t4, 92(sp)
  FCVT.S.W fs2, t4
  FLW ft4, 112(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  LW t4, 100(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 108(sp)
  FLW ft3, 108(sp)
  FADD.S ft4, fs4, ft3
  FSW ft4, 104(sp)
  LA s3, .CONSTANT.7.4
  FLW fs3, 0(s3)
  FLW ft4, 104(sp)
  FLT.S s3, fs3, ft4
  BNE s3, zero, bb169
  JAL zero, bb170
bb144:
  LW t4, 100(sp)
  ADDIW s3, t4, 1
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb139
bb145:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t4, 24(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  LW t3, 4(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb146
  JAL zero, bb147
bb146:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb148
bb147:
  ADD s0, zero, zero
  JAL zero, bb157
bb148:
  LW t4, 32(sp)
  ADD s9, t4, zero
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 20(sp)
  LW t4, 0(sp)
  SLT s1, s9, t4
  BNE s1, zero, bb149
  JAL zero, bb150
bb149:
  ADDI s1, zero, 32
  LW t4, 28(sp)
  MULW s0, t4, s1
  LA s1, test_dct
  ADD s4, s1, s0
  ADDI s0, zero, 4
  MULW s1, s9, s0
  ADD s0, s4, s1
  FCVT.S.L fs0, zero
  FSW fs0, 0(s0)
  LW t4, 20(sp)
  ADD s1, t4, zero
  ADD s4, zero, zero
  JAL zero, bb151
bb150:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb145
bb151:
  ADD t4, s4, zero
  SW t4, 36(sp)
  ADD s3, s1, zero
  LW t4, 36(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb152
  JAL zero, bb153
bb152:
  ADD s11, zero, zero
  JAL zero, bb154
bb153:
  ADDIW s0, s9, 1
  ADD s8, s3, zero
  LW t4, 36(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb148
bb154:
  ADD s2, s11, zero
  LW t4, 0(sp)
  SLT s5, s2, t4
  BNE s5, zero, bb155
  JAL zero, bb156
bb155:
  FLW ft4, 0(s0)
  FSW ft4, 56(sp)
  ADDI s5, zero, 32
  LW t4, 36(sp)
  MULW s6, t4, s5
  LA s5, test_block
  ADD s10, s5, s6
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s10, s6
  FLW ft4, 0(s5)
  FSW ft4, 52(sp)
  LW t4, 4(sp)
  FCVT.S.W fs2, t4
  LA s5, .CONSTANT.7.2
  FLW fs3, 0(s5)
  FDIV.S fs4, fs3, fs2
  LA s5, .CONSTANT.7.3
  FLW fs2, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs3, 0(s5)
  FDIV.S ft4, fs2, fs3
  FSW ft4, 48(sp)
  LW t4, 36(sp)
  FCVT.S.W fs2, t4
  FLW ft4, 48(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  LW t4, 28(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  ADDI s5, zero, 2
  FCVT.S.W fs2, s5
  LA s5, .CONSTANT.7.2
  FLW fs3, 0(s5)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 44(sp)
  FLW ft3, 44(sp)
  FADD.S ft4, fs4, ft3
  FSW ft4, 40(sp)
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FLW ft4, 40(sp)
  FLT.S s5, fs3, ft4
  BNE s5, zero, bb187
  JAL zero, bb188
bb156:
  LW t4, 36(sp)
  ADDIW s5, t4, 1
  ADD s1, s2, zero
  ADD s4, s5, zero
  JAL zero, bb151
bb157:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb158
  JAL zero, bb159
bb158:
  ADDI s2, zero, 32
  MULW s3, s1, s2
  LA s2, test_dct
  ADD s4, s2, s3
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  JAL zero, bb160
bb159:
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb127
bb160:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb161
  JAL zero, bb162
bb161:
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
  JAL zero, bb160
bb162:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb157
bb163:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb164
  JAL zero, bb165
bb164:
  ADDI s2, zero, 32
  MULW s3, s1, s2
  LA s2, test_idct
  ADD s4, s2, s3
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  JAL zero, bb166
bb165:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  FLD fs5, 136(sp)
  LD s8, 144(sp)
  FLD fs3, 152(sp)
  LD s6, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s4, 184(sp)
  LD s3, 192(sp)
  LD s2, 200(sp)
  FLD fs0, 208(sp)
  FLD fs8, 216(sp)
  LD s7, 224(sp)
  FLD fs2, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  FLD fs6, 256(sp)
  FLD fs1, 264(sp)
  LD s1, 272(sp)
  LD s9, 280(sp)
  FLD fs4, 288(sp)
  FLD fs9, 296(sp)
  FLD fs7, 304(sp)
  LD ra, 312(sp)
  FLD fs10, 320(sp)
  FLD fs11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb166:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb167
  JAL zero, bb168
bb167:
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
  JAL zero, bb166
bb168:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb163
bb169:
  ADDI s3, zero, 1
  JAL zero, bb171
bb170:
  LA s4, .CONSTANT.7.4
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs1, 0(s4)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 104(sp)
  FLT.S s4, ft4, fs2
  ADD s3, s4, zero
  JAL zero, bb171
bb171:
  ADD s4, s3, zero
  BNE s4, zero, bb172
  JAL zero, bb205
bb172:
  LA s4, .CONSTANT.7.4
  FLW fs3, 0(s4)
  FLW ft4, 104(sp)
  FDIV.S fs4, ft4, fs3
  FCVT.W.S s4, fs4, rtz
  FCVT.S.W fs3, s4
  LA s4, .CONSTANT.7.4
  FLW fs4, 0(s4)
  FMUL.S fs7, fs3, fs4
  FLW ft4, 104(sp)
  FSUB.S fs3, ft4, fs7
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 124(sp)
  JAL zero, bb173
bb173:
  FLW ft3, 124(sp)
  FLW ft4, 124(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 132(sp)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FLW ft4, 132(sp)
  FLT.S s4, fs7, ft4
  BNE s4, zero, bb174
  JAL zero, bb206
bb174:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FLW ft4, 132(sp)
  FSUB.S fs8, ft4, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 128(sp)
  JAL zero, bb175
bb175:
  FLW ft4, 128(sp)
  FLW ft3, 128(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s4, fs8, fs11
  BNE s4, zero, bb176
  JAL zero, bb207
bb176:
  LA s4, .CONSTANT.7.4
  FLW fs9, 0(s4)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb177
bb177:
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FLW ft4, 116(sp)
  FMUL.S fs2, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs10, t4
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  FDIV.S fs5, fs6, fs10
  FCVT.S.W fs6, s7
  FLW ft4, 112(sp)
  FADD.S fs10, fs6, ft4
  FMUL.S fs6, fs5, fs10
  FCVT.S.W fs5, s0
  FMUL.S fs10, fs6, fs5
  FLW ft4, 108(sp)
  FADD.S fs5, fs10, ft4
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FLT.S s4, fs6, fs5
  BNE s4, zero, bb178
  JAL zero, bb179
bb178:
  ADDI s4, zero, 1
  JAL zero, bb180
bb179:
  LA s8, .CONSTANT.7.4
  FLW fs0, 0(s8)
  LA s8, .CONSTANT.7.4
  FLW fs1, 0(s8)
  FSGNJN.S fs3, fs0, fs1
  FLT.S s8, fs5, fs3
  ADD s4, s8, zero
  JAL zero, bb180
bb180:
  ADD s8, s4, zero
  BNE s8, zero, bb181
  JAL zero, bb208
bb181:
  LA s8, .CONSTANT.7.4
  FLW fs6, 0(s8)
  FDIV.S fs10, fs5, fs6
  FCVT.W.S s8, fs10, rtz
  FCVT.S.W fs6, s8
  LA s8, .CONSTANT.7.4
  FLW fs10, 0(s8)
  FMUL.S fs1, fs6, fs10
  FSUB.S fs6, fs5, fs1
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb182
bb182:
  FSGNJ.S fs6, fs1, fs1
  LA s8, .CONSTANT.7.2
  FLW fs10, 0(s8)
  FLT.S s8, fs10, fs6
  BNE s8, zero, bb183
  JAL zero, bb209
bb183:
  LA s8, .CONSTANT.7.4
  FLW fs10, 0(s8)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb184
bb184:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s8, fs0, fs11
  BNE s8, zero, bb185
  JAL zero, bb210
bb185:
  LA s8, .CONSTANT.7.4
  FLW fs4, 0(s8)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb186
bb186:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S fs3, fs2, fs7
  FLW ft4, 120(sp)
  FADD.S fs7, ft4, fs3
  FSW fs7, 0(s10)
  ADDIW s8, s0, 1
  ADD s11, s8, zero
  JAL zero, bb142
bb187:
  ADDI s5, zero, 1
  JAL zero, bb189
bb188:
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 40(sp)
  FLT.S s6, ft4, fs2
  ADD s5, s6, zero
  JAL zero, bb189
bb189:
  ADD s6, s5, zero
  BNE s6, zero, bb190
  JAL zero, bb211
bb190:
  LA s6, .CONSTANT.7.4
  FLW fs3, 0(s6)
  FLW ft4, 40(sp)
  FDIV.S fs4, ft4, fs3
  FCVT.W.S s6, fs4, rtz
  FCVT.S.W fs3, s6
  LA s6, .CONSTANT.7.4
  FLW fs4, 0(s6)
  FMUL.S fs7, fs3, fs4
  FLW ft4, 40(sp)
  FSUB.S fs3, ft4, fs7
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 60(sp)
  JAL zero, bb191
bb191:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  LA s6, .CONSTANT.7.2
  FLW fs7, 0(s6)
  FLW ft4, 68(sp)
  FLT.S s6, fs7, ft4
  BNE s6, zero, bb192
  JAL zero, bb212
bb192:
  LA s6, .CONSTANT.7.4
  FLW fs7, 0(s6)
  FLW ft4, 68(sp)
  FSUB.S fs8, ft4, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 64(sp)
  JAL zero, bb193
bb193:
  FLW ft4, 64(sp)
  FLW ft3, 64(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s6, .CONSTANT.7.2
  FLW fs9, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs10, 0(s6)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s6, fs8, fs11
  BNE s6, zero, bb194
  JAL zero, bb213
bb194:
  LA s6, .CONSTANT.7.4
  FLW fs9, 0(s6)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb195
bb195:
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs10, fa0, fa0
  FLW ft4, 52(sp)
  FMUL.S fs2, ft4, fs10
  LW t4, 0(sp)
  FCVT.S.W fs10, t4
  LA s6, .CONSTANT.7.2
  FLW fs6, 0(s6)
  FDIV.S fs5, fs6, fs10
  FCVT.S.W fs6, s2
  FLW ft4, 48(sp)
  FADD.S fs10, fs6, ft4
  FMUL.S fs6, fs5, fs10
  FCVT.S.W fs5, s9
  FMUL.S fs10, fs6, fs5
  FLW ft4, 44(sp)
  FADD.S fs5, fs10, ft4
  LA s6, .CONSTANT.7.4
  FLW fs6, 0(s6)
  FLT.S s6, fs6, fs5
  BNE s6, zero, bb196
  JAL zero, bb197
bb196:
  ADDI s6, zero, 1
  JAL zero, bb198
bb197:
  LA s10, .CONSTANT.7.4
  FLW fs0, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs1, 0(s10)
  FSGNJN.S fs3, fs0, fs1
  FLT.S s10, fs5, fs3
  ADD s6, s10, zero
  JAL zero, bb198
bb198:
  ADD s10, s6, zero
  BNE s10, zero, bb199
  JAL zero, bb214
bb199:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FDIV.S fs10, fs5, fs6
  FCVT.W.S s10, fs10, rtz
  FCVT.S.W fs6, s10
  LA s10, .CONSTANT.7.4
  FLW fs10, 0(s10)
  FMUL.S fs1, fs6, fs10
  FSUB.S fs6, fs5, fs1
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb200
bb200:
  FSGNJ.S fs6, fs1, fs1
  LA s10, .CONSTANT.7.2
  FLW fs10, 0(s10)
  FLT.S s10, fs10, fs6
  BNE s10, zero, bb201
  JAL zero, bb215
bb201:
  LA s10, .CONSTANT.7.4
  FLW fs10, 0(s10)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb202
bb202:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s10, fs0, fs11
  BNE s10, zero, bb203
  JAL zero, bb216
bb203:
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb204
bb204:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S fs3, fs2, fs7
  FLW ft4, 56(sp)
  FADD.S fs7, ft4, fs3
  FSW fs7, 0(s0)
  ADDIW s10, s2, 1
  ADD s11, s10, zero
  JAL zero, bb154
bb205:
  FLW ft3, 104(sp)
  FLW ft4, 104(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 124(sp)
  JAL zero, bb173
bb206:
  FLW ft3, 132(sp)
  FLW ft4, 132(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 128(sp)
  JAL zero, bb175
bb207:
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb177
bb208:
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb182
bb209:
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb184
bb210:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb186
bb211:
  FLW ft3, 40(sp)
  FLW ft4, 40(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  JAL zero, bb191
bb212:
  FLW ft3, 68(sp)
  FLW ft4, 68(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  JAL zero, bb193
bb213:
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb195
bb214:
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb200
bb215:
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb202
bb216:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb204
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb218
  JAL zero, bb219
bb218:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
