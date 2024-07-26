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
.word 0x3ecccccd
.CONSTANT.7.1:
.word 0x3f000000
.CONSTANT.7.2:
.word 0x00000000
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
  ADDI sp, sp, -224
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  FSD fs1, 120(sp)
  FSD fs3, 128(sp)
  FSD fs4, 136(sp)
  FSD fs5, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs8, 168(sp)
  FSD fs9, 176(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  FSD fs2, 200(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 8(sp)
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 4(sp)
  ADDI s3, zero, 0
  SLTI s3, s3, 24
  BNE s3, zero, bb3
  # implict jump to bb1
bb1:
  LA s3, .CONSTANT.7.2
  FLW fs10, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FSGNJ.S fs10, fs10, fs11
  # implict jump to bb2
bb2:
  ADDI s5, zero, 24
  FCVT.S.W fs0, s5
  FDIV.S fs0, fs10, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  FLD fs1, 120(sp)
  FLD fs3, 128(sp)
  FLD fs4, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  FLD fs2, 200(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb3:
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW ft0, 0(s3)
  FSGNJ.S fs11, fs11, ft0
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 0(sp)
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
  BLT s5, zero, bb59
  # implict jump to bb5
bb5:
  LA s5, seed
  LW s5, 0(s5)
  FCVT.S.W ft1, s5
  LUI s5, 24414
  ADDIW s5, s5, 262
  FCVT.S.W ft2, s5
  FDIV.S ft1, ft1, ft2
  FCVT.S.W ft2, s4
  FADD.S ft1, ft2, ft1
  LA s5, .CONSTANT.7.4
  FLW ft2, 0(s5)
  FMUL.S ft1, ft2, ft1
  ADDI s5, zero, 24
  FCVT.S.W ft2, s5
  FDIV.S fs0, ft1, ft2
  ADDI s5, zero, 2
  FCVT.S.W fs1, s5
  LA s5, .CONSTANT.7.5
  FLW ft1, 0(s5)
  FDIV.S ft1, ft1, fs1
  FADD.S ft1, fs0, ft1
  LA s5, .CONSTANT.7.4
  FLW ft2, 0(s5)
  FLT.S s5, ft2, ft1
  BNE s5, zero, bb58
  # implict jump to bb6
bb6:
  LA s5, .CONSTANT.7.4
  FLW ft2, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FSGNJN.S ft2, ft2, ft5
  FLT.S s5, ft1, ft2
  # implict jump to bb7
bb7:
  BNE s5, zero, bb57
  # implict jump to bb8
bb8:
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb9
bb9:
  LA s5, .CONSTANT.7.5
  FLW ft1, 0(s5)
  FLT.S s5, ft1, ft2
  BNE s5, zero, bb56
  # implict jump to bb10
bb10:
  FSGNJ.S ft1, ft2, ft2
  # implict jump to bb11
bb11:
  LA s5, .CONSTANT.7.5
  FLW ft2, 0(s5)
  LA s5, .CONSTANT.7.5
  FLW ft5, 0(s5)
  FSGNJN.S fs5, ft2, ft5
  FLT.S s5, ft1, fs5
  BNE s5, zero, bb55
  # implict jump to bb12
bb12:
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb13
bb13:
  FSGNJ.S fa0, ft2, ft2
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 12(sp)
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  FLT.S s5, fs9, fs0
  BNE s5, zero, bb54
  # implict jump to bb14
bb14:
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FSGNJN.S fs8, fs9, fs8
  FLT.S s5, fs0, fs8
  # implict jump to bb15
bb15:
  BNE s5, zero, bb53
  # implict jump to bb16
bb16:
  FSGNJ.S fs8, fs0, fs0
  # implict jump to bb17
bb17:
  LA s5, .CONSTANT.7.5
  FLW fs0, 0(s5)
  FLT.S s5, fs0, fs8
  BNE s5, zero, bb52
  # implict jump to bb18
bb18:
  FSGNJ.S fs0, fs8, fs8
  # implict jump to bb19
bb19:
  FLT.S s5, fs0, fs5
  BNE s5, zero, bb51
  # implict jump to bb20
bb20:
  FSGNJ.S fs3, fs0, fs0
  # implict jump to bb21
bb21:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADD s5, zero, zero
  LA s6, .CONSTANT.7.2
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs3, 0(s6)
  FSGNJ.S fs0, fs0, fs3
  # implict jump to bb22
bb22:
  FSGNJ.S fs3, fs0, fs0
  ADD s6, s5, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb50
  # implict jump to bb23
bb23:
  ADD s7, zero, zero
  # implict jump to bb24
bb24:
  BNE s7, zero, bb30
  # implict jump to bb25
bb25:
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs8, 0(s7)
  FSGNJ.S fs5, fs5, fs8
  # implict jump to bb26
bb26:
  FLW ft4, 0(sp)
  FADD.S fs4, ft4, fs5
  ADDIW s2, s4, 1
  # implict jump to bb27
bb27:
  SLTI s5, s2, 24
  BNE s5, zero, bb29
  # implict jump to bb28
bb28:
  FSGNJ.S fs10, fs4, fs4
  JAL zero, bb2
bb29:
  FSGNJ.S fs11, fs4, fs4
  ADD s3, s2, zero
  JAL zero, bb4
bb30:
  FLW ft4, 12(sp)
  FMUL.S fs8, ft4, fs3
  FLW ft4, 8(sp)
  FADD.S fs8, ft4, fs8
  FMUL.S fs9, fs2, fs3
  FLW ft4, 4(sp)
  FADD.S fs9, ft4, fs9
  LA s7, .CONSTANT.7.0
  FLW ft0, 0(s7)
  FSUB.S ft0, fs8, ft0
  LA s7, .CONSTANT.7.0
  FLW ft1, 0(s7)
  FSUB.S ft1, fs9, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FADD.S ft0, ft0, ft1
  ADDI s7, zero, 8
  FCVT.S.W ft1, s7
  FDIV.S ft2, ft0, ft1
  LA s7, .CONSTANT.7.1
  FLW ft5, 0(s7)
  FADD.S ft2, ft2, ft5
  FMUL.S ft5, fs1, ft0
  ADDI s7, zero, 4
  FCVT.S.W ft6, s7
  FADD.S ft7, ft6, ft0
  FDIV.S ft5, ft5, ft7
  FADD.S ft2, ft2, ft5
  XORI s7, zero, 10
  BNE s7, zero, bb45
  # implict jump to bb31
bb31:
  FSGNJ.S ft5, ft2, ft2
  # implict jump to bb32
bb32:
  LA s8, .CONSTANT.7.8
  FLW ft7, 0(s8)
  FSUB.S ft5, ft5, ft7
  LA s8, .CONSTANT.7.9
  FLW ft7, 0(s8)
  FSUB.S ft7, fs8, ft7
  LA s8, .CONSTANT.7.9
  FLW fa1, 0(s8)
  FSUB.S fa1, fs9, fa1
  FMUL.S ft7, ft7, ft7
  FMUL.S fa1, fa1, fa1
  FADD.S ft7, ft7, fa1
  FDIV.S fa1, ft7, ft1
  LA s8, .CONSTANT.7.1
  FLW fa2, 0(s8)
  FADD.S fa1, fa1, fa2
  FMUL.S fa2, fs1, ft7
  FADD.S fa3, ft6, ft7
  FDIV.S fa2, fa2, fa3
  FADD.S fa1, fa1, fa2
  XORI s8, zero, 10
  BNE s8, zero, bb40
  # implict jump to bb33
bb33:
  FSGNJ.S fa2, fa1, fa1
  # implict jump to bb34
bb34:
  LA s9, .CONSTANT.7.10
  FLW fa3, 0(s9)
  FSUB.S fa2, fa2, fa3
  FLT.S s9, ft5, fa2
  BNE s9, zero, bb39
  # implict jump to bb35
bb35:
  FSW fa2, 208(sp)
  ADDI s9, sp, 212
  LA s10, .CONSTANT.7.2
  FLW fa2, 0(s10)
  FSW fa2, 0(s9)
  # implict jump to bb36
bb36:
  FLW fa2, 208(sp)
  LA s9, .CONSTANT.7.7
  FLW fa3, 0(s9)
  FLT.S s9, fa2, fa3
  BNE s9, zero, bb38
  # implict jump to bb37
bb37:
  FADD.S fa2, fs3, fa2
  ADDIW s9, s6, 1
  ADD s5, s9, zero
  FSGNJ.S fs0, fa2, fa2
  JAL zero, bb22
bb38:
  ADDI s5, sp, 212
  FLW fs0, 0(s5)
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb26
bb39:
  FSW ft5, 208(sp)
  ADDI s9, sp, 212
  LA s10, .CONSTANT.7.6
  FLW fa2, 0(s10)
  FSW fa2, 0(s9)
  JAL zero, bb36
bb40:
  ADDI s8, zero, 10
  # implict jump to bb41
bb41:
  ADD s9, s8, zero
  FSGNJ.S fa3, fa1, fa1
  FDIV.S fa4, ft7, fa3
  FADD.S fa3, fa3, fa4
  FDIV.S fs7, fa3, fs1
  ADDI s10, zero, 1
  SUBW s1, s9, s10
  # implict jump to bb42
bb42:
  BNE s1, zero, bb44
  # implict jump to bb43
bb43:
  FSGNJ.S fa2, fs7, fs7
  JAL zero, bb34
bb44:
  FSGNJ.S fa1, fs7, fs7
  ADD s8, s1, zero
  JAL zero, bb41
bb45:
  ADDI s7, zero, 10
  # implict jump to bb46
bb46:
  ADD s8, s7, zero
  FSGNJ.S ft7, ft2, ft2
  FDIV.S fa1, ft0, ft7
  FADD.S ft7, ft7, fa1
  FDIV.S fs6, ft7, fs1
  ADDI s9, zero, 1
  SUBW s0, s8, s9
  # implict jump to bb47
bb47:
  BNE s0, zero, bb49
  # implict jump to bb48
bb48:
  FSGNJ.S ft5, fs6, fs6
  JAL zero, bb32
bb49:
  FSGNJ.S ft2, fs6, fs6
  ADD s7, s0, zero
  JAL zero, bb46
bb50:
  LA s8, .CONSTANT.7.3
  FLW fs5, 0(s8)
  FLT.S s8, fs3, fs5
  ADD s7, s8, zero
  JAL zero, bb24
bb51:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FADD.S fs0, fs0, fs5
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb21
bb52:
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FSUB.S fs3, fs8, fs3
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb19
bb53:
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  FDIV.S fs9, fs0, fs9
  FCVT.W.S s5, fs9, rtz
  FCVT.S.W fs9, s5
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FMUL.S fs3, fs9, fs3
  FSUB.S fs0, fs0, fs3
  FSGNJ.S fs8, fs0, fs0
  JAL zero, bb17
bb54:
  ADDI s5, zero, 1
  JAL zero, bb15
bb55:
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FADD.S ft1, ft1, ft5
  FSGNJ.S ft2, ft1, ft1
  JAL zero, bb13
bb56:
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FSUB.S ft2, ft2, ft5
  FSGNJ.S ft1, ft2, ft2
  JAL zero, bb11
bb57:
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FDIV.S ft5, ft1, ft5
  FCVT.W.S s5, ft5, rtz
  FCVT.S.W ft5, s5
  LA s5, .CONSTANT.7.4
  FLW ft6, 0(s5)
  FMUL.S ft5, ft5, ft6
  FSUB.S ft1, ft1, ft5
  FSGNJ.S ft2, ft1, ft1
  JAL zero, bb9
bb58:
  ADDI s5, zero, 1
  JAL zero, bb7
bb59:
  LA s5, seed
  LW s5, 0(s5)
  LUI s6, 24414
  ADDIW s6, s6, 263
  ADDW s5, s5, s6
  LA s6, seed
  SW s5, 0(s6)
  JAL zero, bb5
trace:
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  FSGNJ.D fs2, fa0, fa0
  ADD s2, zero, zero
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb61
bb61:
  FSGNJ.S fs4, fs3, fs3
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb85
  # implict jump to bb62
bb62:
  ADD s4, zero, zero
  # implict jump to bb63
bb63:
  BNE s4, zero, bb65
  # implict jump to bb64
bb64:
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  FSGNJ.S fa0, fs5, fs6
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
bb65:
  FMUL.S fs5, fa2, fs4
  FADD.S fs5, fs2, fs5
  FMUL.S fs6, fa3, fs4
  FADD.S fs6, fa1, fs6
  LA s4, .CONSTANT.7.0
  FLW fs7, 0(s4)
  FSUB.S fs7, fs5, fs7
  LA s4, .CONSTANT.7.0
  FLW fs8, 0(s4)
  FSUB.S fs8, fs6, fs8
  FMUL.S fs7, fs7, fs7
  FMUL.S fs8, fs8, fs8
  FADD.S fs7, fs7, fs8
  ADDI s4, zero, 8
  FCVT.S.W fs8, s4
  FDIV.S fs9, fs7, fs8
  LA s4, .CONSTANT.7.1
  FLW fs10, 0(s4)
  FADD.S fs9, fs9, fs10
  ADDI s4, zero, 2
  FCVT.S.W fs10, s4
  FMUL.S fs11, fs10, fs7
  ADDI s4, zero, 4
  FCVT.S.W ft0, s4
  FADD.S ft1, ft0, fs7
  FDIV.S fs11, fs11, ft1
  FADD.S fs9, fs9, fs11
  XORI s4, zero, 10
  BNE s4, zero, bb80
  # implict jump to bb66
bb66:
  FSGNJ.S fs11, fs9, fs9
  # implict jump to bb67
bb67:
  LA s5, .CONSTANT.7.8
  FLW ft1, 0(s5)
  FSUB.S fs11, fs11, ft1
  LA s5, .CONSTANT.7.9
  FLW ft1, 0(s5)
  FSUB.S ft1, fs5, ft1
  LA s5, .CONSTANT.7.9
  FLW ft2, 0(s5)
  FSUB.S ft2, fs6, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FADD.S ft1, ft1, ft2
  FDIV.S ft2, ft1, fs8
  LA s5, .CONSTANT.7.1
  FLW ft5, 0(s5)
  FADD.S ft2, ft2, ft5
  FMUL.S ft5, fs10, ft1
  FADD.S ft6, ft0, ft1
  FDIV.S ft5, ft5, ft6
  FADD.S ft2, ft2, ft5
  XORI s5, zero, 10
  BNE s5, zero, bb75
  # implict jump to bb68
bb68:
  FSGNJ.S ft5, ft2, ft2
  # implict jump to bb69
bb69:
  LA s6, .CONSTANT.7.10
  FLW ft6, 0(s6)
  FSUB.S ft5, ft5, ft6
  FLT.S s6, fs11, ft5
  BNE s6, zero, bb74
  # implict jump to bb70
bb70:
  FSW ft5, 168(sp)
  ADDI s6, sp, 172
  LA s7, .CONSTANT.7.2
  FLW ft5, 0(s7)
  FSW ft5, 0(s6)
  # implict jump to bb71
bb71:
  FLW ft5, 168(sp)
  LA s6, .CONSTANT.7.7
  FLW ft6, 0(s6)
  FLT.S s6, ft5, ft6
  BNE s6, zero, bb73
  # implict jump to bb72
bb72:
  FADD.S ft5, fs4, ft5
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  FSGNJ.S fs3, ft5, ft5
  JAL zero, bb61
bb73:
  ADDI s2, sp, 172
  FLW fs3, 0(s2)
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
bb74:
  FSW fs11, 168(sp)
  ADDI s6, sp, 172
  LA s7, .CONSTANT.7.6
  FLW ft5, 0(s7)
  FSW ft5, 0(s6)
  JAL zero, bb71
bb75:
  ADDI s5, zero, 10
  # implict jump to bb76
bb76:
  ADD s6, s5, zero
  FSGNJ.S ft6, ft2, ft2
  FDIV.S ft7, ft1, ft6
  FADD.S ft6, ft6, ft7
  FDIV.S fs0, ft6, fs10
  ADDI s7, zero, 1
  SUBW s0, s6, s7
  # implict jump to bb77
bb77:
  BNE s0, zero, bb79
  # implict jump to bb78
bb78:
  FSGNJ.S ft5, fs0, fs0
  JAL zero, bb69
bb79:
  FSGNJ.S ft2, fs0, fs0
  ADD s5, s0, zero
  JAL zero, bb76
bb80:
  ADDI s4, zero, 10
  # implict jump to bb81
bb81:
  ADD s5, s4, zero
  FSGNJ.S ft1, fs9, fs9
  FDIV.S ft2, fs7, ft1
  FADD.S ft1, ft1, ft2
  FDIV.S fs1, ft1, fs10
  ADDI s6, zero, 1
  SUBW s1, s5, s6
  # implict jump to bb82
bb82:
  BNE s1, zero, bb84
  # implict jump to bb83
bb83:
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb67
bb84:
  FSGNJ.S fs9, fs1, fs1
  ADD s4, s1, zero
  JAL zero, bb81
bb85:
  LA s5, .CONSTANT.7.3
  FLW fs5, 0(s5)
  FLT.S s5, fs4, fs5
  ADD s4, s5, zero
  JAL zero, bb63
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
  BNE s0, zero, bb91
  # implict jump to bb87
bb87:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb88
bb88:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb90
  # implict jump to bb89
bb89:
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
bb90:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb91:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb88
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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
  FSD fs6, 88(sp)
  FSGNJ.D fs1, fa0, fa0
  ADDI s1, zero, 8
  FCVT.S.W fs2, s1
  FDIV.S fs2, fs1, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FADD.S fs2, fs2, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FMUL.S fs4, fs3, fs1
  ADDI s1, zero, 4
  FCVT.S.W fs5, s1
  FADD.S fs5, fs5, fs1
  FDIV.S fs4, fs4, fs5
  FADD.S fs2, fs2, fs4
  XORI s1, zero, 10
  BNE s1, zero, bb96
  # implict jump to bb94
bb94:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb95
bb95:
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb96:
  ADDI s1, zero, 10
  # implict jump to bb97
bb97:
  ADD s2, s1, zero
  FSGNJ.S fs5, fs2, fs2
  FDIV.S fs6, fs1, fs5
  FADD.S fs5, fs5, fs6
  FDIV.S fs0, fs5, fs3
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb98
bb98:
  BNE s0, zero, bb100
  # implict jump to bb99
bb99:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb95
bb100:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  JAL zero, bb97
circle_sdf:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
  FSD fs6, 88(sp)
  FSGNJ.D fs1, fa0, fa0
  FSUB.S fs1, fs1, fa2
  FSUB.S fs2, fa1, fa3
  FMUL.S fs1, fs1, fs1
  FMUL.S fs2, fs2, fs2
  FADD.S fs1, fs1, fs2
  ADDI s1, zero, 8
  FCVT.S.W fs2, s1
  FDIV.S fs2, fs1, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FADD.S fs2, fs2, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FMUL.S fs4, fs3, fs1
  ADDI s1, zero, 4
  FCVT.S.W fs5, s1
  FADD.S fs5, fs5, fs1
  FDIV.S fs4, fs4, fs5
  FADD.S fs2, fs2, fs4
  XORI s1, zero, 10
  BNE s1, zero, bb104
  # implict jump to bb102
bb102:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb103
bb103:
  FSUB.S fs4, fs4, fa4
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb104:
  ADDI s1, zero, 10
  # implict jump to bb105
bb105:
  ADD s2, s1, zero
  FSGNJ.S fs5, fs2, fs2
  FDIV.S fs6, fs1, fs5
  FADD.S fs5, fs5, fs6
  FDIV.S fs0, fs5, fs3
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb106
bb106:
  BNE s0, zero, bb108
  # implict jump to bb107
bb107:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb103
bb108:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  JAL zero, bb105
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb111
  # implict jump to bb110
bb110:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb111:
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
  BNE s0, zero, bb124
  # implict jump to bb113
bb113:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb114
bb114:
  BNE s0, zero, bb123
  # implict jump to bb115
bb115:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb116
bb116:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb122
  # implict jump to bb117
bb117:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb118
bb118:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb121
  # implict jump to bb119
bb119:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb120
bb120:
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
bb121:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb120
bb122:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb118
bb123:
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
  JAL zero, bb116
bb124:
  ADDI s0, zero, 1
  JAL zero, bb114
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
  BLT s0, zero, bb127
  # implict jump to bb126
bb126:
  LA s0, seed
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb127:
  LA s0, seed
  LW s0, 0(s0)
  LUI s1, 24414
  ADDIW s1, s1, 263
  ADDW s0, s0, s1
  LA s1, seed
  SW s0, 0(s1)
  JAL zero, bb126
scene:
  ADDI sp, sp, -160
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
  FSD fs11, 144(sp)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FSUB.S fs2, fa0, fs2
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FSUB.S fs3, fa1, fs3
  FMUL.S fs2, fs2, fs2
  FMUL.S fs3, fs3, fs3
  FADD.S fs2, fs2, fs3
  ADDI s2, zero, 8
  FCVT.S.W fs3, s2
  FDIV.S fs4, fs2, fs3
  LA s2, .CONSTANT.7.1
  FLW fs5, 0(s2)
  FADD.S fs4, fs4, fs5
  ADDI s2, zero, 2
  FCVT.S.W fs5, s2
  FMUL.S fs6, fs5, fs2
  ADDI s2, zero, 4
  FCVT.S.W fs7, s2
  FADD.S fs8, fs7, fs2
  FDIV.S fs6, fs6, fs8
  FADD.S fs4, fs4, fs6
  XORI s2, zero, 10
  BNE s2, zero, bb141
  # implict jump to bb129
bb129:
  FSGNJ.S fs6, fs4, fs4
  # implict jump to bb130
bb130:
  LA s3, .CONSTANT.7.8
  FLW fs8, 0(s3)
  FSUB.S fs6, fs6, fs8
  LA s3, .CONSTANT.7.9
  FLW fs8, 0(s3)
  FSUB.S fs8, fa0, fs8
  LA s3, .CONSTANT.7.9
  FLW fs9, 0(s3)
  FSUB.S fs9, fa1, fs9
  FMUL.S fs8, fs8, fs8
  FMUL.S fs9, fs9, fs9
  FADD.S fs8, fs8, fs9
  FDIV.S fs9, fs8, fs3
  LA s3, .CONSTANT.7.1
  FLW fs10, 0(s3)
  FADD.S fs9, fs9, fs10
  FMUL.S fs10, fs5, fs8
  FADD.S fs11, fs7, fs8
  FDIV.S fs10, fs10, fs11
  FADD.S fs9, fs9, fs10
  XORI s3, zero, 10
  BNE s3, zero, bb136
  # implict jump to bb131
bb131:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb132
bb132:
  LA s4, .CONSTANT.7.10
  FLW fs11, 0(s4)
  FSUB.S fs10, fs10, fs11
  FLT.S s4, fs6, fs10
  BNE s4, zero, bb135
  # implict jump to bb133
bb133:
  FSW fs10, 0(a0)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  # implict jump to bb134
bb134:
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
  FLD fs11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb135:
  FSW fs6, 0(a0)
  LA s4, .CONSTANT.7.6
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  JAL zero, bb134
bb136:
  ADDI s3, zero, 10
  # implict jump to bb137
bb137:
  ADD s4, s3, zero
  FSGNJ.S fs11, fs9, fs9
  FDIV.S ft0, fs8, fs11
  FADD.S fs11, fs11, ft0
  FDIV.S fs0, fs11, fs5
  ADDI s5, zero, 1
  SUBW s1, s4, s5
  # implict jump to bb138
bb138:
  BNE s1, zero, bb140
  # implict jump to bb139
bb139:
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb132
bb140:
  FSGNJ.S fs9, fs0, fs0
  ADD s3, s1, zero
  JAL zero, bb137
bb141:
  ADDI s2, zero, 10
  # implict jump to bb142
bb142:
  ADD s3, s2, zero
  FSGNJ.S fs8, fs4, fs4
  FDIV.S fs9, fs2, fs8
  FADD.S fs8, fs8, fs9
  FDIV.S fs1, fs8, fs5
  ADDI s4, zero, 1
  SUBW s0, s3, s4
  # implict jump to bb143
bb143:
  BNE s0, zero, bb145
  # implict jump to bb144
bb144:
  FSGNJ.S fs6, fs1, fs1
  JAL zero, bb130
bb145:
  FSGNJ.S fs4, fs1, fs1
  ADD s2, s0, zero
  JAL zero, bb142
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
  BNE s0, zero, bb158
  # implict jump to bb147
bb147:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb148
bb148:
  BNE s0, zero, bb157
  # implict jump to bb149
bb149:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb150
bb150:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb156
  # implict jump to bb151
bb151:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb152
bb152:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb155
  # implict jump to bb153
bb153:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb154
bb154:
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
bb155:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb154
bb156:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb152
bb157:
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
  JAL zero, bb150
bb158:
  ADDI s0, zero, 1
  JAL zero, bb148
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -336
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  FSD fs0, 232(sp)
  FSD fs5, 248(sp)
  FSD fs11, 256(sp)
  FSD fs2, 264(sp)
  FSD fs10, 272(sp)
  FSD fs4, 280(sp)
  FSD fs3, 288(sp)
  FSD fs1, 296(sp)
  FSD fs6, 304(sp)
  FSD fs7, 312(sp)
  FSD fs8, 320(sp)
  FSD fs9, 328(sp)
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
  SLTI s7, zero, 192
  BNE s7, zero, bb162
  # implict jump to bb161
bb161:
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  FLD fs0, 232(sp)
  FLD fs5, 248(sp)
  FLD fs11, 256(sp)
  FLD fs2, 264(sp)
  FLD fs10, 272(sp)
  FLD fs4, 280(sp)
  FLD fs3, 288(sp)
  FLD fs1, 296(sp)
  FLD fs6, 304(sp)
  FLD fs7, 312(sp)
  FLD fs8, 320(sp)
  FLD fs9, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb162:
  ADD s7, zero, zero
  LA s8, .CONSTANT.7.2
  FLW fs10, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs1, 0(s8)
  FSGNJ.S fs1, fs10, fs1
  LA s8, .CONSTANT.7.2
  FLW fs10, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs2, 0(s8)
  FSGNJ.S ft4, fs10, fs2
  FSW ft4, 40(sp)
  ADD s8, zero, zero
  # implict jump to bb163
bb163:
  ADD s9, s8, zero
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fs10, ft4, ft3
  FSGNJ.S fs7, fs1, fs1
  ADD t4, s7, zero
  SW t4, 96(sp)
  SLTI s11, zero, 192
  BNE s11, zero, bb168
  # implict jump to bb164
bb164:
  # implict jump to bb165
bb165:
  ADD s4, s9, zero
  FSGNJ.S fs8, fs10, fs10
  FSGNJ.S fs4, fs7, fs7
  ADDI a0, zero, 10
  CALL putch
  LW t4, 96(sp)
  ADDIW s5, t4, 1
  # implict jump to bb166
bb166:
  SLTI s0, s5, 192
  BNE s0, zero, bb167
  JAL zero, bb161
bb167:
  ADD s7, s5, zero
  FSGNJ.S fs1, fs4, fs4
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 40(sp)
  ADD s8, s4, zero
  JAL zero, bb163
bb168:
  ADD s11, zero, zero
  # implict jump to bb169
bb169:
  ADD t4, s11, zero
  SW t4, 100(sp)
  LW t4, 100(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 92(sp)
  LW t4, 96(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 104(sp)
  ADDI s10, zero, 192
  FCVT.S.W fs11, s10
  FLW ft3, 92(sp)
  FDIV.S ft4, ft3, fs11
  FSW ft4, 48(sp)
  FLW ft3, 104(sp)
  FDIV.S ft4, ft3, fs11
  FSW ft4, 4(sp)
  SLTI s10, zero, 24
  BNE s10, zero, bb178
  # implict jump to bb170
bb170:
  LA s10, .CONSTANT.7.2
  FLW fs11, 0(s10)
  LA s10, .CONSTANT.7.2
  FLW fs9, 0(s10)
  FSGNJ.S fs9, fs11, fs9
  # implict jump to bb171
bb171:
  ADDI s0, zero, 24
  FCVT.S.W fs0, s0
  FDIV.S fs0, fs9, fs0
  LA s0, .CONSTANT.7.11
  FLW fs2, 0(s0)
  FMUL.S fs0, fs0, fs2
  FCVT.W.S s0, fs0, rtz
  ADDI s3, zero, 255
  BLT s3, s0, bb177
  # implict jump to bb172
bb172:
  # implict jump to bb173
bb173:
  ADD s1, s0, zero
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 100(sp)
  ADDIW s6, t4, 1
  # implict jump to bb174
bb174:
  SLTI s0, s6, 192
  BNE s0, zero, bb176
  # implict jump to bb175
bb175:
  FLW ft4, 92(sp)
  FLW ft3, 92(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 104(sp)
  FLW ft3, 104(sp)
  FSGNJ.S fs10, ft4, ft3
  ADD s9, s1, zero
  JAL zero, bb165
bb176:
  ADD s11, s6, zero
  JAL zero, bb169
bb177:
  ADDI s0, zero, 255
  JAL zero, bb173
bb178:
  LA s10, .CONSTANT.7.2
  FLW fs11, 0(s10)
  LA s10, .CONSTANT.7.2
  FLW fs0, 0(s10)
  FSGNJ.S ft4, fs11, fs0
  FSW ft4, 32(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb179
bb179:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  FLW ft3, 32(sp)
  FLW ft4, 32(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 28(sp)
  LA s3, seed
  LW s3, 0(s3)
  LUI s0, 4878
  ADDIW s0, s0, -158
  MULW s0, s3, s0
  LUI s3, 6
  ADDIW s3, s3, -1243
  ADDW s0, s0, s3
  LUI s3, 24414
  ADDIW s3, s3, 263
  REMW s0, s0, s3
  LA s3, seed
  SW s0, 0(s3)
  BLT s0, zero, bb234
  # implict jump to bb180
bb180:
  LA s0, seed
  LW s0, 0(s0)
  FCVT.S.W fs11, s0
  LUI s0, 24414
  ADDIW s0, s0, 262
  FCVT.S.W fs0, s0
  FDIV.S fs0, fs11, fs0
  LW t4, 16(sp)
  FCVT.S.W fs11, t4
  FADD.S fs0, fs11, fs0
  LA s0, .CONSTANT.7.4
  FLW fs11, 0(s0)
  FMUL.S fs0, fs11, fs0
  ADDI s0, zero, 24
  FCVT.S.W fs11, s0
  FDIV.S fs6, fs0, fs11
  ADDI s0, zero, 2
  FCVT.S.W ft4, s0
  FSW ft4, 112(sp)
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLW ft4, 112(sp)
  FDIV.S fs0, fs0, ft4
  FADD.S fs0, fs6, fs0
  LA s0, .CONSTANT.7.4
  FLW fs11, 0(s0)
  FLT.S s0, fs11, fs0
  BNE s0, zero, bb233
  # implict jump to bb181
bb181:
  LA s0, .CONSTANT.7.4
  FLW fs11, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FSGNJN.S fs3, fs11, fs3
  FLT.S s0, fs0, fs3
  # implict jump to bb182
bb182:
  BNE s0, zero, bb232
  # implict jump to bb183
bb183:
  FSGNJ.S fs3, fs0, fs0
  # implict jump to bb184
bb184:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs3
  BNE s0, zero, bb231
  # implict jump to bb185
bb185:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb186
bb186:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs3, 0(s0)
  FSGNJN.S fs5, fs2, fs3
  FLT.S s0, fs0, fs5
  BNE s0, zero, bb230
  # implict jump to bb187
bb187:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb188
bb188:
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 116(sp)
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs6
  BNE s0, zero, bb229
  # implict jump to bb189
bb189:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs0, fs0, fs2
  FLT.S s0, fs6, fs0
  # implict jump to bb190
bb190:
  BNE s0, zero, bb228
  # implict jump to bb191
bb191:
  FSGNJ.S fs0, fs6, fs6
  # implict jump to bb192
bb192:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs0
  BNE s0, zero, bb227
  # implict jump to bb193
bb193:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb194
bb194:
  FLT.S s0, fs2, fs5
  BNE s0, zero, bb226
  # implict jump to bb195
bb195:
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb196
bb196:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 108(sp)
  ADD s0, zero, zero
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FSGNJ.S fs0, fs0, fs2
  # implict jump to bb197
bb197:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 72(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s3, t4, 10
  BNE s3, zero, bb225
  # implict jump to bb198
bb198:
  ADD s3, zero, zero
  # implict jump to bb199
bb199:
  BNE s3, zero, bb205
  # implict jump to bb200
bb200:
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  FSGNJ.S fs3, fs3, fs5
  # implict jump to bb201
bb201:
  FLW ft3, 28(sp)
  FADD.S ft4, ft3, fs3
  FSW ft4, 36(sp)
  LW t4, 16(sp)
  ADDIW s2, t4, 1
  # implict jump to bb202
bb202:
  SLTI s0, s2, 24
  BNE s0, zero, bb204
  # implict jump to bb203
bb203:
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S fs9, ft4, ft3
  JAL zero, bb171
bb204:
  FLW ft3, 36(sp)
  FLW ft4, 36(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 32(sp)
  ADD t4, s2, zero
  SW t4, 0(sp)
  JAL zero, bb179
bb205:
  FLW ft4, 116(sp)
  FLW ft3, 72(sp)
  FMUL.S fs5, ft4, ft3
  FLW ft3, 48(sp)
  FADD.S ft4, ft3, fs5
  FSW ft4, 68(sp)
  FLW ft4, 108(sp)
  FLW ft3, 72(sp)
  FMUL.S fs6, ft4, ft3
  FLW ft3, 4(sp)
  FADD.S ft4, ft3, fs6
  FSW ft4, 52(sp)
  LA s3, .CONSTANT.7.0
  FLW fs11, 0(s3)
  FLW ft4, 68(sp)
  FSUB.S fs11, ft4, fs11
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  FLW ft4, 52(sp)
  FSUB.S fs6, ft4, fs6
  FMUL.S fs11, fs11, fs11
  FMUL.S fs6, fs6, fs6
  FADD.S ft4, fs11, fs6
  FSW ft4, 60(sp)
  ADDI s3, zero, 8
  FCVT.S.W ft4, s3
  FSW ft4, 56(sp)
  FLW ft4, 60(sp)
  FLW ft3, 56(sp)
  FDIV.S fs11, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs6, 0(s3)
  FADD.S fs6, fs11, fs6
  FLW ft4, 112(sp)
  FLW ft3, 60(sp)
  FMUL.S fs11, ft4, ft3
  ADDI s3, zero, 4
  FCVT.S.W ft4, s3
  FSW ft4, 64(sp)
  FLW ft4, 64(sp)
  FLW ft3, 60(sp)
  FADD.S fs5, ft4, ft3
  FDIV.S fs5, fs11, fs5
  FADD.S fs5, fs6, fs5
  XORI s3, zero, 10
  BNE s3, zero, bb220
  # implict jump to bb206
bb206:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb207
bb207:
  LA s3, .CONSTANT.7.8
  FLW fs2, 0(s3)
  FSUB.S ft4, fs6, fs2
  FSW ft4, 88(sp)
  LA s3, .CONSTANT.7.9
  FLW fs6, 0(s3)
  FLW ft4, 68(sp)
  FSUB.S fs6, ft4, fs6
  LA s3, .CONSTANT.7.9
  FLW fs11, 0(s3)
  FLW ft4, 52(sp)
  FSUB.S fs11, ft4, fs11
  FMUL.S fs6, fs6, fs6
  FMUL.S fs11, fs11, fs11
  FADD.S ft4, fs6, fs11
  FSW ft4, 84(sp)
  FLW ft4, 84(sp)
  FLW ft3, 56(sp)
  FDIV.S fs11, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs5, 0(s3)
  FADD.S fs5, fs11, fs5
  FLW ft4, 112(sp)
  FLW ft3, 84(sp)
  FMUL.S fs11, ft4, ft3
  FLW ft4, 64(sp)
  FLW ft3, 84(sp)
  FADD.S fs6, ft4, ft3
  FDIV.S fs6, fs11, fs6
  FADD.S fs5, fs5, fs6
  XORI s3, zero, 10
  BNE s3, zero, bb215
  # implict jump to bb208
bb208:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb209
bb209:
  LA s3, .CONSTANT.7.10
  FLW fs2, 0(s3)
  FSUB.S fs2, fs6, fs2
  FLW ft4, 88(sp)
  FLT.S s3, ft4, fs2
  BNE s3, zero, bb214
  # implict jump to bb210
bb210:
  FSW fs2, 240(sp)
  ADDI s3, sp, 244
  LA s10, .CONSTANT.7.2
  FLW fs2, 0(s10)
  FSW fs2, 0(s3)
  # implict jump to bb211
bb211:
  FLW fs2, 240(sp)
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FLT.S s3, fs2, fs6
  BNE s3, zero, bb213
  # implict jump to bb212
bb212:
  FLW ft4, 72(sp)
  FADD.S fs2, ft4, fs2
  LW t4, 44(sp)
  ADDIW s3, t4, 1
  ADD s0, s3, zero
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb197
bb213:
  ADDI s0, sp, 244
  FLW fs0, 0(s0)
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb201
bb214:
  FLW ft4, 88(sp)
  FSW ft4, 240(sp)
  ADDI s3, sp, 244
  LA s10, .CONSTANT.7.6
  FLW fs2, 0(s10)
  FSW fs2, 0(s3)
  JAL zero, bb211
bb215:
  ADDI t4, zero, 10
  SW t4, 120(sp)
  # implict jump to bb216
bb216:
  LW t4, 120(sp)
  ADD s10, t4, zero
  FSGNJ.S fs11, fs5, fs5
  FLW ft4, 84(sp)
  FDIV.S fs2, ft4, fs11
  FADD.S fs2, fs11, fs2
  FLW ft3, 112(sp)
  FDIV.S ft4, fs2, ft3
  FSW ft4, 12(sp)
  ADDI s3, zero, 1
  SUBW t4, s10, s3
  SW t4, 24(sp)
  # implict jump to bb217
bb217:
  LW t4, 24(sp)
  BNE t4, zero, bb219
  # implict jump to bb218
bb218:
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb209
bb219:
  FLW ft4, 12(sp)
  FLW ft3, 12(sp)
  FSGNJ.S fs5, ft4, ft3
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb216
bb220:
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 80(sp)
  ADDI t4, zero, 10
  SW t4, 76(sp)
  # implict jump to bb221
bb221:
  LW t4, 76(sp)
  ADD s10, t4, zero
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 60(sp)
  FDIV.S fs2, ft4, fs11
  FADD.S fs2, fs11, fs2
  FLW ft3, 112(sp)
  FDIV.S ft4, fs2, ft3
  FSW ft4, 8(sp)
  ADDI s3, zero, 1
  SUBW t4, s10, s3
  SW t4, 20(sp)
  # implict jump to bb222
bb222:
  LW t4, 20(sp)
  BNE t4, zero, bb224
  # implict jump to bb223
bb223:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb207
bb224:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb221
bb225:
  LA s10, .CONSTANT.7.3
  FLW fs3, 0(s10)
  FLW ft4, 72(sp)
  FLT.S s10, ft4, fs3
  ADD s3, s10, zero
  JAL zero, bb199
bb226:
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb196
bb227:
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FSUB.S fs0, fs0, fs3
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb194
bb228:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs2, fs6, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs6, fs2
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb192
bb229:
  ADDI s0, zero, 1
  JAL zero, bb190
bb230:
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FADD.S fs0, fs0, fs3
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb188
bb231:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs2, fs3, fs2
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb186
bb232:
  LA s0, .CONSTANT.7.4
  FLW fs11, 0(s0)
  FDIV.S fs11, fs0, fs11
  FCVT.W.S s0, fs11, rtz
  FCVT.S.W fs11, s0
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FMUL.S fs2, fs11, fs2
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb184
bb233:
  ADDI s0, zero, 1
  JAL zero, bb182
bb234:
  LA s0, seed
  LW s0, 0(s0)
  LUI s3, 24414
  ADDIW s3, s3, 263
  ADDW s0, s0, s3
  LA s3, seed
  SW s0, 0(s3)
  JAL zero, bb180
