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
  FSD fs11, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  FSD fs1, 40(sp)
  SD s4, 48(sp)
  SD s8, 56(sp)
  FSD fs3, 64(sp)
  SD s3, 72(sp)
  FSD fs8, 80(sp)
  SD s7, 88(sp)
  FSD fs2, 96(sp)
  SD s0, 104(sp)
  SD s2, 112(sp)
  SD s9, 120(sp)
  FSD fs4, 128(sp)
  SD s10, 136(sp)
  FSD fs5, 144(sp)
  FSD fs9, 152(sp)
  SD s11, 160(sp)
  FSD fs6, 168(sp)
  FSD fs0, 176(sp)
  SD s5, 184(sp)
  FSD fs7, 192(sp)
  SD ra, 200(sp)
  FSD fs10, 208(sp)
  ADD s0, a0, zero
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
  SLT s8, s2, zero
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
  SLT s9, s2, s10
  XORI s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb9
bb9:
  ADD s9, s8, zero
  BNE s9, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  FLD fs11, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  FLD fs1, 40(sp)
  LD s4, 48(sp)
  LD s8, 56(sp)
  FLD fs3, 64(sp)
  LD s3, 72(sp)
  FLD fs8, 80(sp)
  LD s7, 88(sp)
  FLD fs2, 96(sp)
  LD s0, 104(sp)
  LD s2, 112(sp)
  LD s9, 120(sp)
  FLD fs4, 128(sp)
  LD s10, 136(sp)
  FLD fs5, 144(sp)
  FLD fs9, 152(sp)
  LD s11, 160(sp)
  FLD fs6, 168(sp)
  FLD fs0, 176(sp)
  LD s5, 184(sp)
  FLD fs7, 192(sp)
  LD ra, 200(sp)
  FLD fs10, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s2, s10
  ADDW s10, s9, s1
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, image
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADD a0, s9, zero
  FLD fs11, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  FLD fs1, 40(sp)
  LD s4, 48(sp)
  LD s8, 56(sp)
  FLD fs3, 64(sp)
  LD s3, 72(sp)
  FLD fs8, 80(sp)
  LD s7, 88(sp)
  FLD fs2, 96(sp)
  LD s0, 104(sp)
  LD s2, 112(sp)
  LD s9, 120(sp)
  FLD fs4, 128(sp)
  LD s10, 136(sp)
  FLD fs5, 144(sp)
  FLD fs9, 152(sp)
  LD s11, 160(sp)
  FLD fs6, 168(sp)
  FLD fs0, 176(sp)
  LD s5, 184(sp)
  FLD fs7, 192(sp)
  LD ra, 200(sp)
  FLD fs10, 208(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb12:
  ADDI s4, zero, 1
  JAL zero, bb14
bb13:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s1, ft4, fs2
  ADD s4, s1, zero
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
  FSW ft4, 4(sp)
  JAL zero, bb16
bb16:
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
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
  FSW ft4, 8(sp)
  JAL zero, bb18
bb18:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
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
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs8, fs3
  ADD s5, s1, zero
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
  SUBW s6, s0, s8
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
  FCVT.W.S s2, ft1, rtz
  SLT s6, s1, zero
  BNE s6, zero, bb1
  JAL zero, bb2
bb30:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  JAL zero, bb16
bb31:
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 8(sp)
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
  BNE s0, zero, bb40
  JAL zero, bb41
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
bb40:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb37
bb41:
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
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s0, zero, 1
  JAL zero, bb46
bb45:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  JAL zero, bb46
bb46:
  ADD s1, s0, zero
  BNE s1, zero, bb47
  JAL zero, bb53
bb47:
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
  JAL zero, bb48
bb48:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb49
  JAL zero, bb54
bb49:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb50
bb50:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb51
  JAL zero, bb55
bb51:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb52
bb52:
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
bb53:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb48
bb54:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb50
bb55:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb52
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
  BNE s0, zero, bb57
  JAL zero, bb58
bb57:
  ADDI s0, zero, 1
  JAL zero, bb59
bb58:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  JAL zero, bb59
bb59:
  ADD s1, s0, zero
  BNE s1, zero, bb60
  JAL zero, bb66
bb60:
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
  JAL zero, bb61
bb61:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb62
  JAL zero, bb67
bb62:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb63
bb63:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb64
  JAL zero, bb68
bb64:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb65
bb65:
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
bb66:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb61
bb67:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb63
bb68:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb65
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
  BNE s0, zero, bb73
  JAL zero, bb74
bb70:
  ADD s2, s1, zero
  SLT s3, s2, zero
  BNE s3, zero, bb71
  JAL zero, bb72
bb71:
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
bb72:
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
bb73:
  ADDI s0, zero, 1
  JAL zero, bb75
bb74:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb75
bb75:
  ADD s1, s0, zero
  BNE s1, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s1, zero, -1
  JAL zero, bb70
bb77:
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
  BNE s4, zero, bb78
  JAL zero, bb79
bb78:
  ADDI s2, zero, 1
  JAL zero, bb80
bb79:
  LA s1, height
  LW s3, 0(s1)
  ADDI s1, zero, 1024
  SLT s4, s1, s3
  ADD s2, s4, zero
  JAL zero, bb80
bb80:
  ADD s3, s2, zero
  BNE s3, zero, bb81
  JAL zero, bb82
bb81:
  ADDI s3, zero, 1
  JAL zero, bb83
bb82:
  CALL getint
  ADD s1, a0, zero
  XORI s4, s1, 255
  SLTU s1, zero, s4
  ADD s3, s1, zero
  JAL zero, bb83
bb83:
  ADD s4, s3, zero
  BNE s4, zero, bb84
  JAL zero, bb85
bb84:
  ADDI s1, zero, -1
  JAL zero, bb70
bb85:
  ADD s4, zero, zero
  JAL zero, bb86
bb86:
  ADD s5, s4, zero
  LA s6, height
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb87
  JAL zero, bb88
bb87:
  ADD s6, zero, zero
  JAL zero, bb89
bb88:
  ADD s1, zero, zero
  JAL zero, bb70
bb89:
  ADD s7, s6, zero
  LA s8, width
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb90
  JAL zero, bb91
bb90:
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
  JAL zero, bb89
bb91:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb86
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
  BNE s0, zero, bb93
  JAL zero, bb94
bb93:
  ADDI s0, zero, 1
  JAL zero, bb95
bb94:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb95
bb95:
  ADD s1, s0, zero
  BNE s1, zero, bb96
  JAL zero, bb97
bb96:
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
bb97:
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
  BNE s3, zero, bb98
  JAL zero, bb99
bb98:
  ADDI s1, zero, 1
  JAL zero, bb100
bb99:
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 1024
  SLT s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb100
bb100:
  ADD s2, s1, zero
  BNE s2, zero, bb101
  JAL zero, bb102
bb101:
  ADDI s2, zero, 1
  JAL zero, bb103
bb102:
  CALL getint
  ADD s3, a0, zero
  XORI s4, s3, 255
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb103
bb103:
  ADD s3, s2, zero
  BNE s3, zero, bb104
  JAL zero, bb105
bb104:
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
bb105:
  ADD s3, zero, zero
  JAL zero, bb106
bb106:
  ADD s4, s3, zero
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb107
  JAL zero, bb108
bb107:
  ADD s5, zero, zero
  JAL zero, bb109
bb108:
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
bb109:
  ADD s6, s5, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb110
  JAL zero, bb111
bb110:
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
  JAL zero, bb109
bb111:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb106
write_pgm:
  ADDI sp, sp, -240
  FSD fs7, 40(sp)
  FSD fs1, 48(sp)
  SD s6, 56(sp)
  SD s5, 64(sp)
  SD s4, 72(sp)
  FSD fs9, 80(sp)
  FSD fs8, 88(sp)
  SD s3, 96(sp)
  SD s7, 104(sp)
  FSD fs2, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s11, 136(sp)
  FSD fs6, 144(sp)
  SD s0, 152(sp)
  SD s8, 160(sp)
  FSD fs3, 168(sp)
  SD s9, 176(sp)
  FSD fs4, 184(sp)
  SD s10, 192(sp)
  FSD fs5, 200(sp)
  FSD fs0, 208(sp)
  SD ra, 216(sp)
  FSD fs10, 224(sp)
  FSD fs11, 232(sp)
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
  SW t4, 32(sp)
  JAL zero, bb113
bb113:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s4, height
  LW s5, 0(s4)
  LW t4, 36(sp)
  SLT s4, t4, s5
  BNE s4, zero, bb114
  JAL zero, bb115
bb114:
  ADD s4, zero, zero
  JAL zero, bb116
bb115:
  FLD fs7, 40(sp)
  FLD fs1, 48(sp)
  LD s6, 56(sp)
  LD s5, 64(sp)
  LD s4, 72(sp)
  FLD fs9, 80(sp)
  FLD fs8, 88(sp)
  LD s3, 96(sp)
  LD s7, 104(sp)
  FLD fs2, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s11, 136(sp)
  FLD fs6, 144(sp)
  LD s0, 152(sp)
  LD s8, 160(sp)
  FLD fs3, 168(sp)
  LD s9, 176(sp)
  FLD fs4, 184(sp)
  LD s10, 192(sp)
  FLD fs5, 200(sp)
  FLD fs0, 208(sp)
  LD ra, 216(sp)
  FLD fs10, 224(sp)
  FLD fs11, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb116:
  ADD s5, s4, zero
  LA s6, width
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb117
  JAL zero, bb119
bb117:
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  FLW ft4, 0(sp)
  FLT.S s6, fs1, ft4
  BNE s6, zero, bb131
  JAL zero, bb132
bb118:
  ADD s2, s11, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s5, 1
  ADD s4, s2, zero
  JAL zero, bb116
bb119:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 36(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb113
bb120:
  ADDI s8, zero, 1
  JAL zero, bb122
bb121:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s0, s3
  XORI s3, s2, 1
  ADD s8, s3, zero
  JAL zero, bb122
bb122:
  ADD s9, s8, zero
  BNE s9, zero, bb123
  JAL zero, bb124
bb123:
  ADDI s9, zero, 1
  JAL zero, bb125
bb124:
  SLT s2, s1, zero
  ADD s9, s2, zero
  JAL zero, bb125
bb125:
  ADD s10, s9, zero
  BNE s10, zero, bb126
  JAL zero, bb127
bb126:
  ADDI s10, zero, 1
  JAL zero, bb128
bb127:
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s1, s3
  XORI s3, s2, 1
  ADD s10, s3, zero
  JAL zero, bb128
bb128:
  ADD s11, s10, zero
  BNE s11, zero, bb129
  JAL zero, bb130
bb129:
  ADD s11, zero, zero
  JAL zero, bb118
bb130:
  LA s2, width
  LW s4, 0(s2)
  MULW s2, s1, s4
  ADDW s4, s2, s0
  ADDI s2, zero, 4
  MULW s3, s4, s2
  LA s2, image
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD s11, s2, zero
  JAL zero, bb118
bb131:
  ADDI s6, zero, 1
  JAL zero, bb133
bb132:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s0, ft4, fs2
  ADD s6, s0, zero
  JAL zero, bb133
bb133:
  ADD s7, s6, zero
  BNE s7, zero, bb134
  JAL zero, bb149
bb134:
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
  FSW ft4, 4(sp)
  JAL zero, bb135
bb135:
  FLW ft3, 4(sp)
  FLW ft4, 4(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  LA s7, .CONSTANT.7.1
  FLW fs3, 0(s7)
  FLW ft4, 12(sp)
  FLT.S s7, fs3, ft4
  BNE s7, zero, bb136
  JAL zero, bb150
bb136:
  LA s7, .CONSTANT.7.0
  FLW fs3, 0(s7)
  FLW ft4, 12(sp)
  FSUB.S fs4, ft4, fs3
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 8(sp)
  JAL zero, bb137
bb137:
  FLW ft3, 8(sp)
  FLW ft4, 8(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  LA s7, .CONSTANT.7.1
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.1
  FLW fs6, 0(s7)
  FSGNJN.S ft4, fs5, fs6
  FSW ft4, 16(sp)
  FLW ft4, 24(sp)
  FLW ft3, 16(sp)
  FLT.S s7, ft4, ft3
  BNE s7, zero, bb138
  JAL zero, bb151
bb138:
  LA s7, .CONSTANT.7.0
  FLW fs5, 0(s7)
  FLW ft4, 24(sp)
  FADD.S fs6, ft4, fs5
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 20(sp)
  JAL zero, bb139
bb139:
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
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
  FSW ft4, 28(sp)
  LA s7, .CONSTANT.7.0
  FLW fs9, 0(s7)
  FLW ft4, 28(sp)
  FLT.S s7, fs9, ft4
  BNE s7, zero, bb140
  JAL zero, bb141
bb140:
  ADDI s7, zero, 1
  JAL zero, bb142
bb141:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 28(sp)
  FLT.S s0, ft4, fs2
  ADD s7, s0, zero
  JAL zero, bb142
bb142:
  ADD s8, s7, zero
  BNE s8, zero, bb143
  JAL zero, bb152
bb143:
  LA s8, .CONSTANT.7.0
  FLW fs9, 0(s8)
  FLW ft4, 28(sp)
  FDIV.S fs10, ft4, fs9
  FCVT.W.S s8, fs10, rtz
  FCVT.S.W fs9, s8
  LA s8, .CONSTANT.7.0
  FLW fs10, 0(s8)
  FMUL.S fs11, fs9, fs10
  FLW ft4, 28(sp)
  FSUB.S fs9, ft4, fs11
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb144
bb144:
  FSGNJ.S fs9, fs10, fs10
  LA s8, .CONSTANT.7.1
  FLW fs11, 0(s8)
  FLT.S s8, fs11, fs9
  BNE s8, zero, bb145
  JAL zero, bb153
bb145:
  LA s8, .CONSTANT.7.0
  FLW fs11, 0(s8)
  FSUB.S fs0, fs9, fs11
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb146
bb146:
  FSGNJ.S fs0, fs11, fs11
  FLW ft4, 16(sp)
  FLT.S s8, fs0, ft4
  BNE s8, zero, bb147
  JAL zero, bb154
bb147:
  LA s8, .CONSTANT.7.0
  FLW fs2, 0(s8)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb148
bb148:
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
  LW t4, 36(sp)
  SUBW s9, t4, s11
  FCVT.S.W fs1, s8
  FMUL.S fs7, fs1, fs3
  FCVT.S.W fs5, s9
  FMUL.S fs4, fs5, fs6
  FSUB.S fs8, fs7, fs4
  FCVT.S.W fs4, s10
  FADD.S fs7, fs8, fs4
  FCVT.W.S s0, fs7, rtz
  FMUL.S fs4, fs1, fs6
  FMUL.S fs1, fs5, fs3
  FADD.S fs3, fs4, fs1
  FCVT.S.W fs1, s11
  FADD.S fs4, fs3, fs1
  FCVT.W.S s1, fs4, rtz
  SLT s8, s0, zero
  BNE s8, zero, bb120
  JAL zero, bb121
bb149:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  JAL zero, bb135
bb150:
  FLW ft3, 12(sp)
  FLW ft4, 12(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb137
bb151:
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 20(sp)
  JAL zero, bb139
bb152:
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb144
bb153:
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb146
bb154:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb148
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb156
  JAL zero, bb157
bb156:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb157:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
