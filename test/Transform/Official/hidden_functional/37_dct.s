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
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 4(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb3
  # implict jump to bb2
bb2:
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
bb3:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  # implict jump to bb4
bb4:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 40(sp)
  ADD t4, s10, zero
  SW t4, 56(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s0, s7, 1
  LW t4, 56(sp)
  ADD s4, t4, zero
  LW t4, 40(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  JAL zero, bb1
bb6:
  SLLIW t2, s7, 5
  LD t4, 16(sp)
  ADD a4, t4, t2
  SLLIW t2, s11, 2
  ADD t4, a4, t2
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
  # implict jump to bb7
bb7:
  ADD a4, t2, zero
  LW t4, 4(sp)
  SLT a6, a4, t4
  BNE a6, zero, bb42
  # implict jump to bb8
bb8:
  ADDI t2, zero, 1
  # implict jump to bb9
bb9:
  ADD a4, t2, zero
  LW t4, 0(sp)
  SLT a6, a4, t4
  BNE a6, zero, bb41
  # implict jump to bb10
bb10:
  ADD t4, a4, zero
  SW t4, 36(sp)
  ADDI t4, zero, 1
  SW t4, 32(sp)
  # implict jump to bb11
bb11:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 44(sp)
  LW t3, 4(sp)
  SLT t6, t4, t3
  BNE t6, zero, bb13
  # implict jump to bb12
bb12:
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
  LW t4, 28(sp)
  ADD s10, t4, zero
  LW t4, 44(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb4
bb13:
  ADDI t4, zero, 1
  SW t4, 24(sp)
  # implict jump to bb14
bb14:
  LW t4, 24(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  SLT s2, s3, t4
  BNE s2, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s3, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb11
bb16:
  LD t4, 48(sp)
  FLW ft4, 0(t4)
  FSW ft4, 76(sp)
  LW t4, 44(sp)
  SLLIW s2, t4, 5
  LD t4, 8(sp)
  ADD s1, t4, s2
  SLLIW s2, s3, 2
  ADD s0, s1, s2
  FLW ft4, 0(s0)
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
  LW t4, 44(sp)
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
  BNE s0, zero, bb40
  # implict jump to bb17
bb17:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 60(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  # implict jump to bb18
bb18:
  ADD s1, s0, zero
  BNE s1, zero, bb39
  # implict jump to bb19
bb19:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  # implict jump to bb20
bb20:
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs3, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs3
  BNE s1, zero, bb38
  # implict jump to bb21
bb21:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 84(sp)
  # implict jump to bb22
bb22:
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs9, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s1, fs8, fs11
  BNE s1, zero, bb37
  # implict jump to bb23
bb23:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb24
bb24:
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
  BNE s1, zero, bb36
  # implict jump to bb25
bb25:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FSGNJN.S fs4, fs0, fs1
  FLT.S s2, fs5, fs4
  ADD s1, s2, zero
  # implict jump to bb26
bb26:
  ADD s2, s1, zero
  BNE s2, zero, bb35
  # implict jump to bb27
bb27:
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb28
bb28:
  FSGNJ.S fs6, fs1, fs1
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs6
  BNE s2, zero, bb34
  # implict jump to bb29
bb29:
  FSGNJ.S fs10, fs6, fs6
  # implict jump to bb30
bb30:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s2, fs0, fs11
  BNE s2, zero, bb33
  # implict jump to bb31
bb31:
  FSGNJ.S fs4, fs0, fs0
  # implict jump to bb32
bb32:
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
  SW t4, 24(sp)
  JAL zero, bb14
bb33:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb32
bb34:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb30
bb35:
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
  JAL zero, bb28
bb36:
  ADDI s1, zero, 1
  JAL zero, bb26
bb37:
  LA s1, .CONSTANT.7.4
  FLW fs9, 0(s1)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb24
bb38:
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FSUB.S fs8, fs3, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 84(sp)
  JAL zero, bb22
bb39:
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
  JAL zero, bb20
bb40:
  ADDI s0, zero, 1
  JAL zero, bb18
bb41:
  LD t4, 48(sp)
  FLW fs1, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs2, 0(a6)
  FDIV.S fs3, fs0, fs2
  SLLIW a6, a4, 2
  LD t4, 8(sp)
  ADD a7, t4, a6
  FLW fs2, 0(a7)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  LD t4, 48(sp)
  FSW fs2, 0(t4)
  ADDIW a6, a4, 1
  ADD t2, a6, zero
  JAL zero, bb9
bb42:
  LD t4, 48(sp)
  FLW fs1, 0(t4)
  LA a6, .CONSTANT.7.1
  FLW fs2, 0(a6)
  FDIV.S fs3, fs0, fs2
  SLLIW a6, a4, 5
  LD t4, 8(sp)
  ADD a7, t4, a6
  FLW fs2, 0(a7)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  LD t4, 48(sp)
  FSW fs2, 0(t4)
  ADDIW a6, a4, 1
  ADD t2, a6, zero
  JAL zero, bb7
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
  BNE s0, zero, bb48
  # implict jump to bb44
bb44:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb45
bb45:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.5
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb47
  # implict jump to bb46
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
bb48:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb45
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
  ADDI sp, sp, -288
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs11, 104(sp)
  FSD fs8, 112(sp)
  SD s6, 120(sp)
  SD s5, 128(sp)
  SD s4, 136(sp)
  SD s9, 144(sp)
  FSD fs4, 152(sp)
  SD s8, 160(sp)
  FSD fs3, 168(sp)
  FSD fs9, 176(sp)
  SD s10, 184(sp)
  FSD fs0, 192(sp)
  SD s7, 200(sp)
  FSD fs2, 208(sp)
  FSD fs10, 216(sp)
  SD ra, 224(sp)
  SD s11, 232(sp)
  FSD fs1, 240(sp)
  SD s0, 248(sp)
  SD s3, 256(sp)
  SD s2, 264(sp)
  SD s1, 272(sp)
  FSD fs7, 280(sp)
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
  # implict jump to bb51
bb51:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 4(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb53
  # implict jump to bb52
bb52:
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs11, 104(sp)
  FLD fs8, 112(sp)
  LD s6, 120(sp)
  LD s5, 128(sp)
  LD s4, 136(sp)
  LD s9, 144(sp)
  FLD fs4, 152(sp)
  LD s8, 160(sp)
  FLD fs3, 168(sp)
  FLD fs9, 176(sp)
  LD s10, 184(sp)
  FLD fs0, 192(sp)
  LD s7, 200(sp)
  FLD fs2, 208(sp)
  FLD fs10, 216(sp)
  LD ra, 224(sp)
  LD s11, 232(sp)
  FLD fs1, 240(sp)
  LD s0, 248(sp)
  LD s3, 256(sp)
  LD s2, 264(sp)
  LD s1, 272(sp)
  FLD fs7, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb53:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  # implict jump to bb54
bb54:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s10, zero
  SW t4, 32(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  BNE t2, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW s0, s7, 1
  LW t4, 32(sp)
  ADD s4, t4, zero
  LW t4, 44(sp)
  ADD s5, t4, zero
  ADD s6, s0, zero
  JAL zero, bb51
bb56:
  SLLIW t2, s7, 5
  LD t4, 16(sp)
  ADD a4, t4, t2
  SLLIW t2, s11, 2
  ADD t4, a4, t2
  SD t4, 48(sp)
  FCVT.S.L fs0, zero
  LD t4, 48(sp)
  FSW fs0, 0(t4)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb57
bb57:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 56(sp)
  LW t3, 4(sp)
  SLT t6, t4, t3
  BNE t6, zero, bb59
  # implict jump to bb58
bb58:
  ADDIW s0, s11, 1
  LW t4, 40(sp)
  ADD s10, t4, zero
  LW t4, 56(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb54
bb59:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb60
bb60:
  LW t4, 28(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  SLT s2, s3, t4
  BNE s2, zero, bb62
  # implict jump to bb61
bb61:
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  ADD t4, s3, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb57
bb62:
  LD t4, 48(sp)
  FLW ft4, 0(t4)
  FSW ft4, 76(sp)
  LW t4, 56(sp)
  SLLIW s2, t4, 5
  LD t4, 8(sp)
  ADD s1, t4, s2
  SLLIW s2, s3, 2
  ADD s0, s1, s2
  FLW ft4, 0(s0)
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
  LW t4, 56(sp)
  FCVT.S.W fs2, t4
  FLW ft4, 68(sp)
  FADD.S fs3, fs2, ft4
  FMUL.S fs2, fs4, fs3
  FCVT.S.W fs3, s7
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
  BNE s0, zero, bb86
  # implict jump to bb63
bb63:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 60(sp)
  FLT.S s1, ft4, fs2
  ADD s0, s1, zero
  # implict jump to bb64
bb64:
  ADD s1, s0, zero
  BNE s1, zero, bb85
  # implict jump to bb65
bb65:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  # implict jump to bb66
bb66:
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs3, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs7, 0(s1)
  FLT.S s1, fs7, fs3
  BNE s1, zero, bb84
  # implict jump to bb67
bb67:
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 84(sp)
  # implict jump to bb68
bb68:
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s1, .CONSTANT.7.2
  FLW fs9, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs10, 0(s1)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s1, fs8, fs11
  BNE s1, zero, bb83
  # implict jump to bb69
bb69:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb70
bb70:
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
  FCVT.S.W fs6, s3
  FLW ft4, 68(sp)
  FADD.S fs10, fs6, ft4
  FMUL.S fs6, fs5, fs10
  FCVT.S.W fs5, s11
  FMUL.S fs10, fs6, fs5
  FLW ft4, 64(sp)
  FADD.S fs5, fs10, ft4
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FLT.S s1, fs6, fs5
  BNE s1, zero, bb82
  # implict jump to bb71
bb71:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  FSGNJN.S fs4, fs0, fs1
  FLT.S s2, fs5, fs4
  ADD s1, s2, zero
  # implict jump to bb72
bb72:
  ADD s2, s1, zero
  BNE s2, zero, bb81
  # implict jump to bb73
bb73:
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb74
bb74:
  FSGNJ.S fs6, fs1, fs1
  LA s2, .CONSTANT.7.2
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs6
  BNE s2, zero, bb80
  # implict jump to bb75
bb75:
  FSGNJ.S fs10, fs6, fs6
  # implict jump to bb76
bb76:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s2, fs0, fs11
  BNE s2, zero, bb79
  # implict jump to bb77
bb77:
  FSGNJ.S fs4, fs0, fs0
  # implict jump to bb78
bb78:
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
  SW t4, 28(sp)
  JAL zero, bb60
bb79:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb78
bb80:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb76
bb81:
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
  JAL zero, bb74
bb82:
  ADDI s1, zero, 1
  JAL zero, bb72
bb83:
  LA s1, .CONSTANT.7.4
  FLW fs9, 0(s1)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb70
bb84:
  LA s1, .CONSTANT.7.4
  FLW fs7, 0(s1)
  FSUB.S fs8, fs3, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 84(sp)
  JAL zero, bb68
bb85:
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
  JAL zero, bb66
bb86:
  ADDI s0, zero, 1
  JAL zero, bb64
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
  BNE s0, zero, bb99
  # implict jump to bb88
bb88:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  # implict jump to bb89
bb89:
  ADD s1, s0, zero
  BNE s1, zero, bb98
  # implict jump to bb90
bb90:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb91
bb91:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb97
  # implict jump to bb92
bb92:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb93
bb93:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb96
  # implict jump to bb94
bb94:
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb95
bb95:
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
bb96:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb95
bb97:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb93
bb98:
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
  JAL zero, bb91
bb99:
  ADDI s0, zero, 1
  JAL zero, bb89
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
  # implict jump to bb101
bb101:
  ADD s4, s3, zero
  SLT s5, s4, s1
  BNE s5, zero, bb103
  # implict jump to bb102
bb102:
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
bb103:
  SLLIW s5, s4, 5
  ADD s6, s0, s5
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s5, zero, 1
  # implict jump to bb104
bb104:
  ADD s7, s5, zero
  SLT s8, s7, s2
  BNE s8, zero, bb106
  # implict jump to bb105
bb105:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb101
bb106:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s8, s7, 2
  ADD s9, s6, s8
  FLW fs0, 0(s9)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s8, s7, 1
  ADD s5, s8, zero
  JAL zero, bb104
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
  BNE s0, zero, bb119
  # implict jump to bb108
bb108:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  # implict jump to bb109
bb109:
  ADD s1, s0, zero
  BNE s1, zero, bb118
  # implict jump to bb110
bb110:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb111
bb111:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb117
  # implict jump to bb112
bb112:
  FSGNJ.S fs3, fs0, fs0
  # implict jump to bb113
bb113:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb116
  # implict jump to bb114
bb114:
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb115
bb115:
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
bb116:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb115
bb117:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb113
bb118:
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
  JAL zero, bb111
bb119:
  ADDI s0, zero, 1
  JAL zero, bb109
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
  # implict jump to bb121
bb121:
  ADD s3, s2, zero
  LW t4, 4(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb213
  # implict jump to bb122
bb122:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb123
bb123:
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
  BNE s8, zero, bb179
  # implict jump to bb124
bb124:
  ADD s0, zero, zero
  # implict jump to bb125
bb125:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb175
  # implict jump to bb126
bb126:
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb127
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
  BNE s6, zero, bb135
  # implict jump to bb128
bb128:
  ADD s0, zero, zero
  # implict jump to bb129
bb129:
  ADD s1, s0, zero
  LW t4, 4(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb131
  # implict jump to bb130
bb130:
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
bb131:
  SLLIW s2, s1, 5
  LA s3, test_idct
  ADD s4, s3, s2
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  # implict jump to bb132
bb132:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb134
  # implict jump to bb133
bb133:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb129
bb134:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s5, s3, 2
  ADD s6, s4, s5
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb132
bb135:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb136
bb136:
  LW t4, 96(sp)
  ADD s7, t4, zero
  ADD t4, s5, zero
  SW t4, 76(sp)
  ADD t4, s6, zero
  SW t4, 84(sp)
  LW t4, 0(sp)
  SLT s10, s7, t4
  BNE s10, zero, bb138
  # implict jump to bb137
bb137:
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
bb138:
  LW t4, 92(sp)
  SLLIW s10, t4, 5
  LA s11, test_idct
  ADD s2, s11, s10
  SLLIW s10, s7, 2
  ADD s11, s2, s10
  ADDI s2, zero, 1
  FCVT.S.W fs0, s2
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FDIV.S fs2, fs0, fs1
  LA s2, test_dct
  FLW fs1, 0(s2)
  FMUL.S fs3, fs2, fs1
  FSW fs3, 0(s11)
  ADDI s2, zero, 1
  # implict jump to bb139
bb139:
  ADD s10, s2, zero
  LW t4, 4(sp)
  SLT s8, s10, t4
  BNE s8, zero, bb174
  # implict jump to bb140
bb140:
  ADDI s1, zero, 1
  # implict jump to bb141
bb141:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s8, s2, t4
  BNE s8, zero, bb173
  # implict jump to bb142
bb142:
  ADD s1, s2, zero
  ADDI s2, zero, 1
  # implict jump to bb143
bb143:
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD s9, s1, zero
  LW t4, 100(sp)
  LW t3, 4(sp)
  SLT s10, t4, t3
  BNE s10, zero, bb145
  # implict jump to bb144
bb144:
  FLW fs0, 0(s11)
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
  FSW fs1, 0(s11)
  ADDIW s0, s7, 1
  ADD s6, s9, zero
  LW t4, 100(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb136
bb145:
  ADDI s10, zero, 1
  # implict jump to bb146
bb146:
  ADD s0, s10, zero
  LW t4, 0(sp)
  SLT s3, s0, t4
  BNE s3, zero, bb148
  # implict jump to bb147
bb147:
  LW t4, 100(sp)
  ADDIW s3, t4, 1
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb143
bb148:
  FLW ft4, 0(s11)
  FSW ft4, 120(sp)
  LW t4, 100(sp)
  SLLIW s3, t4, 5
  LA s4, test_dct
  ADD s8, s4, s3
  SLLIW s3, s0, 2
  ADD s4, s8, s3
  FLW ft4, 0(s4)
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
  BNE s3, zero, bb172
  # implict jump to bb149
bb149:
  LA s4, .CONSTANT.7.4
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs1, 0(s4)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 104(sp)
  FLT.S s4, ft4, fs2
  ADD s3, s4, zero
  # implict jump to bb150
bb150:
  ADD s4, s3, zero
  BNE s4, zero, bb171
  # implict jump to bb151
bb151:
  FLW ft3, 104(sp)
  FLW ft4, 104(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 124(sp)
  # implict jump to bb152
bb152:
  FLW ft3, 124(sp)
  FLW ft4, 124(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 132(sp)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FLW ft4, 132(sp)
  FLT.S s4, fs7, ft4
  BNE s4, zero, bb170
  # implict jump to bb153
bb153:
  FLW ft3, 132(sp)
  FLW ft4, 132(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 128(sp)
  # implict jump to bb154
bb154:
  FLW ft4, 128(sp)
  FLW ft3, 128(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s4, fs8, fs11
  BNE s4, zero, bb169
  # implict jump to bb155
bb155:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb156
bb156:
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
  BNE s4, zero, bb168
  # implict jump to bb157
bb157:
  LA s8, .CONSTANT.7.4
  FLW fs0, 0(s8)
  LA s8, .CONSTANT.7.4
  FLW fs1, 0(s8)
  FSGNJN.S fs3, fs0, fs1
  FLT.S s8, fs5, fs3
  ADD s4, s8, zero
  # implict jump to bb158
bb158:
  ADD s8, s4, zero
  BNE s8, zero, bb167
  # implict jump to bb159
bb159:
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb160
bb160:
  FSGNJ.S fs6, fs1, fs1
  LA s8, .CONSTANT.7.2
  FLW fs10, 0(s8)
  FLT.S s8, fs10, fs6
  BNE s8, zero, bb166
  # implict jump to bb161
bb161:
  FSGNJ.S fs10, fs6, fs6
  # implict jump to bb162
bb162:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s8, fs0, fs11
  BNE s8, zero, bb165
  # implict jump to bb163
bb163:
  FSGNJ.S fs4, fs0, fs0
  # implict jump to bb164
bb164:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S fs3, fs2, fs7
  FLW ft4, 120(sp)
  FADD.S fs7, ft4, fs3
  FSW fs7, 0(s11)
  ADDIW s8, s0, 1
  ADD s10, s8, zero
  JAL zero, bb146
bb165:
  LA s8, .CONSTANT.7.4
  FLW fs4, 0(s8)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb164
bb166:
  LA s8, .CONSTANT.7.4
  FLW fs10, 0(s8)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb162
bb167:
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
  JAL zero, bb160
bb168:
  ADDI s4, zero, 1
  JAL zero, bb158
bb169:
  LA s4, .CONSTANT.7.4
  FLW fs9, 0(s4)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb156
bb170:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FLW ft4, 132(sp)
  FSUB.S fs8, ft4, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 128(sp)
  JAL zero, bb154
bb171:
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
  JAL zero, bb152
bb172:
  ADDI s3, zero, 1
  JAL zero, bb150
bb173:
  FLW fs1, 0(s11)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs3, fs0, fs2
  SLLIW s8, s2, 2
  LA s9, test_dct
  ADD s10, s9, s8
  FLW fs2, 0(s10)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  FSW fs2, 0(s11)
  ADDIW s8, s2, 1
  ADD s1, s8, zero
  JAL zero, bb141
bb174:
  FLW fs1, 0(s11)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs3, fs0, fs2
  SLLIW s8, s10, 5
  LA s1, test_dct
  ADD s9, s1, s8
  FLW fs2, 0(s9)
  FMUL.S fs4, fs3, fs2
  FADD.S fs2, fs1, fs4
  FSW fs2, 0(s11)
  ADDIW s1, s10, 1
  ADD s2, s1, zero
  JAL zero, bb139
bb175:
  SLLIW s2, s1, 5
  LA s3, test_dct
  ADD s4, s3, s2
  FLW fs0, 0(s4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s2, zero, 1
  # implict jump to bb176
bb176:
  ADD s3, s2, zero
  LW t4, 0(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb178
  # implict jump to bb177
bb177:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb125
bb178:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s5, s3, 2
  ADD s6, s4, s5
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb176
bb179:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb180
bb180:
  LW t4, 32(sp)
  ADD s9, t4, zero
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 20(sp)
  LW t4, 0(sp)
  SLT s1, s9, t4
  BNE s1, zero, bb182
  # implict jump to bb181
bb181:
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
  JAL zero, bb123
bb182:
  LW t4, 28(sp)
  SLLIW s1, t4, 5
  LA s0, test_dct
  ADD s4, s0, s1
  SLLIW s0, s9, 2
  ADD s1, s4, s0
  FCVT.S.L fs0, zero
  FSW fs0, 0(s1)
  LW t4, 20(sp)
  ADD s0, t4, zero
  ADD s4, zero, zero
  # implict jump to bb183
bb183:
  ADD t4, s4, zero
  SW t4, 36(sp)
  ADD s3, s0, zero
  LW t4, 36(sp)
  LW t3, 4(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb185
  # implict jump to bb184
bb184:
  ADDIW s0, s9, 1
  ADD s8, s3, zero
  LW t4, 36(sp)
  ADD s7, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb180
bb185:
  ADD s11, zero, zero
  # implict jump to bb186
bb186:
  ADD s2, s11, zero
  LW t4, 0(sp)
  SLT s5, s2, t4
  BNE s5, zero, bb188
  # implict jump to bb187
bb187:
  LW t4, 36(sp)
  ADDIW s5, t4, 1
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb183
bb188:
  FLW ft4, 0(s1)
  FSW ft4, 56(sp)
  LW t4, 36(sp)
  SLLIW s5, t4, 5
  LA s6, test_block
  ADD s10, s6, s5
  SLLIW s5, s2, 2
  ADD s6, s10, s5
  FLW ft4, 0(s6)
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
  BNE s5, zero, bb212
  # implict jump to bb189
bb189:
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 40(sp)
  FLT.S s6, ft4, fs2
  ADD s5, s6, zero
  # implict jump to bb190
bb190:
  ADD s6, s5, zero
  BNE s6, zero, bb211
  # implict jump to bb191
bb191:
  FLW ft3, 40(sp)
  FLW ft4, 40(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  # implict jump to bb192
bb192:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  LA s6, .CONSTANT.7.2
  FLW fs7, 0(s6)
  FLW ft4, 68(sp)
  FLT.S s6, fs7, ft4
  BNE s6, zero, bb210
  # implict jump to bb193
bb193:
  FLW ft3, 68(sp)
  FLW ft4, 68(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  # implict jump to bb194
bb194:
  FLW ft4, 64(sp)
  FLW ft3, 64(sp)
  FSGNJ.S fs8, ft4, ft3
  LA s6, .CONSTANT.7.2
  FLW fs9, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs10, 0(s6)
  FSGNJN.S fs11, fs9, fs10
  FLT.S s6, fs8, fs11
  BNE s6, zero, bb209
  # implict jump to bb195
bb195:
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb196
bb196:
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
  BNE s6, zero, bb208
  # implict jump to bb197
bb197:
  LA s10, .CONSTANT.7.4
  FLW fs0, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs1, 0(s10)
  FSGNJN.S fs3, fs0, fs1
  FLT.S s10, fs5, fs3
  ADD s6, s10, zero
  # implict jump to bb198
bb198:
  ADD s10, s6, zero
  BNE s10, zero, bb207
  # implict jump to bb199
bb199:
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb200
bb200:
  FSGNJ.S fs6, fs1, fs1
  LA s10, .CONSTANT.7.2
  FLW fs10, 0(s10)
  FLT.S s10, fs10, fs6
  BNE s10, zero, bb206
  # implict jump to bb201
bb201:
  FSGNJ.S fs10, fs6, fs6
  # implict jump to bb202
bb202:
  FSGNJ.S fs0, fs10, fs10
  FLT.S s10, fs0, fs11
  BNE s10, zero, bb205
  # implict jump to bb203
bb203:
  FSGNJ.S fs4, fs0, fs0
  # implict jump to bb204
bb204:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FMUL.S fs3, fs2, fs7
  FLW ft4, 56(sp)
  FADD.S fs7, ft4, fs3
  FSW fs7, 0(s1)
  ADDIW s10, s2, 1
  ADD s11, s10, zero
  JAL zero, bb186
bb205:
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  FADD.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb204
bb206:
  LA s10, .CONSTANT.7.4
  FLW fs10, 0(s10)
  FSUB.S fs0, fs6, fs10
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb202
bb207:
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
bb208:
  ADDI s6, zero, 1
  JAL zero, bb198
bb209:
  LA s6, .CONSTANT.7.4
  FLW fs9, 0(s6)
  FADD.S fs10, fs8, fs9
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb196
bb210:
  LA s6, .CONSTANT.7.4
  FLW fs7, 0(s6)
  FLW ft4, 68(sp)
  FSUB.S fs8, ft4, fs7
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 64(sp)
  JAL zero, bb194
bb211:
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
  JAL zero, bb192
bb212:
  ADDI s5, zero, 1
  JAL zero, bb190
bb213:
  ADD s4, zero, zero
  # implict jump to bb214
bb214:
  ADD s5, s4, zero
  LW t4, 0(sp)
  SLT s6, s5, t4
  BNE s6, zero, bb216
  # implict jump to bb215
bb215:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb121
bb216:
  SLLIW s6, s3, 5
  LA s7, test_block
  ADD s8, s7, s6
  SLLIW s6, s5, 2
  ADD s7, s8, s6
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s7)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb214
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
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
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
