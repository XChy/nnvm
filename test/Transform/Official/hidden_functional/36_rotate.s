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
  SD s6, 24(sp)
  FSD fs1, 32(sp)
  SD s4, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s8, 64(sp)
  FSD fs3, 72(sp)
  SD s3, 80(sp)
  FSD fs8, 88(sp)
  SD s7, 96(sp)
  FSD fs2, 104(sp)
  SD s0, 112(sp)
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
  BNE s4, zero, bb35
  # implict jump to bb1
bb1:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s1, ft4, fs2
  ADD s4, s1, zero
  # implict jump to bb2
bb2:
  ADD s5, s4, zero
  BNE s5, zero, bb34
  # implict jump to bb3
bb3:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  # implict jump to bb4
bb4:
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fs1, ft4, ft3
  LA s5, .CONSTANT.7.1
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs1
  BNE s5, zero, bb33
  # implict jump to bb5
bb5:
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 8(sp)
  # implict jump to bb6
bb6:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs4, ft4, ft3
  LA s5, .CONSTANT.7.1
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs6, 0(s5)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s5, fs4, fs7
  BNE s5, zero, bb32
  # implict jump to bb7
bb7:
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb8
bb8:
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
  BNE s5, zero, bb31
  # implict jump to bb9
bb9:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs8, fs3
  ADD s5, s1, zero
  # implict jump to bb10
bb10:
  ADD s6, s5, zero
  BNE s6, zero, bb30
  # implict jump to bb11
bb11:
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb12
bb12:
  FSGNJ.S fs9, fs10, fs10
  LA s6, .CONSTANT.7.1
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs9
  BNE s6, zero, bb29
  # implict jump to bb13
bb13:
  FSGNJ.S fs11, fs9, fs9
  # implict jump to bb14
bb14:
  FSGNJ.S fs0, fs11, fs11
  FLT.S s6, fs0, fs7
  BNE s6, zero, bb28
  # implict jump to bb15
bb15:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb16
bb16:
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
  FCVT.W.S s2, ft5, rtz
  FMUL.S ft1, ft0, fs6
  FMUL.S ft0, ft2, fs3
  FADD.S fs3, ft1, ft0
  FCVT.S.W ft0, s9
  FADD.S ft1, fs3, ft0
  FCVT.W.S s1, ft1, rtz
  SLT s6, s2, zero
  BNE s6, zero, bb27
  # implict jump to bb17
bb17:
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s2, s8
  XORI s8, s7, 1
  ADD s6, s8, zero
  # implict jump to bb18
bb18:
  ADD s7, s6, zero
  BNE s7, zero, bb26
  # implict jump to bb19
bb19:
  SLT s8, s1, zero
  ADD s7, s8, zero
  # implict jump to bb20
bb20:
  ADD s8, s7, zero
  BNE s8, zero, bb25
  # implict jump to bb21
bb21:
  LA s9, height
  LW s10, 0(s9)
  SLT s9, s1, s10
  XORI s10, s9, 1
  ADD s8, s10, zero
  # implict jump to bb22
bb22:
  ADD s9, s8, zero
  BNE s9, zero, bb24
  # implict jump to bb23
bb23:
  LA s9, width
  LW s10, 0(s9)
  MULW s9, s1, s10
  ADDW s10, s9, s2
  SLLIW s9, s10, 2
  LA s10, image
  ADD s11, s10, s9
  LW s9, 0(s11)
  ADD a0, s9, zero
  FLD fs11, 16(sp)
  LD s6, 24(sp)
  FLD fs1, 32(sp)
  LD s4, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s8, 64(sp)
  FLD fs3, 72(sp)
  LD s3, 80(sp)
  FLD fs8, 88(sp)
  LD s7, 96(sp)
  FLD fs2, 104(sp)
  LD s0, 112(sp)
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
bb24:
  ADD a0, zero, zero
  FLD fs11, 16(sp)
  LD s6, 24(sp)
  FLD fs1, 32(sp)
  LD s4, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s8, 64(sp)
  FLD fs3, 72(sp)
  LD s3, 80(sp)
  FLD fs8, 88(sp)
  LD s7, 96(sp)
  FLD fs2, 104(sp)
  LD s0, 112(sp)
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
bb25:
  ADDI s8, zero, 1
  JAL zero, bb22
