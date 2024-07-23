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
.word 0x40c90fdb
.CONSTANT.7.1:
.word 0x40490fdb
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x3ecccccd
.CONSTANT.7.4:
.word 0x3f000000
.CONSTANT.7.5:
.word 0x40000000
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
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  FSD fs0, 136(sp)
  FSD fs1, 144(sp)
  FSD fs2, 152(sp)
  FSD fs3, 160(sp)
  FSD fs4, 168(sp)
  FSD fs5, 176(sp)
  FSD fs6, 184(sp)
  FSD fs7, 192(sp)
  FSD fs10, 200(sp)
  FSD fs11, 208(sp)
  FSD fs8, 216(sp)
  FSD fs9, 224(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 24(sp)
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 20(sp)
  ADDI s0, sp, 236
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs6, 0(s1)
  FSGNJN.S fs5, fs5, fs6
  ADDI s1, zero, 8
  FCVT.S.W fs6, s1
  ADDI s1, zero, 4
  FCVT.S.W fs7, s1
  ADDI s1, sp, 236
  ADDI s2, sp, 236
  LUI s3, 24414
  ADDIW s3, s3, 262
  FCVT.S.W fs8, s3
  ADDI s3, zero, 24
  FCVT.S.W fs9, s3
  ADDI s3, zero, 2
  FCVT.S.W fs10, s3
  LA s3, .CONSTANT.7.1
  FLW fs11, 0(s3)
  FDIV.S fs11, fs11, fs10
  LA s3, .CONSTANT.7.0
  FLW ft0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW ft1, 0(s3)
  FSGNJN.S ft4, ft0, ft1
  FSW ft4, 12(sp)
  LA s3, .CONSTANT.7.1
  FLW ft1, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW ft2, 0(s3)
  FSGNJN.S ft4, ft1, ft2
  FSW ft4, 16(sp)
  ADD s3, zero, zero
  LA s4, .CONSTANT.7.2
  FLW ft2, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW ft5, 0(s4)
  FSGNJ.S ft4, ft2, ft5
  FSW ft4, 8(sp)
  # implict jump to bb1
bb1:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  ADD s4, s3, zero
  SLTI s5, s4, 24
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
  ADDI s5, zero, 24
  FCVT.S.W ft6, s5
  FLW ft4, 4(sp)
  FDIV.S ft6, ft4, ft6
  FSGNJ.S fa0, ft6, ft6
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  FLD fs0, 136(sp)
  FLD fs1, 144(sp)
  FLD fs2, 152(sp)
  FLD fs3, 160(sp)
  FLD fs4, 168(sp)
  FLD fs5, 176(sp)
  FLD fs6, 184(sp)
  FLD fs7, 192(sp)
  FLD fs10, 200(sp)
  FLD fs11, 208(sp)
  FLD fs8, 216(sp)
  FLD fs9, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb3:
  LA s5, seed
  LW s5, 0(s5)
  LUI s6, 4878
  ADDIW s6, s6, -158
  MULW s5, s5, s6
  LUI s6, 6
  ADDIW s6, s6, -1243
  ADDW s5, s5, s6
  LUI s6, 24414
  ADDIW s6, s6, 263
  REMW s5, s5, s6
  LA s6, seed
  SW s5, 0(s6)
  BLT s5, zero, bb47
  # implict jump to bb4
bb4:
  LA s5, seed
  LW s5, 0(s5)
  FCVT.S.W ft6, s5
  FDIV.S ft6, ft6, fs8
  FCVT.S.W ft7, s4
  FADD.S ft6, ft7, ft6
  LA s5, .CONSTANT.7.0
  FLW ft7, 0(s5)
  FMUL.S ft6, ft7, ft6
  FDIV.S fs2, ft6, fs9
  FADD.S ft6, fs2, fs11
  LA s5, .CONSTANT.7.0
  FLW ft7, 0(s5)
  FLT.S s5, ft7, ft6
  BNE s5, zero, bb46
  # implict jump to bb5
bb5:
  FLW ft4, 12(sp)
  FLT.S s5, ft6, ft4
  # implict jump to bb6
bb6:
  BNE s5, zero, bb45
  # implict jump to bb7
bb7:
  FSGNJ.S ft7, ft6, ft6
  # implict jump to bb8
bb8:
  LA s5, .CONSTANT.7.1
  FLW ft6, 0(s5)
  FLT.S s5, ft6, ft7
  BNE s5, zero, bb44
  # implict jump to bb9
bb9:
  FSGNJ.S ft6, ft7, ft7
  # implict jump to bb10
bb10:
  FLW ft4, 16(sp)
  FLT.S s5, ft6, ft4
  BNE s5, zero, bb43
  # implict jump to bb11
bb11:
  FSGNJ.S ft7, ft6, ft6
  # implict jump to bb12
bb12:
  FSGNJ.S fa0, ft7, ft7
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  LA s5, .CONSTANT.7.0
  FLW fs4, 0(s5)
  FLT.S s5, fs4, fs2
  BNE s5, zero, bb42
  # implict jump to bb13
bb13:
  FLT.S s5, fs2, fs5
  # implict jump to bb14
bb14:
  BNE s5, zero, bb41
  # implict jump to bb15
bb15:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb16
bb16:
  LA s5, .CONSTANT.7.1
  FLW fs0, 0(s5)
  FLT.S s5, fs0, fs4
  BNE s5, zero, bb40
  # implict jump to bb17
bb17:
  FSGNJ.S fs0, fs4, fs4
  # implict jump to bb18
bb18:
  FLW ft4, 16(sp)
  FLT.S s5, fs0, ft4
  BNE s5, zero, bb39
  # implict jump to bb19
bb19:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb20
bb20:
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADD s5, zero, zero
  LA s6, .CONSTANT.7.2
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs2, 0(s6)
  FSGNJ.S fs0, fs0, fs2
  # implict jump to bb21
bb21:
  FSGNJ.S fs2, fs0, fs0
  ADD s6, s5, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb38
  # implict jump to bb22
bb22:
  ADD s7, zero, zero
  # implict jump to bb23
bb23:
  BNE s7, zero, bb26
  # implict jump to bb24
bb24:
  LA s7, .CONSTANT.7.2
  FLW fs3, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs4, 0(s7)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb25
bb25:
  FLW ft4, 4(sp)
  FADD.S fs0, ft4, fs3
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 8(sp)
  JAL zero, bb1
bb26:
  FLW ft4, 0(sp)
  FMUL.S fs4, ft4, fs2
  FLW ft4, 24(sp)
  FADD.S fs4, ft4, fs4
  FMUL.S ft0, fs1, fs2
  FLW ft4, 20(sp)
  FADD.S ft0, ft4, ft0
  LA s7, .CONSTANT.7.3
  FLW ft1, 0(s7)
  FSUB.S ft1, fs4, ft1
  LA s7, .CONSTANT.7.3
  FLW ft2, 0(s7)
  FSUB.S ft2, ft0, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FADD.S ft1, ft1, ft2
  FDIV.S ft2, ft1, fs6
  LA s7, .CONSTANT.7.4
  FLW ft5, 0(s7)
  FADD.S ft2, ft2, ft5
  FMUL.S ft5, fs10, ft1
  FADD.S ft6, fs7, ft1
  FDIV.S ft5, ft5, ft6
  FADD.S ft2, ft2, ft5
  ADDI s7, zero, 10
  # implict jump to bb27
bb27:
  FSGNJ.S ft5, ft2, ft2
  ADD s8, s7, zero
  BNE s8, zero, bb37
  # implict jump to bb28
bb28:
  LA s9, .CONSTANT.7.8
  FLW ft6, 0(s9)
  FSUB.S ft6, ft5, ft6
  LA s9, .CONSTANT.7.9
  FLW ft7, 0(s9)
  FSUB.S ft7, fs4, ft7
  LA s9, .CONSTANT.7.9
  FLW fa0, 0(s9)
  FSUB.S fa0, ft0, fa0
  FMUL.S ft7, ft7, ft7
  FMUL.S fa0, fa0, fa0
  FADD.S ft7, ft7, fa0
  FDIV.S fa0, ft7, fs6
  LA s9, .CONSTANT.7.4
  FLW fa1, 0(s9)
  FADD.S fa0, fa0, fa1
  FMUL.S fa1, fs10, ft7
  FADD.S fa2, fs7, ft7
  FDIV.S fa1, fa1, fa2
  FADD.S fa0, fa0, fa1
  ADDI s9, zero, 10
  # implict jump to bb29
bb29:
  FSGNJ.S fa1, fa0, fa0
  ADD s10, s9, zero
  BNE s10, zero, bb36
  # implict jump to bb30
bb30:
  LA s11, .CONSTANT.7.10
  FLW fa2, 0(s11)
  FSUB.S fa2, fa1, fa2
  FLT.S s11, ft6, fa2
  BNE s11, zero, bb35
  # implict jump to bb31
bb31:
  FSW fa2, 232(sp)
  LA s11, .CONSTANT.7.2
  FLW fa2, 0(s11)
  FSW fa2, 0(s2)
  # implict jump to bb32
bb32:
  FLW fa2, 232(sp)
  LA s11, .CONSTANT.7.7
  FLW fa3, 0(s11)
  FLT.S s11, fa2, fa3
  BNE s11, zero, bb34
  # implict jump to bb33
bb33:
  FADD.S fa2, fs2, fa2
  ADDIW s11, s6, 1
  ADD s5, s11, zero
  FSGNJ.S fs0, fa2, fa2
  JAL zero, bb21
bb34:
  FLW fs0, 0(s0)
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb25
bb35:
  FSW ft6, 232(sp)
  LA s11, .CONSTANT.7.6
  FLW fa2, 0(s11)
  FSW fa2, 0(s1)
  JAL zero, bb32
bb36:
  FDIV.S fs0, ft7, fa1
  FADD.S fs0, fa1, fs0
  FDIV.S fs0, fs0, fs10
  ADDI s3, zero, 1
  SUBW s3, s10, s3
  ADD s9, s3, zero
  FSGNJ.S fa0, fs0, fs0
  JAL zero, bb29
bb37:
  FDIV.S fs0, ft1, ft5
  FADD.S fs0, ft5, fs0
  FDIV.S fs0, fs0, fs10
  ADDI s3, zero, 1
  SUBW s3, s8, s3
  ADD s7, s3, zero
  FSGNJ.S ft2, fs0, fs0
  JAL zero, bb27
bb38:
  LA s8, .CONSTANT.7.5
  FLW fs3, 0(s8)
  FLT.S s8, fs2, fs3
  ADD s7, s8, zero
  JAL zero, bb23
bb39:
  LA s5, .CONSTANT.7.0
  FLW fs3, 0(s5)
  FADD.S fs0, fs0, fs3
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb20
bb40:
  LA s5, .CONSTANT.7.0
  FLW fs2, 0(s5)
  FSUB.S fs2, fs4, fs2
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb18
bb41:
  LA s5, .CONSTANT.7.0
  FLW fs3, 0(s5)
  FDIV.S fs3, fs2, fs3
  FCVT.W.S s5, fs3, rtz
  FCVT.S.W fs3, s5
  LA s5, .CONSTANT.7.0
  FLW fs0, 0(s5)
  FMUL.S fs0, fs3, fs0
  FSUB.S fs0, fs2, fs0
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb16
bb42:
  ADDI s5, zero, 1
  JAL zero, bb14
bb43:
  LA s5, .CONSTANT.7.0
  FLW fa2, 0(s5)
  FADD.S ft6, ft6, fa2
  FSGNJ.S ft7, ft6, ft6
  JAL zero, bb12
bb44:
  LA s5, .CONSTANT.7.0
  FLW fa2, 0(s5)
  FSUB.S ft7, ft7, fa2
  FSGNJ.S ft6, ft7, ft7
  JAL zero, bb10
bb45:
  LA s5, .CONSTANT.7.0
  FLW fa2, 0(s5)
  FDIV.S fa2, ft6, fa2
  FCVT.W.S s5, fa2, rtz
  FCVT.S.W fa2, s5
  LA s5, .CONSTANT.7.0
  FLW fa3, 0(s5)
  FMUL.S fa2, fa2, fa3
  FSUB.S ft6, ft6, fa2
  FSGNJ.S ft7, ft6, ft6
  JAL zero, bb8
bb46:
  ADDI s5, zero, 1
  JAL zero, bb6
bb47:
  LA s5, seed
  LW s5, 0(s5)
  LUI s6, 24414
  ADDIW s6, s6, 263
  ADDW s5, s5, s6
  LA s6, seed
  SW s5, 0(s6)
  JAL zero, bb4
trace:
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  FSD fs0, 56(sp)
  SD s0, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  FSD fs1, 88(sp)
  FSD fs2, 96(sp)
  FSD fs3, 104(sp)
  FSD fs4, 112(sp)
  FSD fs5, 120(sp)
  FSD fs6, 128(sp)
  FSD fs7, 136(sp)
  FSD fs8, 144(sp)
  FSD fs9, 152(sp)
  FSD fs10, 160(sp)
  FSD fs11, 168(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  ADDI s0, sp, 180
  ADDI s1, sp, 180
  ADD s2, zero, zero
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  FSGNJ.S fs4, fs4, fs5
  # implict jump to bb49
bb49:
  FSGNJ.S fs5, fs4, fs4
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb65
  # implict jump to bb50
bb50:
  ADD s4, zero, zero
  # implict jump to bb51
bb51:
  BNE s4, zero, bb53
  # implict jump to bb52
bb52:
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FSGNJ.S fa0, fs6, fs7
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  FLD fs0, 56(sp)
  LD s0, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  FLD fs4, 112(sp)
  FLD fs5, 120(sp)
  FLD fs6, 128(sp)
  FLD fs7, 136(sp)
  FLD fs8, 144(sp)
  FLD fs9, 152(sp)
  FLD fs10, 160(sp)
  FLD fs11, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb53:
  FMUL.S fs6, fa2, fs5
  FADD.S fs6, fs0, fs6
  FMUL.S fs7, fa3, fs5
  FADD.S fs7, fa1, fs7
  LA s4, .CONSTANT.7.3
  FLW fs8, 0(s4)
  FSUB.S fs8, fs6, fs8
  LA s4, .CONSTANT.7.3
  FLW fs9, 0(s4)
  FSUB.S fs9, fs7, fs9
  FMUL.S fs8, fs8, fs8
  FMUL.S fs9, fs9, fs9
  FADD.S fs8, fs8, fs9
  FDIV.S fs9, fs8, fs1
  LA s4, .CONSTANT.7.4
  FLW fs10, 0(s4)
  FADD.S fs9, fs9, fs10
  FMUL.S fs10, fs2, fs8
  FADD.S fs11, fs3, fs8
  FDIV.S fs10, fs10, fs11
  FADD.S fs9, fs9, fs10
  ADDI s4, zero, 10
  # implict jump to bb54
bb54:
  FSGNJ.S fs10, fs9, fs9
  ADD s5, s4, zero
  BNE s5, zero, bb64
  # implict jump to bb55
bb55:
  LA s6, .CONSTANT.7.8
  FLW fs11, 0(s6)
  FSUB.S fs11, fs10, fs11
  LA s6, .CONSTANT.7.9
  FLW ft0, 0(s6)
  FSUB.S ft0, fs6, ft0
  LA s6, .CONSTANT.7.9
  FLW ft1, 0(s6)
  FSUB.S ft1, fs7, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FADD.S ft0, ft0, ft1
  FDIV.S ft1, ft0, fs1
  LA s6, .CONSTANT.7.4
  FLW ft2, 0(s6)
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, fs2, ft0
  FADD.S ft5, fs3, ft0
  FDIV.S ft2, ft2, ft5
  FADD.S ft1, ft1, ft2
  ADDI s6, zero, 10
  # implict jump to bb56
bb56:
  FSGNJ.S ft2, ft1, ft1
  ADD s7, s6, zero
  BNE s7, zero, bb63
  # implict jump to bb57
bb57:
  LA s8, .CONSTANT.7.10
  FLW ft5, 0(s8)
  FSUB.S ft5, ft2, ft5
  FLT.S s8, fs11, ft5
  BNE s8, zero, bb62
  # implict jump to bb58
bb58:
  FSW ft5, 176(sp)
  LA s8, .CONSTANT.7.2
  FLW ft5, 0(s8)
  FSW ft5, 0(s1)
  # implict jump to bb59
bb59:
  FLW ft5, 176(sp)
  LA s8, .CONSTANT.7.7
  FLW ft6, 0(s8)
  FLT.S s8, ft5, ft6
  BNE s8, zero, bb61
  # implict jump to bb60
bb60:
  FADD.S ft5, fs5, ft5
  ADDIW s8, s3, 1
  ADD s2, s8, zero
  FSGNJ.S fs4, ft5, ft5
  JAL zero, bb49
bb61:
  ADDI s2, sp, 180
  FLW fs4, 0(s2)
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  FLD fs0, 56(sp)
  LD s0, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  FLD fs4, 112(sp)
  FLD fs5, 120(sp)
  FLD fs6, 128(sp)
  FLD fs7, 136(sp)
  FLD fs8, 144(sp)
  FLD fs9, 152(sp)
  FLD fs10, 160(sp)
  FLD fs11, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb62:
  FSW fs11, 176(sp)
  LA s8, .CONSTANT.7.6
  FLW ft5, 0(s8)
  FSW ft5, 0(s0)
  JAL zero, bb59
bb63:
  FDIV.S fs4, ft0, ft2
  FADD.S fs4, ft2, fs4
  FDIV.S fs4, fs4, fs2
  ADDI s2, zero, 1
  SUBW s2, s7, s2
  ADD s6, s2, zero
  FSGNJ.S ft1, fs4, fs4
  JAL zero, bb56
bb64:
  FDIV.S fs4, fs8, fs10
  FADD.S fs4, fs10, fs4
  FDIV.S fs4, fs4, fs2
  ADDI s2, zero, 1
  SUBW s2, s5, s2
  ADD s4, s2, zero
  FSGNJ.S fs9, fs4, fs4
  JAL zero, bb54
bb65:
  LA s5, .CONSTANT.7.5
  FLW fs6, 0(s5)
  FLT.S s5, fs5, fs6
  ADD s4, s5, zero
  JAL zero, bb51
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
  BNE s0, zero, bb71
  # implict jump to bb67
bb67:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb68
bb68:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb70
  # implict jump to bb69
bb69:
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
bb70:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb71:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb68
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
my_sqrt:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs1, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FADD.S fs4, fs4, fs0
  FDIV.S fs3, fs3, fs4
  FADD.S fs1, fs1, fs3
  ADDI s0, zero, 10
  # implict jump to bb74
bb74:
  FSGNJ.S fs3, fs1, fs1
  ADD s1, s0, zero
  BNE s1, zero, bb76
  # implict jump to bb75
bb75:
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb76:
  FDIV.S fs4, fs0, fs3
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs2
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADD s0, s1, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb74
circle_sdf:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  FSUB.S fs0, fs0, fa2
  FSUB.S fs1, fa1, fa3
  FMUL.S fs0, fs0, fs0
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs1, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FADD.S fs4, fs4, fs0
  FDIV.S fs3, fs3, fs4
  FADD.S fs1, fs1, fs3
  ADDI s0, zero, 10
  # implict jump to bb78
bb78:
  FSGNJ.S fs3, fs1, fs1
  ADD s1, s0, zero
  BNE s1, zero, bb80
  # implict jump to bb79
bb79:
  FSUB.S fs4, fs3, fa4
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb80:
  FDIV.S fs4, fs0, fs3
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs2
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADD s0, s1, zero
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb78
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb83
  # implict jump to bb82
bb82:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb83:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_sin:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb96
  # implict jump to bb85
bb85:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb86
bb86:
  BNE s0, zero, bb95
  # implict jump to bb87
bb87:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb88
bb88:
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb94
  # implict jump to bb89
bb89:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb90
bb90:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb93
  # implict jump to bb91
bb91:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb92
bb92:
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
bb93:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb92
bb94:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb90
bb95:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb88
bb96:
  ADDI s0, zero, 1
  JAL zero, bb86
rand:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, seed
  LW s0, 0(s0)
  LUI s1, 4878
  ADDIW s1, s1, -158
  MULW s0, s0, s1
  LUI s1, 6
  ADDIW s1, s1, -1243
  ADDW s0, s0, s1
  LUI s1, 24414
  ADDIW s1, s1, 263
  REMW s0, s0, s1
  LA s1, seed
  SW s0, 0(s1)
  BLT s0, zero, bb99
  # implict jump to bb98
bb98:
  LA s0, seed
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb99:
  LA s0, seed
  LW s0, 0(s0)
  LUI s1, 24414
  ADDIW s1, s1, 263
  ADDW s0, s0, s1
  LA s1, seed
  SW s0, 0(s1)
  JAL zero, bb98
scene:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  FSD fs8, 120(sp)
  FSD fs9, 128(sp)
  FSD fs10, 136(sp)
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  FSUB.S fs0, fa0, fs0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FSUB.S fs1, fa1, fs1
  FMUL.S fs0, fs0, fs0
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FMUL.S fs4, fs3, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FADD.S fs6, fs5, fs0
  FDIV.S fs4, fs4, fs6
  FADD.S fs2, fs2, fs4
  ADDI s0, zero, 10
  # implict jump to bb101
bb101:
  FSGNJ.S fs4, fs2, fs2
  ADD s1, s0, zero
  BNE s1, zero, bb109
  # implict jump to bb102
bb102:
  LA s2, .CONSTANT.7.8
  FLW fs6, 0(s2)
  FSUB.S fs6, fs4, fs6
  LA s2, .CONSTANT.7.9
  FLW fs7, 0(s2)
  FSUB.S fs7, fa0, fs7
  LA s2, .CONSTANT.7.9
  FLW fs8, 0(s2)
  FSUB.S fs8, fa1, fs8
  FMUL.S fs7, fs7, fs7
  FMUL.S fs8, fs8, fs8
  FADD.S fs7, fs7, fs8
  FDIV.S fs8, fs7, fs1
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FADD.S fs8, fs8, fs9
  FMUL.S fs9, fs3, fs7
  FADD.S fs10, fs5, fs7
  FDIV.S fs9, fs9, fs10
  FADD.S fs8, fs8, fs9
  ADDI s2, zero, 10
  # implict jump to bb103
bb103:
  FSGNJ.S fs9, fs8, fs8
  ADD s3, s2, zero
  BNE s3, zero, bb108
  # implict jump to bb104
bb104:
  LA s4, .CONSTANT.7.10
  FLW fs10, 0(s4)
  FSUB.S fs10, fs9, fs10
  FLT.S s4, fs6, fs10
  BNE s4, zero, bb107
  # implict jump to bb105
bb105:
  FSW fs10, 0(a0)
  ADDI s4, a0, 4
  LA s5, .CONSTANT.7.2
  FLW fs10, 0(s5)
  FSW fs10, 0(s4)
  # implict jump to bb106
bb106:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  FLD fs9, 128(sp)
  FLD fs10, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb107:
  FSW fs6, 0(a0)
  ADDI s4, a0, 4
  LA s5, .CONSTANT.7.6
  FLW fs10, 0(s5)
  FSW fs10, 0(s4)
  JAL zero, bb106
bb108:
  FDIV.S fs10, fs7, fs9
  FADD.S fs9, fs9, fs10
  FDIV.S fs9, fs9, fs3
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  ADD s2, s3, zero
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb103
bb109:
  FDIV.S fs6, fs0, fs4
  FADD.S fs4, fs4, fs6
  FDIV.S fs4, fs4, fs3
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADD s0, s1, zero
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb101
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
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb122
  # implict jump to bb111
bb111:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb112
bb112:
  BNE s0, zero, bb121
  # implict jump to bb113
bb113:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb114
bb114:
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb120
  # implict jump to bb115
bb115:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb116
bb116:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb118
bb118:
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
bb119:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb118
bb120:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb116
bb121:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb114
bb122:
  ADDI s0, zero, 1
  JAL zero, bb112
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -256
  SD ra, 48(sp)
  SD s0, 56(sp)
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
  FSD fs9, 176(sp)
  FSD fs10, 184(sp)
  FSD fs2, 192(sp)
  FSD fs8, 200(sp)
  FSD fs3, 208(sp)
  FSD fs4, 216(sp)
  FSD fs11, 224(sp)
  FSD fs5, 232(sp)
  FSD fs6, 240(sp)
  FSD fs7, 248(sp)
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
  ADDI s0, zero, 24
  FCVT.S.W fs3, s0
  ADDI s0, zero, 192
  FCVT.S.W fs4, s0
  ADDI s0, sp, 172
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs6, 0(s1)
  FSGNJN.S fs5, fs5, fs6
  ADDI s1, zero, 8
  FCVT.S.W fs6, s1
  ADDI s1, zero, 4
  FCVT.S.W fs7, s1
  ADDI s1, sp, 172
  ADDI s2, sp, 172
  LUI s3, 24414
  ADDIW s3, s3, 262
  FCVT.S.W ft4, s3
  FSW ft4, 8(sp)
  ADDI s3, zero, 24
  FCVT.S.W ft4, s3
  FSW ft4, 12(sp)
  ADDI s3, zero, 2
  FCVT.S.W ft4, s3
  FSW ft4, 24(sp)
  LA s3, .CONSTANT.7.1
  FLW fs11, 0(s3)
  FLW ft3, 24(sp)
  FDIV.S ft4, fs11, ft3
  FSW ft4, 28(sp)
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  FSGNJN.S ft4, fs2, fs0
  FSW ft4, 36(sp)
  LA s3, .CONSTANT.7.1
  FLW fs2, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs0, 0(s3)
  FSGNJN.S ft4, fs2, fs0
  FSW ft4, 32(sp)
  ADD s3, zero, zero
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.D fs0, fa0, fa0
  ADD s4, zero, zero
  # implict jump to bb125
bb125:
  ADD s5, s4, zero
  FSGNJ.S fs11, fs0, fs0
  FSGNJ.S fs10, fs2, fs2
  ADD s6, s3, zero
  SLTI s7, s5, 192
  BNE s7, zero, bb127
  # implict jump to bb126
bb126:
  LD ra, 48(sp)
  LD s0, 56(sp)
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
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs2, 192(sp)
  FLD fs8, 200(sp)
  FLD fs3, 208(sp)
  FLD fs4, 216(sp)
  FLD fs11, 224(sp)
  FLD fs5, 232(sp)
  FLD fs6, 240(sp)
  FLD fs7, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb127:
  FCVT.S.W ft4, s5
  FSW ft4, 20(sp)
  FLW ft3, 20(sp)
  FDIV.S ft4, ft3, fs4
  FSW ft4, 16(sp)
  ADD s7, zero, zero
  # implict jump to bb128
bb128:
  ADD s8, s7, zero
  FSGNJ.S fs9, fs11, fs11
  FSGNJ.S fs8, fs10, fs10
  ADD s9, s6, zero
  SLTI s10, s8, 192
  BNE s10, zero, bb130
  # implict jump to bb129
bb129:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s10, s5, 1
  ADD s3, s9, zero
  FSGNJ.S fs2, fs8, fs8
  FSGNJ.S fs0, fs9, fs9
  ADD s4, s10, zero
  JAL zero, bb125
bb130:
  FCVT.S.W fs0, s8
  FDIV.S ft4, fs0, fs4
  FSW ft4, 0(sp)
  ADD s3, zero, zero
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  FSGNJ.S fs8, fs8, fs9
  # implict jump to bb131
bb131:
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 4(sp)
  ADD s4, s3, zero
  SLTI s9, s4, 24
  BNE s9, zero, bb136
  # implict jump to bb132
bb132:
  FLW ft4, 4(sp)
  FDIV.S fs9, ft4, fs3
  LA s9, .CONSTANT.7.11
  FLW fs2, 0(s9)
  FMUL.S fs2, fs9, fs2
  FCVT.W.S s9, fs2, rtz
  ADDI s10, zero, 255
  BLT s10, s9, bb135
  # implict jump to bb133
bb133:
  # implict jump to bb134
bb134:
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s10, s8, 1
  ADD s6, s9, zero
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs10, ft4, ft3
  FSGNJ.S fs11, fs0, fs0
  ADD s7, s10, zero
  JAL zero, bb128
bb135:
  ADDI s9, zero, 255
  JAL zero, bb134
bb136:
  LA s6, seed
  LW s6, 0(s6)
  LUI s7, 4878
  ADDIW s7, s7, -158
  MULW s6, s6, s7
  LUI s7, 6
  ADDIW s7, s7, -1243
  ADDW s6, s6, s7
  LUI s7, 24414
  ADDIW s7, s7, 263
  REMW s6, s6, s7
  LA s7, seed
  SW s6, 0(s7)
  BLT s6, zero, bb180
  # implict jump to bb137
bb137:
  LA s6, seed
  LW s6, 0(s6)
  FCVT.S.W fs2, s6
  FLW ft4, 8(sp)
  FDIV.S fs2, fs2, ft4
  FCVT.S.W fs9, s4
  FADD.S fs2, fs9, fs2
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FMUL.S fs2, fs9, fs2
  FLW ft4, 12(sp)
  FDIV.S fs1, fs2, ft4
  FLW ft4, 28(sp)
  FADD.S fs2, fs1, ft4
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FLT.S s6, fs9, fs2
  BNE s6, zero, bb179
  # implict jump to bb138
bb138:
  FLW ft4, 36(sp)
  FLT.S s6, fs2, ft4
  # implict jump to bb139
bb139:
  BNE s6, zero, bb178
  # implict jump to bb140
bb140:
  FSGNJ.S fs9, fs2, fs2
  # implict jump to bb141
bb141:
  LA s6, .CONSTANT.7.1
  FLW fs2, 0(s6)
  FLT.S s6, fs2, fs9
  BNE s6, zero, bb177
  # implict jump to bb142
bb142:
  FSGNJ.S fs2, fs9, fs9
  # implict jump to bb143
bb143:
  FLW ft4, 32(sp)
  FLT.S s6, fs2, ft4
  BNE s6, zero, bb176
  # implict jump to bb144
bb144:
  FSGNJ.S fs9, fs2, fs2
  # implict jump to bb145
bb145:
  FSGNJ.S fa0, fs9, fs9
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 44(sp)
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FLT.S s6, fs2, fs1
  BNE s6, zero, bb175
  # implict jump to bb146
bb146:
  FLT.S s6, fs1, fs5
  # implict jump to bb147
bb147:
  BNE s6, zero, bb174
  # implict jump to bb148
bb148:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb149
bb149:
  LA s6, .CONSTANT.7.1
  FLW fs1, 0(s6)
  FLT.S s6, fs1, fs2
  BNE s6, zero, bb173
  # implict jump to bb150
bb150:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb151
bb151:
  FLW ft4, 32(sp)
  FLT.S s6, fs1, ft4
  BNE s6, zero, bb172
  # implict jump to bb152
bb152:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb153
bb153:
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 40(sp)
  ADD s6, zero, zero
  LA s7, .CONSTANT.7.2
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs2, 0(s7)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb154
bb154:
  FSGNJ.S fs2, fs1, fs1
  ADD s7, s6, zero
  SLTI s9, s7, 10
  BNE s9, zero, bb171
  # implict jump to bb155
bb155:
  ADD s9, zero, zero
  # implict jump to bb156
bb156:
  BNE s9, zero, bb159
  # implict jump to bb157
bb157:
  LA s9, .CONSTANT.7.2
  FLW fs9, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs10, 0(s9)
  FSGNJ.S fs9, fs9, fs10
  # implict jump to bb158
bb158:
  FLW ft4, 4(sp)
  FADD.S fs1, ft4, fs9
  ADDIW s6, s4, 1
  ADD s3, s6, zero
  FSGNJ.S fs8, fs1, fs1
  JAL zero, bb131
bb159:
  FLW ft4, 44(sp)
  FMUL.S fs10, ft4, fs2
  FLW ft4, 0(sp)
  FADD.S fs10, ft4, fs10
  FLW ft4, 40(sp)
  FMUL.S fs11, ft4, fs2
  FLW ft4, 16(sp)
  FADD.S fs11, ft4, fs11
  LA s9, .CONSTANT.7.3
  FLW ft0, 0(s9)
  FSUB.S ft0, fs10, ft0
  LA s9, .CONSTANT.7.3
  FLW ft1, 0(s9)
  FSUB.S ft1, fs11, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FADD.S ft0, ft0, ft1
  FDIV.S ft1, ft0, fs6
  LA s9, .CONSTANT.7.4
  FLW ft2, 0(s9)
  FADD.S ft1, ft1, ft2
  FLW ft4, 24(sp)
  FMUL.S ft2, ft4, ft0
  FADD.S ft5, fs7, ft0
  FDIV.S ft2, ft2, ft5
  FADD.S ft1, ft1, ft2
  ADDI s9, zero, 10
  # implict jump to bb160
bb160:
  FSGNJ.S ft2, ft1, ft1
  ADD s10, s9, zero
  BNE s10, zero, bb170
  # implict jump to bb161
bb161:
  LA s11, .CONSTANT.7.8
  FLW ft5, 0(s11)
  FSUB.S ft5, ft2, ft5
  LA s11, .CONSTANT.7.9
  FLW ft6, 0(s11)
  FSUB.S ft6, fs10, ft6
  LA s11, .CONSTANT.7.9
  FLW ft7, 0(s11)
  FSUB.S ft7, fs11, ft7
  FMUL.S ft6, ft6, ft6
  FMUL.S ft7, ft7, ft7
  FADD.S ft6, ft6, ft7
  FDIV.S ft7, ft6, fs6
  LA s11, .CONSTANT.7.4
  FLW fa0, 0(s11)
  FADD.S ft7, ft7, fa0
  FLW ft4, 24(sp)
  FMUL.S fa0, ft4, ft6
  FADD.S fa1, fs7, ft6
  FDIV.S fa0, fa0, fa1
  FADD.S ft7, ft7, fa0
  ADDI s11, zero, 10
  # implict jump to bb162
bb162:
  FSGNJ.S fa0, ft7, ft7
  ADD ra, s11, zero
  BNE ra, zero, bb169
  # implict jump to bb163
bb163:
  LA t0, .CONSTANT.7.10
  FLW fa1, 0(t0)
  FSUB.S fa1, fa0, fa1
  FLT.S t0, ft5, fa1
  BNE t0, zero, bb168
  # implict jump to bb164
bb164:
  FSW fa1, 168(sp)
  LA t0, .CONSTANT.7.2
  FLW fa1, 0(t0)
  FSW fa1, 0(s2)
  # implict jump to bb165
bb165:
  FLW fa1, 168(sp)
  LA t0, .CONSTANT.7.7
  FLW fa2, 0(t0)
  FLT.S t0, fa1, fa2
  BNE t0, zero, bb167
  # implict jump to bb166
bb166:
  FADD.S fa1, fs2, fa1
  ADDIW t0, s7, 1
  ADD s6, t0, zero
  FSGNJ.S fs1, fa1, fa1
  JAL zero, bb154
bb167:
  FLW fs1, 0(s0)
  FSGNJ.S fs9, fs1, fs1
  JAL zero, bb158
bb168:
  FSW ft5, 168(sp)
  LA t0, .CONSTANT.7.6
  FLW fa1, 0(t0)
  FSW fa1, 0(s1)
  JAL zero, bb165
bb169:
  FDIV.S fs1, ft6, fa0
  FADD.S fs1, fa0, fs1
  FLW ft4, 24(sp)
  FDIV.S fs1, fs1, ft4
  ADDI s3, zero, 1
  SUBW s3, ra, s3
  ADD s11, s3, zero
  FSGNJ.S ft7, fs1, fs1
  JAL zero, bb162
bb170:
  FDIV.S fs1, ft0, ft2
  FADD.S fs1, ft2, fs1
  FLW ft4, 24(sp)
  FDIV.S fs1, fs1, ft4
  ADDI s3, zero, 1
  SUBW s3, s10, s3
  ADD s9, s3, zero
  FSGNJ.S ft1, fs1, fs1
  JAL zero, bb160
bb171:
  LA s10, .CONSTANT.7.5
  FLW fs9, 0(s10)
  FLT.S s10, fs2, fs9
  ADD s9, s10, zero
  JAL zero, bb156
bb172:
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FADD.S fs1, fs1, fs9
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb153
bb173:
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FSUB.S fs2, fs2, fs9
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb151
bb174:
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FDIV.S fs9, fs1, fs9
  FCVT.W.S s6, fs9, rtz
  FCVT.S.W fs9, s6
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FMUL.S fs9, fs9, fs10
  FSUB.S fs1, fs1, fs9
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb149
bb175:
  ADDI s6, zero, 1
  JAL zero, bb147
bb176:
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FADD.S fs2, fs2, fs10
  FSGNJ.S fs9, fs2, fs2
  JAL zero, bb145
bb177:
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FSUB.S fs9, fs9, fs10
  FSGNJ.S fs2, fs9, fs9
  JAL zero, bb143
bb178:
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FDIV.S fs10, fs2, fs10
  FCVT.W.S s6, fs10, rtz
  FCVT.S.W fs10, s6
  LA s6, .CONSTANT.7.0
  FLW fs11, 0(s6)
  FMUL.S fs10, fs10, fs11
  FSUB.S fs2, fs2, fs10
  FSGNJ.S fs9, fs2, fs2
  JAL zero, bb141
bb179:
  ADDI s6, zero, 1
  JAL zero, bb139
bb180:
  LA s6, seed
  LW s6, 0(s6)
  LUI s7, 24414
  ADDIW s7, s7, 263
  ADDW s6, s6, s7
  LA s7, seed
  SW s6, 0(s7)
  JAL zero, bb137
