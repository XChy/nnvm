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
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  FSD fs0, 88(sp)
  FSD fs1, 96(sp)
  FSD fs2, 104(sp)
  FSD fs3, 112(sp)
  FSD fs4, 120(sp)
  FSD fs5, 128(sp)
  FSD fs6, 136(sp)
  FSD fs7, 144(sp)
  FSD fs8, 152(sp)
  FSD fs9, 160(sp)
  FSD fs10, 168(sp)
  FSD fs11, 176(sp)
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.D fs6, fa1, fa1
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs7, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs8, 0(s1)
  FSGNJ.S fs7, fs7, fs8
  # implict jump to bb1
bb1:
  FSGNJ.S fs8, fs7, fs7
  ADD s1, s0, zero
  SLTI s2, s1, 24
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  ADDI s2, zero, 24
  FCVT.S.W fs9, s2
  FDIV.S fs9, fs8, fs9
  FSGNJ.S fa0, fs9, fs9
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  FLD fs3, 112(sp)
  FLD fs4, 120(sp)
  FLD fs5, 128(sp)
  FLD fs6, 136(sp)
  FLD fs7, 144(sp)
  FLD fs8, 152(sp)
  FLD fs9, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb3:
  LA s2, seed
  LW s2, 0(s2)
  LUI s3, 4878
  ADDIW s3, s3, -158
  MULW s2, s2, s3
  LUI s3, 6
  ADDIW s3, s3, -1243
  ADDW s2, s2, s3
  LUI s3, 24414
  ADDIW s3, s3, 263
  REMW s2, s2, s3
  LA s3, seed
  SW s2, 0(s3)
  SLT s2, s2, zero
  BNE s2, zero, bb47
  # implict jump to bb4
bb4:
  LA s2, seed
  LW s2, 0(s2)
  FCVT.S.W fs9, s2
  LUI s2, 24414
  ADDIW s2, s2, 262
  FCVT.S.W fs10, s2
  FDIV.S fs9, fs9, fs10
  FCVT.S.W fs10, s1
  FADD.S fs9, fs10, fs9
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FMUL.S fs9, fs10, fs9
  ADDI s2, zero, 24
  FCVT.S.W fs10, s2
  FDIV.S fs3, fs9, fs10
  ADDI s2, zero, 2
  FCVT.S.W fs1, s2
  LA s2, .CONSTANT.7.5
  FLW fs9, 0(s2)
  FDIV.S fs9, fs9, fs1
  FADD.S fs9, fs3, fs9
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs9
  BNE s2, zero, bb46
  # implict jump to bb5
bb5:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s2, fs9, fs10
  ADD s2, s2, zero
  # implict jump to bb6
bb6:
  ADD s2, s2, zero
  BNE s2, zero, bb45
  # implict jump to bb7
bb7:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb8
bb8:
  FSGNJ.S fs10, fs10, fs10
  LA s2, .CONSTANT.7.5
  FLW fs9, 0(s2)
  FLT.S s2, fs9, fs10
  BNE s2, zero, bb44
  # implict jump to bb9
bb9:
  FSGNJ.S fs9, fs10, fs10
  # implict jump to bb10
bb10:
  FSGNJ.S fs9, fs9, fs9
  LA s2, .CONSTANT.7.5
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs11, 0(s2)
  FSGNJN.S fs0, fs10, fs11
  FLT.S s2, fs9, fs0
  BNE s2, zero, bb43
  # implict jump to bb11
bb11:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb12
bb12:
  FSGNJ.S fs10, fs10, fs10
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FLT.S s2, fs9, fs3
  BNE s2, zero, bb42
  # implict jump to bb13
bb13:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSGNJN.S fs9, fs9, fs10
  FLT.S s2, fs3, fs9
  ADD s2, s2, zero
  # implict jump to bb14
bb14:
  ADD s2, s2, zero
  BNE s2, zero, bb41
  # implict jump to bb15
bb15:
  FSGNJ.S fs9, fs3, fs3
  # implict jump to bb16
bb16:
  FSGNJ.S fs9, fs9, fs9
  LA s2, .CONSTANT.7.5
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs9
  BNE s2, zero, bb40
  # implict jump to bb17
