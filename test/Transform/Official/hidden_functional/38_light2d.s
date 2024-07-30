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
  FSD fs0, 80(sp)
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
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.D fs6, fa1, fa1
  LA s0, .CONSTANT.7.0
  FLW fs7, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs8, 0(s0)
  FSGNJ.S fs7, fs7, fs8
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  FSGNJ.S fs8, fs7, fs7
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
  BLT s2, zero, bb50
  # implict jump to bb2
bb2:
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
  FDIV.S fs1, fs9, fs10
  ADDI s2, zero, 2
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.5
  FLW fs9, 0(s2)
  FDIV.S fs9, fs9, fs2
  FADD.S fs9, fs1, fs9
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FLT.S s2, fs10, fs9
  BNE s2, zero, bb49
  # implict jump to bb3
bb3:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s2, fs9, fs10
  # implict jump to bb4
bb4:
  BNE s2, zero, bb48
  # implict jump to bb5
bb5:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb6
bb6:
  LA s2, .CONSTANT.7.5
  FLW fs9, 0(s2)
  FLT.S s2, fs9, fs10
  BNE s2, zero, bb47
  # implict jump to bb7
bb7:
  FSGNJ.S fs9, fs10, fs10
  # implict jump to bb8
bb8:
  LA s2, .CONSTANT.7.5
  FLW fs10, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs11, 0(s2)
  FSGNJN.S fs0, fs10, fs11
  FLT.S s2, fs9, fs0
  BNE s2, zero, bb46
  # implict jump to bb9
bb9:
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb10
bb10:
  FSGNJ.S fa0, fs10, fs10
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FLT.S s2, fs9, fs1
  BNE s2, zero, bb45
  # implict jump to bb11
bb11:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSGNJN.S fs9, fs9, fs10
  FLT.S s2, fs1, fs9
  # implict jump to bb12
bb12:
  BNE s2, zero, bb44
  # implict jump to bb13
bb13:
  FSGNJ.S fs9, fs1, fs1
  # implict jump to bb14
bb14:
  LA s2, .CONSTANT.7.5
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fs9
  BNE s2, zero, bb43
  # implict jump to bb15
bb15:
  FSGNJ.S fs1, fs9, fs9
  # implict jump to bb16
bb16:
  FLT.S s2, fs1, fs0
  BNE s2, zero, bb42
  # implict jump to bb17
bb17:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb18
bb18:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  ADD s2, zero, zero
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs1, 0(s3)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb19
bb19:
  FSGNJ.S fs1, fs0, fs0
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb41
  # implict jump to bb20
bb20:
  ADD s4, zero, zero
  # implict jump to bb21
bb21:
  BNE s4, zero, bb27
  # implict jump to bb22
bb22:
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs10, 0(s4)
  FSGNJ.S fs9, fs9, fs10
  # implict jump to bb23
bb23:
  FADD.S fs0, fs8, fs9
  ADDIW s2, s1, 1
  SLTI s8, s2, 24
  BNE s8, zero, bb26
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADDI s8, zero, 24
  FCVT.S.W fs9, s8
  FDIV.S fs9, fs0, fs9
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
  FLD fs0, 80(sp)
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
bb26:
  FSGNJ.S fs7, fs0, fs0
  ADD s0, s2, zero
  JAL zero, bb1
bb27:
  FMUL.S fs10, fs4, fs1
  FADD.S fs10, fs5, fs10
  FMUL.S fs11, fs3, fs1
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
  FMUL.S ft5, fs2, ft0
  ADDI s4, zero, 4
  FCVT.S.W ft6, s4
  FADD.S ft7, ft6, ft0
  FDIV.S ft5, ft5, ft7
  FADD.S ft2, ft2, ft5
  ADDI s4, zero, 10
  # implict jump to bb28
