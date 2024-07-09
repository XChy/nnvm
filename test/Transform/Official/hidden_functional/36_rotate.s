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
  FSD fs6, 32(sp)
  FSD fs5, 40(sp)
  FSD fs3, 48(sp)
  FSD fs1, 56(sp)
  FSD fs0, 64(sp)
  SD s3, 72(sp)
  FSD fs8, 80(sp)
  FSD fs9, 88(sp)
  SD s1, 96(sp)
  FSD fs7, 104(sp)
  SD s2, 112(sp)
  FSD fs2, 120(sp)
  SD s7, 128(sp)
  SD s0, 136(sp)
  SD ra, 144(sp)
  FSD fs10, 152(sp)
  FSD fs4, 160(sp)
  SD s9, 168(sp)
  SD s4, 176(sp)
  SD s5, 184(sp)
  SD s6, 192(sp)
  SD s8, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FLW ft4, 0(sp)
  FLT.S s2, fs2, ft4
  BNE s2, zero, bb14
  JAL zero, bb15
bb1:
  FSGNJ.S fs7, fs8, fs8
  ADDI s3, zero, 2
  FCVT.S.W fs8, s3
  LA s3, .CONSTANT.7.1
  FLW fs9, 0(s3)
  FDIV.S fs10, fs9, fs8
  FLW ft4, 0(sp)
  FADD.S fs8, ft4, fs10
  LA s3, .CONSTANT.7.0
  FLW fs9, 0(s3)
  FLT.S s3, fs9, fs8
  BNE s3, zero, bb24
  JAL zero, bb25
bb2:
  FSGNJ.S fs4, ft0, ft0
  LA s4, width
  LW s5, 0(s4)
  ADDI s4, zero, 2
  DIVW s6, s5, s4
  LA s4, height
  LW s5, 0(s4)
  ADDI s4, zero, 2
  DIVW s7, s5, s4
  SUBW s4, s0, s6
  SUBW s5, s1, s7
  FCVT.S.W ft0, s4
  FMUL.S ft1, ft0, fs4
  FCVT.S.W ft2, s5
  FMUL.S ft5, ft2, fs7
  FSUB.S ft6, ft1, ft5
  FCVT.S.W ft1, s6
  FADD.S ft5, ft6, ft1
  FCVT.W.S s4, ft5, rtz
  FMUL.S ft1, ft0, fs7
  FMUL.S ft0, ft2, fs4
  FADD.S fs4, ft1, ft0
  FCVT.S.W ft0, s7
  FADD.S ft1, fs4, ft0
  FCVT.W.S s5, ft1, rtz
  SLT s6, s4, zero
  BNE s6, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s6, zero, 1
  JAL zero, bb5
bb4:
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s4, s8
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb5
bb5:
  ADD s7, s6, zero
  BNE s7, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s7, zero, 1
  JAL zero, bb8
bb7:
  SLT s8, s5, zero
  ADD s7, s8, zero
  JAL zero, bb8
bb8:
  ADD s8, s7, zero
  BNE s8, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s8, zero, 1
  JAL zero, bb11
bb10:
  LA s9, height
  LW s10, 0(s9)
  SLT s9, s5, s10
  XORI s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb11
bb11:
  ADD s9, s8, zero
  BNE s9, zero, bb12
  JAL zero, bb13
bb12:
  ADD a0, zero, zero
  FLD fs11, 24(sp)
  FLD fs6, 32(sp)
  FLD fs5, 40(sp)
  FLD fs3, 48(sp)
  FLD fs1, 56(sp)
  FLD fs0, 64(sp)
  LD s3, 72(sp)
  FLD fs8, 80(sp)
  FLD fs9, 88(sp)
  LD s1, 96(sp)
  FLD fs7, 104(sp)
  LD s2, 112(sp)
  FLD fs2, 120(sp)
  LD s7, 128(sp)
  LD s0, 136(sp)
  LD ra, 144(sp)
  FLD fs10, 152(sp)
  FLD fs4, 160(sp)
  LD s9, 168(sp)
  LD s4, 176(sp)
  LD s5, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb13:
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s5, s10
  ADDW s10, s9, s4
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, image
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADD a0, s9, zero
  FLD fs11, 24(sp)
  FLD fs6, 32(sp)
  FLD fs5, 40(sp)
  FLD fs3, 48(sp)
  FLD fs1, 56(sp)
  FLD fs0, 64(sp)
  LD s3, 72(sp)
  FLD fs8, 80(sp)
  FLD fs9, 88(sp)
  LD s1, 96(sp)
  FLD fs7, 104(sp)
  LD s2, 112(sp)
  FLD fs2, 120(sp)
  LD s7, 128(sp)
  LD s0, 136(sp)
  LD ra, 144(sp)
  FLD fs10, 152(sp)
  FLD fs4, 160(sp)
  LD s9, 168(sp)
  LD s4, 176(sp)
  LD s5, 184(sp)
  LD s6, 192(sp)
  LD s8, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb14:
  ADDI s2, zero, 1
  JAL zero, bb16
