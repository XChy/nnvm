.global rotate
.global my_sin_impl
.global p
.global my_sin
.global my_cos
.global main
.global read_image
.global write_pgm
.global my_fabs
.section .bss




image:
.space 4194304







.section .data
EPSILON:
.word 0x358637bd
PI:
.word 0x40490fdb
height:
.word 0x00000000
width:
.word 0x00000000

MAX_HEIGHT:
.word 0x00000400
TWO_PI:
.word 0x40c90fdb
MAX_WIDTH:
.word 0x00000400
.CONSTANT.7.0:
.word 0x40c90fdb
.CONSTANT.7.1:
.word 0x40490fdb
.CONSTANT.7.2:
.word 0x358637bd
.CONSTANT.7.3:
.word 0x40400000
.section .text
rotate:
  ADDI sp, sp, -224
  FSD fs11, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  FSD fs1, 48(sp)
  SD s4, 56(sp)
  SD s8, 64(sp)
  FSD fs3, 72(sp)
  SD s3, 80(sp)
  FSD fs8, 88(sp)
  SD s7, 96(sp)
  FSD fs2, 104(sp)
  SD s2, 112(sp)
  SD s0, 120(sp)
  SD s9, 128(sp)
  FSD fs4, 136(sp)
  SD s10, 144(sp)
  FSD fs5, 152(sp)
  FSD fs9, 160(sp)
  SD s11, 168(sp)
  FSD fs6, 176(sp)
  FSD fs0, 184(sp)
  SD s5, 192(sp)
  FSD fs7, 200(sp)
  SD ra, 208(sp)
  FSD fs10, 216(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FLW ft4, 0(sp)
  FLT.S s4, fs1, ft4
  BNE s4, zero, bb12
  JAL zero, bb13
bb1:
  ADDI s6, zero, 1
  JAL zero, bb3
bb2:
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s1, s8
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb3
bb3:
  ADD s7, s6, zero
  BNE s7, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s7, zero, 1
  JAL zero, bb6
bb5:
  SLT s8, s0, zero
  ADD s7, s8, zero
  JAL zero, bb6
bb6:
  ADD s8, s7, zero
  BNE s8, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s8, zero, 1
  JAL zero, bb9
bb8:
  LA s9, height
  LW s10, 0(s9)
  SLT s9, s0, s10
  XORI s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb9
bb9:
  ADD s9, s8, zero
  BNE s9, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  FLD fs11, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  FLD fs1, 48(sp)
  LD s4, 56(sp)
  LD s8, 64(sp)
  FLD fs3, 72(sp)
  LD s3, 80(sp)
  FLD fs8, 88(sp)
  LD s7, 96(sp)
  FLD fs2, 104(sp)
  LD s2, 112(sp)
  LD s0, 120(sp)
  LD s9, 128(sp)
  FLD fs4, 136(sp)
  LD s10, 144(sp)
  FLD fs5, 152(sp)
  FLD fs9, 160(sp)
  LD s11, 168(sp)
  FLD fs6, 176(sp)
  FLD fs0, 184(sp)
  LD s5, 192(sp)
  FLD fs7, 200(sp)
  LD ra, 208(sp)
  FLD fs10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s0, s10
  ADDW s10, s9, s1
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, image
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADD a0, s9, zero
  FLD fs11, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  FLD fs1, 48(sp)
  LD s4, 56(sp)
  LD s8, 64(sp)
  FLD fs3, 72(sp)
  LD s3, 80(sp)
  FLD fs8, 88(sp)
  LD s7, 96(sp)
  FLD fs2, 104(sp)
  LD s2, 112(sp)
  LD s0, 120(sp)
  LD s9, 128(sp)
  FLD fs4, 136(sp)
  LD s10, 144(sp)
  FLD fs5, 152(sp)
  FLD fs9, 160(sp)
  LD s11, 168(sp)
  FLD fs6, 176(sp)
  FLD fs0, 184(sp)
  LD s5, 192(sp)
  FLD fs7, 200(sp)
  LD ra, 208(sp)
  FLD fs10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb12:
  ADDI s4, zero, 1
  JAL zero, bb14
bb13:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s0, ft4, fs2
  ADD s4, s0, zero
  JAL zero, bb14
bb14:
  ADD s5, s4, zero
  BNE s5, zero, bb15
  JAL zero, bb30
bb15:
  LA s5, .CONSTANT.7.0
  FLW fs1, 0(s5)
  FLW ft4, 0(sp)
  FDIV.S fs2, ft4, fs1
  FCVT.W.S s5, fs2, rtz
  FCVT.S.W fs1, s5
  LA s5, .CONSTANT.7.0
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FLW ft4, 0(sp)
  FSUB.S fs1, ft4, fs3
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 8(sp)
  JAL zero, bb16
bb16:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs1, ft4, ft3
  LA s5, .CONSTANT.7.1
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs1
  BNE s5, zero, bb17
  JAL zero, bb31
bb17:
  LA s5, .CONSTANT.7.0
  FLW fs3, 0(s5)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 16(sp)
  JAL zero, bb18
bb18:
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs4, ft4, ft3
  LA s5, .CONSTANT.7.1
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s5, fs4, fs7
  BNE s5, zero, bb19
  JAL zero, bb32
bb19:
  LA s5, .CONSTANT.7.0
  FLW fs5, 0(s5)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb20
bb20:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  ADDI s5, zero, 2
  FCVT.S.W fs8, s5
  LA s5, .CONSTANT.7.1
  FLW fs9, 0(s5)
  FDIV.S fs10, fs9, fs8
  FLW ft4, 0(sp)
  FADD.S fs8, ft4, fs10
  LA s5, .CONSTANT.7.0
  FLW fs9, 0(s5)
  FLT.S s5, fs9, fs8
  BNE s5, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s5, zero, 1
  JAL zero, bb23
bb22:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s0, fs8, fs3
  ADD s5, s0, zero
  JAL zero, bb23
bb23:
  ADD s6, s5, zero
  BNE s6, zero, bb24
  JAL zero, bb33
bb24:
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FDIV.S fs10, fs8, fs9
  FCVT.W.S s6, fs10, rtz
  FCVT.S.W fs9, s6
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FMUL.S fs11, fs9, fs10
  FSUB.S fs9, fs8, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb25
bb25:
  FSGNJ.S fs9, fs10, fs10
  LA s6, .CONSTANT.7.1
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs9
  BNE s6, zero, bb26
  JAL zero, bb34
bb26:
  LA s6, .CONSTANT.7.0
  FLW fs11, 0(s6)
  FSUB.S fs0, fs9, fs11
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb27
bb27:
  FSGNJ.S fs0, fs11, fs11
  FLT.S s6, fs0, fs7
  BNE s6, zero, bb28
  JAL zero, bb35
bb28:
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb29
bb29:
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  LA s6, width
  LW s7, 0(s6)
  ADDI s6, zero, 2
  DIVW s8, s7, s6
  LA s6, height
  LW s7, 0(s6)
  ADDI s6, zero, 2
  DIVW s9, s7, s6
  SUBW s6, s2, s8
  SUBW s7, s3, s9
  FCVT.S.W ft0, s6
  FMUL.S ft1, ft0, fs3
  FCVT.S.W ft2, s7
  FMUL.S ft5, ft2, fs6
  FSUB.S ft6, ft1, ft5
  FCVT.S.W ft1, s8
  FADD.S ft5, ft6, ft1
  FCVT.W.S s1, ft5, rtz
  FMUL.S ft1, ft0, fs6
  FMUL.S ft0, ft2, fs3
  FADD.S fs3, ft1, ft0
  FCVT.S.W ft0, s9
  FADD.S ft1, fs3, ft0
  FCVT.W.S s0, ft1, rtz
  SLT s6, s1, zero
  BNE s6, zero, bb1
  JAL zero, bb2
bb30:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb16
bb31:
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 16(sp)
  JAL zero, bb18
bb32:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb20
bb33:
  FSGNJ.S fs10, fs8, fs8
  JAL zero, bb25
bb34:
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb27
bb35:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb29
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
  BNE s0, zero, bb41
  JAL zero, bb42
bb37:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb38
  JAL zero, bb39
bb38:
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
bb39:
  LA s0, .CONSTANT.7.3
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
  JAL zero, bb40
bb40:
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
bb41:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb37
bb42:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb37
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
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s0, zero, 1
  JAL zero, bb47
bb46:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb47
bb47:
  ADD s1, s0, zero
  BNE s1, zero, bb48
  JAL zero, bb54
bb48:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FDIV.S fs2, fs0, fs1
  FCVT.W.S s1, fs2, rtz
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FSUB.S fs1, fs0, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb49
bb49:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb50
  JAL zero, bb55
bb50:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb51
bb51:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb52
  JAL zero, bb56
bb52:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb53
bb53:
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
bb54:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb49
bb55:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb51
bb56:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb53
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
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb59
  JAL zero, bb60
bb58:
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
bb59:
  ADDI s0, zero, 1
  JAL zero, bb61
bb60:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb61
bb61:
  ADD s1, s0, zero
  BNE s1, zero, bb62
  JAL zero, bb68
bb62:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  FDIV.S fs2, fs1, fs0
  FCVT.W.S s1, fs2, rtz
  FCVT.S.W fs0, s1
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FMUL.S fs3, fs0, fs2
  FSUB.S fs0, fs1, fs3
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb63
bb63:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb64
  JAL zero, bb69
bb64:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb65
bb65:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb66
  JAL zero, bb70
bb66:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb67
bb67:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  JAL zero, bb58
bb68:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb63
bb69:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb65
bb70:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb67
main:
  ADDI sp, sp, -112
  SD s10, 0(sp)
  SD s9, 8(sp)
  SD s8, 16(sp)
  FSD fs0, 24(sp)
  SD s2, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s3, 80(sp)
  SD ra, 88(sp)
  SD s4, 96(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  ADD s0, a0, zero
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 80
  SLTU s0, zero, s1
  BNE s0, zero, bb75
  JAL zero, bb76
bb72:
  ADD s2, s1, zero
  SLT s3, s2, zero
  BNE s3, zero, bb73
  JAL zero, bb74
bb73:
  ADDI a0, zero, -1
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s8, 16(sp)
  FLD fs0, 24(sp)
  LD s2, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb74:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s9, 8(sp)
  LD s8, 16(sp)
  FLD fs0, 24(sp)
  LD s2, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb75:
  ADDI s0, zero, 1
  JAL zero, bb77
bb76:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb77
bb77:
  ADD s1, s0, zero
  BNE s1, zero, bb78
  JAL zero, bb79
bb78:
  ADDI s1, zero, -1
  JAL zero, bb72
bb79:
  CALL getint
  ADD s2, a0, zero
  LA s3, width
  SW s2, 0(s3)
  CALL getint
  ADD s2, a0, zero
  LA s3, height
  SW s2, 0(s3)
  LA s2, width
  LW s3, 0(s2)
  ADDI s2, zero, 1024
  SLT s4, s2, s3
  BNE s4, zero, bb80
  JAL zero, bb81
bb80:
  ADDI s2, zero, 1
  JAL zero, bb82
bb81:
  LA s1, height
  LW s3, 0(s1)
  ADDI s1, zero, 1024
  SLT s4, s1, s3
  ADD s2, s4, zero
  JAL zero, bb82
bb82:
  ADD s3, s2, zero
  BNE s3, zero, bb83
  JAL zero, bb84
bb83:
  ADDI s3, zero, 1
  JAL zero, bb85
bb84:
  CALL getint
  ADD s1, a0, zero
  XORI s4, s1, 255
  SLTU s1, zero, s4
  ADD s3, s1, zero
  JAL zero, bb85
bb85:
  ADD s4, s3, zero
  BNE s4, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s1, zero, -1
  JAL zero, bb72
bb87:
  ADD s4, zero, zero
  JAL zero, bb88
bb88:
  ADD s5, s4, zero
  LA s6, height
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb89
  JAL zero, bb90
bb89:
  ADD s6, zero, zero
  JAL zero, bb91
bb90:
  ADD s1, zero, zero
  JAL zero, bb72
bb91:
  ADD s7, s6, zero
  LA s8, width
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb92
  JAL zero, bb93
bb92:
  LA s8, width
  LW s9, 0(s8)
  MULW s8, s5, s9
  ADDW s9, s8, s7
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LA s8, image
  ADD s9, s8, s10
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s9)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb91
bb93:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb88
read_image:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 80
  SLTU s0, zero, s1
  BNE s0, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s0, zero, 1
  JAL zero, bb97
bb96:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb97
bb97:
  ADD s1, s0, zero
  BNE s1, zero, bb98
  JAL zero, bb99
bb98:
  ADDI a0, zero, -1
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb99:
  CALL getint
  ADD s1, a0, zero
  LA s2, width
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  LA s2, height
  SW s1, 0(s2)
  LA s1, width
  LW s2, 0(s1)
  ADDI s1, zero, 1024
  SLT s3, s1, s2
  BNE s3, zero, bb100
  JAL zero, bb101
bb100:
  ADDI s1, zero, 1
  JAL zero, bb102
bb101:
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 1024
  SLT s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb102
bb102:
  ADD s2, s1, zero
  BNE s2, zero, bb103
  JAL zero, bb104
bb103:
  ADDI s2, zero, 1
  JAL zero, bb105
bb104:
  CALL getint
  ADD s3, a0, zero
  XORI s4, s3, 255
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb105
bb105:
  ADD s3, s2, zero
  BNE s3, zero, bb106
  JAL zero, bb107
bb106:
  ADDI a0, zero, -1
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb107:
  ADD s3, zero, zero
  JAL zero, bb108
bb108:
  ADD s4, s3, zero
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb109
  JAL zero, bb110
bb109:
  ADD s5, zero, zero
  JAL zero, bb111
bb110:
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb111:
  ADD s6, s5, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb112
  JAL zero, bb113
bb112:
  LA s7, width
  LW s8, 0(s7)
  MULW s7, s4, s8
  ADDW s8, s7, s6
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, image
  ADD s8, s7, s9
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb111
bb113:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb108
write_pgm:
  ADDI sp, sp, -288
  FSD fs7, 80(sp)
  FSD fs1, 88(sp)
  SD s6, 96(sp)
  SD s5, 104(sp)
  SD s4, 112(sp)
  FSD fs9, 120(sp)
  FSD fs8, 128(sp)
  SD s3, 136(sp)
  SD s7, 144(sp)
  FSD fs2, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s11, 176(sp)
  FSD fs6, 184(sp)
  SD s0, 192(sp)
  SD s8, 200(sp)
  FSD fs3, 208(sp)
  SD s9, 216(sp)
  FSD fs4, 224(sp)
  SD s10, 232(sp)
  FSD fs5, 240(sp)
  FSD fs0, 248(sp)
  SD ra, 256(sp)
  FSD fs10, 264(sp)
  FSD fs11, 272(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s2, width
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s2, height
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb115
bb115:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LA s4, height
  LW s5, 0(s4)
  LW t4, 72(sp)
  SLT s4, t4, s5
  BNE s4, zero, bb116
  JAL zero, bb117
bb116:
  ADD s4, zero, zero
  JAL zero, bb118
bb117:
  FLD fs7, 80(sp)
  FLD fs1, 88(sp)
  LD s6, 96(sp)
  LD s5, 104(sp)
  LD s4, 112(sp)
  FLD fs9, 120(sp)
  FLD fs8, 128(sp)
  LD s3, 136(sp)
  LD s7, 144(sp)
  FLD fs2, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s11, 176(sp)
  FLD fs6, 184(sp)
  LD s0, 192(sp)
  LD s8, 200(sp)
  FLD fs3, 208(sp)
  LD s9, 216(sp)
  FLD fs4, 224(sp)
  LD s10, 232(sp)
  FLD fs5, 240(sp)
  FLD fs0, 248(sp)
  LD ra, 256(sp)
  FLD fs10, 264(sp)
  FLD fs11, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb118:
  ADD s5, s4, zero
  LA s6, width
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb119
  JAL zero, bb121
bb119:
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  FLW ft4, 0(sp)
  FLT.S s6, fs1, ft4
  BNE s6, zero, bb133
  JAL zero, bb134
bb120:
  ADD s2, s11, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s5, 1
  ADD s4, s2, zero
  JAL zero, bb118
bb121:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 72(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb115
bb122:
  ADDI s8, zero, 1
  JAL zero, bb124
bb123:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s1, s3
  XORI s3, s2, 1
  ADD s8, s3, zero
  JAL zero, bb124
bb124:
  ADD s9, s8, zero
  BNE s9, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s9, zero, 1
  JAL zero, bb127
bb126:
  SLT s2, s0, zero
  ADD s9, s2, zero
  JAL zero, bb127
bb127:
  ADD s10, s9, zero
  BNE s10, zero, bb128
  JAL zero, bb129
bb128:
  ADDI s10, zero, 1
  JAL zero, bb130
bb129:
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s0, s3
  XORI s3, s2, 1
  ADD s10, s3, zero
  JAL zero, bb130
bb130:
  ADD s11, s10, zero
  BNE s11, zero, bb131
  JAL zero, bb132
bb131:
  ADD s11, zero, zero
  JAL zero, bb120
bb132:
  LA s2, width
  LW s4, 0(s2)
  MULW s2, s0, s4
  ADDW s4, s2, s1
  ADDI s2, zero, 4
  MULW s3, s4, s2
  LA s2, image
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD s11, s2, zero
  JAL zero, bb120
bb133:
  ADDI s6, zero, 1
  JAL zero, bb135
bb134:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s0, ft4, fs2
  ADD s6, s0, zero
  JAL zero, bb135
bb135:
  ADD s7, s6, zero
  BNE s7, zero, bb136
  JAL zero, bb151
bb136:
  LA s7, .CONSTANT.7.0
  FLW fs1, 0(s7)
  FLW ft4, 0(sp)
  FDIV.S fs2, ft4, fs1
  FCVT.W.S s7, fs2, rtz
  FCVT.S.W fs1, s7
  LA s7, .CONSTANT.7.0
  FLW fs2, 0(s7)
  FMUL.S fs3, fs1, fs2
  FLW ft4, 0(sp)
  FSUB.S fs1, ft4, fs3
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 8(sp)
  JAL zero, bb137
bb137:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  LA s7, .CONSTANT.7.1
  FLW fs3, 0(s7)
  FLW ft4, 24(sp)
  FLT.S s7, fs3, ft4
  BNE s7, zero, bb138
  JAL zero, bb152
bb138:
  LA s7, .CONSTANT.7.0
  FLW fs3, 0(s7)
  FLW ft4, 24(sp)
  FSUB.S fs4, ft4, fs3
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 16(sp)
  JAL zero, bb139
bb139:
  FLW ft3, 16(sp)
  FLW ft4, 16(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  LA s7, .CONSTANT.7.1
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.1
  FLW fs6, 0(s7)
  FSGNJN.S ft4, fs5, fs6
  FSW ft4, 32(sp)
  FLW ft4, 48(sp)
  FLW ft3, 32(sp)
  FLT.S s7, ft4, ft3
  BNE s7, zero, bb140
  JAL zero, bb153
bb140:
  LA s7, .CONSTANT.7.0
  FLW fs5, 0(s7)
  FLW ft4, 48(sp)
  FADD.S fs6, ft4, fs5
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 40(sp)
  JAL zero, bb141
bb141:
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fs6, ft4, ft3
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  ADDI s7, zero, 2
  FCVT.S.W fs8, s7
  LA s7, .CONSTANT.7.1
  FLW fs9, 0(s7)
  FDIV.S fs10, fs9, fs8
  FLW ft3, 0(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 56(sp)
  LA s7, .CONSTANT.7.0
  FLW fs9, 0(s7)
  FLW ft4, 56(sp)
  FLT.S s7, fs9, ft4
  BNE s7, zero, bb142
  JAL zero, bb143
bb142:
  ADDI s7, zero, 1
  JAL zero, bb144
bb143:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 56(sp)
  FLT.S s0, ft4, fs2
  ADD s7, s0, zero
  JAL zero, bb144
bb144:
  ADD s8, s7, zero
  BNE s8, zero, bb145
  JAL zero, bb154
bb145:
  LA s8, .CONSTANT.7.0
  FLW fs9, 0(s8)
  FLW ft4, 56(sp)
  FDIV.S fs10, ft4, fs9
  FCVT.W.S s8, fs10, rtz
  FCVT.S.W fs9, s8
  LA s8, .CONSTANT.7.0
  FLW fs10, 0(s8)
  FMUL.S fs11, fs9, fs10
  FLW ft4, 56(sp)
  FSUB.S fs9, ft4, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb146
bb146:
  FSGNJ.S fs9, fs10, fs10
  LA s8, .CONSTANT.7.1
  FLW fs11, 0(s8)
  FLT.S s8, fs11, fs9
  BNE s8, zero, bb147
  JAL zero, bb155
bb147:
  LA s8, .CONSTANT.7.0
  FLW fs11, 0(s8)
  FSUB.S fs0, fs9, fs11
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb148
bb148:
  FSGNJ.S fs0, fs11, fs11
  FLW ft4, 32(sp)
  FLT.S s8, fs0, ft4
  BNE s8, zero, bb149
  JAL zero, bb156
bb149:
  LA s8, .CONSTANT.7.0
  FLW fs2, 0(s8)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb150
bb150:
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  LA s8, width
  LW s9, 0(s8)
  ADDI s8, zero, 2
  DIVW s10, s9, s8
  LA s8, height
  LW s9, 0(s8)
  ADDI s8, zero, 2
  DIVW s11, s9, s8
  SUBW s8, s5, s10
  LW t4, 72(sp)
  SUBW s9, t4, s11
  FCVT.S.W fs1, s8
  FMUL.S fs7, fs1, fs3
  FCVT.S.W fs5, s9
  FMUL.S fs4, fs5, fs6
  FSUB.S fs8, fs7, fs4
  FCVT.S.W fs4, s10
  FADD.S fs7, fs8, fs4
  FCVT.W.S s1, fs7, rtz
  FMUL.S fs4, fs1, fs6
  FMUL.S fs1, fs5, fs3
  FADD.S fs3, fs4, fs1
  FCVT.S.W fs1, s11
  FADD.S fs4, fs3, fs1
  FCVT.W.S s0, fs4, rtz
  SLT s8, s1, zero
  BNE s8, zero, bb122
  JAL zero, bb123
bb151:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb137
bb152:
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  JAL zero, bb139
bb153:
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 40(sp)
  JAL zero, bb141
bb154:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb146
bb155:
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb148
bb156:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb150
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb158
  JAL zero, bb159
bb158:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb159:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