bb28:
  ADD s5, s4, zero
  FSGNJ.S ft5, ft2, ft2
  FDIV.S ft7, ft0, ft5
  FADD.S ft5, ft5, ft7
  FDIV.S ft5, ft5, fs2
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BNE s5, zero, bb40
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LA s6, .CONSTANT.7.8
  FLW ft7, 0(s6)
  FSUB.S ft7, ft5, ft7
  LA s6, .CONSTANT.7.9
  FLW fa1, 0(s6)
  FSUB.S fa1, fs10, fa1
  LA s6, .CONSTANT.7.9
  FLW fa2, 0(s6)
  FSUB.S fa2, fs11, fa2
  FMUL.S fa1, fa1, fa1
  FMUL.S fa2, fa2, fa2
  FADD.S fa1, fa1, fa2
  FDIV.S fa2, fa1, ft1
  LA s6, .CONSTANT.7.2
  FLW fa3, 0(s6)
  FADD.S fa2, fa2, fa3
  FMUL.S fa3, fs2, fa1
  FADD.S fa4, ft6, fa1
  FDIV.S fa3, fa3, fa4
  FADD.S fa2, fa2, fa3
  ADDI s6, zero, 10
  # implict jump to bb31
bb31:
  ADD s7, s6, zero
  FSGNJ.S fa3, fa2, fa2
  FDIV.S fa4, fa1, fa3
  FADD.S fa3, fa3, fa4
  FDIV.S fa3, fa3, fs2
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  BNE s7, zero, bb39
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  LA s8, .CONSTANT.7.10
  FLW fa4, 0(s8)
  FSUB.S fa4, fa3, fa4
  FLT.S s8, ft7, fa4
  BNE s8, zero, bb38
  # implict jump to bb34
bb34:
  FSW fa4, 176(sp)
  LA s8, .CONSTANT.7.0
  FLW fa4, 0(s8)
  FSW fa4, 180(sp)
  # implict jump to bb35
bb35:
  FLW fa4, 176(sp)
  LA s8, .CONSTANT.7.7
  FLW fa5, 0(s8)
  FLT.S s8, fa4, fa5
  BNE s8, zero, bb37
  # implict jump to bb36
bb36:
  FADD.S fa4, fs1, fa4
  ADDIW s8, s3, 1
  ADD s2, s8, zero
  FSGNJ.S fs0, fa4, fa4
  JAL zero, bb19
bb37:
  FLW fs0, 180(sp)
  FSGNJ.S fs9, fs0, fs0
  JAL zero, bb23
bb38:
  FSW ft7, 176(sp)
  LA s8, .CONSTANT.7.6
  FLW fa4, 0(s8)
  FSW fa4, 180(sp)
  JAL zero, bb35
bb39:
  FSGNJ.S fa2, fa3, fa3
  ADD s6, s7, zero
  JAL zero, bb31
bb40:
  FSGNJ.S ft2, ft5, ft5
  ADD s4, s5, zero
  JAL zero, bb28
bb41:
  LA s5, .CONSTANT.7.3
  FLW fs9, 0(s5)
  FLT.S s5, fs1, fs9
  ADD s4, s5, zero
  JAL zero, bb21
bb42:
  LA s2, .CONSTANT.7.4
  FLW fs9, 0(s2)
  FADD.S fs1, fs1, fs9
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb18
bb43:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FSUB.S fs9, fs9, fs10
  FSGNJ.S fs1, fs9, fs9
  JAL zero, bb16
bb44:
  LA s2, .CONSTANT.7.4
  FLW fs10, 0(s2)
  FDIV.S fs10, fs1, fs10
  FCVT.W.S s2, fs10, rtz
  FCVT.S.W fs10, s2
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FMUL.S fs10, fs10, fs11
  FSUB.S fs1, fs1, fs10
  FSGNJ.S fs9, fs1, fs1
  JAL zero, bb14
bb45:
  ADDI s2, zero, 1
  JAL zero, bb12
bb46:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FADD.S fs9, fs9, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb10
bb47:
  LA s2, .CONSTANT.7.4
  FLW fs11, 0(s2)
  FSUB.S fs10, fs10, fs11
  FSGNJ.S fs9, fs10, fs10
  JAL zero, bb8
bb48:
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
  JAL zero, bb6
bb49:
  ADDI s2, zero, 1
  JAL zero, bb4