bb15:
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs1, 0(s3)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s3, ft4, fs2
  ADD s2, s3, zero
  JAL zero, bb16
bb16:
  ADD s3, s2, zero
  BNE s3, zero, bb17
  JAL zero, bb33
bb17:
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  FLW ft4, 0(sp)
  FDIV.S fs3, ft4, fs2
  FCVT.W.S s3, fs3, rtz
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.0
  FLW fs3, 0(s3)
  FMUL.S fs4, fs2, fs3
  FLW ft4, 0(sp)
  FSUB.S fs2, ft4, fs4
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 8(sp)
  JAL zero, bb18
bb18:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs4, 0(s3)
  FLT.S s3, fs4, fs2
  BNE s3, zero, bb19
  JAL zero, bb34
bb19:
  LA s3, .CONSTANT.7.0
  FLW fs4, 0(s3)
  FSUB.S fs5, fs2, fs4
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 16(sp)
  JAL zero, bb20
bb20:
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs5, ft4, ft3
  LA s3, .CONSTANT.7.1
  FLW fs6, 0(s3)
  LA s3, .CONSTANT.7.1
  FLW fs7, 0(s3)
  FSGNJN.S fs0, fs6, fs7
  FLT.S s3, fs5, fs0
  BNE s3, zero, bb21
  JAL zero, bb35
bb21:
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  FADD.S fs7, fs5, fs6
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb22
bb22:
  FSGNJ.S fs7, fs6, fs6
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb1
bb23:
  FSGNJ.S fs4, ft0, ft0
  FSGNJ.S ft0, fs4, fs4
  JAL zero, bb2
bb24:
  ADDI s3, zero, 1
  JAL zero, bb26
bb25:
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FSGNJN.S fs4, fs1, fs3
  FLT.S s4, fs8, fs4
  ADD s3, s4, zero
  JAL zero, bb26
bb26:
  ADD s4, s3, zero
  BNE s4, zero, bb27
  JAL zero, bb36
bb27:
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FDIV.S fs10, fs8, fs9
  FCVT.W.S s4, fs10, rtz
  FCVT.S.W fs9, s4
  LA s4, .CONSTANT.7.0
  FLW fs10, 0(s4)
  FMUL.S fs11, fs9, fs10
  FSUB.S fs9, fs8, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb28
bb28:
  FSGNJ.S fs9, fs10, fs10
  LA s4, .CONSTANT.7.1
  FLW fs11, 0(s4)
  FLT.S s4, fs11, fs9
  BNE s4, zero, bb29
  JAL zero, bb37
bb29:
  LA s4, .CONSTANT.7.0
  FLW fs11, 0(s4)
  FSUB.S fs1, fs9, fs11
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb30
bb30:
  FSGNJ.S fs1, fs11, fs11
  FLT.S s4, fs1, fs0
  BNE s4, zero, bb31
  JAL zero, bb38
bb31:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FADD.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb32
bb32:
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S ft0, fs4, fs4
  JAL zero, bb23
bb33:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb18
bb34:
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 16(sp)
  JAL zero, bb20
bb35:
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb22
bb36:
  FSGNJ.S fs10, fs8, fs8
  JAL zero, bb28
bb37:
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb30
bb38:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb32
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
  BNE s0, zero, bb44
  JAL zero, bb45
bb40:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb41
  JAL zero, bb42
bb41:
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
bb42:
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
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb43
bb43:
  FSGNJ.S fs2, fs3, fs3
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
bb44:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb40
bb45:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb40
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
  BNE s0, zero, bb48
  JAL zero, bb49
bb48:
  ADDI s0, zero, 1
  JAL zero, bb50
bb49:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb50
bb50:
  ADD s1, s0, zero
  BNE s1, zero, bb51
  JAL zero, bb57