bb17:
  FSGNJ.S fs3, fs9, fs9
  # implict jump to bb18
bb18:
  FSGNJ.S fs3, fs3, fs3
  FLT.S s2, fs3, fs0
  BNE s2, zero, bb39
  # implict jump to bb19
bb19:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb20
bb20:
  FSGNJ.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  ADD s2, zero, zero
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs3, 0(s3)
  FSGNJ.S fs0, fs0, fs3
  # implict jump to bb21
bb21:
  FSGNJ.S fs3, fs0, fs0
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb38
  # implict jump to bb22
bb22:
  ADD s4, zero, zero
  # implict jump to bb23
bb23:
  ADD s4, s4, zero
  BNE s4, zero, bb26
  # implict jump to bb24
bb24:
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs10, 0(s4)
  FSGNJ.S fs9, fs9, fs10
  # implict jump to bb25
bb25:
  FSGNJ.S fs9, fs9, fs9
  FADD.S fs0, fs8, fs9
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  FSGNJ.S fs7, fs0, fs0
  JAL zero, bb1
bb26:
  FMUL.S fs10, fs2, fs3
  FADD.S fs10, fs5, fs10
  FMUL.S fs11, fs4, fs3
  FADD.S fs11, fs6, fs11
  LA s4, .CONSTANT.7.1
  FLW ft0, 0(s4)
  FSUB.S ft0, fs10, ft0
  LA s4, .CONSTANT.7.1
  FLW ft1, 0(s4)
  FSUB.S ft1, fs11, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FADD.S ft0, ft0, ft1
  ADDI s4, zero, 8
  FCVT.S.W ft1, s4
  FDIV.S ft2, ft0, ft1
  LA s4, .CONSTANT.7.2
  FLW ft5, 0(s4)
  FADD.S ft2, ft2, ft5
  FMUL.S ft5, fs1, ft0
  ADDI s4, zero, 4
  FCVT.S.W ft6, s4
  FADD.S ft7, ft6, ft0
  FDIV.S ft5, ft5, ft7
  FADD.S ft2, ft2, ft5
  ADDI s4, zero, 10
  FSGNJ.S ft2, ft2, ft2
  # implict jump to bb27
bb27:
  FSGNJ.S ft5, ft2, ft2
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s6, zero, s6
  BNE s6, zero, bb37
  # implict jump to bb28
bb28:
  LA s6, .CONSTANT.7.8
  FLW ft7, 0(s6)
  FSUB.S ft7, ft5, ft7
  LA s6, .CONSTANT.7.9
  FLW fa0, 0(s6)
  FSUB.S fa0, fs10, fa0
  LA s6, .CONSTANT.7.9
  FLW fa1, 0(s6)
  FSUB.S fa1, fs11, fa1
  FMUL.S fa0, fa0, fa0
  FMUL.S fa1, fa1, fa1
  FADD.S fa0, fa0, fa1
  FDIV.S fa1, fa0, ft1
  LA s6, .CONSTANT.7.2
  FLW fa2, 0(s6)
  FADD.S fa1, fa1, fa2
  FMUL.S fa2, fs1, fa0
  FADD.S fa3, ft6, fa0
  FDIV.S fa2, fa2, fa3
  FADD.S fa1, fa1, fa2
  ADDI s6, zero, 10
  FSGNJ.S fa1, fa1, fa1
  # implict jump to bb29
bb29:
  FSGNJ.S fa2, fa1, fa1
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s8, zero, s8
  BNE s8, zero, bb36
  # implict jump to bb30
bb30:
  LA s8, .CONSTANT.7.10
  FLW fa3, 0(s8)
  FSUB.S fa3, fa2, fa3
  FLT.S s8, ft7, fa3
  BNE s8, zero, bb35
  # implict jump to bb31
bb31:
  FSW fa3, 184(sp)
  ADDI s8, sp, 188
  LA s9, .CONSTANT.7.0
  FLW fa3, 0(s9)
  FSW fa3, 0(s8)
  # implict jump to bb32
bb32:
  FLW fa3, 184(sp)
  LA s8, .CONSTANT.7.7
  FLW fa4, 0(s8)
  FLT.S s8, fa3, fa4
  BNE s8, zero, bb34
  # implict jump to bb33
