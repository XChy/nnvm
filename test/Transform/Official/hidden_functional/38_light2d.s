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
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  FSD fs3, 136(sp)
  FSD fs4, 144(sp)
  FSD fs5, 152(sp)
  FSD fs6, 160(sp)
  FSD fs7, 168(sp)
  FSD fs8, 176(sp)
  FSD fs9, 184(sp)
  FSD fs10, 192(sp)
  FSD fs11, 200(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 12(sp)
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 8(sp)
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
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs4, 144(sp)
  FLD fs5, 152(sp)
  FLD fs6, 160(sp)
  FLD fs7, 168(sp)
  FLD fs8, 176(sp)
  FLD fs9, 184(sp)
  FLD fs10, 192(sp)
  FLD fs11, 200(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb3:
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW ft0, 0(s3)
  FSGNJ.S fs11, fs11, ft0
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 4(sp)
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
  BLT s5, zero, bb62
  # implict jump to bb6
bb6:
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
  FDIV.S fs5, ft1, ft2
  ADDI s5, zero, 2
  FCVT.S.W fs4, s5
  LA s5, .CONSTANT.7.5
  FLW ft1, 0(s5)
  FDIV.S ft1, ft1, fs4
  FADD.S ft1, fs5, ft1
  LA s5, .CONSTANT.7.4
  FLW ft2, 0(s5)
  FLT.S s5, ft2, ft1
  BNE s5, zero, bb61
  # implict jump to bb7
bb7:
  LA s5, .CONSTANT.7.4
  FLW ft2, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FSGNJN.S ft2, ft2, ft5
  FLT.S s5, ft1, ft2
  # implict jump to bb8
bb8:
  BNE s5, zero, bb60
  # implict jump to bb9
bb9:
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb10
bb10:
  LA s5, .CONSTANT.7.5
  FLW ft1, 0(s5)
  FLT.S s5, ft1, ft2
  BNE s5, zero, bb59
  # implict jump to bb11
bb11:
  FSGNJ.S ft1, ft2, ft2
  # implict jump to bb12
bb12:
  LA s5, .CONSTANT.7.5
  FLW ft2, 0(s5)
  LA s5, .CONSTANT.7.5
  FLW ft5, 0(s5)
  FSGNJN.S fs0, ft2, ft5
  FLT.S s5, ft1, fs0
  BNE s5, zero, bb58
  # implict jump to bb13
bb13:
  FSGNJ.S ft2, ft1, ft1
  # implict jump to bb14
bb14:
  FSGNJ.S fa0, ft2, ft2
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  FLT.S s5, fs9, fs5
  BNE s5, zero, bb57
  # implict jump to bb15
bb15:
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FSGNJN.S fs8, fs9, fs8
  FLT.S s5, fs5, fs8
  # implict jump to bb16
bb16:
  BNE s5, zero, bb56
  # implict jump to bb17
bb17:
  FSGNJ.S fs8, fs5, fs5
  # implict jump to bb18
bb18:
  LA s5, .CONSTANT.7.5
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs8
  BNE s5, zero, bb55
  # implict jump to bb19
bb19:
  FSGNJ.S fs3, fs8, fs8
  # implict jump to bb20
bb20:
  FLT.S s5, fs3, fs0
  BNE s5, zero, bb54
  # implict jump to bb21
bb21:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb22
bb22:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADD s5, zero, zero
  LA s6, .CONSTANT.7.2
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.2
  FLW fs3, 0(s6)
  FSGNJ.S fs0, fs0, fs3
  # implict jump to bb23
bb23:
  FSGNJ.S fs3, fs0, fs0
  ADD s6, s5, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb53
  # implict jump to bb24
bb24:
  ADD s7, zero, zero
  # implict jump to bb25
bb25:
  BNE s7, zero, bb31
  # implict jump to bb26
bb26:
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs8, 0(s7)
  FSGNJ.S fs5, fs5, fs8
  # implict jump to bb27
bb27:
  FLW ft4, 4(sp)
  FADD.S fs1, ft4, fs5
  ADDIW s0, s4, 1
  # implict jump to bb28
bb28:
  SLTI s5, s0, 24
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb2
bb30:
  FSGNJ.S fs11, fs1, fs1
  ADD s3, s0, zero
  JAL zero, bb5
bb31:
  FLW ft4, 0(sp)
  FMUL.S fs8, ft4, fs3
  FLW ft4, 12(sp)
  FADD.S fs8, ft4, fs8
  FMUL.S fs9, fs2, fs3
  FLW ft4, 8(sp)
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
  FMUL.S ft5, fs4, ft0
  ADDI s7, zero, 4
  FCVT.S.W ft6, s7
  FADD.S ft7, ft6, ft0
  FDIV.S ft5, ft5, ft7
  FADD.S ft2, ft2, ft5
  XORI s7, zero, 10
  BNE s7, zero, bb47
  # implict jump to bb32
bb32:
  FSGNJ.S ft5, ft2, ft2
  # implict jump to bb33
bb33:
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
  FMUL.S fa2, fs4, ft7
  FADD.S fa3, ft6, ft7
  FDIV.S fa2, fa2, fa3
  FADD.S fa1, fa1, fa2
  XORI s8, zero, 10
  BNE s8, zero, bb41
  # implict jump to bb34
bb34:
  FSGNJ.S fa2, fa1, fa1
  # implict jump to bb35
bb35:
  LA s9, .CONSTANT.7.10
  FLW fa3, 0(s9)
  FSUB.S fa2, fa2, fa3
  FLT.S s9, ft5, fa2
  BNE s9, zero, bb40
  # implict jump to bb36
bb36:
  FSW fa2, 208(sp)
  LA s9, .CONSTANT.7.2
  FLW fa2, 0(s9)
  FSW fa2, 212(sp)
  # implict jump to bb37
bb37:
  FLW fa2, 208(sp)
  LA s9, .CONSTANT.7.7
  FLW fa3, 0(s9)
  FLT.S s9, fa2, fa3
  BNE s9, zero, bb39
  # implict jump to bb38
bb38:
  FADD.S fa2, fs3, fa2
  ADDIW s9, s6, 1
  ADD s5, s9, zero
  FSGNJ.S fs0, fa2, fa2
  JAL zero, bb23
bb39:
  FLW fs0, 212(sp)
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb27
bb40:
  FSW ft5, 208(sp)
  LA s9, .CONSTANT.7.6
  FLW fa2, 0(s9)
  FSW fa2, 212(sp)
  JAL zero, bb37
bb41:
  ADDI s8, zero, 10
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADD s9, s8, zero
  FSGNJ.S fa3, fa1, fa1
  FDIV.S fa4, ft7, fa3
  FADD.S fa3, fa3, fa4
  FDIV.S fs6, fa3, fs4
  ADDI s10, zero, 1
  SUBW s1, s9, s10
  # implict jump to bb44
bb44:
  BNE s1, zero, bb46
  # implict jump to bb45
bb45:
  FSGNJ.S fa2, fs6, fs6
  JAL zero, bb35
bb46:
  FSGNJ.S fa1, fs6, fs6
  ADD s8, s1, zero
  JAL zero, bb43
bb47:
  ADDI s7, zero, 10
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  ADD s8, s7, zero
  FSGNJ.S ft7, ft2, ft2
  FDIV.S fa1, ft0, ft7
  FADD.S ft7, ft7, fa1
  FDIV.S fs7, ft7, fs4
  ADDI s9, zero, 1
  SUBW s2, s8, s9
  # implict jump to bb50
bb50:
  BNE s2, zero, bb52
  # implict jump to bb51
bb51:
  FSGNJ.S ft5, fs7, fs7
  JAL zero, bb33
bb52:
  FSGNJ.S ft2, fs7, fs7
  ADD s7, s2, zero
  JAL zero, bb49
bb53:
  LA s8, .CONSTANT.7.3
  FLW fs5, 0(s8)
  FLT.S s8, fs3, fs5
  ADD s7, s8, zero
  JAL zero, bb25
bb54:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb22
bb55:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FSUB.S fs5, fs8, fs5
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb20
bb56:
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  FDIV.S fs9, fs5, fs9
  FCVT.W.S s5, fs9, rtz
  FCVT.S.W fs9, s5
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FMUL.S fs3, fs9, fs3
  FSUB.S fs3, fs5, fs3
  FSGNJ.S fs8, fs3, fs3
  JAL zero, bb18
bb57:
  ADDI s5, zero, 1
  JAL zero, bb16
bb58:
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FADD.S ft1, ft1, ft5
  FSGNJ.S ft2, ft1, ft1
  JAL zero, bb14
bb59:
  LA s5, .CONSTANT.7.4
  FLW ft5, 0(s5)
  FSUB.S ft2, ft2, ft5
  FSGNJ.S ft1, ft2, ft2
  JAL zero, bb12
bb60:
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
  JAL zero, bb10
bb61:
  ADDI s5, zero, 1
  JAL zero, bb8
bb62:
  LA s5, seed
  LW s5, 0(s5)
  LUI s6, 24414
  ADDIW s6, s6, 263
  ADDW s5, s5, s6
  LA s6, seed
  SW s5, 0(s6)
  JAL zero, bb6
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
  # implict jump to bb64
bb64:
  FSGNJ.S fs4, fs3, fs3
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb90
  # implict jump to bb65
bb65:
  ADD s4, zero, zero
  # implict jump to bb66
bb66:
  BNE s4, zero, bb68
  # implict jump to bb67
bb67:
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
bb68:
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
  BNE s4, zero, bb84
  # implict jump to bb69
bb69:
  FSGNJ.S fs11, fs9, fs9
  # implict jump to bb70
bb70:
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
  BNE s5, zero, bb78
  # implict jump to bb71
bb71:
  FSGNJ.S ft5, ft2, ft2
  # implict jump to bb72
bb72:
  LA s6, .CONSTANT.7.10
  FLW ft6, 0(s6)
  FSUB.S ft5, ft5, ft6
  FLT.S s6, fs11, ft5
  BNE s6, zero, bb77
  # implict jump to bb73
bb73:
  FSW ft5, 168(sp)
  LA s6, .CONSTANT.7.2
  FLW ft5, 0(s6)
  FSW ft5, 172(sp)
  # implict jump to bb74
bb74:
  FLW ft5, 168(sp)
  LA s6, .CONSTANT.7.7
  FLW ft6, 0(s6)
  FLT.S s6, ft5, ft6
  BNE s6, zero, bb76
  # implict jump to bb75
bb75:
  FADD.S ft5, fs4, ft5
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  FSGNJ.S fs3, ft5, ft5
  JAL zero, bb64
bb76:
  FLW fs3, 172(sp)
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
bb77:
  FSW fs11, 168(sp)
  LA s6, .CONSTANT.7.6
  FLW ft5, 0(s6)
  FSW ft5, 172(sp)
  JAL zero, bb74
bb78:
  ADDI s5, zero, 10
  # implict jump to bb79
bb79:
  # implict jump to bb80
bb80:
  ADD s6, s5, zero
  FSGNJ.S ft6, ft2, ft2
  FDIV.S ft7, ft1, ft6
  FADD.S ft6, ft6, ft7
  FDIV.S fs0, ft6, fs10
  ADDI s7, zero, 1
  SUBW s0, s6, s7
  # implict jump to bb81
bb81:
  BNE s0, zero, bb83
  # implict jump to bb82
bb82:
  FSGNJ.S ft5, fs0, fs0
  JAL zero, bb72
bb83:
  FSGNJ.S ft2, fs0, fs0
  ADD s5, s0, zero
  JAL zero, bb80
bb84:
  ADDI s4, zero, 10
  # implict jump to bb85
bb85:
  # implict jump to bb86
bb86:
  ADD s5, s4, zero
  FSGNJ.S ft1, fs9, fs9
  FDIV.S ft2, fs7, ft1
  FADD.S ft1, ft1, ft2
  FDIV.S fs1, ft1, fs10
  ADDI s6, zero, 1
  SUBW s1, s5, s6
  # implict jump to bb87
bb87:
  BNE s1, zero, bb89
  # implict jump to bb88
bb88:
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb70
bb89:
  FSGNJ.S fs9, fs1, fs1
  ADD s4, s1, zero
  JAL zero, bb86
bb90:
  LA s5, .CONSTANT.7.3
  FLW fs5, 0(s5)
  FLT.S s5, fs4, fs5
  ADD s4, s5, zero
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
  BNE s0, zero, bb96
  # implict jump to bb92
bb92:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb93
bb93:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb95
  # implict jump to bb94
bb94:
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
bb95:
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
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb93
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
  BNE s1, zero, bb101
  # implict jump to bb99
bb99:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb100
bb100:
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
bb101:
  ADDI s1, zero, 10
  # implict jump to bb102
bb102:
  # implict jump to bb103
bb103:
  ADD s2, s1, zero
  FSGNJ.S fs5, fs2, fs2
  FDIV.S fs6, fs1, fs5
  FADD.S fs5, fs5, fs6
  FDIV.S fs0, fs5, fs3
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb104
bb104:
  BNE s0, zero, bb106
  # implict jump to bb105
bb105:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb100
bb106:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  JAL zero, bb103
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
  BNE s1, zero, bb110
  # implict jump to bb108
bb108:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb109
bb109:
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
bb110:
  ADDI s1, zero, 10
  # implict jump to bb111
bb111:
  # implict jump to bb112
bb112:
  ADD s2, s1, zero
  FSGNJ.S fs5, fs2, fs2
  FDIV.S fs6, fs1, fs5
  FADD.S fs5, fs5, fs6
  FDIV.S fs0, fs5, fs3
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb113
bb113:
  BNE s0, zero, bb115
  # implict jump to bb114
bb114:
  FSGNJ.S fs4, fs0, fs0
  JAL zero, bb109
bb115:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  JAL zero, bb112
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb118
  # implict jump to bb117
bb117:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb118:
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
  BNE s0, zero, bb131
  # implict jump to bb120
bb120:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb121
bb121:
  BNE s0, zero, bb130
  # implict jump to bb122
bb122:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb123
bb123:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb129
  # implict jump to bb124
bb124:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb125
bb125:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb128
  # implict jump to bb126
bb126:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb127
bb127:
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
bb128:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb127
bb129:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb125
bb130:
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
  JAL zero, bb123
bb131:
  ADDI s0, zero, 1
  JAL zero, bb121
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
  BLT s0, zero, bb134
  # implict jump to bb133
bb133:
  LA s0, seed
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb134:
  LA s0, seed
  LW s0, 0(s0)
  LUI s1, 24414
  ADDIW s1, s1, 263
  ADDW s0, s0, s1
  LA s1, seed
  SW s0, 0(s1)
  JAL zero, bb133
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
  BNE s2, zero, bb149
  # implict jump to bb136
bb136:
  FSGNJ.S fs6, fs4, fs4
  # implict jump to bb137
bb137:
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
  BNE s3, zero, bb143
  # implict jump to bb138
bb138:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb139
bb139:
  LA s4, .CONSTANT.7.10
  FLW fs11, 0(s4)
  FSUB.S fs10, fs10, fs11
  FLT.S s4, fs6, fs10
  BNE s4, zero, bb142
  # implict jump to bb140
bb140:
  FSW fs10, 0(a0)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  # implict jump to bb141
bb141:
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
bb142:
  FSW fs6, 0(a0)
  LA s4, .CONSTANT.7.6
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  JAL zero, bb141
bb143:
  ADDI s3, zero, 10
  # implict jump to bb144
bb144:
  # implict jump to bb145
bb145:
  ADD s4, s3, zero
  FSGNJ.S fs11, fs9, fs9
  FDIV.S ft0, fs8, fs11
  FADD.S fs11, fs11, ft0
  FDIV.S fs0, fs11, fs5
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  # implict jump to bb146
bb146:
  BNE s0, zero, bb148
  # implict jump to bb147
bb147:
  FSGNJ.S fs10, fs0, fs0
  JAL zero, bb139
bb148:
  FSGNJ.S fs9, fs0, fs0
  ADD s3, s0, zero
  JAL zero, bb145
bb149:
  ADDI s2, zero, 10
  # implict jump to bb150
bb150:
  # implict jump to bb151
bb151:
  ADD s3, s2, zero
  FSGNJ.S fs8, fs4, fs4
  FDIV.S fs9, fs2, fs8
  FADD.S fs8, fs8, fs9
  FDIV.S fs1, fs8, fs5
  ADDI s4, zero, 1
  SUBW s1, s3, s4
  # implict jump to bb152
bb152:
  BNE s1, zero, bb154
  # implict jump to bb153
bb153:
  FSGNJ.S fs6, fs1, fs1
  JAL zero, bb137
bb154:
  FSGNJ.S fs4, fs1, fs1
  ADD s2, s1, zero
  JAL zero, bb151
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
  BNE s0, zero, bb167
  # implict jump to bb156
bb156:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb157
bb157:
  BNE s0, zero, bb166
  # implict jump to bb158
bb158:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb159
bb159:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb165
  # implict jump to bb160
bb160:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb161
bb161:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb164
  # implict jump to bb162
bb162:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb163
bb163:
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
bb164:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb163
bb165:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb161
bb166:
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
  JAL zero, bb159
bb167:
  ADDI s0, zero, 1
  JAL zero, bb157
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
  SD ra, 144(sp)
  SD s0, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  FSD fs4, 200(sp)
  SD s4, 208(sp)
  SD s5, 216(sp)
  SD s6, 224(sp)
  SD s7, 232(sp)
  SD s8, 240(sp)
  SD s11, 248(sp)
  FSD fs0, 256(sp)
  FSD fs1, 264(sp)
  FSD fs2, 272(sp)
  FSD fs3, 280(sp)
  FSD fs5, 288(sp)
  FSD fs6, 296(sp)
  FSD fs7, 304(sp)
  FSD fs8, 312(sp)
  FSD fs9, 320(sp)
  FSD fs10, 328(sp)
  FSD fs11, 336(sp)
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
  SLTI s9, zero, 192
  BNE s9, zero, bb171
  # implict jump to bb170
bb170:
  LD ra, 144(sp)
  LD s0, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  FLD fs4, 200(sp)
  LD s4, 208(sp)
  LD s5, 216(sp)
  LD s6, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s11, 248(sp)
  FLD fs0, 256(sp)
  FLD fs1, 264(sp)
  FLD fs2, 272(sp)
  FLD fs3, 280(sp)
  FLD fs5, 288(sp)
  FLD fs6, 296(sp)
  FLD fs7, 304(sp)
  FLD fs8, 312(sp)
  FLD fs9, 320(sp)
  FLD fs10, 328(sp)
  FLD fs11, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb171:
  LA s9, .CONSTANT.7.2
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs3, 0(s9)
  FSGNJ.S fs1, fs1, fs3
  LA s9, .CONSTANT.7.2
  FLW fs3, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs2, 0(s9)
  FSGNJ.S fs2, fs3, fs2
  # implict jump to bb172
bb172:
  SLTI t4, zero, 192
  SB t4, 1(sp)
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb173
bb173:
  ADD s11, s10, zero
  FSGNJ.S fs3, fs1, fs1
  FSGNJ.S fs7, fs2, fs2
  ADD t4, s9, zero
  SW t4, 12(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb178
  # implict jump to bb174
bb174:
  # implict jump to bb175
bb175:
  ADD s5, s11, zero
  FSGNJ.S fs10, fs3, fs3
  FSGNJ.S fs9, fs7, fs7
  ADDI a0, zero, 10
  CALL putch
  LW t4, 12(sp)
  ADDIW s0, t4, 1
  # implict jump to bb176
bb176:
  SLTI s3, s0, 192
  BNE s3, zero, bb177
  JAL zero, bb170
bb177:
  ADD s9, s0, zero
  FSGNJ.S fs2, fs9, fs9
  FSGNJ.S fs1, fs10, fs10
  ADD s10, s5, zero
  JAL zero, bb173
bb178:
  # implict jump to bb179
bb179:
  LW t4, 12(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 32(sp)
  ADDI s4, zero, 192
  FCVT.S.W ft4, s4
  FSW ft4, 28(sp)
  FLW ft3, 32(sp)
  FLW ft4, 28(sp)
  FDIV.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  SLTI t4, zero, 24
  SB t4, 0(sp)
  ADD s4, zero, zero
  # implict jump to bb180
bb180:
  ADD t4, s4, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  FCVT.S.W ft4, t4
  FSW ft4, 8(sp)
  FLW ft3, 8(sp)
  FLW ft4, 28(sp)
  FDIV.S ft4, ft3, ft4
  FSW ft4, 20(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb189
  # implict jump to bb181
bb181:
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FSGNJ.S fs5, fs5, fs11
  # implict jump to bb182
bb182:
  ADDI s3, zero, 24
  FCVT.S.W fs0, s3
  FDIV.S fs0, fs5, fs0
  LA s3, .CONSTANT.7.11
  FLW fs4, 0(s3)
  FMUL.S fs0, fs0, fs4
  FCVT.W.S s3, fs0, rtz
  ADDI s7, zero, 255
  BLT s7, s3, bb188
  # implict jump to bb183
bb183:
  # implict jump to bb184
bb184:
  ADD s6, s3, zero
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 16(sp)
  ADDIW s2, t4, 1
  # implict jump to bb185
bb185:
  SLTI s3, s2, 192
  BNE s3, zero, bb187
  # implict jump to bb186
bb186:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs7, ft4, ft3
  FLW ft4, 32(sp)
  FLW ft3, 32(sp)
  FSGNJ.S fs3, ft4, ft3
  ADD s11, s6, zero
  JAL zero, bb175
bb187:
  ADD s4, s2, zero
  JAL zero, bb180
bb188:
  ADDI s3, zero, 255
  JAL zero, bb184
bb189:
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs8, 0(s3)
  FSGNJ.S fs8, fs11, fs8
  # implict jump to bb190
bb190:
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 60(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb191
bb191:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  LA s7, seed
  LW s7, 0(s7)
  LUI s8, 4878
  ADDIW s8, s8, -158
  MULW s7, s7, s8
  LUI s8, 6
  ADDIW s8, s8, -1243
  ADDW s7, s7, s8
  LUI s8, 24414
  ADDIW s8, s8, 263
  REMW s7, s7, s8
  LA s8, seed
  SW s7, 0(s8)
  BLT s7, zero, bb248
  # implict jump to bb192
bb192:
  LA s7, seed
  LW s7, 0(s7)
  FCVT.S.W fs11, s7
  LUI s7, 24414
  ADDIW s7, s7, 262
  FCVT.S.W fs0, s7
  FDIV.S fs0, fs11, fs0
  LW t4, 36(sp)
  FCVT.S.W fs11, t4
  FADD.S fs0, fs11, fs0
  LA s7, .CONSTANT.7.4
  FLW fs11, 0(s7)
  FMUL.S fs0, fs11, fs0
  ADDI s7, zero, 24
  FCVT.S.W fs11, s7
  FDIV.S ft4, fs0, fs11
  FSW ft4, 128(sp)
  ADDI s7, zero, 2
  FCVT.S.W ft4, s7
  FSW ft4, 80(sp)
  LA s7, .CONSTANT.7.5
  FLW fs0, 0(s7)
  FLW ft4, 80(sp)
  FDIV.S fs0, fs0, ft4
  FLW ft4, 128(sp)
  FADD.S fs0, ft4, fs0
  LA s7, .CONSTANT.7.4
  FLW fs11, 0(s7)
  FLT.S s7, fs11, fs0
  BNE s7, zero, bb247
  # implict jump to bb193
bb193:
  LA s7, .CONSTANT.7.4
  FLW fs11, 0(s7)
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FSGNJN.S fs6, fs11, fs6
  FLT.S s7, fs0, fs6
  # implict jump to bb194
bb194:
  BNE s7, zero, bb246
  # implict jump to bb195
bb195:
  FSGNJ.S fs6, fs0, fs0
  # implict jump to bb196
bb196:
  LA s7, .CONSTANT.7.5
  FLW fs0, 0(s7)
  FLT.S s7, fs0, fs6
  BNE s7, zero, bb245
  # implict jump to bb197
bb197:
  FSGNJ.S fs0, fs6, fs6
  # implict jump to bb198
bb198:
  LA s7, .CONSTANT.7.5
  FLW fs6, 0(s7)
  LA s7, .CONSTANT.7.5
  FLW fs8, 0(s7)
  FSGNJN.S ft4, fs6, fs8
  FSW ft4, 132(sp)
  FLW ft4, 132(sp)
  FLT.S s7, fs0, ft4
  BNE s7, zero, bb244
  # implict jump to bb199
bb199:
  FSGNJ.S fs6, fs0, fs0
  # implict jump to bb200
bb200:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 136(sp)
  LA s7, .CONSTANT.7.4
  FLW fs0, 0(s7)
  FLW ft4, 128(sp)
  FLT.S s7, fs0, ft4
  BNE s7, zero, bb243
  # implict jump to bb201
bb201:
  LA s7, .CONSTANT.7.4
  FLW fs0, 0(s7)
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FSGNJN.S fs0, fs0, fs6
  FLW ft4, 128(sp)
  FLT.S s7, ft4, fs0
  # implict jump to bb202
bb202:
  BNE s7, zero, bb242
  # implict jump to bb203
bb203:
  FLW ft4, 128(sp)
  FLW ft3, 128(sp)
  FSGNJ.S fs0, ft4, ft3
  # implict jump to bb204
bb204:
  LA s7, .CONSTANT.7.5
  FLW fs6, 0(s7)
  FLT.S s7, fs6, fs0
  BNE s7, zero, bb241
  # implict jump to bb205
bb205:
  FSGNJ.S fs6, fs0, fs0
  # implict jump to bb206
bb206:
  FLW ft4, 132(sp)
  FLT.S s7, fs6, ft4
  BNE s7, zero, bb240
  # implict jump to bb207
bb207:
  FSGNJ.S fs0, fs6, fs6
  # implict jump to bb208
bb208:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 40(sp)
  ADD s7, zero, zero
  LA s8, .CONSTANT.7.2
  FLW fs0, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs6, 0(s8)
  FSGNJ.S fs0, fs0, fs6
  # implict jump to bb209
bb209:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 124(sp)
  ADD t4, s7, zero
  SW t4, 64(sp)
  LW t4, 64(sp)
  SLTI s8, t4, 10
  BNE s8, zero, bb239
  # implict jump to bb210
bb210:
  ADD s8, zero, zero
  # implict jump to bb211
bb211:
  BNE s8, zero, bb217
  # implict jump to bb212
bb212:
  LA s3, .CONSTANT.7.2
  FLW fs8, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs11, 0(s3)
  FSGNJ.S fs8, fs8, fs11
  # implict jump to bb213
bb213:
  FLW ft3, 48(sp)
  FADD.S ft4, ft3, fs8
  FSW ft4, 108(sp)
  LW t4, 36(sp)
  ADDIW s1, t4, 1
  # implict jump to bb214
bb214:
  SLTI s3, s1, 24
  BNE s3, zero, bb216
  # implict jump to bb215
bb215:
  FLW ft4, 108(sp)
  FLW ft3, 108(sp)
  FSGNJ.S fs5, ft4, ft3
  JAL zero, bb182
bb216:
  FLW ft3, 108(sp)
  FLW ft4, 108(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  JAL zero, bb191
bb217:
  FLW ft4, 136(sp)
  FLW ft3, 124(sp)
  FMUL.S fs11, ft4, ft3
  FLW ft3, 20(sp)
  FADD.S ft4, ft3, fs11
  FSW ft4, 72(sp)
  FLW ft4, 40(sp)
  FLW ft3, 124(sp)
  FMUL.S fs11, ft4, ft3
  FLW ft3, 24(sp)
  FADD.S ft4, ft3, fs11
  FSW ft4, 76(sp)
  LA s3, .CONSTANT.7.0
  FLW fs11, 0(s3)
  FLW ft4, 72(sp)
  FSUB.S fs11, ft4, fs11
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  FLW ft4, 76(sp)
  FSUB.S fs6, ft4, fs6
  FMUL.S fs11, fs11, fs11
  FMUL.S fs6, fs6, fs6
  FADD.S ft4, fs11, fs6
  FSW ft4, 116(sp)
  ADDI s3, zero, 8
  FCVT.S.W ft4, s3
  FSW ft4, 120(sp)
  FLW ft4, 116(sp)
  FLW ft3, 120(sp)
  FDIV.S fs11, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs6, 0(s3)
  FADD.S fs6, fs11, fs6
  FLW ft4, 80(sp)
  FLW ft3, 116(sp)
  FMUL.S fs11, ft4, ft3
  ADDI s3, zero, 4
  FCVT.S.W ft4, s3
  FSW ft4, 112(sp)
  FLW ft4, 112(sp)
  FLW ft3, 116(sp)
  FADD.S fs4, ft4, ft3
  FDIV.S fs4, fs11, fs4
  FADD.S fs4, fs6, fs4
  XORI s3, zero, 10
  BNE s3, zero, bb233
  # implict jump to bb218
bb218:
  FSGNJ.S fs6, fs4, fs4
  # implict jump to bb219
bb219:
  LA s3, .CONSTANT.7.8
  FLW fs4, 0(s3)
  FSUB.S ft4, fs6, fs4
  FSW ft4, 92(sp)
  LA s3, .CONSTANT.7.9
  FLW fs6, 0(s3)
  FLW ft4, 72(sp)
  FSUB.S fs6, ft4, fs6
  LA s3, .CONSTANT.7.9
  FLW fs11, 0(s3)
  FLW ft4, 76(sp)
  FSUB.S fs11, ft4, fs11
  FMUL.S fs6, fs6, fs6
  FMUL.S fs11, fs11, fs11
  FADD.S ft4, fs6, fs11
  FSW ft4, 96(sp)
  FLW ft4, 96(sp)
  FLW ft3, 120(sp)
  FDIV.S fs11, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs6, 0(s3)
  FADD.S fs6, fs11, fs6
  FLW ft4, 80(sp)
  FLW ft3, 96(sp)
  FMUL.S fs11, ft4, ft3
  FLW ft4, 112(sp)
  FLW ft3, 96(sp)
  FADD.S fs4, ft4, ft3
  FDIV.S fs4, fs11, fs4
  FADD.S fs4, fs6, fs4
  XORI s3, zero, 10
  BNE s3, zero, bb227
  # implict jump to bb220
bb220:
  FSGNJ.S fs6, fs4, fs4
  # implict jump to bb221
bb221:
  LA s3, .CONSTANT.7.10
  FLW fs4, 0(s3)
  FSUB.S fs4, fs6, fs4
  FLW ft4, 92(sp)
  FLT.S s3, ft4, fs4
  BNE s3, zero, bb226
  # implict jump to bb222
bb222:
  FSW fs4, 344(sp)
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  FSW fs4, 348(sp)
  # implict jump to bb223
bb223:
  FLW fs4, 344(sp)
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FLT.S s3, fs4, fs6
  BNE s3, zero, bb225
  # implict jump to bb224
bb224:
  FLW ft4, 124(sp)
  FADD.S fs4, ft4, fs4
  LW t4, 64(sp)
  ADDIW s3, t4, 1
  ADD s7, s3, zero
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb209
bb225:
  FLW fs0, 348(sp)
  FSGNJ.S fs8, fs0, fs0
  JAL zero, bb213
bb226:
  FLW ft4, 92(sp)
  FSW ft4, 344(sp)
  LA s3, .CONSTANT.7.6
  FLW fs4, 0(s3)
  FSW fs4, 348(sp)
  JAL zero, bb223
bb227:
  ADDI s3, zero, 10
  # implict jump to bb228
bb228:
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 88(sp)
  ADD t4, s3, zero
  SW t4, 84(sp)
  # implict jump to bb229
bb229:
  LW t4, 84(sp)
  ADD s8, t4, zero
  FLW ft4, 88(sp)
  FLW ft3, 88(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 96(sp)
  FDIV.S fs4, ft4, fs11
  FADD.S fs4, fs11, fs4
  FLW ft3, 80(sp)
  FDIV.S ft4, fs4, ft3
  FSW ft4, 56(sp)
  ADDI s3, zero, 1
  SUBW t4, s8, s3
  SW t4, 44(sp)
  # implict jump to bb230
bb230:
  LW t4, 44(sp)
  BNE t4, zero, bb232
  # implict jump to bb231
bb231:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb221
bb232:
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 88(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb229
bb233:
  ADDI s3, zero, 10
  # implict jump to bb234
bb234:
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 104(sp)
  ADD t4, s3, zero
  SW t4, 100(sp)
  # implict jump to bb235
bb235:
  LW t4, 100(sp)
  ADD s8, t4, zero
  FLW ft4, 104(sp)
  FLW ft3, 104(sp)
  FSGNJ.S fs11, ft4, ft3
  FLW ft4, 116(sp)
  FDIV.S fs4, ft4, fs11
  FADD.S fs4, fs11, fs4
  FLW ft3, 80(sp)
  FDIV.S ft4, fs4, ft3
  FSW ft4, 52(sp)
  ADDI s3, zero, 1
  SUBW t4, s8, s3
  SW t4, 4(sp)
  # implict jump to bb236
bb236:
  LW t4, 4(sp)
  BNE t4, zero, bb238
  # implict jump to bb237
bb237:
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs6, ft4, ft3
  JAL zero, bb219
bb238:
  FLW ft3, 52(sp)
  FLW ft4, 52(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 104(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb235
bb239:
  LA s3, .CONSTANT.7.3
  FLW fs8, 0(s3)
  FLW ft4, 124(sp)
  FLT.S s3, ft4, fs8
  ADD s8, s3, zero
  JAL zero, bb211
bb240:
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs0, fs6, fs6
  JAL zero, bb208
bb241:
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FSUB.S fs0, fs0, fs8
  FSGNJ.S fs6, fs0, fs0
  JAL zero, bb206
bb242:
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FLW ft4, 128(sp)
  FDIV.S fs6, ft4, fs6
  FCVT.W.S s7, fs6, rtz
  FCVT.S.W fs6, s7
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FMUL.S fs6, fs6, fs8
  FLW ft4, 128(sp)
  FSUB.S fs6, ft4, fs6
  FSGNJ.S fs0, fs6, fs6
  JAL zero, bb204
bb243:
  ADDI s7, zero, 1
  JAL zero, bb202
bb244:
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FADD.S fs0, fs0, fs8
  FSGNJ.S fs6, fs0, fs0
  JAL zero, bb200
bb245:
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs0, fs6, fs6
  JAL zero, bb198
bb246:
  LA s7, .CONSTANT.7.4
  FLW fs11, 0(s7)
  FDIV.S fs11, fs0, fs11
  FCVT.W.S s7, fs11, rtz
  FCVT.S.W fs11, s7
  LA s7, .CONSTANT.7.4
  FLW fs8, 0(s7)
  FMUL.S fs8, fs11, fs8
  FSUB.S fs0, fs0, fs8
  FSGNJ.S fs6, fs0, fs0
  JAL zero, bb196
bb247:
  ADDI s7, zero, 1
  JAL zero, bb194
bb248:
  LA s7, seed
  LW s7, 0(s7)
  LUI s8, 24414
  ADDIW s8, s8, 263
  ADDW s7, s7, s8
  LA s8, seed
  SW s7, 0(s8)
  JAL zero, bb192