bb26:
  ADDI s7, zero, 1
  JAL zero, bb20
bb27:
  ADDI s6, zero, 1
  JAL zero, bb18
bb28:
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb16
bb29:
  LA s6, .CONSTANT.7.0
  FLW fs11, 0(s6)
  FSUB.S fs0, fs9, fs11
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb14
bb30:
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
  JAL zero, bb12
bb31:
  ADDI s5, zero, 1
  JAL zero, bb10
bb32:
  LA s5, .CONSTANT.7.0
  FLW fs5, 0(s5)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb8
bb33:
  LA s5, .CONSTANT.7.0
  FLW fs3, 0(s5)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 8(sp)
  JAL zero, bb6
bb34:
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
  JAL zero, bb4
bb35:
  ADDI s4, zero, 1
  JAL zero, bb2
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
  # implict jump to bb37
bb37:
  FSGNJN.S fs2, fs0, fs0
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb38
bb38:
  FSGNJ.S fs2, fs1, fs1
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FLE.S s0, fs2, fs3
  BNE s0, zero, bb40
  # implict jump to bb39
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
bb41:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb38
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
  BNE s0, zero, bb55
  # implict jump to bb44
bb44:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s1, fs0, fs3
  ADD s0, s1, zero
  # implict jump to bb45
bb45:
  ADD s1, s0, zero
  BNE s1, zero, bb54
  # implict jump to bb46
bb46:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb47
bb47:
  FSGNJ.S fs1, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb53
  # implict jump to bb48
bb48:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb49
bb49:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb52
  # implict jump to bb50
bb50:
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb51
bb51:
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
bb52:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb51
bb53:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb49
bb54:
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
  JAL zero, bb47
bb55:
  ADDI s0, zero, 1
  JAL zero, bb45
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
  BNE s0, zero, bb68
  # implict jump to bb57
bb57:
  LA s1, .CONSTANT.7.0
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s1, fs1, fs3
  ADD s0, s1, zero
  # implict jump to bb58
bb58:
  ADD s1, s0, zero
  BNE s1, zero, bb67
  # implict jump to bb59
bb59:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb60
bb60:
  FSGNJ.S fs0, fs2, fs2
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb66
  # implict jump to bb61
bb61:
  FSGNJ.S fs3, fs0, fs0
  # implict jump to bb62
bb62:
  FSGNJ.S fs4, fs3, fs3
  LA s1, .CONSTANT.7.1
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs6, 0(s1)
  FSGNJN.S fs7, fs5, fs6
  FLT.S s1, fs4, fs7
  BNE s1, zero, bb65
  # implict jump to bb63
bb63:
  FSGNJ.S fs5, fs4, fs4
  # implict jump to bb64
bb64:
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
bb65:
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb64
bb66:
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSUB.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb62
bb67:
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
  JAL zero, bb60
bb68:
  ADDI s0, zero, 1
  JAL zero, bb58
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
  BNE s0, zero, bb91
  # implict jump to bb70
bb70:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  # implict jump to bb71
bb71:
  ADD s1, s0, zero
  BNE s1, zero, bb90
  # implict jump to bb72
bb72:
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
  BNE s4, zero, bb89
  # implict jump to bb73
bb73:
  LA s1, height
  LW s3, 0(s1)
  ADDI s1, zero, 1024
  SLT s4, s1, s3
  ADD s2, s4, zero
  # implict jump to bb74
bb74:
  ADD s3, s2, zero
  BNE s3, zero, bb88
  # implict jump to bb75
bb75:
  CALL getint
  ADD s1, a0, zero
  XORI s4, s1, 255
  SLTU s1, zero, s4
  ADD s3, s1, zero
  # implict jump to bb76
bb76:
  ADD s4, s3, zero
  BNE s4, zero, bb87
  # implict jump to bb77
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  ADD s5, s4, zero
  LA s6, height
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb83
  # implict jump to bb79
bb79:
  ADD s1, zero, zero
  # implict jump to bb80