bb33:
  FLW fa3, 184(sp)
  FADD.S fa3, fs3, fa3
  ADDIW s8, s3, 1
  ADD s2, s8, zero
  FSGNJ.S fs0, fa3, fa3
  JAL zero, bb21
bb34:
  ADDI s2, sp, 188
  FLW fs0, 0(s2)
  FSGNJ.S fs9, fs0, fs0
  JAL zero, bb25
bb35:
  FSW ft7, 184(sp)
  ADDI s8, sp, 188
  LA s9, .CONSTANT.7.6
  FLW fa3, 0(s9)
  FSW fa3, 0(s8)
  JAL zero, bb32
bb36:
  FDIV.S fs0, fa0, fa2
  FADD.S fs0, fa2, fs0
  FDIV.S fs0, fs0, fs1
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  ADD s6, s0, zero
  FSGNJ.S fa1, fs0, fs0
  JAL zero, bb29
bb37:
  FDIV.S fs0, ft0, ft5
  FADD.S fs0, ft5, fs0
  FDIV.S fs0, fs0, fs1
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  ADD s4, s0, zero
  FSGNJ.S ft2, fs0, fs0
  JAL zero, bb27
bb38:
  LA s5, .CONSTANT.7.3
  FLW fs9, 0(s5)
  FLT.S s5, fs3, fs9
  ADD s4, s5, zero
  JAL zero, bb23
bb39:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FADD.S fs3, fs3, fs9
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb20
bb40:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs9, fs9, fs10
  FSGNJ.S fs3, fs9, fs9
  JAL zero, bb18
bb41:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FDIV.S fs10, fs3, fs10
  FCVT.W.S s2, fs10, rtz
  FCVT.S.W fs10, s2
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FMUL.S fs10, fs10, fs11
  FSUB.S fs3, fs3, fs10
  FSGNJ.S fs9, fs3, fs3
  JAL zero, bb16
bb42:
  ADDI s2, zero, 1
  JAL zero, bb14
bb43:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FADD.S fs9, fs9, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb12
bb44:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSUB.S fs10, fs10, fs11
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb10
bb45:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FDIV.S fs11, fs9, fs11
  FCVT.W.S s2, fs11, rtz
  FCVT.S.W fs11, s2
  LA s2, .CONSTANT.7.4
  FLW ft0, 0(s2)
  FMUL.S fs11, fs11, ft0
  FSUB.S fs9, fs9, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb8
bb46:
  ADDI s2, zero, 1
  JAL zero, bb6
bb47:
  LA s2, seed
  LW s2, 0(s2)
  LUI s3, 24414
  ADDIW s3, s3, 263
  ADDW s2, s2, s3
  LA s3, seed
  SW s2, 0(s3)
  JAL zero, bb4
