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
  ADDI sp, sp, -272
  SD s10, 80(sp)
  SD s9, 88(sp)
  SD s8, 96(sp)
  FSD fs11, 104(sp)
  FSD fs2, 112(sp)
  FSD fs6, 120(sp)
  FSD fs4, 128(sp)
  SD s4, 136(sp)
  FSD fs10, 144(sp)
  SD ra, 152(sp)
  SD s1, 160(sp)
  FSD fs9, 168(sp)
  FSD fs8, 176(sp)
  SD s0, 184(sp)
  SD s3, 192(sp)
  SD s2, 200(sp)
  FSD fs7, 208(sp)
  SD s6, 216(sp)
  FSD fs0, 224(sp)
  FSD fs1, 232(sp)
  SD s5, 240(sp)
  FSD fs5, 248(sp)
  SD s7, 256(sp)
  FSD fs3, 264(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 56(sp)
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 48(sp)
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs7, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs8, 0(s1)
  FSGNJ.S fs9, fs7, fs8
  JAL zero, bb1
bb1:
  FSGNJ.S ft4, fs9, fs9
  FSW ft4, 32(sp)
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
  BNE s2, zero, bb23
  JAL zero, bb24
bb3:
  FSGNJ.S ft0, ft2, ft2
  FLW ft4, 32(sp)
  FADD.S ft6, ft4, ft0
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  FSGNJ.S fs9, ft6, ft6
  JAL zero, bb1
bb4:
  ADDI s0, zero, 24
  FCVT.S.W fs0, s0
  FLW ft4, 32(sp)
  FDIV.S fs1, ft4, fs0
  FSGNJ.S fa0, fs1, fs1
  LD s10, 80(sp)
  LD s9, 88(sp)
  LD s8, 96(sp)
  FLD fs11, 104(sp)
  FLD fs2, 112(sp)
  FLD fs6, 120(sp)
  FLD fs4, 128(sp)
  LD s4, 136(sp)
  FLD fs10, 144(sp)
  LD ra, 152(sp)
  LD s1, 160(sp)
  FLD fs9, 168(sp)
  FLD fs8, 176(sp)
  LD s0, 184(sp)
  LD s3, 192(sp)
  LD s2, 200(sp)
  FLD fs7, 208(sp)
  LD s6, 216(sp)
  FLD fs0, 224(sp)
  FLD fs1, 232(sp)
  LD s5, 240(sp)
  FLD fs5, 248(sp)
  LD s7, 256(sp)
  FLD fs3, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb5:
  ADD s4, zero, zero
  LA s5, .CONSTANT.7.0
  FLW fs1, 0(s5)
  LA s5, .CONSTANT.7.0
  FLW ft0, 0(s5)
  FSGNJ.S ft1, fs1, ft0
  JAL zero, bb6
bb6:
  FSGNJ.S fs1, ft1, ft1
  ADD s5, s4, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb9
  JAL zero, bb10
bb7:
  FMUL.S ft0, fs0, fs1
  FLW ft4, 56(sp)
  FADD.S ft2, ft4, ft0
  FMUL.S ft0, fs5, fs1
  FLW ft4, 48(sp)
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
  FLW ft4, 64(sp)
  FMUL.S ft6, ft4, ft7
  ADDI s6, zero, 4
  FCVT.S.W fa1, s6
  FADD.S fa3, fa1, ft7
  FDIV.S fa4, ft6, fa3
  FADD.S ft6, fa2, fa4
  ADDI s6, zero, 10
  FSGNJ.S fa2, ft6, ft6
  JAL zero, bb28
bb8:
  LA s0, .CONSTANT.7.0
  FLW fs9, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW ft0, 0(s0)
  FSGNJ.S ft2, fs9, ft0
  JAL zero, bb3
bb9:
  LA s6, .CONSTANT.7.3
  FLW ft0, 0(s6)
  FLT.S s6, fs1, ft0
  ADD s7, s6, zero
  JAL zero, bb11
bb10:
  ADD s7, zero, zero
  JAL zero, bb11
bb11:
  ADD s6, s7, zero
  BNE s6, zero, bb7
  JAL zero, bb8
bb12:
  ADDI s6, sp, 4
  FLW ft0, 0(s6)
  FSGNJ.S ft2, ft0, ft0
  JAL zero, bb3
bb13:
  FLW fs9, 0(sp)
  FADD.S ft0, fs1, fs9
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  FSGNJ.S ft1, ft0, ft0
  JAL zero, bb6
bb14:
  ADDI s3, zero, 1
  JAL zero, bb16
bb15:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FSGNJN.S fs4, fs1, fs3
  FLW ft4, 72(sp)
  FLT.S s0, ft4, fs4
  ADD s3, s0, zero
  JAL zero, bb16
bb16:
  ADD s4, s3, zero
  BNE s4, zero, bb17
  JAL zero, bb43
bb17:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FLW ft4, 72(sp)
  FDIV.S fs8, ft4, fs7
  FCVT.W.S s4, fs8, rtz
  FCVT.S.W fs7, s4
  LA s4, .CONSTANT.7.4
  FLW fs8, 0(s4)
  FMUL.S fs6, fs7, fs8
  FLW ft4, 72(sp)
  FSUB.S fs7, ft4, fs6
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb18
bb18:
  FSGNJ.S fs7, fs6, fs6
  LA s4, .CONSTANT.7.5
  FLW fs8, 0(s4)
  FLT.S s4, fs8, fs7
  BNE s4, zero, bb19
  JAL zero, bb44
bb19:
  LA s4, .CONSTANT.7.4
  FLW fs8, 0(s4)
  FSUB.S fs4, fs7, fs8
  FSGNJ.S fs8, fs4, fs4
  JAL zero, bb20
bb20:
  FSGNJ.S fs4, fs8, fs8
  FLT.S s4, fs4, fs2
  BNE s4, zero, bb21
  JAL zero, bb45
bb21:
  LA s4, .CONSTANT.7.4
  FLW fs3, 0(s4)
  FADD.S fs1, fs4, fs3
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb22
bb22:
  FSGNJ.S fs1, fs3, fs3
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  JAL zero, bb5
bb23:
  LA s2, seed
  LW s3, 0(s2)
  LUI s2, 24414
  ADDIW s2, s2, 263
  ADDW s4, s3, s2
  LA s2, seed
  SW s4, 0(s2)
  JAL zero, bb24
bb24:
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
  FSW ft4, 72(sp)
  ADDI s2, zero, 2
  FCVT.S.W ft4, s2
  FSW ft4, 64(sp)
  LA s2, .CONSTANT.7.5
  FLW fs8, 0(s2)
  FLW ft4, 64(sp)
  FDIV.S fs10, fs8, ft4
  FLW ft3, 72(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 40(sp)
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLW ft4, 40(sp)
  FLT.S s2, fs10, ft4
  BNE s2, zero, bb34
  JAL zero, bb35
bb25:
  FSW fa2, 0(sp)
  ADDI s6, sp, 4
  LA s8, .CONSTANT.7.6
  FLW ft0, 0(s8)
  FSW ft0, 0(s6)
  JAL zero, bb26
bb26:
  FLW ft0, 0(sp)
  LA s6, .CONSTANT.7.7
  FLW ft2, 0(s6)
  FLT.S s6, ft0, ft2
  BNE s6, zero, bb12
  JAL zero, bb13
bb27:
  FSW ft5, 0(sp)
  ADDI s0, sp, 4
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FSW fs9, 0(s0)
  JAL zero, bb26
bb28:
  FSGNJ.S ft6, fa2, fa2
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb29
  JAL zero, bb30
bb29:
  FDIV.S fa3, ft7, ft6
  FADD.S fa4, ft6, fa3
  FLW ft4, 64(sp)
  FDIV.S fa3, fa4, ft4
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  ADD s6, s10, zero
  FSGNJ.S fa2, fa3, fa3
  JAL zero, bb28
bb30:
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
  FLW ft4, 64(sp)
  FMUL.S ft0, ft4, ft6
  FADD.S ft2, fa1, ft6
  FDIV.S ft7, ft0, ft2
  FADD.S ft0, ft5, ft7
  ADDI s6, zero, 10
  FSGNJ.S ft2, ft0, ft0
  JAL zero, bb31
bb31:
  FSGNJ.S ft0, ft2, ft2
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb32
  JAL zero, bb33
bb32:
  FDIV.S ft5, ft6, ft0
  FADD.S ft7, ft0, ft5
  FLW ft4, 64(sp)
  FDIV.S ft5, ft7, ft4
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  ADD s6, s10, zero
  FSGNJ.S ft2, ft5, ft5
  JAL zero, bb31
bb33:
  LA s6, .CONSTANT.7.10
  FLW ft2, 0(s6)
  FSUB.S ft5, ft0, ft2
  FLT.S s6, fa2, ft5
  BNE s6, zero, bb25
  JAL zero, bb27
bb34:
  ADDI s2, zero, 1
  JAL zero, bb36
bb35:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 40(sp)
  FLT.S s0, ft4, fs2
  ADD s2, s0, zero
  JAL zero, bb36
bb36:
  ADD s3, s2, zero
  BNE s3, zero, bb37
  JAL zero, bb46
bb37:
  LA s3, .CONSTANT.7.4
  FLW fs10, 0(s3)
  FLW ft4, 40(sp)
  FDIV.S fs11, ft4, fs10
  FCVT.W.S s3, fs11, rtz
  FCVT.S.W fs10, s3
  LA s3, .CONSTANT.7.4
  FLW fs11, 0(s3)
  FMUL.S ft0, fs10, fs11
  FLW ft4, 40(sp)
  FSUB.S fs10, ft4, ft0
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb38
bb38:
  FSGNJ.S fs10, fs11, fs11
  LA s3, .CONSTANT.7.5
  FLW ft0, 0(s3)
  FLT.S s3, ft0, fs10
  BNE s3, zero, bb39
  JAL zero, bb47
bb39:
  LA s3, .CONSTANT.7.4
  FLW ft0, 0(s3)
  FSUB.S ft1, fs10, ft0
  FSGNJ.S ft4, ft1, ft1
  FSW ft4, 8(sp)
  JAL zero, bb40
bb40:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  LA s3, .CONSTANT.7.5
  FLW ft2, 0(s3)
  LA s3, .CONSTANT.7.5
  FLW ft5, 0(s3)
  FSGNJN.S fs2, ft2, ft5
  FLW ft4, 16(sp)
  FLT.S s3, ft4, fs2
  BNE s3, zero, bb41
  JAL zero, bb48
bb41:
  LA s3, .CONSTANT.7.4
  FLW ft2, 0(s3)
  FLW ft4, 16(sp)
  FADD.S ft5, ft4, ft2
  FSGNJ.S ft4, ft5, ft5
  FSW ft4, 24(sp)
  JAL zero, bb42
bb42:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S ft5, ft4, ft3
  FSGNJ.S fa0, ft5, ft5
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FLW ft4, 72(sp)
  FLT.S s3, fs7, ft4
  BNE s3, zero, bb14
  JAL zero, bb15
bb43:
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb18
bb44:
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb20
bb45:
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb22
bb46:
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fs11, ft4, ft3
  JAL zero, bb38
bb47:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 8(sp)
  JAL zero, bb40
bb48:
  FLW ft3, 16(sp)
  FLW ft4, 16(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  JAL zero, bb42
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
  JAL zero, bb50
bb50:
  FSGNJ.S fs4, fs6, fs6
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb53
  JAL zero, bb54
bb51:
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
  JAL zero, bb61
bb52:
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
bb53:
  LA s2, .CONSTANT.7.3
  FLW fs5, 0(s2)
  FLT.S s2, fs4, fs5
  ADD s3, s2, zero
  JAL zero, bb55
bb54:
  ADD s3, zero, zero
  JAL zero, bb55
bb55:
  ADD s2, s3, zero
  BNE s2, zero, bb51
  JAL zero, bb52
bb56:
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
bb57:
  FLW fs5, 0(sp)
  FADD.S fs7, fs4, fs5
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb50
bb58:
  FSW ft0, 0(sp)
  ADDI s2, sp, 4
  LA s4, .CONSTANT.7.6
  FLW fs5, 0(s4)
  FSW fs5, 0(s2)
  JAL zero, bb59
bb59:
  FLW fs5, 0(sp)
  LA s2, .CONSTANT.7.7
  FLW fs7, 0(s2)
  FLT.S s2, fs5, fs7
  BNE s2, zero, bb56
  JAL zero, bb57
bb60:
  FSW fs8, 0(sp)
  ADDI s0, sp, 4
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FSW fs5, 0(s0)
  JAL zero, bb59
bb61:
  FSGNJ.S fs11, ft0, ft0
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb62
  JAL zero, bb63
bb62:
  FDIV.S ft2, fs10, fs11
  FADD.S ft5, fs11, ft2
  FDIV.S ft2, ft5, fs9
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADD s2, s6, zero
  FSGNJ.S ft0, ft2, ft2
  JAL zero, bb61
bb63:
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
  JAL zero, bb64
bb64:
  FSGNJ.S fs5, fs7, fs7
  ADD s4, s2, zero
  XOR s5, s4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb65
  JAL zero, bb66
bb65:
  FDIV.S fs8, fs10, fs5
  FADD.S fs11, fs5, fs8
  FDIV.S fs8, fs11, fs9
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADD s2, s6, zero
  FSGNJ.S fs7, fs8, fs8
  JAL zero, bb64
bb66:
  LA s2, .CONSTANT.7.10
  FLW fs7, 0(s2)
  FSUB.S fs8, fs5, fs7
  FLT.S s2, ft0, fs8
  BNE s2, zero, bb58
  JAL zero, bb60
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
  BNE s0, zero, bb72
  JAL zero, bb73
bb68:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb69
  JAL zero, bb70
bb69:
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
bb70:
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
  JAL zero, bb71
bb71:
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
bb72:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb68
bb73:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb68
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
  JAL zero, bb76
bb76:
  FSGNJ.S fs2, fs3, fs3
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb77
  JAL zero, bb78
bb77:
  FDIV.S fs4, fs0, fs2
  FADD.S fs5, fs2, fs4
  FDIV.S fs4, fs5, fs1
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb76
bb78:
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
  JAL zero, bb80
bb80:
  FSGNJ.S fs2, fs3, fs3
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb81
  JAL zero, bb82
bb81:
  FDIV.S fs5, fs0, fs2
  FADD.S fs6, fs2, fs5
  FDIV.S fs5, fs6, fs1
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb80
bb82:
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
  BNE s0, zero, bb84
  JAL zero, bb85
bb84:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb85:
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
  BNE s0, zero, bb87
  JAL zero, bb88
bb87:
  ADDI s0, zero, 1
  JAL zero, bb89
bb88:
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb89
bb89:
  ADD s1, s0, zero
  BNE s1, zero, bb90
  JAL zero, bb96
bb90:
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
bb91:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.5
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb92
  JAL zero, bb97
bb92:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb93
bb93:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.5
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb94
  JAL zero, bb98
bb94:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb95
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
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb91
bb97:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb93
bb98:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb95
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
  BNE s0, zero, bb100
  JAL zero, bb101
bb100:
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 24414
  ADDIW s0, s0, 263
  ADDW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  JAL zero, bb101
bb101:
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
  JAL zero, bb106
bb103:
  FSW fs6, 0(s0)
  ADDI s1, s0, 4
  LA s2, .CONSTANT.7.6
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  JAL zero, bb104
bb104:
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
bb105:
  FSW fs2, 0(s0)
  ADDI s1, s0, 4
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 0(s1)
  JAL zero, bb104
bb106:
  FSGNJ.S fs5, fs6, fs6
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb107
  JAL zero, bb108
bb107:
  FDIV.S fs8, fs4, fs5
  FADD.S fs9, fs5, fs8
  FDIV.S fs8, fs9, fs3
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb106
bb108:
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
  JAL zero, bb109
bb109:
  FSGNJ.S fs0, fs1, fs1
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb110
  JAL zero, bb111
bb110:
  FDIV.S fs2, fs4, fs0
  FADD.S fs5, fs0, fs2
  FDIV.S fs2, fs5, fs3
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb109
bb111:
  LA s1, .CONSTANT.7.10
  FLW fs1, 0(s1)
  FSUB.S fs2, fs0, fs1
  FLT.S s1, fs6, fs2
  BNE s1, zero, bb103
  JAL zero, bb105
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
  BNE s0, zero, bb114
  JAL zero, bb115
bb113:
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
bb114:
  ADDI s0, zero, 1
  JAL zero, bb116
bb115:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb116
bb116:
  ADD s1, s0, zero
  BNE s1, zero, bb117
  JAL zero, bb123
bb117:
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
  JAL zero, bb118
bb118:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.5
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb119
  JAL zero, bb124
bb119:
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb120
bb120:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.5
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb121
  JAL zero, bb125
bb121:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb122
bb122:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  JAL zero, bb113
bb123:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb118
bb124:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb120
bb125:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb122
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -480
  SD s5, 272(sp)
  SD s0, 280(sp)
  FSD fs6, 288(sp)
  SD s11, 296(sp)
  SD s4, 304(sp)
  SD s3, 312(sp)
  FSD fs8, 320(sp)
  FSD fs9, 328(sp)
  SD s1, 336(sp)
  FSD fs7, 344(sp)
  SD s7, 352(sp)
  FSD fs2, 360(sp)
  SD s2, 368(sp)
  SD s8, 376(sp)
  FSD fs3, 384(sp)
  FSD fs11, 392(sp)
  SD s9, 400(sp)
  FSD fs4, 408(sp)
  SD s10, 416(sp)
  FSD fs5, 424(sp)
  FSD fs0, 432(sp)
  FSD fs1, 440(sp)
  SD s6, 448(sp)
  SD ra, 456(sp)
  FSD fs10, 464(sp)
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
  SW t4, 176(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 32(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 16(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  JAL zero, bb128
bb128:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 32(sp)
  FLW ft3, 32(sp)
  FSGNJ.S fs8, ft4, ft3
  LW t4, 176(sp)
  ADD s3, t4, zero
  LW t4, 248(sp)
  SLTI s4, t4, 192
  BNE s4, zero, bb129
  JAL zero, bb130
bb129:
  ADD s4, s3, zero
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 64(sp)
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 56(sp)
  ADD t4, zero, zero
  SW t4, 264(sp)
  JAL zero, bb131
bb130:
  LD s5, 272(sp)
  LD s0, 280(sp)
  FLD fs6, 288(sp)
  LD s11, 296(sp)
  LD s4, 304(sp)
  LD s3, 312(sp)
  FLD fs8, 320(sp)
  FLD fs9, 328(sp)
  LD s1, 336(sp)
  FLD fs7, 344(sp)
  LD s7, 352(sp)
  FLD fs2, 360(sp)
  LD s2, 368(sp)
  LD s8, 376(sp)
  FLD fs3, 384(sp)
  FLD fs11, 392(sp)
  LD s9, 400(sp)
  FLD fs4, 408(sp)
  LD s10, 416(sp)
  FLD fs5, 424(sp)
  FLD fs0, 432(sp)
  FLD fs1, 440(sp)
  LD s6, 448(sp)
  LD ra, 456(sp)
  FLD fs10, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb131:
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  FLW ft3, 64(sp)
  FLW ft4, 64(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  ADD t4, s4, zero
  SW t4, 168(sp)
  LW t4, 256(sp)
  SLTI s7, t4, 192
  BNE s7, zero, bb132
  JAL zero, bb133
bb132:
  LW t4, 256(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 48(sp)
  LW t4, 248(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 40(sp)
  ADDI s7, zero, 192
  FCVT.S.W fs6, s7
  FLW ft3, 48(sp)
  FDIV.S ft4, ft3, fs6
  FSW ft4, 96(sp)
  FLW ft3, 40(sp)
  FDIV.S ft4, ft3, fs6
  FSW ft4, 88(sp)
  JAL zero, bb136
bb133:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 248(sp)
  ADDIW s0, t4, 1
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 32(sp)
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  ADD t4, s0, zero
  SW t4, 144(sp)
  JAL zero, bb128
bb134:
  ADDI s1, zero, 255
  JAL zero, bb135
bb135:
  ADD s2, s1, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 256(sp)
  ADDIW s3, t4, 1
  ADD s4, s2, zero
  FLW ft3, 40(sp)
  FLW ft4, 40(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  ADD t4, s3, zero
  SW t4, 264(sp)
  JAL zero, bb131
bb136:
  ADD s7, zero, zero
  LA s8, .CONSTANT.7.0
  FLW fs6, 0(s8)
  LA s8, .CONSTANT.7.0
  FLW fs7, 0(s8)
  FSGNJ.S fs11, fs6, fs7
  JAL zero, bb137
bb137:
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 72(sp)
  ADD s8, s7, zero
  SLTI s9, s8, 24
  BNE s9, zero, bb138
  JAL zero, bb140
bb138:
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
  BNE s9, zero, bb159
  JAL zero, bb160
bb139:
  FSGNJ.S fs0, fs1, fs1
  FLW ft4, 72(sp)
  FADD.S fs4, ft4, fs0
  ADDIW s2, s8, 1
  ADD s7, s2, zero
  FSGNJ.S fs11, fs4, fs4
  JAL zero, bb137
bb140:
  ADDI s0, zero, 24
  FCVT.S.W fs0, s0
  FLW ft4, 72(sp)
  FDIV.S fs1, ft4, fs0
  LA s0, .CONSTANT.7.11
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s0, fs2, rtz
  ADDI s1, zero, 255
  SLT s2, s1, s0
  BNE s2, zero, bb134
  JAL zero, bb179
bb141:
  ADD s11, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs8, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  FSGNJ.S fs5, fs8, fs4
  JAL zero, bb142
bb142:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 240(sp)
  ADD s1, s11, zero
  SLTI s6, s1, 10
  BNE s6, zero, bb145
  JAL zero, bb146
bb143:
  FLW ft4, 192(sp)
  FLW ft3, 240(sp)
  FMUL.S fs8, ft4, ft3
  FLW ft4, 96(sp)
  FADD.S fs7, ft4, fs8
  FLW ft4, 240(sp)
  FMUL.S fs8, fs2, ft4
  FLW ft4, 88(sp)
  FADD.S fs0, ft4, fs8
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSUB.S fs1, fs7, fs8
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSUB.S fs10, fs0, fs8
  FMUL.S fs8, fs1, fs1
  FMUL.S fs1, fs10, fs10
  FADD.S fs10, fs8, fs1
  ADDI s6, zero, 8
  FCVT.S.W fs1, s6
  FDIV.S fs8, fs10, fs1
  LA s6, .CONSTANT.7.2
  FLW fs3, 0(s6)
  FADD.S fs9, fs8, fs3
  FLW ft4, 112(sp)
  FMUL.S fs3, ft4, fs10
  ADDI s6, zero, 4
  FCVT.S.W fs8, s6
  FADD.S fs6, fs8, fs10
  FDIV.S fs4, fs3, fs6
  FADD.S fs3, fs9, fs4
  ADDI s6, zero, 10
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb164
bb144:
  LA s2, .CONSTANT.7.0
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FSGNJ.S fs1, fs0, fs3
  JAL zero, bb139
bb145:
  LA s6, .CONSTANT.7.3
  FLW fs8, 0(s6)
  FLW ft4, 240(sp)
  FLT.S s6, ft4, fs8
  ADD s0, s6, zero
  JAL zero, bb147
bb146:
  ADD s0, zero, zero
  JAL zero, bb147
bb147:
  ADD s6, s0, zero
  BNE s6, zero, bb143
  JAL zero, bb144
bb148:
  ADDI s2, sp, 4
  FLW fs0, 0(s2)
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb139
bb149:
  FLW fs0, 0(sp)
  FLW ft4, 240(sp)
  FADD.S fs4, ft4, fs0
  ADDIW s2, s1, 1
  ADD s11, s2, zero
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb142
bb150:
  ADDI s10, zero, 1
  JAL zero, bb152
bb151:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 104(sp)
  FLT.S s0, ft4, fs2
  ADD s10, s0, zero
  JAL zero, bb152
bb152:
  ADD s11, s10, zero
  BNE s11, zero, bb153
  JAL zero, bb180
bb153:
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FLW ft4, 104(sp)
  FDIV.S fs3, ft4, fs10
  FCVT.W.S s11, fs3, rtz
  FCVT.S.W fs3, s11
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FMUL.S fs1, fs3, fs10
  FLW ft4, 104(sp)
  FSUB.S fs3, ft4, fs1
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 200(sp)
  JAL zero, bb154
bb154:
  FLW ft3, 200(sp)
  FLW ft4, 200(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 216(sp)
  LA s11, .CONSTANT.7.5
  FLW fs10, 0(s11)
  FLW ft4, 216(sp)
  FLT.S s11, fs10, ft4
  BNE s11, zero, bb155
  JAL zero, bb181
bb155:
  LA s11, .CONSTANT.7.4
  FLW fs10, 0(s11)
  FLW ft4, 216(sp)
  FSUB.S fs6, ft4, fs10
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 208(sp)
  JAL zero, bb156
bb156:
  FLW ft3, 208(sp)
  FLW ft4, 208(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 232(sp)
  FLW ft4, 232(sp)
  FLW ft3, 152(sp)
  FLT.S s11, ft4, ft3
  BNE s11, zero, bb157
  JAL zero, bb182
bb157:
  LA s11, .CONSTANT.7.4
  FLW fs9, 0(s11)
  FLW ft4, 232(sp)
  FADD.S fs8, ft4, fs9
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 224(sp)
  JAL zero, bb158
bb158:
  FLW ft4, 224(sp)
  FLW ft3, 224(sp)
  FSGNJ.S fs8, ft4, ft3
  FSGNJ.S fa0, fs8, fs8
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  JAL zero, bb141
bb159:
  LA s9, seed
  LW s10, 0(s9)
  LUI s9, 24414
  ADDIW s9, s9, 263
  ADDW s11, s10, s9
  LA s9, seed
  SW s11, 0(s9)
  JAL zero, bb160
bb160:
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
  FSW ft4, 104(sp)
  ADDI s9, zero, 2
  FCVT.S.W ft4, s9
  FSW ft4, 112(sp)
  LA s9, .CONSTANT.7.5
  FLW fs7, 0(s9)
  FLW ft4, 112(sp)
  FDIV.S fs8, fs7, ft4
  FLW ft3, 104(sp)
  FADD.S ft4, ft3, fs8
  FSW ft4, 80(sp)
  LA s9, .CONSTANT.7.4
  FLW fs8, 0(s9)
  FLW ft4, 80(sp)
  FLT.S s9, fs8, ft4
  BNE s9, zero, bb170
  JAL zero, bb171
bb161:
  FSW fs6, 0(sp)
  ADDI s2, sp, 4
  LA s3, .CONSTANT.7.6
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  JAL zero, bb162
bb162:
  FLW fs0, 0(sp)
  LA s2, .CONSTANT.7.7
  FLW fs1, 0(s2)
  FLT.S s2, fs0, fs1
  BNE s2, zero, bb148
  JAL zero, bb149
bb163:
  FSW fs3, 0(sp)
  ADDI s2, sp, 4
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  JAL zero, bb162
bb164:
  FSGNJ.S fs3, fs4, fs4
  ADD s2, s6, zero
  XOR s5, s2, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb165
  JAL zero, bb166
bb165:
  FDIV.S fs6, fs10, fs3
  FADD.S fs9, fs3, fs6
  FLW ft4, 112(sp)
  FDIV.S fs6, fs9, ft4
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADD s6, s5, zero
  FSGNJ.S fs4, fs6, fs6
  JAL zero, bb164
bb166:
  LA s2, .CONSTANT.7.8
  FLW fs4, 0(s2)
  FSUB.S fs6, fs3, fs4
  LA s2, .CONSTANT.7.9
  FLW fs3, 0(s2)
  FSUB.S fs4, fs7, fs3
  LA s2, .CONSTANT.7.9
  FLW fs3, 0(s2)
  FSUB.S fs7, fs0, fs3
  FMUL.S fs0, fs4, fs4
  FMUL.S fs3, fs7, fs7
  FADD.S fs4, fs0, fs3
  FDIV.S fs0, fs4, fs1
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FADD.S fs3, fs0, fs1
  FLW ft4, 112(sp)
  FMUL.S fs0, ft4, fs4
  FADD.S fs1, fs8, fs4
  FDIV.S fs7, fs0, fs1
  FADD.S fs0, fs3, fs7
  ADDI s2, zero, 10
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb167
bb167:
  FSGNJ.S fs0, fs1, fs1
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb168
  JAL zero, bb169
bb168:
  FDIV.S fs3, fs4, fs0
  FADD.S fs7, fs0, fs3
  FLW ft4, 112(sp)
  FDIV.S fs3, fs7, ft4
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  ADD s2, s6, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb167
bb169:
  LA s2, .CONSTANT.7.10
  FLW fs1, 0(s2)
  FSUB.S fs3, fs0, fs1
  FLT.S s2, fs6, fs3
  BNE s2, zero, bb161
  JAL zero, bb163
bb170:
  ADDI s9, zero, 1
  JAL zero, bb172
bb171:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 80(sp)
  FLT.S s0, ft4, fs2
  ADD s9, s0, zero
  JAL zero, bb172
bb172:
  ADD s10, s9, zero
  BNE s10, zero, bb173
  JAL zero, bb183
bb173:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FLW ft4, 80(sp)
  FDIV.S fs9, ft4, fs8
  FCVT.W.S s10, fs9, rtz
  FCVT.S.W fs8, s10
  LA s10, .CONSTANT.7.4
  FLW fs9, 0(s10)
  FMUL.S fs6, fs8, fs9
  FLW ft4, 80(sp)
  FSUB.S fs8, ft4, fs6
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 120(sp)
  JAL zero, bb174
bb174:
  FLW ft3, 120(sp)
  FLW ft4, 120(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 136(sp)
  LA s10, .CONSTANT.7.5
  FLW fs9, 0(s10)
  FLW ft4, 136(sp)
  FLT.S s10, fs9, ft4
  BNE s10, zero, bb175
  JAL zero, bb184
bb175:
  LA s10, .CONSTANT.7.4
  FLW fs9, 0(s10)
  FLW ft4, 136(sp)
  FSUB.S fs7, ft4, fs9
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 128(sp)
  JAL zero, bb176
bb176:
  FLW ft3, 128(sp)
  FLW ft4, 128(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 184(sp)
  LA s10, .CONSTANT.7.5
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.5
  FLW fs10, 0(s10)
  FSGNJN.S ft4, fs5, fs10
  FSW ft4, 152(sp)
  FLW ft4, 184(sp)
  FLW ft3, 152(sp)
  FLT.S s10, ft4, ft3
  BNE s10, zero, bb177
  JAL zero, bb185
bb177:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FLW ft4, 184(sp)
  FADD.S fs10, ft4, fs5
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 160(sp)
  JAL zero, bb178
bb178:
  FLW ft4, 160(sp)
  FLW ft3, 160(sp)
  FSGNJ.S fs10, ft4, ft3
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 192(sp)
  LA s10, .CONSTANT.7.4
  FLW fs10, 0(s10)
  FLW ft4, 104(sp)
  FLT.S s10, fs10, ft4
  BNE s10, zero, bb150
  JAL zero, bb151
bb179:
  ADD s1, s0, zero
  JAL zero, bb135
bb180:
  FLW ft3, 104(sp)
  FLW ft4, 104(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 200(sp)
  JAL zero, bb154
bb181:
  FLW ft3, 216(sp)
  FLW ft4, 216(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 208(sp)
  JAL zero, bb156
bb182:
  FLW ft3, 232(sp)
  FLW ft4, 232(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 224(sp)
  JAL zero, bb158
bb183:
  FLW ft3, 80(sp)
  FLW ft4, 80(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 120(sp)
  JAL zero, bb174
bb184:
  FLW ft3, 136(sp)
  FLW ft4, 136(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 128(sp)
  JAL zero, bb176
bb185:
  FLW ft3, 184(sp)
  FLW ft4, 184(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 160(sp)
  JAL zero, bb178