bb51:
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
  JAL zero, bb52
bb52:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb53
  JAL zero, bb58
bb53:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb54
bb54:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb55
  JAL zero, bb59
bb55:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb56
bb56:
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
bb57:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb52
bb58:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb54
bb59:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb56
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
  BNE s0, zero, bb62
  JAL zero, bb63
bb61:
  FSGNJ.S fs6, fs7, fs7
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
bb62:
  ADDI s0, zero, 1
  JAL zero, bb64
bb63:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb64
bb64:
  ADD s1, s0, zero
  BNE s1, zero, bb65
  JAL zero, bb71
bb65:
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
  JAL zero, bb66
bb66:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb67
  JAL zero, bb72
bb67:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb68
bb68:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb69
  JAL zero, bb73
bb69:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb70
bb70:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb61
bb71:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb66
bb72:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb68
bb73:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb70
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
  BNE s0, zero, bb78
  JAL zero, bb79
bb75:
  ADD s2, s1, zero
  SLT s3, s2, zero
  BNE s3, zero, bb76
  JAL zero, bb77
bb76:
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
bb77:
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
bb78:
  ADDI s0, zero, 1
  JAL zero, bb80
bb79:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb80
bb80:
  ADD s1, s0, zero
  BNE s1, zero, bb81
  JAL zero, bb82
bb81:
  ADDI s1, zero, -1
  JAL zero, bb75
bb82:
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
  BNE s4, zero, bb83
  JAL zero, bb84
bb83:
  ADDI s2, zero, 1
  JAL zero, bb85
bb84:
  LA s1, height
  LW s3, 0(s1)
  ADDI s1, zero, 1024
  SLT s4, s1, s3
  ADD s2, s4, zero
  JAL zero, bb85
bb85:
  ADD s3, s2, zero
  BNE s3, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s3, zero, 1
  JAL zero, bb88
bb87:
  CALL getint
  ADD s1, a0, zero
  XORI s4, s1, 255
  SLTU s1, zero, s4
  ADD s3, s1, zero
  JAL zero, bb88
bb88:
  ADD s4, s3, zero
  BNE s4, zero, bb89
  JAL zero, bb90
bb89:
  ADDI s1, zero, -1
  JAL zero, bb75
bb90:
  ADD s4, zero, zero
  JAL zero, bb91
bb91:
  ADD s5, s4, zero
  LA s6, height
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb92
  JAL zero, bb93
bb92:
  ADD s6, zero, zero
  JAL zero, bb94
bb93:
  ADD s1, zero, zero
  JAL zero, bb75
bb94:
  ADD s7, s6, zero
  LA s8, width
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb95
  JAL zero, bb96
bb95:
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
  JAL zero, bb94
bb96:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb91
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
  BNE s0, zero, bb98
  JAL zero, bb99
bb98:
  ADDI s0, zero, 1
  JAL zero, bb100
bb99:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb100
bb100:
  ADD s1, s0, zero
  BNE s1, zero, bb101
  JAL zero, bb102
bb101:
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
bb102:
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
  BNE s3, zero, bb103
  JAL zero, bb104
bb103:
  ADDI s1, zero, 1
  JAL zero, bb105
bb104:
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 1024
  SLT s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb105
bb105:
  ADD s2, s1, zero
  BNE s2, zero, bb106
  JAL zero, bb107
bb106:
  ADDI s2, zero, 1
  JAL zero, bb108
bb107:
  CALL getint
  ADD s3, a0, zero
  XORI s4, s3, 255
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb108
bb108:
  ADD s3, s2, zero
  BNE s3, zero, bb109
  JAL zero, bb110
bb109:
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
bb110:
  ADD s3, zero, zero
  JAL zero, bb111
bb111:
  ADD s4, s3, zero
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb112
  JAL zero, bb113
bb112:
  ADD s5, zero, zero
  JAL zero, bb114
bb113:
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
bb114:
  ADD s6, s5, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb115
  JAL zero, bb116
bb115:
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
  JAL zero, bb114