trace:
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  FSD fs4, 104(sp)
  FSD fs5, 112(sp)
  FSD fs6, 120(sp)
  FSD fs7, 128(sp)
  FSD fs8, 136(sp)
  FSD fs9, 144(sp)
  FSD fs10, 152(sp)
  FSD fs11, 160(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fa1, fa1, fa1
  FSGNJ.D fa2, fa2, fa2
  FSGNJ.D fa3, fa3, fa3
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb49
bb49:
  FSGNJ.S fs2, fs1, fs1
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb65
  # implict jump to bb50
bb50:
  ADD s2, zero, zero
  # implict jump to bb51
bb51:
  ADD s2, s2, zero
  BNE s2, zero, bb53
  # implict jump to bb52
bb52:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FSGNJ.S fa0, fs3, fs4
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  FLD fs6, 120(sp)
  FLD fs7, 128(sp)
  FLD fs8, 136(sp)
  FLD fs9, 144(sp)
  FLD fs10, 152(sp)
  FLD fs11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb53:
  FMUL.S fs3, fa2, fs2
  FADD.S fs3, fs0, fs3
  FMUL.S fs4, fa3, fs2
  FADD.S fs4, fa1, fs4
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FSUB.S fs5, fs3, fs5
  LA s2, .CONSTANT.7.1
  FLW fs6, 0(s2)
  FSUB.S fs6, fs4, fs6
  FMUL.S fs5, fs5, fs5
  FMUL.S fs6, fs6, fs6
  FADD.S fs5, fs5, fs6
  ADDI s2, zero, 8
  FCVT.S.W fs6, s2
  FDIV.S fs7, fs5, fs6
  LA s2, .CONSTANT.7.2
  FLW fs8, 0(s2)
  FADD.S fs7, fs7, fs8
  ADDI s2, zero, 2
  FCVT.S.W fs8, s2
  FMUL.S fs9, fs8, fs5
  ADDI s2, zero, 4
  FCVT.S.W fs10, s2
  FADD.S fs11, fs10, fs5
  FDIV.S fs9, fs9, fs11
  FADD.S fs7, fs7, fs9
  ADDI s2, zero, 10
  FSGNJ.S fs7, fs7, fs7
  # implict jump to bb54
bb54:
  FSGNJ.S fs9, fs7, fs7
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s4, zero, s4
  BNE s4, zero, bb64
  # implict jump to bb55
bb55:
  LA s4, .CONSTANT.7.8
  FLW fs11, 0(s4)
  FSUB.S fs11, fs9, fs11
  LA s4, .CONSTANT.7.9
  FLW ft0, 0(s4)
  FSUB.S ft0, fs3, ft0
  LA s4, .CONSTANT.7.9
  FLW ft1, 0(s4)
  FSUB.S ft1, fs4, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FADD.S ft0, ft0, ft1
  FDIV.S ft1, ft0, fs6
  LA s4, .CONSTANT.7.2
  FLW ft2, 0(s4)
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, fs8, ft0
  FADD.S ft5, fs10, ft0
  FDIV.S ft2, ft2, ft5
  FADD.S ft1, ft1, ft2
  ADDI s4, zero, 10
  FSGNJ.S ft1, ft1, ft1
  # implict jump to bb56
bb56:
  FSGNJ.S ft2, ft1, ft1
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s6, zero, s6
  BNE s6, zero, bb63
  # implict jump to bb57
bb57:
  LA s6, .CONSTANT.7.10
  FLW ft5, 0(s6)
  FSUB.S ft5, ft2, ft5
  FLT.S s6, fs11, ft5
  BNE s6, zero, bb62
  # implict jump to bb58
bb58:
  FSW ft5, 168(sp)
  ADDI s6, sp, 172
  LA s7, .CONSTANT.7.0
  FLW ft5, 0(s7)
  FSW ft5, 0(s6)
  # implict jump to bb59
bb59:
  FLW ft5, 168(sp)
  LA s6, .CONSTANT.7.7
  FLW ft6, 0(s6)
  FLT.S s6, ft5, ft6
  BNE s6, zero, bb61
  # implict jump to bb60
bb60:
  FLW ft5, 168(sp)
  FADD.S ft5, fs2, ft5
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  FSGNJ.S fs1, ft5, ft5
  JAL zero, bb49
bb61:
  ADDI s0, sp, 172
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  FLD fs6, 120(sp)
  FLD fs7, 128(sp)
  FLD fs8, 136(sp)
  FLD fs9, 144(sp)
  FLD fs10, 152(sp)
  FLD fs11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb62:
  FSW fs11, 168(sp)
  ADDI s6, sp, 172
  LA s7, .CONSTANT.7.6
  FLW ft5, 0(s7)
  FSW ft5, 0(s6)
  JAL zero, bb59
bb63:
  FDIV.S fs1, ft0, ft2
  FADD.S fs1, ft2, fs1
  FDIV.S fs1, fs1, fs8
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  ADD s4, s0, zero
  FSGNJ.S ft1, fs1, fs1
  JAL zero, bb56
bb64:
  FDIV.S fs1, fs5, fs9
  FADD.S fs1, fs9, fs1
  FDIV.S fs1, fs1, fs8
  ADDI s0, zero, 1
  SUBW s0, s3, s0
  ADD s2, s0, zero
  FSGNJ.S fs7, fs1, fs1
  JAL zero, bb54
bb65:
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FLT.S s3, fs2, fs3
  ADD s2, s3, zero
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
  FSGNJ.S fs1, fs1, fs1
  # implict jump to bb68
bb68:
  FSGNJ.S fs1, fs1, fs1
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
  LA s0, .CONSTANT.7.2
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
  FSGNJ.S fs1, fs1, fs1
  # implict jump to bb74
bb74:
  FSGNJ.S fs3, fs1, fs1
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb76
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
  FSGNJ.D fa1, fa1, fa1
  FSGNJ.D fa2, fa2, fa2
  FSGNJ.D fa3, fa3, fa3
  FSGNJ.D fa4, fa4, fa4
  FSUB.S fs0, fs0, fa2
  FSUB.S fs1, fa1, fa3
  FMUL.S fs0, fs0, fs0
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs1, fs0, fs1
  LA s0, .CONSTANT.7.2
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
  FSGNJ.S fs1, fs1, fs1
  # implict jump to bb78
bb78:
  FSGNJ.S fs3, fs1, fs1
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb80
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
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb96
  # implict jump to bb85
bb85:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  ADD s0, s0, zero
  # implict jump to bb86
bb86:
  ADD s0, s0, zero
  BNE s0, zero, bb95
  # implict jump to bb87
bb87:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb88
bb88:
  FSGNJ.S fs1, fs1, fs1
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb94
  # implict jump to bb89
bb89:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb90
bb90:
  FSGNJ.S fs0, fs0, fs0
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb93
  # implict jump to bb91
bb91:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb92
bb92:
  FSGNJ.S fs1, fs1, fs1
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
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb92
bb94:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb90
bb95:
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
  SLT s0, s0, zero
  BNE s0, zero, bb99
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
  FSGNJ.D fa0, fa0, fa0
  FSGNJ.D fa1, fa1, fa1
  ADD a0, a0, zero
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FSUB.S fs0, fa0, fs0
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSUB.S fs1, fa1, fs1
  FMUL.S fs0, fs0, fs0
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.2
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
  FSGNJ.S fs2, fs2, fs2
  # implict jump to bb101
bb101:
  FSGNJ.S fs4, fs2, fs2
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb109
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
  LA s2, .CONSTANT.7.2
  FLW fs9, 0(s2)
  FADD.S fs8, fs8, fs9
  FMUL.S fs9, fs3, fs7
  FADD.S fs10, fs5, fs7
  FDIV.S fs9, fs9, fs10
  FADD.S fs8, fs8, fs9
  ADDI s2, zero, 10
  FSGNJ.S fs8, fs8, fs8
  # implict jump to bb103
bb103:
  FSGNJ.S fs9, fs8, fs8
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s4, zero, s4
  BNE s4, zero, bb108
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
  LA s5, .CONSTANT.7.0
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
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FDIV.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb122
  # implict jump to bb111
bb111:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  ADD s0, s0, zero
  # implict jump to bb112
bb112:
  ADD s0, s0, zero
  BNE s0, zero, bb121
  # implict jump to bb113
bb113:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb114
bb114:
  FSGNJ.S fs1, fs1, fs1
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb120
  # implict jump to bb115
bb115:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb116
bb116:
  FSGNJ.S fs0, fs0, fs0
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb118
bb118:
  FSGNJ.S fs1, fs1, fs1
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
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb118
bb120:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb116
bb121:
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
  ADDI sp, sp, -224
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  SD s9, 136(sp)
  FSD fs3, 144(sp)
  FSD fs4, 160(sp)
  FSD fs11, 168(sp)
  FSD fs10, 176(sp)
  FSD fs5, 184(sp)
  FSD fs6, 192(sp)
  FSD fs7, 200(sp)
  FSD fs8, 208(sp)
  FSD fs9, 216(sp)
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
  ADD s0, zero, zero
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.D fs6, fa0, fa0
  ADD s1, zero, zero
  # implict jump to bb125
bb125:
  ADD s2, s1, zero
  FSGNJ.S fs7, fs6, fs6
  FSGNJ.S fs8, fs5, fs5
  ADD s3, s0, zero
  SLTI s4, s2, 192
  BNE s4, zero, bb127
  # implict jump to bb126
bb126:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  LD s9, 136(sp)
  FLD fs3, 144(sp)
  FLD fs4, 160(sp)
  FLD fs11, 168(sp)
  FLD fs10, 176(sp)
  FLD fs5, 184(sp)
  FLD fs6, 192(sp)
  FLD fs7, 200(sp)
  FLD fs8, 208(sp)
  FLD fs9, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb127:
  ADD s3, s3, zero
  FSGNJ.S fs8, fs8, fs8
  FSGNJ.S fs7, fs7, fs7
  ADD s4, zero, zero
  # implict jump to bb128
bb128:
  ADD s5, s4, zero
  FSGNJ.S fs9, fs7, fs7
  FSGNJ.S fs10, fs8, fs8
  ADD s6, s3, zero
  SLTI s7, s5, 192
  BNE s7, zero, bb130
  # implict jump to bb129
bb129:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s7, s2, 1
  ADD s0, s6, zero
  FSGNJ.S fs5, fs10, fs10
  FSGNJ.S fs6, fs9, fs9
  ADD s1, s7, zero
  JAL zero, bb125
bb130:
  FCVT.S.W fs5, s5
  FCVT.S.W fs6, s2
  ADDI s0, zero, 192
  FCVT.S.W fs9, s0
  FDIV.S fs10, fs5, fs9
  FDIV.S fs9, fs6, fs9
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs11, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  FSGNJ.S fs4, fs11, fs4
  # implict jump to bb131
bb131:
  FSGNJ.S fs11, fs4, fs4
  ADD s1, s0, zero
  SLTI s6, s1, 24
  BNE s6, zero, bb136
  # implict jump to bb132
bb132:
  ADDI s6, zero, 24
  FCVT.S.W fs1, s6
  FDIV.S fs1, fs11, fs1
  LA s6, .CONSTANT.7.11
  FLW fs0, 0(s6)
  FMUL.S fs0, fs1, fs0
  FCVT.W.S s6, fs0, rtz
  ADDI s7, zero, 255
  SLT s7, s7, s6
  BNE s7, zero, bb135
  # implict jump to bb133
bb133:
  ADD s6, s6, zero
  # implict jump to bb134
bb134:
  ADD s6, s6, zero
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s7, s5, 1
  ADD s3, s6, zero
  FSGNJ.S fs8, fs6, fs6
  FSGNJ.S fs7, fs5, fs5
  ADD s4, s7, zero
  JAL zero, bb128
bb135:
  ADDI s6, zero, 255
  JAL zero, bb134
bb136:
  LA s3, seed
  LW s3, 0(s3)
  LUI s4, 4878
  ADDIW s4, s4, -158
  MULW s3, s3, s4
  LUI s4, 6
  ADDIW s4, s4, -1243
  ADDW s3, s3, s4
  LUI s4, 24414
  ADDIW s4, s4, 263
  REMW s3, s3, s4
  LA s4, seed
  SW s3, 0(s4)
  SLT s3, s3, zero
  BNE s3, zero, bb180
  # implict jump to bb137
bb137:
  LA s3, seed
  LW s3, 0(s3)
  FCVT.S.W fs0, s3
  LUI s3, 24414
  ADDIW s3, s3, 262
  FCVT.S.W fs1, s3
  FDIV.S fs0, fs0, fs1
  FCVT.S.W fs1, s1
  FADD.S fs0, fs1, fs0
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  FMUL.S fs0, fs1, fs0
  ADDI s3, zero, 24
  FCVT.S.W fs1, s3
  FDIV.S fs2, fs0, fs1
  ADDI s3, zero, 2
  FCVT.S.W ft4, s3
  FSW ft4, 4(sp)
  LA s3, .CONSTANT.7.5
  FLW fs0, 0(s3)
  FLW ft4, 4(sp)
  FDIV.S fs0, fs0, ft4
  FADD.S fs0, fs2, fs0
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  FLT.S s3, fs1, fs0
  BNE s3, zero, bb179
  # implict jump to bb138
bb138:
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FSGNJN.S fs1, fs1, fs7
  FLT.S s3, fs0, fs1
  ADD s3, s3, zero
  # implict jump to bb139
bb139:
  ADD s3, s3, zero
  BNE s3, zero, bb178
  # implict jump to bb140
bb140:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb141
bb141:
  FSGNJ.S fs1, fs1, fs1
  LA s3, .CONSTANT.7.5
  FLW fs0, 0(s3)
  FLT.S s3, fs0, fs1
  BNE s3, zero, bb177
  # implict jump to bb142
bb142:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb143
bb143:
  FSGNJ.S fs0, fs0, fs0
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  LA s3, .CONSTANT.7.5
  FLW fs7, 0(s3)
  FSGNJN.S fs3, fs1, fs7
  FLT.S s3, fs0, fs3
  BNE s3, zero, bb176
  # implict jump to bb144
bb144:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb145
bb145:
  FSGNJ.S fs1, fs1, fs1
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 8(sp)
  LA s3, .CONSTANT.7.4
  FLW fs0, 0(s3)
  FLT.S s3, fs0, fs2
  BNE s3, zero, bb175
  # implict jump to bb146
bb146:
  LA s3, .CONSTANT.7.4
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  FSGNJN.S fs0, fs0, fs1
  FLT.S s3, fs2, fs0
  ADD s3, s3, zero
  # implict jump to bb147
bb147:
  ADD s3, s3, zero
  BNE s3, zero, bb174
  # implict jump to bb148
bb148:
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb149
bb149:
  FSGNJ.S fs0, fs0, fs0
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FLT.S s3, fs1, fs0
  BNE s3, zero, bb173
  # implict jump to bb150
bb150:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb151
bb151:
  FSGNJ.S fs1, fs1, fs1
  FLT.S s3, fs1, fs3
  BNE s3, zero, bb172
  # implict jump to bb152
bb152:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb153
bb153:
  FSGNJ.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  ADD s3, zero, zero
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb154
bb154:
  FSGNJ.S fs1, fs0, fs0
  ADD s4, s3, zero
  SLTI s6, s4, 10
  BNE s6, zero, bb171
  # implict jump to bb155
bb155:
  ADD s6, zero, zero
  # implict jump to bb156
bb156:
  ADD s6, s6, zero
  BNE s6, zero, bb159
  # implict jump to bb157
bb157:
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb158
bb158:
  FSGNJ.S fs2, fs2, fs2
  FADD.S fs0, fs11, fs2
  ADDIW s3, s1, 1
  ADD s0, s3, zero
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb131
bb159:
  FLW ft4, 8(sp)
  FMUL.S fs3, ft4, fs1
  FADD.S fs3, fs10, fs3
  FLW ft4, 0(sp)
  FMUL.S fs7, ft4, fs1
  FADD.S fs7, fs9, fs7
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSUB.S fs8, fs3, fs8
  LA s6, .CONSTANT.7.1
  FLW ft0, 0(s6)
  FSUB.S ft0, fs7, ft0
  FMUL.S fs8, fs8, fs8
  FMUL.S ft0, ft0, ft0
  FADD.S fs8, fs8, ft0
  ADDI s6, zero, 8
  FCVT.S.W ft0, s6
  FDIV.S ft1, fs8, ft0
  LA s6, .CONSTANT.7.2
  FLW ft2, 0(s6)
  FADD.S ft1, ft1, ft2
  FLW ft4, 4(sp)
  FMUL.S ft2, ft4, fs8
  ADDI s6, zero, 4
  FCVT.S.W ft5, s6
  FADD.S ft6, ft5, fs8
  FDIV.S ft2, ft2, ft6
  FADD.S ft1, ft1, ft2
  ADDI s6, zero, 10
  FSGNJ.S ft1, ft1, ft1
  # implict jump to bb160
bb160:
  FSGNJ.S ft2, ft1, ft1
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s8, zero, s8
  BNE s8, zero, bb170
  # implict jump to bb161
bb161:
  LA s8, .CONSTANT.7.8
  FLW ft6, 0(s8)
  FSUB.S ft6, ft2, ft6
  LA s8, .CONSTANT.7.9
  FLW ft7, 0(s8)
  FSUB.S ft7, fs3, ft7
  LA s8, .CONSTANT.7.9
  FLW fa0, 0(s8)
  FSUB.S fa0, fs7, fa0
  FMUL.S ft7, ft7, ft7
  FMUL.S fa0, fa0, fa0
  FADD.S ft7, ft7, fa0
  FDIV.S fa0, ft7, ft0
  LA s8, .CONSTANT.7.2
  FLW fa1, 0(s8)
  FADD.S fa0, fa0, fa1
  FLW ft4, 4(sp)
  FMUL.S fa1, ft4, ft7
  FADD.S fa2, ft5, ft7
  FDIV.S fa1, fa1, fa2
  FADD.S fa0, fa0, fa1
  ADDI s8, zero, 10
  FSGNJ.S fa0, fa0, fa0
  # implict jump to bb162
bb162:
  FSGNJ.S fa1, fa0, fa0
  ADD s9, s8, zero
  XOR s10, s9, zero
  SLTU s10, zero, s10
  BNE s10, zero, bb169
  # implict jump to bb163
bb163:
  LA s10, .CONSTANT.7.10
  FLW fa2, 0(s10)
  FSUB.S fa2, fa1, fa2
  FLT.S s10, ft6, fa2
  BNE s10, zero, bb168
  # implict jump to bb164
bb164:
  FSW fa2, 152(sp)
  ADDI s10, sp, 156
  LA s11, .CONSTANT.7.0
  FLW fa2, 0(s11)
  FSW fa2, 0(s10)
  # implict jump to bb165
bb165:
  FLW fa2, 152(sp)
  LA s10, .CONSTANT.7.7
  FLW fa3, 0(s10)
  FLT.S s10, fa2, fa3
  BNE s10, zero, bb167
  # implict jump to bb166
bb166:
  FLW fa2, 152(sp)
  FADD.S fa2, fs1, fa2
  ADDIW s10, s4, 1
  ADD s3, s10, zero
  FSGNJ.S fs0, fa2, fa2
  JAL zero, bb154
bb167:
  ADDI s3, sp, 156
  FLW fs0, 0(s3)
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb158
bb168:
  FSW ft6, 152(sp)
  ADDI s10, sp, 156
  LA s11, .CONSTANT.7.6
  FLW fa2, 0(s11)
  FSW fa2, 0(s10)
  JAL zero, bb165
bb169:
  FDIV.S fs0, ft7, fa1
  FADD.S fs0, fa1, fs0
  FLW ft4, 4(sp)
  FDIV.S fs0, fs0, ft4
  ADDI s0, zero, 1
  SUBW s0, s9, s0
  ADD s8, s0, zero
  FSGNJ.S fa0, fs0, fs0
  JAL zero, bb162
bb170:
  FDIV.S fs0, fs8, ft2
  FADD.S fs0, ft2, fs0
  FLW ft4, 4(sp)
  FDIV.S fs0, fs0, ft4
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  ADD s6, s0, zero
  FSGNJ.S ft1, fs0, fs0
  JAL zero, bb160
bb171:
  LA s7, .CONSTANT.7.3
  FLW fs2, 0(s7)
  FLT.S s7, fs1, fs2
  ADD s6, s7, zero
  JAL zero, bb156
bb172:
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FADD.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb153
bb173:
  LA s3, .CONSTANT.7.4
  FLW fs2, 0(s3)
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb151
bb174:
  LA s3, .CONSTANT.7.4
  FLW fs1, 0(s3)
  FDIV.S fs1, fs2, fs1
  FCVT.W.S s3, fs1, rtz
  FCVT.S.W fs1, s3
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FMUL.S fs1, fs1, fs7
  FSUB.S fs1, fs2, fs1
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb149
bb175:
  ADDI s3, zero, 1
  JAL zero, bb147
bb176:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FADD.S fs0, fs0, fs7
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb145
bb177:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FSUB.S fs1, fs1, fs7
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb143
bb178:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FDIV.S fs7, fs0, fs7
  FCVT.W.S s3, fs7, rtz
  FCVT.S.W fs7, s3
  LA s3, .CONSTANT.7.4
  FLW fs8, 0(s3)
  FMUL.S fs7, fs7, fs8
  FSUB.S fs0, fs0, fs7
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb141
bb179:
  ADDI s3, zero, 1
  JAL zero, bb139
bb180:
  LA s3, seed
  LW s3, 0(s3)
  LUI s4, 24414
  ADDIW s4, s4, 263
  ADDW s3, s3, s4
  LA s4, seed
  SW s3, 0(s4)
  JAL zero, bb137
