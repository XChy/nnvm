.global sample
.global trace
.global my_sin_impl
.global p
.global my_sqrt
.global circle_sdf
.global my_fabs
.global my_sin
.global rand
.global scene
.global my_cos
.global main
.global write_pgm
.section .bss






















.section .data
seed:
.word 0x00000000
MAX_DISTANCE:
.word 0x40000000
MAX_STEP:
.word 0x0000000a
EPSILON:
.word 0x358637bd
PI:
.word 0x40490fdb
TWO_PI:
.word 0x40c90fdb
N:
.word 0x00000018
RAND_MAX:
.word 0x05f5e106
H:
.word 0x000000c0
W:
.word 0x000000c0
.CONSTANT.7.0:
.word 0x00000000
.CONSTANT.7.1:
.word 0x3ecccccd
.CONSTANT.7.2:
.word 0x3f000000
.CONSTANT.7.3:
.word 0x40000000
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x40490fdb
.CONSTANT.7.6:
.word 0x40400000
.CONSTANT.7.7:
.word 0x358637bd
.CONSTANT.7.8:
.word 0x3dcccccd
.CONSTANT.7.9:
.word 0x3f19999a
.CONSTANT.7.10:
.word 0x3d4ccccd
.CONSTANT.7.11:
.word 0x437f0000
.section .text
sample:
  ADDI sp, sp, -240
  SD s10, 48(sp)
  SD s9, 56(sp)
  SD s8, 64(sp)
  FSD fs11, 72(sp)
  FSD fs6, 80(sp)
  FSD fs4, 88(sp)
  FSD fs2, 96(sp)
  SD s4, 104(sp)
  FSD fs10, 112(sp)
  SD ra, 120(sp)
  SD s1, 128(sp)
  FSD fs9, 136(sp)
  FSD fs8, 144(sp)
  SD s0, 152(sp)
  SD s3, 160(sp)
  SD s2, 168(sp)
  FSD fs7, 176(sp)
  SD s6, 184(sp)
  FSD fs0, 192(sp)
  FSD fs1, 200(sp)
  SD s5, 208(sp)
  FSD fs3, 216(sp)
  FSD fs5, 224(sp)
  SD s7, 232(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 40(sp)
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 28(sp)
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs7, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs8, 0(s1)
  FSGNJ.S fs9, fs7, fs8
  JAL zero, bb1
bb1:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 20(sp)
  ADD s1, s0, zero
  SLTI s2, s1, 24
  BNE s2, zero, bb2
  JAL zero, bb4
bb2:
  LA s2, seed
  LW s3, 0(s2)
  LUI s2, 4878
  ADDIW s2, s2, -158
  MULW s4, s3, s2
  LUI s2, 6
  ADDIW s2, s2, -1243
  ADDW s3, s4, s2
  LUI s2, 24414
  ADDIW s2, s2, 263
  REMW s4, s3, s2
  LA s2, seed
  SW s4, 0(s2)
  SLT s2, s4, zero
  BNE s2, zero, bb22
  JAL zero, bb23
bb3:
  FSGNJ.S ft0, ft2, ft2
  FLW ft4, 20(sp)
  FADD.S ft6, ft4, ft0
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  FSGNJ.S fs9, ft6, ft6
  JAL zero, bb1
bb4:
  ADDI s0, zero, 24
  FCVT.S.W fs0, s0
  FLW ft4, 20(sp)
  FDIV.S fs1, ft4, fs0
  FSGNJ.S fa0, fs1, fs1
  LD s10, 48(sp)
  LD s9, 56(sp)
  LD s8, 64(sp)
  FLD fs11, 72(sp)
  FLD fs6, 80(sp)
  FLD fs4, 88(sp)
  FLD fs2, 96(sp)
  LD s4, 104(sp)
  FLD fs10, 112(sp)
  LD ra, 120(sp)
  LD s1, 128(sp)
  FLD fs9, 136(sp)
  FLD fs8, 144(sp)
  LD s0, 152(sp)
  LD s3, 160(sp)
  LD s2, 168(sp)
  FLD fs7, 176(sp)
  LD s6, 184(sp)
  FLD fs0, 192(sp)
  FLD fs1, 200(sp)
  LD s5, 208(sp)
  FLD fs3, 216(sp)
  FLD fs5, 224(sp)
  LD s7, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fs0, ft1, ft1
  ADD s5, s4, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb8
  JAL zero, bb9
bb6:
  FMUL.S ft0, fs3, fs0
  FLW ft4, 40(sp)
  FADD.S ft2, ft4, ft0
  FMUL.S ft0, fs5, fs0
  FLW ft4, 28(sp)
  FADD.S ft5, ft4, ft0
  LA s6, .CONSTANT.7.1
  FLW ft0, 0(s6)
  FSUB.S ft6, ft2, ft0
  LA s6, .CONSTANT.7.1
  FLW ft0, 0(s6)
  FSUB.S ft7, ft5, ft0
  FMUL.S ft0, ft6, ft6
  FMUL.S ft6, ft7, ft7
  FADD.S ft7, ft0, ft6
  ADDI s6, zero, 8
  FCVT.S.W ft0, s6
  FDIV.S ft6, ft7, ft0
  LA s6, .CONSTANT.7.2
  FLW fa1, 0(s6)
  FADD.S fa2, ft6, fa1
  FLW ft4, 32(sp)
  FMUL.S ft6, ft4, ft7
  ADDI s6, zero, 4
  FCVT.S.W fa1, s6
  FADD.S fa3, fa1, ft7
  FDIV.S fa4, ft6, fa3
  FADD.S ft6, fa2, fa4
  ADDI s6, zero, 10
  FSGNJ.S fa2, ft6, ft6
  JAL zero, bb27
bb7:
  LA s0, .CONSTANT.7.0
  FLW fs9, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW ft0, 0(s0)
  FSGNJ.S ft2, fs9, ft0
  JAL zero, bb3
bb8:
  LA s6, .CONSTANT.7.3
  FLW ft0, 0(s6)
  FLT.S s6, fs0, ft0
  ADD s7, s6, zero
  JAL zero, bb10
bb9:
  ADD s7, zero, zero
  JAL zero, bb10
bb10:
  ADD s6, s7, zero
  BNE s6, zero, bb6
  JAL zero, bb7
bb11:
  ADDI s6, sp, 4
  FLW ft0, 0(s6)
  FSGNJ.S ft2, ft0, ft0
  JAL zero, bb3
bb12:
  FLW fs9, 0(sp)
  FADD.S ft0, fs0, fs9
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  FSGNJ.S ft1, ft0, ft0
  JAL zero, bb5
bb13:
  ADDI s3, zero, 1
  JAL zero, bb15
bb14:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs4, fs0, fs2
  FLW ft4, 36(sp)
  FLT.S s0, ft4, fs4
  ADD s3, s0, zero
  JAL zero, bb15
bb15:
  ADD s4, s3, zero
  BNE s4, zero, bb16
  JAL zero, bb42
bb16:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FLW ft4, 36(sp)
  FDIV.S fs8, ft4, fs7
  FCVT.W.S s4, fs8, rtz
  FCVT.S.W fs7, s4
  LA s4, .CONSTANT.7.4
  FLW fs8, 0(s4)
  FMUL.S fs6, fs7, fs8
  FLW ft4, 36(sp)
  FSUB.S fs7, ft4, fs6
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb17
bb17:
  FSGNJ.S fs7, fs6, fs6
  LA s4, .CONSTANT.7.5
  FLW fs8, 0(s4)
  FLT.S s4, fs8, fs7
  BNE s4, zero, bb18
  JAL zero, bb43
bb18:
  LA s4, .CONSTANT.7.4
  FLW fs8, 0(s4)
  FSUB.S fs4, fs7, fs8
  FSGNJ.S fs8, fs4, fs4
  JAL zero, bb19
bb19:
  FSGNJ.S fs4, fs8, fs8
  FLT.S s4, fs4, fs1
  BNE s4, zero, bb20
  JAL zero, bb44
bb20:
  LA s4, .CONSTANT.7.4
  FLW fs2, 0(s4)
  FADD.S fs0, fs4, fs2
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb21
bb21:
  FSGNJ.S fs0, fs2, fs2
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  ADD s4, zero, zero
  LA s5, .CONSTANT.7.0
  FLW fs0, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW ft0, 0(s5)
  FSGNJ.S ft1, fs0, ft0
  JAL zero, bb5
bb22:
  LA s2, seed
  LW s3, 0(s2)
  LUI s2, 24414
  ADDIW s2, s2, 263
  ADDW s4, s3, s2
  LA s2, seed
  SW s4, 0(s2)
  JAL zero, bb23
bb23:
  LA s2, seed
  LW s3, 0(s2)
  FCVT.S.W fs8, s3
  LUI s2, 24414
  ADDIW s2, s2, 262
  FCVT.S.W fs10, s2
  FDIV.S fs11, fs8, fs10
  FCVT.S.W fs8, s1
  FADD.S fs10, fs8, fs11
  LA s2, .CONSTANT.7.4
  FLW fs8, 0(s2)
  FMUL.S fs11, fs8, fs10
  ADDI s2, zero, 24
  FCVT.S.W fs8, s2
  FDIV.S ft4, fs11, fs8
  FSW ft4, 36(sp)
  ADDI s2, zero, 2
  FCVT.S.W ft4, s2
  FSW ft4, 32(sp)
  LA s2, .CONSTANT.7.5
  FLW fs8, 0(s2)
  FLW ft4, 32(sp)
  FDIV.S fs10, fs8, ft4
  FLW ft3, 36(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 24(sp)
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLW ft4, 24(sp)
  FLT.S s2, fs10, ft4
  BNE s2, zero, bb33
  JAL zero, bb34
bb24:
  FSW fa2, 0(sp)
  ADDI s6, sp, 4
  LA s8, .CONSTANT.7.6
  FLW ft0, 0(s8)
  FSW ft0, 0(s6)
  JAL zero, bb25
bb25:
  FLW ft0, 0(sp)
  LA s6, .CONSTANT.7.7
  FLW ft2, 0(s6)
  FLT.S s6, ft0, ft2
  BNE s6, zero, bb11
  JAL zero, bb12
bb26:
  FSW ft5, 0(sp)
  ADDI s0, sp, 4
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FSW fs9, 0(s0)
  JAL zero, bb25
bb27:
  FSGNJ.S ft6, fa2, fa2
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb28
  JAL zero, bb29
bb28:
  FDIV.S fa3, ft7, ft6
  FADD.S fa4, ft6, fa3
  FLW ft4, 32(sp)
  FDIV.S fa3, fa4, ft4
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  ADD s6, s10, zero
  FSGNJ.S fa2, fa3, fa3
  JAL zero, bb27
bb29:
  LA s6, .CONSTANT.7.8
  FLW ft7, 0(s6)
  FSUB.S fa2, ft6, ft7
  LA s6, .CONSTANT.7.9
  FLW ft6, 0(s6)
  FSUB.S ft7, ft2, ft6
  LA s6, .CONSTANT.7.9
  FLW ft2, 0(s6)
  FSUB.S ft6, ft5, ft2
  FMUL.S ft2, ft7, ft7
  FMUL.S ft5, ft6, ft6
  FADD.S ft6, ft2, ft5
  FDIV.S ft2, ft6, ft0
  LA s6, .CONSTANT.7.2
  FLW ft0, 0(s6)
  FADD.S ft5, ft2, ft0
  FLW ft4, 32(sp)
  FMUL.S ft0, ft4, ft6
  FADD.S ft2, fa1, ft6
  FDIV.S ft7, ft0, ft2
  FADD.S ft0, ft5, ft7
  ADDI s6, zero, 10
  FSGNJ.S ft2, ft0, ft0
  JAL zero, bb30
bb30:
  FSGNJ.S ft0, ft2, ft2
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb31
  JAL zero, bb32
bb31:
  FDIV.S ft5, ft6, ft0
  FADD.S ft7, ft0, ft5
  FLW ft4, 32(sp)
  FDIV.S ft5, ft7, ft4
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  ADD s6, s10, zero
  FSGNJ.S ft2, ft5, ft5
  JAL zero, bb30
bb32:
  LA s6, .CONSTANT.7.10
  FLW ft2, 0(s6)
  FSUB.S ft5, ft0, ft2
  FLT.S s6, fa2, ft5
  BNE s6, zero, bb24
  JAL zero, bb26
bb33:
  ADDI s2, zero, 1
  JAL zero, bb35
bb34:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 24(sp)
  FLT.S s0, ft4, fs2
  ADD s2, s0, zero
  JAL zero, bb35
bb35:
  ADD s3, s2, zero
  BNE s3, zero, bb36
  JAL zero, bb45
bb36:
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  FLW ft4, 24(sp)
  FDIV.S fs11, ft4, fs10
  FCVT.W.S s3, fs11, rtz
  FCVT.S.W fs10, s3
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FMUL.S ft0, fs10, fs11
  FLW ft4, 24(sp)
  FSUB.S fs10, ft4, ft0
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb37
bb37:
  FSGNJ.S fs10, fs11, fs11
  LA s3, .CONSTANT.7.5
  FLW ft0, 0(s3)
  FLT.S s3, ft0, fs10
  BNE s3, zero, bb38
  JAL zero, bb46
bb38:
  LA s3, .CONSTANT.7.4
  FLW ft0, 0(s3)
  FSUB.S ft1, fs10, ft0
  FSGNJ.S ft4, ft1, ft1
  FSW ft4, 12(sp)
  JAL zero, bb39
bb39:
  FLW ft3, 12(sp)
  FLW ft4, 12(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  LA s3, .CONSTANT.7.5
  FLW ft2, 0(s3)
  LA s3, .CONSTANT.7.5
  FLW ft5, 0(s3)
  FSGNJN.S fs1, ft2, ft5
  FLW ft4, 8(sp)
  FLT.S s3, ft4, fs1
  BNE s3, zero, bb40
  JAL zero, bb47
bb40:
  LA s3, .CONSTANT.7.4
  FLW ft2, 0(s3)
  FLW ft4, 8(sp)
  FADD.S ft5, ft4, ft2
  FSGNJ.S ft4, ft5, ft5
  FSW ft4, 16(sp)
  JAL zero, bb41
bb41:
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S ft5, ft4, ft3
  FSGNJ.S fa0, ft5, ft5
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FLW ft4, 36(sp)
  FLT.S s3, fs7, ft4
  BNE s3, zero, bb13
  JAL zero, bb14
bb42:
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb17
bb43:
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb19
bb44:
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb21
bb45:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs11, ft4, ft3
  JAL zero, bb37
bb46:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 12(sp)
  JAL zero, bb39
bb47:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  JAL zero, bb41
trace:
  ADDI sp, sp, -176
  SD s6, 8(sp)
  SD s5, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  FSD fs11, 40(sp)
  FSD fs10, 48(sp)
  SD ra, 56(sp)
  FSD fs9, 64(sp)
  FSD fs7, 72(sp)
  FSD fs6, 80(sp)
  FSD fs0, 88(sp)
  FSD fs5, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs8, 120(sp)
  FSD fs3, 128(sp)
  SD s2, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  FSD fs4, 160(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FSGNJ.S fs6, fs4, fs5
  JAL zero, bb49
bb49:
  FSGNJ.S fs4, fs6, fs6
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb52
  JAL zero, bb53
bb50:
  FMUL.S fs5, fs2, fs4
  FADD.S fs7, fs0, fs5
  FMUL.S fs5, fs3, fs4
  FADD.S fs8, fs1, fs5
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FSUB.S fs9, fs7, fs5
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FSUB.S fs10, fs8, fs5
  FMUL.S fs5, fs9, fs9
  FMUL.S fs9, fs10, fs10
  FADD.S fs10, fs5, fs9
  ADDI s2, zero, 8
  FCVT.S.W fs5, s2
  FDIV.S fs9, fs10, fs5
  LA s2, .CONSTANT.7.2
  FLW fs11, 0(s2)
  FADD.S ft0, fs9, fs11
  ADDI s2, zero, 2
  FCVT.S.W fs9, s2
  FMUL.S fs11, fs9, fs10
  ADDI s2, zero, 4
  FCVT.S.W ft1, s2
  FADD.S ft2, ft1, fs10
  FDIV.S ft5, fs11, ft2
  FADD.S fs11, ft0, ft5
  ADDI s2, zero, 10
  FSGNJ.S ft0, fs11, fs11
  JAL zero, bb60
bb51:
  LA s0, .CONSTANT.7.0
  FLW fs5, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs6, 0(s0)
  FSGNJ.S fa0, fs5, fs6
  LD s6, 8(sp)
  LD s5, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  FLD fs11, 40(sp)
  FLD fs10, 48(sp)
  LD ra, 56(sp)
  FLD fs9, 64(sp)
  FLD fs7, 72(sp)
  FLD fs6, 80(sp)
  FLD fs0, 88(sp)
  FLD fs5, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs8, 120(sp)
  FLD fs3, 128(sp)
  LD s2, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  FLD fs4, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb52:
  LA s2, .CONSTANT.7.3
  FLW fs5, 0(s2)
  FLT.S s2, fs4, fs5
  ADD s3, s2, zero
  JAL zero, bb54
bb53:
  ADD s3, zero, zero
  JAL zero, bb54
bb54:
  ADD s2, s3, zero
  BNE s2, zero, bb50
  JAL zero, bb51
bb55:
  ADDI s2, sp, 4
  FLW fs5, 0(s2)
  FSGNJ.S fa0, fs5, fs5
  LD s6, 8(sp)
  LD s5, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  FLD fs11, 40(sp)
  FLD fs10, 48(sp)
  LD ra, 56(sp)
  FLD fs9, 64(sp)
  FLD fs7, 72(sp)
  FLD fs6, 80(sp)
  FLD fs0, 88(sp)
  FLD fs5, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs8, 120(sp)
  FLD fs3, 128(sp)
  LD s2, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  FLD fs4, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb56:
  FLW fs5, 0(sp)
  FADD.S fs7, fs4, fs5
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb49
bb57:
  FSW ft0, 0(sp)
  ADDI s2, sp, 4
  LA s4, .CONSTANT.7.6
  FLW fs5, 0(s4)
  FSW fs5, 0(s2)
  JAL zero, bb58
bb58:
  FLW fs5, 0(sp)
  LA s2, .CONSTANT.7.7
  FLW fs7, 0(s2)
  FLT.S s2, fs5, fs7
  BNE s2, zero, bb55
  JAL zero, bb56
bb59:
  FSW fs8, 0(sp)
  ADDI s0, sp, 4
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FSW fs5, 0(s0)
  JAL zero, bb58
bb60:
  FSGNJ.S fs11, ft0, ft0
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb61
  JAL zero, bb62
bb61:
  FDIV.S ft2, fs10, fs11
  FADD.S ft5, fs11, ft2
  FDIV.S ft2, ft5, fs9
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADD s2, s6, zero
  FSGNJ.S ft0, ft2, ft2
  JAL zero, bb60
bb62:
  LA s2, .CONSTANT.7.8
  FLW fs10, 0(s2)
  FSUB.S ft0, fs11, fs10
  LA s2, .CONSTANT.7.9
  FLW fs10, 0(s2)
  FSUB.S fs11, fs7, fs10
  LA s2, .CONSTANT.7.9
  FLW fs7, 0(s2)
  FSUB.S fs10, fs8, fs7
  FMUL.S fs7, fs11, fs11
  FMUL.S fs8, fs10, fs10
  FADD.S fs10, fs7, fs8
  FDIV.S fs7, fs10, fs5
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FADD.S fs8, fs7, fs5
  FMUL.S fs5, fs9, fs10
  FADD.S fs7, ft1, fs10
  FDIV.S fs11, fs5, fs7
  FADD.S fs5, fs8, fs11
  ADDI s2, zero, 10
  FSGNJ.S fs7, fs5, fs5
  JAL zero, bb63
bb63:
  FSGNJ.S fs5, fs7, fs7
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb64
  JAL zero, bb65
bb64:
  FDIV.S fs8, fs10, fs5
  FADD.S fs11, fs5, fs8
  FDIV.S fs8, fs11, fs9
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADD s2, s6, zero
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb63
bb65:
  LA s2, .CONSTANT.7.10
  FLW fs7, 0(s2)
  FSUB.S fs8, fs5, fs7
  FLT.S s2, ft0, fs8
  BNE s2, zero, bb57
  JAL zero, bb59
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
  BNE s0, zero, bb70
  JAL zero, bb71
bb67:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb68
  JAL zero, bb69
bb68:
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
bb69:
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
bb70:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb67
bb71:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb67
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
my_sqrt:
  ADDI sp, sp, -96
  SD s3, 0(sp)
  SD s1, 8(sp)
  FSD fs4, 16(sp)
  SD ra, 24(sp)
  FSD fs3, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FADD.S fs3, fs2, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FADD.S fs5, fs4, fs0
  FDIV.S fs4, fs2, fs5
  FADD.S fs2, fs3, fs4
  ADDI s0, zero, 10
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb74
bb74:
  FSGNJ.S fs2, fs3, fs3
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb75
  JAL zero, bb76
bb75:
  FDIV.S fs4, fs0, fs2
  FADD.S fs5, fs2, fs4
  FDIV.S fs4, fs5, fs1
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb74
bb76:
  FSGNJ.S fa0, fs2, fs2
  LD s3, 0(sp)
  LD s1, 8(sp)
  FLD fs4, 16(sp)
  LD ra, 24(sp)
  FLD fs3, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
circle_sdf:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s1, 8(sp)
  FSD fs6, 16(sp)
  FSD fs0, 24(sp)
  FSD fs5, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  SD s2, 64(sp)
  SD s0, 72(sp)
  FSD fs4, 80(sp)
  SD s3, 88(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSUB.S fs5, fs0, fs2
  FSUB.S fs0, fs1, fs3
  FMUL.S fs1, fs5, fs5
  FMUL.S fs2, fs0, fs0
  FADD.S fs0, fs1, fs2
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FADD.S fs3, fs2, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FADD.S fs6, fs5, fs0
  FDIV.S fs5, fs2, fs6
  FADD.S fs2, fs3, fs5
  ADDI s0, zero, 10
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb78
bb78:
  FSGNJ.S fs2, fs3, fs3
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb79
  JAL zero, bb80
bb79:
  FDIV.S fs5, fs0, fs2
  FADD.S fs6, fs2, fs5
  FDIV.S fs5, fs6, fs1
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb78
bb80:
  FSUB.S fs0, fs2, fs4
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s1, 8(sp)
  FLD fs6, 16(sp)
  FLD fs0, 24(sp)
  FLD fs5, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  LD s2, 64(sp)
  LD s0, 72(sp)
  FLD fs4, 80(sp)
  LD s3, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb82
  JAL zero, bb83
bb82:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb83:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  BNE s0, zero, bb85
  JAL zero, bb86
bb85:
  ADDI s0, zero, 1
  JAL zero, bb87
bb86:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb87
bb87:
  ADD s1, s0, zero
  BNE s1, zero, bb88
  JAL zero, bb94
bb88:
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
  JAL zero, bb89
bb89:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.5
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb90
  JAL zero, bb95
bb90:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb91
bb91:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.5
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb92
  JAL zero, bb96
bb92:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb93
bb93:
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
bb94:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb89
bb95:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb91
bb96:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb93
rand:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 4878
  ADDIW s0, s0, -158
  MULW s2, s1, s0
  LUI s0, 6
  ADDIW s0, s0, -1243
  ADDW s1, s2, s0
  LUI s0, 24414
  ADDIW s0, s0, 263
  REMW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  SLT s0, s2, zero
  BNE s0, zero, bb98
  JAL zero, bb99
bb98:
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 24414
  ADDIW s0, s0, 263
  ADDW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  JAL zero, bb99
bb99:
  LA s0, seed
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
scene:
  ADDI sp, sp, -128
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  FSD fs9, 32(sp)
  FSD fs7, 40(sp)
  FSD fs0, 48(sp)
  FSD fs5, 56(sp)
  FSD fs1, 64(sp)
  FSD fs6, 72(sp)
  SD s0, 80(sp)
  FSD fs8, 88(sp)
  FSD fs2, 96(sp)
  SD s1, 104(sp)
  FSD fs3, 112(sp)
  FSD fs4, 120(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FSUB.S fs3, fs0, fs2
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FSUB.S fs4, fs1, fs2
  FMUL.S fs2, fs3, fs3
  FMUL.S fs3, fs4, fs4
  FADD.S fs4, fs2, fs3
  ADDI s1, zero, 8
  FCVT.S.W fs2, s1
  FDIV.S fs3, fs4, fs2
  LA s1, .CONSTANT.7.2
  FLW fs5, 0(s1)
  FADD.S fs6, fs3, fs5
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FMUL.S fs5, fs3, fs4
  ADDI s1, zero, 4
  FCVT.S.W fs7, s1
  FADD.S fs8, fs7, fs4
  FDIV.S fs9, fs5, fs8
  FADD.S fs5, fs6, fs9
  ADDI s1, zero, 10
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb104
bb101:
  FSW fs6, 0(s0)
  ADDI s1, s0, 4
  LA s2, .CONSTANT.7.6
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  JAL zero, bb102
bb102:
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  FLD fs9, 32(sp)
  FLD fs7, 40(sp)
  FLD fs0, 48(sp)
  FLD fs5, 56(sp)
  FLD fs1, 64(sp)
  FLD fs6, 72(sp)
  LD s0, 80(sp)
  FLD fs8, 88(sp)
  FLD fs2, 96(sp)
  LD s1, 104(sp)
  FLD fs3, 112(sp)
  FLD fs4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb103:
  FSW fs2, 0(s0)
  ADDI s1, s0, 4
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 0(s1)
  JAL zero, bb102
bb104:
  FSGNJ.S fs5, fs6, fs6
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb105
  JAL zero, bb106
bb105:
  FDIV.S fs8, fs4, fs5
  FADD.S fs9, fs5, fs8
  FDIV.S fs8, fs9, fs3
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb104
bb106:
  LA s1, .CONSTANT.7.8
  FLW fs4, 0(s1)
  FSUB.S fs6, fs5, fs4
  LA s1, .CONSTANT.7.9
  FLW fs4, 0(s1)
  FSUB.S fs5, fs0, fs4
  LA s1, .CONSTANT.7.9
  FLW fs0, 0(s1)
  FSUB.S fs4, fs1, fs0
  FMUL.S fs0, fs5, fs5
  FMUL.S fs1, fs4, fs4
  FADD.S fs4, fs0, fs1
  FDIV.S fs0, fs4, fs2
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FADD.S fs2, fs0, fs1
  FMUL.S fs0, fs3, fs4
  FADD.S fs1, fs7, fs4
  FDIV.S fs5, fs0, fs1
  FADD.S fs0, fs2, fs5
  ADDI s1, zero, 10
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb107
bb107:
  FSGNJ.S fs0, fs1, fs1
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb108
  JAL zero, bb109
bb108:
  FDIV.S fs2, fs4, fs0
  FADD.S fs5, fs0, fs2
  FDIV.S fs2, fs5, fs3
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb107
bb109:
  LA s1, .CONSTANT.7.10
  FLW fs1, 0(s1)
  FSUB.S fs2, fs0, fs1
  FLT.S s1, fs6, fs2
  BNE s1, zero, bb101
  JAL zero, bb103
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
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FDIV.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s0, zero, 1
  JAL zero, bb113
bb112:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb113
bb113:
  ADD s1, s0, zero
  BNE s1, zero, bb114
  JAL zero, bb120
bb114:
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
  JAL zero, bb115
bb115:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.5
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb116
  JAL zero, bb121
bb116:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb117
bb117:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.5
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb118
  JAL zero, bb122
bb118:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb119
bb119:
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
bb120:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb115
bb121:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb117
bb122:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb119
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -352
  SD s5, 144(sp)
  SD s8, 152(sp)
  FSD fs3, 160(sp)
  FSD fs6, 168(sp)
  SD s11, 176(sp)
  SD s4, 184(sp)
  SD s3, 192(sp)
  FSD fs8, 200(sp)
  FSD fs9, 208(sp)
  SD s1, 216(sp)
  FSD fs7, 224(sp)
  SD s7, 232(sp)
  FSD fs2, 240(sp)
  FSD fs11, 248(sp)
  SD s0, 256(sp)
  SD s2, 264(sp)
  SD s9, 272(sp)
  FSD fs4, 280(sp)
  SD s10, 288(sp)
  FSD fs5, 296(sp)
  FSD fs0, 304(sp)
  FSD fs1, 312(sp)
  SD s6, 320(sp)
  SD ra, 328(sp)
  FSD fs10, 336(sp)
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  SW t4, 92(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 20(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 12(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  JAL zero, bb125
bb125:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 92(sp)
  ADD s3, t4, zero
  LW t4, 128(sp)
  SLTI s4, t4, 192
  BNE s4, zero, bb126
  JAL zero, bb127
bb126:
  ADD s4, s3, zero
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 36(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 32(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb128
bb127:
  LD s5, 144(sp)
  LD s8, 152(sp)
  FLD fs3, 160(sp)
  FLD fs6, 168(sp)
  LD s11, 176(sp)
  LD s4, 184(sp)
  LD s3, 192(sp)
  FLD fs8, 200(sp)
  FLD fs9, 208(sp)
  LD s1, 216(sp)
  FLD fs7, 224(sp)
  LD s7, 232(sp)
  FLD fs2, 240(sp)
  FLD fs11, 248(sp)
  LD s0, 256(sp)
  LD s2, 264(sp)
  LD s9, 272(sp)
  FLD fs4, 280(sp)
  LD s10, 288(sp)
  FLD fs5, 296(sp)
  FLD fs0, 304(sp)
  FLD fs1, 312(sp)
  LD s6, 320(sp)
  LD ra, 328(sp)
  FLD fs10, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb128:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  FLW ft3, 32(sp)
  FLW ft4, 32(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  FLW ft3, 36(sp)
  FLW ft4, 36(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  ADD t4, s4, zero
  SW t4, 88(sp)
  LW t4, 132(sp)
  SLTI s7, t4, 192
  BNE s7, zero, bb129
  JAL zero, bb130
bb129:
  LW t4, 132(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 28(sp)
  LW t4, 128(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 24(sp)
  ADDI s7, zero, 192
  FCVT.S.W fs6, s7
  FLW ft3, 28(sp)
  FDIV.S ft4, ft3, fs6
  FSW ft4, 52(sp)
  FLW ft3, 24(sp)
  FDIV.S ft4, ft3, fs6
  FSW ft4, 48(sp)
  ADD s7, zero, zero
  LA s8, .CONSTANT.7.0
  FLW fs6, 0(s8)
  LA s8, .CONSTANT.7.0
  FLW fs7, 0(s8)
  FSGNJ.S fs11, fs6, fs7
  JAL zero, bb133
bb130:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 128(sp)
  ADDIW s0, t4, 1
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  FLW ft3, 16(sp)
  FLW ft4, 16(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 20(sp)
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  JAL zero, bb125
bb131:
  ADDI s1, zero, 255
  JAL zero, bb132
bb132:
  ADD s2, s1, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 132(sp)
  ADDIW s3, t4, 1
  ADD s4, s2, zero
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 36(sp)
  FLW ft3, 28(sp)
  FLW ft4, 28(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 32(sp)
  ADD t4, s3, zero
  SW t4, 136(sp)
  JAL zero, bb128
bb133:
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 40(sp)
  ADD s8, s7, zero
  SLTI s9, s8, 24
  BNE s9, zero, bb134
  JAL zero, bb136
bb134:
  LA s9, seed
  LW s10, 0(s9)
  LUI s9, 4878
  ADDIW s9, s9, -158
  MULW s11, s10, s9
  LUI s9, 6
  ADDIW s9, s9, -1243
  ADDW s10, s11, s9
  LUI s9, 24414
  ADDIW s9, s9, 263
  REMW s11, s10, s9
  LA s9, seed
  SW s11, 0(s9)
  SLT s9, s11, zero
  BNE s9, zero, bb154
  JAL zero, bb155
bb135:
  FSGNJ.S fs0, fs2, fs2
  FLW ft4, 40(sp)
  FADD.S fs4, ft4, fs0
  ADDIW s2, s8, 1
  ADD s7, s2, zero
  FSGNJ.S fs11, fs4, fs4
  JAL zero, bb133
bb136:
  ADDI s0, zero, 24
  FCVT.S.W fs0, s0
  FLW ft4, 40(sp)
  FDIV.S fs1, ft4, fs0
  LA s0, .CONSTANT.7.11
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s0, fs2, rtz
  ADDI s1, zero, 255
  SLT s2, s1, s0
  BNE s2, zero, bb131
  JAL zero, bb174
bb137:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 124(sp)
  ADD s1, s11, zero
  SLTI s6, s1, 10
  BNE s6, zero, bb140
  JAL zero, bb141
bb138:
  FLW ft4, 100(sp)
  FLW ft3, 124(sp)
  FMUL.S fs8, ft4, ft3
  FLW ft4, 52(sp)
  FADD.S fs7, ft4, fs8
  FLW ft4, 124(sp)
  FMUL.S fs8, fs1, ft4
  FLW ft4, 48(sp)
  FADD.S fs3, ft4, fs8
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSUB.S fs0, fs7, fs8
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSUB.S fs10, fs3, fs8
  FMUL.S fs8, fs0, fs0
  FMUL.S fs0, fs10, fs10
  FADD.S fs10, fs8, fs0
  ADDI s6, zero, 8
  FCVT.S.W fs0, s6
  FDIV.S fs8, fs10, fs0
  LA s6, .CONSTANT.7.2
  FLW fs2, 0(s6)
  FADD.S fs9, fs8, fs2
  FLW ft4, 60(sp)
  FMUL.S fs2, ft4, fs10
  ADDI s6, zero, 4
  FCVT.S.W fs8, s6
  FADD.S fs6, fs8, fs10
  FDIV.S fs4, fs2, fs6
  FADD.S fs2, fs9, fs4
  ADDI s6, zero, 10
  FSGNJ.S fs4, fs2, fs2
  JAL zero, bb159
bb139:
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs0, fs3
  JAL zero, bb135
bb140:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FLW ft4, 124(sp)
  FLT.S s6, ft4, fs8
  ADD s0, s6, zero
  JAL zero, bb142
bb141:
  ADD s0, zero, zero
  JAL zero, bb142
bb142:
  ADD s6, s0, zero
  BNE s6, zero, bb138
  JAL zero, bb139
bb143:
  ADDI s2, sp, 4
  FLW fs0, 0(s2)
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb135
bb144:
  FLW fs0, 0(sp)
  FLW ft4, 124(sp)
  FADD.S fs4, ft4, fs0
  ADDIW s2, s1, 1
  ADD s11, s2, zero
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb137
bb145:
  ADDI s10, zero, 1
  JAL zero, bb147
bb146:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 56(sp)
  FLT.S s0, ft4, fs2
  ADD s10, s0, zero
  JAL zero, bb147
bb147:
  ADD s11, s10, zero
  BNE s11, zero, bb148
  JAL zero, bb175
bb148:
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FLW ft4, 56(sp)
  FDIV.S fs2, ft4, fs10
  FCVT.W.S s11, fs2, rtz
  FCVT.S.W fs2, s11
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FMUL.S fs0, fs2, fs10
  FLW ft4, 56(sp)
  FSUB.S fs2, ft4, fs0
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 104(sp)
  JAL zero, bb149
bb149:
  FLW ft3, 104(sp)
  FLW ft4, 104(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 112(sp)
  LA s11, .CONSTANT.7.5
  FLW fs10, 0(s11)
  FLW ft4, 112(sp)
  FLT.S s11, fs10, ft4
  BNE s11, zero, bb150
  JAL zero, bb176
bb150:
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FLW ft4, 112(sp)
  FSUB.S fs6, ft4, fs10
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 108(sp)
  JAL zero, bb151
bb151:
  FLW ft3, 108(sp)
  FLW ft4, 108(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 120(sp)
  FLW ft4, 120(sp)
  FLW ft3, 80(sp)
  FLT.S s11, ft4, ft3
  BNE s11, zero, bb152
  JAL zero, bb177
bb152:
  LA s11, .CONSTANT.7.4
  FLW fs9, 0(s11)
  FLW ft4, 120(sp)
  FADD.S fs8, ft4, fs9
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 116(sp)
  JAL zero, bb153
bb153:
  FLW ft4, 116(sp)
  FLW ft3, 116(sp)
  FSGNJ.S fs8, ft4, ft3
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADD s11, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs8, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  FSGNJ.S fs5, fs8, fs4
  JAL zero, bb137
bb154:
  LA s9, seed
  LW s10, 0(s9)
  LUI s9, 24414
  ADDIW s9, s9, 263
  ADDW s11, s10, s9
  LA s9, seed
  SW s11, 0(s9)
  JAL zero, bb155
bb155:
  LA s9, seed
  LW s10, 0(s9)
  FCVT.S.W fs7, s10
  LUI s9, 24414
  ADDIW s9, s9, 262
  FCVT.S.W fs8, s9
  FDIV.S fs9, fs7, fs8
  FCVT.S.W fs7, s8
  FADD.S fs8, fs7, fs9
  LA s9, .CONSTANT.7.4
  FLW fs7, 0(s9)
  FMUL.S fs9, fs7, fs8
  ADDI s9, zero, 24
  FCVT.S.W fs7, s9
  FDIV.S ft4, fs9, fs7
  FSW ft4, 56(sp)
  ADDI s9, zero, 2
  FCVT.S.W ft4, s9
  FSW ft4, 60(sp)
  LA s9, .CONSTANT.7.5
  FLW fs7, 0(s9)
  FLW ft4, 60(sp)
  FDIV.S fs8, fs7, ft4
  FLW ft3, 56(sp)
  FADD.S ft4, ft3, fs8
  FSW ft4, 44(sp)
  LA s9, .CONSTANT.7.4
  FLW fs8, 0(s9)
  FLW ft4, 44(sp)
  FLT.S s9, fs8, ft4
  BNE s9, zero, bb165
  JAL zero, bb166
bb156:
  FSW fs6, 0(sp)
  ADDI s2, sp, 4
  LA s3, .CONSTANT.7.6
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  JAL zero, bb157
bb157:
  FLW fs0, 0(sp)
  LA s2, .CONSTANT.7.7
  FLW fs2, 0(s2)
  FLT.S s2, fs0, fs2
  BNE s2, zero, bb143
  JAL zero, bb144
bb158:
  FSW fs3, 0(sp)
  ADDI s2, sp, 4
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  JAL zero, bb157
bb159:
  FSGNJ.S fs2, fs4, fs4
  ADD s2, s6, zero
  XOR s5, s2, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb160
  JAL zero, bb161
bb160:
  FDIV.S fs6, fs10, fs2
  FADD.S fs9, fs2, fs6
  FLW ft4, 60(sp)
  FDIV.S fs6, fs9, ft4
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADD s6, s5, zero
  FSGNJ.S fs4, fs6, fs6
  JAL zero, bb159
bb161:
  LA s2, .CONSTANT.7.8
  FLW fs4, 0(s2)
  FSUB.S fs6, fs2, fs4
  LA s2, .CONSTANT.7.9
  FLW fs2, 0(s2)
  FSUB.S fs4, fs7, fs2
  LA s2, .CONSTANT.7.9
  FLW fs2, 0(s2)
  FSUB.S fs7, fs3, fs2
  FMUL.S fs2, fs4, fs4
  FMUL.S fs3, fs7, fs7
  FADD.S fs4, fs2, fs3
  FDIV.S fs2, fs4, fs0
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FADD.S fs3, fs2, fs0
  FLW ft4, 60(sp)
  FMUL.S fs0, ft4, fs4
  FADD.S fs2, fs8, fs4
  FDIV.S fs7, fs0, fs2
  FADD.S fs0, fs3, fs7
  ADDI s2, zero, 10
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb162
bb162:
  FSGNJ.S fs0, fs2, fs2
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb163
  JAL zero, bb164
bb163:
  FDIV.S fs3, fs4, fs0
  FADD.S fs7, fs0, fs3
  FLW ft4, 60(sp)
  FDIV.S fs3, fs7, ft4
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  ADD s2, s6, zero
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb162
bb164:
  LA s2, .CONSTANT.7.10
  FLW fs2, 0(s2)
  FSUB.S fs3, fs0, fs2
  FLT.S s2, fs6, fs3
  BNE s2, zero, bb156
  JAL zero, bb158
bb165:
  ADDI s9, zero, 1
  JAL zero, bb167
bb166:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 44(sp)
  FLT.S s0, ft4, fs2
  ADD s9, s0, zero
  JAL zero, bb167
bb167:
  ADD s10, s9, zero
  BNE s10, zero, bb168
  JAL zero, bb178
bb168:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FLW ft4, 44(sp)
  FDIV.S fs9, ft4, fs8
  FCVT.W.S s10, fs9, rtz
  FCVT.S.W fs8, s10
  LA s10, .CONSTANT.7.4
  FLW fs9, 0(s10)
  FMUL.S fs6, fs8, fs9
  FLW ft4, 44(sp)
  FSUB.S fs8, ft4, fs6
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 64(sp)
  JAL zero, bb169
bb169:
  FLW ft3, 64(sp)
  FLW ft4, 64(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  LA s10, .CONSTANT.7.5
  FLW fs9, 0(s10)
  FLW ft4, 72(sp)
  FLT.S s10, fs9, ft4
  BNE s10, zero, bb170
  JAL zero, bb179
bb170:
  LA s10, .CONSTANT.7.4
  FLW fs9, 0(s10)
  FLW ft4, 72(sp)
  FSUB.S fs7, ft4, fs9
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 68(sp)
  JAL zero, bb171
bb171:
  FLW ft3, 68(sp)
  FLW ft4, 68(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 96(sp)
  LA s10, .CONSTANT.7.5
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.5
  FLW fs10, 0(s10)
  FSGNJN.S ft4, fs5, fs10
  FSW ft4, 80(sp)
  FLW ft4, 96(sp)
  FLW ft3, 80(sp)
  FLT.S s10, ft4, ft3
  BNE s10, zero, bb172
  JAL zero, bb180
bb172:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FLW ft4, 96(sp)
  FADD.S fs10, ft4, fs5
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 84(sp)
  JAL zero, bb173
bb173:
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs10, ft4, ft3
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 100(sp)
  LA s10, .CONSTANT.7.4
  FLW fs10, 0(s10)
  FLW ft4, 56(sp)
  FLT.S s10, fs10, ft4
  BNE s10, zero, bb145
  JAL zero, bb146
bb174:
  ADD s1, s0, zero
  JAL zero, bb132
bb175:
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  JAL zero, bb149
bb176:
  FLW ft3, 112(sp)
  FLW ft4, 112(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 108(sp)
  JAL zero, bb151
bb177:
  FLW ft3, 120(sp)
  FLW ft4, 120(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 116(sp)
  JAL zero, bb153
bb178:
  FLW ft3, 44(sp)
  FLW ft4, 44(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  JAL zero, bb169
bb179:
  FLW ft3, 72(sp)
  FLW ft4, 72(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 68(sp)
  JAL zero, bb171
bb180:
  FLW ft3, 96(sp)
  FLW ft4, 96(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 84(sp)
  JAL zero, bb173