bb116:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb111
write_pgm:
  ADDI sp, sp, -288
  FSD fs11, 80(sp)
  SD s4, 88(sp)
  SD s3, 96(sp)
  FSD fs9, 104(sp)
  FSD fs8, 112(sp)
  SD s1, 120(sp)
  SD s5, 128(sp)
  SD s0, 136(sp)
  FSD fs2, 144(sp)
  SD s7, 152(sp)
  SD s2, 160(sp)
  SD s11, 168(sp)
  FSD fs6, 176(sp)
  FSD fs7, 184(sp)
  SD ra, 192(sp)
  FSD fs10, 200(sp)
  FSD fs4, 208(sp)
  SD s9, 216(sp)
  SD s6, 224(sp)
  SD s8, 232(sp)
  FSD fs3, 240(sp)
  FSD fs0, 248(sp)
  FSD fs5, 256(sp)
  SD s10, 264(sp)
  FSD fs1, 272(sp)
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 0(sp)
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s0, width
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, height
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb118
bb118:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LA s2, height
  LW s3, 0(s2)
  LW t4, 72(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb119
  JAL zero, bb120
bb119:
  ADD s2, zero, zero
  JAL zero, bb121
bb120:
  FLD fs11, 80(sp)
  LD s4, 88(sp)
  LD s3, 96(sp)
  FLD fs9, 104(sp)
  FLD fs8, 112(sp)
  LD s1, 120(sp)
  LD s5, 128(sp)
  LD s0, 136(sp)
  FLD fs2, 144(sp)
  LD s7, 152(sp)
  LD s2, 160(sp)
  LD s11, 168(sp)
  FLD fs6, 176(sp)
  FLD fs7, 184(sp)
  LD ra, 192(sp)
  FLD fs10, 200(sp)
  FLD fs4, 208(sp)
  LD s9, 216(sp)
  LD s6, 224(sp)
  LD s8, 232(sp)
  FLD fs3, 240(sp)
  FLD fs0, 248(sp)
  FLD fs5, 256(sp)
  LD s10, 264(sp)
  FLD fs1, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb121:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb122
  JAL zero, bb124
bb122:
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  FLW ft4, 0(sp)
  FLT.S s4, fs2, ft4
  BNE s4, zero, bb138
  JAL zero, bb139
bb123:
  ADD s0, s11, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb121
bb124:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 72(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb118
bb125:
  FSGNJ.S fs7, fs8, fs8
  ADDI s5, zero, 2
  FCVT.S.W fs8, s5
  LA s5, .CONSTANT.7.1
  FLW fs9, 0(s5)
  FDIV.S fs10, fs9, fs8
  FLW ft3, 0(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 56(sp)
  LA s5, .CONSTANT.7.0
  FLW fs9, 0(s5)
  FLW ft4, 56(sp)
  FLT.S s5, fs9, ft4
  BNE s5, zero, bb148
  JAL zero, bb149
bb126:
  FSGNJ.S fs4, fs2, fs2
  LA s6, width
  LW s7, 0(s6)
  ADDI s6, zero, 2
  DIVW s8, s7, s6
  LA s6, height
  LW s7, 0(s6)
  ADDI s6, zero, 2
  DIVW s9, s7, s6
  SUBW s6, s3, s8
  LW t4, 72(sp)
  SUBW s7, t4, s9
  FCVT.S.W fs2, s6
  FMUL.S fs0, fs2, fs4
  FCVT.S.W fs6, s7
  FMUL.S fs5, fs6, fs7
  FSUB.S fs8, fs0, fs5
  FCVT.S.W fs0, s8
  FADD.S fs5, fs8, fs0
  FCVT.W.S s6, fs5, rtz
  FMUL.S fs0, fs2, fs7
  FMUL.S fs2, fs6, fs4
  FADD.S fs4, fs0, fs2
  FCVT.S.W fs0, s9
  FADD.S fs2, fs4, fs0
  FCVT.W.S s7, fs2, rtz
  SLT s8, s6, zero
  BNE s8, zero, bb127
  JAL zero, bb128
bb127:
  ADDI s8, zero, 1
  JAL zero, bb129
bb128:
  LA s0, width
  LW s1, 0(s0)
  SLT s0, s6, s1
  XORI s1, s0, 1
  ADD s8, s1, zero
  JAL zero, bb129
bb129:
  ADD s9, s8, zero
  BNE s9, zero, bb130
  JAL zero, bb131
bb130:
  ADDI s9, zero, 1
  JAL zero, bb132
bb131:
  SLT s0, s7, zero
  ADD s9, s0, zero
  JAL zero, bb132
bb132:
  ADD s10, s9, zero
  BNE s10, zero, bb133
  JAL zero, bb134
bb133:
  ADDI s10, zero, 1
  JAL zero, bb135
bb134:
  LA s0, height
  LW s1, 0(s0)
  SLT s0, s7, s1
  XORI s1, s0, 1
  ADD s10, s1, zero
  JAL zero, bb135
bb135:
  ADD s11, s10, zero
  BNE s11, zero, bb136
  JAL zero, bb137
bb136:
  ADD s11, zero, zero
  JAL zero, bb123
bb137:
  LA s0, width
  LW s2, 0(s0)
  MULW s0, s7, s2
  ADDW s2, s0, s6
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD s11, s0, zero
  JAL zero, bb123
bb138:
  ADDI s4, zero, 1
  JAL zero, bb140
bb139:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s0, ft4, fs2
  ADD s4, s0, zero
  JAL zero, bb140
bb140:
  ADD s5, s4, zero
  BNE s5, zero, bb141
  JAL zero, bb157
bb141:
  LA s5, .CONSTANT.7.0
  FLW fs2, 0(s5)
  FLW ft4, 0(sp)
  FDIV.S fs3, ft4, fs2
  FCVT.W.S s5, fs3, rtz
  FCVT.S.W fs2, s5
  LA s5, .CONSTANT.7.0
  FLW fs3, 0(s5)
  FMUL.S fs4, fs2, fs3
  FLW ft4, 0(sp)
  FSUB.S fs2, ft4, fs4
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 8(sp)
  JAL zero, bb142
bb142:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  LA s5, .CONSTANT.7.1
  FLW fs4, 0(s5)
  FLW ft4, 24(sp)
  FLT.S s5, fs4, ft4
  BNE s5, zero, bb143
  JAL zero, bb158
bb143:
  LA s5, .CONSTANT.7.0
  FLW fs4, 0(s5)
  FLW ft4, 24(sp)
  FSUB.S fs5, ft4, fs4
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 16(sp)
  JAL zero, bb144
bb144:
  FLW ft3, 16(sp)
  FLW ft4, 16(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs7, 0(s5)
  FSGNJN.S ft4, fs6, fs7
  FSW ft4, 32(sp)
  FLW ft4, 48(sp)
  FLW ft3, 32(sp)
  FLT.S s5, ft4, ft3
  BNE s5, zero, bb145
  JAL zero, bb159
bb145:
  LA s5, .CONSTANT.7.0
  FLW fs6, 0(s5)
  FLW ft4, 48(sp)
  FADD.S fs7, ft4, fs6
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 40(sp)
  JAL zero, bb146
bb146:
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fs7, ft4, ft3
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs7, fa0, fa0
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb125
bb147:
  FSGNJ.S fs4, fs2, fs2
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb126
bb148:
  ADDI s5, zero, 1
  JAL zero, bb150
bb149:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 56(sp)
  FLT.S s0, ft4, fs2
  ADD s5, s0, zero
  JAL zero, bb150
bb150:
  ADD s6, s5, zero
  BNE s6, zero, bb151
  JAL zero, bb160
bb151:
  LA s6, .CONSTANT.7.0
  FLW fs9, 0(s6)
  FLW ft4, 56(sp)
  FDIV.S fs10, ft4, fs9
  FCVT.W.S s6, fs10, rtz
  FCVT.S.W fs9, s6
  LA s6, .CONSTANT.7.0
  FLW fs10, 0(s6)
  FMUL.S fs11, fs9, fs10
  FLW ft4, 56(sp)
  FSUB.S fs9, ft4, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb152
bb152:
  FSGNJ.S fs9, fs10, fs10
  LA s6, .CONSTANT.7.1
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs9
  BNE s6, zero, bb153
  JAL zero, bb161
bb153:
  LA s6, .CONSTANT.7.0
  FLW fs11, 0(s6)
  FSUB.S fs1, fs9, fs11
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb154
bb154:
  FSGNJ.S fs1, fs11, fs11
  FLW ft4, 32(sp)
  FLT.S s6, fs1, ft4
  BNE s6, zero, bb155
  JAL zero, bb162
bb155:
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FADD.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb156
bb156:
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb147
bb157:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb142
bb158:
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 16(sp)
  JAL zero, bb144
bb159:
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 40(sp)
  JAL zero, bb146
bb160:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb152
bb161:
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb154
bb162:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb156
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb164
  JAL zero, bb165
bb164:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb165:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