bb50:
  LA s2, seed
  LW s2, 0(s2)
  LUI s3, 24414
  ADDIW s3, s3, 263
  ADDW s2, s2, s3
  LA s3, seed
  SW s2, 0(s3)
  JAL zero, bb2
trace:
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  FSD fs0, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  FSD fs1, 72(sp)
  FSD fs2, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSD fs5, 104(sp)
  FSD fs6, 112(sp)
  FSD fs7, 120(sp)
  FSD fs8, 128(sp)
  FSD fs9, 136(sp)
  FSD fs10, 144(sp)
  FSD fs11, 152(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb52
bb52:
  FSGNJ.S fs2, fs1, fs1
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb70
  # implict jump to bb53
bb53:
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  BNE s2, zero, bb56
  # implict jump to bb55
bb55:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FSGNJ.S fa0, fs3, fs4
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  FLD fs0, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs6, 112(sp)
  FLD fs7, 120(sp)
  FLD fs8, 128(sp)
  FLD fs9, 136(sp)
  FLD fs10, 144(sp)
  FLD fs11, 152(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb56:
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
  # implict jump to bb57
bb57:
  ADD s3, s2, zero
  FSGNJ.S fs9, fs7, fs7
  FDIV.S fs11, fs5, fs9
  FADD.S fs9, fs9, fs11
  FDIV.S fs9, fs9, fs8
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  BNE s3, zero, bb69
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
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
  # implict jump to bb60
bb60:
  ADD s5, s4, zero
  FSGNJ.S ft2, ft1, ft1
  FDIV.S ft5, ft0, ft2
  FADD.S ft2, ft2, ft5
  FDIV.S ft2, ft2, fs8
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BNE s5, zero, bb68
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  LA s6, .CONSTANT.7.10
  FLW ft5, 0(s6)
  FSUB.S ft5, ft2, ft5
  FLT.S s6, fs11, ft5
  BNE s6, zero, bb67
  # implict jump to bb63
bb63:
  FSW ft5, 160(sp)
  LA s6, .CONSTANT.7.0
  FLW ft5, 0(s6)
  FSW ft5, 164(sp)
  # implict jump to bb64
bb64:
  FLW ft5, 160(sp)
  LA s6, .CONSTANT.7.7
  FLW ft6, 0(s6)
  FLT.S s6, ft5, ft6
  BNE s6, zero, bb66
  # implict jump to bb65
bb65:
  FADD.S ft5, fs2, ft5
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  FSGNJ.S fs1, ft5, ft5
  JAL zero, bb52
bb66:
  FLW fs1, 164(sp)
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  FLD fs0, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs6, 112(sp)
  FLD fs7, 120(sp)
  FLD fs8, 128(sp)
  FLD fs9, 136(sp)
  FLD fs10, 144(sp)
  FLD fs11, 152(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb67:
  FSW fs11, 160(sp)
  LA s6, .CONSTANT.7.6
  FLW ft5, 0(s6)
  FSW ft5, 164(sp)
  JAL zero, bb64
bb68:
  FSGNJ.S ft1, ft2, ft2
  ADD s4, s5, zero
  JAL zero, bb60
bb69:
  FSGNJ.S fs7, fs9, fs9
  ADD s2, s3, zero
  JAL zero, bb57
bb70:
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FLT.S s3, fs2, fs3
  ADD s2, s3, zero
  JAL zero, bb54
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
  BNE s0, zero, bb76
  # implict jump to bb72
bb72:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb73
bb73:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb75
  # implict jump to bb74
bb74:
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
bb75:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb76:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb73
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
  # implict jump to bb79
bb79:
  ADD s1, s0, zero
  FSGNJ.S fs3, fs1, fs1
  FDIV.S fs4, fs0, fs3
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs2
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BNE s1, zero, bb82
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
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
bb82:
  FSGNJ.S fs1, fs3, fs3
  ADD s0, s1, zero
  JAL zero, bb79
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
  # implict jump to bb84
bb84:
  ADD s1, s0, zero
  FSGNJ.S fs3, fs1, fs1
  FDIV.S fs4, fs0, fs3
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs2
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BNE s1, zero, bb87
  # implict jump to bb85
bb85:
  # implict jump to bb86
bb86:
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
bb87:
  FSGNJ.S fs1, fs3, fs3
  ADD s0, s1, zero
  JAL zero, bb84
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb90
  # implict jump to bb89
bb89:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb90:
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
  BNE s0, zero, bb103
  # implict jump to bb92
bb92:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb93
bb93:
  BNE s0, zero, bb102
  # implict jump to bb94
bb94:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb95
bb95:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb101
  # implict jump to bb96
bb96:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb97
bb97:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb99
bb99:
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
bb100:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb99
bb101:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb97
bb102:
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
  JAL zero, bb95
bb103:
  ADDI s0, zero, 1
  JAL zero, bb93
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
  BLT s0, zero, bb106
  # implict jump to bb105
bb105:
  LA s0, seed
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb106:
  LA s0, seed
  LW s0, 0(s0)
  LUI s1, 24414
  ADDIW s1, s1, 263
  ADDW s0, s0, s1
  LA s1, seed
  SW s0, 0(s1)
  JAL zero, bb105
scene:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs7, 104(sp)
  FSD fs8, 112(sp)
  FSD fs9, 120(sp)
  FSD fs10, 128(sp)
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
  # implict jump to bb108
bb108:
  ADD s1, s0, zero
  FSGNJ.S fs4, fs2, fs2
  FDIV.S fs6, fs0, fs4
  FADD.S fs4, fs4, fs6
  FDIV.S fs4, fs4, fs3
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BNE s1, zero, bb118
  # implict jump to bb109
bb109:
  # implict jump to bb110
bb110:
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
  # implict jump to bb111
bb111:
  ADD s3, s2, zero
  FSGNJ.S fs9, fs8, fs8
  FDIV.S fs10, fs7, fs9
  FADD.S fs9, fs9, fs10
  FDIV.S fs9, fs9, fs3
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  BNE s3, zero, bb117
  # implict jump to bb112
bb112:
  # implict jump to bb113
bb113:
  LA s4, .CONSTANT.7.10
  FLW fs10, 0(s4)
  FSUB.S fs10, fs9, fs10
  FLT.S s4, fs6, fs10
  BNE s4, zero, bb116
  # implict jump to bb114
bb114:
  FSW fs10, 0(a0)
  LA s4, .CONSTANT.7.0
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  # implict jump to bb115
bb115:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  FLD fs9, 120(sp)
  FLD fs10, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb116:
  FSW fs6, 0(a0)
  LA s4, .CONSTANT.7.6
  FLW fs10, 0(s4)
  FSW fs10, 4(a0)
  JAL zero, bb115
bb117:
  FSGNJ.S fs8, fs9, fs9
  ADD s2, s3, zero
  JAL zero, bb111
bb118:
  FSGNJ.S fs2, fs4, fs4
  ADD s0, s1, zero
  JAL zero, bb108
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
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -272
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  FSD fs0, 160(sp)
  FSD fs1, 168(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  FSD fs4, 200(sp)
  FSD fs2, 208(sp)
  FSD fs3, 216(sp)
  FSD fs5, 224(sp)
  FSD fs7, 232(sp)
  FSD fs6, 240(sp)
  FSD fs9, 248(sp)
  FSD fs8, 256(sp)
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
  # implict jump to bb134
bb134:
  ADD s1, s0, zero
  FCVT.S.W fs5, s1
  ADDI s2, zero, 192
  FCVT.S.W fs6, s2
  FDIV.S ft4, fs5, fs6
  FSW ft4, 52(sp)
  ADD s2, zero, zero
  # implict jump to bb135
bb135:
  ADD s3, s2, zero
  FCVT.S.W fs7, s3
  FDIV.S ft4, fs7, fs6
  FSW ft4, 44(sp)
  LA s4, .CONSTANT.7.0
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FSGNJ.S fs8, fs8, fs9
  ADD s4, zero, zero
  # implict jump to bb136
bb136:
  ADD t4, s4, zero
  SW t4, 0(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 4(sp)
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
  BLT s6, zero, bb193
  # implict jump to bb137
bb137:
  LA s6, seed
  LW s6, 0(s6)
  FCVT.S.W fs10, s6
  LUI s6, 24414
  ADDIW s6, s6, 262
  FCVT.S.W fs11, s6
  FDIV.S fs10, fs10, fs11
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  FADD.S fs10, fs11, fs10
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FMUL.S fs10, fs11, fs10
  ADDI s6, zero, 24
  FCVT.S.W fs11, s6
  FDIV.S fs3, fs10, fs11
  ADDI s6, zero, 2
  FCVT.S.W ft4, s6
  FSW ft4, 36(sp)
  LA s6, .CONSTANT.7.5
  FLW fs10, 0(s6)
  FLW ft4, 36(sp)
  FDIV.S fs10, fs10, ft4
  FADD.S fs10, fs3, fs10
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs10
  BNE s6, zero, bb192
  # implict jump to bb138
bb138:
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  FSGNJN.S fs0, fs11, fs0
  FLT.S s6, fs10, fs0
  # implict jump to bb139
bb139:
  BNE s6, zero, bb191
  # implict jump to bb140
bb140:
  FSGNJ.S fs0, fs10, fs10
  # implict jump to bb141
bb141:
  LA s6, .CONSTANT.7.5
  FLW fs1, 0(s6)
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb190
  # implict jump to bb142
bb142:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb143
bb143:
  LA s6, .CONSTANT.7.5
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.5
  FLW fs10, 0(s6)
  FSGNJN.S fs4, fs0, fs10
  FLT.S s6, fs1, fs4
  BNE s6, zero, bb189
  # implict jump to bb144
bb144:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb145
bb145:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 40(sp)
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  FLT.S s6, fs0, fs3
  BNE s6, zero, bb188
  # implict jump to bb146
bb146:
  LA s6, .CONSTANT.7.4
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FSGNJN.S fs0, fs0, fs1
  FLT.S s6, fs3, fs0
  # implict jump to bb147
bb147:
  BNE s6, zero, bb187
  # implict jump to bb148
bb148:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb149
bb149:
  LA s6, .CONSTANT.7.5
  FLW fs1, 0(s6)
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb186
  # implict jump to bb150
bb150:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb151
bb151:
  FLT.S s6, fs1, fs4
  BNE s6, zero, bb185
  # implict jump to bb152
bb152:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb153
bb153:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 32(sp)
  ADD s6, zero, zero
  LA s7, .CONSTANT.7.0
  FLW fs0, 0(s7)
  LA s7, .CONSTANT.7.0
  FLW fs1, 0(s7)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb154
bb154:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 8(sp)
  ADD t4, s6, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI s8, t4, 10
  BNE s8, zero, bb184
  # implict jump to bb155
bb155:
  ADD s8, zero, zero
  # implict jump to bb156
bb156:
  BNE s8, zero, bb170
  # implict jump to bb157
bb157:
  LA s8, .CONSTANT.7.0
  FLW fs3, 0(s8)
  LA s8, .CONSTANT.7.0
  FLW fs4, 0(s8)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb158
bb158:
  FLW ft4, 4(sp)
  FADD.S fs0, ft4, fs3
  LW t4, 0(sp)
  ADDIW s6, t4, 1
  SLTI s11, s6, 24
  BNE s11, zero, bb169
  # implict jump to bb159
bb159:
  # implict jump to bb160
bb160:
  ADDI s11, zero, 24
  FCVT.S.W fs3, s11
  FDIV.S fs3, fs0, fs3
  LA s11, .CONSTANT.7.11
  FLW fs5, 0(s11)
  FMUL.S fs3, fs3, fs5
  FCVT.W.S s11, fs3, rtz
  ADDI s5, zero, 255
  BLT s5, s11, bb168
  # implict jump to bb161
bb161:
  ADD s5, s11, zero
  # implict jump to bb162
bb162:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s5, s3, 1
  SLTI s11, s5, 192
  BNE s11, zero, bb167
  # implict jump to bb163
bb163:
  # implict jump to bb164
bb164:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s1, 1
  SLTI t0, s11, 192
  BNE t0, zero, bb166
  # implict jump to bb165
bb165:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  FLD fs0, 160(sp)
  FLD fs1, 168(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  FLD fs4, 200(sp)
  FLD fs2, 208(sp)
  FLD fs3, 216(sp)
  FLD fs5, 224(sp)
  FLD fs7, 232(sp)
  FLD fs6, 240(sp)
  FLD fs9, 248(sp)
  FLD fs8, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb166:
  ADD s0, s11, zero
  JAL zero, bb134
bb167:
  ADD s2, s5, zero
  JAL zero, bb135
bb168:
  ADDI s5, zero, 255
  JAL zero, bb162
bb169:
  FSGNJ.S fs8, fs0, fs0
  ADD s4, s6, zero
  JAL zero, bb136
bb170:
  FLW ft4, 40(sp)
  FLW ft3, 8(sp)
  FMUL.S fs4, ft4, ft3
  FLW ft3, 44(sp)
  FADD.S ft4, ft3, fs4
  FSW ft4, 12(sp)
  FLW ft4, 32(sp)
  FLW ft3, 8(sp)
  FMUL.S fs10, ft4, ft3
  FLW ft3, 52(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 16(sp)
  LA s8, .CONSTANT.7.1
  FLW fs11, 0(s8)
  FLW ft4, 12(sp)
  FSUB.S fs11, ft4, fs11
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FLW ft4, 16(sp)
  FSUB.S fs2, ft4, fs2
  FMUL.S fs11, fs11, fs11
  FMUL.S fs2, fs2, fs2
  FADD.S ft4, fs11, fs2
  FSW ft4, 24(sp)
  ADDI s8, zero, 8
  FCVT.S.W ft4, s8
  FSW ft4, 28(sp)
  FLW ft4, 24(sp)
  FLW ft3, 28(sp)
  FDIV.S fs11, ft4, ft3
  LA s8, .CONSTANT.7.2
  FLW fs2, 0(s8)
  FADD.S fs2, fs11, fs2
  FLW ft4, 36(sp)
  FLW ft3, 24(sp)
  FMUL.S fs11, ft4, ft3
  ADDI s8, zero, 4
  FCVT.S.W ft4, s8
  FSW ft4, 20(sp)
  FLW ft4, 20(sp)
  FLW ft3, 24(sp)
  FADD.S fs10, ft4, ft3
  FDIV.S fs10, fs11, fs10
  FADD.S fs2, fs2, fs10
  ADDI s8, zero, 10
  # implict jump to bb171
bb171:
  ADD s9, s8, zero
  FSGNJ.S fs10, fs2, fs2
  FLW ft4, 24(sp)
  FDIV.S fs11, ft4, fs10
  FADD.S fs10, fs10, fs11
  FLW ft4, 36(sp)
  FDIV.S fs10, fs10, ft4
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BNE s9, zero, bb183
  # implict jump to bb172
bb172:
  # implict jump to bb173
bb173:
  LA s10, .CONSTANT.7.8
  FLW fs11, 0(s10)
  FSUB.S fs11, fs10, fs11
  LA s10, .CONSTANT.7.9
  FLW fs4, 0(s10)
  FLW ft4, 12(sp)
  FSUB.S fs4, ft4, fs4
  LA s10, .CONSTANT.7.9
  FLW fs1, 0(s10)
  FLW ft4, 16(sp)
  FSUB.S fs1, ft4, fs1
  FMUL.S fs4, fs4, fs4
  FMUL.S fs1, fs1, fs1
  FADD.S fs1, fs4, fs1
  FLW ft4, 28(sp)
  FDIV.S fs4, fs1, ft4
  LA s10, .CONSTANT.7.2
  FLW fs9, 0(s10)
  FADD.S fs4, fs4, fs9
  FLW ft4, 36(sp)
  FMUL.S fs9, ft4, fs1
  FLW ft4, 20(sp)
  FADD.S fs7, ft4, fs1
  FDIV.S fs7, fs9, fs7
  FADD.S fs4, fs4, fs7
  ADDI s10, zero, 10
  # implict jump to bb174
bb174:
  ADD s11, s10, zero
  FSGNJ.S fs7, fs4, fs4
  FDIV.S fs9, fs1, fs7
  FADD.S fs7, fs7, fs9
  FLW ft4, 36(sp)
  FDIV.S fs7, fs7, ft4
  ADDI s7, zero, 1
  SUBW s7, s11, s7
  BNE s7, zero, bb182
  # implict jump to bb175
bb175:
  # implict jump to bb176
bb176:
  LA s11, .CONSTANT.7.10
  FLW fs9, 0(s11)
  FSUB.S fs9, fs7, fs9
  FLT.S s11, fs11, fs9
  BNE s11, zero, bb181
  # implict jump to bb177
bb177:
  FSW fs9, 176(sp)
  LA s11, .CONSTANT.7.0
  FLW fs9, 0(s11)
  FSW fs9, 180(sp)
  # implict jump to bb178
bb178:
  FLW fs9, 176(sp)
  LA s11, .CONSTANT.7.7
  FLW fs5, 0(s11)
  FLT.S s11, fs9, fs5
  BNE s11, zero, bb180
  # implict jump to bb179
bb179:
  FLW ft4, 8(sp)
  FADD.S fs5, ft4, fs9
  LW t4, 48(sp)
  ADDIW s11, t4, 1
  ADD s6, s11, zero
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb154
bb180:
  FLW fs0, 180(sp)
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb158
bb181:
  FSW fs11, 176(sp)
  LA s11, .CONSTANT.7.6
  FLW fs9, 0(s11)
  FSW fs9, 180(sp)
  JAL zero, bb178
bb182:
  FSGNJ.S fs4, fs7, fs7
  ADD s10, s7, zero
  JAL zero, bb174
bb183:
  FSGNJ.S fs2, fs10, fs10
  ADD s8, s9, zero
  JAL zero, bb171
bb184:
  LA s9, .CONSTANT.7.3
  FLW fs3, 0(s9)
  FLW ft4, 8(sp)
  FLT.S s9, ft4, fs3
  ADD s8, s9, zero
  JAL zero, bb156
bb185:
  LA s6, .CONSTANT.7.4
  FLW fs3, 0(s6)
  FADD.S fs1, fs1, fs3
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb153
bb186:
  LA s6, .CONSTANT.7.4
  FLW fs3, 0(s6)
  FSUB.S fs0, fs0, fs3
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb151
bb187:
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FDIV.S fs1, fs3, fs1
  FCVT.W.S s6, fs1, rtz
  FCVT.S.W fs1, s6
  LA s6, .CONSTANT.7.4
  FLW fs10, 0(s6)
  FMUL.S fs1, fs1, fs10
  FSUB.S fs1, fs3, fs1
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb149
bb188:
  ADDI s6, zero, 1
  JAL zero, bb147
bb189:
  LA s6, .CONSTANT.7.4
  FLW fs10, 0(s6)
  FADD.S fs1, fs1, fs10
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb145
bb190:
  LA s6, .CONSTANT.7.4
  FLW fs10, 0(s6)
  FSUB.S fs0, fs0, fs10
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb143
bb191:
  LA s6, .CONSTANT.7.4
  FLW fs11, 0(s6)
  FDIV.S fs11, fs10, fs11
  FCVT.W.S s6, fs11, rtz
  FCVT.S.W fs11, s6
  LA s6, .CONSTANT.7.4
  FLW fs1, 0(s6)
  FMUL.S fs1, fs11, fs1
  FSUB.S fs1, fs10, fs1
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb141
bb192:
  ADDI s6, zero, 1
  JAL zero, bb139
bb193:
  LA s6, seed
  LW s6, 0(s6)
  LUI s7, 24414
  ADDIW s7, s7, 263
  ADDW s6, s6, s7
  LA s7, seed
  SW s6, 0(s7)
  JAL zero, bb137