bb80:
  ADD s2, s1, zero
  SLT s3, s2, zero
  BNE s3, zero, bb82
  # implict jump to bb81
bb81:
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
bb82:
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
bb83:
  ADD s6, zero, zero
  # implict jump to bb84
bb84:
  ADD s7, s6, zero
  LA s8, width
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb86
  # implict jump to bb85
bb85:
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb78
bb86:
  LA s8, width
  LW s9, 0(s8)
  MULW s8, s5, s9
  ADDW s9, s8, s7
  SLLIW s8, s9, 2
  LA s9, image
  ADD s10, s9, s8
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s10)
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb84
bb87:
  ADDI s1, zero, -1
  JAL zero, bb80
bb88:
  ADDI s3, zero, 1
  JAL zero, bb76
bb89:
  ADDI s2, zero, 1
  JAL zero, bb74
bb90:
  ADDI s1, zero, -1
  JAL zero, bb80
bb91:
  ADDI s0, zero, 1
  JAL zero, bb71
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
  BNE s0, zero, bb111
  # implict jump to bb93
bb93:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  ADD s0, s1, zero
  # implict jump to bb94
bb94:
  ADD s1, s0, zero
  BNE s1, zero, bb110
  # implict jump to bb95
bb95:
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
  BNE s3, zero, bb109
  # implict jump to bb96
bb96:
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 1024
  SLT s4, s2, s3
  ADD s1, s4, zero
  # implict jump to bb97
bb97:
  ADD s2, s1, zero
  BNE s2, zero, bb108
  # implict jump to bb98
bb98:
  CALL getint
  ADD s3, a0, zero
  XORI s4, s3, 255
  SLTU s3, zero, s4
  ADD s2, s3, zero
  # implict jump to bb99
bb99:
  ADD s3, s2, zero
  BNE s3, zero, bb107
  # implict jump to bb100
bb100:
  ADD s3, zero, zero
  # implict jump to bb101
bb101:
  ADD s4, s3, zero
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb103
  # implict jump to bb102
bb102:
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
bb103:
  ADD s5, zero, zero
  # implict jump to bb104
bb104:
  ADD s6, s5, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb106
  # implict jump to bb105
bb105:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb101
bb106:
  LA s7, width
  LW s8, 0(s7)
  MULW s7, s4, s8
  ADDW s8, s7, s6
  SLLIW s7, s8, 2
  LA s8, image
  ADD s9, s8, s7
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s9)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb104
bb107:
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
bb108:
  ADDI s2, zero, 1
  JAL zero, bb99
bb109:
  ADDI s1, zero, 1
  JAL zero, bb97
bb110:
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
bb111:
  ADDI s0, zero, 1
  JAL zero, bb94
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
  # implict jump to bb113
bb113:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s4, height
  LW s5, 0(s4)
  LW t4, 36(sp)
  SLT s4, t4, s5
  BNE s4, zero, bb115
  # implict jump to bb114
bb114:
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
bb115:
  ADD s4, zero, zero
  # implict jump to bb116
bb116:
  ADD s5, s4, zero
  LA s6, width
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb118
  # implict jump to bb117
bb117:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 36(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb113
bb118:
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  FLW ft4, 0(sp)
  FLT.S s6, fs1, ft4
  BNE s6, zero, bb154
  # implict jump to bb119
bb119:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 0(sp)
  FLT.S s0, ft4, fs2
  ADD s6, s0, zero
  # implict jump to bb120
bb120:
  ADD s7, s6, zero
  BNE s7, zero, bb153
  # implict jump to bb121
bb121:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 4(sp)
  # implict jump to bb122
bb122:
  FLW ft3, 4(sp)
  FLW ft4, 4(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 12(sp)
  LA s7, .CONSTANT.7.1
  FLW fs3, 0(s7)
  FLW ft4, 12(sp)
  FLT.S s7, fs3, ft4
  BNE s7, zero, bb152
  # implict jump to bb123
bb123:
  FLW ft3, 12(sp)
  FLW ft4, 12(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  # implict jump to bb124
bb124:
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
  BNE s7, zero, bb151
  # implict jump to bb125
bb125:
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 20(sp)
  # implict jump to bb126
bb126:
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
  BNE s7, zero, bb150
  # implict jump to bb127
bb127:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs0, fs1
  FLW ft4, 28(sp)
  FLT.S s0, ft4, fs2
  ADD s7, s0, zero
  # implict jump to bb128
bb128:
  ADD s8, s7, zero
  BNE s8, zero, bb149
  # implict jump to bb129
bb129:
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs10, ft4, ft3
  # implict jump to bb130
bb130:
  FSGNJ.S fs9, fs10, fs10
  LA s8, .CONSTANT.7.1
  FLW fs11, 0(s8)
  FLT.S s8, fs11, fs9
  BNE s8, zero, bb148
  # implict jump to bb131
bb131:
  FSGNJ.S fs11, fs9, fs9
  # implict jump to bb132
bb132:
  FSGNJ.S fs0, fs11, fs11
  FLW ft4, 16(sp)
  FLT.S s8, fs0, ft4
  BNE s8, zero, bb147
  # implict jump to bb133
bb133:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb134
bb134:
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
  FCVT.W.S s1, fs7, rtz
  FMUL.S fs4, fs1, fs6
  FMUL.S fs1, fs5, fs3
  FADD.S fs3, fs4, fs1
  FCVT.S.W fs1, s11
  FADD.S fs4, fs3, fs1
  FCVT.W.S s0, fs4, rtz
  SLT s8, s1, zero
  BNE s8, zero, bb146
  # implict jump to bb135
bb135:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s1, s3
  XORI s3, s2, 1
  ADD s8, s3, zero
  # implict jump to bb136
bb136:
  ADD s9, s8, zero
  BNE s9, zero, bb145
  # implict jump to bb137
bb137:
  SLT s2, s0, zero
  ADD s9, s2, zero
  # implict jump to bb138
bb138:
  ADD s10, s9, zero
  BNE s10, zero, bb144
  # implict jump to bb139
bb139:
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s0, s3
  XORI s3, s2, 1
  ADD s10, s3, zero
  # implict jump to bb140
bb140:
  ADD s11, s10, zero
  BNE s11, zero, bb143
  # implict jump to bb141
bb141:
  LA s2, width
  LW s4, 0(s2)
  MULW s2, s0, s4
  ADDW s4, s2, s1
  SLLIW s2, s4, 2
  LA s4, image
  ADD s3, s4, s2
  LW s2, 0(s3)
  ADD s11, s2, zero
  # implict jump to bb142
bb142:
  ADD s2, s11, zero
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s5, 1
  ADD s4, s2, zero
  JAL zero, bb116
bb143:
  ADD s11, zero, zero
  JAL zero, bb142
bb144:
  ADDI s10, zero, 1
  JAL zero, bb140
bb145:
  ADDI s9, zero, 1
  JAL zero, bb138
bb146:
  ADDI s8, zero, 1
  JAL zero, bb136
bb147:
  LA s8, .CONSTANT.7.0
  FLW fs2, 0(s8)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb134
bb148:
  LA s8, .CONSTANT.7.0
  FLW fs11, 0(s8)
  FSUB.S fs0, fs9, fs11
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb132
bb149:
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
  JAL zero, bb130
bb150:
  ADDI s7, zero, 1
  JAL zero, bb128
bb151:
  LA s7, .CONSTANT.7.0
  FLW fs5, 0(s7)
  FLW ft4, 24(sp)
  FADD.S fs6, ft4, fs5
  FSGNJ.S ft4, fs6, fs6
  FSW ft4, 20(sp)
  JAL zero, bb126
bb152:
  LA s7, .CONSTANT.7.0
  FLW fs3, 0(s7)
  FLW ft4, 12(sp)
  FSUB.S fs4, ft4, fs3
  FSGNJ.S ft4, fs4, fs4
  FSW ft4, 8(sp)
  JAL zero, bb124
bb153:
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
  JAL zero, bb122
bb154:
  ADDI s6, zero, 1
  JAL zero, bb120
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb157
  # implict jump to bb156
bb156:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb157:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
